import csv
import json
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class CommutativityTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_generate_pass_pairs_preserves_input_order(self):
        from commutativity_test import generate_pass_pairs

        pairs = generate_pass_pairs(["instcombine", "simplifycfg", "dce"])

        self.assertEqual(
            pairs,
            [
                ("instcombine", "simplifycfg"),
                ("instcombine", "dce"),
                ("simplifycfg", "dce"),
            ],
        )

    def test_build_pair_result_marks_zero_diff_exit_as_commuting(self):
        from commutativity_test import build_pair_result

        result = build_pair_result(
            "instcombine",
            "simplifycfg",
            diff_returncode=0,
            diff_stdout="",
            diff_stderr="",
            ab_path="results/commutativity/instcombine__simplifycfg.ll",
            ba_path="results/commutativity/simplifycfg__instcombine.ll",
        )

        self.assertTrue(result["commute"])
        self.assertEqual(result["pass_a"], "instcombine")
        self.assertEqual(result["pass_b"], "simplifycfg")
        self.assertEqual(result["details"], "")

    def test_build_pair_result_keeps_llvm_diff_details_for_non_commuting_pair(self):
        from commutativity_test import build_pair_result

        result = build_pair_result(
            "instcombine",
            "simplifycfg",
            diff_returncode=1,
            diff_stdout="in function main:\n  difference",
            diff_stderr="",
            ab_path="ab.ll",
            ba_path="ba.ll",
        )

        self.assertFalse(result["commute"])
        self.assertIn("difference", result["details"])

    def test_build_pair_result_treats_identical_ir_text_as_commuting(self):
        from commutativity_test import build_pair_result

        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            ab_path = tmp_path / "ab.ll"
            ba_path = tmp_path / "ba.ll"
            ir = "define i32 @main() {\nentry:\n  ret i32 0\n}\n"
            ab_path.write_text(ir, encoding="utf-8")
            ba_path.write_text(ir, encoding="utf-8")

            result = build_pair_result(
                "loop-simplify",
                "sccp",
                diff_returncode=1,
                diff_stdout="llvm-diff reported a structural difference",
                diff_stderr="",
                ab_path=ab_path,
                ba_path=ba_path,
            )

        self.assertTrue(result["commute"])
        self.assertIn("identical IR text", result["details"])

    def test_write_outputs_emits_json_and_csv(self):
        from commutativity_test import write_outputs

        results = [
            {
                "pass_a": "instcombine",
                "pass_b": "simplifycfg",
                "commute": False,
                "ab_path": "ab.ll",
                "ba_path": "ba.ll",
                "details": "different",
            }
        ]

        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            json_path = tmp_path / "commutativity_results.json"
            csv_path = tmp_path / "commutativity_results.csv"
            write_outputs(results, json_path, csv_path)
            payload = json.loads(json_path.read_text(encoding="utf-8"))
            with csv_path.open(encoding="utf-8", newline="") as handle:
                rows = list(csv.DictReader(handle))

        self.assertEqual(payload["summary"]["total_pairs"], 1)
        self.assertEqual(payload["summary"]["commuting_pairs"], 0)
        self.assertEqual(rows[0]["pass_a"], "instcombine")
        self.assertEqual(rows[0]["commute"], "false")


if __name__ == "__main__":
    unittest.main()
