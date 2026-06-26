"""
Black-box commutativity testing for LLVM pass pairs.

Key improvements over v2:
- Standard pair commutativity test (A->B vs B->A)
- Batch commutativity spot-check: verify k safe passes commute as a group
- Three-order interaction probing for pairwise-independent triples
"""

import argparse
import csv
import json
import random
import re
import subprocess
from itertools import combinations
from pathlib import Path

from pass_pipeline import pipeline_names


CSV_FIELDS = ["pass_a", "pass_b", "commute", "ab_path", "ba_path", "details"]


# --- Core commutativity test ---

def generate_pass_pairs(passes):
    return list(combinations(passes, 2))


def run_opt_pipeline(opt_path, input_ir, passes, output_ir):
    """Run a multi-pass pipeline: opt -passes=function(A,B,C) input.ll -o output.ll"""
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    # Wrap in function() to handle mixed FunctionPass/LoopPass correctly
    pipeline_str = f"function({','.join(pipeline_names(passes))})"
    cmd = [
        str(opt_path), "-S",
        f"-passes={pipeline_str}",
        str(input_ir), "-o", str(output_path),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            f"opt failed for pipeline {','.join(passes)}: {result.stderr.strip()}"
        )
    return output_path


def compare_ir(llvm_diff_path, left_ir, right_ir):
    """Run llvm-diff to compare two IR files."""
    return subprocess.run(
        [str(llvm_diff_path), str(left_ir), str(right_ir)],
        text=True, capture_output=True, check=False,
    )


def build_pair_result(pass_a, pass_b, diff_rc, diff_out, diff_err, ab_path, ba_path):
    """Build a single pair commutativity result."""
    identical_text = diff_rc != 0 and _ir_text_equal(ab_path, ba_path)
    if identical_text:
        details = (
            "identical IR text; ignored non-zero llvm-diff exit. "
            f"llvm-diff: {diff_out.strip()} {diff_err.strip()}"
        ).strip()
    else:
        details = "\n".join(x.strip() for x in [diff_out, diff_err] if x.strip())
    return {
        "pass_a": pass_a,
        "pass_b": pass_b,
        "commute": diff_rc == 0 or identical_text,
        "ab_path": str(ab_path),
        "ba_path": str(ba_path),
        "details": details,
    }


def run_pair_test(opt_path, llvm_diff_path, input_ir, pass_a, pass_b, work_dir):
    """Test commutativity of a single pass pair."""
    work_path = Path(work_dir)
    work_path.mkdir(parents=True, exist_ok=True)
    sa, sb = _safe_name(pass_a), _safe_name(pass_b)
    ab_path = work_path / f"{sa}__then__{sb}.ll"
    ba_path = work_path / f"{sb}__then__{sa}.ll"
    run_opt_pipeline(opt_path, input_ir, [pass_a, pass_b], ab_path)
    run_opt_pipeline(opt_path, input_ir, [pass_b, pass_a], ba_path)
    diff = compare_ir(llvm_diff_path, ab_path, ba_path)
    return build_pair_result(pass_a, pass_b, diff.returncode,
                             diff.stdout, diff.stderr, ab_path, ba_path)


def run_commutativity_tests(opt_path, llvm_diff_path, input_ir, passes, work_dir):
    """Run commutativity tests for all pass pairs."""
    return [
        run_pair_test(opt_path, llvm_diff_path, input_ir, a, b, work_dir)
        for a, b in generate_pass_pairs(passes)
    ]


# --- Batch commutativity spot-check (NEW in v3) ---

