import csv
from collections import defaultdict
from pathlib import Path


CONFIRMATION_FIELDS = [
    "benchmark",
    "pass_a",
    "pass_b",
    "confirmation",
    "safety",
    "support_reason",
    "agreement",
    "footprint_classification",
    "uncertainty_risk",
    "direction_classification",
    "final_ir_relation",
    "ab_equals_ba_text",
    "a_only_sha256",
    "b_only_sha256",
    "ab_sha256",
    "ba_sha256",
]

PAIR_CONFIRMATION_FIELDS = [
    "pass_a",
    "pass_b",
    "recommendation",
    "safe_for_independent_training",
    "benchmark_count",
    "confirmed_observations",
    "likely_observations",
    "needs_attribution_observations",
    "order_sensitive_observations",
    "non_commuting_observations",
    "benchmarks",
    "support_reasons",
    "final_ir_relations",
]

HIGH_RISK_FIELDS = [
    "benchmark",
    "pass_a",
    "pass_b",
    "confirmation",
    "safety",
    "support_reason",
    "agreement",
    "uncertainty_risk",
    "direction_classification",
    "final_ir_relation",
]

PAIR_ATTRIBUTION_FIELDS = [
    "pass_a",
    "pass_b",
    "benchmark_count",
    "confirmation",
    "safety",
    "support_reasons",
    "direction_classifications",
    "final_ir_relations",
    "benchmarks",
]


def build_confirmation_rows(benchmark_name, validation_rows, rewrite_direction_rows):
    rewrite_by_pair = {
        _pair_key(row["pass_a"], row["pass_b"]): row
        for row in rewrite_direction_rows
    }
    rows = []
    for validation in validation_rows:
        pass_a = validation["pass_a"]
        pass_b = validation["pass_b"]
        rewrite = rewrite_by_pair.get(_pair_key(pass_a, pass_b), {})
        decision = _confirmation_decision(validation, rewrite)
        rows.append(
            {
                "benchmark": benchmark_name,
                "pass_a": pass_a,
                "pass_b": pass_b,
                "confirmation": decision["confirmation"],
                "safety": decision["safety"],
                "support_reason": decision["support_reason"],
                "agreement": validation.get("agreement", ""),
                "footprint_classification": validation.get(
                    "footprint_classification", ""
                ),
                "uncertainty_risk": validation.get("uncertainty_risk", "none"),
                "direction_classification": rewrite.get("direction_classification", ""),
                "final_ir_relation": _final_ir_relation(rewrite),
                "ab_equals_ba_text": rewrite.get("ab_equals_ba_text", ""),
                "a_only_sha256": rewrite.get("a_only_sha256", ""),
                "b_only_sha256": rewrite.get("b_only_sha256", ""),
                "ab_sha256": rewrite.get("ab_sha256", ""),
                "ba_sha256": rewrite.get("ba_sha256", ""),
            }
        )
    return rows


def build_pair_confirmation_rows(confirmation_rows, min_stable_count):
    grouped = defaultdict(list)
    for row in confirmation_rows:
        grouped[_pair_key(row["pass_a"], row["pass_b"])].append(row)

    rows = []
    for (pass_a, pass_b), observations in sorted(grouped.items()):
        confirmed = [row for row in observations if row["confirmation"] == "confirmed_independent"]
        likely = [row for row in observations if row["confirmation"] == "likely_independent"]
        needs = [row for row in observations if row["confirmation"] == "needs_attribution"]
        order_sensitive = [
            row for row in observations if row["confirmation"] == "order_sensitive"
        ]
        non_commuting = [
            row
            for row in observations
            if row.get("agreement") in {"agree_dependent", "uncertain_non_commuting", "false_negative"}
        ]
        benchmark_count = len({row["benchmark"] for row in observations})
        recommendation, safe = _pair_recommendation(
            benchmark_count,
            len(confirmed),
            len(likely),
            len(needs),
            len(order_sensitive),
            len(non_commuting),
            min_stable_count,
        )
        rows.append(
            {
                "pass_a": pass_a,
                "pass_b": pass_b,
                "recommendation": recommendation,
                "safe_for_independent_training": "true" if safe else "false",
                "benchmark_count": benchmark_count,
                "confirmed_observations": len(confirmed),
                "likely_observations": len(likely),
                "needs_attribution_observations": len(needs),
                "order_sensitive_observations": len(order_sensitive),
                "non_commuting_observations": len(non_commuting),
                "benchmarks": sorted({row["benchmark"] for row in observations}),
                "support_reasons": sorted(
                    {row["support_reason"] for row in observations if row["support_reason"]}
                ),
                "final_ir_relations": sorted(
                    {row["final_ir_relation"] for row in observations if row["final_ir_relation"]}
                ),
            }
        )
    return rows


