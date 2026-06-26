"""
Dependency analysis: reads footprint records and enablement edges,
produces pairwise dependency classifications.

Classifies each pass pair as:
- independent: no read-write overlap, no enablement
- dependent: strong overlap or strong enablement
- uncertain: weak overlap or weak enablement only
"""

import argparse
import csv
import json
from itertools import combinations
from pathlib import Path


CSV_FIELDS = [
    "pass_a", "pass_b",
    "classification", "dependency_kinds", "dependency_strength",
    "read_write_strength", "enablement_strength", "uncertainty_risk",
    "wa_intersect_rb", "wb_intersect_ra", "wa_intersect_wb",
    "strong_intersections", "weak_intersections",
    "intersection_token_kinds", "overlap_pattern",
    "enablement_edge_kinds", "enablement_edges", "enablement_evidence",
]

WEAK_INSTRUCTION_OPCODES = {"br", "ret", "unreachable"}
WEAK_PSEUDO_OPCODES = {"i1", "i8", "i16", "i32", "i64", "ptr", "float", "double", "void"}


# --- Loading ---

def load_footprints(path):
    """Load footprint records from JSONL, merging by pass name."""
    footprints = {}
    with Path(path).open(encoding="utf-8") as f:
        for line_num, line in enumerate(f, 1):
            line = line.strip()
            if not line:
                continue
            record = json.loads(line)
            pass_name = record.get("pass")
            if not pass_name:
                raise ValueError(f"Line {line_num}: missing 'pass' field")
            entry = footprints.setdefault(pass_name, {"reads": set(), "writes": set()})
            entry["reads"].update(record.get("reads", []))
            entry["writes"].update(record.get("writes", []))
    return footprints


def load_enablement_edges(path):
    """Load enablement probe results and group edges by pass pair."""
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    grouped = {}
    for edge in payload.get("edges", []):
        enabler = edge.get("enabler")
        enabled = edge.get("enabled")
        if not enabler or not enabled:
            continue
        key = tuple(sorted([enabler, enabled]))
        grouped.setdefault(key, []).append(edge)
    return grouped


# --- Core analysis ---

def analyze_pairs(footprints, enablement_edges=None):
    """Analyze all pass pairs for dependency relationships."""
    enablement_edges = enablement_edges or {}
    active_passes = {
        p for p, r in footprints.items() if r["writes"]
    }
    enabled_passes = set()
    for edges in enablement_edges.values():
        for edge in edges:
            if edge.get("enabled"):
                enabled_passes.add(edge["enabled"])

    candidate_passes = sorted(active_passes | enabled_passes)
    rows = []

    for pass_a, pass_b in combinations(candidate_passes, 2):
        ra = footprints[pass_a]["reads"]
        wa = footprints[pass_a]["writes"]
        rb = footprints[pass_b]["reads"]
        wb = footprints[pass_b]["writes"]

        wa_rb = sorted(wa & rb)
        wb_ra = sorted(wb & ra)
        wa_wb = sorted(wa & wb)
        rw_all = sorted(set(wa_rb) | set(wb_ra) | set(wa_wb))

        strong_tokens = sorted(t for t in rw_all if token_strength(t) == "strong")
        weak_tokens = sorted(t for t in rw_all if token_strength(t) == "weak")

        rw_strength = _pick_strength(strong_tokens, weak_tokens)
        pair_edges = _lookup_enablement(enablement_edges, pass_a, pass_b)
        en_strength = _enablement_strength(pair_edges)
        dep_strength = _dependency_strength(rw_strength, en_strength)

        rows.append({
            "pass_a": pass_a,
            "pass_b": pass_b,
            "classification": _classification(dep_strength),
            "dependency_kinds": _dep_kinds(rw_all, pair_edges),
            "dependency_strength": dep_strength,
            "read_write_strength": rw_strength,
            "enablement_strength": en_strength,
            "uncertainty_risk": _uncertainty_risk(
                dep_strength, rw_strength, en_strength,
                _overlap_pattern(wa_rb, wb_ra, wa_wb),
            ),
            "wa_intersect_rb": wa_rb,
            "wb_intersect_ra": wb_ra,
            "wa_intersect_wb": wa_wb,
            "strong_intersections": strong_tokens,
            "weak_intersections": weak_tokens,
            "intersection_token_kinds": sorted({token_kind(t) for t in rw_all}),
            "overlap_pattern": _overlap_pattern(wa_rb, wb_ra, wa_wb),
            "enablement_edge_kinds": _format_en_edge_kinds(pair_edges),
            "enablement_edges": _format_en_edges(pair_edges),
            "enablement_evidence": _format_en_evidence(pair_edges),
        })

    return rows


# --- Token helpers ---

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
    if opcode in WEAK_INSTRUCTION_OPCODES or opcode in WEAK_PSEUDO_OPCODES:
        return "weak"
    return "strong"


