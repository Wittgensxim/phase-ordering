"""
Benchmark suite runner: orchestrates the full analysis chain for one or more benchmarks.

This is the main entry point for running the dependency analysis pipeline:
  footprints → enablement → dependency → commutativity → validation → confirmation

Also supports suite-level aggregation and cross-benchmark analysis.
"""

import argparse
import csv
import hashlib
import json
import subprocess
from collections import defaultdict
from pathlib import Path

from analyze_footprints import (
    analyze_pairs, load_enablement_edges, load_footprints,
    write_csv as write_dependency_csv, write_json as write_dependency_json,
)
from collect_pass_footprints import collect_pass_footprints, write_footprints_jsonl
from commutativity_test import run_commutativity_tests, write_outputs as write_comm_outputs
from compare_validation import build_validation_rows, summarize as summarize_validation
from compare_validation import write_outputs as write_validation_outputs
from confirm_independence import (
    CONFIRMATION_FIELDS, HIGH_RISK_FIELDS,
    PAIR_ATTRIBUTION_FIELDS, PAIR_CONFIRMATION_FIELDS,
    build_confirmation_rows, build_high_risk_rows,
    build_pair_attribution_rows, build_pair_confirmation_rows,
    summarize_confirmation_rows,
)
from enablement_probe import OptFootprintRunner, probe_first_order_enablement
from enablement_probe import write_outputs as write_enablement_outputs
from scheduler_policy import classify_passes_for_scheduling


DEFAULT_PASSES = [
    "mem2reg",
    "instcombine",
    "simplifycfg",
    "dce",
    "sroa",
    "early-cse",
    "gvn",
    "sccp",
    "adce",
    "loop-simplify",
    "loop-rotate",
    "licm",
    "indvars",
    "loop-unroll",
    "reassociate",
]


# --- CSV field definitions ---

FALSE_POSITIVE_FIELDS = [
    "benchmark", "pass_a", "pass_b",
    "dependency_kinds", "dependency_strength",
    "read_write_strength", "enablement_strength",
    "uncertainty_risk", "strong_intersections", "weak_intersections",
    "intersection_token_kinds", "overlap_pattern",
    "enablement_edge_kinds",
    "wa_intersect_rb", "wb_intersect_ra", "wa_intersect_wb",
    "enablement_edges",
]

STABLE_FP_FIELDS = [
    "pass_a", "pass_b", "benchmark_count", "benchmarks",
    "dependency_kinds", "dependency_strength",
    "read_write_strength", "enablement_strength",
    "uncertainty_risk", "intersection_token_kinds",
    "overlap_pattern", "enablement_edge_kinds", "enablement_edges",
]

REWRITE_DIRECTION_FIELDS = [
    "benchmark", "pass_a", "pass_b",
    "footprint_classification", "agreement", "commute",
    "direction_classification", "overlap_pattern",
    "read_write_strength", "enablement_edge_kinds", "uncertainty_risk",
    "a_only_path", "b_only_path", "ab_path", "ba_path",
    "ab_equals_ba_text",
    "a_only_sha256", "b_only_sha256", "ab_sha256", "ba_sha256",
]

FAILED_BENCHMARK_FIELDS = ["benchmark", "error"]

SCHEDULER_POLICY_FIELDS = [
    "benchmark", "pass", "scheduler_class",
    "blocking_reasons", "incident_pairs",
]

SUMMARY_FIELDS = [
    "benchmark", "input_ir",
    "candidate_passes", "inactive_passes",
    "enable_edges",
    "dependency_pairs", "independent_pairs",
    "dependent_pairs", "uncertain_pairs",
    "validation_pairs",
    "agree_dependent", "agree_independent",
    "false_positive", "false_negative",
    "uncertain_commuting", "uncertain_non_commuting",
    "confirmed_independent_pairs", "likely_independent_pairs",
    "needs_attribution_pairs", "order_sensitive_pairs",
]


# --- Parsing ---

def parse_passes(value):
    return [p.strip() for p in value.split(",") if p.strip()]