def run_batch_commutativity_spot_check(
    opt_path, llvm_diff_path, input_ir, safe_passes, work_dir, num_permutations=3
):
    """Verify that a batch of 'safe' passes truly commute when reordered.

    Runs the batch in multiple random orders and checks that all produce
    the same IR. If they don't, the batch is NOT safe for bulk execution.

    Returns: dict with 'commute' (bool), 'details', and 'permutation_results'.
    """
    if len(safe_passes) <= 1:
        return {"commute": True, "details": "single pass, trivial", "permutation_results": []}

    work_path = Path(work_dir) / "batch_spot_check"
    work_path.mkdir(parents=True, exist_ok=True)
    passes = list(safe_passes)
    results = []
    reference_hash = None

    for i in range(min(num_permutations, _factorial_bound(len(passes)))):
        order = list(passes)
        random.shuffle(order)
        label = "-".join(_safe_name(p)[:8] for p in order)
        out_path = work_path / f"batch_{i}_{label}.ll"
        run_opt_pipeline(opt_path, input_ir, order, out_path)
        h = _file_sha256(out_path)

        if reference_hash is None:
            reference_hash = h
            results.append({"order": order, "hash": h, "matches_reference": True})
        else:
            match = h == reference_hash
            results.append({"order": order, "hash": h, "matches_reference": match})
            if not match:
                return {
                    "commute": False,
                    "details": f"Batch of {len(passes)} safe passes does NOT commute. "
                               f"Permutation {i} ({label}) diverges.",
                    "permutation_results": results,
                }

    return {
        "commute": True,
        "details": f"Batch of {len(passes)} safe passes commutes across "
                   f"{len(results)} random permutations.",
        "permutation_results": results,
    }


# --- Three-order interaction probing (NEW in v3) ---

def run_third_order_probe(
    opt_path, llvm_diff_path, input_ir, pairwise_independent_triples, work_dir
):
    """Probe three-order interactions for triples where all pairs are independent.

    Only tests A->B->C vs C->B->A (the most extreme reordering).
    """
    work_path = Path(work_dir) / "third_order_probe"
    work_path.mkdir(parents=True, exist_ok=True)

    results = []
    for a, b, c in pairwise_independent_triples:
        sa, sb, sc = _safe_name(a), _safe_name(b), _safe_name(c)
        abc_path = work_path / f"{sa}_{sb}_{sc}_abc.ll"
        cba_path = work_path / f"{sc}_{sb}_{sa}_cba.ll"
        run_opt_pipeline(opt_path, input_ir, [a, b, c], abc_path)
        run_opt_pipeline(opt_path, input_ir, [c, b, a], cba_path)
        diff = compare_ir(llvm_diff_path, abc_path, cba_path)
        commute = diff.returncode == 0 or _ir_text_equal(abc_path, cba_path)
        results.append({
            "triple": [a, b, c],
            "commute": commute,
            "details": (
                diff.stdout.strip() + " " + diff.stderr.strip()
            ).strip() if not commute else "",
        })
    return results


# --- Utilities ---

def _ir_text_equal(left, right):
    try:
        return Path(left).read_text(encoding="utf-8") == Path(right).read_text(encoding="utf-8")
    except OSError:
        return False


def _file_sha256(path):
    import hashlib
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def _safe_name(value):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value)


def _factorial_bound(n):
    """Estimate number of permutations, capped at 120."""
    import math
    return min(math.factorial(n), 120)


# --- Filtering ---

def filter_active_passes(passes, footprints):
    return [p for p in passes if footprints.get(p, {}).get("writes")]


# --- Summaries & Output ---

def summarize(results):
    total = len(results)
    commuting = sum(1 for r in results if r["commute"])
    return {
        "total_pairs": total,
        "commuting_pairs": commuting,
        "non_commuting_pairs": total - commuting,
    }


def write_outputs(results, out_json, out_csv):
    jp = Path(out_json)
    cp = Path(out_csv)
    jp.parent.mkdir(parents=True, exist_ok=True)
    cp.parent.mkdir(parents=True, exist_ok=True)

    jp.write_text(
        json.dumps({"summary": summarize(results), "pairs": results},
                   ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    with cp.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for r in results:
            row = dict(r)
            row["commute"] = "true" if r["commute"] else "false"
            writer.writerow(row)


def parse_passes(value):
    return [p.strip() for p in value.split(",") if p.strip()]


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Black-box commutativity tests for LLVM pass pairs."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument("--passes", required=True, help="Comma-separated pass names.")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--work-dir", default="results/commutativity")
    parser.add_argument("--out-json", default="results/commutativity_results.json")
    parser.add_argument("--out-csv", default="results/commutativity_results.csv")
    return parser.parse_args()


def main():
    args = parse_args()
    passes = parse_passes(args.passes)
    results = run_commutativity_tests(
        args.opt, args.llvm_diff, args.input_ir, passes, args.work_dir,
    )
    write_outputs(results, args.out_json, args.out_csv)
    s = summarize(results)
    print(
        f"Tested {s['total_pairs']} pairs: "
        f"{s['commuting_pairs']} commuting, "
        f"{s['non_commuting_pairs']} non-commuting."
    )


if __name__ == "__main__":
    main()
