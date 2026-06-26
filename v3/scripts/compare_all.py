"""
Unified comparison runner: for each benchmark, automatically runs
  - 3 choosers: oracle, rule, random
  - 4 baselines: O0, O1, O2, O3
and outputs a single comparison table.

Usage:
  python scripts\compare_all.py --manifest configs\benchmarks_quick.json
  python scripts\compare_all.py --ir examples\demo.ll --name demo
"""

import argparse
import csv
import subprocess
import sys
from pathlib import Path

from ir_metrics import measure_ir_file
from pass_pipeline import load_pass_set, pipeline_names
from run_benchmark_suite import load_manifest


def run_scheduler_subprocess(benchmark, passes, args, chooser, baseline_name):
    """Run scheduler via subprocess. Returns (ok, score, inst, rounds)."""
    import subprocess as sp
    out_dir = Path(args.out_dir) / f"cmp_{chooser}_{baseline_name}"

    cmd = [
        sys.executable, "scripts/iterative_scheduler.py",
        "--scheduler-mode", args.scheduler_mode,
        "--max-rounds", str(args.max_rounds),
        "--metric-stagnation-rounds", str(args.metric_stagnation_rounds),
        "--chooser", chooser,
        "--baseline-pipeline", baseline_name,
        "--multi-start", "1",
        "--out-dir", str(out_dir),
        "--opt", args.opt, "--clang", args.clang,
        "--llvm-diff", args.llvm_diff,
    ]
    if benchmark.get("ir"):
        cmd += ["--ir", benchmark["ir"], "--name", benchmark["name"]]
    elif args.manifest:
        cmd += ["--manifest", args.manifest, "--benchmark", benchmark["name"]]

    result = sp.run(cmd, text=True, capture_output=True, check=False)

    # Parse trace for reliable data
    bench_dir = out_dir / benchmark["name"]
    trace_file = bench_dir / "schedule_trace.csv"
    if trace_file.exists():
        with open(trace_file) as f:
            rows = list(csv.DictReader(f))
            if rows:
                rounds = len(rows)
                score = float(rows[-1].get("metric_after", rows[-1].get("metric_score", 0)))
                inst = int(float(rows[-1].get("instruction_count", 0)))
                return True, score, inst, rounds

    return False, 0, 0, 0


def run_baseline_only(opt_path, ir_path, baseline_name, pass_set_config):
    """Run a fixed baseline pipeline (O0/O1/O2/O3) and measure IR metrics."""
    import subprocess as sp
    import tempfile

    if baseline_name == "O0":
        metrics = measure_ir_file(ir_path)
        return True, metrics.get("ir_cost", metrics.get("score", 0)), metrics["instruction_count"]

    passes, _ = load_pass_set(pass_set_config, baseline_name)
    with tempfile.NamedTemporaryFile(suffix=".ll", delete=False) as tmp:
        tmp_path = tmp.name

    cmd = [
        str(opt_path), "-S",
        f"-passes=function({','.join(pipeline_names(passes))})",
        str(ir_path), "-o", tmp_path,
    ]
    result = sp.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        Path(tmp_path).unlink(missing_ok=True)
        return False, 0, 0

    metrics = measure_ir_file(tmp_path)
    Path(tmp_path).unlink(missing_ok=True)
    return True, metrics.get("ir_cost", metrics.get("score", 0)), metrics["instruction_count"]