def load_manifest(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    benchmarks = []
    for item in payload.get("benchmarks", []):
        benchmarks.append({
            "name": item["name"],
            "source": item.get("source"),
            "ir": item.get("ir"),
        })
    return benchmarks


# --- Compilation ---

def compile_to_ir(clang_path, source_path, output_ir):
    """Compile C/C++ source to LLVM IR at -O0 without optnone."""
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        str(clang_path), "-S", "-emit-llvm", "-O0",
        "-Xclang", "-disable-O0-optnone",
        "-Wno-implicit-int", "-Wno-implicit-function-declaration",
        str(source_path), "-o", str(output_path),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            f"clang failed for {source_path} (exit {result.returncode}): "
            f"{result.stderr.strip()}"
        )
    return output_path


# --- Candidate pass selection ---

def select_candidate_passes(passes, footprints, enablement):
    """Select passes that are active or enabled on current IR."""
    active = {
        p for p, r in footprints.items() if r.get("writes")
    }
    enabled = set(enablement.get("enabled_passes", []))
    candidates = active | enabled
    return [p for p in passes if p in candidates]


# --- False positive extraction ---

def extract_false_positive_rows(benchmark_name, validation_rows):
    rows = []
    for row in validation_rows:
        if row.get("agreement") != "false_positive":
            continue
        rows.append({
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
            "intersection_token_kinds": list(row.get("intersection_token_kinds", [])),
            "overlap_pattern": row.get("overlap_pattern", ""),
            "enablement_edge_kinds": list(row.get("enablement_edge_kinds", [])),
            "wa_intersect_rb": list(row.get("wa_intersect_rb", [])),
            "wb_intersect_ra": list(row.get("wb_intersect_ra", [])),
            "wa_intersect_wb": list(row.get("wa_intersect_wb", [])),
            "enablement_edges": list(row.get("enablement_edges", [])),
        })
    return rows


def build_stable_false_positive_rows(false_positive_rows, min_benchmarks):
    """Aggregate false positives across benchmarks, keeping those stable."""
    grouped = {}
    for row in false_positive_rows:
        pa, pb = sorted([row["pass_a"], row["pass_b"]])
        key = (pa, pb)
        entry = grouped.setdefault(key, {
            "pass_a": pa, "pass_b": pb,
            "benchmarks": set(),
            "dependency_kinds": set(), "dependency_strength": set(),
            "read_write_strength": set(), "enablement_strength": set(),
            "uncertainty_risk": set(), "intersection_token_kinds": set(),
            "overlap_pattern": set(), "enablement_edge_kinds": set(),
            "enablement_edges": set(),
        })
        entry["benchmarks"].add(row["benchmark"])
        for field in ["dependency_kinds", "dependency_strength", "read_write_strength",
                       "enablement_strength", "uncertainty_risk", "intersection_token_kinds",
                       "overlap_pattern", "enablement_edge_kinds", "enablement_edges"]:
            value = row.get(field)
            if value:
                if isinstance(value, list):
                    entry[field].update(value)
                else:
                    entry[field].add(value)

    stable_rows = []
    for entry in grouped.values():
        benchmarks = sorted(entry["benchmarks"])
        if len(benchmarks) < min_benchmarks:
            continue
        stable_rows.append({
            "pass_a": entry["pass_a"], "pass_b": entry["pass_b"],
            "benchmark_count": len(benchmarks), "benchmarks": benchmarks,
            "dependency_kinds": sorted(entry["dependency_kinds"]),
            "dependency_strength": sorted(entry["dependency_strength"]),
            "read_write_strength": sorted(entry["read_write_strength"]),
            "enablement_strength": sorted(entry["enablement_strength"]),
            "uncertainty_risk": sorted(entry["uncertainty_risk"]),
            "intersection_token_kinds": sorted(entry["intersection_token_kinds"]),
            "overlap_pattern": sorted(entry["overlap_pattern"]),
            "enablement_edge_kinds": sorted(entry["enablement_edge_kinds"]),
            "enablement_edges": sorted(entry["enablement_edges"]),
        })

    stable_rows.sort(key=lambda r: (-r["benchmark_count"], r["pass_a"], r["pass_b"]))
    return stable_rows


