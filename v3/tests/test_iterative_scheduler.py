"""
Tests for iterative_scheduler.py v3: executive scheduler logic.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class IterativeSchedulerTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_stop_conditions_metric_stagnation_detected(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["instcombine", "dce"],
            clang_path="clang", opt_path="opt", llvm_diff_path="llvm-diff",
            out_dir="/tmp/test", metric_stagnation_rounds=3,
        )
        scheduler.metric_history = [
            {"round": 0, "score": 100, "instruction_count": 50},
            {"round": 1, "score": 100, "instruction_count": 50},
            {"round": 2, "score": 100, "instruction_count": 50},
        ]
        self.assertTrue(scheduler._is_stagnating())

    def test_stop_conditions_no_stagnation_with_improvement(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["instcombine", "dce"],
            clang_path="clang", opt_path="opt", llvm_diff_path="llvm-diff",
            out_dir="/tmp/test", metric_stagnation_rounds=3,
        )
        scheduler.metric_history = [
            {"round": 0, "score": 100, "instruction_count": 50},
            {"round": 1, "score": 95, "instruction_count": 48},
            {"round": 2, "score": 90, "instruction_count": 45},
        ]
        self.assertFalse(scheduler._is_stagnating())

    def test_trace_fields_are_complete(self):
        from iterative_scheduler import TRACE_FIELDS

        required = [
            "round", "benchmark", "selected_action_kind", "selected_action",
            "changed", "metric_score", "metric_after", "metric_delta",
            "output_hash", "input_hash",
        ]
        for field in required:
            self.assertIn(field, TRACE_FIELDS,
                          msg=f"TRACE_FIELDS missing '{field}'")

    def test_action_key_for_single_pass(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["a", "b"], clang_path="c", opt_path="o",
            llvm_diff_path="d", out_dir="/tmp",
        )
        key = scheduler._action_key({"kind": "auto_safe_pass", "pass": "dce"})
        self.assertEqual(key, "single:dce")

    def test_action_key_for_ordered_pair(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["a", "b"], clang_path="c", opt_path="o",
            llvm_diff_path="d", out_dir="/tmp",
        )
        key = scheduler._action_key(
            {"kind": "oracle_ordered_pair", "passes": ["gvn", "instcombine"]}
        )
        self.assertEqual(key, "pair:gvn,instcombine")

    def test_action_key_is_order_independent(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["a", "b"], clang_path="c", opt_path="o",
            llvm_diff_path="d", out_dir="/tmp",
        )
        key1 = scheduler._action_key({"passes": ["a", "b"]})
        key2 = scheduler._action_key({"passes": ["b", "a"]})
        self.assertEqual(key1, key2)

    def test_filter_oracle_by_memory_skips_ineffective_pair(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["a", "b", "c"], clang_path="c", opt_path="o",
            llvm_diff_path="d", out_dir="/tmp",
        )
        scheduler.action_memory = [
            {"key": "pair:a,b", "improved": False, "changed": True, "round": 0},
        ]
        oracle_result = {
            "before_score": 100,
            "results": [
                {"pass_a": "a", "pass_b": "b", "best_direction": ["a", "b"],
                 "winner": "A->B", "best_score": 95},
                {"pass_a": "b", "pass_b": "c", "best_direction": ["b", "c"],
                 "winner": "A->B", "best_score": 90},
            ],
            "best_action": {"kind": "ordered_pair", "passes": ["a", "b"],
                           "winner": "A->B", "score_improvement": 5},
        }
        filtered = scheduler._filter_oracle_by_memory(oracle_result, "test")
        best = filtered["best_action"]
        self.assertEqual(best["passes"], ["b", "c"])

    def test_filter_oracle_by_memory_keeps_if_all_blacklisted(self):
        from iterative_scheduler import IterativeScheduler

        scheduler = IterativeScheduler(
            passes=["a", "b"], clang_path="c", opt_path="o",
            llvm_diff_path="d", out_dir="/tmp",
        )
        scheduler.action_memory = [
            {"key": "pair:a,b", "improved": False, "changed": True, "round": 0},
        ]
        oracle_result = {
            "before_score": 100,
            "results": [
                {"pass_a": "a", "pass_b": "b", "best_direction": ["a", "b"],
                 "winner": "A->B", "best_score": 95},
            ],
            "best_action": {"kind": "ordered_pair", "passes": ["a", "b"],
                           "winner": "A->B", "score_improvement": 5},
        }
        filtered = scheduler._filter_oracle_by_memory(oracle_result, "test")
        best = filtered["best_action"]
        self.assertEqual(best["passes"], ["a", "b"])


if __name__ == "__main__":
    unittest.main()
