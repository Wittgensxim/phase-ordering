"""
Exact-optimum experiment: the reframed main result.

Instead of claiming a greedy oracle "upper bound" (which is really a local optimum,
and whose old truncation bug invalidated even that claim), this script computes the
GLOBAL optimum over the residual search space defined by Mazurkiewicz trace theory:

  Stage A : beneficial ∪ enabling pass set B  (per function, on the O0 IR)
  Stage B : black-box commutativity among B   (llvm-diff)  -> independent pairs
  Residual: one representative ordering per trace-equivalence class of B
            (commuting passes collapse; mandatory orders enforced)

For every benchmark whose residual is enumerable (|B| <= trace_cap and
#trace-classes <= enum_cap):
  - evaluate EACH trace-class representative -> the minimum IR instruction count is
    the provable global optimum over single-application orderings of B.
This finally gives GROUND TRUTH, against which we measure how close cheap
heuristics get:
  - greedy   : append the next pass that most reduces cost (local, no lookahead)
  - random_k : best of k random legal orderings

Outputs:
  <out>/per_benchmark.csv     one row per benchmark
  <out>/per_benchmark.jsonl   full detail (sequences, all baselines)
  <out>/summary.json          aggregate MeanOverOz + heuristic-vs-exact gap

── IMPORTANT CAVEATS ─────────────────────────────────────────────────────────

1. TRACE-CAP BIAS: --trace-cap (default 8) caps |B| for exact enumeration.
   Benchmarks with |B| > trace_cap are NOT enumerated — "exact" results are
   only ground truth on the ENUMERATED SUBSET.  summary.json reports
   "benchmarks_enumerated_exact" to distinguish this.  For paper claims,
   only use benchmarks where enumerated=True as ground truth.

2. NEGATIVE MeanOverOz IS EXPECTED: exact_opt_instr > Oz_instr means the
   optimum over our 27-pass single-application set has MORE instructions
   than Oz (which uses ~hundreds of passes with repetition).  This is NOT
   a failure — our contribution is "ordering optimization within a fixed
   pass set + search-space collapse via independence analysis", NOT
   "absolute codesize SOTA".  The PRIMARY metric should be relative to
   the same-set fixed-order baseline (see compare_all.py).

3. Budget alignment: random_k (default 30) may differ from oracle's opt
   call budget.  For fair comparison, compare_all.py provides a
   budget-aligned "randB" baseline.

Usage:
  python scripts/exact_optimum.py --limit 3                 # smoke
  python scripts/exact_optimum.py --parallel 8              # full 115
"""

import argparse
import csv
import json
import random
import shutil
import traceback
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

from baseline_pipelines import run_real_pipeline
from commutativity_test import run_opt_pipeline
from ir_metrics import measure_ir_file, reduction_pct, mean_over_oz, make_measure_fn, get_metric_value
from pass_pipeline import load_pass_set, validate_mandatory_order
from run_benchmark_suite import compile_to_ir, load_manifest
from measure_beneficial_independence import (
    stage_a_beneficial,
    stage_a_enabling,
    stage_b_independence,
    canonical_order,
    enumerate_trace_representatives,
    _safe,
)

BASELINE_LEVELS = ["Oz", "O2", "O3"]


# --- running a pass sequence -------------------------------------------------

def run_and_measure(opt_path, original_ir, seq, out_path, measure_fn=None):
    """Run pass sequence `seq` on original_ir; return (metric_val, ir_cost) or None."""
    if measure_fn is None:
        measure_fn = measure_ir_file
    if not seq:
        m = measure_fn(original_ir)
        return m.get("score", m.get("instruction_count", 0)), m.get("ir_cost", 0)
    try:
        run_opt_pipeline(opt_path, original_ir, seq, out_path)
        m = measure_fn(out_path)
        return m.get("score", m.get("instruction_count", 0)), m.get("ir_cost", 0)
    except Exception:
        return None


def _key(res, metric_mode="ir"):
    """Optimization objective: lower metric first, then lower ir_cost."""
    if metric_mode == "codesize":
        return (res[0], res[1])  # score already = codesize_text
    return (res[0], res[1])


# --- mandatory-order helpers -------------------------------------------------

def _must_precede(r, p, mandatory):
    """True if pass r must run before pass p (so p cannot be placed while r is unplaced)."""
    ok, _ = validate_mandatory_order(p, r, mandatory)  # p-then-r forbidden => r before p
    return not ok


def _appendable(p, remaining, mandatory):
    """A pass p may be appended next iff no other still-unplaced pass must precede it."""
    return not any(_must_precede(r, p, mandatory) for r in remaining if r != p)


# --- heuristics (self-contained, for gap-to-truth) --------------------------

