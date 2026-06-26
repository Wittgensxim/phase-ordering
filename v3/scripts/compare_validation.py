"""
Cross-validation: compares static dependency analysis (footprint-based)
with black-box commutativity test results (llvm-diff-based).

Produces agreement classifications:
- agree_dependent / agree_independent: both methods agree
- false_positive: static says dependent but passes commute
- false_negative: static says independent but passes don't commute
- uncertain_commuting / uncertain_non_commuting: uncertain status
"""

import argparse
import csv
import json
from pathlib import Path


CSV_FIELDS = [
    "pass_a", "pass_b",
    "footprint_classification", "commute", "agreement",
    "wa_intersect_rb", "wb_intersect_ra", "wa_intersect_wb",
    "dependency_kinds", "dependency_strength",
    "read_write_strength", "enablement_strength",
    "uncertainty_risk", "strong_intersections", "weak_intersections",
    "intersection_token_kinds", "overlap_pattern",
    "enablement_edge_kinds", "enablement_edges",
    "commutativity_details",
]


def classify_agreement(footprint_classification, commute):
    """Classify the agreement between static analysis and commutativity."""
    if footprint_classification == "dependent" and not commute:
        return "agree_dependent"
    if footprint_classification == "dependent" and commute:
        return "false_positive"
    if footprint_classification == "independent" and commute:
        return "agree_independent"
    if footprint_classification == "independent" and not commute:
        return "false_negative"
    if footprint_classification == "uncertain" and commute:
        return "uncertain_commuting"
    if footprint_classification == "uncertain" and not commute:
        return "uncertain_non_commuting"
    return "unknown"


def build_validation_rows(dependency_rows, commutativity_rows):
    """Merge dependency analysis and commutativity test results."""
    comm_by_pair = {
        _pair_key(r["pass_a"], r["pass_b"]): r for r in commutativity_rows
    }
    rows = []
    for dep in dependency_rows:
        key = _pair_key(dep["pass_a"], dep["pass_b"])
        comm = comm_by_pair.get(key)
        if comm is None:
            commute = None
            agreement = "missing_commutativity"
            details = ""
        else:
            commute = comm["commute"]
            agreement = classify_agreement(dep["classification"], commute)
            details = comm.get("details", "")

        rows.append({
            "pass_a": dep["pass_a"],
            "pass_b": dep["pass_b"],
            "footprint_classification": dep["classification"],
            "commute": commute,
            "agreement": agreement,
            "wa_intersect_rb": dep.get("wa_intersect_rb", []),
            "wb_intersect_ra": dep.get("wb_intersect_ra", []),
            "wa_intersect_wb": dep.get("wa_intersect_wb", []),
            "dependency_kinds": dep.get("dependency_kinds", []),
            "dependency_strength": dep.get("dependency_strength", "none"),
            "read_write_strength": dep.get("read_write_strength", "none"),
            "enablement_strength": dep.get("enablement_strength", "none"),
            "uncertainty_risk": dep.get("uncertainty_risk", "none"),
            "strong_intersections": dep.get("strong_intersections", []),
            "weak_intersections": dep.get("weak_intersections", []),
            "intersection_token_kinds": dep.get("intersection_token_kinds", []),
            "overlap_pattern": dep.get("overlap_pattern", "none"),
            "enablement_edge_kinds": dep.get("enablement_edge_kinds", []),
            "enablement_edges": dep.get("enablement_edges", []),
            "commutativity_details": details,
        })
    return rows


def summarize(rows):
    summary = {
        "total_pairs": len(rows),
        "agree_dependent": 0,
        "agree_independent": 0,
        "false_positive": 0,
        "false_negative": 0,
        "uncertain_commuting": 0,
        "uncertain_non_commuting": 0,
        "missing_commutativity": 0,
        "unknown": 0,
    }
    for row in rows:
        key = row["agreement"]
        summary[key] = summary.get(key, 0) + 1
    return summary


def write_outputs(rows, out_csv, out_json):
    cp = Path(out_csv)
    jp = Path(out_json)
    cp.parent.mkdir(parents=True, exist_ok=True)
    jp.parent.mkdir(parents=True, exist_ok=True)

    with cp.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for row in rows:
            writer.writerow({k: _csv_cell(row[k]) for k in CSV_FIELDS})
    jp.write_text(
        json.dumps({"summary": summarize(rows), "pairs": rows},
                   ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def load_pairs(path):
    return json.loads(Path(path).read_text(encoding="utf-8"))["pairs"]


def _pair_key(pass_a, pass_b):
    return tuple(sorted((pass_a, pass_b)))


def _csv_cell(value):
    if isinstance(value, bool):
        return "true" if value else "false"
    if value is None:
        return ""
    if isinstance(value, list):
        return ";".join(value)
    return value


def parse_args():
    parser = argparse.ArgumentParser(
        description="Compare dependency analysis with commutativity results."
    )
    parser.add_argument("--dependency-json", default="results/independence_analysis.json")
    parser.add_argument("--commutativity-json", default="results/commutativity_results.json")
    parser.add_argument("--out-csv", default="results/validation_report.csv")
    parser.add_argument("--out-json", default="results/validation_report.json")
    return parser.parse_args()


def main():
    args = parse_args()
    dep_rows = load_pairs(args.dependency_json)
    comm_rows = load_pairs(args.commutativity_json)
    rows = build_validation_rows(dep_rows, comm_rows)
    write_outputs(rows, args.out_csv, args.out_json)
    s = summarize(rows)
    print(
        f"Compared {s['total_pairs']} pairs: "
        f"{s['agree_dependent']} agree_dependent, "
        f"{s['agree_independent']} agree_independent, "
        f"{s['false_positive']} false_positive, "
        f"{s['false_negative']} false_negative, "
        f"{s['uncertain_commuting']} uncertain_commuting, "
        f"{s['uncertain_non_commuting']} uncertain_non_commuting."
    )


if __name__ == "__main__":
    main()
