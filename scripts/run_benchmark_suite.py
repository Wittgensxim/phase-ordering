import argparse
import csv
import hashlib
import json
import subprocess
from collections import defaultdict
from pathlib import Path

from analyze_footprints import (
    analyze_pairs,
    load_enablement_edges,
    load_footprints,
    write_csv as write_dependency_csv,
    write_json as write_dependency_json,
)
from collect_pass_footprints import collect_pass_footprints, write_footprints_jsonl
from commutativity_test import run_commutativity_tests, write_outputs as write_commutativity_outputs
from compare_validation import build_validation_rows, summarize as summarize_validation
from compare_validation import write_outputs as write_validation_outputs
from enablement_probe import OptFootprintRunner, probe_first_order_enablement
from enablement_probe import write_outputs as write_enablement_outputs


DEFAULT_PASSES = [
    "instcombine",
    "simplifycfg",
    "sroa",
    "early-cse",
    "gvn",
    "sccp",
    "dce",
    "adce",
    "loop-simplify",
    "loop-rotate",
    "loop-unroll",
]

FALSE_POSITIVE_FIELDS = [
    "benchmark",
    "pass_a",
    "pass_b",
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
    "wa_intersect_rb",
    "wb_intersect_ra",
    "wa_intersect_wb",
    "enablement_edges",
]

STABLE_FALSE_POSITIVE_FIELDS = [
    "pass_a",
    "pass_b",
    "benchmark_count",
    "benchmarks",
    "dependency_kinds",
    "dependency_strength",
    "read_write_strength",
    "enablement_strength",
    "uncertainty_risk",
    "intersection_token_kinds",
    "overlap_pattern",
    "enablement_edge_kinds",
    "enablement_edges",
]

REWRITE_DIRECTION_FIELDS = [
    "benchmark",
    "pass_a",
    "pass_b",
    "footprint_classification",
    "agreement",
    "commute",
    "direction_classification",
    "overlap_pattern",
    "read_write_strength",
    "enablement_edge_kinds",
    "uncertainty_risk",
    "a_only_path",
    "b_only_path",
    "ab_path",
    "ba_path",
    "ab_equals_ba_text",
    "a_only_sha256",
    "b_only_sha256",
    "ab_sha256",
    "ba_sha256",
]

FAILED_BENCHMARK_FIELDS = [
    "benchmark",
    "error",
]

SUMMARY_FIELDS = [
    "benchmark",
    "input_ir",
    "candidate_passes",
    "inactive_passes",
    "enable_edges",
    "dependency_pairs",
    "independent_pairs",
    "dependent_pairs",
    "uncertain_pairs",
    "validation_pairs",
    "agree_dependent",
    "agree_independent",
    "false_positive",
    "false_negative",
    "uncertain_commuting",
    "uncertain_non_commuting",
]


def parse_passes(value):
    return [item.strip() for item in value.split(",") if item.strip()]


