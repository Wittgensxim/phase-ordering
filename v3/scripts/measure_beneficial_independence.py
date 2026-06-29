"""
Measure the advisor-framed two-stage reduction on real benchmarks.

This is a MEASUREMENT-ONLY script (no scheduling, no oracle). For each benchmark
it runs, on the original O0 IR:

  Stage A — beneficial-pass filtering (advisor step 1: "which passes likely help"):
    Run each pass ALONE, measure ir_cost before/after.
      directly_beneficial : cost strictly decreases (delta_cost > min_gain)
      active_only         : IR changes but cost does not decrease
      no_op               : IR unchanged
    B = directly_beneficial set.   (enabling passes are a separate follow-up)

  Stage B — independence among B (advisor step 2: "independence relation"):
    For each pair in C(|B|,2), run black-box commutativity (A->B vs B->A, llvm-diff).
      commute       -> independent     (order does NOT matter -> no phase ordering)
      not commute   -> order_sensitive (the ONLY pairs needing a decision)

  Reduction metrics (advisor step 3: "independent passes need no ordering"):
    - |B| vs full pass set
    - order_sensitive_count among B   <-- the headline: is Stage C small?
    - independence_ratio = independent / C(|B|,2)
    - trace_classes: number of Mazurkiewicz trace-equivalence classes of the |B|!
      orderings under the commutation relation = number of genuinely distinct
      result-orderings (the real residual search space). Computed exactly when
      |B| <= --trace-cap, else reported as null.

Outputs:
    <out>/per_benchmark.csv     one row per benchmark
    <out>/per_benchmark.jsonl   full per-pass Stage A vector + pair list (for re-analysis)
    <out>/summary.json          aggregate distribution across all benchmarks

Usage:
    python scripts/measure_beneficial_independence.py --limit 3            # smoke test
    python scripts/measure_beneficial_independence.py --parallel 8         # full 115
"""

import argparse
import csv
import itertools
import json
import math
import shutil
import sys
import traceback
from concurrent.futures import ProcessPoolExecutor, as_completed
from pathlib import Path

from commutativity_test import run_opt_pipeline, run_pair_test
from ir_metrics import measure_ir_file
from pass_pipeline import load_pass_set, filter_forbidden_directions
from run_benchmark_suite import compile_to_ir, load_manifest


# --- Stage A: beneficial-pass filtering -------------------------------------

def stage_a_beneficial(opt_path, original_ir, original_cost, passes, work_dir, min_gain,
                       measure_fn=None):
    """Run each pass alone; classify directly_beneficial / active_only / no_op.

    Args:
        measure_fn: optional callable(ir_path) -> metrics dict.
                    If None, uses measure_ir_file(). Pass a codesize-aware
                    function to drive Stage A by .text bytes instead of IR instr.

    Returns (vector, beneficial_passes) where vector is a list of per-pass dicts.
    """
    if measure_fn is None:
        measure_fn = measure_ir_file

    orig_text = Path(original_ir).read_text(encoding="utf-8")
    vector = []
    beneficial = []
    for p in passes:
        out_path = Path(work_dir) / "stageA" / f"{_safe(p)}.ll"
        entry = {"pass": p}
        try:
            run_opt_pipeline(opt_path, original_ir, [p], out_path)
            after = measure_fn(out_path)
            after_text = out_path.read_text(encoding="utf-8")
            changed = after_text != orig_text
            after_cost = after.get("ir_cost", after.get("instruction_count", 0))
            delta_cost = round(original_cost - after_cost, 2)
            entry.update({
                "ok": True,
                "changed": changed,
                "after_cost": after_cost,
                "delta_cost": delta_cost,
                "delta_instr": (
                    measure_ir_file(original_ir)["instruction_count"]
                    - measure_ir_file(out_path)["instruction_count"]
                ),
            })
            if delta_cost > min_gain:
                entry["class"] = "directly_beneficial"
                beneficial.append(p)
            elif changed:
                entry["class"] = "active_only"
            else:
                entry["class"] = "no_op"
        except Exception as exc:
            entry.update({"ok": False, "class": "error", "error": str(exc)[:200]})
        vector.append(entry)
    return vector, beneficial