# --- Core: run single benchmark analysis ---

def run_benchmark(benchmark, passes, clang_path, opt_path, llvm_diff_path, out_dir):
    """Run the complete analysis chain for one benchmark.

    Returns dict with summary, false_positive_rows, confirmation_rows, paths.
    """
    bench_dir = Path(out_dir) / benchmark["name"]
    bench_dir.mkdir(parents=True, exist_ok=True)
    ir_path = _resolve_input_ir(benchmark, clang_path, bench_dir)

    # Step 1: Footprints
    fp_path = bench_dir / "footprints.jsonl"
    fp_records = collect_pass_footprints(ir_path, passes, opt_path, bench_dir / "pass_outputs")
    write_footprints_jsonl(fp_records, fp_path)
    footprints = load_footprints(fp_path)

    # Step 2: Enablement probing
    en_json = bench_dir / "enablement_probe.json"
    en_csv = bench_dir / "enablement_probe.csv"
    en_runner = OptFootprintRunner(ir_path, opt_path, bench_dir / "enablement_work")
    enablement = probe_first_order_enablement(passes, en_runner)
    write_enablement_outputs(enablement, en_json, en_csv)

    # Step 3: Dependency analysis
    en_edges = load_enablement_edges(en_json)
    dep_rows = analyze_pairs(footprints, enablement_edges=en_edges)
    dep_csv = bench_dir / "dependency_matrix.csv"
    dep_json = bench_dir / "independence_analysis.json"
    write_dependency_csv(dep_rows, dep_csv)
    write_dependency_json(dep_rows, dep_json)

    # Step 4: Commutativity tests
    candidate_passes = select_candidate_passes(passes, footprints, enablement)
    comm_json = bench_dir / "commutativity_results.json"
    comm_csv = bench_dir / "commutativity_results.csv"
    comm_rows = run_commutativity_tests(
        opt_path, llvm_diff_path, ir_path, candidate_passes,
        bench_dir / "commutativity",
    )
    write_comm_outputs(comm_rows, comm_json, comm_csv)

    # Step 5: Validation
    val_rows = build_validation_rows(dep_rows, comm_rows)
    _merge_dependency_fields(val_rows, dep_rows)
    val_csv = bench_dir / "validation_report.csv"
    val_json = bench_dir / "validation_report.json"
    write_validation_outputs(val_rows, val_csv, val_json)

    # Step 6: False positive extraction + Rewrite direction
    fp_rows = extract_false_positive_rows(benchmark["name"], val_rows)
    rw_rows = build_rewrite_direction_rows(
        benchmark["name"], val_rows, comm_rows, bench_dir / "pass_outputs",
    )

    # Step 7: Confirmation
    conf_rows = build_confirmation_rows(benchmark["name"], val_rows, rw_rows)

    # Build summary
    summary = _build_benchmark_summary(
        benchmark["name"], ir_path, candidate_passes,
        enablement, dep_rows, val_rows, conf_rows,
    )

    return {
        "summary": summary,
        "false_positive_rows": fp_rows,
        "rewrite_direction_rows": rw_rows,
        "confirmation_rows": conf_rows,
        "paths": {
            "footprints": str(fp_path),
            "enablement": str(en_json),
            "dependency": str(dep_json),
            "commutativity": str(comm_json),
            "validation": str(val_json),
        },
    }


