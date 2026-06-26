"""
Search space quantification: analyzes schedule traces to compute
the effective search space reduction achieved by the dependency-aware scheduler.

Key metrics:
  - Total possible orderings: n!
  - Decision points per benchmark: total oracle calls
  - Auto-safe rounds: rounds where safe passes were found
  - Search space reduction ratio: n! / (oracle_calls × 2 directions)
"""

import argparse
import csv
import json
import math
from pathlib import Path
from collections import defaultdict


def analyze_trace(trace_path):
    """Analyze a single schedule_trace.csv."""
    with open(trace_path) as f:
        rows = list(csv.DictReader(f))

    n_passes = int(rows[0].get("candidate_pass_count", 0)) if rows else 0
    total_rounds = len(rows)

    oracle_rounds = sum(
        1 for r in rows
        if r.get("selected_action_kind") == "oracle_ordered_pair"
    )
    auto_safe_rounds = sum(
        1 for r in rows
        if r.get("auto_safe_passes", "").strip()
    )
    perturbation_rounds = sum(
        1 for r in rows
        if r.get("selected_action_kind") == "perturbation"
    )
    fixed_point_rounds = sum(
        1 for r in rows
        if r.get("selected_action_kind") == "fixed_point_candidate"
    )

    # Average decision pairs per round
    decision_pair_counts = []
    for r in rows:
        pairs_str = r.get("decision_required_pairs", "")
        if pairs_str:
            decision_pair_counts.append(len(pairs_str.split(";")))

    avg_decision_pairs = (
        sum(decision_pair_counts) / len(decision_pair_counts)
        if decision_pair_counts else 0
    )

    # Score trajectory
    scores = []
    for r in rows:
        try:
            scores.append(float(r.get("metric_score", 0)))
        except (ValueError, TypeError):
            pass
    final_score = float(rows[-1].get("metric_after", rows[-1].get("metric_score", 0))) if rows else 0

    return {
        "n_passes": n_passes,
        "total_rounds": total_rounds,
        "oracle_rounds": oracle_rounds,
        "auto_safe_rounds": auto_safe_rounds,
        "perturbation_rounds": perturbation_rounds,
        "fixed_point_rounds": fixed_point_rounds,
        "avg_decision_pairs_per_round": round(avg_decision_pairs, 1),
        "total_oracle_calls": oracle_rounds,  # Each oracle round = 1 decision
        "initial_score": scores[0] if scores else 0,
        "final_score": final_score,
        "score_improvement": scores[0] - final_score if scores and final_score else 0,
    }


def compute_reduction_ratio(n_passes, oracle_calls):
    """Compute search space reduction ratio.

    n! possible orderings, oracle only makes `oracle_calls` decisions.
    Each oracle decision tests ~2 directions on avg_decision_pairs candidates.
    Effective search ≈ oracle_calls (we pick the best each round, greedy).
    """
    if n_passes <= 1:
        return 1, 1
    full_space = math.factorial(n_passes)
    effective_calls = max(oracle_calls, 1)
    ratio = full_space / effective_calls
    return full_space, ratio


def analyze_suite(results_dir):
    """Analyze all benchmark traces in a suite output directory."""
    results_path = Path(results_dir)
    bench_dirs = [d for d in results_path.iterdir() if d.is_dir()]

    all_stats = []
    for bench_dir in sorted(bench_dirs):
        trace_path = bench_dir / "schedule_trace.csv"
        if not trace_path.exists():
            continue

        stats = analyze_trace(trace_path)
        stats["benchmark"] = bench_dir.name
        all_stats.append(stats)

    return all_stats


def print_report(all_stats):
    """Print a comprehensive search space quantification report."""
    if not all_stats:
        print("No trace data found.")
        return

    print("=" * 80)
    print("SEARCH SPACE QUANTIFICATION REPORT")
    print("=" * 80)

    # Per-benchmark table
    print(f"\n{'Benchmark':30s} {'Passes':>6s} {'Rounds':>6s} {'Oracle':>6s} "
          f"{'AutoSafe':>8s} {'Init Score':>10s} {'Final Score':>11s} {'Improve':>8s}")
    print("-" * 95)
    for s in all_stats:
        print(f"{s['benchmark']:30s} {s['n_passes']:>6d} {s['total_rounds']:>6d} "
              f"{s['oracle_rounds']:>6d} {s['auto_safe_rounds']:>8d} "
              f"{s['initial_score']:>10.1f} {s['final_score']:>11.1f} "
              f"{s['score_improvement']:>8.1f}")

    # Summary statistics
    n = len(all_stats)
    avg_passes = sum(s["n_passes"] for s in all_stats) / n
    avg_rounds = sum(s["total_rounds"] for s in all_stats) / n
    avg_oracle = sum(s["oracle_rounds"] for s in all_stats) / n
    avg_auto = sum(s["auto_safe_rounds"] for s in all_stats) / n
    total_decision_pairs = sum(s["avg_decision_pairs_per_round"] for s in all_stats) / n

    print(f"\n{'─' * 80}")
    print(f"SUMMARY (averaged over {n} benchmarks)")
    print(f"{'─' * 80}")
    print(f"  Pass set size:            {avg_passes:.0f}")
    print(f"  Avg rounds per benchmark: {avg_rounds:.1f}")
    print(f"  Avg oracle decisions:     {avg_oracle:.1f}")
    print(f"  Avg auto-safe rounds:     {avg_auto:.1f}")
    print(f"  Avg decision pairs/round: {total_decision_pairs:.1f}")

    # The key result: search space reduction
    full_space, ratio = compute_reduction_ratio(int(avg_passes), int(avg_oracle))
    orders_of_magnitude = math.log10(ratio) if ratio > 0 else 0

    print(f"\n{'─' * 80}")
    print(f"KEY RESULT: SEARCH SPACE REDUCTION")
    print(f"{'─' * 80}")
    print(f"  Total possible orderings ({int(avg_passes)}!):     {full_space:.2e}")
    print(f"  Effective oracle decisions per benchmark:  {avg_oracle:.1f}")
    print(f"  Reduction ratio:                           {ratio:.2e} ×")
    print(f"  Orders of magnitude reduced:               {orders_of_magnitude:.1f}")
    print(f"\n  → From {full_space:.2e} brute-force possibilities")
    print(f"    to {avg_oracle:.0f} oracle-guided decisions.")
    print(f"    A reduction of {orders_of_magnitude:.0f} orders of magnitude.")


def main():
    parser = argparse.ArgumentParser(
        description="Quantify search space reduction from schedule traces."
    )
    parser.add_argument(
        "results_dir", nargs="?", default="results/iterative_scheduler",
        help="Directory containing per-benchmark schedule traces."
    )
    parser.add_argument(
        "--out-json", help="Output JSON path for further analysis."
    )
    args = parser.parse_args()

    results_dir = Path(args.results_dir)
    if not results_dir.exists():
        print(f"Results directory not found: {results_dir}")
        print("Run the iterative scheduler first to generate traces.")
        return

    all_stats = analyze_suite(results_dir)
    print_report(all_stats)

    if args.out_json and all_stats:
        out_path = Path(args.out_json)
        out_path.parent.mkdir(parents=True, exist_ok=True)
        out_path.write_text(
            json.dumps(all_stats, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(f"\nData written to {out_path}")


if __name__ == "__main__":
    main()
