"""
Confirmation layer: the final output of the analysis chain.
Converts validation results into four confirmation labels:

- confirmed_independent: static independent + commuting (safe)
- likely_independent: commuting but with caveats (candidate)
- needs_attribution: evidence insufficient (review required)
- order_sensitive: dependent and non-commuting (unsafe)

Also produces cross-benchmark pair stability analysis.
"""

import csv
from collections import defaultdict
from pathlib import Path


CONFIRMATION_FIELDS = [
    "benchmark", "pass_a", "pass_b",
    "confirmation", "safety", "support_reason",
    "agreement", "footprint_classification", "uncertainty_risk",
    "direction_classification", "final_ir_relation",
    "ab_equals_ba_text",
    "a_only_sha256", "b_only_sha256", "ab_sha256", "ba_sha256",
]

PAIR_CONFIRMATION_FIELDS = [
    "pass_a", "pass_b",
    "recommendation", "safe_for_independent_training",
    "benchmark_count",
    "confirmed_observations", "likely_observations",
    "needs_attribution_observations", "order_sensitive_observations",
    "non_commuting_observations",
    "benchmarks", "support_reasons", "final_ir_relations",
]

HIGH_RISK_FIELDS = [
    "benchmark", "pass_a", "pass_b",
    "confirmation", "safety", "support_reason",
    "agreement", "uncertainty_risk",
    "direction_classification", "final_ir_relation",
]

PAIR_ATTRIBUTION_FIELDS = [
    "pass_a", "pass_b", "benchmark_count",
    "confirmation", "safety", "support_reasons",
    "direction_classifications", "final_ir_relations", "benchmarks",
]


def build_confirmation_rows(benchmark_name, validation_rows, rewrite_direction_rows):
    """Build per-benchmark confirmation rows."""
    rewrite_by_pair = {
        _pair_key(r["pass_a"], r["pass_b"]): r for r in rewrite_direction_rows
    }
    rows = []
    for v in validation_rows:
        pa, pb = v["pass_a"], v["pass_b"]
        rw = rewrite_by_pair.get(_pair_key(pa, pb), {})
        decision = _confirmation_decision(v, rw)
        rows.append({
            "benchmark": benchmark_name,
            "pass_a": pa,
            "pass_b": pb,
            "confirmation": decision["confirmation"],
            "safety": decision["safety"],
            "support_reason": decision["support_reason"],
            "agreement": v.get("agreement", ""),
            "footprint_classification": v.get("footprint_classification", ""),
            "uncertainty_risk": v.get("uncertainty_risk", "none"),
            "direction_classification": rw.get("direction_classification", ""),
            "final_ir_relation": _final_ir_relation(rw),
            "ab_equals_ba_text": rw.get("ab_equals_ba_text", ""),
            "a_only_sha256": rw.get("a_only_sha256", ""),
            "b_only_sha256": rw.get("b_only_sha256", ""),
            "ab_sha256": rw.get("ab_sha256", ""),
            "ba_sha256": rw.get("ba_sha256", ""),
        })
    return rows


def build_pair_confirmation_rows(confirmation_rows, min_stable_count):
    """Cross-benchmark pair stability analysis."""
    grouped = defaultdict(list)
    for row in confirmation_rows:
        grouped[_pair_key(row["pass_a"], row["pass_b"])].append(row)

    rows = []
    for (pa, pb), obs in sorted(grouped.items()):
        confirmed = [r for r in obs if r["confirmation"] == "confirmed_independent"]
        likely = [r for r in obs if r["confirmation"] == "likely_independent"]
        needs = [r for r in obs if r["confirmation"] == "needs_attribution"]
        order_s = [r for r in obs if r["confirmation"] == "order_sensitive"]
        non_comm = [
            r for r in obs
            if r.get("agreement") in {"agree_dependent", "uncertain_non_commuting", "false_negative"}
        ]
        bc = len({r["benchmark"] for r in obs})
        rec, safe = _pair_recommendation(
            bc, len(confirmed), len(likely), len(needs),
            len(order_s), len(non_comm), min_stable_count,
        )
        rows.append({
            "pass_a": pa, "pass_b": pb,
            "recommendation": rec,
            "safe_for_independent_training": "true" if safe else "false",
            "benchmark_count": bc,
            "confirmed_observations": len(confirmed),
            "likely_observations": len(likely),
            "needs_attribution_observations": len(needs),
            "order_sensitive_observations": len(order_s),
            "non_commuting_observations": len(non_comm),
            "benchmarks": sorted({r["benchmark"] for r in obs}),
            "support_reasons": sorted({r["support_reason"] for r in obs if r["support_reason"]}),
            "final_ir_relations": sorted({r["final_ir_relation"] for r in obs if r["final_ir_relation"]}),
        })
    return rows


def build_high_risk_rows(confirmation_rows):
    """Extract high-risk pairs (order_sensitive or high uncertainty)."""
    return [
        {f: row.get(f, "") for f in HIGH_RISK_FIELDS}
        for row in confirmation_rows
        if row.get("confirmation") == "order_sensitive"
        or row.get("uncertainty_risk") == "high"
    ]