def main():
    parser = argparse.ArgumentParser(
        description="Compare all choosers and baselines on benchmarks."
    )
    parser.add_argument("--manifest", default="configs/benchmarks_quick.json")
    parser.add_argument("--benchmark", help="Filter to specific benchmark")
    parser.add_argument("--ir", help="Single IR file (--name required)")
    parser.add_argument("--name", default="benchmark")
    parser.add_argument("--pass-set-config", default="configs/pass_sets.json")
    parser.add_argument("--pass-set", default="research")
    parser.add_argument("--scheduler-mode", default="relaxed")
    parser.add_argument("--max-rounds", type=int, default=10)
    parser.add_argument("--metric-stagnation-rounds", type=int, default=4)
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--out-dir", default="results/compare_all")
    args = parser.parse_args()

    passes, _ = load_pass_set(args.pass_set_config, args.pass_set)

    if args.manifest:
        benchmarks = load_manifest(args.manifest)
        if args.benchmark:
            benchmarks = [b for b in benchmarks if b["name"] == args.benchmark]
    elif args.ir:
        benchmarks = [{"name": args.name, "ir": args.ir}]
    else:
        print("Need --manifest or --ir")
        return

    choosers = ["oracle", "rule", "random"]
    baselines = ["O0", "O1", "O2", "O3"]
    print(f"Benchmarks: {len(benchmarks)} × (3 choosers + 4 baselines) = {len(benchmarks)*7} runs")

    all_rows = []
    for i, bench in enumerate(benchmarks):
        name = bench["name"]
        print(f"\n[{i+1}/{len(benchmarks)}] {name}")

        row = {"benchmark": name}

        # Resolve IR path for baselines
        ir_path = bench.get("ir")
        if not ir_path and bench.get("source"):
            from run_benchmark_suite import compile_to_ir
            tmp_dir = Path(args.out_dir) / "ir_cache"
            tmp_dir.mkdir(parents=True, exist_ok=True)
            ir_path = compile_to_ir(args.clang, bench["source"], tmp_dir / f"{name}.ll")

        # Run baselines
        if ir_path and Path(ir_path).exists():
            for bl in baselines:
                ok, score, inst = run_baseline_only(args.opt, ir_path, bl, args.pass_set_config)
                row[f"{bl}_score"] = round(score, 1) if ok else "FAIL"
                row[f"{bl}_inst"] = inst if ok else 0
                status = f"score={score:.0f}" if ok else "FAIL"
                print(f"  {bl:6s}: {status}")
        else:
            for bl in baselines:
                row[f"{bl}_score"] = "N/A"
                row[f"{bl}_inst"] = 0
            print("  (no IR path, skipping baselines)")

        # Run scheduler with each chooser
        for ch in choosers:
            ok, score, inst, rounds = run_scheduler_subprocess(
                bench, passes, args, ch, "O2"
            )
            row[f"{ch}_score"] = round(score, 1) if ok else "FAIL"
            row[f"{ch}_inst"] = inst if ok else 0
            row[f"{ch}_rounds"] = rounds if ok else 0
            status = f"score={score:.0f} rounds={rounds}" if ok else "FAIL"
            print(f"  {ch:8s}: {status}")

        all_rows.append(row)

    # ---- Print table ----
    print("\n" + "=" * 100)
    print("COMPARISON TABLE")
    print("=" * 100)
    header = f"{'Benchmark':26s}"
    for bl in baselines:
        header += f" {bl:>7s}"
    for ch in choosers:
        header += f" {ch:>9s}"
    print(header)
    print("-" * 100)
    for row in all_rows:
        line = f"{row['benchmark']:26s}"
        for bl in baselines:
            val = row.get(f"{bl}_score", "?")
            line += f" {str(val):>7s}"
        for ch in choosers:
            val = row.get(f"{ch}_score", "?")
            line += f" {str(val):>9s}"
        print(line)

    # Wins vs O2
    print(f"\n{'─' * 100}")
    print("WINS vs O2 (chooser score < O2 score)")
    for ch in choosers:
        wins, total = 0, 0
        for row in all_rows:
            o2 = row.get("O2_score")
            cs = row.get(f"{ch}_score")
            if isinstance(o2, (int, float)) and isinstance(cs, (int, float)) and o2 > 0 and cs > 0:
                total += 1
                if cs < o2:
                    wins += 1
        if total:
            print(f"  {ch:8s}: {wins}/{total} ({wins/total*100:.0f}%)")

    # Best method per benchmark
    print(f"\n{'─' * 100}")
    print("BEST METHOD PER BENCHMARK")
    for row in all_rows:
        best_score = float("inf")
        best_method = "?"
        for bl in baselines:
            v = row.get(f"{bl}_score")
            if isinstance(v, (int, float)) and v > 0 and v < best_score:
                best_score = v; best_method = bl
        for ch in choosers:
            v = row.get(f"{ch}_score")
            if isinstance(v, (int, float)) and v > 0 and v < best_score:
                best_score = v; best_method = ch
        print(f"  {row['benchmark']:26s} -> {best_method}")

    # Save CSV
    csv_path = Path(args.out_dir) / "comparison_table.csv"
    csv_path.parent.mkdir(parents=True, exist_ok=True)
    fields = ["benchmark"]
    for bl in baselines:
        fields += [f"{bl}_score", f"{bl}_inst"]
    for ch in choosers:
        fields += [f"{ch}_score", f"{ch}_inst", f"{ch}_rounds"]
    with csv_path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
        writer.writeheader()
        for row in all_rows:
            writer.writerow(row)
    print(f"\nSaved to {csv_path}")


if __name__ == "__main__":
    main()
