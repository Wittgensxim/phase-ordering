import argparse
import json
from dataclasses import dataclass
from pathlib import Path

from analyze_footprints import analyze_pairs, load_enablement_edges, load_footprints, write_json as write_dependency_json
from collect_pass_footprints import collect_pass_footprints, write_footprints_jsonl
from commutativity_test import run_commutativity_tests, write_outputs as write_commutativity_outputs
from compare_validation import build_validation_rows, load_pairs, write_outputs as write_validation_outputs
from enablement_probe import OptFootprintRunner, probe_first_order_enablement, write_outputs as write_enablement_outputs


@dataclass(frozen=True)
class Benchmark:
    name: str
    ir_path: Path


class BenchmarkSuiteRunner:
    def __init__(
        self,
        passes,
        output_root,
        opt_path=None,
        llvm_diff_path=None,
        run_benchmark=None,
    ):
        self.passes = list(passes)
        self.output_root = Path(output_root)
        self.opt_path = opt_path
        self.llvm_diff_path = llvm_diff_path
        self._run_benchmark = run_benchmark or self._run_real_benchmark

    def run(self, benchmarks):
        benchmark_results = []
        all_false_positive = []
        for benchmark in benchmarks:
            output_dir = self.output_root / benchmark.name
            result = self._run_benchmark(benchmark, self.passes, output_dir)
            result = _normalize_result(result)
            result = _with_false_positive_summary(result)
            benchmark_results.append(result)
            all_false_positive.extend(result["false_positive"]["pairs"])

        return {
            "summary": {
                "benchmarks": len(benchmark_results),
                "false_positive": len(all_false_positive),
            },
            "benchmarks": benchmark_results,
            "false_positive": all_false_positive,
        }

    def _run_real_benchmark(self, benchmark, passes, output_dir):
        if self.opt_path is None or self.llvm_diff_path is None:
            raise ValueError("opt_path and llvm_diff_path are required for real suite runs")

        output_dir = Path(output_dir)
        output_dir.mkdir(parents=True, exist_ok=True)

        footprint_path = output_dir / "footprints.jsonl"
        enablement_json = output_dir / "enablement.json"
        enablement_csv = output_dir / "enablement.csv"
        dependency_json = output_dir / "dependency.json"
        commutativity_json = output_dir / "commutativity.json"
        commutativity_csv = output_dir / "commutativity.csv"
        validation_json = output_dir / "validation.json"
        validation_csv = output_dir / "validation.csv"

        footprint_records = collect_pass_footprints(
            input_ir=benchmark.ir_path,
            passes=passes,
            opt_path=self.opt_path,
            work_dir=output_dir / "footprints",
        )
        write_footprints_jsonl(footprint_records, footprint_path)

        enablement = probe_first_order_enablement(
            passes=passes,
            runner=OptFootprintRunner(
                input_ir=benchmark.ir_path,
                opt_path=self.opt_path,
                work_dir=output_dir / "enablement_work",
            ),
        )
        write_enablement_outputs(enablement, enablement_json, enablement_csv)

        footprints = load_footprints(footprint_path)
        dependency_rows = analyze_pairs(
            footprints,
            enablement_edges=load_enablement_edges(enablement_json),
        )
        write_dependency_json(dependency_rows, dependency_json)

        commutativity_rows = run_commutativity_tests(
            opt_path=self.opt_path,
            llvm_diff_path=self.llvm_diff_path,
            input_ir=benchmark.ir_path,
            passes=passes,
            work_dir=output_dir / "commutativity_work",
        )
        write_commutativity_outputs(
            commutativity_rows,
            commutativity_json,
            commutativity_csv,
        )

        validation_rows = build_validation_rows(
            dependency_rows=load_pairs(dependency_json),
            commutativity_rows=load_pairs(commutativity_json),
        )
        write_validation_outputs(validation_rows, validation_csv, validation_json)

        return {
            "benchmark": benchmark.name,
            "ir_path": str(benchmark.ir_path),
            "outputs": {
                "footprints": str(footprint_path),
                "enablement": str(enablement_json),
                "commutativity": str(commutativity_json),
                "validation": str(validation_json),
            },
            "validation": json.loads(validation_json.read_text(encoding="utf-8")),
        }


def _with_false_positive_summary(result):
    false_positive_pairs = [
        {
            "benchmark": result["benchmark"],
            "ir_path": result["ir_path"],
            "pass_a": row["pass_a"],
            "pass_b": row["pass_b"],
        }
        for row in result["validation"].get("pairs", [])
        if row.get("agreement") == "false_positive"
    ]
    normalized = dict(result)
    normalized["false_positive"] = {
        "count": len(false_positive_pairs),
        "pairs": false_positive_pairs,
    }
    return normalized


def _normalize_result(result):
    normalized = dict(result)
    if "ir_path" in normalized:
        normalized["ir_path"] = Path(normalized["ir_path"]).as_posix()

    outputs = normalized.get("outputs")
    if isinstance(outputs, dict):
        normalized["outputs"] = {
            key: Path(value).as_posix() for key, value in outputs.items()
        }

    validation = normalized.get("validation")
    if isinstance(validation, dict):
        normalized_validation = dict(validation)
        pairs = normalized_validation.get("pairs")
        if isinstance(pairs, list):
            normalized_validation["pairs"] = [_normalize_pair(row) for row in pairs]
        normalized["validation"] = normalized_validation

    return normalized


def _normalize_pair(row):
    normalized = dict(row)
    if "ir_path" in normalized:
        normalized["ir_path"] = Path(normalized["ir_path"]).as_posix()
    return normalized


def parse_benchmark(value):
    if "=" in value:
        name, ir_path = value.split("=", 1)
        return Benchmark(name=name, ir_path=Path(ir_path))

    ir_path = Path(value)
    return Benchmark(name=ir_path.stem, ir_path=ir_path)


def parse_passes(value):
    return [item.strip() for item in value.split(",") if item.strip()]


def parse_args():
    parser = argparse.ArgumentParser(
        description="Run the full phase-ordering benchmark suite over multiple IR files."
    )
    parser.add_argument(
        "benchmarks",
        nargs="+",
        help="Benchmark IR paths, or name=path entries.",
    )
    parser.add_argument(
        "--passes",
        required=True,
        help="Comma-separated LLVM pass names shared by every benchmark.",
    )
    parser.add_argument(
        "--opt",
        default=r"E:\llvm\build\bin\opt.exe",
        help="Path to LLVM opt executable.",
    )
    parser.add_argument(
        "--llvm-diff",
        default=r"E:\llvm\build\bin\llvm-diff.exe",
        help="Path to llvm-diff executable.",
    )
    parser.add_argument(
        "--output-root",
        default="results/benchmark_suite",
        help="Directory for per-benchmark outputs.",
    )
    parser.add_argument(
        "--out-json",
        default="results/benchmark_suite.json",
        help="Suite summary JSON path.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    runner = BenchmarkSuiteRunner(
        passes=parse_passes(args.passes),
        output_root=args.output_root,
        opt_path=args.opt,
        llvm_diff_path=args.llvm_diff,
    )
    result = runner.run([parse_benchmark(value) for value in args.benchmarks])
    out_json = Path(args.out_json)
    out_json.parent.mkdir(parents=True, exist_ok=True)
    out_json.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(
        "Ran {benchmarks} benchmarks: {false_positive} false_positive pairs.".format(
            **result["summary"]
        )
    )


if __name__ == "__main__":
    main()