def build_pair_attribution_rows(confirmation_rows, target_pairs=None):
    """Build attribution rows for specific target pairs."""
    target_keys = {_pair_key(a, b) for a, b in (target_pairs or [])}
    grouped = defaultdict(list)
    for row in confirmation_rows:
        key = _pair_key(row["pass_a"], row["pass_b"])
        if target_keys and key not in target_keys:
            continue
        grouped[key].append(row)

    rows = []
    for (pa, pb), obs in sorted(grouped.items()):
        rows.append({
            "pass_a": pa, "pass_b": pb,
            "benchmark_count": len({r["benchmark"] for r in obs}),
            "confirmation": sorted({r["confirmation"] for r in obs}),
            "safety": sorted({r["safety"] for r in obs}),
            "support_reasons": sorted({r["support_reason"] for r in obs if r["support_reason"]}),
            "direction_classifications": sorted({
                r["direction_classification"] for r in obs if r["direction_classification"]
            }),
            "final_ir_relations": sorted({
                r["final_ir_relation"] for r in obs if r["final_ir_relation"]
            }),
            "benchmarks": sorted({r["benchmark"] for r in obs}),
        })
    return rows


def summarize_confirmation_rows(confirmation_rows):
    summary = {
        "confirmed_independent": 0,
        "likely_independent": 0,
        "needs_attribution": 0,
        "order_sensitive": 0,
    }
    for row in confirmation_rows:
        key = row.get("confirmation")
        summary[key] = summary.get(key, 0) + 1
    return summary


def write_csv(rows, path, fields):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow({k: _csv_cell(row.get(k, "")) for k in fields})


# --- Internal decision logic ---

def _confirmation_decision(validation, rewrite):
    agreement = validation.get("agreement")
    uncertainty_risk = validation.get("uncertainty_risk", "none")
    direction = rewrite.get("direction_classification", "")

    if agreement == "agree_independent":
        return {
            "confirmation": "confirmed_independent",
            "safety": "safe",
            "support_reason": "static_independent_and_commuting",
        }
    if agreement == "uncertain_non_commuting":
        reason = (
            "high_risk_uncertain_non_commuting"
            if uncertainty_risk == "high"
            else "uncertain_non_commuting"
        )
        return {"confirmation": "order_sensitive", "safety": "unsafe", "support_reason": reason}
    if agreement == "agree_dependent":
        return {
            "confirmation": "order_sensitive",
            "safety": "unsafe",
            "support_reason": "dependent_and_non_commuting",
        }
    if agreement == "false_negative":
        return {
            "confirmation": "order_sensitive",
            "safety": "unsafe",
            "support_reason": "false_negative_requires_rule_fix",
        }
    if agreement in {"false_positive", "uncertain_commuting"}:
        if _has_exact_convergence(rewrite):
            return {
                "confirmation": "likely_independent",
                "safety": "candidate",
                "support_reason": "exact_convergence_to_single_pass_result",
            }
        if direction == "same_direction_rewrite_candidate":
            return {
                "confirmation": "likely_independent",
                "safety": "candidate",
                "support_reason": "same_direction_rewrite_candidate",
            }
        return {
            "confirmation": "needs_attribution",
            "safety": "review",
            "support_reason": "commuting_but_rewrite_direction_unexplained",
        }
    return {
        "confirmation": "needs_attribution",
        "safety": "review",
        "support_reason": "missing_or_unknown_validation",
    }


def _has_exact_convergence(rewrite):
    """Check if A->B and B->A both converge to the same result as A-only or B-only."""
    if not rewrite:
        return False
    ab_hash = rewrite.get("ab_sha256", "")
    ba_hash = rewrite.get("ba_sha256", "")
    a_hash = rewrite.get("a_only_sha256", "")
    b_hash = rewrite.get("b_only_sha256", "")
    if not ab_hash or not a_hash:
        return False
    return (ab_hash == ba_hash == a_hash) or (ab_hash == ba_hash == b_hash)


def _final_ir_relation(rewrite):
    if not rewrite:
        return ""
    ab = rewrite.get("ab_sha256", "")
    ba = rewrite.get("ba_sha256", "")
    a = rewrite.get("a_only_sha256", "")
    b = rewrite.get("b_only_sha256", "")
    if ab and ab == ba == a:
        return "converges_to_a_only"
    if ab and ab == ba == b:
        return "converges_to_b_only"
    if ab and ab == ba:
        return "ab_equals_ba"
    return "divergent"


def _pair_recommendation(bc, confirmed, likely, needs, order_s, non_comm, min_stable):
    if non_comm or order_s:
        return "context_sensitive_keep_dependent", False
    if confirmed >= min_stable and not likely and not needs:
        return "confirmed_independent", True
    if confirmed + likely >= min_stable and not needs:
        return "likely_independent_candidate", False
    if needs:
        return "needs_attribution", False
    return "needs_attribution", False


# --- Utilities ---

def _pair_key(pass_a, pass_b):
    return tuple(sorted([pass_a, pass_b]))


def _csv_cell(value):
    if isinstance(value, bool):
        return "true" if value else "false"
    if value is None:
        return ""
    if isinstance(value, list):
        return ";".join(value)
    return value
