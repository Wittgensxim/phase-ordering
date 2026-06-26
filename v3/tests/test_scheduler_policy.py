"""
Tests for scheduler_policy.py v3: scheduling modes, threshold, mandatory orders.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class SchedulerPolicyTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    # --- Label mapping ---

    def test_confirmation_labels_map_to_scheduler_labels(self):
        from scheduler_policy import scheduler_label_for_confirmation

        self.assertEqual(
            scheduler_label_for_confirmation("confirmed_independent"), "auto_safe"
        )
        self.assertEqual(
            scheduler_label_for_confirmation("likely_independent"), "candidate_safe"
        )
        self.assertEqual(
            scheduler_label_for_confirmation("needs_attribution"), "blocked_for_auto"
        )
        self.assertEqual(
            scheduler_label_for_confirmation("order_sensitive"), "decision_required"
        )

    def test_relaxed_mode_promotes_likely_to_auto_safe(self):
        from scheduler_policy import scheduler_label_for_confirmation

        self.assertEqual(
            scheduler_label_for_confirmation("likely_independent", "relaxed"), "auto_safe"
        )
        self.assertEqual(
            scheduler_label_for_confirmation("likely_independent", "threshold"), "auto_safe"
        )
        # strict mode keeps it as candidate
        self.assertEqual(
            scheduler_label_for_confirmation("likely_independent", "strict"), "candidate_safe"
        )

    # --- Classification ---

    def test_only_pass_with_all_confirmed_edges_is_auto_safe(self):
        from scheduler_policy import classify_passes_for_scheduling

        rows = [
            {"pass_a": "dce", "pass_b": "instcombine", "confirmation": "confirmed_independent"},
            {"pass_a": "dce", "pass_b": "simplifycfg", "confirmation": "confirmed_independent"},
            {"pass_a": "instcombine", "pass_b": "simplifycfg", "confirmation": "order_sensitive"},
        ]

        result = classify_passes_for_scheduling(
            active_passes=["dce", "instcombine", "simplifycfg"],
            confirmation_rows=rows,
        )
        self.assertEqual(result["dce"]["scheduler_class"], "auto_safe")
        self.assertEqual(result["instcombine"]["scheduler_class"], "decision_required")
        self.assertEqual(result["simplifycfg"]["scheduler_class"], "decision_required")

    def test_likely_independent_blocks_auto_in_strict_mode(self):
        from scheduler_policy import classify_passes_for_scheduling

        rows = [
            {"pass_a": "early-cse", "pass_b": "gvn", "confirmation": "likely_independent"},
        ]
        result = classify_passes_for_scheduling(
            active_passes=["early-cse", "gvn"],
            confirmation_rows=rows,
            scheduler_mode="strict",
        )
        self.assertEqual(result["early-cse"]["scheduler_class"], "candidate_safe")

    def test_likely_independent_is_auto_safe_in_relaxed_mode(self):
        from scheduler_policy import classify_passes_for_scheduling

        rows = [
            {"pass_a": "early-cse", "pass_b": "gvn", "confirmation": "likely_independent"},
        ]
        result = classify_passes_for_scheduling(
            active_passes=["early-cse", "gvn"],
            confirmation_rows=rows,
            scheduler_mode="relaxed",
        )
        self.assertEqual(result["early-cse"]["scheduler_class"], "auto_safe")

    def test_threshold_mode_with_high_enough_ratio(self):
        from scheduler_policy import classify_passes_for_scheduling

        rows = [
            {"pass_a": "a", "pass_b": "b", "confirmation": "confirmed_independent"},
            {"pass_a": "a", "pass_b": "c", "confirmation": "likely_independent"},
            {"pass_a": "b", "pass_b": "c", "confirmation": "confirmed_independent"},
        ]
        # a has 2 safe edges out of 2 total → ratio = 1.0 ≥ 0.8
        result = classify_passes_for_scheduling(
            active_passes=["a", "b", "c"],
            confirmation_rows=rows,
            scheduler_mode="threshold",
            independence_threshold=0.8,
        )
        self.assertEqual(result["a"]["scheduler_class"], "auto_safe")

    def test_threshold_mode_below_threshold_not_auto_safe(self):
        from scheduler_policy import classify_passes_for_scheduling

        rows = [
            {"pass_a": "a", "pass_b": "b", "confirmation": "confirmed_independent"},
            {"pass_a": "a", "pass_b": "c", "confirmation": "order_sensitive"},
            {"pass_a": "b", "pass_b": "c", "confirmation": "confirmed_independent"},
        ]
        # a has 1 safe edge out of 2 → ratio = 0.5 < 0.9
        result = classify_passes_for_scheduling(
            active_passes=["a", "b", "c"],
            confirmation_rows=rows,
            scheduler_mode="threshold",
            independence_threshold=0.9,
        )
        self.assertNotEqual(result["a"]["scheduler_class"], "auto_safe")

    def test_decision_required_pairs_extraction(self):
        from scheduler_policy import decision_required_pairs

        rows = [
            {"pass_a": "a", "pass_b": "b", "confirmation": "order_sensitive"},
            {"pass_a": "a", "pass_b": "c", "confirmation": "confirmed_independent"},
            {"pass_a": "b", "pass_b": "c", "confirmation": "order_sensitive"},
        ]
        pairs = decision_required_pairs(rows, ["a", "b", "c"])
        self.assertIn(("a", "b"), pairs)
        self.assertIn(("b", "c"), pairs)
        self.assertNotIn(("a", "c"), pairs)

    def test_ablation_rows_cover_all_three_modes(self):
        from scheduler_policy import build_ablation_rows

        rows = [
            {"pass_a": "a", "pass_b": "b", "confirmation": "confirmed_independent"},
        ]
        ablation = build_ablation_rows("test", ["a", "b"], rows)
        self.assertEqual(len(ablation), 3)  # strict, relaxed, threshold
        modes = {r["scheduler_mode"] for r in ablation}
        self.assertEqual(modes, {"strict", "relaxed", "threshold"})


if __name__ == "__main__":
    unittest.main()