def run_suite(benchmarks, passes, clang_path, opt_path, llvm_diff_path,
              out_dir, min_stable_count):
    """Run analysis chain across all benchmarks and aggregate results."""
    output_path = Path(out_dir)
    output_path.mkdir(parents=True, exist_ok=True)

    bench_results = []
    all_fp_rows = []
    all_rw_rows = []
    all_conf_rows = []
    failed_rows = []

    for bench in benchmarks:
        try:
            result = run_benchmark(bench, passes, clang_path, opt_path, llvm_diff_path, output_path)
            bench_results.append(result)
            all_fp_rows.extend(result["false_positive_rows"])
            all_rw_rows.extend(result["rewrite_direction_rows"])
            all_conf_rows.extend(result["confirmation_rows"])
        except Exception as exc:
            failed_rows.append({
                "benchmark": bench.get("name", "<unknown>"),
                "error": str(exc),
            })
            print(f"  FAILED: {bench.get('name')}: {exc}")

    stable_fp_rows = build_stable_false_positive_rows(all_fp_rows, min_stable_count)
    write_suite_outputs(
        bench_results, all_fp_rows, all_rw_rows, all_conf_rows,
        failed_rows, stable_fp_rows, output_path, min_stable_count,
    )

    return {
        "benchmarks": bench_results,
        "false_positive_rows": all_fp_rows,
        "rewrite_direction_rows": all_rw_rows,
        "confirmation_rows": all_conf_rows,
        "failed_benchmark_rows": failed_rows,
        "stable_false_positive_rows": stable_fp_rows,
    }


# --- Rewrite direction analysis ---

def build_rewrite_direction_rows(benchmark_name, validation_rows, commutativity_rows, pass_outputs_dir):
    comm_by_pair = {
        _pair_key(r["pass_a"], r["pass_b"]): r for r in commutativity_rows
    }
    rows = []
    for row in validation_rows:
        if row.get("agreement") not in {
            "false_positive", "uncertain_commuting", "uncertain_non_commuting",
        }:
            continue
        pa, pb = row["pass_a"], row["pass_b"]
        comm = comm_by_pair.get(_pair_key(pa, pb), {})
        a_path = Path(pass_outputs_dir) / f"{_safe_stem(pa)}.after.ll"
        b_path = Path(pass_outputs_dir) / f"{_safe_stem(pb)}.after.ll"
        ab_path = Path(comm.get("ab_path", ""))
        ba_path = Path(comm.get("ba_path", ""))
        commute = _bool_cell(row.get("commute"))

        rows.append({
            "benchmark": benchmark_name,
            "pass_a": pa, "pass_b": pb,
            "footprint_classification": row.get("footprint_classification", ""),
            "agreement": row.get("agreement", ""),
            "commute": "true" if commute else "false",
            "direction_classification": _direction_classification(row, commute),
            "overlap_pattern": row.get("overlap_pattern", ""),
            "read_write_strength": row.get("read_write_strength", ""),
            "enablement_edge_kinds": list(row.get("enablement_edge_kinds", [])),
            "uncertainty_risk": row.get("uncertainty_risk", "none"),
            "a_only_path": str(a_path),
            "b_only_path": str(b_path),
            "ab_path": str(ab_path),
            "ba_path": str(ba_path),
            "ab_equals_ba_text": "true" if _paths_text_equal(ab_path, ba_path) else "false",
            "a_only_sha256": _file_sha256(a_path),
            "b_only_sha256": _file_sha256(b_path),
            "ab_sha256": _file_sha256(ab_path),
            "ba_sha256": _file_sha256(ba_path),
        })
    return rows


# --- Suite output ---

