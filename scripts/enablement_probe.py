import argparse
import csv
import json
import re
from pathlib import Path

from collect_pass_footprints import build_footprint_record
from commutativity_test import run_opt_pipeline


CSV_FIELDS = [
    "round",
    "edge_kind",
    "enabler",
    "enabled",
    "prefix",
    "reads_after_prefix",
    "writes_after_prefix",
    "new_writes_after_prefix",
    "changed_writes_after_prefix",
]


def probe_first_order_enablement(passes, runner):
    baseline_records = {
        pass_name: runner((), pass_name)
        for pass_name in passes
    }
    active_passes = {
        pass_name
        for pass_name, record in baseline_records.items()
        if not _is_noop(record)
    }
    baseline_inactive_passes = {
        pass_name
        for pass_name, record in baseline_records.items()
        if _is_noop(record)
    }
    enabled_passes = set()
    expanded_passes = set()
    edges = []
    tested_prefix_pairs = 0
    for enabler in passes:
        if enabler not in active_passes:
            continue

        for enabled in passes:
            if enabler == enabled:
                continue

            tested_prefix_pairs += 1
            record = runner((enabler,), enabled)
            baseline_record = baseline_records[enabled]
            edge_kind = _edge_kind(baseline_record, record)
            if edge_kind is None:
                continue

            new_writes = sorted(
                set(record.get("writes", [])) - set(baseline_record.get("writes", []))
            )
            changed_writes = _changed_write_values(baseline_record, record)
            if edge_kind == "activation":
                enabled_passes.add(enabled)
            else:
                expanded_passes.add(enabled)

            edges.append(
                {
                    "edge_kind": edge_kind,
                    "enabler": enabler,
                    "enabled": enabled,
                    "round": 1,
                    "prefix": [enabler],
                    "reads_after_prefix": sorted(record.get("reads", [])),
                    "writes_after_prefix": sorted(record.get("writes", [])),
                    "new_writes_after_prefix": new_writes,
                    "changed_writes_after_prefix": changed_writes,
                }
            )

    inactive_passes = baseline_inactive_passes - enabled_passes
    activation_edges = sum(
        1 for edge in edges if edge.get("edge_kind") == "activation"
    )
    expansion_edges = sum(
        1 for edge in edges if edge.get("edge_kind") == "expansion"
    )
    mutation_edges = sum(
        1 for edge in edges if edge.get("edge_kind") == "mutation"
    )
    return {
        "summary": {
            "total_passes": len(passes),
            "active_passes": len(active_passes),
            "enabled_passes": len(enabled_passes),
            "expanded_passes": len(expanded_passes),
            "inactive_passes": len(inactive_passes),
            "tested_prefix_pairs": tested_prefix_pairs,
            "activation_edges": activation_edges,
            "expansion_edges": expansion_edges,
            "mutation_edges": mutation_edges,
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


def _edge_kind(baseline_record, prefixed_record):
    if _is_noop(baseline_record):
        return None if _is_noop(prefixed_record) else "activation"

    baseline_writes = set(baseline_record.get("writes", []))
    prefixed_writes = set(prefixed_record.get("writes", []))
    if prefixed_writes - baseline_writes:
        return "expansion"
    if _changed_write_values(baseline_record, prefixed_record):
        return "mutation"
    return None


def _changed_write_values(baseline_record, prefixed_record):
    baseline_values = baseline_record.get("write_values", {})
    prefixed_values = prefixed_record.get("write_values", {})
    common_writes = set(baseline_record.get("writes", [])) & set(
        prefixed_record.get("writes", [])
    )
    return sorted(
        token
        for token in common_writes
        if baseline_values.get(token) != prefixed_values.get(token)
    )


class OptFootprintRunner:
    def __init__(self, input_ir, opt_path, work_dir):
        self.input_ir = Path(input_ir)
        self.opt_path = Path(opt_path)
        self.work_dir = Path(work_dir)
        self.work_dir.mkdir(parents=True, exist_ok=True)
        self.original_ir = self.input_ir.read_text(encoding="utf-8")
        self.prefix_cache = {(): self.input_ir}

    def __call__(self, prefix, pass_name):
        prefix = tuple(prefix)
        before_path = self._prefix_output(prefix)
        before_ir = before_path.read_text(encoding="utf-8")
        after_path = self.work_dir / f"{_safe_name(_prefix_label(prefix, pass_name))}.ll"
        run_opt_pipeline(self.opt_path, before_path, [pass_name], after_path)
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


def write_outputs(result, out_json, out_csv):
    json_path = Path(out_json)
    csv_path = Path(out_csv)
    json_path.parent.mkdir(parents=True, exist_ok=True)
    csv_path.parent.mkdir(parents=True, exist_ok=True)

    json_path.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    with csv_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for edge in result["edges"]:
            writer.writerow(
                {
                    "round": edge["round"],
                    "edge_kind": edge.get("edge_kind", "activation"),
                    "enabler": edge["enabler"],
                    "enabled": edge["enabled"],
                    "prefix": ",".join(edge["prefix"]),
                    "reads_after_prefix": ";".join(edge["reads_after_prefix"]),
                    "writes_after_prefix": ";".join(edge["writes_after_prefix"]),
                    "new_writes_after_prefix": ";".join(
                        edge.get("new_writes_after_prefix", [])
                    ),
                    "changed_writes_after_prefix": ";".join(
                        edge.get("changed_writes_after_prefix", [])
                    ),
                }
            )


def parse_passes(value):
    return [item.strip() for item in value.split(",") if item.strip()]


def _prefix_label(prefix, pass_name=None):
    parts = list(prefix)
    if pass_name is not None:
        parts.append(pass_name)
    return "__then__".join(parts) if parts else "original"


def _safe_name(value):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value)


def parse_args():
    parser = argparse.ArgumentParser(
        description="Probe first-order pass enablement edges."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument(
        "--passes",
        required=True,
        help="Comma-separated LLVM pass names.",
    )
    parser.add_argument(
        "--opt",
        default=r"E:\llvm\build\bin\opt.exe",
        help="Path to LLVM opt executable.",
    )
    parser.add_argument(
        "--work-dir",
        default="results/enablement_probe",
        help="Directory for temporary prefix and after-IR files.",
    )
    parser.add_argument(
        "--out-json",
        default="results/enablement_probe.json",
        help="Output JSON path.",
    )
    parser.add_argument(
        "--out-csv",
        default="results/enablement_probe.csv",
        help="Output CSV path.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    passes = parse_passes(args.passes)
    runner = OptFootprintRunner(
        input_ir=args.input_ir,
        opt_path=args.opt,
        work_dir=args.work_dir,
    )
    result = probe_first_order_enablement(passes=passes, runner=runner)
    write_outputs(result, args.out_json, args.out_csv)
    summary = result["summary"]
    print(
        "Probed {tested_prefix_pairs} prefix pairs over {inactive_passes} "
        "inactive passes: {enable_edges} enable edges.".format(**summary)
    )


if __name__ == "__main__":
    main()
