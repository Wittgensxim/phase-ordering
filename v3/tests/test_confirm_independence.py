"""
Tests for confirm_independence.py: confirmation decision logic.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class ConfirmationDecisionTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_agree_independent_yields_confirmed_independent(self):
        from confirm_independence import build_confirmation_rows

        validation = [
            {"pass_a": "a", "pass_b": "b", "agreement": "agree_independent",
             "classification": "independent", "uncertainty_risk": "none"},
        ]
        rewrite = []
        rows = build_confirmation_rows("test", validation, rewrite)
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["confirmation"], "confirmed_independent")
        self.assertEqual(rows[0]["safety"], "safe")

    def test_agree_dependent_yields_order_sensitive(self):
        from confirm_independence import build_confirmation_rows

        validation = [
            {"pass_a": "a", "pass_b": "b", "agreement": "agree_dependent",
             "classification": "dependent", "uncertainty_risk": "none"},
        ]
        rewrite = []
        rows = build_confirmation_rows("test", validation, rewrite)
        self.assertEqual(rows[0]["confirmation"], "order_sensitive")
        self.assertEqual(rows[0]["safety"], "unsafe")

    def test_false_negative_yields_order_sensitive(self):
        from confirm_independence import build_confirmation_rows

        validation = [
            {"pass_a": "a", "pass_b": "b", "agreement": "false_negative",
             "classification": "independent", "uncertainty_risk": "none"},
        ]
        rewrite = []
        rows = build_confirmation_rows("test", validation, rewrite)
        self.assertEqual(rows[0]["confirmation"], "order_sensitive")

    def test_false_positive_with_exact_convergence_yields_likely_independent(self):
        from confirm_independence import build_confirmation_rows

        validation = [
            {"pass_a": "a", "pass_b": "b", "agreement": "false_positive",
             "classification": "dependent", "uncertainty_risk": "none"},
        ]
        rewrite = [
            {"pass_a": "a", "pass_b": "b", "direction_classification": "",
             "ab_sha256": "abc123", "ba_sha256": "abc123",
             "a_only_sha256": "abc123", "b_only_sha256": "def456"},
        ]
        rows = build_confirmation_rows("test", validation, rewrite)
        self.assertEqual(rows[0]["confirmation"], "likely_independent")

    def test_summarize_counts_each_confirmation_class(self):
        from confirm_independence import summarize_confirmation_rows

        rows = [
            {"confirmation": "confirmed_independent"},
            {"confirmation": "confirmed_independent"},
            {"confirmation": "likely_independent"},
            {"confirmation": "order_sensitive"},
            {"confirmation": "needs_attribution"},
        ]
        summary = summarize_confirmation_rows(rows)
        self.assertEqual(summary["confirmed_independent"], 2)
        self.assertEqual(summary["likely_independent"], 1)
        self.assertEqual(summary["order_sensitive"], 1)
        self.assertEqual(summary["needs_attribution"], 1)


if __name__ == "__main__":
    unittest.main()