def write_suite_outputs(bench_results, fp_rows, rw_rows, conf_rows,
                        failed_rows, stable_fp_rows, out_dir, min_stable_count):
    output_path = Path(out_dir)
    summaries = [r["summary"] for r in bench_results]

    write_rows_csv(summaries, output_path / "suite_summary.csv", SUMMARY_FIELDS)
    write_rows_csv(fp_rows, output_path / "false_positive_attribution.csv", FALSE_POSITIVE_FIELDS)
    write_rows_csv(rw_rows, output_path / "rewrite_direction_report.csv", REWRITE_DIRECTION_FIELDS)
    write_rows_csv(conf_rows, output_path / "independence_confirmation_report.csv", CONFIRMATION_FIELDS)

    pair_conf_rows = build_pair_confirmation_rows(conf_rows, min_stable_count)
    write_rows_csv(pair_conf_rows, output_path / "independence_confirmation_pairs.csv", PAIR_CONFIRMATION_FIELDS)

    high_risk_rows = build_high_risk_rows(conf_rows)
    write_rows_csv(high_risk_rows, output_path / "high_risk_uncertain_report.csv", HIGH_RISK_FIELDS)

    attr_rows = build_pair_attribution_rows(conf_rows, target_pairs=[("gvn", "simplifycfg")])
    write_rows_csv(attr_rows, output_path / "pair_attribution_report.csv", PAIR_ATTRIBUTION_FIELDS)
    write_rows_csv(failed_rows, output_path / "failed_benchmarks.csv", FAILED_BENCHMARK_FIELDS)
    write_rows_csv(stable_fp_rows, output_path / "stable_false_positive_pairs.csv", STABLE_FP_FIELDS)

    # Suite JSON summary
    (output_path / "suite_summary.json").write_text(
        json.dumps({
            "summary": _summarize_suite(summaries, stable_fp_rows, failed_rows),
            "benchmarks": summaries,
            "failed_benchmarks": failed_rows,
            "stable_false_positive_pairs": stable_fp_rows,
            "independence_confirmation": summarize_confirmation_rows(conf_rows),
        }, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


# --- Utilities ---

def _resolve_input_ir(benchmark, clang_path, bench_dir):
    if benchmark.get("ir"):
        return Path(benchmark["ir"])
    if benchmark.get("source"):
        ir_path = Path(bench_dir) / f"{benchmark['name']}.ll"
        return compile_to_ir(clang_path, benchmark["source"], ir_path)
    raise ValueError(f"Benchmark {benchmark.get('name')} needs source or ir")


def _merge_dependency_fields(validation_rows, dependency_rows):
    dep_by_pair = {
        _pair_key(r["pass_a"], r["pass_b"]): r for r in dependency_rows
    }
    for row in validation_rows:
        dep = dep_by_pair[_pair_key(row["pass_a"], row["pass_b"])]
        row["dependency_kinds"] = list(dep.get("dependency_kinds", []))
        row["enablement_strength"] = dep.get("enablement_strength", "none")
        row["uncertainty_risk"] = dep.get("uncertainty_risk", "none")
        row["enablement_edge_kinds"] = list(dep.get("enablement_edge_kinds", []))
        row["enablement_edges"] = list(dep.get("enablement_edges", []))


def _build_benchmark_summary(benchmark_name, input_ir, candidate_passes,
                              enablement, dep_rows, val_rows, conf_rows):
    es = enablement.get("summary", {})
    ds = {r["classification"]: 0 for r in dep_rows}
    for r in dep_rows:
        ds[r["classification"]] = ds.get(r["classification"], 0) + 1
    vs = summarize_validation(val_rows)
    cs = summarize_confirmation_rows(conf_rows)

    return {
        "benchmark": benchmark_name,
        "input_ir": str(input_ir),
        "candidate_passes": candidate_passes,
        "inactive_passes": es.get("inactive_passes", 0),
        "enable_edges": es.get("enable_edges", 0),
        "dependency_pairs": ds.get("independent", 0) + ds.get("dependent", 0) + ds.get("uncertain", 0),
        "independent_pairs": ds.get("independent", 0),
        "dependent_pairs": ds.get("dependent", 0),
        "uncertain_pairs": ds.get("uncertain", 0),
        "validation_pairs": vs["total_pairs"],
        "agree_dependent": vs["agree_dependent"],
        "agree_independent": vs["agree_independent"],
        "false_positive": vs["false_positive"],
        "false_negative": vs["false_negative"],
        "uncertain_commuting": vs["uncertain_commuting"],
        "uncertain_non_commuting": vs["uncertain_non_commuting"],
        "confirmed_independent_pairs": cs["confirmed_independent"],
        "likely_independent_pairs": cs["likely_independent"],
        "needs_attribution_pairs": cs["needs_attribution"],
        "order_sensitive_pairs": cs["order_sensitive"],
    }


def _direction_classification(row, commute):
    if row.get("agreement") == "false_positive":
        if row.get("overlap_pattern") == "write_write_only":
            return "write_write_convergence_candidate"
        return "rw_overlap_commuting_candidate"
    return "uncertain_rewrite"


def _summarize_suite(summaries, stable_fp, failed):
    total = len(summaries) + len(failed)
    return {
        "total_benchmarks": total,
        "completed": len(summaries),
        "failed": len(failed),
        "stable_false_positive_pairs": len(stable_fp),
    }


def _pair_key(pass_a, pass_b):
    return tuple(sorted((pass_a, pass_b)))


def _file_sha256(path):
    p = Path(path)
    if not p.exists():
        return "N/A"
    return hashlib.sha256(p.read_bytes()).hexdigest()


def _paths_text_equal(a, b):
    try:
        return Path(a).read_text(encoding="utf-8") == Path(b).read_text(encoding="utf-8")
    except OSError:
        return False


def _bool_cell(value):
    if isinstance(value, bool):
        return value
    if isinstance(value, str):
        return value.lower() == "true"
    return bool(value)


def _safe_stem(name):
    return name.replace(",", "_").replace(" ", "_")


def _csv_cell(value):
    if isinstance(value, bool):
        return "true" if value else "false"
    if value is None:
        return ""
    if isinstance(value, list):
        return ";".join(str(v) for v in value)
    return value


def write_rows_csv(rows, path, fields):
    p = Path(path)
    p.parent.mkdir(parents=True, exist_ok=True)
    with p.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow({k: _csv_cell(row.get(k, "")) for k in fields})


# --- CLI ---

def parse_args():
    parser = argparse.ArgumentParser(
        description="Run full benchmark analysis suite for phase ordering."
    )
    parser.add_argument("--ir", help="Single input LLVM IR file.")
    parser.add_argument("--name", default="benchmark", help="Benchmark name (single mode).")
    parser.add_argument("--manifest", help="JSON manifest with benchmark list.")
    parser.add_argument("--benchmark", help="Filter to specific benchmark in manifest.")
    parser.add_argument("--passes", help="Comma-separated pass list (overrides default).")
    parser.add_argument("--opt", default=r"E:\llvm\build\bin\opt.exe")
    parser.add_argument("--llvm-diff", default=r"E:\llvm\build\bin\llvm-diff.exe")
    parser.add_argument("--clang", default=r"E:\llvm\build\bin\clang.exe")
    parser.add_argument("--out-dir", default="results/benchmark_suite")
    parser.add_argument("--min-stable-count", type=int, default=3)
    parser.add_argument("--suite-only", action="store_true", help="Only produce suite-level reports.")
    return parser.parse_args()


def main():
    args = parse_args()
    passes = parse_passes(args.passes) if args.passes else DEFAULT_PASSES

    if args.manifest:
        benchmarks = load_manifest(args.manifest)
        if args.benchmark:
            benchmarks = [b for b in benchmarks if b["name"] == args.benchmark]
        print(f"Running {len(benchmarks)} benchmark(s) with {len(passes)} passes...")
        result = run_suite(
            benchmarks, passes, args.clang, args.opt, args.llvm_diff,
            args.out_dir, args.min_stable_count,
        )
        s = result.get("benchmarks", [])
        f = result.get("failed_benchmark_rows", [])
        print(f"\nDone: {len(s)} completed, {len(f)} failed.")
    elif args.ir:
        bench = {"name": args.name, "ir": args.ir}
        result = run_benchmark(bench, passes, args.clang, args.opt, args.llvm_diff, args.out_dir)
        s = result["summary"]
        print(
            f"\nBenchmark: {s['benchmark']}\n"
            f"  Candidate passes: {len(s['candidate_passes'])}\n"
            f"  Dependency: {s['independent_pairs']} indep / {s['dependent_pairs']} dep / {s['uncertain_pairs']} uncert\n"
            f"  Validation: {s['false_negative']} false_neg / {s['false_positive']} false_pos\n"
            f"  Confirmation: {s['confirmed_independent_pairs']} confirmed / {s['order_sensitive_pairs']} order_sensitive"
        )
    else:
        print("Specify --ir or --manifest.")


if __name__ == "__main__":
    main()
