"""
Tests for ir_metrics.py v3: IR metric measurement with TTI support.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class IRMetricsTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_measure_ir_text_counts_instructions(self):
        from ir_metrics import measure_ir_text

        ir = """
define i32 @add(i32 %a, i32 %b) {
entry:
  %sum = add i32 %a, %b
  ret i32 %sum
}
"""
        metrics = measure_ir_text(ir)
        self.assertEqual(metrics["function_count"], 1)
        self.assertEqual(metrics["instruction_count"], 2)  # add + ret
        self.assertGreaterEqual(metrics["basic_block_count"], 1)

    def test_measure_ir_text_ignores_declares(self):
        from ir_metrics import measure_ir_text

        ir = """
declare i32 @puts(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)

define void @foo() {
entry:
  ret void
}
"""
        metrics = measure_ir_text(ir)
        self.assertEqual(metrics["function_count"], 1)
        # Only 'ret void' inside foo
        self.assertEqual(metrics["instruction_count"], 1)

    def test_measure_ir_text_counts_load_store_call_branch_phi(self):
        from ir_metrics import measure_ir_text

        ir = """
define i32 @bar(ptr %p) {
entry:
  %x = load i32, ptr %p
  %y = call i32 @helper(i32 %x)
  store i32 %y, ptr %p
  %z = phi i32 [ %x, %entry ]
  br label %exit
exit:
  ret i32 %z
}
declare i32 @helper(i32)
"""
        metrics = measure_ir_text(ir)
        self.assertEqual(metrics["load_count"], 1)
        self.assertEqual(metrics["call_count"], 1)
        self.assertEqual(metrics["store_count"], 1)
        self.assertEqual(metrics["phi_count"], 1)
        self.assertEqual(metrics["branch_count"], 1)

    def test_score_formula_returns_float(self):
        from ir_metrics import measure_ir_text

        ir = """
define i32 @simple() {
entry:
  ret i32 0
}
"""
        metrics = measure_ir_text(ir)
        self.assertIn("score_ir", metrics)
        self.assertIn("score", metrics)  # score defaults to score_ir
        self.assertIsInstance(metrics["score"], (int, float))
        self.assertGreaterEqual(metrics["score"], 1.0)

    def test_compare_metrics_detects_improvement(self):
        from ir_metrics import compare_metrics

        before = {"instruction_count": 100, "score": 150.0, "load_count": 10,
                   "store_count": 5, "call_count": 3, "branch_count": 8,
                   "basic_block_count": 20, "function_count": 2, "phi_count": 2}
        after = {"instruction_count": 90, "score": 130.0, "load_count": 8,
                  "store_count": 4, "call_count": 3, "branch_count": 7,
                  "basic_block_count": 18, "function_count": 2, "phi_count": 2}

        deltas = compare_metrics(before, after)
        self.assertTrue(deltas["improved"])  # score went down (better)
        self.assertEqual(deltas["instruction_count"], -10)


if __name__ == "__main__":
    unittest.main()