def load_manifest(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    benchmarks = []
    for item in payload.get("benchmarks", []):
        benchmarks.append(
            {
                "name": item["name"],
                "source": item.get("source"),
                "ir": item.get("ir"),
            }
        )
    return benchmarks


def compile_to_ir(clang_path, source_path, output_ir):
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    command = [
        str(clang_path),
        "-S",
        "-emit-llvm",
        "-O0",
        "-Xclang",
        "-disable-O0-optnone",
        "-Wno-implicit-int",
        "-Wno-implicit-function-declaration",
        str(source_path),
        "-o",
        str(output_path),
    ]
    result = subprocess.run(command, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            "clang failed for {source} with exit code {code}\n{stderr}".format(
                source=source_path,
                code=result.returncode,
                stderr=result.stderr.strip(),
            )
        )
    return output_path


def select_candidate_passes(passes, footprints, enablement):
    active_passes = {
        pass_name
        for pass_name, record in footprints.items()
        if record.get("writes")
    }
    enabled_passes = set(enablement.get("enabled_passes", []))
    candidates = active_passes | enabled_passes
    return [pass_name for pass_name in passes if pass_name in candidates]


def extract_false_positive_rows(benchmark_name, validation_rows):
    rows = []
    for row in validation_rows:
        if row.get("agreement") != "false_positive":
            continue

        rows.append(
            {
                "benchmark": benchmark_name,
                "pass_a": row["pass_a"],
                "pass_b": row["pass_b"],
                "dependency_kinds": list(row.get("dependency_kinds", [])),
                "dependency_strength": row.get("dependency_strength", ""),
                "read_write_strength": row.get("read_write_strength", ""),
                "enablement_strength": row.get("enablement_strength", ""),
                "uncertainty_risk": row.get("uncertainty_risk", ""),
                "strong_intersections": list(row.get("strong_intersections", [])),
                "weak_intersections": list(row.get("weak_intersections", [])),
                "intersection_token_kinds": list(
                    row.get("intersection_token_kinds", [])
                ),
                "overlap_pattern": row.get("overlap_pattern", ""),
                "enablement_edge_kinds": list(row.get("enablement_edge_kinds", [])),
                "wa_intersect_rb": list(row.get("wa_intersect_rb", [])),
                "wb_intersect_ra": list(row.get("wb_intersect_ra", [])),
                "wa_intersect_wb": list(row.get("wa_intersect_wb", [])),
                "enablement_edges": list(row.get("enablement_edges", [])),
            }
        )
    return rows


def build_stable_false_positive_rows(false_positive_rows, min_benchmarks):
    grouped = {}
    for row in false_positive_rows:
        pass_a, pass_b = sorted([row["pass_a"], row["pass_b"]])
        key = (pass_a, pass_b)
        entry = grouped.setdefault(
            key,
            {
                "pass_a": pass_a,
                "pass_b": pass_b,
                "benchmarks": set(),
                "dependency_kinds": set(),
                "dependency_strength": set(),
                "read_write_strength": set(),
                "enablement_strength": set(),
                "uncertainty_risk": set(),
                "intersection_token_kinds": set(),
                "overlap_pattern": set(),
                "enablement_edge_kinds": set(),
                "enablement_edges": set(),
            },
        )
        entry["benchmarks"].add(row["benchmark"])
        entry["dependency_kinds"].update(row.get("dependency_kinds", []))
        if row.get("dependency_strength"):
            entry["dependency_strength"].add(row["dependency_strength"])
        if row.get("read_write_strength"):
            entry["read_write_strength"].add(row["read_write_strength"])
        if row.get("enablement_strength"):
            entry["enablement_strength"].add(row["enablement_strength"])
        if row.get("uncertainty_risk"):
            entry["uncertainty_risk"].add(row["uncertainty_risk"])
        entry["intersection_token_kinds"].update(
            row.get("intersection_token_kinds", [])
        )
        if row.get("overlap_pattern"):
            entry["overlap_pattern"].add(row["overlap_pattern"])
        entry["enablement_edge_kinds"].update(
            row.get("enablement_edge_kinds", [])
        )
        entry["enablement_edges"].update(row.get("enablement_edges", []))

    stable_rows = []
    for entry in grouped.values():
        benchmarks = sorted(entry["benchmarks"])
        if len(benchmarks) < min_benchmarks:
            continue

        stable_rows.append(
            {
                "pass_a": entry["pass_a"],
                "pass_b": entry["pass_b"],
                "benchmark_count": len(benchmarks),
                "benchmarks": benchmarks,
                "dependency_kinds": sorted(entry["dependency_kinds"]),
                "dependency_strength": sorted(entry["dependency_strength"]),
                "read_write_strength": sorted(entry["read_write_strength"]),
                "enablement_strength": sorted(entry["enablement_strength"]),
                "uncertainty_risk": sorted(entry["uncertainty_risk"]),
                "intersection_token_kinds": sorted(entry["intersection_token_kinds"]),
                "overlap_pattern": sorted(entry["overlap_pattern"]),
                "enablement_edge_kinds": sorted(entry["enablement_edge_kinds"]),
                "enablement_edges": sorted(entry["enablement_edges"]),
            }
        )

    stable_rows.sort(
        key=lambda row: (-row["benchmark_count"], row["pass_a"], row["pass_b"])
    )
    return stable_rows


def run_benchmark(benchmark, passes, clang_path, opt_path, llvm_diff_path, out_dir):
    bench_dir = Path(out_dir) / benchmark["name"]
    bench_dir.mkdir(parents=True, exist_ok=True)
    ir_path = _resolve_input_ir(benchmark, clang_path, bench_dir)

    footprints_path = bench_dir / "footprints.jsonl"
    pass_outputs_dir = bench_dir / "pass_outputs"
    footprint_records = collect_pass_footprints(
        input_ir=ir_path,
        passes=passes,
        opt_path=opt_path,
        work_dir=pass_outputs_dir,
    )
    write_footprints_jsonl(footprint_records, footprints_path)
    footprints = load_footprints(footprints_path)

    enablement_json = bench_dir / "enablement_probe.json"
    enablement_csv = bench_dir / "enablement_probe.csv"
    enablement_runner = OptFootprintRunner(
        input_ir=ir_path,
        opt_path=opt_path,
        work_dir=bench_dir / "enablement_work",
    )
    enablement = probe_first_order_enablement(passes, enablement_runner)
    write_enablement_outputs(enablement, enablement_json, enablement_csv)

    enablement_edges = load_enablement_edges(enablement_json)
    dependency_rows = analyze_pairs(footprints, enablement_edges=enablement_edges)
    dependency_csv = bench_dir / "dependency_matrix.csv"
    dependency_json = bench_dir / "independence_analysis.json"
    write_dependency_csv(dependency_rows, dependency_csv)
    write_dependency_json(dependency_rows, dependency_json)

    candidate_passes = select_candidate_passes(passes, footprints, enablement)
    commutativity_json = bench_dir / "commutativity_results.json"
    commutativity_csv = bench_dir / "commutativity_results.csv"
    commutativity_rows = run_commutativity_tests(
        opt_path=opt_path,
        llvm_diff_path=llvm_diff_path,
        input_ir=ir_path,
        passes=candidate_passes,
        work_dir=bench_dir / "commutativity",
    )
    write_commutativity_outputs(
        commutativity_rows,
        commutativity_json,
        commutativity_csv,
    )

    validation_rows = build_validation_rows(dependency_rows, commutativity_rows)
    _merge_dependency_fields(validation_rows, dependency_rows)
    validation_csv = bench_dir / "validation_report.csv"
    validation_json = bench_dir / "validation_report.json"
    write_validation_outputs(validation_rows, validation_csv, validation_json)

    false_positive_rows = extract_false_positive_rows(
        benchmark["name"],
        validation_rows,
    )
    rewrite_direction_rows = build_rewrite_direction_rows(
        benchmark_name=benchmark["name"],
        validation_rows=validation_rows,
        commutativity_rows=commutativity_rows,
        pass_outputs_dir=pass_outputs_dir,
    )
    summary = _build_benchmark_summary(
        benchmark_name=benchmark["name"],
        input_ir=ir_path,
        candidate_passes=candidate_passes,
        enablement=enablement,
        dependency_rows=dependency_rows,
        validation_rows=validation_rows,
    )
    return {
        "summary": summary,
        "false_positive_rows": false_positive_rows,
        "rewrite_direction_rows": rewrite_direction_rows,
        "paths": {
            "footprints": str(footprints_path),
            "enablement": str(enablement_json),
            "dependency": str(dependency_json),
            "commutativity": str(commutativity_json),
            "validation": str(validation_json),
        },
    }


def run_suite(benchmarks, passes, clang_path, opt_path, llvm_diff_path, out_dir, min_stable_count):
    output_path = Path(out_dir)
    output_path.mkdir(parents=True, exist_ok=True)
    benchmark_results = []
    false_positive_rows = []
    rewrite_direction_rows = []
    failed_benchmark_rows = []
    for benchmark in benchmarks:
        try:
            result = run_benchmark(
                benchmark=benchmark,
                passes=passes,
                clang_path=clang_path,
                opt_path=opt_path,
                llvm_diff_path=llvm_diff_path,
                out_dir=output_path,
            )
        except Exception as exc:
            failed_benchmark_rows.append(
                {
                    "benchmark": benchmark.get("name", "<unknown>"),
                    "error": str(exc),
                }
            )
            continue

        benchmark_results.append(result)
        false_positive_rows.extend(result["false_positive_rows"])
        rewrite_direction_rows.extend(result["rewrite_direction_rows"])

    stable_rows = build_stable_false_positive_rows(
        false_positive_rows,
        min_benchmarks=min_stable_count,
    )
    write_suite_outputs(
        benchmark_results=benchmark_results,
        false_positive_rows=false_positive_rows,
        rewrite_direction_rows=rewrite_direction_rows,
        failed_benchmark_rows=failed_benchmark_rows,
        stable_false_positive_rows=stable_rows,
        out_dir=output_path,
    )
    return {
        "benchmarks": benchmark_results,
        "false_positive_rows": false_positive_rows,
        "rewrite_direction_rows": rewrite_direction_rows,
        "failed_benchmark_rows": failed_benchmark_rows,
        "stable_false_positive_rows": stable_rows,
    }


def write_suite_outputs(
    benchmark_results,
    false_positive_rows,
    rewrite_direction_rows,
    failed_benchmark_rows,
    stable_false_positive_rows,
    out_dir,
):
    output_path = Path(out_dir)
    summaries = [result["summary"] for result in benchmark_results]
    write_rows_csv(summaries, output_path / "suite_summary.csv", SUMMARY_FIELDS)
    write_rows_csv(
        false_positive_rows,
        output_path / "false_positive_attribution.csv",
        FALSE_POSITIVE_FIELDS,
    )
    write_rows_csv(
        rewrite_direction_rows,
        output_path / "rewrite_direction_report.csv",
        REWRITE_DIRECTION_FIELDS,
    )
    write_rows_csv(
        failed_benchmark_rows,
        output_path / "failed_benchmarks.csv",
        FAILED_BENCHMARK_FIELDS,
    )
    write_rows_csv(
        stable_false_positive_rows,
        output_path / "stable_false_positive_pairs.csv",
        STABLE_FALSE_POSITIVE_FIELDS,
    )
    payload = {
        "summary": _summarize_suite(
            summaries,
            stable_false_positive_rows,
            failed_benchmark_rows,
        ),
        "benchmarks": summaries,
        "failed_benchmarks": failed_benchmark_rows,
        "stable_false_positive_pairs": stable_false_positive_rows,
    }
    (output_path / "suite_summary.json").write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def write_rows_csv(rows, path, fields):
    output_path = Path(path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow({field: _csv_cell(row.get(field, "")) for field in fields})


def _resolve_input_ir(benchmark, clang_path, bench_dir):
    if benchmark.get("ir"):
        return Path(benchmark["ir"])
    if benchmark.get("source"):
        ir_path = Path(bench_dir) / f"{benchmark['name']}.ll"
        return compile_to_ir(clang_path, benchmark["source"], ir_path)
    raise ValueError(f"benchmark {benchmark.get('name', '<unknown>')} needs source or ir")


def _merge_dependency_fields(validation_rows, dependency_rows):
    dependency_by_pair = {
        _pair_key(row["pass_a"], row["pass_b"]): row for row in dependency_rows
    }
    for row in validation_rows:
        dependency = dependency_by_pair[_pair_key(row["pass_a"], row["pass_b"])]
        row["dependency_kinds"] = list(dependency.get("dependency_kinds", []))
        row["enablement_strength"] = dependency.get("enablement_strength", "none")
        row["uncertainty_risk"] = dependency.get("uncertainty_risk", "none")
        row["enablement_edge_kinds"] = list(
            dependency.get("enablement_edge_kinds", [])
        )
        row["enablement_edges"] = list(dependency.get("enablement_edges", []))
        row["enablement_evidence"] = list(dependency.get("enablement_evidence", []))


def build_rewrite_direction_rows(
    benchmark_name,
    validation_rows,
    commutativity_rows,
    pass_outputs_dir,
):
    commutativity_by_pair = {
        _pair_key(row["pass_a"], row["pass_b"]): row for row in commutativity_rows
    }
    rows = []
    for row in validation_rows:
        if row.get("agreement") not in {
            "false_positive",
            "uncertain_commuting",
            "uncertain_non_commuting",
        }:
            continue

        pass_a = row["pass_a"]
        pass_b = row["pass_b"]
        commutativity = commutativity_by_pair.get(_pair_key(pass_a, pass_b), {})
        a_only_path = Path(pass_outputs_dir) / f"{_pass_output_stem(pass_a)}.after.ll"
        b_only_path = Path(pass_outputs_dir) / f"{_pass_output_stem(pass_b)}.after.ll"
        ab_path = Path(commutativity.get("ab_path", ""))
        ba_path = Path(commutativity.get("ba_path", ""))
        commute = _bool_cell(row.get("commute"))

        rows.append(
            {
                "benchmark": benchmark_name,
                "pass_a": pass_a,
                "pass_b": pass_b,
                "footprint_classification": row.get("footprint_classification", ""),
                "agreement": row.get("agreement", ""),
                "commute": "true" if commute else "false",
                "direction_classification": _direction_classification(row, commute),
                "overlap_pattern": row.get("overlap_pattern", ""),
                "read_write_strength": row.get("read_write_strength", ""),
                "enablement_edge_kinds": list(row.get("enablement_edge_kinds", [])),
                "uncertainty_risk": row.get("uncertainty_risk", "none"),
                "a_only_path": str(a_only_path),
                "b_only_path": str(b_only_path),
                "ab_path": str(ab_path),
                "ba_path": str(ba_path),
                "ab_equals_ba_text": "true" if _paths_text_equal(ab_path, ba_path) else "false",
                "a_only_sha256": _file_sha256(a_only_path),
                "b_only_sha256": _file_sha256(b_only_path),
                "ab_sha256": _file_sha256(ab_path),
                "ba_sha256": _file_sha256(ba_path),
            }
        )

    return rows


def _build_benchmark_summary(
    benchmark_name,
    input_ir,
    candidate_passes,
    enablement,
    dependency_rows,
    validation_rows,
):
    dependency_summary = {
        "dependency_pairs": len(dependency_rows),
        "independent_pairs": sum(
            1 for row in dependency_rows if row["classification"] == "independent"
        ),
        "dependent_pairs": sum(
            1 for row in dependency_rows if row["classification"] == "dependent"
        ),
        "uncertain_pairs": sum(
            1 for row in dependency_rows if row["classification"] == "uncertain"
        ),
    }
    validation_summary = summarize_validation(validation_rows)
    return {
        "benchmark": benchmark_name,
        "input_ir": str(input_ir),
        "candidate_passes": list(candidate_passes),
        "inactive_passes": list(enablement.get("inactive_passes", [])),
        "enable_edges": enablement.get("summary", {}).get("enable_edges", 0),
        **dependency_summary,
        "validation_pairs": validation_summary["total_pairs"],
        "agree_dependent": validation_summary["agree_dependent"],
        "agree_independent": validation_summary["agree_independent"],
        "false_positive": validation_summary["false_positive"],
        "false_negative": validation_summary["false_negative"],
        "uncertain_commuting": validation_summary["uncertain_commuting"],
        "uncertain_non_commuting": validation_summary["uncertain_non_commuting"],
    }


def _summarize_suite(summaries, stable_false_positive_rows, failed_benchmark_rows=None):
    failed_benchmark_rows = failed_benchmark_rows or []
    return {
        "benchmarks": len(summaries),
        "failed_benchmarks": len(failed_benchmark_rows),
        "validation_pairs": sum(row["validation_pairs"] for row in summaries),
        "false_positive": sum(row["false_positive"] for row in summaries),
        "false_negative": sum(row["false_negative"] for row in summaries),
        "uncertain_commuting": sum(row["uncertain_commuting"] for row in summaries),
        "uncertain_non_commuting": sum(
            row["uncertain_non_commuting"] for row in summaries
        ),
        "stable_false_positive_pairs": len(stable_false_positive_rows),
    }


def _pair_key(pass_a, pass_b):
    return tuple(sorted([pass_a, pass_b]))


def _pass_output_stem(pass_name):
    return pass_name.replace(",", "_").replace(" ", "_")


def _bool_cell(value):
    if isinstance(value, bool):
        return value
    if isinstance(value, str):
        return value.lower() == "true"
    return bool(value)


def _direction_classification(row, commute):
    if not commute:
        return "order_sensitive"
    if row.get("overlap_pattern") == "symmetric_rewrite":
        return "same_direction_rewrite_candidate"
    if row.get("agreement") == "false_positive":
        return "commuting_false_positive"
    return "commuting_uncertain"


def _paths_text_equal(left_path, right_path):
    try:
        return Path(left_path).read_text(encoding="utf-8") == Path(right_path).read_text(
            encoding="utf-8"
        )
    except OSError:
        return False


def _file_sha256(path):
    try:
        return hashlib.sha256(Path(path).read_bytes()).hexdigest()
    except OSError:
        return ""


def _csv_cell(value):
    if isinstance(value, list):
        return ";".join(str(item) for item in value)
    return value


def parse_args():
    parser = argparse.ArgumentParser(
        description="Run the footprint/enrichment/commutativity validation chain over benchmarks."
    )
    parser.add_argument(
        "--manifest",
        default="configs/singlesource_smoke.json",
        help="JSON manifest with benchmark name/source or name/ir entries.",
    )
    parser.add_argument(
        "--passes",
        default=",".join(DEFAULT_PASSES),
        help="Comma-separated LLVM pass names.",
    )
    parser.add_argument(
        "--clang",
        default=r"E:\llvm\build\bin\clang.exe",
        help="Path to clang executable.",
    )
    parser.add_argument(
        "--opt",
        default=r"E:\llvm\build\bin\opt.exe",
        help="Path to opt executable.",
    )
    parser.add_argument(
        "--llvm-diff",
        default=r"E:\llvm\build\bin\llvm-diff.exe",
        help="Path to llvm-diff executable.",
    )
    parser.add_argument(
        "--out-dir",
        default="results/benchmark_suite",
        help="Directory for all per-benchmark and suite reports.",
    )
    parser.add_argument(
        "--min-stable-count",
        type=int,
        default=2,
        help="Minimum number of benchmarks for a false positive pair to be stable.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    result = run_suite(
        benchmarks=load_manifest(args.manifest),
        passes=parse_passes(args.passes),
        clang_path=args.clang,
        opt_path=args.opt,
        llvm_diff_path=args.llvm_diff,
        out_dir=args.out_dir,
        min_stable_count=args.min_stable_count,
    )
    print(
        "Ran {benchmarks} benchmarks: {false_positive} false_positive, "
        "{false_negative} false_negative, {uncertain_commuting} uncertain_commuting, "
        "{uncertain_non_commuting} uncertain_non_commuting, "
        "{stable} stable false-positive pairs, "
        "{failed} failed benchmarks.".format(
            benchmarks=len(result["benchmarks"]),
            false_positive=len(result["false_positive_rows"]),
            false_negative=sum(
                item["summary"]["false_negative"] for item in result["benchmarks"]
            ),
            uncertain_commuting=sum(
                item["summary"]["uncertain_commuting"] for item in result["benchmarks"]
            ),
            uncertain_non_commuting=sum(
                item["summary"]["uncertain_non_commuting"]
                for item in result["benchmarks"]
            ),
            stable=len(result["stable_false_positive_rows"]),
            failed=len(result["failed_benchmark_rows"]),
        )
    )


if __name__ == "__main__":
    main()
