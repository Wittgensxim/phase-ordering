"""
Unified comparison runner: for each benchmark, automatically runs
  - 3 choosers: oracle, rule, random (budget-aligned)
  - 5 real baselines: O0, O1, O2, O3, Oz
  - 1 same-set fixed-order baseline (the TRUE control: isolates ordering)
  - Optional correctness validation (compile+execute+output diff vs O0)

Supports parallel execution with --parallel N.

Usage:
  python scripts/compare_all.py --manifest configs/benchmarks_quick.json
  python scripts/compare_all.py --manifest configs/benchmarks_quick.json --parallel 4
  python scripts/compare_all.py --manifest configs/benchmarks_quick.json --correctness
"""

import argparse
import csv
import json
import math
import os
import statistics
import subprocess
import sys
import tempfile
from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor, as_completed
from pathlib import Path

from ir_metrics import measure_ir_file, compute_score, reduction_pct, mean_over_oz, measure_codesize, get_metric_value
from pass_pipeline import load_pass_set, pipeline_names
from baseline_pipelines import run_real_pipeline
from commutativity_test import run_opt_pipeline
from run_benchmark_suite import load_manifest, compile_to_ir


# ── LLVM registry-derived fixed order: same pass universe, LLVM registration ──
# order (from `opt --print-passes`). Defensible because the registration order
# reflects the developers' intended pipeline structure (mem2reg before scalar,
# loop-simplify before loop transforms).  We filter to passes in the current
# pass set, so the fixed-order baseline always uses the SAME pass universe.
def _build_llvm_fixed_order(opt_path, pass_set):
    """Derive fixed order from LLVM's pass registration order, filtered to pass_set."""
    import subprocess
    r = subprocess.run([str(opt_path), "--print-passes"], capture_output=True, text=True)
    lines = (r.stdout + r.stderr).splitlines()
    order = []
    in_section = False
    for line in lines:
        if not line.startswith(" ") and not line.startswith("\t"):
            in_section = any(kw in line for kw in ["Function passes", "Loop passes", "CGSCC passes"]) and "analyses" not in line.lower() and "alias" not in line.lower()
            continue
        if not in_section: continue
        p = line.strip()
        if not p: continue
        if "<" in p: p = p.split("<")[0]
        p = p.lstrip("-")
        if p in pass_set and p not in order:
            order.append(p)
    return order


# Legacy 27-pass fixed order (used as fallback)
RESEARCH27_FIXED_ORDER = [
    "mem2reg",               #  1: promote allocas → SSA
    "instcombine",            #  2: early inst combine
    "instsimplify",           #  3: early inst simplify
    "early-cse",              #  4: common subexpr elimination
    "gvn",                    #  5: global value numbering
    "correlated-propagation", #  6: correlated value propagation
    "sccp",                   #  7: sparse conditional const prop
    "loop-simplify",          #  8: canonicalize loops
    "loop-rotate",            #  9: rotate loops for licm
    "licm",                   # 10: loop-invariant code motion
    "indvars",                # 11: induction variable simplify
    "loop-idiom",             # 12: idiom recognition (memcpy etc)
    "loop-instsimplify",      # 13: loop inst simplify
    "loop-deletion",          # 14: delete dead loops
    "loop-load-elim",         # 15: loop load elimination
    "reassociate",            # 16: reassociate expressions
    "jump-threading",         # 17: jump threading
    "simplifycfg",            # 18: simplify CFG
    "sroa",                   # 19: scalar replacement of aggregates
    "memcpyopt",              # 20: memcpy optimization
    "dse",                    # 21: dead store elimination
    "mergeicmps",             # 22: merge icmp chains
    "aggressive-instcombine", # 23: aggressive inst combine
    "bdce",                   # 24: bit-tracking DCE
    "adce",                   # 25: aggressive DCE
    "dce",                    # 26: dead code elimination
    "tailcallelim",           # 27: tail call elimination
]


