"""
Ablation study runner: runs the scheduler with different configurations
to measure the contribution of each component.

Configurations:
  1. Full      - Complete system (relaxed mode, oracle, perturbation, cycle guard)
  2. -Oracle   - Random pair selection instead of oracle
  3. -Perturb  - No perturbation
  4. -Cycle    - No cycle guard (action memory blacklist)
  5. -Relaxed  - Strict mode only (no likely_independent promotion)

Output: ablation_results.csv with benchmark × configuration matrix.
"""

import argparse
import csv
import json
import sys
from pathlib import Path

from iterative_scheduler import IterativeScheduler, run_multi_start_search
from pass_pipeline import load_pass_set
from run_benchmark_suite import load_manifest, parse_passes


ABLATION_CONFIGS = {
    "full": {
        "scheduler_mode": "relaxed",
        "use_oracle": True,
        "enable_perturbation": True,
        "enable_cycle_guard": True,
    },
    "no_oracle": {
        "scheduler_mode": "relaxed",
        "use_oracle": False,
        "enable_perturbation": True,
        "enable_cycle_guard": True,
    },
    "no_perturb": {
        "scheduler_mode": "relaxed",
        "use_oracle": True,
        "enable_perturbation": False,
        "enable_cycle_guard": True,
    },
    "no_cycle_guard": {
        "scheduler_mode": "relaxed",
        "use_oracle": True,
        "enable_perturbation": True,
        "enable_cycle_guard": False,
    },
    "strict_only": {
        "scheduler_mode": "strict",
        "use_oracle": True,
        "enable_perturbation": True,
        "enable_cycle_guard": True,
    },
}


def run_ablation(benchmarks, passes, args, mandatory_orders):
    """Run all ablation configs on all benchmarks."""
    results = []

    for bench in benchmarks:
        bench_name = bench["name"]
        for config_name, config in ABLATION_CONFIGS.items():
            print(f"\n  [{config_name}] {bench_name} ... ", end="", flush=True)
            try:
                scheduler = IterativeScheduler(
                    passes=passes,
                    clang_path=args.clang,
                    opt_path=args.opt,
                    llvm_diff_path=args.llvm_diff,
                    out_dir=Path(args.out_dir) / "ablation",
                    scheduler_mode=config["scheduler_mode"],
                    independence_threshold=args.independence_threshold,
                    max_rounds=args.max_rounds,
                    metric_stagnation_rounds=args.metric_stagnation_rounds,
                    use_oracle=config["use_oracle"],
                    enable_perturbation=config["enable_perturbation"],
                    enable_batch_check=False,
                    mandatory_orders=mandatory_orders,
                    baseline_pipeline=args.baseline_pipeline_resolved,
                )
                # Override cycle guard
                if not config["enable_cycle_guard"]:
                    scheduler._filter_oracle_by_memory = lambda r, _: r

                result = scheduler.run(bench)
                fm = result.get("final_metrics", {})
                bc = result.get("baseline_comparison", {})
                baseline_score = bc.get("baseline_score", 0)
                scheduler_score = fm.get("score", 0)
                improvement = baseline_score - scheduler_score if baseline_score else 0
                imp_pct = (improvement / baseline_score * 100) if baseline_score else 0

                results.append({
                    "benchmark": bench_name,
                    "configuration": config_name,
                    "status": "ok",
                    "rounds": result.get("rounds", 0),
                    "final_score": scheduler_score,
                    "final_instructions": fm.get("instruction_count", 0),
                    "baseline_score": baseline_score,
                    "improvement": round(improvement, 2),
                    "improvement_pct": round(imp_pct, 1),
                    "auto_safe_rounds": sum(
                        1 for r in result.get("trace", [])
                        if r.get("auto_safe_passes")
                    ),
                })
                print(f"score={scheduler_score:.0f} rounds={result.get('rounds',0)}")
            except Exception as exc:
                print(f"FAILED: {exc}")
                results.append({
                    "benchmark": bench_name,
                    "configuration": config_name,
                    "status": "failed",
                    "rounds": 0, "final_score": 0, "final_instructions": 0,
                    "baseline_score": 0, "improvement": 0, "improvement_pct": 0,
                    "auto_safe_rounds": 0,
                })

    return results


def write_ablation_csv(results, path):
    fields = [
        "benchmark", "configuration", "status", "rounds",
        "final_score", "final_instructions", "baseline_score",
        "improvement", "improvement_pct", "auto_safe_rounds",
    ]
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for r in results:
            writer.writerow({k: r.get(k, "") for k in fields})
    print(f"\nAblation results written to {p}")


def print_ablation_summary(results):
    """Print per-configuration summary."""
    from collections import defaultdict
    by_config = defaultdict(list)
    for r in results:
        if r["status"] == "ok":
            by_config[r["configuration"]].append(r)

    print("\n=== Ablation Study Summary ===")
    print(f"{'Configuration':16s} {'Benchmarks':>10s} {'Avg Score':>10s} {'Avg Improve%':>13s} {'Avg Rounds':>10s}")
    print("-" * 65)
    for config_name in ["full", "no_oracle", "no_perturb", "no_cycle_guard", "strict_only"]:
        rows = by_config.get(config_name, [])
        if not rows:
            continue
        n = len(rows)
        avg_score = sum(r["final_score"] for r in rows) / n
        avg_imp = sum(r["improvement_pct"] for r in rows) / n
        avg_rounds = sum(r["rounds"] for r in rows) / n
        print(f"{config_name:16s} {n:>10d} {avg_score:>10.1f} {avg_imp:>12.1f}% {avg_rounds:>10.1f}")


def parse_args():
    parser = argparse.ArgumentParser(description="Phase ordering ablation study")
    parser.add_argument("--manifest", default="configs/benchmarks_quick.json")
    parser.add_argument("--benchmark", help="Filter to specific benchmark")
    parser.add_argument("--pass-set-config", default="configs/pass_sets.json")
    parser.add_argument("--pass-set", default="research")
    parser.add_argument("--scheduler-mode", default="relaxed")
    parser.add_argument("--independence-threshold", type=float, default=0.9)
    parser.add_argument("--max-rounds", type=int, default=15)
    parser.add_argument("--metric-stagnation-rounds", type=int, default=4)
    parser.add_argument("--baseline-pipeline", default="O2")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--out-dir", default="results/ablation")
    return parser.parse_args()


def main():
    args = parse_args()
    passes, mandatory_orders = load_pass_set(args.pass_set_config, args.pass_set)
    print(f"Passes ({len(passes)}): {', '.join(passes)}")

    # Resolve baseline
    if args.baseline_pipeline.strip().upper() in {"O1", "O2", "O3"}:
        baseline_passes, _ = load_pass_set(
            args.pass_set_config, args.baseline_pipeline.strip().upper()
        )
    else:
        baseline_passes = parse_passes(args.baseline_pipeline)
    args.baseline_pipeline_resolved = baseline_passes
    print(f"Baseline: {args.baseline_pipeline} ({len(baseline_passes)} passes)")

    benchmarks = load_manifest(args.manifest)
    if args.benchmark:
        benchmarks = [b for b in benchmarks if b["name"] == args.benchmark]
    print(f"Benchmarks: {len(benchmarks)} × {len(ABLATION_CONFIGS)} configs = {len(benchmarks)*len(ABLATION_CONFIGS)} runs\n")

    results = run_ablation(benchmarks, passes, args, mandatory_orders)
    write_ablation_csv(results, Path(args.out_dir) / "ablation_results.csv")
    print_ablation_summary(results)


if __name__ == "__main__":
    main()
