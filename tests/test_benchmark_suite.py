import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class BenchmarkSuiteTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_suite_runner_produces_per_benchmark_stage_outputs(self):
        from benchmark_suite import Benchmark, BenchmarkSuiteRunner

        calls = []

        def fake_run_benchmark(benchmark, passes, output_dir):
            calls.append((benchmark, tuple(passes), output_dir))
            return {
                "benchmark": benchmark.name,
                "ir_path": str(benchmark.ir_path),
                "outputs": {
                    "footprints": str(output_dir / "footprints.jsonl"),
                    "enablement": str(output_dir / "enablement.json"),
                    "commutativity": str(output_dir / "commutativity.json"),
                    "validation": str(output_dir / "validation.json"),
                },
                "validation": {
                    "summary": {
                        "total_pairs": 1,
                        "false_positive": 0,
                    },
                    "pairs": [],
                },
                "false_positive": {
                    "count": 0,
                    "pairs": [],
                },
            }

        runner = BenchmarkSuiteRunner(
            passes=["instcombine", "simplifycfg"],
            output_root=Path("results") / "suite",
            run_benchmark=fake_run_benchmark,
        )

        result = runner.run(
            [
                Benchmark("demo", Path("examples/demo.ll")),
                Benchmark("switch", Path("examples/singlesource/2003-04-22-Switch.ll")),
            ]
        )

        self.assertEqual([item["benchmark"] for item in result["benchmarks"]], ["demo", "switch"])
        self.assertEqual(
            result["benchmarks"][0]["outputs"],
            {
                "footprints": "results/suite/demo/footprints.jsonl",
                "enablement": "results/suite/demo/enablement.json",
                "commutativity": "results/suite/demo/commutativity.json",
                "validation": "results/suite/demo/validation.json",
            },
        )
        self.assertEqual(
            [call[2] for call in calls],
            [Path("results") / "suite" / "demo", Path("results") / "suite" / "switch"],
        )
        self.assertEqual(calls[0][1], ("instcombine", "simplifycfg"))
        self.assertEqual(result["summary"]["benchmarks"], 2)
        self.assertEqual(result["summary"]["false_positive"], 0)
        self.assertEqual(result["false_positive"], [])

    def test_suite_runner_attributes_false_positives_to_stable_benchmark_identity(self):
        from benchmark_suite import Benchmark, BenchmarkSuiteRunner

        def fake_run_benchmark(benchmark, passes, output_dir):
            validation_pairs = {
                "demo": [
                    {
                        "pass_a": "instcombine",
                        "pass_b": "simplifycfg",
                        "agreement": "false_positive",
                    }
                ],
                "switch": [
                    {
                        "pass_a": "sroa",
                        "pass_b": "loop-unroll",
                        "agreement": "false_positive",
                    }
                ],
            }[benchmark.name]
            return {
                "benchmark": benchmark.name,
                "ir_path": str(benchmark.ir_path),
                "outputs": {
                    "footprints": str(output_dir / "footprints.jsonl"),
                    "enablement": str(output_dir / "enablement.json"),
                    "commutativity": str(output_dir / "commutativity.json"),
                    "validation": str(output_dir / "validation.json"),
                },
                "validation": {
                    "summary": {
                        "total_pairs": 1,
                        "false_positive": 1,
                    },
                    "pairs": validation_pairs,
                },
            }

        runner = BenchmarkSuiteRunner(
            passes=["instcombine", "simplifycfg", "sroa", "loop-unroll"],
            output_root=Path("results") / "suite",
            run_benchmark=fake_run_benchmark,
        )

        result = runner.run(
            [
                Benchmark("demo", Path("examples/demo.ll")),
                Benchmark("switch", Path("examples/singlesource/2003-04-22-Switch.ll")),
            ]
        )

        self.assertEqual(result["summary"]["false_positive"], 2)
        self.assertEqual(
            result["false_positive"],
            [
                {
                    "benchmark": "demo",
                    "ir_path": "examples/demo.ll",
                    "pass_a": "instcombine",
                    "pass_b": "simplifycfg",
                },
                {
                    "benchmark": "switch",
                    "ir_path": "examples/singlesource/2003-04-22-Switch.ll",
                    "pass_a": "sroa",
                    "pass_b": "loop-unroll",
                },
            ],
        )
        self.assertEqual(result["benchmarks"][0]["false_positive"]["count"], 1)
        self.assertEqual(
            result["benchmarks"][1]["false_positive"]["pairs"],
            [
                {
                    "benchmark": "switch",
                    "ir_path": "examples/singlesource/2003-04-22-Switch.ll",
                    "pass_a": "sroa",
                    "pass_b": "loop-unroll",
                }
            ],
        )


if __name__ == "__main__":
    unittest.main()
