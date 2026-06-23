import json
import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class CollectPassFootprintsTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_extract_ir_fingerprint_records_concrete_ir_objects(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define dso_local i32 @main() {
entry:
  %x = alloca i32, align 4
  store i32 0, ptr %x, align 4
  %v = load i32, ptr %x, align 4
  %sum = add nsw i32 %v, 1
  %call = call i32 @helper(i32 %sum)
  ret i32 %call
}

declare i32 @helper(i32)
"""

        fingerprint = extract_ir_fingerprint(ir)

        self.assertIn("func:main", fingerprint)
        self.assertIn("bb:main:entry", fingerprint)
        self.assertIn("inst:main:%x", fingerprint)
        self.assertIn("inst:main:%v", fingerprint)
        self.assertIn("inst:main:%sum", fingerprint)
        self.assertIn("inst:main:%call", fingerprint)
        self.assertIn("inst:main:entry:1:store", fingerprint)
        self.assertIn("inst:main:entry:2:ret", fingerprint)
        self.assertNotIn("opcode:load", fingerprint)
        self.assertNotIn("call:helper", fingerprint)

    def test_build_footprint_record_marks_changed_features_as_writes(self):
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  %x = alloca i32, align 4
  %v = load i32, ptr %x, align 4
  %sum = add nsw i32 %v, 1
  ret i32 %sum
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  ret i32 1
}
"""

        record = build_footprint_record("instcombine", before_ir, after_ir)

        self.assertEqual(record["pass"], "instcombine")
        self.assertNotIn("func:main", record["reads"])
        self.assertIn("inst:main:%v", record["reads"])
        self.assertIn("inst:main:%sum", record["reads"])
        self.assertIn("inst:main:%v", record["writes"])
        self.assertIn("inst:main:%sum", record["writes"])
        self.assertIn("inst:main:entry:1:ret", record["writes"])
        self.assertNotIn("func:main", record["writes"])

    def test_build_footprint_record_does_not_mark_unchanged_ir_as_written(self):
        from collect_pass_footprints import build_footprint_record

        ir = """
define dso_local i32 @main() {
entry:
  ret i32 0
}
"""

        record = build_footprint_record("dce", ir, ir)

        self.assertEqual(record["reads"], [])
        self.assertEqual(record["writes"], [])

    def test_build_footprint_record_ignores_ssa_name_only_operand_changes(self):
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  %1 = load i32, ptr @x, align 4
  store i32 %1, ptr @y, align 4
  ret i32 0
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  %2 = load i32, ptr @x, align 4
  store i32 %2, ptr @y, align 4
  ret i32 0
}
"""

        record = build_footprint_record("rename-only", before_ir, after_ir)

        self.assertNotIn("inst:main:entry:1:store", record["writes"])

    def test_build_footprint_record_ignores_numeric_block_label_renaming(self):
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  br label %12

12:
  ret i32 0
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  br label %13

13:
  ret i32 0
}
"""

        record = build_footprint_record("rename-block-only", before_ir, after_ir)

        self.assertEqual(record["reads"], [])
        self.assertEqual(record["writes"], [])

    def test_extract_ir_fingerprint_records_loop_metadata_as_loop_object(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  br i1 true, label %7, label %15

7:
  br label %12

12:
  br label %4, !llvm.loop !7

15:
  ret i32 0
}
"""

        fingerprint = extract_ir_fingerprint(ir)

        self.assertIn("loop:main:bb0", fingerprint)
        self.assertNotIn("loop-unroll-ready:main", fingerprint)

    def test_extract_ir_fingerprint_does_not_emit_loop_unroll_readiness_for_ssa_loop(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  %sum = phi i32 [ 0, %entry ], [ %next.sum, %7 ]
  %i = phi i32 [ 0, %entry ], [ %next.i, %7 ]
  %cmp = icmp slt i32 %i, 8
  br i1 %cmp, label %7, label %15

7:
  %next.sum = add nsw i32 %sum, %i
  %next.i = add nsw i32 %i, 1
  br label %4, !llvm.loop !7

15:
  ret i32 %sum
}
"""

        fingerprint = extract_ir_fingerprint(ir)

        self.assertIn("loop:main:bb0", fingerprint)
        self.assertNotIn("loop-unroll-ready:main", fingerprint)

    def test_extract_ir_fingerprint_does_not_emit_loop_unroll_readiness_for_counted_loop(self):
        from collect_pass_footprints import extract_ir_fingerprint

        ir = """
define dso_local i32 @main() {
entry:
  br label %1

1:
  %i = phi i32 [ 0, %entry ], [ %next, %5 ]
  %cmp = icmp ult i32 %i, 10
  br i1 %cmp, label %3, label %7

3:
  br label %5

5:
  %next = add i32 %i, 1
  br label %1, !llvm.loop !7

7:
  ret i32 0
}
"""

        fingerprint = extract_ir_fingerprint(ir)

        self.assertIn("loop:main:bb0", fingerprint)
        self.assertNotIn("loop-unroll-ready:main", fingerprint)

    def test_build_footprint_record_marks_changed_loop_structure_as_write(self):
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  br i1 true, label %7, label %15

7:
  br label %12

12:
  br label %4, !llvm.loop !7

15:
  ret i32 0
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  br i1 true, label %8, label %12