def run_fixed_order_pipeline(opt_path, passes, ir_path, out_path):
    """Run all passes in a fixed canonical order (single application each).

    This is the primary control: same pass set, same single-application,
    only the ordering is fixed (not scheduler-chosen). The difference
    between scheduler and fixed_order ISOLATES the ordering contribution.
    """
    try:
        run_opt_pipeline(opt_path, ir_path, passes, out_path)
        return True
    except Exception:
        return False


# ── Correctness validation: compile + execute + output diff vs O0 ───────────

def _compile_and_run(clang_path, src_or_ir, exe_path, cflags=None):
    """Compile source/IR → executable, run it, capture stdout. Returns (ok, output)."""
    compile_cmd = [str(clang_path), str(src_or_ir), "-o", str(exe_path)]
    if cflags:
        compile_cmd.extend(cflags)
    # For .ll files, don't add optimization flags
    if not str(src_or_ir).endswith(".ll"):
        compile_cmd.extend(["-O0", "-w"])
    cp = subprocess.run(compile_cmd, text=True, capture_output=True, check=False)
    if cp.returncode != 0:
        return False, f"COMPILE_FAILED: {cp.stderr.strip()[:200]}"

    try:
        run_cp = subprocess.run([str(exe_path)], text=True, capture_output=True,
                                timeout=30, check=False)
        return True, run_cp.stdout
    except subprocess.TimeoutExpired:
        return False, "TIMEOUT"
    except Exception as e:
        return False, str(e)[:200]


def validate_correctness(clang_path, source_path, optimized_ir_path, work_dir):
    """Compile O0 source → run; compile optimized IR → run; diff outputs.

    Returns (passed: bool, detail: str).
    """
    work = Path(work_dir) / "correctness"
    work.mkdir(parents=True, exist_ok=True)

    # O0 reference: compile source → executable → run
    o0_exe = work / "o0_ref.exe"
    ok_ref, out_ref = _compile_and_run(clang_path, source_path, o0_exe)
    if not ok_ref:
        return None, f"O0_ref_failed: {out_ref[:100]}"  # None = can't validate

    # Optimized: compile optimized IR → executable → run
    opt_exe = work / "opt.exe"
    ok_opt, out_opt = _compile_and_run(clang_path, optimized_ir_path, opt_exe, cflags=["-O0", "-w"])
    if not ok_opt:
        return False, f"opt_compile_failed: {out_opt[:100]}"

    # Diff outputs (allow trailing whitespace differences)
    ref_lines = out_ref.rstrip().splitlines()
    opt_lines = out_opt.rstrip().splitlines()
    if ref_lines == opt_lines:
        return True, "output_match"
    else:
        return False, f"output_mismatch (ref={len(ref_lines)} lines, opt={len(opt_lines)} lines)"


def _metric_val(ir_path, args):
    """Return the optimization target value for a .ll file based on metric mode."""
    if args.metric == "codesize":
        cs = measure_codesize(ir_path, args.llc, args.llvm_size)
        return cs if cs is not None else measure_ir_file(ir_path)["instruction_count"]
    return measure_ir_file(ir_path)["instruction_count"]


def _scheduler_metric_val(bench_name, out_dir, args):
    """Read codesize_text from scheduler's final_metrics.json, or fallback to trace."""
    bench_dir = Path(out_dir) / bench_name
    fm_path = bench_dir / "final_metrics.json"
    if fm_path.exists():
        fm = json.loads(fm_path.read_text())
        if args.metric == "codesize" and "codesize_text" in fm:
            return fm["codesize_text"]
        return fm.get("instruction_count", 0)
    return 0


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
        "--metric", args.metric,
        "--pass-set-config", args.pass_set_config,
        "--pass-set", args.pass_set,
        "--out-dir", str(out_dir),
        "--opt", args.opt, "--clang", args.clang,
        "--llvm-diff", args.llvm_diff,
    ]
    if args.metric == "codesize":
        cmd += ["--llc", args.llc, "--llvm-size", args.llvm_size, "--inject-minsize"]
    if getattr(args, "runtime_correctness", False):
        cmd += ["--runtime-correctness"]
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


