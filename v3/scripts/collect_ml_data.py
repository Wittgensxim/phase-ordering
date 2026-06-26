"""
Oracle training data collector: runs the iterative scheduler with oracle
and saves every decision point's (features, label) for ML training.

Each oracle decision produces one training sample:
  Features: IR metrics + dependency/enablement evidence + pass pair info
  Label:    0 (A->B better) or 1 (B->A better)

Output: training_data.csv with feature columns + label column.
"""

import argparse
import csv
import json
from pathlib import Path

from ir_metrics import measure_ir_file, ir_cost
from run_benchmark_suite import run_benchmark, load_manifest
from pass_pipeline import load_pass_set
from scheduler_policy import decision_required_pairs, classify_passes_for_scheduling
from oracle_chooser import run_oracle_ordered_pair


def extract_features(bench_name, ir_path, passes, candidate_passes,
                     confirmation_rows, enablement_edges, scheduler_mode,
                     pass_a, pass_b):
    """Extract features for a decision point between pass_a and pass_b.

    Features capture: IR state, pass characteristics, dependency evidence.
    """
    metrics = measure_ir_file(ir_path)

    # Basic IR features
    features = {
        "benchmark": bench_name,
        "instruction_count": metrics["instruction_count"],
        "basic_block_count": metrics["basic_block_count"],
        "load_count": metrics["load_count"],
        "store_count": metrics["store_count"],
        "call_count": metrics["call_count"],
        "branch_count": metrics["branch_count"],
        "phi_count": metrics["phi_count"],
        "function_count": metrics["function_count"],
        "ir_cost": ir_cost(metrics),
        "ir_file_size": metrics["ir_file_size"],
    }

    # Pass pair features
    features["pass_a"] = pass_a
    features["pass_b"] = pass_b
    features["candidate_pass_count"] = len(candidate_passes)

    # Confirmation evidence for this pair
    pair_conf = _find_pair_confirmation(confirmation_rows, pass_a, pass_b)
    features["confirmation"] = pair_conf.get("confirmation", "unknown")
    features["agreement"] = pair_conf.get("agreement", "")
    features["uncertainty_risk"] = pair_conf.get("uncertainty_risk", "none")
    features["overlap_pattern"] = pair_conf.get("overlap_pattern", "")

    # Enablement evidence
    en_ab_kinds = []
    en_ba_kinds = []
    if enablement_edges:
        for key, edges in enablement_edges.items():
            for e in edges:
                if e.get("enabler") == pass_a and e.get("enabled") == pass_b:
                    en_ab_kinds.append(e.get("edge_kind", ""))
                elif e.get("enabler") == pass_b and e.get("enabled") == pass_a:
                    en_ba_kinds.append(e.get("edge_kind", ""))
    features["enablement_a_to_b"] = ";".join(en_ab_kinds) if en_ab_kinds else "none"
    features["enablement_b_to_a"] = ";".join(en_ba_kinds) if en_ba_kinds else "none"

    # Pass category features
    features["pass_a_is_cleanup"] = 1 if pass_a in {"instcombine", "dce", "adce", "simplifycfg", "early-cse"} else 0
    features["pass_b_is_cleanup"] = 1 if pass_b in {"instcombine", "dce", "adce", "simplifycfg", "early-cse"} else 0
    features["pass_a_is_loop"] = 1 if pass_a in {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"} else 0
    features["pass_b_is_loop"] = 1 if pass_b in {"loop-rotate", "loop-unroll", "loop-simplify", "licm", "indvars"} else 0

    # Scheduler context
    features["scheduler_mode"] = scheduler_mode

    return features


def collect_training_sample(bench_name, ir_path, passes, candidate_passes,
                            confirmation_rows, enablement_edges, scheduler_mode,
                            pass_a, pass_b, opt_path, work_dir):
    """Run oracle on one pair and produce a labeled training sample.

    Returns dict with features + label (0=A->B wins, 1=B->A wins, -1=tie).
    """
    features = extract_features(
        bench_name, ir_path, passes, candidate_passes,
        confirmation_rows, enablement_edges, scheduler_mode,
        pass_a, pass_b,
    )

    # Run oracle to get ground truth
    try:
        result = run_oracle_ordered_pair(
            opt_path, ir_path, pass_a, pass_b, work_dir,
        )
    except Exception:
        return None

    ab_score = result.get("ab_score", float("inf"))
    ba_score = result.get("ba_score", float("inf"))

    features["ab_score"] = ab_score
    features["ba_score"] = ba_score
    features["score_delta"] = ab_score - ba_score

    if ab_score < ba_score:
        features["label"] = 0  # A->B wins
    elif ba_score < ab_score:
        features["label"] = 1  # B->A wins
    else:
        features["label"] = -1  # tie — skip for training

    features["winner"] = result.get("winner", "tie")
    features["ab_hash"] = result.get("ab_hash", "")
    features["ba_hash"] = result.get("ba_hash", "")

    return features


def _find_pair_confirmation(confirmation_rows, pass_a, pass_b):
    """Find confirmation row for a specific pair."""
    for row in confirmation_rows:
        if {row.get("pass_a"), row.get("pass_b")} == {pass_a, pass_b}:
            return row
    return {}


def run_benchmark_collect(benchmark, passes, clang_path, opt_path,
                          llvm_diff_path, out_dir, scheduler_mode):
    """Run analysis on one benchmark, collect oracle data for ALL eligible pairs.

    This runs the full analysis chain once (round 0), then oracle-tests
    all decision_required pairs to generate training samples.
    """
    bench_dir = Path(out_dir) / benchmark["name"]
    analysis_dir = bench_dir / "analysis"
    result = run_benchmark(
        benchmark=benchmark, passes=passes,
        clang_path=clang_path, opt_path=opt_path,
        llvm_diff_path=llvm_diff_path, out_dir=analysis_dir,
    )

    ir_path = Path(result["summary"]["input_ir"])
    candidate_passes = result["summary"]["candidate_passes"]
    confirmation_rows = result["confirmation_rows"]

    # Load enablement edges
    en_json = analysis_dir / benchmark["name"] / "enablement_probe.json"
    enablement_edges = None
    if en_json.exists():
        from analyze_footprints import load_enablement_edges
        enablement_edges = load_enablement_edges(str(en_json))

    # Get decision pairs
    pairs = decision_required_pairs(confirmation_rows, candidate_passes)
    if not pairs:
        pairs = [(a, b) for i, a in enumerate(candidate_passes)
                 for b in candidate_passes[i+1:]]
        pairs = pairs[:20]  # Limit

    print(f"  Testing {len(pairs)} pairs for {benchmark['name']}...")

    samples = []
    for pa, pb in pairs:
        sample = collect_training_sample(
            benchmark["name"], ir_path, passes, candidate_passes,
            confirmation_rows, enablement_edges, scheduler_mode,
            pa, pb, opt_path, bench_dir / "oracle_data",
        )
        if sample and sample.get("label", -1) >= 0:
            samples.append(sample)

    return samples


def main():
    parser = argparse.ArgumentParser(
        description="Collect oracle training data for ML chooser."
    )
    parser.add_argument("--manifest", default="configs/benchmarks_quick.json")
    parser.add_argument("--pass-set-config", default="configs/pass_sets.json")
    parser.add_argument("--pass-set", default="research")
    parser.add_argument("--scheduler-mode", default="relaxed")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--out-dir", default="results/ml_training")
    parser.add_argument("--out-csv", default="results/ml_training/training_data.csv")
    args = parser.parse_args()

    passes, _ = load_pass_set(args.pass_set_config, args.pass_set)
    benchmarks = load_manifest(args.manifest)

    print(f"Collecting training data from {len(benchmarks)} benchmarks...")
    all_samples = []

    for bench in benchmarks:
        try:
            samples = run_benchmark_collect(
                bench, passes, args.clang, args.opt,
                args.llvm_diff, args.out_dir, args.scheduler_mode,
            )
            all_samples.extend(samples)
            print(f"  {bench['name']}: {len(samples)} samples")
        except Exception as e:
            print(f"  {bench['name']}: FAILED — {e}")

    # Write CSV
    if not all_samples:
        print("No training samples collected!")
        return

    # Deduplicate features: remove non-feature columns for ML
    meta_cols = {"benchmark", "pass_a", "pass_b", "label", "winner",
                 "ab_score", "ba_score", "score_delta", "ab_hash", "ba_hash"}
    feature_cols = sorted(set(all_samples[0].keys()) - meta_cols)
    csv_cols = feature_cols + ["label", "pass_a", "pass_b", "winner", "benchmark"]

    out_path = Path(args.out_csv)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=csv_cols, extrasaction="ignore")
        writer.writeheader()
        for s in all_samples:
            writer.writerow({k: s.get(k, "") for k in csv_cols})

    ties = sum(1 for s in all_samples if s.get("label", -1) == -1)
    valid = len(all_samples) - ties
    print(f"\nDone: {valid} labeled samples ({ties} ties discarded)")
    print(f"Saved to {out_path}")


if __name__ == "__main__":
    main()