def build_high_risk_rows(confirmation_rows):
    return [
        {
            field: row.get(field, "")
            for field in HIGH_RISK_FIELDS
        }
        for row in confirmation_rows
        if row.get("confirmation") == "order_sensitive"
        or row.get("uncertainty_risk") == "high"
    ]


def build_pair_attribution_rows(confirmation_rows, target_pairs=None):
    target_keys = {
        _pair_key(pass_a, pass_b)
        for pass_a, pass_b in (target_pairs or [])
    }
    grouped = defaultdict(list)
    for row in confirmation_rows:
        key = _pair_key(row["pass_a"], row["pass_b"])
        if target_keys and key not in target_keys:
            continue
        grouped[key].append(row)

    rows = []
    for (pass_a, pass_b), observations in sorted(grouped.items()):
        rows.append(
            {
                "pass_a": pass_a,
                "pass_b": pass_b,
                "benchmark_count": len({row["benchmark"] for row in observations}),
                "confirmation": sorted({row["confirmation"] for row in observations}),
                "safety": sorted({row["safety"] for row in observations}),
                "support_reasons": sorted(
                    {row["support_reason"] for row in observations if row["support_reason"]}
                ),
                "direction_classifications": sorted(
                    {
                        row["direction_classification"]
                        for row in observations
                        if row["direction_classification"]
                    }
                ),
                "final_ir_relations": sorted(
                    {row["final_ir_relation"] for row in observations if row["final_ir_relation"]}
                ),
                "benchmarks": sorted({row["benchmark"] for row in observations}),
            }
        )
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
    output_path = Path(path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow({field: _csv_cell(row.get(field, "")) for field in fields})


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
        return {
            "confirmation": "order_sensitive",
            "safety": "unsafe",
            "support_reason": reason,
        }
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


def _pair_recommendation(
    benchmark_count,
    confirmed_count,
    likely_count,
    needs_count,
    order_sensitive_count,
    non_commuting_count,
    min_stable_count,
):
    if non_commuting_count or order_sensitive_count:
        return "context_sensitive_keep_dependent", False
    if confirmed_count >= min_stable_count and not likely_count and not needs_count:
        return "confirmed_independent", True
    if confirmed_count + likely_count >= min_stable_count and not needs_count:
        return "likely_independent_candidate", False
    if benchmark_count >= min_stable_count:
        return "needs_attribution", False
    return "insufficient_observations", False


def _has_exact_convergence(rewrite):
    if rewrite.get("ab_equals_ba_text") != "true":
        return False
    ab_sha = rewrite.get("ab_sha256")
    ba_sha = rewrite.get("ba_sha256")
    if not ab_sha or ab_sha != ba_sha:
        return False
    return ab_sha in {rewrite.get("a_only_sha256"), rewrite.get("b_only_sha256")}


def _final_ir_relation(rewrite):
    ab_sha = rewrite.get("ab_sha256", "")
    ba_sha = rewrite.get("ba_sha256", "")
    if not ab_sha or not ba_sha:
        return ""
    if ab_sha != ba_sha:
        return "ab_ba_differ"
    if ab_sha == rewrite.get("a_only_sha256"):
        return "final_matches_a_only"
    if ab_sha == rewrite.get("b_only_sha256"):
        return "final_matches_b_only"
    return "same_final_new_result"


def _pair_key(pass_a, pass_b):
    return tuple(sorted([pass_a, pass_b]))


def _csv_cell(value):
    if isinstance(value, list):
        return ";".join(str(item) for item in value)
    return value
