import sys
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class PassPipelineTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_pipeline_name_wraps_loop_rotate_in_function_loop_manager(self):
        from pass_pipeline import pipeline_name

        self.assertEqual(pipeline_name("loop-rotate"), "function(loop(loop-rotate))")
        self.assertEqual(pipeline_name("instcombine"), "instcombine")

    def test_pipeline_names_preserve_display_order(self):
        from pass_pipeline import pipeline_names

        self.assertEqual(
            pipeline_names(["instcombine", "loop-rotate", "dce"]),
            ["instcombine", "function(loop(loop-rotate))", "dce"],
        )


if __name__ == "__main__":
    unittest.main()
