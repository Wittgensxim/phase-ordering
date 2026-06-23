import csv
import json
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class CompareValidationTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_classify_agreement_detects_false_positive_and_agreement(self):
        from compare_validation import classify_agreement

        self.assertEqual(classify_agreement("dependent", False), "agree_dependent")
        self.assertEqual(classify_agreement("dependent", True), "false_positive")
        self.assertEqual(classify_agreement("independent", True), "agree_independent")
        self.assertEqual(classify_agreement("independent", False), "false_negative")
        self.assertEqual(classify_agreement("uncertain", True), "uncertain_commuting")
        self.assertEqual(classify_agreement("uncertain", False), "uncertain_non_commuting")

    def test_build_validation_rows_joins_dependency_and_commutativity_pairs(self):
        from compare_validation import build_validation_rows

        dependency_rows = [
            {
                "pass_a": "instcombine",
                "pass_b": "simplifycfg",
                "classification": "dependent",
                "wa_intersect_rb": ["inst:main:%sum"],
                "wb_intersect_ra": [],
                "wa_intersect_wb": [],
            },
            {
                "pass_a": "instcombine",
                "pass_b": "dce",
                "classification": "dependent",
                "wa_intersect_rb": [],
                "wb_intersect_ra": ["inst:main:%dead"],
                "wa_intersect_wb": [],
            },
            {
                "pass_a": "early-cse",
                "pass_b": "gvn",
                "classification": "uncertain",
                "wa_intersect_rb": ["inst:main:%10"],
                "wb_intersect_ra": [],
                "wa_intersect_wb": [],
            },
        ]
        commutativity_rows = [
            {
                "pass_a": "instcombine",
                "pass_b": "simplifycfg",
                "commute": False,
                "details": "different",
            },
            {
                "pass_a": "instcombine",
                "pass_b": "dce",
                "commute": True,
                "details": "",
            },
            {
                "pass_a": "early-cse",
                "pass_b": "gvn",
                "commute": True,
                "details": "",
            },
        ]

        rows = build_validation_rows(dependency_rows, commutativity_rows)

        self.assertEqual(rows[0]["agreement"], "agree_dependent")
        self.assertEqual(rows[0]["commute"], False)
        self.assertEqual(rows[0]["wa_intersect_rb"], ["inst:main:%sum"])
        self.assertEqual(rows[1]["agreement"], "false_positive")
        self.assertEqual(rows[1]["commute"], True)
        self.assertEqual(rows[2]["agreement"], "uncertain_commuting")
        self.assertEqual(rows[2]["footprint_classification"], "uncertain")

    def test_cli_writes_validation_report_csv_and_json(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            dependency_path = tmp_path / "dependency.json"
            commutativity_path = tmp_path / "commutativity.json"
            out_csv = tmp_path / "validation.csv"
            out_json = tmp_path / "validation.json"
            dependency_path.write_text(
                json.dumps(
                    {
                        "pairs": [
                            {
                                "pass_a": "instcombine",
                                "pass_b": "dce",
                                "classification": "dependent",
                                "wa_intersect_rb": [],
                                "wb_intersect_ra": ["inst:main:%dead"],
                                "wa_intersect_wb": [],
                            }
                        ]
                    }
                ),
                encoding="utf-8",
            )
            commutativity_path.write_text(
                json.dumps(
                    {
                        "pairs": [
                            {
                                "pass_a": "instcombine",
                                "pass_b": "dce",
                                "commute": True,
                                "details": "",
                            }
                        ]
                    }
                ),
                encoding="utf-8",
            )

            result = __import__("subprocess").run(
                [
                    sys.executable,
                    str(SCRIPTS / "compare_validation.py"),
                    "--dependency-json",
                    str(dependency_path),
                    "--commutativity-json",
                    str(commutativity_path),
                    "--out-csv",
                    str(out_csv),
                    "--out-json",
                    str(out_json),
                ],
                cwd=ROOT,
                text=True,
                capture_output=True,
                check=False,
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            with out_csv.open(encoding="utf-8", newline="") as handle:
                csv_rows = list(csv.DictReader(handle))
            payload = json.loads(out_json.read_text(encoding="utf-8"))

        self.assertEqual(csv_rows[0]["agreement"], "false_positive")
        self.assertEqual(payload["summary"]["false_positive"], 1)
        self.assertEqual(payload["summary"]["uncertain_commuting"], 0)


if __name__ == "__main__":
    unittest.main()
