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
    build_ablation_rows, load_mandatory_orders,
    build_decision_graph,
)
from oracle_chooser import oracle_choose_from_decision_pairs
from rule_chooser import rule_choose_from_decision_pairs
from commutativity_test import (
    run_batch_commutativity_spot_check,
    run_third_order_probe,
)
from measure_beneficial_independence import (
    stage_a_beneficial,
    stage_a_enabling,
    canonical_order,
    _safe,
)


# --- Trace and policy field definitions ---

TRACE_FIELDS = [
    "round", "benchmark", "scheduler_mode", "independence_threshold",
    "input_ir", "input_hash", "metric_score", "instruction_count",
    "candidate_pass_count", "auto_safe_passes", "candidate_safe_passes",
    "blocked_passes", "decision_required_passes", "decision_required_pairs",
    "total_pairs_analyzed", "auto_resolved_pairs", "decision_reduction_rate",
    "auto_safe_batch_count", "auto_safe_batch_sizes",
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
        oracle_max_candidates=0,  # 0 = test ALL order-sensitive pairs (no truncation)
        chooser="oracle",
        min_gain=0.5,  # Stage A: minimum ir_cost reduction to count as beneficial
        use_tti=False,
        target_triple="x86_64-unknown-linux-gnu",
        enable_batch_check=True,
        enable_perturbation=True,
        mandatory_orders=None,
        pass_set_config=None,
        baseline_pipeline=None,
        metric_mode="ir",
        llc_path=None,
        llvm_size_path=None,
        inject_minsize=False,
        cleanup_rounds=True,
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
        self.chooser = chooser  # "oracle" / "rule" / "random" (ml/ml-hybrid removed in v3.1)
        self.min_gain = min_gain  # Stage A: minimum ir_cost delta for beneficial
        self.beam_rank = 0  # 0=best, 1=2nd best, etc. (for beam search in multi-start)
        self.epsilon = 0.0  # ε-greedy exploration rate at R0
        self.positive_gate_mode = "zero-only"  # off | zero-only | adaptive | strict
        self.use_tti = use_tti
        self.target_triple = target_triple
        self.enable_batch_check = enable_batch_check
        self.enable_perturbation = enable_perturbation
        self.mandatory_orders = mandatory_orders or []
        self.pass_set_config = pass_set_config
        self.baseline_pipeline = baseline_pipeline
        self.baseline_level = None  # Named level like "O2"/"Oz" for real-pipeline baseline
        self.metric_mode = metric_mode  # "ir" or "codesize"
        self.llc_path = Path(llc_path) if llc_path else None
        self.llvm_size_path = Path(llvm_size_path) if llvm_size_path else None
        self.inject_minsize = inject_minsize  # inject minsize/optsize attrs for codesize fair comparison
        self.cleanup_rounds = cleanup_rounds    # delete intermediate .ll files after each round

        # ── Unified measurement callback ─────────────────────────────────
        from ir_metrics import make_measure_fn
        self.measure_fn = make_measure_fn(
            metric_mode=self.metric_mode,
            opt_path=str(self.opt_path) if use_tti else None,
            llc_path=str(self.llc_path) if self.llc_path else None,
            llvm_size_path=str(self.llvm_size_path) if self.llvm_size_path else None,
            target_triple=self.target_triple,
            use_tti=self.use_tti,
        )

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
        self.executed_passes = set()  # Passes actually applied (for enablement-aware fallback)
        # Cross-round beneficial memory: {pass_name: last_beneficial_round}
        # Passes here get a relaxed min_gain (0.2×) to avoid being dropped by
        # minor IR changes after an oracle action, preventing oscillation.
        self.beneficial_memory = {}
        self.beneficial_memory_ttl = 3  # Rounds before a pass is evicted
        # Best-so-far tracking: ensures the scheduler never returns a result worse
        # than any intermediate state.  Critical when cumulative small degradations
        # or perturbation push the final IR past an earlier, better state.
        self.best_norm = float('inf')
        self.best_ir_path = None
        self._best_round = 0

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
        # Inject minsize/optsize attributes for fair codesize comparison
        if self.inject_minsize:
            from baseline_pipelines import _inject_attrs
            text = Path(self.current_ir).read_text(encoding="utf-8")
            injected = _inject_attrs(text, "minsize optsize")
            minsize_ir = bench_dir / f"{bench_name}_minsize.ll"
            minsize_ir.write_text(injected, encoding="utf-8")
            self.current_ir = minsize_ir
            print(f"[{bench_name}] Injected minsize/optsize attributes for fair codesize comparison")
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

            # ── Measure BEFORE metrics ──────────────────────────────────
            before_metrics = self._measure_ir(self.current_ir)
            before_hash = _file_sha256(self.current_ir)
            self.metric_history.append({
                "round": self.round_index,
                "score": self._norm_score(before_metrics),
                "instruction_count": before_metrics["instruction_count"],
            })

            # ── Stage A: lightweight codesize filter on ALL passes ─────
            # (opt→llc→llvm-size per pass; ~O(n) cost, n=139)
            before_cost = before_metrics.get("ir_cost", before_metrics.get("score_ir", 0))
            raw_candidate_passes = list(self.passes)
            enablement_edges = self._stored_enablement_edges if hasattr(self, '_stored_enablement_edges') else {}
            candidate_passes = self._filter_beneficial(
                raw_candidate_passes, before_cost, round_dir, bench_name,
                enablement_edges=enablement_edges or None,
            )
            self._update_beneficial_memory(candidate_passes)
            if len(candidate_passes) < len(raw_candidate_passes):
                dropped = sorted(set(raw_candidate_passes) - set(candidate_passes))
                print(f"  [{bench_name}] Stage A: {len(raw_candidate_passes)} active → "
                      f"{len(candidate_passes)} beneficial (dropped: {', '.join(dropped) if dropped else 'none'})")

            # ── Full analysis chain ONLY on beneficial+enabling subset ─
            # (pairwise commutativity tests; ~O(b²) cost, b≈3-10)
            if candidate_passes:
                analysis = self._run_analysis_chain(benchmark, round_dir,
                                                    passes_override=candidate_passes)
                confirmation_rows = analysis["confirmation_rows"]
                # Store enablement edges for next round's Stage A fallback
                self._stored_enablement_edges = self._load_enablement_edges(analysis)
            else:
                confirmation_rows = []
                analysis = {"summary": {"candidate_passes": []}}
            # ───────────────────────────────────────────────────────────

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

            # Build explicit decision graph (core contribution — single source of truth)
            dg = build_decision_graph(confirmation_rows, candidate_passes)
            decision_pairs = dg["decision_pairs"]  # from decision graph, NOT separate function
            if self.round_index == 0 or dg["decision_reduction_rate"] > 0:
                batches_str = ", ".join(
                    f"[{','.join(b['passes'][:3])}{'...' if len(b['passes'])>3 else ''}]({b['size']})"
                    for b in dg["auto_safe_batches"][:3]
                ) if dg["auto_safe_batches"] else "none"
                unaccounted_str = f", {dg['unaccounted_edges']} unaccounted" if dg.get("unaccounted_edges", 0) > 0 else ""
                print(f"  [{bench_name}] Decision graph: {dg['total_possible_edges']} pairs -> "
                      f"{dg['auto_resolved_edges']} auto-resolved ({dg['decision_reduction_rate']:.0%}), "
                      f"{dg['decision_edges']} need oracle{unaccounted_str}, "
                      f"batches: {batches_str}")
            self._current_dg = dg  # Save for trace

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

            # Track executed passes for enablement-aware fallback (Direction 1)
            if changed and action.get("kind") not in ("stop", "fixed_point_candidate"):
                executed = action.get("passes", [action.get("pass", "")])
                self.executed_passes.update(p for p in executed if p)

            # Measure AFTER metrics
            score_degraded = False
            before_norm = self._norm_score(before_metrics)
            if changed:
                after_metrics = self._measure_ir(self.current_ir)
                after_hash = _file_sha256(self.current_ir)
                after_norm = self._norm_score(after_metrics)

                # Rollback if action made things significantly worse (>5% score increase)
                if (before_norm > 0
                        and after_norm > before_norm * 1.05
                        and action["kind"] != "perturbation"):
                    print(f"  [{bench_name}] Rollback: score degraded "
                          f"({before_norm:.1f} -> {after_norm:.1f}), "
                          f"reverting to previous IR")
                    self.current_ir = round_input
                    after_metrics = before_metrics
                    after_hash = before_hash
                    after_norm = before_norm
                    score_degraded = True
                    changed = False
            else:
                after_metrics = before_metrics
                after_hash = before_hash
                after_norm = before_norm

            # Update best-so-far (monotonicity guarantee: scheduler result ≥ best intermediate)
            if after_norm < self.best_norm:
                self.best_norm = after_norm
                self.best_ir_path = Path(self.current_ir)
                self._best_round = self.round_index

            # Record action memory for cycle detection
            action_key = self._action_key(action)
            score_improved = after_norm < before_norm
            self.action_memory.append({
                "key": action_key,
                "action": action,
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
                confirmation_rows=confirmation_rows,
            )
            self.trace.append(trace_row)

            self.round_index += 1

            # Before cleanup: save current_ir and best_ir_path to safe locations
            # since cleanup deletes .ll files in round_dir that they may point to.
            safe_current = bench_dir / "current.ll"
            if Path(self.current_ir) != safe_current:
                shutil.copy2(self.current_ir, safe_current)
                self.current_ir = safe_current
            if self.best_ir_path:
                best_path = Path(self.best_ir_path)
                safe_best = bench_dir / "best.ll"
                if best_path != safe_best and best_path.exists():
                    shutil.copy2(best_path, safe_best)
                    self.best_ir_path = str(safe_best)

            # Cleanup intermediate .ll files to save disk space
            if self.cleanup_rounds:
                _cleanup_round_dir(round_dir)

            # Perturbation: if stagnating, try a random decision pair.
            # After perturbation, if the result is worse than best-so-far,
            # roll back to best-so-far IR (perturbation must not degrade).
            if self.enable_perturbation and self._is_stagnating():
                perturb_count += 1
                if perturb_count <= 3:
                    print(f"[{bench_name}] Metric stagnating, applying perturbation #{perturb_count}")
                    self._apply_perturbation(decision_pairs, analysis, round_dir)
                    # Check if perturbation helped
                    post_metrics = self._measure_ir(self.current_ir)
                    post_norm = self._norm_score(post_metrics)
                    if post_norm >= self.best_norm and self.best_ir_path is not None:
                        print(f"  [{bench_name}] Perturbation #{perturb_count} degraded "
                              f"({post_norm:.1f} >= best {self.best_norm:.1f}), "
                              f"rolling back to best-so-far")
                        self.current_ir = Path(self.best_ir_path)

        # Final: use best-so-far IR, not last-round IR.
        # This guarantees monotonicity: adding passes can never make the
        # reported result worse than what was achieved earlier.
        if self.best_ir_path is not None and self.best_ir_path != Path(self.current_ir):
            final_ir_path = bench_dir / "final.ll"
            shutil.copy2(self.best_ir_path, final_ir_path)
            final_metrics = self._measure_ir(final_ir_path)
            best_round = self._best_round
            print(f"[{bench_name}] Returning best-so-far IR (round {best_round}), "
                  f"instr={final_metrics.get('instruction_count', '?')}")
        else:
            final_metrics = self._measure_ir(self.current_ir)
            final_ir_path = bench_dir / "final.ll"
            shutil.copy2(self.current_ir, final_ir_path)
            best_round = self.round_index - 1

        # Build result
        result = {
            "benchmark": bench_name,
            "rounds": self.round_index,
            "final_metrics": final_metrics,
            "best_round": best_round,
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

        # Final cleanup: delete all .ll files and round directories to keep
        # only result CSVs/JSONs (schedule_trace.csv, final_metrics.json, etc.)
        for ll_file in bench_dir.glob("*.ll"):
            try:
                ll_file.unlink()
            except Exception:
                pass
        for round_d in sorted(bench_dir.glob("round_*")):
            if round_d.is_dir():
                try:
                    shutil.rmtree(round_d, ignore_errors=True)
                except Exception:
                    pass

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
        """Run the baseline pipeline and return metrics.

        Uses run_real_pipeline (default<Ox> / Oz=default<O2>+minsize) for named
        levels O1/O2/O3/Oz — the literature-standard reference.
        Falls back to custom pass-list pipeline for non-standard baseline names.
        """
        from baseline_pipelines import run_real_pipeline, DIRECT_LEVELS, ATTR_LEVELS
        baseline_ir = bench_dir / "baseline.ll"

        level = self.baseline_level or ""
        if level in DIRECT_LEVELS or level in ATTR_LEVELS:
            try:
                run_real_pipeline(self.opt_path, self.current_ir, level, baseline_ir)
                return self._measure_ir(baseline_ir)
            except Exception as e:
                print(f"  Warning: real baseline {level} failed: {e}")
                return None

        # Legacy fallback: custom pass list pipeline
        import subprocess
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
        """Measure IR/codesize via the unified measurement factory."""
        return self.measure_fn(ir_path)

    def _norm_score(self, metrics):
        """Compute normalized score relative to original IR. 100 = no change, <100 = better."""
        if self.original_metrics is None:
            return metrics.get("score", 0)
        from ir_metrics import compute_metric_score
        return compute_metric_score(self.original_metrics, metrics, metric_mode=self.metric_mode)

    def _run_analysis_chain(self, benchmark, round_dir, passes_override=None):
        """Run the full analysis chain on current IR.

        Args:
            passes_override: if provided, only run analysis on this pass subset
                             (skipping non-beneficial passes from expensive pairwise tests).
        """
        analysis_dir = round_dir / "analysis"
        passes_to_analyze = passes_override if passes_override is not None else self.passes
        return run_benchmark(
            benchmark={"name": benchmark["name"], "ir": str(self.current_ir)},
            passes=passes_to_analyze,
            clang_path=self.clang_path,
            opt_path=self.opt_path,
            llvm_diff_path=self.llvm_diff_path,
            out_dir=analysis_dir,
        )

    def _filter_beneficial(self, candidate_passes, current_cost, round_dir, bench_name,
                           enablement_edges=None):
        """Stage A: filter candidate passes to beneficial ∪ enabling only.

        A pass that changes IR without reducing cost ('active_only') is noise for
        phase ordering — it inflates the decision graph without contributing to
        the optimization target.

        When no pass is directly beneficial or enabling on the current IR, this
        method uses enablement-probe data as a smart fallback (Direction 1):
        instead of falling back to ALL active passes, it only promotes those
        active_only passes that were *enabled by a previously-executed pass*.
        These passes may now be in a position to reduce cost.

        Cross-round beneficial memory: passes that were beneficial in a recent
        round get a relaxed min_gain (0.2× default), preventing oscillation where
        a pass is repeatedly dropped/recovered due to minor IR changes from
        oracle actions.  This is general — it applies to ANY pass, not a specific
        hardcoded list.

        Returns the filtered beneficial+enabling pass list in canonical order.
        """
        work_dir = Path(round_dir) / "stageA"
        work_dir.mkdir(parents=True, exist_ok=True)

        # Adaptive min_gain: passes remembered from recent rounds get a lower bar
        remembered = {
            p for p, last_r in self.beneficial_memory.items()
            if self.round_index - last_r <= self.beneficial_memory_ttl
        }
        effective_min_gain = self.min_gain
        if remembered:
            effective_min_gain = self.min_gain * 0.2

        # ── No-op pre-filter (codesize mode): skip passes that don't change IR ──
        # Safe: ΔIR=0 ⇒ Δcodesize=0. Group B passes (vectorization, unrolling)
        # change IR → they pass this filter and get proper codesize evaluation.
        # Output written to stageA/ dir so stage_a_beneficial reuses it (no double opt).
        candidate_passes_prefiltered = list(candidate_passes)
        prefilter_skip = set()  # passes confirmed no-op, skip codesize eval
        if self.metric_mode == "codesize":
            stage_a_dir = Path(work_dir) / "stageA"
            stage_a_dir.mkdir(parents=True, exist_ok=True)
            orig_text = Path(self.current_ir).read_text(encoding="utf-8")
            active_only = []
            for p in candidate_passes:
                out_path = stage_a_dir / f"{_safe(p)}.ll"
                try:
                    from commutativity_test import run_opt_pipeline
                    run_opt_pipeline(self.opt_path, self.current_ir, [p], out_path)
                    after_text = out_path.read_text(encoding="utf-8")
                    if after_text != orig_text:
                        active_only.append(p)
                    else:
                        prefilter_skip.add(p)
                except Exception:
                    active_only.append(p)
            skipped = len(candidate_passes) - len(active_only)
            if skipped > 0:
                print(f"  [{bench_name}] No-op pre-filter: {skipped}/{len(candidate_passes)} "
                      f"skipped ({len(active_only)} active → codesize eval)")
            candidate_passes_prefiltered = active_only
            if not candidate_passes_prefiltered:
                candidate_passes_prefiltered = list(candidate_passes)

        # Stage A.1: directly beneficial (cost strictly decreases)
        # Pass skip_hint: passes already confirmed no-op skip codesize measurement
        _, beneficial = stage_a_beneficial(
            self.opt_path, self.current_ir, current_cost,
            candidate_passes_prefiltered, work_dir, effective_min_gain,
            measure_fn=self.measure_fn,
            skip_opt_for=prefilter_skip,
        )
        # Also check passes in remembered set with the relaxed threshold
        if remembered and effective_min_gain < self.min_gain:
            remembered_only = [p for p in candidate_passes_prefiltered if p in remembered and p not in beneficial]
            if remembered_only:
                _, remembered_beneficial = stage_a_beneficial(
                    self.opt_path, self.current_ir, current_cost,
                    remembered_only, work_dir, effective_min_gain,
                    measure_fn=self.measure_fn,
                )
                newly_found = set(remembered_beneficial) - set(beneficial)
                if newly_found:
                    beneficial = list(beneficial) + list(newly_found)
                    print(f"  [{bench_name}] Adaptive threshold: recovered "
                          f"{', '.join(sorted(newly_found))} via beneficial memory "
                          f"(min_gain={effective_min_gain:.2f})")

        # Stage A.2: enabling (not beneficial alone, but helps in combination)
        enabling, _ = stage_a_enabling(
            self.opt_path, self.current_ir, beneficial,
            candidate_passes, current_cost, work_dir, self.min_gain,
            measure_fn=self.measure_fn,
        )

        b_set = canonical_order(list(beneficial) + list(enabling), candidate_passes)

        if not b_set and self.executed_passes and enablement_edges:
            # --- Smart fallback: enablement-guided promotion (Direction 1) ---
            # If a previously-executed pass enables an active_only pass, that
            # pass may now be in a position to reduce cost even though the
            # cost-model says it doesn't (cost-model myopia for loop/CFG passes).
            enabled_by_executed = self._get_enabled_by_executed(
                enablement_edges, candidate_passes
            )
            if enabled_by_executed:
                # When the beneficial set is empty, stage_a_enabling can't work:
                # it requires a non-empty beneficial bundle to test against.
                # Loop/CFG passes (loop-rotate, licm, etc.) never reduce cost
                # alone, but they DO become beneficial AFTER earlier passes run.
                # Since they were enabled by executed passes, promote them directly.
                if not beneficial:
                    b_set = canonical_order(list(enabled_by_executed), candidate_passes)
                    print(f"  [{bench_name}] Stage A: 0 beneficial -> "
                          f"enablement-guided recovery: {len(b_set)} passes "
                          f"(enabled by executed: {', '.join(sorted(enabled_by_executed))})")
                else:
                    enabling2, _enable_cost = stage_a_enabling(
                        self.opt_path, self.current_ir, beneficial,
                        list(enabled_by_executed), current_cost, work_dir, self.min_gain,
                        measure_fn=self.measure_fn,
                    )
                    if enabling2:
                        b_set = canonical_order(list(beneficial) + list(enabling2), candidate_passes)
                        print(f"  [{bench_name}] Stage A: 0 beneficial -> "
                              f"enablement-guided recovery: {len(enabling2)} passes "
                              f"({', '.join(enabling2)})")

        if not b_set:
            # Last resort: no beneficial pass found, even with enablement guidance.
            # Fall back to the active set so the scheduler can still make progress.
            print(f"  [{bench_name}] Stage A: 0 beneficial passes; "
                  f"falling back to {len(candidate_passes)} active passes")
            return candidate_passes

        return b_set

    def _update_beneficial_memory(self, beneficial_passes):
        """Update cross-round memory of which passes were recently beneficial.

        Passes in the current beneficial set get their timestamp refreshed.
        Older entries decay naturally — after beneficial_memory_ttl rounds
        without being beneficial, a pass is evicted.

        This is general: ANY pass that was recently beneficial gets a relaxed
        min_gain in the next round, not just a hardcoded list like sroa.
        """
        for p in beneficial_passes:
            self.beneficial_memory[p] = self.round_index
        # Evict stale entries
        stale = [
            p for p, last_r in self.beneficial_memory.items()
            if self.round_index - last_r > self.beneficial_memory_ttl
        ]
        for p in stale:
            del self.beneficial_memory[p]

    def _get_enabled_by_executed(self, enablement_edges, candidate_passes):
        """Find passes in candidate_passes that were enabled by an executed pass.

        An enablement edge (enabler -> enabled) means running 'enabler' before
        'enabled' activates or expands 'enabled'.  If 'enabler' has already
        been executed, 'enabled' may now be in a position to reduce cost.
        """
        candidates = set(candidate_passes)
        enabled = set()
        for edge in enablement_edges:
            enabler = edge.get("enabler", "")
            enabled_pass = edge.get("enabled", "")
            if enabler in self.executed_passes and enabled_pass in candidates:
                enabled.add(enabled_pass)
        return enabled

    def _load_enablement_edges(self, analysis):
        """Load enablement edges from the analysis result."""
        paths = analysis.get("paths", {})
        en_path = paths.get("enablement")
        if not en_path or not Path(en_path).exists():
            return []
        try:
            data = json.loads(Path(en_path).read_text(encoding="utf-8"))
            return data.get("edges", [])
        except Exception:
            return []

    def _decide_action(self, auto_safe, decision_pairs, candidate_passes,
                        confirmation_rows, round_dir, bench_name):
        """Decide what action to take this round."""
        # Priority 1: auto_safe passes
        if auto_safe:
            if self.safe_pass_strategy == "one_at_a_time":
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
                return {
                    "kind": "safe_batch",
                    "passes": list(auto_safe),
                    "details": f"batch of {len(auto_safe)} safe passes",
                }

        # Priority 1.5: Auto-execute boundary-safe independent batch
        # Layer 3 of the decision-reduction framework:
        # A batch formed from independence-connected passes CAN be auto-executed
        # iff it has NO external order_sensitive edges to other active passes.
        dg = getattr(self, '_current_dg', None)
        if dg and dg["auto_safe_batches"]:
            safe_batch = _pick_boundary_safe_batch(
                dg, confirmation_rows, candidate_passes,
                self.action_memory,
            )
            if safe_batch:
                return {
                    "kind": "safe_batch",
                    "passes": list(safe_batch),
                    "details": (
                        f"auto_safe_batch: [{','.join(safe_batch[:4])}"
                        f"{'...' if len(safe_batch) > 4 else ''}] "
                        f"(size={len(safe_batch)}, boundary-safe, no oracle needed)"
                    ),
                }

        # Priority 2: Oracle ordered-pair choice
        # Independence contribution: oracle only sees decision_required pairs.
        # confirmed_independent pairs are auto-resolved (removed from decision graph).
        # This reduction is tracked in TRACE_FIELDS and reported per-round.
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
                decision_pairs=decision_pairs,
                measure_fn=self.measure_fn,
            )

            # Filter oracle results by action memory (skip recently ineffective)
            oracle_result = self._filter_oracle_by_memory(
                oracle_result, bench_name
            )

            if oracle_result["best_action"]:
                action = oracle_result["best_action"]
                results = oracle_result.get("results", [])

                # ε-greedy at R0: with probability ε, pick random pair (escape local optima)
                if self.epsilon > 0 and self.round_index == 0 and results:
                    import random as _random
                    if _random.random() < self.epsilon:
                        # Pick from top-5 (not totally random, just not #1)
                        sorted_r = sorted(results, key=lambda r: r.get("best_score", float("inf")))
                        pick = sorted_r[_random.randint(1, min(4, len(sorted_r)-1))]
                        action = {
                            "kind": "ordered_pair",
                            "passes": pick["best_direction"],
                            "winner": pick.get("winner", ""),
                            "score_improvement": pick.get("before_score", 0) - pick.get("best_score", 0),
                        }
                        print(f"  [{bench_name}] ε-greedy R0: random pick {pick['best_direction'][0]}->{pick['best_direction'][1]}")

                # Beam search: if beam_rank > 0, pick the Nth-best instead of #1
                if self.beam_rank > 0 and len(results) > self.beam_rank:
                    # Sort by improvement descending, pick Nth
                    sorted_results = sorted(
                        results,
                        key=lambda r: r.get("best_score", float("inf"))
                    )
                    # Filter out same pairs as higher-ranked results
                    seen_pairs = set()
                    unique_results = []
                    for r in sorted_results:
                        key = ",".join(sorted([r.get("pass_a",""), r.get("pass_b","")]))
                        if key not in seen_pairs:
                            seen_pairs.add(key)
                            unique_results.append(r)
                    if self.beam_rank < len(unique_results):
                        chosen = unique_results[self.beam_rank]
                        action = {
                            "kind": "ordered_pair",
                            "passes": chosen["best_direction"],
                            "winner": chosen.get("winner", ""),
                            "score_improvement": chosen.get("before_score", 0) - chosen.get("best_score", 0),
                        }
                        print(f"  [{bench_name}] Beam rank {self.beam_rank}: "
                              f"chose {chosen['best_direction'][0]}->{chosen['best_direction'][1]} "
                              f"(score={chosen.get('best_score',0):.1f})")

                # Positive-improvement gate: adaptive filtering of no-gain actions
                best_improvement = _compute_best_improvement(oracle_result)
                if _should_gate(best_improvement, self.positive_gate_mode,
                                self.action_memory):
                    print(f"  [{bench_name}] Gate({self.positive_gate_mode}): "
                          f"best improvement={best_improvement:.2f}, no action taken")
                    return {"kind": "fixed_point_candidate",
                            "details": f"gate blocked (Δ={best_improvement:.2f})"}
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

        # Priority 2b: Rule / Random-based choice (ML choosers removed in v3.1)
        if decision_pairs and self.chooser in ("rule", "random"):
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
                raise NotImplementedError(
                    "ML chooser has been removed (v3.1). "
                    "Use --chooser oracle or --chooser rule instead."
                )

            elif self.chooser == "ml-hybrid":
                raise NotImplementedError(
                    "ML-hybrid chooser has been removed (v3.1). "
                    "Use --chooser oracle or --chooser rule instead."
                )

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
        elif action["kind"] in ("oracle_ordered_pair", "rule_ordered_pair", "ml_ordered_pair", "random_ordered_pair", "safe_pair"):
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
        """Generate a stable key for an action to detect repeats.

        IMPORTANT: pair keys preserve direction (A->B ≠ B->A) because
        ordering is directional — a harmful A->B action should NOT
        blacklist the reverse B->A which may be beneficial.
        """
        if action.get("pass"):
            return f"single:{action['pass']}"
        passes = action.get("passes", [])
        if passes:
            return f"pair:{passes[0]},{passes[1]}"
        return f"other:{action.get('kind', 'unknown')}"

    @staticmethod
    def _pass_category(pass_name):
        """Classify a pass into a coarse category for diversity tracking."""
        cleanup = {"instcombine", "dce", "adce", "simplifycfg", "early-cse"}
        loop = {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"}
        value = {"gvn", "sccp", "reassociate"}
        mem = {"mem2reg", "sroa"}
        if pass_name in cleanup:
            return "cleanup"
        if pass_name in loop:
            return "loop"
        if pass_name in value:
            return "value"
        if pass_name in mem:
            return "mem"
        return "other"

    def _diversify_ml_results(self, ml_result, recent_categories, diversity_penalty=0.15):
        """Re-rank ML results to favor pairs whose categories differ from recent history.

        Args:
            ml_result: dict with 'results' list (each has pass_a, pass_b, ml_confidence)
            recent_categories: set of category strings from last N rounds
            diversity_penalty: confidence reduction for each repeated category

        Returns:
            ml_result with re-sorted results (most diverse+confident first)
        """
        results = ml_result.get("results", [])
        if not results or not recent_categories:
            return ml_result

        for r in results:
            cat_a = self._pass_category(r.get("pass_a", ""))
            cat_b = self._pass_category(r.get("pass_b", ""))
            repeat_count = (1 if cat_a in recent_categories else 0) + \
                           (1 if cat_b in recent_categories else 0)
            # Adjust confidence down for repeated categories
            r["ml_confidence_raw"] = r.get("ml_confidence", 0)
            r["ml_confidence"] = round(r["ml_confidence_raw"] * (1 - diversity_penalty * repeat_count), 3)
            r["diversity_penalty"] = diversity_penalty * repeat_count

        # Re-sort by adjusted confidence
        results.sort(key=lambda r: r["ml_confidence"], reverse=True)
        ml_result["results"] = results
        if results:
            ml_result["best_result"] = results[0]
            ml_result["best_action"] = {
                "kind": "ordered_pair",
                "passes": results[0]["best_direction"],
                "ml_confidence": results[0]["ml_confidence"],
            }
        return ml_result

    def _get_recent_categories(self, n=3):
        """Get set of pass categories used in the last N actions."""
        cats = set()
        for mem in self.action_memory[-n:]:
            action = mem.get("action", {})
            for p in action.get("passes", []):
                cats.add(self._pass_category(p))
        return cats

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
            # Match blacklist with direction preserved (see _action_key)
            pair_key = f"pair:{pa},{pb}"
            if pair_key in bad_keys:
                continue
            improvement = before_score - r.get("best_score", before_score)
            if improvement > best_improvement:
                best_improvement = improvement
                best_result = r

        if best_result is None:
            # All results blacklisted — use the oracle's original best
            skipped = len([r for r in results
                          if f"pair:{r.get('pass_a','')},{r.get('pass_b','')}" in bad_keys])
            print(f"  [{bench_name}] Cycle guard: all {len(results)} pairs "
                  f"blacklisted ({skipped} skipped), using best available")
            return oracle_result

        skipped_count = len(results) - sum(
            1 for r in results
            if f"pair:{r.get('pass_a','')},{r.get('pass_b','')}" not in bad_keys
        )
        if skipped_count > 0:
            print(f"  [{bench_name}] Cycle guard: skipped {skipped_count} "
                  f"blacklisted pair(s), chose {best_result.get('pass_a','')},{best_result.get('pass_b','')}")

        return {
            "best_action": {
                "kind": "ordered_pair",
                "passes": best_result["best_direction"],
                "winner": best_result.get("winner",
                    best_result.get("ml_confidence",
                        best_result.get("rule_score", 0))),
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
                         after_metrics=None, after_hash="", changed=False,
                         confirmation_rows=None):
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
        # Compute decision reduction stats from explicit decision graph
        dg = getattr(self, '_current_dg', None)
        total_pairs = dg["total_possible_edges"] if dg else 0
        auto_resolved = dg["auto_resolved_edges"] if dg else 0
        reduction_rate = dg["decision_reduction_rate"] if dg else 0
        batch_count = len(dg["auto_safe_batches"]) if dg else 0
        batch_sizes = ",".join(str(b["size"]) for b in (dg["auto_safe_batches"] or [])) if dg else ""

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
            "total_pairs_analyzed": total_pairs,
            "auto_resolved_pairs": auto_resolved,
            "decision_reduction_rate": reduction_rate,
            "auto_safe_batch_count": batch_count,
            "auto_safe_batch_sizes": batch_sizes,
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
    # Add beam-rank-based strategies: beam1 = 2nd-best R0, beam2 = 3rd-best R0
    if num_starts > len(strategies) and not start_strategies:
        strategies = ["original"]
        for k in range(1, min(num_starts, 3)):
            strategies.append(f"beam{k}")
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
            scheduler.beam_rank = 0
        elif strategy.startswith("beam"):
            scheduler.beam_rank = int(strategy[4:])  # beam1 → rank 1, beam2 → rank 2
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


def _pick_boundary_safe_batch(dg, confirmation_rows, candidate_passes, action_memory):
    """Pick the largest auto_safe_batch that is boundary-safe.

    A batch is boundary-safe iff:
    1. All internal pairs are confirmed/likely_independent (guaranteed)
    2. NO pass in the batch has an external order_sensitive edge to
       any pass OUTSIDE the batch
    3. Batch hasn't been recently tried

    This implements Layer 3 of the decision-reduction framework.
    """
    candidates = set(candidate_passes)
    # Build external order_sensitive edge map
    external_conflicts = {}
    for row in confirmation_rows:
        if row.get("confirmation") != "order_sensitive":
            continue
        pa, pb = row.get("pass_a"), row.get("pass_b")
        if pa not in candidates or pb not in candidates:
            continue
        external_conflicts.setdefault(pa, set()).add(pb)
        external_conflicts.setdefault(pb, set()).add(pa)

    for batch_info in dg["auto_safe_batches"]:
        batch_set = set(batch_info["passes"])

        # Check boundary safety: no external order_sensitive edges
        boundary_safe = True
        for p in batch_set:
            conflicts = external_conflicts.get(p, set())
            external = conflicts - batch_set
            if external:
                boundary_safe = False
                break

        if not boundary_safe:
            continue

        # Check action memory: haven't tried this exact batch recently
        batch_key = f"batch:{'|'.join(sorted(batch_set))}"
        if any(m.get("key") == batch_key for m in action_memory[-5:]):
            continue

        return batch_info["passes"]

    return None


def _compute_best_improvement(oracle_result):
    """Compute the best improvement from oracle results (before_score - best_score)."""
    results = oracle_result.get("results", [])
    if not results:
        return 0
    before = oracle_result.get("before_score", 100)
    best = min(r.get("best_score", before) for r in results)
    return round(before - best, 2)


def _should_gate(improvement, mode, action_memory):
    """Decide whether to gate (block) an oracle action based on improvement.

    Modes:
      off:        never gate
      zero-only:  only gate improvement == 0 (safe default)
      adaptive:   gate <= 0 if last N actions were also no-gain
      strict:     gate all improvement <= 0
    """
    if mode == "off":
        return False
    if mode == "strict":
        return improvement <= 0
    if mode == "zero-only":
        return improvement == 0
    if mode == "adaptive":
        if improvement > 0:
            return False
        # Gate only if recent actions also had no gain
        recent_no_gain = sum(
            1 for m in action_memory[-3:]
            if not m.get("improved", True)
        )
        return recent_no_gain >= 2
    return False


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


def _cleanup_round_dir(round_dir):
    """Delete intermediate .ll and analysis files, keep trace/policy CSVs and action JSON."""
    import shutil
    # Remove large subdirectories
    for sub in ["stageA", "stageA_pre", "stageA_enable", "oracle", "analysis", "exact"]:
        p = Path(round_dir) / sub
        if p.exists():
            shutil.rmtree(p, ignore_errors=True)
    # Remove .ll files (input/output intermediate IRs)
    for ll in Path(round_dir).glob("*.ll"):
        try:
            ll.unlink()
        except Exception:
            pass


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
        "--pass-set", default="research_codesize",
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
    parser.add_argument("--beam-rank", type=int, default=0,
                        help="For oracle: pick Nth-best candidate (0=best). Used by multi-start beam search.")
    parser.add_argument("--epsilon", type=float, default=0.0,
                        help="ε-greedy exploration rate at R0 (0-1). 0.1 = 10% random pick from top-5.")
    parser.add_argument("--positive-gate-mode", default="zero-only",
                        choices=["off", "zero-only", "adaptive", "strict"],
                        help="Gate mode for no-improvement oracle actions (default: zero-only).")
    parser.add_argument("--oracle-max-candidates", type=int, default=0,
                        help="Cap on order-sensitive pairs the oracle tests per round. "
                             "0 (default) = test ALL of them (true upper bound; the old "
                             "default of 10 truncated in alphabetical order and biased "
                             "the oracle toward a/d/e-initial passes).")
    parser.add_argument("--min-gain", type=float, default=0.5,
                        help="Stage A: minimum ir_cost reduction to count a pass as beneficial (default: 0.5).")
    parser.add_argument("--use-tti", action="store_true", help="Use TTI-based cost model.")
    parser.add_argument("--target-triple", default="x86_64-unknown-linux-gnu")
    parser.add_argument(
        "--metric", default="ir", choices=["ir", "codesize"],
        help="Optimization metric: 'ir' = instruction count, 'codesize' = .text bytes via llc (default: ir)."
    )
    parser.add_argument(
        "--llc", default=r"E:\llvm\build\bin\llc.exe", help="Path to llc (for --metric codesize)."
    )
    parser.add_argument(
        "--llvm-size", default=r"E:\llvm\build\bin\llvm-size.exe", help="Path to llvm-size (for --metric codesize)."
    )
    parser.add_argument("--inject-minsize", action="store_true",
                        help="Inject minsize/optsize attrs into input IR (auto-enabled with --metric codesize).")
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
    baseline_level = None
    if args.baseline_pipeline:
        bl_upper = args.baseline_pipeline.strip().upper()
        # O1/O2/O3/Oz → use real LLVM pipeline
        if bl_upper in {"O1", "O2", "O3", "Oz"}:
            baseline_level = bl_upper
            # Also load the pass list for legacy compatibility
            if bl_upper in {"O1", "O2", "O3"}:
                baseline_pipeline, _ = load_pass_set(
                    args.pass_set_config, bl_upper
                )
            else:
                baseline_pipeline, _ = load_pass_set(
                    args.pass_set_config, "O2"
                )
        else:
            from run_benchmark_suite import parse_passes
            baseline_pipeline = parse_passes(args.baseline_pipeline)
        print(f"Baseline: {args.baseline_pipeline} ({len(baseline_pipeline)} passes)"
              + (f", real={baseline_level}" if baseline_level else ""))
    elif args.pass_set in {"O2", "O3"}:
        baseline_level = "O2"
        baseline_passes, _ = load_pass_set(args.pass_set_config, "O2")
        baseline_pipeline = baseline_passes
        print(f"Baseline: O2 (real, {len(baseline_pipeline)} passes)")

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
                min_gain=args.min_gain,
                use_tti=args.use_tti,
                target_triple=args.target_triple,
                enable_batch_check=not args.no_batch_check,
                enable_perturbation=not args.no_perturbation,
                mandatory_orders=mandatory_orders,
                pass_set_config=args.pass_set_config,
                baseline_pipeline=baseline_pipeline,
                metric_mode=args.metric,
                llc_path=args.llc,
                llvm_size_path=getattr(args, 'llvm_size', None),
                inject_minsize=args.inject_minsize or (args.metric == "codesize"),
            )
            scheduler.baseline_level = baseline_level
            scheduler.beam_rank = args.beam_rank
            scheduler.epsilon = args.epsilon
            scheduler.positive_gate_mode = args.positive_gate_mode

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