def greedy_order(opt_path, original_ir, b_set, mandatory, work_dir,
                 measure_fn=None, metric_mode="ir"):
    """Greedy: repeatedly append the legal pass that yields the lowest cost so far."""
    remaining = list(b_set)
    seq = []
    while remaining:
        best_p, best_res = None, None
        for p in remaining:
            if not _appendable(p, remaining, mandatory):
                continue
            trial = seq + [p]
            out = Path(work_dir) / "greedy" / f"{'_'.join(_safe(x) for x in trial)[:60]}.ll"
            res = run_and_measure(opt_path, original_ir, trial, out, measure_fn=measure_fn)
            if res is None:
                continue
            if best_res is None or _key(res, metric_mode) < _key(best_res, metric_mode):
                best_res, best_p = res, p
        if best_p is None:
            break
        seq.append(best_p)
        remaining.remove(best_p)
    out = Path(work_dir) / "greedy" / "final.ll"
    res = run_and_measure(opt_path, original_ir, seq, out, measure_fn=measure_fn)
    return seq, res


def random_best_order(opt_path, original_ir, b_set, mandatory, work_dir, k, rng,
                      measure_fn=None, metric_mode="ir"):
    """Best of k random legal orderings of b_set."""
    best_seq, best_res = None, None
    tried = 0
    attempts = 0
    while tried < k and attempts < k * 20:
        attempts += 1
        seq = list(b_set)
        rng.shuffle(seq)
        # validate full ordering against mandatory constraints
        if any(_must_precede(seq[j], seq[i], mandatory)
               for i in range(len(seq)) for j in range(i + 1, len(seq))):
            continue
        tried += 1
        out = Path(work_dir) / "random" / f"r{tried}.ll"
        res = run_and_measure(opt_path, original_ir, seq, out, measure_fn=measure_fn)
        if res is None:
            continue
        if best_res is None or _key(res, metric_mode) < _key(best_res, metric_mode):
            best_res, best_seq = res, list(seq)
    return best_seq, best_res


# --- per-benchmark driver ----------------------------------------------------

def measure_one(bench, passes, mandatory, opt_path, clang_path, diff_path,
                work_root, min_gain, trace_cap, enum_cap, random_k, seed,
                measure_fn=None, metric_mode="ir"):
    name = bench["name"]
    work_dir = Path(work_root) / name
    work_dir.mkdir(parents=True, exist_ok=True)

    if bench.get("ir"):
        original_ir = Path(bench["ir"])
    else:
        original_ir = compile_to_ir(clang_path, bench["source"], work_dir / "original.ll")

    orig = measure_fn(original_ir) if measure_fn else measure_ir_file(original_ir)
    o0_instr = orig.get("instruction_count", get_metric_value(orig, metric_mode))

    # Real baselines (same O0 IR)
    baseline_instr = {}
    for lvl in BASELINE_LEVELS:
        try:
            out = run_real_pipeline(opt_path, original_ir, lvl, work_dir / f"bl_{lvl}.ll")
            m = measure_fn(out) if measure_fn else measure_ir_file(out)
            baseline_instr[lvl] = get_metric_value(m, metric_mode) if measure_fn else m["instruction_count"]
        except Exception:
            baseline_instr[lvl] = None
    oz = baseline_instr.get("Oz")

    # Stage A (beneficial ∪ enabling)
    _, beneficial = stage_a_beneficial(opt_path, original_ir, orig["ir_cost"],
                                       passes, work_dir, min_gain,
                                       measure_fn=measure_fn)
    enabling, _ = stage_a_enabling(opt_path, original_ir, beneficial, passes,
                                   orig["ir_cost"], work_dir, min_gain,
                                   measure_fn=measure_fn)
    b_set = canonical_order(list(beneficial) + list(enabling), passes)

    # Stage B (independence among B)
    _, independent, order_sensitive = stage_b_independence(
        opt_path, diff_path, original_ir, b_set, work_dir, mandatory
    )

    # Residual: trace-class representatives
    reps = enumerate_trace_representatives(b_set, independent, trace_cap, mandatory)
    enumerated = reps is not None and (len(reps) <= enum_cap)

    exact_seq, exact_res = None, None
    reps_evaluated = 0
    if enumerated:
        for i, seq in enumerate(reps):
            out = work_dir / "exact" / f"rep_{i}.ll"
            res = run_and_measure(opt_path, original_ir, seq, out, measure_fn=measure_fn)
            if res is None:
                continue
            reps_evaluated += 1
            if exact_res is None or _key(res, metric_mode) < _key(exact_res, metric_mode):
                exact_res, exact_seq = res, seq

    # Heuristics
    rng = random.Random(f"{seed}:{name}")
    greedy_seq, greedy_res = greedy_order(opt_path, original_ir, b_set, mandatory, work_dir,
                                          measure_fn=measure_fn, metric_mode=metric_mode)
    rand_seq, rand_res = random_best_order(opt_path, original_ir, b_set, mandatory,
                                           work_dir, random_k, rng,
                                           measure_fn=measure_fn, metric_mode=metric_mode)

    def instr(res):
        return res[0] if res else None

    exact_instr = instr(exact_res)
    greedy_instr = instr(greedy_res)
    rand_instr = instr(rand_res)

    row = {
        "benchmark": name,
        "o0_instr": o0_instr,
        "oz_instr": oz,
        "o2_instr": baseline_instr.get("O2"),
        "o3_instr": baseline_instr.get("O3"),
        "beneficial_size": len(b_set),
        "independent_pairs": len(independent),
        "order_sensitive_pairs": len(order_sensitive),
        "trace_classes": (len(reps) if reps is not None else None),
        "enumerated": enumerated,
        "reps_evaluated": reps_evaluated,
        "exact_opt_instr": exact_instr,
        "greedy_instr": greedy_instr,
        "random_instr": rand_instr,
        # MeanOverOz per-program terms (positive = fewer instr than Oz)
        "exact_moz": reduction_pct(oz, exact_instr) if (oz and exact_instr is not None) else None,
        "greedy_moz": reduction_pct(oz, greedy_instr) if (oz and greedy_instr is not None) else None,
        "random_moz": reduction_pct(oz, rand_instr) if (oz and rand_instr is not None) else None,
        "o2_moz": reduction_pct(oz, baseline_instr.get("O2")) if (oz and baseline_instr.get("O2") is not None) else None,
        "o3_moz": reduction_pct(oz, baseline_instr.get("O3")) if (oz and baseline_instr.get("O3") is not None) else None,
        # Heuristic gap to the true optimum (instr above exact; 0 = matched optimum)
        "greedy_gap": (greedy_instr - exact_instr) if (enumerated and exact_instr is not None and greedy_instr is not None) else None,
        "random_gap": (rand_instr - exact_instr) if (enumerated and exact_instr is not None and rand_instr is not None) else None,
        "beneficial_list": ",".join(b_set),
        "exact_seq": ",".join(exact_seq) if exact_seq else "",
    }
    detail = {**row, "greedy_seq": ",".join(greedy_seq or []),
              "random_seq": ",".join(rand_seq or [])}
    return row, detail