# --- Stage A (cont.): enabling passes ---------------------------------------

def canonical_order(subset, full_order):
    """Order `subset` by their position in `full_order` (the pass-set list).

    The pass-set list is authored mem2reg-first with loop passes in dependency
    order, so this respects the mandatory ordering constraints by construction.
    """
    return [p for p in full_order if p in set(subset)]


def stage_a_enabling(opt_path, original_ir, beneficial, full_order, original_cost,
                     work_dir, min_gain, measure_fn=None):
    """Find passes that are NOT beneficial alone but lower cost in combination.

    A single-pass filter is myopic: canonicalizers like loop-simplify / loop-rotate
    do not reduce cost on their own, yet without them licm / loop-unroll can never
    fire. We test, for each non-beneficial pass P, whether running the beneficial
    bundle WITH P (in canonical order) reaches a strictly lower cost than the bundle
    alone. This captures both "enabling" passes and passes that only pay off in
    combination -- exactly the set Stage A should not have dropped.

    Returns (enabling_list, base_cost) where base_cost is the cost of the beneficial
    bundle run in canonical order (the reference the enabling test compares against).
    """
    if measure_fn is None:
        measure_fn = measure_ir_file

    base_passes = canonical_order(beneficial, full_order)
    if base_passes:
        try:
            base_out = Path(work_dir) / "stageA_enable" / "base_bundle.ll"
            run_opt_pipeline(opt_path, original_ir, base_passes, base_out)
            base_cost = measure_fn(base_out)["ir_cost"]
        except Exception:
            base_cost = original_cost
    else:
        base_cost = original_cost

    enabling = []
    for p in full_order:
        if p in beneficial:
            continue
        try:
            combo = canonical_order(list(beneficial) + [p], full_order)
            out_path = Path(work_dir) / "stageA_enable" / f"{_safe(p)}_combo.ll"
            run_opt_pipeline(opt_path, original_ir, combo, out_path)
            combo_cost = measure_fn(out_path)["ir_cost"]
            if combo_cost < base_cost - min_gain:
                enabling.append(p)
        except Exception:
            continue
    return enabling, base_cost




def stage_b_independence(opt_path, diff_path, original_ir, beneficial, work_dir,
                         mandatory_orders):
    """Black-box commutativity for every pair in C(|B|,2).

    Returns (pairs, independent, order_sensitive) where each is a list of
    {pass_a, pass_b, commute, mandatory_constrained} dicts / pair-tuples.
    """
    pairs = []
    independent = []
    order_sensitive = []
    for a, b in itertools.combinations(beneficial, 2):
        rec = {"pass_a": a, "pass_b": b}
        try:
            res = run_pair_test(opt_path, diff_path, original_ir, a, b,
                                Path(work_dir) / "stageB")
            commute = bool(res["commute"])
            rec["commute"] = commute
            # A pair with a hard mandatory order is inherently order-constrained,
            # even if it happens to commute on this IR. Flag it for transparency.
            constraints = filter_forbidden_directions(a, b, mandatory_orders)
            rec["mandatory_constrained"] = (
                constraints["a_to_b_forbidden"] or constraints["b_to_a_forbidden"]
            )
            if commute:
                independent.append((a, b))
            else:
                order_sensitive.append((a, b))
        except Exception as exc:
            rec.update({"commute": None, "error": str(exc)[:200]})
            # Conservative: unknown -> count as order_sensitive
            order_sensitive.append((a, b))
        pairs.append(rec)
    return pairs, independent, order_sensitive


# --- Mazurkiewicz trace-class count -----------------------------------------

