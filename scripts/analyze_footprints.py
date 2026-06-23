import argparse
import csv
import json
from itertools import combinations
from pathlib import Path


CSV_FIELDS = [
    "pass_a",
    "pass_b",
    "classification",
    "dependency_kinds",
    "dependency_strength",
    "read_write_strength",
    "enablement_strength",
    "uncertainty_risk",
    "wa_intersect_rb",
    "wb_intersect_ra",
    "wa_intersect_wb",
    "strong_intersections",
    "weak_intersections",
    "intersection_token_kinds",
    "overlap_pattern",
    "enablement_edge_kinds",
    "enablement_edges",
    "enablement_evidence",
]

WEAK_INSTRUCTION_OPCODES = {
    "br",
    "ret",
    "unreachable",
}

WEAK_PSEUDO_OPCODES = {
    "i1",
    "i8",
    "i16",
    "i32",
    "i64",
    "ptr",
    "float",
    "double",
    "void",
}


def load_footprints(path):
    footprints = {}
    with Path(path).open(encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, start=1):
            line = line.strip()
            if not line:
                continue

            record = json.loads(line)
            pass_name = record.get("pass")
            if not pass_name:
                raise ValueError(f"line {line_number}: missing required 'pass' field")

            entry = footprints.setdefault(pass_name, {"reads": set(), "writes": set()})
            entry["reads"].update(record.get("reads", []))
            entry["writes"].update(record.get("writes", []))

    return footprints


