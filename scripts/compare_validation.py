import argparse
import csv
import json
from pathlib import Path


CSV_FIELDS = [
    "pass_a",
    "pass_b",
    "footprint_classification",
    "commute",
    "agreement",
    "wa_intersect_rb",
    "wb_intersect_ra",
    "wa_intersect_wb",
    "dependency_kinds",
    "dependency_strength",
    "read_write_strength",
    "enablement_strength",
    "uncertainty_risk",
    "strong_intersections",
    "weak_intersections",
    "intersection_token_kinds",
    "overlap_pattern",
    "enablement_edge_kinds",
    "enablement_edges",
    "commutativity_details",
]


def classify_agreement(footprint_classification, commute):
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
    commutativity_by_pair = {
        _pair_key(row["pass_a"], row["pass_b"]): row for row in commutativity_rows
    }
    rows = []
    for dependency in dependency_rows:
        key = _pair_key(dependency["pass_a"], dependency["pass_b"])
        commutativity = commutativity_by_pair.get(key)
        if commutativity is None:
            commute = None
            agreement = "missing_commutativity"
            details = ""
        else:
            commute = commutativity["commute"]
            agreement = classify_agreement(dependency["classification"], commute)
            details = commutativity.get("details", "")

        rows.append(
            {
                "pass_a": dependency["pass_a"],
                "pass_b": dependency["pass_b"],
                "footprint_classification": dependency["classification"],
                "commute": commute,
                "agreement": agreement,
                "wa_intersect_rb": dependency.get("wa_intersect_rb", []),
                "wb_intersect_ra": dependency.get("wb_intersect_ra", []),
                "wa_intersect_wb": dependency.get("wa_intersect_wb", []),
                "dependency_kinds": dependency.get("dependency_kinds", []),
                "dependency_strength": dependency.get("dependency_strength", "none"),
                "read_write_strength": dependency.get("read_write_strength", "none"),
                "enablement_strength": dependency.get("enablement_strength", "none"),
                "uncertainty_risk": dependency.get("uncertainty_risk", "none"),
                "strong_intersections": dependency.get("strong_intersections", []),
                "weak_intersections": dependency.get("weak_intersections", []),
                "intersection_token_kinds": dependency.get(
                    "intersection_token_kinds",
                    [],
                ),
                "overlap_pattern": dependency.get("overlap_pattern", "none"),
                "enablement_edge_kinds": dependency.get("enablement_edge_kinds", []),
                "enablement_edges": dependency.get("enablement_edges", []),
                "commutativity_details": details,
            }
        )

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
        summary[row["agreement"]] = summary.get(row["agreement"], 0) + 1
    return summary


def write_outputs(rows, out_csv, out_json):
    csv_path = Path(out_csv)
    json_path = Path(out_json)
    csv_path.parent.mkdir(parents=True, exist_ok=True)
    json_path.parent.mkdir(parents=True, exist_ok=True)

    with csv_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for row in rows:
            writer.writerow({field: _csv_cell(row[field]) for field in CSV_FIELDS})

    json_path.write_text(
        json.dumps({"summary": summarize(rows), "pairs": rows}, ensure_ascii=False, indent=2)
        + "\n",
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
        description="Compare footprint dependency results with commutativity results."
    )
    parser.add_argument(
        "--dependency-json",
        default="results/generated_independence_analysis.json",
        help="Input dependency analysis JSON path.",
    )
    parser.add_argument(
        "--commutativity-json",
        default="results/commutativity_results.json",
        help="Input commutativity results JSON path.",
    )
    parser.add_argument(
        "--out-csv",
        default="results/validation_report.csv",
        help="Output validation report CSV path.",
    )
    parser.add_argument(
        "--out-json",
        default="results/validation_report.json",
        help="Output validation report JSON path.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    dependency_rows = load_pairs(args.dependency_json)
    commutativity_rows = load_pairs(args.commutativity_json)
    rows = build_validation_rows(dependency_rows, commutativity_rows)
    write_outputs(rows, args.out_csv, args.out_json)
    summary = summarize(rows)
    print(
        "Compared {total_pairs} pairs: {agree_dependent} agree_dependent, "
        "{agree_independent} agree_independent, {false_positive} false_positive, "
        "{false_negative} false_negative, {uncertain_commuting} uncertain_commuting, "
        "{uncertain_non_commuting} uncertain_non_commuting.".format(**summary)
    )


if __name__ == "__main__":
    main()