def run_baseline_only(opt_path, ir_path, baseline_name, pass_set_config, original_metrics):
    """Run a REAL LLVM baseline pipeline (O0/O1/O2/O3/Oz) and return NORMALIZED score.

    Uses run_real_pipeline (default<Ox> / Oz=default<O2>+minsize) — the
    literature-standard reference, NOT the custom single-shot pass lists in
    pass_sets.json.
    """
    import tempfile

    if baseline_name == "O0":
        return True, 100.0, original_metrics["instruction_count"]

    with tempfile.NamedTemporaryFile(suffix=".ll", delete=False) as tmp:
        tmp_path = tmp.name

    try:
        run_real_pipeline(opt_path, ir_path, baseline_name, tmp_path)
        metrics = measure_ir_file(tmp_path)
        Path(tmp_path).unlink(missing_ok=True)
        norm_score = compute_score(original_metrics, metrics)
        return True, norm_score, metrics["instruction_count"]
    except Exception:
        Path(tmp_path).unlink(missing_ok=True)
        return False, 0, 0


# ── Intra-benchmark parallel sub-tasks ─────────────────────────────────────

def _task_fixed_order(args, name, passes, ir_path_for_baselines, o0_metrics):
    """Run fixed-order pipeline. Returns {fixed_score, fixed_inst, fixed_ok, fixed_ir}."""
    result = {"fixed_score": "FAIL", "fixed_inst": 0, "fixed_ok": False, "fixed_ir": None}
    fixed_ir = Path(args.out_dir) / "fixed_order" / f"{name}.ll"
    fixed_ir.parent.mkdir(parents=True, exist_ok=True)
    llvm_order = _build_llvm_fixed_order(args.opt, passes)
    fixed_ok = run_fixed_order_pipeline(args.opt, llvm_order, ir_path_for_baselines, fixed_ir)
    result["fixed_ok"] = fixed_ok
    result["fixed_ir"] = fixed_ir
    if fixed_ok:
        result["fixed_inst"] = _metric_val(fixed_ir, args)
        if args.metric == "codesize":
            result["fixed_score"] = "PENDING"  # resolved after O0_inst known
        else:
            result["fixed_score"] = round(compute_score(o0_metrics, measure_ir_file(fixed_ir)), 1)
    return result


def _task_chooser(args, bench, passes, chooser, baseline_name="O2"):
    """Run one chooser via subprocess. Returns {ch_score, ch_inst, ch_rounds} dict."""
    ok, score, inst, rounds = run_scheduler_subprocess(bench, passes, args, chooser, baseline_name)
    result = {f"{chooser}_score": "FAIL", f"{chooser}_inst": 0, f"{chooser}_rounds": 0}
    if ok:
        out_dir = Path(args.out_dir) / f"cmp_{chooser}_{baseline_name}"
        val = _scheduler_metric_val(bench["name"], out_dir, args)
        result[f"{chooser}_inst"] = val
        result[f"{chooser}_score"] = "PENDING"  # resolved after O0_inst known
        result[f"{chooser}_rounds"] = rounds
    return result