def load_enablement_edges(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    grouped_edges = {}
    for edge in payload.get("edges", []):
        enabler = edge.get("enabler")
        enabled = edge.get("enabled")
        if not enabler or not enabled:
            continue

        pair_key = tuple(sorted([enabler, enabled]))
        grouped_edges.setdefault(pair_key, []).append(edge)

    return grouped_edges


def analyze_pairs(footprints, enablement_edges=None):
    enablement_edges = enablement_edges or {}
    active_passes = {
        pass_name
        for pass_name, record in footprints.items()
        if record["writes"]
    }
    enabled_passes = {
        edge["enabled"]
        for edges in enablement_edges.values()
        for edge in edges
        if edge.get("enabled")
    }
    candidate_passes = sorted(active_passes | enabled_passes)
    rows = []
    for pass_a, pass_b in combinations(candidate_passes, 2):
        reads_a = footprints[pass_a]["reads"]
        writes_a = footprints[pass_a]["writes"]
        reads_b = footprints[pass_b]["reads"]
        writes_b = footprints[pass_b]["writes"]

        wa_intersect_rb = sorted(writes_a & reads_b)
        wb_intersect_ra = sorted(writes_b & reads_a)
        wa_intersect_wb = sorted(writes_a & writes_b)
        read_write_intersections = sorted(
            set(wa_intersect_rb) | set(wb_intersect_ra) | set(wa_intersect_wb)
        )
        strong_intersections = sorted(
            token
            for token in read_write_intersections
            if token_strength(token) == "strong"
        )
        weak_intersections = sorted(
            token
            for token in read_write_intersections
            if token_strength(token) == "weak"
        )
        read_write_strength = _read_write_strength(
            strong_intersections,
            weak_intersections,
        )
        pair_enablement_edges = _lookup_enablement_edges(
            enablement_edges,
            pass_a,
            pass_b,
        )
        enablement_strength = _enablement_strength(pair_enablement_edges)
        dependency_kinds = []
        if read_write_intersections:
            dependency_kinds.append("read_write")

        if pair_enablement_edges:
            dependency_kinds.append("enablement")

        dependency_strength = _dependency_strength(
            read_write_strength,
            enablement_strength,
        )
        overlap_pattern = _overlap_pattern(
            wa_intersect_rb,
            wb_intersect_ra,
            wa_intersect_wb,
        )
        rows.append(
            {
                "pass_a": pass_a,
                "pass_b": pass_b,
                "classification": _classification(dependency_strength),
                "dependency_kinds": dependency_kinds,
                "dependency_strength": dependency_strength,
                "read_write_strength": read_write_strength,
                "enablement_strength": enablement_strength,
                "uncertainty_risk": _uncertainty_risk(
                    dependency_strength,
                    read_write_strength,
                    enablement_strength,
                    overlap_pattern,
                ),
                "wa_intersect_rb": wa_intersect_rb,
                "wb_intersect_ra": wb_intersect_ra,
                "wa_intersect_wb": wa_intersect_wb,
                "strong_intersections": strong_intersections,
                "weak_intersections": weak_intersections,
                "intersection_token_kinds": sorted(
                    {token_kind(token) for token in read_write_intersections}
                ),
                "overlap_pattern": overlap_pattern,
                "enablement_edge_kinds": _format_enablement_edge_kinds(
                    pair_enablement_edges
                ),
                "enablement_edges": _format_enablement_edges(pair_enablement_edges),
                "enablement_evidence": _format_enablement_evidence(
                    pair_enablement_edges
                ),
            }
        )

    return rows


def token_kind(token):
    return token.split(":", 1)[0] if ":" in token else "unknown"


def token_strength(token):
    kind = token_kind(token)
    if kind in {"loop", "func"}:
        return "strong"
    if kind == "bb":
        return "weak"
    if kind != "inst":
        return "weak"

    opcode = _instruction_opcode(token)
    if opcode is None:
        return "weak"
    if opcode in WEAK_INSTRUCTION_OPCODES or opcode in WEAK_PSEUDO_OPCODES:
        return "weak"
    return "strong"


def _instruction_opcode(token):
    parts = token.split(":")
    if len(parts) < 5 or parts[0] != "inst":
        return None
    return parts[-1]


def _read_write_strength(strong_intersections, weak_intersections):
    if strong_intersections:
        return "strong"
    if weak_intersections:
        return "weak"
    return "none"


def _dependency_strength(read_write_strength, enablement_strength):
    if "strong" in {read_write_strength, enablement_strength}:
        return "strong"
    if "weak" in {read_write_strength, enablement_strength}:
        return "weak"
    return "none"


def _classification(dependency_strength):
    if dependency_strength == "strong":
        return "dependent"
    if dependency_strength == "weak":
        return "uncertain"
    return "independent"


def _uncertainty_risk(
    dependency_strength,
    read_write_strength,
    enablement_strength,
    overlap_pattern,
):
    if dependency_strength != "weak":
        return "none"
    if enablement_strength == "weak":
        return "high"
    if read_write_strength == "weak" and overlap_pattern in {"mixed", "read_write_only"}:
        return "medium"
    return "low"


def _overlap_pattern(wa_intersect_rb, wb_intersect_ra, wa_intersect_wb):
    wa_rb = set(wa_intersect_rb)
    wb_ra = set(wb_intersect_ra)
    wa_wb = set(wa_intersect_wb)
    if not wa_rb and not wb_ra and not wa_wb:
        return "none"
    if wa_rb and wa_rb == wb_ra == wa_wb:
        return "symmetric_rewrite"
    if wa_wb and not wa_rb and not wb_ra:
        return "write_write_only"
    if (wa_rb or wb_ra) and not wa_wb:
        return "read_write_only"
    return "mixed"


def _lookup_enablement_edges(enablement_edges, pass_a, pass_b):
    return (
        enablement_edges.get((pass_a, pass_b))
        or enablement_edges.get((pass_b, pass_a))
        or []
    )


def _enablement_strength(edges):
    if not edges:
        return "none"

    edge_strengths = {_single_enablement_edge_strength(edge) for edge in edges}
    if "strong" in edge_strengths:
        return "strong"
    if "weak" in edge_strengths:
        return "weak"
    return "none"


def _single_enablement_edge_strength(edge):
    edge_kind = edge.get("edge_kind", "activation")
    if edge_kind == "activation":
        return "strong"

    evidence_tokens = _enablement_evidence_tokens(edge)
    if any(token_strength(token) == "strong" for token in evidence_tokens):
        return "strong"
    if evidence_tokens:
        return "weak"
    return "weak"


def _enablement_evidence_tokens(edge):
    edge_kind = edge.get("edge_kind", "activation")
    if edge_kind == "expansion":
        tokens = edge.get("new_writes_after_prefix", [])
        return tokens or edge.get("writes_after_prefix", [])
    if edge_kind == "mutation":
        tokens = edge.get("changed_writes_after_prefix", [])
        return tokens or edge.get("writes_after_prefix", [])
    return edge.get("writes_after_prefix", [])


def _format_enablement_edge_kinds(edges):
    return sorted({edge.get("edge_kind", "activation") for edge in edges})


def _format_enablement_edges(edges):
    return [
        f"{edge['enabler']}->{edge['enabled']}"
        for edge in edges
    ]


def _format_enablement_evidence(edges):
    evidence = []
    for edge in edges:
        prefix = ",".join(edge.get("prefix", []))
        writes = ";".join(edge.get("writes_after_prefix", []))
        evidence.append(
            "kind={kind} round={round} prefix={prefix} writes={writes}".format(
                kind=edge.get("edge_kind", "activation"),
                round=edge.get("round", ""),
                prefix=prefix,
                writes=writes,
            )
        )
    return evidence


def summarize(rows):
    total_pairs = len(rows)
    independent_pairs = sum(
        1 for row in rows if row["classification"] == "independent"
    )
    dependent_pairs = sum(
        1 for row in rows if row["classification"] == "dependent"
    )
    uncertain_pairs = sum(
        1 for row in rows if row["classification"] == "uncertain"
    )
    return {
        "total_pairs": total_pairs,
        "independent_pairs": independent_pairs,
        "dependent_pairs": dependent_pairs,
        "uncertain_pairs": uncertain_pairs,
    }


def _csv_cell(value):
    if isinstance(value, list):
        return ";".join(value)
    return value


def write_csv(rows, path):
    output_path = Path(path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for row in rows:
            writer.writerow({field: _csv_cell(row[field]) for field in CSV_FIELDS})


def write_json(rows, path):
    output_path = Path(path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    payload = {
        "summary": summarize(rows),
        "pairs": rows,
    }
    output_path.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def parse_args():
    parser = argparse.ArgumentParser(
        description="Analyze read/write footprints and emit pass dependency results."
    )
    parser.add_argument("footprints", help="Input JSONL footprint file.")
    parser.add_argument(
        "--out-csv",
        default="results/dependency_matrix.csv",
        help="Output CSV path.",
    )
    parser.add_argument(
        "--out-json",
        default="results/independence_analysis.json",
        help="Output JSON analysis path.",
    )
    parser.add_argument(
        "--enablement-json",
        help="Optional enablement_probe JSON path to merge into dependency results.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    footprints = load_footprints(args.footprints)
    enablement_edges = (
        load_enablement_edges(args.enablement_json)
        if args.enablement_json
        else None
    )
    rows = analyze_pairs(footprints, enablement_edges=enablement_edges)
    write_csv(rows, args.out_csv)
    write_json(rows, args.out_json)
    summary = summarize(rows)
    print(
        "Analyzed {total_pairs} pairs: {independent_pairs} independent, "
        "{dependent_pairs} dependent, {uncertain_pairs} uncertain.".format(**summary)
    )


if __name__ == "__main__":
    main()
