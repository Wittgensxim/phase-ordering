import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class RunBenchmarkSuiteTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_compile_to_ir_accepts_legacy_c_sources(self):
        from run_benchmark_suite import compile_to_ir

        captured = {}

        def fake_run(command, text, capture_output, check):
            captured["command"] = command

            class Result:
                returncode = 0
                stderr = ""

            return Result()

        with patch("run_benchmark_suite.subprocess.run", fake_run):
            compile_to_ir(
                clang_path=Path("clang"),
                source_path=Path("legacy.c"),
                output_ir=Path("legacy.ll"),
            )

        self.assertIn("-Wno-implicit-int", captured["command"])
        self.assertIn("-Wno-implicit-function-declaration", captured["command"])

    def test_false_positive_rows_keep_dependency_strength_attribution(self):
        from run_benchmark_suite import extract_false_positive_rows

        rows = extract_false_positive_rows(
            "demo",
            [
                {
                    "pass_a": "early-cse",
                    "pass_b": "gvn",
                    "agreement": "false_positive",
                    "dependency_kinds": ["read_write"],
                    "dependency_strength": "strong",
                    "read_write_strength": "strong",
                    "strong_intersections": ["loop:main:4"],
                    "weak_intersections": ["bb:main:12"],
                    "intersection_token_kinds": ["bb", "loop"],
                    "wa_intersect_rb": ["loop:main:4"],
                    "wb_intersect_ra": [],
                    "wa_intersect_wb": ["bb:main:12"],
                    "enablement_edges": [],
                    "enablement_edge_kinds": [],
                    "enablement_strength": "none",
                }
            ],
        )

        self.assertEqual(rows[0]["benchmark"], "demo")
        self.assertEqual(rows[0]["dependency_strength"], "strong")
        self.assertEqual(rows[0]["read_write_strength"], "strong")
        self.assertEqual(rows[0]["strong_intersections"], ["loop:main:4"])
        self.assertEqual(rows[0]["weak_intersections"], ["bb:main:12"])
        self.assertEqual(rows[0]["intersection_token_kinds"], ["bb", "loop"])
        self.assertEqual(rows[0]["enablement_edge_kinds"], [])
        self.assertEqual(rows[0]["enablement_strength"], "none")

    def test_stable_false_positive_rows_group_enablement_edge_kinds(self):
        from run_benchmark_suite import build_stable_false_positive_rows

        rows = build_stable_false_positive_rows(
            [
                {
                    "benchmark": "one",
                    "pass_a": "sccp",
                    "pass_b": "sroa",
                    "dependency_kinds": ["read_write", "enablement"],
                    "dependency_strength": "weak",
                    "read_write_strength": "weak",
                    "intersection_token_kinds": ["inst"],
                    "overlap_pattern": "symmetric_rewrite",
                    "enablement_edges": ["sccp->sroa"],
                    "enablement_edge_kinds": ["expansion"],
                    "enablement_strength": "weak",
                },
                {
                    "benchmark": "two",
                    "pass_a": "sroa",
                    "pass_b": "sccp",
                    "dependency_kinds": ["enablement"],
                    "dependency_strength": "strong",
                    "read_write_strength": "none",
                    "intersection_token_kinds": [],
                    "overlap_pattern": "none",
                    "enablement_edges": ["sroa->sccp"],
                    "enablement_edge_kinds": ["activation"],
                    "enablement_strength": "strong",
                },
            ],
            min_benchmarks=2,
        )

        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["pass_a"], "sccp")
        self.assertEqual(rows[0]["pass_b"], "sroa")
        self.assertEqual(rows[0]["enablement_edge_kinds"], ["activation", "expansion"])
        self.assertEqual(rows[0]["enablement_strength"], ["strong", "weak"])

    def test_rewrite_direction_rows_identify_same_direction_candidates(self):
        from run_benchmark_suite import build_rewrite_direction_rows

        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            pass_outputs = tmp_path / "pass_outputs"
            commutativity = tmp_path / "commutativity"
            pass_outputs.mkdir()
            commutativity.mkdir()
            (pass_outputs / "early-cse.after.ll").write_text("define @a() {}\n", encoding="utf-8")
            (pass_outputs / "gvn.after.ll").write_text("define @b() {}\n", encoding="utf-8")
            ab_path = commutativity / "early-cse__then__gvn.ll"
            ba_path = commutativity / "gvn__then__early-cse.ll"
            ab_path.write_text("define @same() {}\n", encoding="utf-8")
            ba_path.write_text("define @same() {}\n", encoding="utf-8")

            rows = build_rewrite_direction_rows(
                benchmark_name="demo",
                validation_rows=[
                    {
                        "pass_a": "early-cse",
                        "pass_b": "gvn",
                        "footprint_classification": "dependent",
                        "agreement": "false_positive",
                        "commute": True,
                        "overlap_pattern": "symmetric_rewrite",
                        "read_write_strength": "weak",
                        "enablement_edge_kinds": ["expansion"],
                        "uncertainty_risk": "none",
                    }
                ],
                commutativity_rows=[
                    {
                        "pass_a": "early-cse",
                        "pass_b": "gvn",
                        "commute": True,
                        "ab_path": str(ab_path),
                        "ba_path": str(ba_path),
                    }
                ],
                pass_outputs_dir=pass_outputs,
            )

        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["benchmark"], "demo")
        self.assertEqual(rows[0]["direction_classification"], "same_direction_rewrite_candidate")
        self.assertEqual(rows[0]["a_only_path"], str(pass_outputs / "early-cse.after.ll"))
        self.assertEqual(rows[0]["b_only_path"], str(pass_outputs / "gvn.after.ll"))
        self.assertEqual(rows[0]["ab_equals_ba_text"], "true")
        self.assertEqual(len(rows[0]["ab_sha256"]), 64)

    def test_run_suite_records_failed_benchmark_and_continues(self):
        from run_benchmark_suite import run_suite

        def fake_run_benchmark(benchmark, passes, clang_path, opt_path, llvm_diff_path, out_dir):
            if benchmark["name"] == "bad":
                raise RuntimeError("opt failed for instcombine")
            return {
                "summary": {
                    "benchmark": benchmark["name"],
                    "input_ir": "ok.ll",
                    "candidate_passes": ["instcombine"],
                    "inactive_passes": [],
                    "enable_edges": 0,
                    "dependency_pairs": 0,
                    "independent_pairs": 0,
                    "dependent_pairs": 0,
                    "uncertain_pairs": 0,
                    "validation_pairs": 0,
                    "agree_dependent": 0,
                    "agree_independent": 0,
                    "false_positive": 0,
                    "false_negative": 0,
                    "uncertain_commuting": 0,
                    "uncertain_non_commuting": 0,
                },
                "false_positive_rows": [],
                "rewrite_direction_rows": [],
                "confirmation_rows": [],
                "paths": {},
            }

        with tempfile.TemporaryDirectory() as tmpdir:
            with patch("run_benchmark_suite.run_benchmark", fake_run_benchmark):
                result = run_suite(
                    benchmarks=[
                        {"name": "ok", "source": "ok.c", "ir": None},
                        {"name": "bad", "source": "bad.c", "ir": None},
                    ],
                    passes=["instcombine"],
                    clang_path=Path("clang"),
                    opt_path=Path("opt"),
                    llvm_diff_path=Path("llvm-diff"),
                    out_dir=tmpdir,
                    min_stable_count=2,
                )

            failed_csv = Path(tmpdir) / "failed_benchmarks.csv"

            self.assertEqual(len(result["benchmarks"]), 1)
            self.assertEqual(result["benchmarks"][0]["summary"]["benchmark"], "ok")
            self.assertEqual(len(result["failed_benchmark_rows"]), 1)
            self.assertEqual(result["failed_benchmark_rows"][0]["benchmark"], "bad")
            self.assertIn("opt failed", result["failed_benchmark_rows"][0]["error"])
            self.assertTrue(failed_csv.exists())

    def test_write_suite_outputs_emits_independence_confirmation_reports(self):
        from run_benchmark_suite import write_suite_outputs

        with tempfile.TemporaryDirectory() as tmpdir:
            write_suite_outputs(
                benchmark_results=[
                    {
                        "summary": {
                            "benchmark": "demo",
                            "input_ir": "demo.ll",
                            "candidate_passes": ["gvn", "simplifycfg"],
                            "inactive_passes": [],
                            "enable_edges": 0,
                            "dependency_pairs": 1,
                            "independent_pairs": 0,
                            "dependent_pairs": 1,
                            "uncertain_pairs": 0,
                            "validation_pairs": 1,
                            "agree_dependent": 0,
                            "agree_independent": 0,
                            "false_positive": 1,
                            "false_negative": 0,
                            "uncertain_commuting": 0,
                            "uncertain_non_commuting": 0,
                            "confirmed_independent_pairs": 0,
                            "likely_independent_pairs": 1,
                            "needs_attribution_pairs": 0,
                            "order_sensitive_pairs": 0,
                        }
                    }
                ],
                false_positive_rows=[],
                rewrite_direction_rows=[],
                confirmation_rows=[
                    {
                        "benchmark": "demo",
                        "pass_a": "gvn",
                        "pass_b": "simplifycfg",
                        "confirmation": "likely_independent",
                        "safety": "candidate",
                        "support_reason": "exact_convergence_to_single_pass_result",
                        "agreement": "false_positive",
                        "final_ir_relation": "final_matches_a_only",
                        "direction_classification": "commuting_false_positive",
                        "uncertainty_risk": "none",
                        "footprint_classification": "dependent",
                    }
                ],
                failed_benchmark_rows=[],
                stable_false_positive_rows=[],
                out_dir=tmpdir,
                min_stable_count=2,
            )

            self.assertTrue((Path(tmpdir) / "independence_confirmation_report.csv").exists())
            self.assertTrue((Path(tmpdir) / "independence_confirmation_pairs.csv").exists())
            self.assertTrue((Path(tmpdir) / "high_risk_uncertain_report.csv").exists())
            self.assertTrue((Path(tmpdir) / "pair_attribution_report.csv").exists())

    def test_suite_summary_counts_uncertain_pairs(self):
        from run_benchmark_suite import _build_benchmark_summary

        summary = _build_benchmark_summary(
            benchmark_name="demo",
            input_ir=Path("demo.ll"),
            candidate_passes=["A", "B", "C"],
            enablement={"inactive_passes": [], "summary": {"enable_edges": 0}},
            dependency_rows=[
                {"classification": "dependent"},
                {"classification": "independent"},
                {"classification": "uncertain"},
            ],
            validation_rows=[
                {"agreement": "agree_dependent"},
                {"agreement": "agree_independent"},
                {"agreement": "uncertain_commuting"},
            ],
        )

        self.assertEqual(summary["dependent_pairs"], 1)
        self.assertEqual(summary["independent_pairs"], 1)
        self.assertEqual(summary["uncertain_pairs"], 1)
        self.assertEqual(summary["uncertain_commuting"], 1)


if __name__ == "__main__":
    unittest.main()