def _task_rand_budget(args, bench, oracle_opt_budget):
    """Run budget-aligned random. Returns {randB_score, randB_inst, randB_rounds}."""
    result = {"randB_score": "N/A", "randB_inst": 0, "randB_rounds": 0}
    if args.skip_rand_budget or oracle_opt_budget <= 1:
        return result

    rand_budget_dir = Path(args.out_dir) / "cmp_random_budget_O2"
    rand_budget_dir.mkdir(parents=True, exist_ok=True)
    cmd = [
        sys.executable, "scripts/iterative_scheduler.py",
        "--scheduler-mode", args.scheduler_mode,
        "--max-rounds", str(args.max_rounds),
        "--metric-stagnation-rounds", str(args.metric_stagnation_rounds),
        "--chooser", "random",
        "--baseline-pipeline", "O2",
        "--multi-start", str(oracle_opt_budget),
        "--metric", args.metric,
        "--pass-set-config", args.pass_set_config,
        "--pass-set", args.pass_set,
        "--out-dir", str(rand_budget_dir),
        "--opt", args.opt, "--clang", args.clang,
        "--llvm-diff", args.llvm_diff,
    ]
    if args.metric == "codesize":
        cmd += ["--llc", args.llc, "--llvm-size", args.llvm_size, "--inject-minsize"]
    if bench.get("ir"):
        cmd += ["--ir", bench["ir"], "--name", bench["name"]]
    elif args.manifest:
        cmd += ["--manifest", args.manifest, "--benchmark", bench["name"]]

    sp_result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    bench_dir = rand_budget_dir / bench["name"]
    trace_file = bench_dir / "schedule_trace.csv"
    if trace_file.exists():
        with open(trace_file) as f:
            rows = list(csv.DictReader(f))
            if rows:
                result["randB_score"] = round(float(rows[-1].get("metric_after",
                    rows[-1].get("metric_score", 0))), 1)
                result["randB_inst"] = int(float(rows[-1].get("instruction_count", 0)))
                result["randB_rounds"] = len(rows)
            else:
                result["randB_score"] = "FAIL"
    else:
        result["randB_score"] = "FAIL"
    return result


