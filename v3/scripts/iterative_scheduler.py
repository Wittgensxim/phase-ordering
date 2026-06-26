"""
Iterative Dependency-Aware Phase Ordering Scheduler (Executive Version).

Key improvements over v2 dry-run:
- Actually executes passes and updates IR each round
- Multi-mode scheduler: strict / relaxed / threshold
- Oracle ordered-pair chooser when no safe pass available
- Metric convergence as stopping condition (not just IR stability)
- Cycle detection and perturbation mechanism
- Batch commutativity spot-checking
- Per-round output directory with full trace
- O2/O3 baseline comparison built-in
- Multi-start search support
"""

import argparse
import csv
import hashlib
import json
import shutil
import sys
from pathlib import Path

from ir_metrics import measure_ir_file, measure_ir_with_tti, compare_metrics, compute_score
from pass_pipeline import (
    load_pass_set, load_scheduler_defaults, pipeline_name, pipeline_names,
    validate_mandatory_order,
)
from run_benchmark_suite import run_benchmark
from scheduler_policy import (
    classify_passes_for_scheduling, auto_safe_passes,
    decision_required_pairs, build_ablation_rows, load_mandatory_orders,
)
from oracle_chooser import oracle_choose_from_decision_pairs
from rule_chooser import rule_choose_from_decision_pairs
from commutativity_test import (
    run_batch_commutativity_spot_check,
    run_third_order_probe,
)


# --- Trace and policy field definitions ---

TRACE_FIELDS = [
    "round", "benchmark", "scheduler_mode", "independence_threshold",
    "input_ir", "input_hash", "metric_score", "instruction_count",
    "candidate_pass_count", "auto_safe_passes", "candidate_safe_passes",
    "blocked_passes", "decision_required_passes", "decision_required_pairs",
    "selected_action_kind", "selected_action", "action_details",
    "output_hash", "metric_after", "metric_delta", "changed",
]

POLICY_FIELDS = [
    "round", "benchmark", "pass", "scheduler_class",
    "blocking_reasons", "incident_pairs",
    "safe_edge_count", "total_edge_count", "safe_edge_ratio",
]