def compute_trace_classes(elements, independent_pairs, cap):
    """Count distinct orderings of `elements` modulo commutation.

    Two orderings are equivalent iff one transforms into the other by swapping
    adjacent INDEPENDENT (commuting) elements. The number of equivalence classes
    is the genuine residual search space (the trace monoid size for this multiset
    where every element appears once).

    Returns the class count, or None if |elements| > cap (intractable to enumerate).
    """
    n = len(elements)
    if n <= 1:
        return 1
    if n > cap:
        return None

    idx = {e: i for i, e in enumerate(elements)}
    indep = set()
    for a, b in independent_pairs:
        if a in idx and b in idx:
            indep.add(frozenset((idx[a], idx[b])))

    perms = list(itertools.permutations(range(n)))
    pos = {p: i for i, p in enumerate(perms)}
    parent = list(range(len(perms)))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(x, y):
        rx, ry = find(x), find(y)
        if rx != ry:
            parent[rx] = ry

    for pi, p in enumerate(perms):
        for k in range(n - 1):
            if frozenset((p[k], p[k + 1])) in indep:
                q = list(p)
                q[k], q[k + 1] = q[k + 1], q[k]
                union(pi, pos[tuple(q)])

    return len({find(i) for i in range(len(perms))})


def _seq_satisfies_mandatory(seq, mandatory_orders):
    """True if element ordering `seq` violates no mandatory before/after constraint."""
    if not mandatory_orders:
        return True
    from pass_pipeline import validate_mandatory_order
    for i in range(len(seq)):
        for j in range(i + 1, len(seq)):
            ok, _ = validate_mandatory_order(seq[i], seq[j], mandatory_orders)
            if not ok:
                return False
    return True


def enumerate_trace_representatives(elements, independent_pairs, cap,
                                    mandatory_orders=None):
    """Return ONE legal ordering per Mazurkiewicz trace-equivalence class.

    This is the residual search space for exact optimization: every distinct
    result-ordering is represented exactly once, so evaluating each representative
    and taking the minimum yields the GLOBAL optimum over orderings of `elements`
    (not a greedy approximation).

    Orderings that violate `mandatory_orders` are excluded; a class with no legal
    member is dropped. Returns None if |elements| > cap (intractable to enumerate).
    """
    n = len(elements)
    if n == 0:
        return [[]]
    if n == 1:
        return [list(elements)]
    if n > cap:
        return None

    idx = {e: i for i, e in enumerate(elements)}
    indep = set()
    for a, b in independent_pairs:
        if a in idx and b in idx:
            indep.add(frozenset((idx[a], idx[b])))

    perms = list(itertools.permutations(range(n)))
    pos = {p: i for i, p in enumerate(perms)}
    parent = list(range(len(perms)))

    def find(x):
        while parent[x] != x:
            parent[x] = parent[parent[x]]
            x = parent[x]
        return x

    def union(x, y):
        rx, ry = find(x), find(y)
        if rx != ry:
            parent[rx] = ry

    for pi, p in enumerate(perms):
        for k in range(n - 1):
            if frozenset((p[k], p[k + 1])) in indep:
                q = list(p)
                q[k], q[k + 1] = q[k + 1], q[k]
                union(pi, pos[tuple(q)])

    reps = {}
    for pi, p in enumerate(perms):
        root = find(pi)
        if root in reps:
            continue
        seq = [elements[i] for i in p]
        if _seq_satisfies_mandatory(seq, mandatory_orders):
            reps[root] = seq
    return list(reps.values())


# --- Per-benchmark driver ---------------------------------------------------

