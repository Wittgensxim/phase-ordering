"""
Tests for oracle_chooser.py: ordered-pair oracle selection.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class OracleChooserTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_oracle_choose_best_pair_empty_returns_none(self):
        from oracle_chooser import oracle_choose_best_pair

        result = oracle_choose_best_pair(
            opt_path="opt", input_ir="test.ll",
            candidate_pairs=[], work_dir="/tmp",
        )
        self.assertIsNone(result["best_action"])
        self.assertEqual(result["results"], [])

    def test_decision_pairs_extraction_from_confirmation(self):
        from scheduler_policy import decision_required_pairs

        rows = [
            {"pass_a": "gvn", "pass_b": "simplifycfg", "confirmation": "order_sensitive"},
            {"pass_a": "dce", "pass_b": "adce", "confirmation": "confirmed_independent"},
            {"pass_a": "instcombine", "pass_b": "sroa", "confirmation": "order_sensitive"},
        ]
        pairs = decision_required_pairs(rows, ["gvn", "simplifycfg", "dce", "adce", "instcombine", "sroa"])
        self.assertIn(("gvn", "simplifycfg"), pairs)
        self.assertIn(("instcombine", "sroa"), pairs)
        self.assertNotIn(("dce", "adce"), pairs)


if __name__ == "__main__":
    unittest.main()