def _worker(args_tuple):
    try:
        return measure_one(*args_tuple)
    except Exception as exc:
        bench = args_tuple[0]
        return ({"benchmark": bench["name"], "error": str(exc)[:300]},
                {"benchmark": bench["name"], "error": str(exc)[:300],
                 "traceback": traceback.format_exc()})


# --- aggregation -------------------------------------------------------------

def aggregate(rows):
    ok = [r for r in rows if "error" not in r]
    enum = [r for r in ok if r.get("enumerated")]

    def moz(key, src=ok):
        vals = [r[key] for r in src if r.get(key) is not None]
        return round(sum(vals) / len(vals), 3) if vals else None

    # heuristic match rate: how often greedy / random hit the exact optimum
    def match_rate(gapkey):
        gaps = [r[gapkey] for r in enum if r.get(gapkey) is not None]
        if not gaps:
            return None
        return round(sum(1 for g in gaps if g <= 0) / len(gaps), 3)

    return {
        "benchmarks_ok": len(ok),
        "benchmarks_failed": len(rows) - len(ok),
        "benchmarks_enumerated_exact": len(enum),
        "mean_over_oz": {
            "exact": moz("exact_moz", enum),
            "greedy": moz("greedy_moz"),
            "random": moz("random_moz"),
            "o2": moz("o2_moz"),
            "o3": moz("o3_moz"),
        },
        "heuristic_matches_exact_rate": {
            "greedy": match_rate("greedy_gap"),
            "random": match_rate("random_gap"),
        },
        "note": (
            "mean_over_oz.exact is averaged over the enumerated subset only (true global "
            "optimum exists there). greedy/random/o2/o3 are over all ok benchmarks. "
            "heuristic_matches_exact_rate = fraction of enumerated benchmarks where the "
            "heuristic reached the proven optimum."
        ),
    }


ROW_FIELDS = [
    "benchmark", "o0_instr", "oz_instr", "o2_instr", "o3_instr",
    "beneficial_size", "independent_pairs", "order_sensitive_pairs",
    "trace_classes", "enumerated", "reps_evaluated",
    "exact_opt_instr", "greedy_instr", "random_instr",
    "exact_moz", "greedy_moz", "random_moz", "o2_moz", "o3_moz",
    "greedy_gap", "random_gap", "beneficial_list", "exact_seq", "error",
]


