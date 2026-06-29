"""
Oracle ordered-pair chooser: when no safe pass is available, enumerates
candidate ordered pairs and selects the one that gives the best metric.

The "oracle" actually runs A->B and B->A and measures the resulting IR metric,
then picks the best direction. This is used to:
1. Generate training data for ML
2. Validate that the iterative framework has potential gains
3. Serve as the decision mechanism in the scheduler
"""

import hashlib
import json
import subprocess
from pathlib import Path

from ir_metrics import measure_ir_file, measure_ir_with_tti, compare_metrics
from pass_pipeline import pipeline_names
from scheduler_policy import decision_required_pairs


def run_oracle_ordered_pair(
    opt_path, input_ir, pass_a, pass_b, work_dir, use_tti=False, target_triple="",
    measure_fn=None,
):
    """Run A->B and B->A, measure metrics, return the winner.

    Args:
        measure_fn: optional callable(ir_path) -> metrics dict.
                    If None, uses measure_ir_file().
                    Pass a codesize-aware function to drive oracle by .text bytes.

    Returns:
        dict with winner, direction, metrics for both directions, and IR hashes.
    """
    if measure_fn is None:
        measure_fn = measure_ir_file

    work_path = Path(work_dir) / "oracle"
    work_path.mkdir(parents=True, exist_ok=True)
    input_path = Path(input_ir)

    # Run A->B
    ab_path = work_path / f"{_safe(pass_a)}__then__{_safe(pass_b)}.ll"
    ab_path = _run_pipeline(opt_path, input_path, [pass_a, pass_b], ab_path)

    # Run B->A
    ba_path = work_path / f"{_safe(pass_b)}__then__{_safe(pass_a)}.ll"
    ba_path = _run_pipeline(opt_path, input_path, [pass_b, pass_a], ba_path)

    # Measure with the provided function
    ab_metrics = measure_fn(ab_path)
    ba_metrics = measure_fn(ba_path)
    before_metrics = measure_fn(input_path)

    ab_score = ab_metrics.get("score", float("inf"))
    ba_score = ba_metrics.get("score", float("inf"))

    # Determine winner (lower score is better)
    if ab_score < ba_score:
        winner = "A->B"
        best_direction = [pass_a, pass_b]
        best_metrics = ab_metrics
        best_score = ab_score
    elif ba_score < ab_score:
        winner = "B->A"
        best_direction = [pass_b, pass_a]
        best_metrics = ba_metrics
        best_score = ba_score
    else:
        winner = "tie"
        best_direction = [pass_a, pass_b]  # default to A->B
        best_metrics = ab_metrics
        best_score = ab_score

    return {
        "pass_a": pass_a,
        "pass_b": pass_b,
        "winner": winner,
        "best_direction": best_direction,
        "ab_score": ab_score,
        "ba_score": ba_score,
        "best_score": best_score,
        "ab_metrics": ab_metrics,
        # Always report true ba_metrics — even on tie, the B->A measurement
        # is independent data that downstream analysis may need.
        "ba_metrics": ba_metrics,
        "before_metrics": before_metrics,
        "ab_ir": str(ab_path),
        "ba_ir": str(ba_path),
        "ab_hash": _sha256(ab_path),
        "ba_hash": _sha256(ba_path),
    }


