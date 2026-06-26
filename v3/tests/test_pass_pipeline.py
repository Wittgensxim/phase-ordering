"""
Tests for pass_pipeline.py v3: pass name resolution and mandatory order validation.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class PassPipelineTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_pipeline_name_wraps_loop_passes(self):
        from pass_pipeline import pipeline_name
        # LLVM 23: all these passes work with plain names
        self.assertEqual(pipeline_name("loop-rotate"), "loop-rotate")
        self.assertEqual(pipeline_name("loop-unroll"), "loop-unroll")
        self.assertEqual(pipeline_name("loop-simplify"), "loop-simplify")

    def test_pipeline_name_passthrough_ordinary_passes(self):
        from pass_pipeline import pipeline_name
        self.assertEqual(pipeline_name("instcombine"), "instcombine<no-verify-fixpoint>")
        self.assertEqual(pipeline_name("gvn"), "gvn")
        self.assertEqual(pipeline_name("dce"), "dce")

    def test_pipeline_names_preserves_order(self):
        from pass_pipeline import pipeline_names
        result = pipeline_names(["instcombine", "loop-rotate", "dce"])
        self.assertEqual(
            result,
            ["instcombine<no-verify-fixpoint>", "loop-rotate", "dce"],
        )

    def test_validate_mandatory_order_allows_correct_ordering(self):
        from pass_pipeline import validate_mandatory_order
        orders = [
            {"before": "mem2reg", "after": "*", "reason": "mem2reg first"},
            {"before": "loop-simplify", "after": "loop-rotate", "reason": "canonicalize"},
        ]
        valid, reason = validate_mandatory_order("loop-simplify", "loop-rotate", orders)
        self.assertTrue(valid)
        self.assertEqual(reason, "")

    def test_validate_mandatory_order_rejects_reversed_ordering(self):
        from pass_pipeline import validate_mandatory_order
        orders = [
            {"before": "loop-simplify", "after": "loop-rotate", "reason": "canonicalize"},
        ]
        valid, reason = validate_mandatory_order("loop-rotate", "loop-simplify", orders)
        self.assertFalse(valid)
        self.assertIn("loop-simplify", reason)

    def test_validate_mandatory_order_wildcard_blocks_reversal(self):
        from pass_pipeline import validate_mandatory_order
        orders = [
            {"before": "mem2reg", "after": "*", "reason": "mem2reg first"},
        ]
        # mem2reg before instcombine is fine
        valid, _ = validate_mandatory_order("mem2reg", "instcombine", orders)
        self.assertTrue(valid)
        # instcombine before mem2reg is NOT fine
        valid, reason = validate_mandatory_order("instcombine", "mem2reg", orders)
        self.assertFalse(valid)
        self.assertIn("mem2reg", reason)


class PassSetLoadingTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_load_pass_set_returns_passes_and_orders(self):
        from pass_pipeline import load_pass_set
        config = ROOT / "configs" / "pass_sets.json"
        passes, orders = load_pass_set(str(config), "research")
        self.assertIsInstance(passes, list)
        self.assertGreater(len(passes), 0)
        self.assertIsInstance(orders, list)

    def test_load_pass_set_unknown_set_raises_key_error(self):
        from pass_pipeline import load_pass_set
        config = ROOT / "configs" / "pass_sets.json"
        with self.assertRaises(KeyError):
            load_pass_set(str(config), "nonexistent_set")


if __name__ == "__main__":
    unittest.main()
