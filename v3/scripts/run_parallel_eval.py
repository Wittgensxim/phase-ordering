"""
Parallel benchmark evaluation runner.
Runs multiple benchmark × chooser combinations concurrently using subprocess.
"""
import argparse
import json
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path


def run_one(benchmark: str, chooser: str, args, idx: int, total: int):
    """Run a single benchmark+chooser combo."""
    cmd = [
        sys.executable, "scripts/iterative_scheduler.py",
        "--manifest", args.manifest,
        "--benchmark", benchmark,
        "--pass-set-config", args.pass_set_config,
        "--chooser", chooser,
        "--max-rounds", str(args.max_rounds),
        "--multi-start", str(args.multi_start),
        "--out-dir", str(Path(args.out_dir) / chooser),
    ]
    if args.no_perturbation:
        cmd.append("--no-perturbation")
    if args.no_batch_check:
        cmd.append("--no-batch-check")

    tag = f"[{idx}/{total}] {benchmark} | {chooser}"
    try:
        result = subprocess.run(
            cmd, capture_output=True, text=True, timeout=args.timeout,
            cwd=Path(__file__).parent.parent,
        )
        # Extract score line
        for line in result.stdout.splitlines():
            if "Score:" in line or "FAILED" in line or "Avg final score" in line:
                print(f"  {tag}: {line.strip()}")
        if result.returncode != 0:
            print(f"  {tag}: FAILED (exit {result.returncode})")
            if args.verbose:
                print(f"    stderr: {result.stderr[:500]}")
        return {"benchmark": benchmark, "chooser": chooser, "ok": result.returncode == 0}
    except subprocess.TimeoutExpired:
        print(f"  {tag}: TIMEOUT")
        return {"benchmark": benchmark, "chooser": chooser, "ok": False}
    except Exception as e:
        print(f"  {tag}: ERROR {e}")
        return {"benchmark": benchmark, "chooser": chooser, "ok": False}


def main():
    parser = argparse.ArgumentParser(description="Parallel benchmark evaluation")
    parser.add_argument("--manifest", default="configs/benchmarks_ml_test.json")
    parser.add_argument("--pass-set-config", default="configs/pass_sets.json")
    parser.add_argument("--choosers", default="oracle,rule,ml",
                        help="Comma-separated chooser list")
    parser.add_argument("--max-rounds", type=int, default=15)
    parser.add_argument("--multi-start", type=int, default=1)
    parser.add_argument("--parallel", type=int, default=4,
                        help="Number of parallel workers")
    parser.add_argument("--timeout", type=int, default=600,
                        help="Timeout per benchmark in seconds")
    parser.add_argument("--out-dir", default="results/ml_eval_test15")
    parser.add_argument("--no-perturbation", action="store_true")
    parser.add_argument("--no-batch-check", action="store_true")
    parser.add_argument("--verbose", action="store_true")
    args = parser.parse_args()

    manifest = json.loads(Path(args.manifest).read_text(encoding="utf-8"))
    benchmarks = [b["name"] for b in manifest["benchmarks"]]
    choosers = [c.strip() for c in args.choosers.split(",")]

    tasks = []
    for c in choosers:
        for b in benchmarks:
            tasks.append((b, c))

    total = len(tasks)
    print(f"Running {total} tasks with {args.parallel} parallel workers...")
    print(f"Benchmarks: {len(benchmarks)}, Choosers: {choosers}")
    print(f"Output: {args.out_dir}")
    print()

    ok_count = 0
    fail_count = 0

    with ThreadPoolExecutor(max_workers=args.parallel) as executor:
        futures = {}
        for idx, (b, c) in enumerate(tasks, 1):
            f = executor.submit(run_one, b, c, args, idx, total)
            futures[f] = (b, c)

        for f in as_completed(futures):
            b, c = futures[f]
            try:
                r = f.result()
                if r["ok"]:
                    ok_count += 1
                else:
                    fail_count += 1
            except Exception as e:
                print(f"  [{b}|{c}]: EXCEPTION {e}")
                fail_count += 1

    print(f"\nDone: {ok_count} OK, {fail_count} FAILED, {total} total")


if __name__ == "__main__":
    main()