def oracle_choose_best_pair(
    opt_path, input_ir, candidate_pairs, work_dir,
    max_candidates=0, use_tti=False, target_triple="",
    measure_fn=None, mandatory_orders=None,
):
    """Enumerate candidate ordered pairs and pick the one with best metric improvement.

    Args:
        candidate_pairs: list of (pass_a, pass_b) tuples
        max_candidates: cap on pairs to test. 0 (default) = test ALL order-sensitive
            pairs. A nonzero value is a cost bound only; if you set it, the pairs are
            sorted by a deterministic, order-insensitive key first so the cap does not
            silently bias toward alphabetically-early passes.

    Returns:
        dict with best action and all results.

    NOTE: Previously this did `candidate_pairs[:max_candidates]` with a default of 10,
    which truncated the decision set in the alphabetical order of `sorted(set(...))`,
    biasing the "oracle" toward a/d/e-initial passes and invalidating the upper-bound
    claim. The default now tests every order-sensitive pair.
    """
    if not candidate_pairs:
        return {"best_action": None, "results": []}

    pairs_to_test = list(candidate_pairs)
    if max_candidates and len(pairs_to_test) > max_candidates:
        # Bound cost without alphabetical bias: this is still a heuristic cap, but at
        # least it is not the sorted-set order. Default path (max_candidates=0) avoids
        # truncation entirely.
        # Deterministic sort (alphabetical by pass_a, then pass_b) —
        # avoids Python's per-process randomized hash(frozenset).
        pairs_to_test = sorted(
            pairs_to_test, key=lambda ab: (ab[0], ab[1])
        )[:max_candidates]
    results = []

    # Evaluate all pairs in parallel (each runs independent opt subprocesses)
    from concurrent.futures import ThreadPoolExecutor, as_completed
    with ThreadPoolExecutor(max_workers=min(len(pairs_to_test), 8)) as executor:
        future_to_pair = {
            executor.submit(
                run_oracle_ordered_pair,
                opt_path, input_ir, a, b, work_dir,
                use_tti=use_tti, target_triple=target_triple,
                measure_fn=measure_fn,
            ): (a, b)
            for a, b in pairs_to_test
        }
        for future in as_completed(future_to_pair):
            results.append(future.result())

    # Restore original order for deterministic results
    pair_order = {ab: i for i, ab in enumerate(pairs_to_test)}
    results.sort(key=lambda r: pair_order.get((r["pass_a"], r["pass_b"]), 999))

    # Find the best by score improvement (respect mandatory orders)
    before_score = results[0]["before_metrics"]["score"] if results else float("inf")
    best_result = None
    best_improvement = float("-inf")

    for r in results:
        # Skip directions forbidden by mandatory orders
        if mandatory_orders:
            from pass_pipeline import filter_forbidden_directions
            constraints = filter_forbidden_directions(
                r["pass_a"], r["pass_b"], mandatory_orders
            )
            # If the chosen direction (winner) is forbidden, skip this result
            if r["winner"] == "A->B" and constraints["a_to_b_forbidden"]:
                continue
            if r["winner"] == "B->A" and constraints["b_to_a_forbidden"]:
                continue
            # On tie, default A->B; skip if that direction is forbidden
            if r["winner"] == "tie" and constraints["a_to_b_forbidden"]:
                continue

        improvement = before_score - r["best_score"]
        if improvement > best_improvement:
            best_improvement = improvement
            best_result = r

    if best_result is None:
        return {"best_action": None, "results": results}

    return {
        "best_action": {
            "kind": "ordered_pair",
            "passes": best_result["best_direction"],
            "winner": best_result["winner"],
            "score_improvement": best_improvement,
        },
        "best_result": best_result,
        "results": results,
        "before_score": before_score,
    }


def oracle_choose_from_decision_pairs(
    opt_path, input_ir, confirmation_rows, candidate_passes,
    work_dir, max_candidates=0, use_tti=False, target_triple="",
    mandatory_orders=None, decision_pairs=None,
    measure_fn=None,
):
    """Get decision_required pairs and use oracle to pick the best action.

    If decision_pairs is provided, use it directly (from decision graph).
    Otherwise, derive from confirmation_rows via decision_required_pairs().
    """
    if decision_pairs is None:
        pairs = decision_required_pairs(confirmation_rows, candidate_passes)
    else:
        pairs = list(decision_pairs)

    # Filter pairs that violate mandatory orders
    if mandatory_orders:
        from pass_pipeline import filter_forbidden_directions
        filtered_pairs = []
        for pa, pb in pairs:
            constraints = filter_forbidden_directions(pa, pb, mandatory_orders)
            if not constraints["a_to_b_forbidden"] or not constraints["b_to_a_forbidden"]:
                filtered_pairs.append((pa, pb))
        pairs = filtered_pairs

    return oracle_choose_best_pair(
        opt_path, input_ir, pairs, work_dir,
        max_candidates=max_candidates, use_tti=use_tti,
        target_triple=target_triple,
        measure_fn=measure_fn,
        mandatory_orders=mandatory_orders,
    )


# --- Utilities ---

def _run_pipeline(opt_path, input_ir, passes, output_ir):
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    pipeline_str = f"function({','.join(pipeline_names(passes))})"
    cmd = [
        str(opt_path), "-S",
        f"-passes={pipeline_str}",
        str(input_ir), "-o", str(output_path),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            f"opt failed for {passes}: {result.stderr.strip()}"
        )
    return output_path


def _sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def _safe(name):
    import re
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", name)