8:
  br label %4, !llvm.loop !7

12:
  ret i32 0
}
"""

        record = build_footprint_record("gvn", before_ir, after_ir)

        self.assertIn("loop:main:bb0", record["reads"])
        self.assertIn("loop:main:bb0", record["writes"])

    def test_loop_transform_noop_has_empty_footprint(self):
        from collect_pass_footprints import build_footprint_record

        ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  br i1 true, label %7, label %15

7:
  br label %12

12:
  br label %4, !llvm.loop !7

15:
  ret i32 0
}
"""

        record = build_footprint_record("loop-unroll", ir, ir)

        self.assertEqual(record["reads"], [])
        self.assertEqual(record["writes"], [])

    def test_inactive_pass_is_excluded_from_pairwise_dependency_matrix(self):
        from analyze_footprints import analyze_pairs
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  br label %4

4:
  br i1 true, label %7, label %15

7:
  br label %12

12:
  br label %4, !llvm.loop !7

15:
  ret i32 0
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  br label %3

3:
  %i = phi i32 [ 0, %entry ], [ %next, %10 ]
  br i1 true, label %5, label %13

5:
  br label %10

10:
  %next = add nsw i32 %i, 1
  br label %3, !llvm.loop !7

13:
  ret i32 0
}
"""

        instcombine = build_footprint_record("instcombine", before_ir, after_ir)
        loop_unroll = build_footprint_record("loop-unroll", before_ir, before_ir)
        pairs = analyze_pairs(
            {
                "instcombine": {
                    "reads": set(instcombine["reads"]),
                    "writes": set(instcombine["writes"]),
                },
                "loop-unroll": {
                    "reads": set(loop_unroll["reads"]),
                    "writes": set(loop_unroll["writes"]),
                },
            }
        )

        self.assertEqual(loop_unroll["reads"], [])
        self.assertEqual(loop_unroll["writes"], [])
        self.assertEqual(pairs, [])

    def test_counted_loop_enablement_is_captured_via_enablement_edge(self):
        from analyze_footprints import analyze_pairs
        from collect_pass_footprints import build_footprint_record

        before_ir = """
define dso_local i32 @main() {
entry:
  %i.addr = alloca i32, align 4
  store i32 0, ptr %i.addr, align 4
  br label %1

1:
  %i = load i32, ptr %i.addr, align 4
  %cmp = icmp ult i32 %i, 10
  br i1 %cmp, label %3, label %7

3:
  br label %5

5:
  %next = add i32 %i, 1
  store i32 %next, ptr %i.addr, align 4
  br label %1, !llvm.loop !7

7:
  ret i32 0
}
"""
        after_ir = """
define dso_local i32 @main() {
entry:
  br label %1

1:
  %i = phi i32 [ 0, %entry ], [ %next, %5 ]
  %cmp = icmp ult i32 %i, 10
  br i1 %cmp, label %3, label %7

3:
  br label %5

5:
  %next = add i32 %i, 1
  br label %1, !llvm.loop !7

7:
  ret i32 0
}
"""

        sroa = build_footprint_record("sroa", before_ir, after_ir)
        loop_unroll = build_footprint_record("loop-unroll", before_ir, before_ir)

        self.assertNotIn("loop-unroll-ready:main", sroa["writes"])
        self.assertEqual(loop_unroll["reads"], [])
        self.assertEqual(loop_unroll["writes"], [])
        enablement_edges = {
            ("loop-unroll", "sroa"): [
                {
                    "enabler": "sroa",
                    "enabled": "loop-unroll",
                    "round": 1,
                    "prefix": ["sroa"],
                    "reads_after_prefix": ["analysis:loop-form:main"],
                    "writes_after_prefix": ["inst:main:%next"],
                }
            ]
        }

        pairs = analyze_pairs(
            {
                "sroa": {
                    "reads": set(sroa["reads"]),
                    "writes": set(sroa["writes"]),
                },
                "loop-unroll": {
                    "reads": set(loop_unroll["reads"]),
                    "writes": set(loop_unroll["writes"]),
                },
            },
            enablement_edges=enablement_edges,
        )

        self.assertEqual(len(pairs), 1)
        self.assertEqual(pairs[0]["classification"], "dependent")
        self.assertEqual(pairs[0]["dependency_kinds"], ["enablement"])
        self.assertEqual(pairs[0]["enablement_edges"], ["sroa->loop-unroll"])

    def test_write_footprints_jsonl_writes_one_json_record_per_line(self):
        from collect_pass_footprints import write_footprints_jsonl
        import tempfile

        records = [
            {
                "pass": "instcombine",
                "reads": ["func:main"],
                "writes": ["opcode:add"],
            },
            {
                "pass": "simplifycfg",
                "reads": ["bb:main:entry"],
                "writes": ["opcode:br"],
            },
        ]

        with tempfile.TemporaryDirectory() as tmpdir:
            output_path = Path(tmpdir) / "footprints.jsonl"
            write_footprints_jsonl(records, output_path)
            lines = output_path.read_text(encoding="utf-8").splitlines()

        self.assertEqual(len(lines), 2)
        self.assertEqual(json.loads(lines[0])["pass"], "instcombine")
        self.assertEqual(json.loads(lines[1])["writes"], ["opcode:br"])


if __name__ == "__main__":
    unittest.main()
