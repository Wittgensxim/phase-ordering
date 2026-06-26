"""
Enablement probing: detects whether running pass A before pass B
causes B to become active (activation), expand its write set (expansion),
or produce different write values (mutation).

Uses OptFootprintRunner which caches intermediate IR files.
"""

import argparse
import csv
import json
import re
from pathlib import Path

from collect_pass_footprints import build_footprint_record
from commutativity_test import run_opt_pipeline


CSV_FIELDS = [
    "round", "edge_kind", "enabler", "enabled", "prefix",
    "reads_after_prefix", "writes_after_prefix",
    "new_writes_after_prefix", "changed_writes_after_prefix",
]


def probe_first_order_enablement(passes, runner):
    """Probe all first-order enablement relationships among passes."""
    baseline_records = {
        p: runner((), p) for p in passes
    }
    active_passes = {p for p, r in baseline_records.items() if not _is_noop(r)}
    baseline_inactive = {p for p, r in baseline_records.items() if _is_noop(r)}
    enabled_passes = set()
    expanded_passes = set()
    edges = []
    tested = 0

    for enabler in passes:
        if enabler not in active_passes:
            continue
        for enabled in passes:
            if enabler == enabled:
                continue
            tested += 1
            record = runner((enabler,), enabled)
            baseline = baseline_records[enabled]
            edge_kind = _classify_edge(baseline, record)
            if edge_kind is None:
                continue

            new_writes = sorted(
                set(record.get("writes", [])) - set(baseline.get("writes", []))
            )
            changed_writes = _changed_write_values(baseline, record)

            if edge_kind == "activation":
                enabled_passes.add(enabled)
            else:
                expanded_passes.add(enabled)

            edges.append({
                "edge_kind": edge_kind,
                "enabler": enabler,
                "enabled": enabled,
                "round": 1,
                "prefix": [enabler],
                "reads_after_prefix": sorted(record.get("reads", [])),
                "writes_after_prefix": sorted(record.get("writes", [])),
                "new_writes_after_prefix": new_writes,
                "changed_writes_after_prefix": changed_writes,
            })

    inactive_passes = baseline_inactive - enabled_passes
    return {
        "summary": {
            "total_passes": len(passes),
            "active_passes": len(active_passes),
            "enabled_passes": len(enabled_passes),
            "expanded_passes": len(expanded_passes),
            "inactive_passes": len(inactive_passes),
            "tested_prefix_pairs": tested,
            "activation_edges": sum(1 for e in edges if e["edge_kind"] == "activation"),
            "expansion_edges": sum(1 for e in edges if e["edge_kind"] == "expansion"),
            "mutation_edges": sum(1 for e in edges if e["edge_kind"] == "mutation"),
            "enable_edges": len(edges),
        },
        "active_passes": sorted(active_passes),
        "enabled_passes": sorted(enabled_passes),
        "expanded_passes": sorted(expanded_passes),
        "inactive_passes": sorted(inactive_passes),
        "edges": edges,
    }


def _is_noop(record):
    return not record.get("writes")


def _classify_edge(baseline, prefixed):
    if _is_noop(baseline):
        return None if _is_noop(prefixed) else "activation"
    baseline_writes = set(baseline.get("writes", []))
    prefixed_writes = set(prefixed.get("writes", []))
    if prefixed_writes - baseline_writes:
        return "expansion"
    if _changed_write_values(baseline, prefixed):
        return "mutation"
    return None


def _changed_write_values(baseline, prefixed):
    bv = baseline.get("write_values", {})
    pv = prefixed.get("write_values", {})
    common = set(baseline.get("writes", [])) & set(prefixed.get("writes", []))
    return sorted(t for t in common if bv.get(t) != pv.get(t))


class OptFootprintRunner:
    """Runs opt pipelines and caches intermediate IR files."""

    def __init__(self, input_ir, opt_path, work_dir):
        self.input_ir = Path(input_ir)
        self.opt_path = Path(opt_path)
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        self.prefix_cache = {(): self.input_ir}

    def __call__(self, prefix, pass_name):
        prefix = tuple(prefix)
        before_path = self._prefix_output(prefix)
        before_ir = before_path.read_text(encoding="utf-8")
        after_path = self._prefix_output(prefix + (pass_name,))
        after_ir = after_path.read_text(encoding="utf-8")
        return build_footprint_record(pass_name, before_ir, after_ir)

    def _prefix_output(self, prefix):
        prefix = tuple(prefix)
        if prefix in self.prefix_cache:
            return self.prefix_cache[prefix]
        output_path = self.work_dir / f"{_safe_name(_prefix_label(prefix))}.ll"
        run_opt_pipeline(self.opt_path, self.input_ir, list(prefix), output_path)
        self.prefix_cache[prefix] = output_path
        return output_path


# --- Output ---

def write_outputs(result, out_json, out_csv):
    json_path = Path(out_json)
    csv_path = Path(out_csv)
    json_path.parent.mkdir(parents=True, exist_ok=True)
    csv_path.parent.mkdir(parents=True, exist_ok=True)

    json_path.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    with csv_path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for edge in result["edges"]:
            writer.writerow({
                "round": edge["round"],
                "edge_kind": edge.get("edge_kind", ""),
                "enabler": edge["enabler"],
                "enabled": edge["enabled"],
                "prefix": ",".join(edge["prefix"]),
                "reads_after_prefix": ";".join(edge["reads_after_prefix"]),
                "writes_after_prefix": ";".join(edge["writes_after_prefix"]),
                "new_writes_after_prefix": ";".join(edge.get("new_writes_after_prefix", [])),
                "changed_writes_after_prefix": ";".join(edge.get("changed_writes_after_prefix", [])),
            })


# --- Utilities ---

def parse_passes(value):
    return [p.strip() for p in value.split(",") if p.strip()]


def _prefix_label(prefix):
    return "__then__".join(prefix) if prefix else "original"


def _safe_name(value):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value)


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Probe first-order pass enablement edges."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument("--passes", required=True, help="Comma-separated pass names.")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe", help="Path to opt.")
    parser.add_argument("--work-dir", default="results/enablement_probe")
    parser.add_argument("--out-json", default="results/enablement_probe.json")
    parser.add_argument("--out-csv", default="results/enablement_probe.csv")
    return parser.parse_args()


def main():
    args = parse_args()
    passes = parse_passes(args.passes)
    runner = OptFootprintRunner(args.input_ir, args.opt, args.work_dir)
    result = probe_first_order_enablement(passes, runner)
    write_outputs(result, args.out_json, args.out_csv)
    s = result["summary"]
    print(
        f"Probed {s['tested_prefix_pairs']} prefix pairs: "
        f"{s['enable_edges']} enable edges "
        f"(activation={s['activation_edges']}, "
        f"expansion={s['expansion_edges']}, "
        f"mutation={s['mutation_edges']})."
    )


if __name__ == "__main__":
    main()
