"""
Tests for collect_pass_footprints.py: IR fingerprint extraction and footprint records.
"""

import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class FingerprintTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_extract_ir_fingerprint_contains_func_token(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define i32 @foo() {
entry:
  ret i32 0
}
"""
        fp = extract_ir_fingerprint(ir)
        self.assertIn("func:foo", fp)

    def test_extract_ir_fingerprint_contains_bb_token(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define void @bar() {
entry:
  br label %loop
loop:
  ret void
}
"""
        fp = extract_ir_fingerprint(ir)
        self.assertIn("bb:bar:entry", fp)
        self.assertIn("bb:bar:loop", fp)

    def test_extract_ir_fingerprint_contains_inst_token(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define i32 @add(i32 %a, i32 %b) {
entry:
  %sum = add i32 %a, %b
  ret i32 %sum
}
"""
        fp = extract_ir_fingerprint(ir)
        inst_tokens = [k for k in fp if k.startswith("inst:")]
        self.assertGreater(len(inst_tokens), 0)

    def test_extract_ir_fingerprint_normalizes_ssa_names(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define i32 @f() {
entry:
  %x = add i32 1, 2
  %y = add i32 %x, 3
  ret i32 %y
}
"""
        fp = extract_ir_fingerprint(ir)
        for value in fp.values():
            self.assertNotIn("%x", value)
            self.assertNotIn("%y", value)


class FootprintRecordTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_build_footprint_record_detects_changes(self):
        from collect_pass_footprints import build_footprint_record

        before = """define i32 @f() {
entry:
  %x = add i32 1, 2
  %y = mul i32 %x, 3
  ret i32 %y
}"""
        after = """define i32 @f() {
entry:
  %y = mul i32 3, 3
  ret i32 %y
}"""

        record = build_footprint_record("instcombine", before, after)
        self.assertEqual(record["pass"], "instcombine")
        self.assertGreater(len(record["writes"]), 0,
                           msg="instcombine should fold 1+2 and remove the add")

    def test_build_footprint_record_noop_has_empty_writes(self):
        from collect_pass_footprints import build_footprint_record

        ir_text = "define i32 @f() { entry: ret i32 0 }"
        record = build_footprint_record("instcombine", ir_text, ir_text)
        self.assertEqual(record["writes"], [])

    def test_is_pass_active_with_empty_writes(self):
        from collect_pass_footprints import is_pass_active
        self.assertFalse(is_pass_active({"writes": []}))
        self.assertTrue(is_pass_active({"writes": ["inst:foo:%v"]}))


if __name__ == "__main__":
    unittest.main()
