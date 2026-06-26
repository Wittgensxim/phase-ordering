"""
Baseline runner: compiles and measures standard LLVM optimization pipelines
(O0, O1, O2, O3) for comparison with the iterative scheduler.

Supports:
- Running opt with standard -O1/-O2/-O3 flags
- Measuring IR metrics
- Comparing against scheduler results
"""

import argparse
import json
import subprocess
from pathlib import Path

from ir_metrics import measure_ir_file, measure_ir_with_tti, compare_metrics


STANDARD_PIPELINES = {
    "O0": [],
    "O1": [
        "mem2reg", "instcombine", "simplifycfg", "early-cse",
        "sccp", "dce", "adce", "loop-simplify", "loop-rotate",
    ],
    "O2": [
        "mem2reg", "instcombine", "simplifycfg", "early-cse",
        "gvn", "sccp", "loop-simplify", "loop-rotate",
        "dce", "adce", "sroa",
    ],
    "O3": [
        "mem2reg", "instcombine", "simplifycfg", "early-cse",
        "gvn", "sccp", "loop-simplify", "loop-rotate", "loop-unroll",
        "dce", "adce", "sroa",
    ],
}


def run_standard_pipeline(opt_path, input_ir, level, output_ir):
    """Run opt with a standard optimization level.

    Uses -O1/-O2/-O3 flags directly for accurate baseline,
    falling back to explicit pass list if needed.
    """
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    # First try: use -O flag directly
    if level in {"O1", "O2", "O3", "Os", "Oz"}:
        cmd = [
            str(opt_path), "-S", f"-{level.lower()}",
            str(input_ir), "-o", str(output_path),
        ]
        result = subprocess.run(cmd, text=True, capture_output=True, check=False)
        if result.returncode == 0:
            return output_path

    # Fallback: explicit pass pipeline
    passes = STANDARD_PIPELINES.get(level, [])
    if not passes:
        # O0: just copy input
        import shutil
        shutil.copy2(input_ir, output_path)
        return output_path

    from pass_pipeline import pipeline_names
    cmd = [
        str(opt_path), "-S",
        f"-passes=function({','.join(pipeline_names(passes))})",
        str(input_ir), "-o", str(output_path),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            f"opt {level} pipeline failed: {result.stderr.strip()}"
        )
    return output_path


def run_all_baselines(opt_path, input_ir, work_dir, levels=None):
    """Run all standard optimization pipelines and measure results.

    Returns dict: level -> {ir_path, metrics}
    """
    levels = levels or ["O0", "O1", "O2", "O3"]
    work_path = Path(work_dir)
    work_path.mkdir(parents=True, exist_ok=True)

    results = {}
    for level in levels:
        out_path = work_path / f"{level}.ll"
        run_standard_pipeline(opt_path, input_ir, level, out_path)
        metrics = measure_ir_file(out_path)
        results[level] = {
            "ir_path": str(out_path),
            "metrics": metrics,
        }
    return results


def compare_with_scheduler(scheduler_result, baseline_results):
    """Compare scheduler final metrics against all baselines.

    Args:
        scheduler_result: dict with 'final_metrics' key
        baseline_results: dict from run_all_baselines

    Returns:
        comparison dict
    """
    sched_metrics = scheduler_result.get("final_metrics", {})
    sched_score = sched_metrics.get("score", float("inf"))

    comparisons = {}
    for level, bl in baseline_results.items():
        bl_score = bl["metrics"]["score"]
        improvement = bl_score - sched_score
        comparisons[level] = {
            "baseline_score": bl_score,
            "scheduler_score": sched_score,
            "improvement": improvement,
            "improvement_pct": (
                (improvement / bl_score * 100) if bl_score > 0 else 0
            ),
            "baseline_instructions": bl["metrics"]["instruction_count"],
            "scheduler_instructions": sched_metrics.get("instruction_count", 0),
        }

    return comparisons


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Run standard LLVM optimization pipelines for baseline comparison."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--work-dir", default="results/baselines")
    parser.add_argument("--levels", default="O0,O1,O2,O3", help="Comma-separated levels.")
    parser.add_argument("--out-json", default="results/baseline_comparison.json")
    return parser.parse_args()


def main():
    args = parse_args()
    levels = [l.strip() for l in args.levels.split(",") if l.strip()]
    results = run_all_baselines(args.opt, args.input_ir, args.work_dir, levels)

    out_path = Path(args.out_json)
    out_path.parent.mkdir(parents=True, exist_ok=True)
    out_path.write_text(
        json.dumps(results, ensure_ascii=False, indent=2, default=str) + "\n",
        encoding="utf-8",
    )

    print("Baseline results:")
    for level, bl in results.items():
        m = bl["metrics"]
        print(f"  {level}: score={m['score']}, instructions={m['instruction_count']}")


if __name__ == "__main__":
    main()