class IterativeScheduler:
    """Executive iterative scheduler: runs passes, rescans, iterates to fixed point."""

    def __init__(
        self,
        passes,
        clang_path,
        opt_path,
        llvm_diff_path,
        out_dir,
        scheduler_mode="relaxed",
        independence_threshold=0.9,
        max_rounds=50,
        metric_stagnation_rounds=5,
        safe_pass_strategy="one_at_a_time",
        use_oracle=True,
        oracle_max_candidates=10,
        chooser="oracle",
        use_tti=False,
        target_triple="x86_64-unknown-linux-gnu",
        enable_batch_check=True,
        enable_perturbation=True,
        mandatory_orders=None,
        pass_set_config=None,
        baseline_pipeline=None,
    ):
        self.passes = list(passes)
        self.clang_path = Path(clang_path)
        self.opt_path = Path(opt_path)
        self.llvm_diff_path = Path(llvm_diff_path)
        self.out_dir = Path(out_dir)
        self.scheduler_mode = scheduler_mode
        self.independence_threshold = independence_threshold
        self.max_rounds = max_rounds
        self.metric_stagnation_rounds = metric_stagnation_rounds
        self.safe_pass_strategy = safe_pass_strategy
        self.use_oracle = use_oracle
        self.oracle_max_candidates = oracle_max_candidates
        self.chooser = chooser  # "oracle" / "rule" / "ml"
        self.use_tti = use_tti
        self.target_triple = target_triple
        self.enable_batch_check = enable_batch_check
        self.enable_perturbation = enable_perturbation
        self.mandatory_orders = mandatory_orders or []
        self.pass_set_config = pass_set_config
        self.baseline_pipeline = baseline_pipeline

        # State
        self.current_ir = None
        self.round_index = 0
        self.trace = []
        self.policy_reports = []
        self.ir_hash_history = []
        self.metric_history = []
        self.action_history = []
        self.action_memory = []  # (action_key, score_before, score_after, improved, round)
        self.original_metrics = None  # Original IR metrics for score normalization

    def run(self, benchmark):
        """Run the iterative scheduler on a single benchmark.

        Args:
            benchmark: dict with 'name', and 'source' or 'ir'

        Returns:
            dict with trace, final_metrics, baseline_comparison, etc.
        """
        bench_name = benchmark["name"]
        bench_dir = self.out_dir / bench_name
        bench_dir.mkdir(parents=True, exist_ok=True)

        # Resolve input IR
        self.current_ir = self._resolve_ir(benchmark, bench_dir)
        self.original_metrics = self._measure_ir(self.current_ir)
        print(f"[{bench_name}] Starting iterative scheduler on {self.current_ir}")
        print(f"  Mode: {self.scheduler_mode}, threshold: {self.independence_threshold}")

        # Run baseline if configured
        baseline_metrics = None
        if self.baseline_pipeline:
            baseline_metrics = self._run_baseline(bench_dir)

        # Main loop
        perturb_count = 0
        while self.round_index < self.max_rounds:
            should_stop, reason = self._check_stop_conditions()
            if should_stop:
                print(f"[{bench_name}] Stopping at round {self.round_index}: {reason}")
                break

            round_dir = bench_dir / f"round_{self.round_index:03d}"
            round_dir.mkdir(parents=True, exist_ok=True)

            # Save input IR for this round
            round_input = round_dir / "input.ll"
            shutil.copy2(self.current_ir, round_input)

            # Run analysis chain on current IR
            analysis = self._run_analysis_chain(benchmark, round_dir)

            # Measure BEFORE metrics
            before_metrics = self._measure_ir(self.current_ir)
            before_hash = _file_sha256(self.current_ir)
            self.metric_history.append({
                "round": self.round_index,
                "score": self._norm_score(before_metrics),
                "instruction_count": before_metrics["instruction_count"],
            })

            # Extract from analysis result
            candidate_passes = analysis["summary"]["candidate_passes"]
            confirmation_rows = analysis["confirmation_rows"]

            # Classify passes
            classifications = classify_passes_for_scheduling(
                active_passes=candidate_passes,
                confirmation_rows=confirmation_rows,
                scheduler_mode=self.scheduler_mode,
                independence_threshold=self.independence_threshold,
                mandatory_orders=self.mandatory_orders,
            )

            auto_safe = [
                p for p, r in classifications.items()
                if r["scheduler_class"] == "auto_safe"
            ]
            decision_pairs = decision_required_pairs(
                confirmation_rows, candidate_passes
            )

            # Record policy
            self._record_policy(classifications, bench_name)

            # Decide action
            action = self._decide_action(
                auto_safe, decision_pairs, candidate_passes, confirmation_rows,
                round_dir, bench_name
            )

            # Execute action FIRST
            if action["kind"] == "stop":
                print(f"[{bench_name}] No action available, stopping.")
                break

            changed = self._execute_action(action, round_dir)

            # Measure AFTER metrics
            score_degraded = False
            if changed:
                after_metrics = self._measure_ir(self.current_ir)
                after_hash = _file_sha256(self.current_ir)

                # Rollback if action made things significantly worse (>5% score increase)
                before_norm = self._norm_score(before_metrics)
                after_norm = self._norm_score(after_metrics)
                if (before_norm > 0
                        and after_norm > before_norm * 1.05
                        and action["kind"] != "perturbation"):
                    print(f"  [{bench_name}] Rollback: score degraded "
                          f"({before_norm:.1f} -> {after_norm:.1f}), "
                          f"reverting to previous IR")
                    self.current_ir = round_input
                    after_metrics = before_metrics
                    after_hash = before_hash
                    score_degraded = True
                    changed = False
            else:
                after_metrics = before_metrics
                after_hash = before_hash

            # Record action memory for cycle detection
            action_key = self._action_key(action)
            score_improved = after_norm < before_norm
            self.action_memory.append({
                "key": action_key,
                "score_before": before_norm,
                "score_after": after_norm,
                "improved": score_improved,
                "harmful": score_degraded,
                "changed": changed,
                "round": self.round_index,
            })
            # Keep only last 10 entries
            if len(self.action_memory) > 10:
                self.action_memory = self.action_memory[-10:]

            # Build trace row AFTER execution (has full data now)
            trace_row = self._build_trace_row(
                bench_name, before_metrics, candidate_passes, classifications,
                auto_safe, decision_pairs, action, round_input,
                after_metrics=after_metrics,
                after_hash=after_hash,
                changed=changed,
            )
            self.trace.append(trace_row)

            self.round_index += 1

            # Perturbation: if stagnating, try a random decision pair
            if self.enable_perturbation and self._is_stagnating():
                perturb_count += 1
                if perturb_count <= 3:
                    print(f"[{bench_name}] Metric stagnating, applying perturbation #{perturb_count}")
                    self._apply_perturbation(decision_pairs, analysis, round_dir)

        # Final metrics
        final_metrics = self._measure_ir(self.current_ir)
        final_ir_path = bench_dir / "final.ll"
        shutil.copy2(self.current_ir, final_ir_path)

        # Build result
        result = {
            "benchmark": bench_name,
            "rounds": self.round_index,
            "final_metrics": final_metrics,
            "trace": self.trace,
            "policy_reports": self.policy_reports,
            "baseline_comparison": {},
        }

        if baseline_metrics:
            b_norm = self._norm_score(baseline_metrics)
            f_norm = self._norm_score(final_metrics)
            result["baseline_comparison"] = {
                "baseline_score": b_norm,
                "scheduler_score": f_norm,
                "improvement": b_norm - f_norm,
                "baseline_instruction_count": baseline_metrics["instruction_count"],
                "scheduler_instruction_count": final_metrics["instruction_count"],
            }

        # Write outputs
        self._write_outputs(bench_dir, result)

        return result

    # --- Internal methods ---

    def _resolve_ir(self, benchmark, bench_dir):
        """Get the initial IR for the benchmark."""
        if benchmark.get("ir"):
            return Path(benchmark["ir"])
        if benchmark.get("source"):
            from run_benchmark_suite import compile_to_ir
            ir_path = bench_dir / f"{benchmark['name']}.ll"
            return compile_to_ir(self.clang_path, benchmark["source"], ir_path)
        raise ValueError(f"Benchmark {benchmark.get('name')} needs source or ir")

    def _run_baseline(self, bench_dir):
        """Run the baseline pipeline and return metrics."""
        import subprocess
        baseline_ir = bench_dir / "baseline.ll"
        cmd = [
            str(self.opt_path), "-S",
            f"-passes=function({','.join(pipeline_names(self.baseline_pipeline))})",
            str(self.current_ir), "-o", str(baseline_ir),
        ]
        result = subprocess.run(cmd, text=True, capture_output=True, check=False)
        if result.returncode != 0:
            print(f"  Warning: baseline pipeline failed: {result.stderr.strip()}")
            return None
        return self._measure_ir(baseline_ir)

    def _measure_ir(self, ir_path):
        """Measure IR metrics. Uses TTI cost model if enabled, else IR-level."""
        if self.use_tti and self.target_triple:
            return measure_ir_with_tti(self.opt_path, ir_path, self.target_triple)
        return measure_ir_file(ir_path)

    def _norm_score(self, metrics):
        """Compute normalized score relative to original IR. 100 = no change, <100 = better."""
        if self.original_metrics is None:
            return metrics.get("score", 0)
        return compute_score(self.original_metrics, metrics)

    def _run_analysis_chain(self, benchmark, round_dir):
        """Run the full analysis chain on current IR."""
        analysis_dir = round_dir / "analysis"
        return run_benchmark(
            benchmark={"name": benchmark["name"], "ir": str(self.current_ir)},
            passes=self.passes,
            clang_path=self.clang_path,
            opt_path=self.opt_path,
            llvm_diff_path=self.llvm_diff_path,
            out_dir=analysis_dir,
        )

    def _decide_action(self, auto_safe, decision_pairs, candidate_passes,
                        confirmation_rows, round_dir, bench_name):
        """Decide what action to take this round."""
        # Priority 1: auto_safe passes
        if auto_safe:
            if self.safe_pass_strategy == "one_at_a_time":
                # Batch check before executing
                if self.enable_batch_check and len(auto_safe) > 1:
                    batch_result = run_batch_commutativity_spot_check(
                        self.opt_path, self.llvm_diff_path,
                        self.current_ir, auto_safe, round_dir,
                    )
                    if not batch_result["commute"]:
                        print(f"  [{bench_name}] Batch commute check FAILED, "
                              f"falling back to single safe pass")
                return {
                    "kind": "auto_safe_pass",
                    "pass": auto_safe[0],
                    "details": f"single safe pass: {auto_safe[0]}",
                }
            else:
                # Batch execution
                return {
                    "kind": "safe_batch",
                    "passes": list(auto_safe),
                    "details": f"batch of {len(auto_safe)} safe passes",
                }

        # Priority 2: Oracle ordered-pair choice
        if decision_pairs and self.chooser == "oracle":
            oracle_result = oracle_choose_from_decision_pairs(
                self.opt_path, self.current_ir,
                confirmation_rows,
                candidate_passes,
                round_dir,
                max_candidates=self.oracle_max_candidates,
                use_tti=self.use_tti,
                target_triple=self.target_triple,
                mandatory_orders=self.mandatory_orders,
            )

            # Filter oracle results by action memory (skip recently ineffective)
            oracle_result = self._filter_oracle_by_memory(
                oracle_result, bench_name
            )

            if oracle_result["best_action"]:
                action = oracle_result["best_action"]
                return {
                    "kind": "oracle_ordered_pair",
                    "passes": action["passes"],
                    "winner": action.get("winner", ""),
                    "score_improvement": action.get("score_improvement", 0),
                    "details": (
                        f"oracle chose {action['passes'][0]}->{action['passes'][1]} "
                        f"(improvement: {action.get('score_improvement', 0):.2f})"
                    ),
                }

        # Priority 2b: Rule/ML/Random-based choice
        if decision_pairs and self.chooser in ("rule", "ml", "random"):
            enablement_edges = _load_enablement_if_available(
                round_dir / "analysis" / bench_name / "enablement_probe.json"
            )

            if self.chooser == "rule":
                chosen_result = rule_choose_from_decision_pairs(
                    confirmation_rows=confirmation_rows,
                    candidate_passes=candidate_passes,
                    enablement_edges=enablement_edges,
                    action_memory=self.action_memory,
                    mandatory_orders=self.mandatory_orders,
                )
                chosen_result = self._filter_oracle_by_memory(chosen_result, bench_name)

                if chosen_result["best_action"]:
                    action = chosen_result["best_action"]
                    return {
                        "kind": "rule_ordered_pair",
                        "passes": action["passes"],
                        "winner": action.get("rule_score", 0),
                        "score_improvement": 0,
                        "details": (
                            f"rule chose {action['passes'][0]}->{action['passes'][1]} "
                            f"(rule_score={action.get('rule_score', 0)})"
                        ),
                    }

            elif self.chooser == "ml":
                from ml_chooser import ml_choose_from_decision_pairs
                ml_result = ml_choose_from_decision_pairs(
                    ir_path=str(self.current_ir),
                    confirmation_rows=confirmation_rows,
                    candidate_passes=candidate_passes,
                    enablement_edges=enablement_edges,
                    mandatory_orders=self.mandatory_orders,
                )
                ml_result = self._filter_oracle_by_memory(ml_result, bench_name)

                if ml_result["best_action"]:
                    action = ml_result["best_action"]
                    return {
                        "kind": "ml_ordered_pair",
                        "passes": action["passes"],
                        "winner": action.get("ml_confidence", 0),
                        "score_improvement": 0,
                        "details": (
                            f"ML chose {action['passes'][0]}->{action['passes'][1]} "
                            f"(confidence={action.get('ml_confidence', 0):.2f})"
                        ),
                    }

            elif self.chooser == "random":
                import random
                pa, pb = random.choice(decision_pairs)
                direction = [pa, pb] if random.random() > 0.5 else [pb, pa]
                return {
                    "kind": "random_ordered_pair",
                    "passes": direction,
                    "winner": "random",
                    "score_improvement": 0,
                    "details": f"random chose {direction[0]}->{direction[1]}",
                }

        # Priority 3: Fixed point candidate
        return {"kind": "fixed_point_candidate", "details": "no safe pass, no decision pair"}

    def _execute_action(self, action, round_dir):
        """Execute the chosen action and update current_ir.

        Returns True if IR changed, False if it's the same.
        """
        import subprocess
        output_ir = round_dir / "output.ll"
        before_hash = _file_sha256(self.current_ir)

        if action["kind"] == "auto_safe_pass":
            pipeline = [action["pass"]]
        elif action["kind"] == "safe_batch":
            pipeline = action["passes"]
        elif action["kind"] in ("oracle_ordered_pair", "rule_ordered_pair", "ml_ordered_pair", "random_ordered_pair"):
            pipeline = action["passes"]
        elif action["kind"] == "perturbation":
            pipeline = action["passes"]
        else:
            # fixed_point_candidate or stop — no change
            return False

        cmd = [
            str(self.opt_path), "-S",
            f"-passes=function({','.join(pipeline_names(pipeline))})",
            str(self.current_ir), "-o", str(output_ir),
        ]
        result = subprocess.run(cmd, text=True, capture_output=True, check=False)
        if result.returncode != 0:
            print(f"  Warning: action {action['kind']} failed: {result.stderr.strip()}")
            return False

        after_hash = _file_sha256(output_ir)
        changed = before_hash != after_hash
        self.ir_hash_history.append({
            "round": self.round_index,
            "action": action["kind"],
            "before_hash": before_hash,
            "after_hash": after_hash,
            "changed": changed,
        })

        if changed:
            self.current_ir = output_ir

        # Save action details
        (round_dir / "selected_action.json").write_text(
            json.dumps({**action, "changed": changed}, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )

        return changed

    def _check_stop_conditions(self):
        """Check if the scheduler should stop.

        Returns (should_stop: bool, reason: str).
        """
        # Condition 1: Max rounds
        if self.round_index >= self.max_rounds:
            return True, "max_rounds_reached"

        # Condition 2: IR hash cycle
        if len(self.ir_hash_history) >= 3:
            recent_hashes = [h["after_hash"] for h in self.ir_hash_history[-5:] if h["changed"]]
            if len(recent_hashes) >= 2 and len(set(recent_hashes)) < len(recent_hashes):
                return True, "ir_hash_cycle_detected"

        # Condition 3: Metric stagnation
        if self._is_stagnating():
            return True, "metric_stagnation"

        return False, ""

    def _is_stagnating(self):
        """Check if the metric has not improved for N rounds."""
        n = self.metric_stagnation_rounds
        if len(self.metric_history) < n:
            return False
        recent_scores = [m["score"] for m in self.metric_history[-n:]]
        # Stagnating if the best score in recent rounds is not better than
        # the best score before that
        if len(self.metric_history) > n:
            older_best = min(m["score"] for m in self.metric_history[:-n])
            recent_best = min(recent_scores)
            return recent_best >= older_best
        return len(set(recent_scores)) == 1

    def _action_key(self, action):
        """Generate a stable key for an action to detect repeats."""
        if action.get("pass"):
            return f"single:{action['pass']}"
        passes = action.get("passes", [])
        if passes:
            return f"pair:{','.join(sorted(passes))}"
        return f"other:{action.get('kind', 'unknown')}"

    def _filter_oracle_by_memory(self, oracle_result, bench_name):
        """Filter oracle results: skip actions that were recently ineffective.

        Harmful actions (score degraded >5%) are blacklisted for 5 rounds.
        Ineffective actions (changed IR, no improvement) are blacklisted for 3 rounds.
        """
        results = oracle_result.get("results", [])
        if not results:
            return oracle_result

        # Build blacklist from recent action memory
        bad_keys = set()
        for mem in self.action_memory[-5:]:
            if mem.get("harmful", False):
                bad_keys.add(mem["key"])  # harmful → longer blacklist
        for mem in self.action_memory[-3:]:
            if not mem.get("improved", True) and mem.get("changed", False):
                bad_keys.add(mem["key"])  # ineffective → shorter blacklist

        if not bad_keys:
            return oracle_result

        # Try to find best result whose pair is not blacklisted
        before_score = oracle_result.get("before_score", float("inf"))
        best_result = None
        best_improvement = float("-inf")

        for r in results:
            pa, pb = r.get("pass_a", ""), r.get("pass_b", "")
            pair_key = f"pair:{','.join(sorted([pa, pb]))}"
            if pair_key in bad_keys:
                continue
            improvement = before_score - r.get("best_score", before_score)
            if improvement > best_improvement:
                best_improvement = improvement
                best_result = r

        if best_result is None:
            # All results blacklisted — use the oracle's original best
            skipped = len([r for r in results
                          if f"pair:{','.join(sorted([r.get('pass_a',''), r.get('pass_b','')]))}" in bad_keys])
            print(f"  [{bench_name}] Cycle guard: all {len(results)} pairs "
                  f"blacklisted ({skipped} skipped), using best available")
            return oracle_result

        skipped_count = len(results) - sum(
            1 for r in results
            if f"pair:{','.join(sorted([r.get('pass_a',''), r.get('pass_b','')]))}" not in bad_keys
        )
        if skipped_count > 0:
            print(f"  [{bench_name}] Cycle guard: skipped {skipped_count} "
                  f"blacklisted pair(s), chose {best_result.get('pass_a','')},{best_result.get('pass_b','')}")

        return {
            "best_action": {
                "kind": "ordered_pair",
                "passes": best_result["best_direction"],
                "winner": best_result["winner"],
                "score_improvement": best_improvement,
            },
            "best_result": best_result,
            "results": results,
            "before_score": before_score,
        }

    def _apply_perturbation(self, decision_pairs, analysis, round_dir):
        """Apply perturbation: force-run a decision pair to escape local optimum."""
        if not decision_pairs:
            return
        import random
        pa, pb = random.choice(decision_pairs)
        direction = [pa, pb] if random.random() > 0.5 else [pb, pa]
        action = {
            "kind": "perturbation",
            "passes": direction,
            "details": f"perturbation: {direction[0]}->{direction[1]}",
        }
        self._execute_action(action, round_dir)
        self.action_history.append(action)

    def _record_policy(self, classifications, bench_name):
        """Record scheduler policy classifications for this round."""
        for pass_name, rec in sorted(classifications.items()):
            self.policy_reports.append({
                "round": self.round_index,
                "benchmark": bench_name,
                "pass": pass_name,
                "scheduler_class": rec["scheduler_class"],
                "blocking_reasons": rec["blocking_reasons"],
                "incident_pairs": rec["incident_pairs"],
                "safe_edge_count": rec["safe_edge_count"],
                "total_edge_count": rec["total_edge_count"],
                "safe_edge_ratio": rec["safe_edge_ratio"],
            })

    def _build_trace_row(self, bench_name, before_metrics, candidate_passes, classifications,
                         auto_safe, decision_pairs, action, input_ir,
                         after_metrics=None, after_hash="", changed=False):
        """Build a single trace row for this round.

        Called AFTER execution, so after_metrics, after_hash, and changed are known.
        """
        after = after_metrics or {}
        before_norm = self._norm_score(before_metrics)
        after_norm = self._norm_score(after) if after else before_norm
        metric_delta = (
            round(after_norm - before_norm, 2)
            if after else ""
        )
        return {
            "round": self.round_index,
            "benchmark": bench_name,
            "scheduler_mode": self.scheduler_mode,
            "independence_threshold": self.independence_threshold,
            "input_ir": str(input_ir),
            "input_hash": _file_sha256(input_ir),
            "metric_score": self._norm_score(before_metrics),
            "instruction_count": before_metrics.get("instruction_count", ""),
            "candidate_pass_count": len(candidate_passes),
            "auto_safe_passes": auto_safe,
            "candidate_safe_passes": _class_passes(classifications, "candidate_safe"),
            "blocked_passes": _class_passes(classifications, "blocked_for_auto"),
            "decision_required_passes": _class_passes(classifications, "decision_required"),
            "decision_required_pairs": [f"{a},{b}" for a, b in decision_pairs],
            "selected_action_kind": action["kind"],
            "selected_action": (
                action.get("pass", "")
                or ",".join(action.get("passes", []))
            ),
            "action_details": action.get("details", ""),
            "output_hash": after_hash,
            "metric_after": after_norm,
            "metric_delta": metric_delta,
            "changed": "true" if changed else "false",
        }

    def _write_outputs(self, bench_dir, result):
        """Write all output files."""
        # Schedule trace
        _write_csv(self.trace, bench_dir / "schedule_trace.csv", TRACE_FIELDS)
        (bench_dir / "schedule_trace.json").write_text(
            json.dumps(result, ensure_ascii=False, indent=2, default=str) + "\n",
            encoding="utf-8",
        )
        # Policy report
        _write_csv(self.policy_reports, bench_dir / "scheduler_policy_report.csv", POLICY_FIELDS)
        # Final metrics
        (bench_dir / "final_metrics.json").write_text(
            json.dumps(result["final_metrics"], ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        # Baseline comparison
        if result.get("baseline_comparison"):
            (bench_dir / "baseline_comparison.json").write_text(
                json.dumps(result["baseline_comparison"], ensure_ascii=False, indent=2) + "\n",
                encoding="utf-8",
            )


# --- Multi-start search (NEW in v3) ---

def run_multi_start_search(
    scheduler, benchmark, num_starts=3, start_strategies=None,
):
    """Run the scheduler from multiple starting points and keep the best result.

    Starting strategies:
    - "original": start from original IR (default)
    - "random": start from a randomly shuffled pass sequence
    - "o2_pipeline": start from O2 pipeline output
    """
    strategies = start_strategies or ["original"]
    results = []

    for i, strategy in enumerate(strategies[:num_starts]):
        # Reset scheduler state
        scheduler.round_index = 0
        scheduler.trace = []
        scheduler.policy_reports = []
        scheduler.ir_hash_history = []
        scheduler.metric_history = []
        scheduler.action_history = []

        # Modify starting IR based on strategy
        if strategy == "original":
            pass  # use as-is
        elif strategy == "random":
            import random
            random_passes = list(scheduler.passes)
            random.shuffle(random_passes)
            _apply_pipeline_to_ir(
                scheduler.opt_path, scheduler.current_ir,
                random_passes, scheduler.current_ir,
            )
        elif strategy == "o2_pipeline" and scheduler.baseline_pipeline:
            _apply_pipeline_to_ir(
                scheduler.opt_path, scheduler.current_ir,
                scheduler.baseline_pipeline, scheduler.current_ir,
            )

        print(f"\n--- Multi-start run {i+1}/{len(strategies)}: {strategy} ---")
        result = scheduler.run(benchmark)
        result["start_strategy"] = strategy
        results.append(result)

    # Find best
    best = min(
        results,
        key=lambda r: r["final_metrics"].get("score", float("inf")),
    )
    return {"results": results, "best": best}


def _load_enablement_if_available(path):
    """Load enablement edges from JSON, return None if file not found."""
    import json
    p = Path(path)
    if not p.exists():
        return None
    from analyze_footprints import load_enablement_edges
    return load_enablement_edges(str(p))


def _apply_pipeline_to_ir(opt_path, input_ir, passes, output_ir):
    """Apply a pass pipeline to IR and overwrite the file."""
    import subprocess
    cmd = [
        str(opt_path), "-S",
        f"-passes=function({','.join(pipeline_names(passes))})",
        str(input_ir), "-o", str(output_ir),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(f"Pipeline failed: {result.stderr.strip()}")
    return output_ir


# --- Utilities ---

def _file_sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def _class_passes(classifications, cls):
    return [p for p, r in sorted(classifications.items()) if r["scheduler_class"] == cls]


def _write_csv(rows, path, fields):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow({
                k: ";".join(str(item) for item in row.get(k)) if isinstance(row.get(k), list) else row.get(k, "")
                for k in fields
            })


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Iterative Dependency-Aware Phase Ordering Scheduler (v3 Executive)"
    )
    parser.add_argument("--ir", help="Input LLVM IR .ll file (single benchmark mode).")
    parser.add_argument("--name", default="benchmark", help="Benchmark name.")
    parser.add_argument(
        "--manifest", help="JSON manifest file with benchmark list (suite mode)."
    )
    parser.add_argument(
        "--benchmark", help="Specific benchmark name from manifest."
    )
    parser.add_argument(
        "--pass-set-config", default="configs/pass_sets.json",
        help="Path to pass_sets.json config."
    )
    parser.add_argument(
        "--pass-set", default="research",
        help="Pass set name (O1/O2/O3/research/minimal)."
    )
    parser.add_argument(
        "--scheduler-mode", default="relaxed",
        choices=["strict", "relaxed", "threshold"],
    )
    parser.add_argument("--independence-threshold", type=float, default=0.9)
    parser.add_argument("--max-rounds", type=int, default=50)
    parser.add_argument("--metric-stagnation-rounds", type=int, default=5)
    parser.add_argument(
        "--safe-pass-strategy", default="one_at_a_time",
        choices=["one_at_a_time", "batch"],
    )
    parser.add_argument("--no-oracle", action="store_true", help="Disable oracle chooser (use rule instead).")
    parser.add_argument("--chooser", default="oracle", choices=["oracle", "rule", "ml", "random"],
                        help="Decision mechanism: oracle (default), rule, ml, or random.")
    parser.add_argument("--oracle-max-candidates", type=int, default=10)
    parser.add_argument("--use-tti", action="store_true", help="Use TTI-based cost model.")
    parser.add_argument("--target-triple", default="x86_64-unknown-linux-gnu")
    parser.add_argument("--no-batch-check", action="store_true")
    parser.add_argument("--no-perturbation", action="store_true")
    parser.add_argument("--baseline-pipeline", help="Comma-separated baseline passes (e.g., O2).")
    parser.add_argument("--multi-start", type=int, default=2, help="Number of multi-start runs (default: 2). Use 1 to disable.")
    parser.add_argument(
        "--opt", default=r"E:\llvm\build\bin\opt.exe", help="Path to opt."
    )
    parser.add_argument(
        "--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe",
        help="Path to llvm-diff."
    )
    parser.add_argument(
        "--clang", default=r"E:\llvm\build\bin\clang.exe", help="Path to clang."
    )
    parser.add_argument(
        "--out-dir", default="results/iterative_scheduler",
        help="Output directory."
    )
    parser.add_argument("--dry-run", action="store_true", help="Dry-run mode (no pass execution).")
    return parser.parse_args()


def main():
    args = parse_args()

    # Load pass set and mandatory orders
    passes, mandatory_orders = load_pass_set(args.pass_set_config, args.pass_set)
    scheduler_defaults = load_scheduler_defaults(args.pass_set_config)
    print(f"Pass set '{args.pass_set}': {len(passes)} passes")
    print(f"Mandatory orders: {len(mandatory_orders)}")
    print(f"Passes: {', '.join(passes)}")

    # Resolve baseline pipeline
    baseline_pipeline = None
    if args.baseline_pipeline:
        # Allow O1/O2/O3 as aliases for baseline pass sets
        if args.baseline_pipeline.strip().upper() in {"O1", "O2", "O3"}:
            baseline_pipeline, _ = load_pass_set(
                args.pass_set_config, args.baseline_pipeline.strip().upper()
            )
        else:
            from run_benchmark_suite import parse_passes
            baseline_pipeline = parse_passes(args.baseline_pipeline)
        print(f"Baseline: {args.baseline_pipeline} ({len(baseline_pipeline)} passes)")
    elif args.pass_set in {"O2", "O3"}:
        # Default baseline is O2 for comparison
        baseline_passes, _ = load_pass_set(args.pass_set_config, "O2")
        baseline_pipeline = baseline_passes
        print(f"Baseline: O2 (default, {len(baseline_pipeline)} passes)")

    # Build benchmark list
    benchmarks = []
    if args.manifest:
        from run_benchmark_suite import load_manifest
        all_benchmarks = load_manifest(args.manifest)
        if args.benchmark:
            benchmarks = [b for b in all_benchmarks if b["name"] == args.benchmark]
            if not benchmarks:
                print(f"Benchmark '{args.benchmark}' not found in manifest.")
                sys.exit(1)
        else:
            benchmarks = all_benchmarks
    elif args.ir:
        benchmarks = [{"name": args.name, "ir": args.ir}]
    else:
        print("Specify --ir or --manifest.")
        sys.exit(1)

    print(f"Running {len(benchmarks)} benchmark(s)...")

    suite_results = []
    suite_failures = []
    for benchmark in benchmarks:
        print(f"\n{'='*60}")
        print(f"Benchmark: {benchmark['name']}")
        print(f"{'='*60}")

        try:
            scheduler = IterativeScheduler(
                passes=passes,
                clang_path=args.clang,
                opt_path=args.opt,
                llvm_diff_path=args.llvm_diff,
                out_dir=args.out_dir,
                scheduler_mode=args.scheduler_mode,
                independence_threshold=args.independence_threshold,
                max_rounds=args.max_rounds,
                metric_stagnation_rounds=args.metric_stagnation_rounds,
                safe_pass_strategy=args.safe_pass_strategy,
                use_oracle=not args.no_oracle,
                oracle_max_candidates=args.oracle_max_candidates,
                chooser=args.chooser,
                use_tti=args.use_tti,
                target_triple=args.target_triple,
                enable_batch_check=not args.no_batch_check,
                enable_perturbation=not args.no_perturbation,
                mandatory_orders=mandatory_orders,
                pass_set_config=args.pass_set_config,
                baseline_pipeline=baseline_pipeline,
            )

            if args.multi_start > 1:
                result = run_multi_start_search(
                    scheduler, benchmark, num_starts=args.multi_start,
                    start_strategies=["original", "random", "o2_pipeline"],
                )
                best = result["best"]
                print(f"\nBest result from strategy: {best.get('start_strategy', 'original')}")
            else:
                result = scheduler.run(benchmark)
                best = result

            # Print summary
            fm = best.get("final_metrics", {})
            bc = best.get("baseline_comparison", {})
            print(f"\nFinal metrics for {benchmark['name']}:")
            print(f"  Score: {fm.get('score', '?')}")
            print(f"  Instructions: {fm.get('instruction_count', '?')}")
            print(f"  Rounds: {best.get('rounds', '?')}")
            if bc:
                print(f"  Baseline score: {bc.get('baseline_score', '?')}")
                imp = bc.get('improvement', 0)
                bl = bc.get('baseline_score', 1)
                pct = imp / bl * 100 if bl else 0
                print(f"  Improvement: {imp:.2f} ({pct:.1f}%)")

            suite_results.append({
                "benchmark": benchmark["name"],
                "status": "ok",
                "rounds": best.get("rounds", 0),
                "final_score": fm.get("score", 0),
                "final_instructions": fm.get("instruction_count", 0),
                "baseline_score": bc.get("baseline_score", ""),
                "improvement": bc.get("improvement", ""),
            })
        except Exception as exc:
            print(f"  FAILED: {exc}")
            suite_failures.append({
                "benchmark": benchmark["name"],
                "error": str(exc),
            })
            suite_results.append({
                "benchmark": benchmark["name"],
                "status": "failed",
                "rounds": 0, "final_score": 0, "final_instructions": 0,
                "baseline_score": "", "improvement": "",
            })

    # Write suite-level summary
    import csv
    out_path = Path(args.out_dir)
    out_path.mkdir(parents=True, exist_ok=True)
    suite_fields = ["benchmark", "status", "rounds", "final_score",
                     "final_instructions", "baseline_score", "improvement"]
    with (out_path / "suite_results.csv").open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=suite_fields)
        writer.writeheader()
        for r in suite_results:
            writer.writerow({k: r.get(k, "") for k in suite_fields})

    # Print final summary
    ok_count = sum(1 for r in suite_results if r["status"] == "ok")
    fail_count = len(suite_failures)
    print(f"\n{'='*60}")
    print(f"Suite complete: {ok_count} OK, {fail_count} FAILED, {len(suite_results)} total")
    if ok_count > 0:
        ok_scores = [r["final_score"] for r in suite_results if r["status"] == "ok" and r["final_score"] > 0]
        ok_baselines = [r["baseline_score"] for r in suite_results if r["status"] == "ok" and r["baseline_score"]]
        if ok_scores:
            print(f"  Avg final score: {sum(ok_scores)/len(ok_scores):.1f}")
        if ok_baselines and ok_scores:
            improvements = [b - s for s, b in zip(ok_scores, ok_baselines) if b > 0]
            if improvements:
                avg_imp = sum(improvements) / len(improvements)
                print(f"  Avg improvement vs baseline: {avg_imp:.1f}")
    if suite_failures:
        print(f"  Failed benchmarks: {', '.join(f['benchmark'] for f in suite_failures)}")


if __name__ == "__main__":
    main()