def measure_one(bench, passes, mandatory_orders, opt_path, clang_path, diff_path,
                work_root, min_gain, trace_cap):
    """Full Stage A + Stage B + reduction metrics for one benchmark."""
    name = bench["name"]
    work_dir = Path(work_root) / name
    work_dir.mkdir(parents=True, exist_ok=True)

    # Resolve original O0 IR
    if bench.get("ir"):
        original_ir = Path(bench["ir"])
    else:
        original_ir = compile_to_ir(clang_path, bench["source"], work_dir / "original.ll")

    orig_metrics = measure_ir_file(original_ir)
    original_cost = orig_metrics["ir_cost"]

    # Stage A.1: directly-beneficial passes (cost decreases when run alone)
    vector, beneficial = stage_a_beneficial(
        opt_path, original_ir, original_cost, passes, work_dir, min_gain
    )

    # Stage A.2: enabling passes (only pay off in combination -- fixes Stage A myopia)
    enabling, base_cost = stage_a_enabling(
        opt_path, original_ir, beneficial, passes, original_cost, work_dir, min_gain
    )
    # Augmented beneficial set used for independence / trace analysis.
    b_set = canonical_order(list(beneficial) + list(enabling), passes)

    # Stage B (run on the augmented set)
    pairs, independent, order_sensitive = stage_b_independence(
        opt_path, diff_path, original_ir, b_set, work_dir, mandatory_orders
    )

    n_pass = len(passes)
    n_active = sum(1 for v in vector if v.get("class") == "active_only") + len(beneficial)
    b = len(b_set)
    total_b_pairs = b * (b - 1) // 2
    n_indep = len(independent)
    n_order = len(order_sensitive)
    trace_classes = compute_trace_classes(b_set, independent, trace_cap)

    row = {
        "benchmark": name,
        "orig_instr": orig_metrics["instruction_count"],
        "orig_cost": original_cost,
        "passset_size": n_pass,
        "active_passes": n_active,
        "directly_beneficial": len(beneficial),
        "enabling_passes": len(enabling),
        "beneficial_passes": b,  # augmented |B| (directly_beneficial + enabling)
        "beneficial_list": ",".join(b_set),
        "directly_beneficial_list": ",".join(beneficial),
        "enabling_list": ",".join(enabling),
        "total_beneficial_pairs": total_b_pairs,
        "independent_pairs": n_indep,
        "order_sensitive_pairs": n_order,
        "independence_ratio": round(n_indep / total_b_pairs, 4) if total_b_pairs else None,
        "full_perm_space": math.factorial(b) if b <= 12 else None,
        "trace_classes": trace_classes,
        "order_sensitive_list": ";".join(f"{a}-{c}" for a, c in order_sensitive),
    }
    detail = {**row, "stage_a_vector": vector, "stage_b_pairs": pairs}
    return row, detail


def _worker(args):
    bench, passes, mandatory_orders, opt_path, clang_path, diff_path, \
        work_root, min_gain, trace_cap = args
    try:
        return measure_one(bench, passes, mandatory_orders, opt_path, clang_path,
                           diff_path, work_root, min_gain, trace_cap)
    except Exception as exc:
        return ({"benchmark": bench["name"], "error": str(exc)[:300]},
                {"benchmark": bench["name"], "error": str(exc)[:300],
                 "traceback": traceback.format_exc()})


# --- Aggregation ------------------------------------------------------------

def _pctile(values, q):
    if not values:
        return None
    s = sorted(values)
    i = min(len(s) - 1, int(round(q * (len(s) - 1))))
    return s[i]


def aggregate(rows):
    ok = [r for r in rows if "error" not in r]
    failed = [r for r in rows if "error" in r]

    def col(key):
        return [r[key] for r in ok if r.get(key) is not None]

    benef = col("beneficial_passes")
    order = col("order_sensitive_pairs")
    ratio = col("independence_ratio")
    traces = [r["trace_classes"] for r in ok if r.get("trace_classes") is not None]

    def dist(vals):
        if not vals:
            return None
        return {
            "n": len(vals),
            "mean": round(sum(vals) / len(vals), 2),
            "median": _pctile(vals, 0.5),
            "p90": _pctile(vals, 0.9),
            "max": max(vals),
            "min": min(vals),
        }

    # The key question: for how many benchmarks is the residual small enough
    # to enumerate exhaustively?
    order_thresholds = {}
    if order:
        for k in (0, 1, 2, 3, 5, 8, 10, 15):
            order_thresholds[f"<= {k}"] = round(
                sum(1 for v in order if v <= k) / len(order), 3
            )

    return {
        "benchmarks_ok": len(ok),
        "benchmarks_failed": len(failed),
        "failed_names": [r["benchmark"] for r in failed],
        "beneficial_passes": dist(benef),
        "order_sensitive_pairs": dist(order),
        "independence_ratio": dist(ratio),
        "trace_classes": dist(traces),
        "order_sensitive_cdf": order_thresholds,
        "interpretation": (
            "order_sensitive_pairs distribution answers whether Stage C can be "
            "exhaustively enumerated. trace_classes is the true residual search "
            "space after collapsing commuting orderings."
        ),
    }


