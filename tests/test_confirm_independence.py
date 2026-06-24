import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class ConfirmIndependenceTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_confirmed_independent_requires_static_independent_and_commuting(self):
        from confirm_independence import build_confirmation_rows

        rows = build_confirmation_rows(
            "demo",
            validation_rows=[
                {
                    "pass_a": "dce",
                    "pass_b": "instcombine",
                    "footprint_classification": "independent",
                    "agreement": "agree_independent",
                    "commute": True,
                    "uncertainty_risk": "none",
                }
            ],
            rewrite_direction_rows=[],
        )

        self.assertEqual(rows[0]["confirmation"], "confirmed_independent")
        self.assertEqual(rows[0]["safety"], "safe")
        self.assertEqual(rows[0]["support_reason"], "static_independent_and_commuting")

    def test_exact_same_direction_convergence_is_likely_independent_not_confirmed(self):
        from confirm_independence import build_confirmation_rows

        rows = build_confirmation_rows(
            "demo",
            validation_rows=[
                {
                    "pass_a": "gvn",
                    "pass_b": "simplifycfg",
                    "footprint_classification": "dependent",
                    "agreement": "false_positive",
                    "commute": True,
                    "uncertainty_risk": "none",
                }
            ],
            rewrite_direction_rows=[
                {
                    "benchmark": "demo",
                    "pass_a": "gvn",
                    "pass_b": "simplifycfg",
                    "direction_classification": "commuting_false_positive",
                    "ab_equals_ba_text": "true",
                    "a_only_sha256": "aaa",
                    "b_only_sha256": "bbb",
                    "ab_sha256": "aaa",
                    "ba_sha256": "aaa",
                }
            ],
        )

        self.assertEqual(rows[0]["confirmation"], "likely_independent")
        self.assertEqual(rows[0]["safety"], "candidate")
        self.assertEqual(rows[0]["final_ir_relation"], "final_matches_a_only")
        self.assertEqual(rows[0]["support_reason"], "exact_convergence_to_single_pass_result")

    def test_order_sensitive_uncertain_stays_unsafe(self):
        from confirm_independence import build_confirmation_rows

        rows = build_confirmation_rows(
            "demo",
            validation_rows=[
                {
                    "pass_a": "early-cse",
                    "pass_b": "loop-rotate",
                    "footprint_classification": "uncertain",
                    "agreement": "uncertain_non_commuting",
                    "commute": False,
                    "uncertainty_risk": "high",
                }
            ],
            rewrite_direction_rows=[
                {
                    "benchmark": "demo",
                    "pass_a": "early-cse",
                    "pass_b": "loop-rotate",
                    "direction_classification": "order_sensitive",
                    "ab_equals_ba_text": "false",
                }
            ],
        )

        self.assertEqual(rows[0]["confirmation"], "order_sensitive")
        self.assertEqual(rows[0]["safety"], "unsafe")
        self.assertEqual(rows[0]["support_reason"], "high_risk_uncertain_non_commuting")

    def test_pair_summary_keeps_any_non_commuting_pair_out_of_independent_training(self):
        from confirm_independence import build_pair_confirmation_rows

        rows = build_pair_confirmation_rows(
            [
                {
                    "benchmark": "one",
                    "pass_a": "early-cse",
                    "pass_b": "loop-rotate",
                    "confirmation": "likely_independent",
                    "safety": "candidate",
                    "support_reason": "exact_convergence_to_single_pass_result",
                    "agreement": "uncertain_commuting",
                    "final_ir_relation": "final_matches_a_only",
                },
                {
                    "benchmark": "two",
                    "pass_a": "loop-rotate",
                    "pass_b": "early-cse",
                    "confirmation": "order_sensitive",
                    "safety": "unsafe",
                    "support_reason": "high_risk_uncertain_non_commuting",
                    "agreement": "uncertain_non_commuting",
                    "final_ir_relation": "ab_ba_differ",
                },
            ],
            min_stable_count=2,
        )

        self.assertEqual(rows[0]["recommendation"], "context_sensitive_keep_dependent")
        self.assertEqual(rows[0]["safe_for_independent_training"], "false")
        self.assertEqual(rows[0]["non_commuting_observations"], 1)


if __name__ == "__main__":
    unittest.main()