def _instruction_opcode(token):
    parts = token.split(":")
    if len(parts) < 5 or parts[0] != "inst":
        return None
    return parts[-1]


# --- Classification helpers ---

def _pick_strength(strong, weak):
    if strong:
        return "strong"
    if weak:
        return "weak"
    return "none"


def _dependency_strength(rw_strength, en_strength):
    if "strong" in {rw_strength, en_strength}:
        return "strong"
    if "weak" in {rw_strength, en_strength}:
        return "weak"
    return "none"


def _classification(dep_strength):
    if dep_strength == "strong":
        return "dependent"
    if dep_strength == "weak":
        return "uncertain"
    return "independent"


def _dep_kinds(rw_all, pair_edges):
    kinds = []
    if rw_all:
        kinds.append("read_write")
    if pair_edges:
        kinds.append("enablement")
    return kinds


def _overlap_pattern(wa_rb, wb_ra, wa_wb):
    wr = set(wa_rb)
    wb = set(wb_ra)
    ww = set(wa_wb)
    if not wr and not wb and not ww:
        return "none"
    if wr and wr == wb == ww:
        return "symmetric_rewrite"
    if ww and not wr and not wb:
        return "write_write_only"
    if (wr or wb) and not ww:
        return "read_write_only"
    return "mixed"


def _uncertainty_risk(dep_strength, rw_strength, en_strength, pattern):
    if dep_strength != "weak":
        return "none"
    if en_strength == "weak":
        return "high"
    if rw_strength == "weak" and pattern in {"mixed", "read_write_only"}:
        return "medium"
    return "low"


# --- Enablement helpers ---

def _lookup_enablement(enablement_edges, pass_a, pass_b):
    return (
        enablement_edges.get((pass_a, pass_b))
        or enablement_edges.get((pass_b, pass_a))
        or []
    )


def _enablement_strength(edges):
    if not edges:
        return "none"
    strengths = {_single_edge_strength(e) for e in edges}
    if "strong" in strengths:
        return "strong"
    if "weak" in strengths:
        return "weak"
    return "none"


def _single_edge_strength(edge):
    kind = edge.get("edge_kind", "activation")
    if kind == "activation":
        return "strong"
    tokens = _enablement_tokens(edge)
    if any(token_strength(t) == "strong" for t in tokens):
        return "strong"
    return "weak" if tokens else "weak"


def _enablement_tokens(edge):
    kind = edge.get("edge_kind", "")
    if kind == "expansion":
        return edge.get("new_writes_after_prefix", []) or edge.get("writes_after_prefix", [])
    if kind == "mutation":
        return edge.get("changed_writes_after_prefix", []) or edge.get("writes_after_prefix", [])
    return edge.get("writes_after_prefix", [])


def _format_en_edge_kinds(edges):
    return sorted({e.get("edge_kind", "") for e in edges})


def _format_en_edges(edges):
    return [f"{e['enabler']}->{e['enabled']}" for e in edges]


def _format_en_evidence(edges):
    return [
        f"kind={e.get('edge_kind','')} round={e.get('round','')} "
        f"prefix={','.join(e.get('prefix',[]))} "
        f"writes={';'.join(e.get('writes_after_prefix',[]))}"
        for e in edges
    ]


# --- Summaries ---

def summarize(rows):
    return {
        "total_pairs": len(rows),
        "independent_pairs": sum(1 for r in rows if r["classification"] == "independent"),
        "dependent_pairs": sum(1 for r in rows if r["classification"] == "dependent"),
        "uncertain_pairs": sum(1 for r in rows if r["classification"] == "uncertain"),
    }


# --- Output ---

def _csv_cell(value):
    if isinstance(value, list):
        return ";".join(value)
    return value


def write_csv(rows, path):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for row in rows:
            writer.writerow({k: _csv_cell(row[k]) for k in CSV_FIELDS})


def write_json(rows, path):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(
        json.dumps({"summary": summarize(rows), "pairs": rows},
                   ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Analyze footprints and emit dependency results."
    )
    parser.add_argument("footprints", help="Input JSONL footprint file.")
    parser.add_argument("--out-csv", default="results/dependency_matrix.csv")
    parser.add_argument("--out-json", default="results/independence_analysis.json")
    parser.add_argument("--enablement-json", help="Optional enablement_probe JSON.")
    return parser.parse_args()


def main():
    args = parse_args()
    footprints = load_footprints(args.footprints)
    en_edges = load_enablement_edges(args.enablement_json) if args.enablement_json else None
    rows = analyze_pairs(footprints, enablement_edges=en_edges)
    write_csv(rows, args.out_csv)
    write_json(rows, args.out_json)
    s = summarize(rows)
    print(
        f"Analyzed {s['total_pairs']} pairs: "
        f"{s['independent_pairs']} independent, "
        f"{s['dependent_pairs']} dependent, "
        f"{s['uncertain_pairs']} uncertain."
    )


if __name__ == "__main__":
    main()