def write_outputs(rows, details, out_dir):
    out = Path(out_dir)
    out.mkdir(parents=True, exist_ok=True)
    with (out / "per_benchmark.csv").open("w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=ROW_FIELDS, extrasaction="ignore")
        w.writeheader()
        for r in rows:
            w.writerow(r)
    with (out / "per_benchmark.jsonl").open("w", encoding="utf-8") as f:
        for d in details:
            f.write(json.dumps(d, ensure_ascii=False) + "\n")
    summary = aggregate(rows)
    (out / "summary.json").write_text(
        json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return summary


# --- CLI ---------------------------------------------------------------------

def parse_args():
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--manifest", default="configs/benchmarks_curated.json")
    p.add_argument("--pass-set-config", default="configs/pass_sets.json")
    p.add_argument("--pass-set", default="research_27")
    p.add_argument("--out-dir", default="results/exact_optimum")
    p.add_argument("--work-dir", default="results/exact_optimum/_work")
    p.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    p.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    p.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    p.add_argument("--min-gain", type=float, default=0.0)
    p.add_argument("--trace-cap", type=int, default=8,
                   help="max |B| for which to enumerate trace classes (|B|! perms)")
    p.add_argument("--enum-cap", type=int, default=4000,
                   help="max #trace-classes to evaluate exactly (cost bound)")
    p.add_argument("--random-k", type=int, default=30,
                   help="number of random legal orderings to sample")
    p.add_argument("--seed", default="po-v3")
    p.add_argument("--parallel", type=int, default=1)
    p.add_argument("--limit", type=int, default=0)
    p.add_argument("--keep-work", action="store_true")
    p.add_argument("--metric", default="ir", choices=["ir", "codesize"],
                   help="Optimization metric (default: ir)")
    p.add_argument("--llc", default=r"E:\llvm\build\bin\llc.exe")
    p.add_argument("--llvm-size", default=r"E:\llvm\build\bin\llvm-size.exe")
    return p.parse_args()


def main():
    args = parse_args()
    passes, mandatory = load_pass_set(args.pass_set_config, args.pass_set)
    benchmarks = load_manifest(args.manifest)
    if args.limit:
        benchmarks = benchmarks[:args.limit]

    # Build codesize-aware measure function when requested
    measure_fn = None
    if args.metric == "codesize":
        measure_fn = make_measure_fn(
            metric_mode="codesize",
            llc_path=args.llc,
            llvm_size_path=args.llvm_size,
        )

    print(f"Pass set '{args.pass_set}': {len(passes)} passes | benchmarks={len(benchmarks)} "
          f"| trace_cap={args.trace_cap} enum_cap={args.enum_cap} random_k={args.random_k} "
          f"| metric={args.metric}")

    tasks = [
        (b, passes, mandatory, args.opt, args.clang, args.llvm_diff,
         args.work_dir, args.min_gain, args.trace_cap, args.enum_cap,
         args.random_k, args.seed, measure_fn, args.metric)
        for b in benchmarks
    ]

    rows, details, done = [], [], 0
    if args.parallel > 1:
        with ProcessPoolExecutor(max_workers=args.parallel) as ex:
            futures = {ex.submit(_worker, t): t[0]["name"] for t in tasks}
            for fut in as_completed(futures):
                row, detail = fut.result()
                rows.append(row); details.append(detail); done += 1
                _progress(row, done, len(tasks))
    else:
        for t in tasks:
            row, detail = _worker(t)
            rows.append(row); details.append(detail); done += 1
            _progress(row, done, len(tasks))

    rows.sort(key=lambda r: r["benchmark"])
    details.sort(key=lambda d: d["benchmark"])
    summary = write_outputs(rows, details, args.out_dir)

    if not args.keep_work:
        shutil.rmtree(args.work_dir, ignore_errors=True)

    print("\n=== SUMMARY ===")
    print(json.dumps(summary, ensure_ascii=False, indent=2))
    print(f"\nWrote {args.out_dir}/per_benchmark.csv, per_benchmark.jsonl, summary.json")


def _progress(row, done, total):
    if "error" in row:
        print(f"[{done}/{total}] {row['benchmark']}: ERROR {row['error'][:80]}")
    else:
        print(f"[{done}/{total}] {row['benchmark']}: |B|={row['beneficial_size']} "
              f"classes={row['trace_classes']} enum={row['enumerated']} "
              f"exact_moz={row['exact_moz']} greedy_moz={row['greedy_moz']} "
              f"o2_moz={row['o2_moz']}")


if __name__ == "__main__":
    main()