def process_benchmark(bench, idx, total, passes, args, choosers, baselines):
    """Process one benchmark: baselines first, then fan-out fixed_order +
    choosers + randB in parallel via thread pool.  Returns (row, correctness)."""
    name = bench["name"]
    tag = f"[{idx}/{total}] {name}"
    print(f"{tag}: starting...")

    row = {"benchmark": name}
    correctness = None

    # Resolve IR path
    ir_path = bench.get("ir")
    source_path = bench.get("source")
    if not ir_path and source_path:
        tmp_dir = Path(args.out_dir) / "ir_cache"
        tmp_dir.mkdir(parents=True, exist_ok=True)
        ir_path = compile_to_ir(args.clang, source_path, tmp_dir / f"{name}.ll")

    if not ir_path or not Path(ir_path).exists():
        print(f"  {tag}: SKIP (no IR)")
        return row, None

    # ── Phase 1: Baselines (sequential — fast, shared O0 ref) ──────────────
    if args.metric == "codesize":
        from baseline_pipelines import _inject_attrs
        orig_text = Path(ir_path).read_text(encoding="utf-8")
        minsize_text = _inject_attrs(orig_text, "minsize optsize")
        minsize_ir = Path(args.out_dir) / "ir_cache" / f"{name}_minsize.ll"
        minsize_ir.parent.mkdir(parents=True, exist_ok=True)
        minsize_ir.write_text(minsize_text, encoding="utf-8")
        ir_path_for_baselines = minsize_ir
    else:
        ir_path_for_baselines = ir_path

    o0_metrics = measure_ir_file(ir_path_for_baselines)
    for bl in baselines:
        ok, score, inst = run_baseline_only(
            args.opt, ir_path, bl, args.pass_set_config, o0_metrics
        )
        if ok:
            bl_ir = Path(tempfile.gettempdir()) / f"{name}_{bl}.ll"
            if bl == "O0":
                bl_ir = ir_path_for_baselines
            else:
                try:
                    run_real_pipeline(args.opt, ir_path_for_baselines, bl, bl_ir)
                except Exception:
                    bl_ir = None
            if bl_ir and bl_ir.exists():
                row[f"{bl}_inst"] = _metric_val(bl_ir, args)
            else:
                row[f"{bl}_inst"] = inst
            row[f"{bl}_score"] = round(score, 1)
        else:
            row[f"{bl}_score"] = "FAIL"
            row[f"{bl}_inst"] = 0

    if args.metric == "codesize":
        o0_val = row.get("O0_inst", 1) or 1
        for bl in baselines:
            bl_val = row.get(f"{bl}_inst", 0)
            if isinstance(bl_val, (int, float)) and bl_val > 0:
                row[f"{bl}_score"] = round(100.0 * bl_val / o0_val, 1)

    # ── Phase 2: Fan-out — fixed_order + all choosers in parallel ──────────
    # We don't know oracle_rounds yet, so randB is deferred until choosers finish.
    intra_workers = getattr(args, "intra_parallel", len(choosers) + 1)
    with ThreadPoolExecutor(max_workers=intra_workers) as executor:
        futures = {}

        # Fixed order
        futures[executor.submit(
            _task_fixed_order, args, name, passes, ir_path_for_baselines, o0_metrics
        )] = "fixed"

        # Choosers
        for ch in choosers:
            futures[executor.submit(
                _task_chooser, args, bench, passes, ch, "O2"
            )] = ch

        # Collect results as they complete
        fixed_result = None
        for future in as_completed(futures):
            key = futures[future]
            result = future.result()
            if key == "fixed":
                fixed_result = result
            else:
                row.update(result)

    # Merge fixed result
    if fixed_result:
        row["fixed_score"] = fixed_result["fixed_score"]
        row["fixed_inst"] = fixed_result["fixed_inst"]
        fixed_ok = fixed_result["fixed_ok"]
        fixed_ir = fixed_result["fixed_ir"]
    else:
        row["fixed_score"] = "FAIL"
        row["fixed_inst"] = 0
        fixed_ok = False
        fixed_ir = None

    # Resolve "PENDING" scores (need O0_inst reference)
    o0_val = row.get("O0_inst", 1) or 1
    for key_suffix in ["fixed"] + choosers:
        sk = f"{key_suffix}_score"
        ik = f"{key_suffix}_inst"
        if row.get(sk) == "PENDING":
            val = row.get(ik, 0)
            if isinstance(val, (int, float)) and val > 0:
                row[sk] = round(100.0 * val / o0_val, 1)
            else:
                row[sk] = "FAIL"

    # ── Phase 3: Budget-aligned random (depends on oracle_rounds) ───────────
    oracle_rounds = int(row.get("oracle_rounds", 0) or 0)
    estimated_auto_safe = max(1, len(passes) // 3)
    oracle_opt_budget = oracle_rounds * estimated_auto_safe + 1
    row["oracle_budget"] = oracle_opt_budget

    randb_result = _task_rand_budget(args, bench, oracle_opt_budget)
    row.update(randb_result)

    # ── Phase 4: Correctness validation (default: on, use --no-correctness to skip) ─
    if args.correctness and source_path and os.path.exists(source_path):
        if fixed_ok and fixed_ir and fixed_ir.exists():
            fixed_correct, _ = validate_correctness(
                args.clang, source_path, fixed_ir, args.out_dir
            )
            row["fixed_correct"] = str(fixed_correct) if fixed_correct is not None else "N/A"
        else:
            row["fixed_correct"] = "N/A"

        for ch in choosers:
            ch_dir = Path(args.out_dir) / f"cmp_{ch}_O2" / name
            ch_final = ch_dir / "final.ll"
            if ch_final.exists():
                ch_correct, _ = validate_correctness(
                    args.clang, source_path, ch_final, args.out_dir
                )
                row[f"{ch}_correct"] = str(ch_correct) if ch_correct is not None else "N/A"
            else:
                row[f"{ch}_correct"] = "N/A"

        correctness = (row.get("fixed_correct"), row.get("oracle_correct"))
    else:
        row["fixed_correct"] = "N/A"
        for ch in choosers:
            row[f"{ch}_correct"] = "N/A"

    # ── Find best ──────────────────────────────────────────────────────────
    best_score = float("inf")
    best_method = "?"
    for key in [f"{bl}_score" for bl in baselines] + [f"{ch}_score" for ch in choosers]\
               + ["fixed_score", "randB_score"]:
        v = row.get(key)
        if isinstance(v, (int, float)) and v > 0 and v < best_score:
            best_score = v
            best_method = key.replace("_score", "")

    print(f"  {tag}: best={best_method} ({best_score:.0f})"
          f"{' [OK]' if row.get(best_method+'_correct') == 'True' else ''}"
          f"{' [FAIL]' if row.get(best_method+'_correct') not in (None,'N/A','True') else ''}")
    return row, correctness


def main():
    parser = argparse.ArgumentParser(
        description="Compare all choosers and baselines on benchmarks."
    )
    parser.add_argument("--manifest", default="configs/benchmarks_quick.json")
    parser.add_argument("--benchmark", help="Filter to specific benchmark")
    parser.add_argument("--ir", help="Single IR file (--name required)")
    parser.add_argument("--name", default="benchmark")
    parser.add_argument("--pass-set-config", default="configs/pass_sets.json")
    parser.add_argument("--pass-set", default="research_codesize")
    parser.add_argument("--scheduler-mode", default="relaxed")
    parser.add_argument("--max-rounds", type=int, default=10)
    parser.add_argument("--metric-stagnation-rounds", type=int, default=4)
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--out-dir", default=None,
                        help="Output directory (default: results/<pass_set>_<manifest_name>/).")
    parser.add_argument("--parallel", type=int, default=5,
                        help="Number of parallel benchmark workers.")
    parser.add_argument("--intra-parallel", type=int, default=5,
                        help="Sub-tasks per benchmark to run in parallel (fixed+choosers+randB).")
    parser.add_argument("--correctness", action="store_true", default=None,
                        help="Enable correctness validation (default: on).")
    parser.add_argument("--no-correctness", action="store_false", dest="correctness",
                        help="Disable correctness validation.")
    parser.set_defaults(correctness=True)
    parser.add_argument("--skip-rand-budget", action="store_true",
                        help="Skip budget-aligned random (saves time).")
    parser.add_argument("--metric", default="ir", choices=["ir", "codesize"],
                        help="Optimization metric (default: ir)")
    parser.add_argument("--llc", default=r"E:\llvm\build\bin\llc.exe")
    parser.add_argument("--llvm-size", default=r"E:\llvm\build\bin\llvm-size.exe")
    parser.add_argument("--runtime-correctness", action="store_true",
                        help="Per-action compile+run+diff gate (slower but safer).")
    args = parser.parse_args()

    # Auto-derive output directory from pass-set and manifest name
    if args.out_dir is None:
        manifest_stem = Path(args.manifest).stem if args.manifest else "direct"
        args.out_dir = f"results/{args.pass_set}_{manifest_stem}"
        if args.benchmark:
            args.out_dir += f"_{args.benchmark}"

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

    choosers = ["oracle", "random"]
    # Real LLVM baselines (industry reference)
    real_baselines = ["O0", "O1", "O2", "O3", "Oz"]
    # Same-set controls (isolate ordering contribution)
    same_set_controls = ["fixed", "randB"]  # fixed = canonical order; randB = budget-aligned random
    all_methods = real_baselines + choosers + same_set_controls

    total_tasks = len(benchmarks) * (len(choosers) + len(real_baselines) + len(same_set_controls))
    print(f"Benchmarks: {len(benchmarks)} × ({len(choosers)} choosers + "
          f"{len(real_baselines)} baselines + {len(same_set_controls)} controls)"
          f" = ~{total_tasks} runs")
    if args.correctness:
        print(f"CORRECTNESS VALIDATION: ENABLED (compile + execute + output diff vs O0)")
    print(f"Parallel workers: {args.parallel}")
    print()

    all_rows = []
    if args.parallel > 1:
        with ProcessPoolExecutor(max_workers=args.parallel) as executor:
            futures = {}
            for i, bench in enumerate(benchmarks, 1):
                f = executor.submit(process_benchmark, bench, i, len(benchmarks),
                                    passes, args, choosers, real_baselines)
                futures[f] = bench["name"]
            for f in as_completed(futures):
                name = futures[f]
                try:
                    row, _ = f.result()
                    all_rows.append(row)
                except Exception as e:
                    print(f"  [{name}]: EXCEPTION: {e}")
                    all_rows.append({"benchmark": name})
    else:
        for i, bench in enumerate(benchmarks, 1):
            row, _ = process_benchmark(bench, i, len(benchmarks),
                                       passes, args, choosers, real_baselines)
            all_rows.append(row)

    all_rows.sort(key=lambda r: r.get("benchmark", ""))

    # ── Report: Table ───────────────────────────────────────────────────────
    print("\n" + "=" * 120)
    print("COMPARISON TABLE (score = instruction-count ratio vs O0; <100 = fewer instr)")
    print("=" * 120)
    # Header
    header = f"{'Benchmark':26s}"
    for bl in real_baselines:
        header += f" {bl:>6s}"
    header += f" {'fixed':>6s}"  # PRIMARY control
    for ch in choosers:
        header += f" {ch:>8s}"
    header += f" {'randB':>7s}"
    print(header)
    print("-" * 120)
    for row in all_rows:
        line = f"{row['benchmark']:26s}"
        for bl in real_baselines:
            val = row.get(f"{bl}_score", "?")
            line += f" {str(val):>6s}"
        val = row.get("fixed_score", "?")
        line += f" {str(val):>6s}"
        for ch in choosers:
            val = row.get(f"{ch}_score", "?")
            line += f" {str(val):>8s}"
        val = row.get("randB_score", "?")
        line += f" {str(val):>7s}"
        print(line)

    # ── Report: PRIMARY metric — MeanReduction over fixed_order ──────────────
    print(f"\n{'─' * 120}")
    print("PRIMARY: MeanReduction over Fixed-Order (same 27 passes; isolates ordering contribution)")
    print(f"{'Method':12s} {'MeanRed%':>9s} {'Median%':>9s} {'GeoMean%':>9s} "
          f"{'WinRate':>8s} {'n':>5s}")
    print("-" * 60)
    for method in choosers + ["randB"]:
        pairs = []
        for row in all_rows:
            fi = row.get("fixed_inst")
            mi = row.get(f"{method}_inst")
            if isinstance(fi, (int, float)) and fi > 0 and isinstance(mi, (int, float)) and mi > 0:
                pairs.append((fi, mi))
        if pairs:
            reductions = [reduction_pct(b, m) for b, m in pairs]
            mean_red = round(statistics.mean(reductions), 2)
            median_red = round(statistics.median(reductions), 2)
            # Geometric mean of ratios: exp(mean(log(method/baseline)))
            log_ratios = [math.log(m / b) for b, m in pairs]
            geo_red = round(100 * (1 - math.exp(statistics.mean(log_ratios))), 2)
            win_rate = round(sum(1 for r in reductions if r > 0) / len(reductions), 3)
            print(f"  {method:10s} {mean_red:>+9.2f}% {median_red:>+9.2f}% "
                  f"{geo_red:>+9.2f}% {win_rate:>7.1%} {len(pairs):>5d}")

    # ── Report: Secondary — MeanOverOz (CGO'25 reference) ───────────────────
    print(f"\n{'─' * 120}")
    print("SECONDARY: MeanOverOz vs REAL Oz (IR instruction-count reduction; higher = better)")
    print(f"{'Method':12s} {'MeanOverOz':>10s} {'n':>5s}  | note: our pass set is a SUBSET of Oz pipeline")
    print("-" * 70)
    for method in choosers + ["fixed", "randB"] + [b for b in real_baselines if b != "Oz"]:
        pairs = []
        for row in all_rows:
            oz = row.get("Oz_inst")
            mi = row.get(f"{method}_inst")
            if isinstance(oz, (int, float)) and oz > 0 and isinstance(mi, (int, float)) and mi > 0:
                pairs.append((oz, mi))
        moz = mean_over_oz(pairs)
        if moz is not None:
            print(f"  {method:10s} {moz:>+10.2f}% {len(pairs):>5d}")

    # ── Report: Wins vs fixed_order (the true claim) ────────────────────────
    print(f"\n{'─' * 120}")
    print("WINS vs Fixed-Order (chooser score < fixed_score)")
    for method in choosers + ["randB"]:
        wins, total, ties = 0, 0, 0
        for row in all_rows:
            fi = row.get("fixed_score")
            ms = row.get(f"{method}_score")
            if isinstance(fi, (int, float)) and isinstance(ms, (int, float)) and fi > 0 and ms > 0:
                total += 1
                if ms < fi:
                    wins += 1
                elif ms == fi:
                    ties += 1
        if total:
            print(f"  {method:10s}: {wins}/{total} wins ({wins/total*100:.0f}%), "
                  f"{ties} ties")

    # ── Report: Correctness ─────────────────────────────────────────────────
    if args.correctness:
        print(f"\n{'─' * 120}")
        print("CORRECTNESS VALIDATION (compile + execute + output diff vs O0)")
        for method in ["fixed"] + choosers:
            col = f"{method}_correct"
            passed = sum(1 for row in all_rows if row.get(col) == "True")
            total = sum(1 for row in all_rows if row.get(col) not in (None, "N/A"))
            if total:
                print(f"  {method:10s}: {passed}/{total} passed")
        # List any failures
        for row in all_rows:
            for method in ["fixed"] + choosers:
                col = f"{method}_correct"
                if row.get(col) not in (None, "True", "N/A"):
                    print(f"  !! {row['benchmark']} {method}: {row.get(col)}")

    # ── Report: Best method per benchmark ───────────────────────────────────
    print(f"\n{'─' * 120}")
    print("BEST METHOD PER BENCHMARK")
    for row in all_rows:
        best_score = float("inf")
        best_method = "?"
        for method in all_methods:
            v = row.get(f"{method}_score")
            if isinstance(v, (int, float)) and v > 0 and v < best_score:
                best_score = v
                best_method = method
        print(f"  {row['benchmark']:26s} -> {best_method}")

    # ── Save CSV ────────────────────────────────────────────────────────────
    csv_path = Path(args.out_dir) / "comparison_table.csv"
    csv_path.parent.mkdir(parents=True, exist_ok=True)
    fields = ["benchmark"]
    for bl in real_baselines:
        fields += [f"{bl}_score", f"{bl}_inst"]
    fields += ["fixed_score", "fixed_inst", "fixed_correct"]
    for ch in choosers:
        fields += [f"{ch}_score", f"{ch}_inst", f"{ch}_rounds", f"{ch}_correct"]
    fields += ["randB_score", "randB_inst", "randB_rounds"]
    fields += ["oracle_budget"]
    with csv_path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields, extrasaction="ignore")
        writer.writeheader()
        for row in all_rows:
            writer.writerow(row)
    print(f"\nSaved to {csv_path}")

    # ── Cleanup: delete intermediate directories, keep only ──────────────
    # comparison_table.csv + cmp_oracle_O2/*/schedule_trace.csv
    import shutil
    for sub in ["cmp_random_O2",
                "cmp_random_budget_O2", "fixed_order", "ir_cache"]:
        p = Path(args.out_dir) / sub
        if p.exists():
            shutil.rmtree(p, ignore_errors=True)
            print(f"Cleaned up {p}")
    # Clean up .ll files and round dirs inside cmp_oracle_O2
    # (iterative_scheduler already does this, but belt-and-suspenders)
    oracle_dir = Path(args.out_dir) / "cmp_oracle_O2"
    if oracle_dir.exists():
        for bench_dir in oracle_dir.glob("*"):
            if bench_dir.is_dir():
                for ll_file in bench_dir.glob("*.ll"):
                    try: ll_file.unlink()
                    except Exception: pass
                for round_d in bench_dir.glob("round_*"):
                    if round_d.is_dir():
                        try: shutil.rmtree(round_d, ignore_errors=True)
                        except Exception: pass


if __name__ == "__main__":
    main()