# --- Output -----------------------------------------------------------------

ROW_FIELDS = [
    "benchmark", "orig_instr", "orig_cost", "passset_size",
    "active_passes", "directly_beneficial", "enabling_passes",
    "beneficial_passes", "beneficial_list",
    "directly_beneficial_list", "enabling_list",
    "total_beneficial_pairs", "independent_pairs", "order_sensitive_pairs",
    "independence_ratio", "full_perm_space", "trace_classes",
    "order_sensitive_list", "error",
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
        json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    return summary


# --- CLI --------------------------------------------------------------------

def parse_args():
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--manifest", default="configs/benchmarks_curated.json")
    p.add_argument("--pass-set-config", default="configs/pass_sets.json")
    p.add_argument("--pass-set", default="research_27",
                   help="pass set name in pass_sets.json (default: research_27)")
    p.add_argument("--out-dir", default="results/beneficial_independence")
    p.add_argument("--work-dir", default="results/beneficial_independence/_work")
    p.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    p.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    p.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    p.add_argument("--min-gain", type=float, default=0.0,
                   help="min ir_cost decrease for a pass to count as beneficial")
    p.add_argument("--trace-cap", type=int, default=8,
                   help="max |B| for which to enumerate trace classes (|B|! perms)")
    p.add_argument("--parallel", type=int, default=1)
    p.add_argument("--limit", type=int, default=0, help="only first N benchmarks (0=all)")
    p.add_argument("--keep-work", action="store_true",
                   help="keep intermediate .ll files (default: delete to save space)")
    return p.parse_args()


def main():
    args = parse_args()
    passes, mandatory_orders = load_pass_set(args.pass_set_config, args.pass_set)
    benchmarks = load_manifest(args.manifest)
    if args.limit:
        benchmarks = benchmarks[:args.limit]

    print(f"Pass set '{args.pass_set}': {len(passes)} passes -> "
          f"C(n,2) = {len(passes)*(len(passes)-1)//2} pairs full")
    print(f"Benchmarks: {len(benchmarks)} | parallel={args.parallel} | "
          f"min_gain={args.min_gain} | trace_cap={args.trace_cap}")

    tasks = [
        (b, passes, mandatory_orders, args.opt, args.clang, args.llvm_diff,
         args.work_dir, args.min_gain, args.trace_cap)
        for b in benchmarks
    ]

    rows, details = [], []
    done = 0
    if args.parallel > 1:
        with ProcessPoolExecutor(max_workers=args.parallel) as ex:
            futures = {ex.submit(_worker, t): t[0]["name"] for t in tasks}
            for fut in as_completed(futures):
                row, detail = fut.result()
                rows.append(row)
                details.append(detail)
                done += 1
                _progress(row, done, len(tasks))
    else:
        for t in tasks:
            row, detail = _worker(t)
            rows.append(row)
            details.append(detail)
            done += 1
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
        print(f"[{done}/{total}] {row['benchmark']}: "
              f"B={row['beneficial_passes']} "
              f"order_sensitive={row['order_sensitive_pairs']} "
              f"trace_classes={row['trace_classes']}")


def _safe(name):
    import re
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", name)


if __name__ == "__main__":
    main()
