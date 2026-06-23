import csv
import json
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class EnablementProbeTests(unittest.TestCase):
    def setUp(self):
        sys.path.insert(0, str(SCRIPTS))

    def test_probe_first_order_enablement_partitions_passes_into_active_enabled_inactive(self):
        from enablement_probe import probe_first_order_enablement

        def fake_runner(prefix, pass_name):
            if prefix == ():
                return {
                    "pass": pass_name,
                    "reads": [],
                    "writes": ["inst:main:%a"] if pass_name == "A" else [],
                }

            if prefix == ("A",) and pass_name == "B":
                return {
                    "pass": pass_name,
                    "reads": ["inst:main:%a"],
                    "writes": ["inst:main:%b"],
                }

            return {"pass": pass_name, "reads": [], "writes": []}

        result = probe_first_order_enablement(
            passes=["A", "B", "C"],
            runner=fake_runner,
        )

        self.assertEqual(
            result["summary"],
            {
                "total_passes": 3,
                "active_passes": 1,
                "enabled_passes": 1,
                "expanded_passes": 0,
                "inactive_passes": 1,
                "tested_prefix_pairs": 2,
                "activation_edges": 1,
                "expansion_edges": 0,
                "mutation_edges": 0,
                "enable_edges": 1,
            },
        )
        self.assertEqual(result["active_passes"], ["A"])
        self.assertEqual(result["enabled_passes"], ["B"])
        self.assertEqual(result["inactive_passes"], ["C"])
        self.assertEqual(
            result["edges"],
            [
                {
                    "edge_kind": "activation",
                    "enabler": "A",
                    "enabled": "B",
                    "round": 1,
                    "prefix": ["A"],
                    "reads_after_prefix": ["inst:main:%a"],
                    "writes_after_prefix": ["inst:main:%b"],
                    "new_writes_after_prefix": ["inst:main:%b"],
                    "changed_writes_after_prefix": [],
                }
            ],
        )

    def test_probe_first_order_enablement_does_not_test_self_prefix(self):
        from enablement_probe import probe_first_order_enablement

        calls = []

        def fake_runner(prefix, pass_name):
            calls.append((prefix, pass_name))
            return {"pass": pass_name, "reads": [], "writes": []}

        probe_first_order_enablement(passes=["A", "B"], runner=fake_runner)

        self.assertNotIn((("A",), "A"), calls)
        self.assertNotIn((("B",), "B"), calls)

    def test_probe_records_multiple_enablers_for_the_same_pass(self):
        from enablement_probe import probe_first_order_enablement

        def fake_runner(prefix, pass_name):
            if prefix == ():
                writes = ["inst:main:%a"] if pass_name in {"A", "C"} else []
                return {"pass": pass_name, "reads": [], "writes": writes}

            if prefix in {("A",), ("C",)} and pass_name == "B":
                return {
                    "pass": "B",
                    "reads": [f"inst:main:%{prefix[0].lower()}"],
                    "writes": ["inst:main:%b"],
                }

            return {"pass": pass_name, "reads": [], "writes": []}

        result = probe_first_order_enablement(
            passes=["A", "B", "C"],
            runner=fake_runner,
        )

        self.assertEqual(
            [(edge["enabler"], edge["enabled"]) for edge in result["edges"]],
            [("A", "B"), ("C", "B")],
        )
        self.assertEqual(result["enabled_passes"], ["B"])
        self.assertEqual(result["inactive_passes"], [])

    def test_probe_records_active_pass_behavior_expansion(self):
        from enablement_probe import probe_first_order_enablement

        def fake_runner(prefix, pass_name):
            if prefix == ():
                writes = {
                    "A": ["inst:eval:entry:1:br"],
                    "B": ["inst:main:%22"],
                }[pass_name]
                return {"pass": pass_name, "reads": [], "writes": writes}

            if prefix == ("A",) and pass_name == "B":
                return {
                    "pass": "B",
                    "reads": ["cfg:eval"],
                    "writes": ["inst:main:%22", "inst:eval:.loopexit:1:br"],
                }

            return fake_runner((), pass_name)

        result = probe_first_order_enablement(
            passes=["A", "B"],
            runner=fake_runner,
        )

        self.assertEqual(result["enabled_passes"], [])
        self.assertEqual(result["inactive_passes"], [])
        self.assertEqual(result["expanded_passes"], ["B"])
        self.assertEqual(result["summary"]["activation_edges"], 0)
        self.assertEqual(result["summary"]["expansion_edges"], 1)
        self.assertEqual(result["summary"]["enable_edges"], 1)
        self.assertEqual(
            result["edges"],
            [
                {
                    "edge_kind": "expansion",
                    "enabler": "A",
                    "enabled": "B",
                    "round": 1,
                    "prefix": ["A"],
                    "reads_after_prefix": ["cfg:eval"],
                    "writes_after_prefix": [
                        "inst:eval:.loopexit:1:br",
                        "inst:main:%22",
                    ],
                    "new_writes_after_prefix": ["inst:eval:.loopexit:1:br"],
                    "changed_writes_after_prefix": [],
                }
            ],
        )

    def test_probe_records_active_pass_write_value_mutation(self):
        from enablement_probe import probe_first_order_enablement

        def fake_runner(prefix, pass_name):
            if prefix == ():
                if pass_name == "A":
                    return {
                        "pass": "A",
                        "reads": [],
                        "writes": ["bb:eval:.loopexit"],
                        "write_values": {"bb:eval:.loopexit": "bb:eval:.loopexit"},
                    }
                return {
                    "pass": "B",
                    "reads": ["inst:eval:%phi"],
                    "writes": ["inst:eval:%phi"],
                    "write_values": {
                        "inst:eval:%phi": "phi ptr [ %v, %left ], [ %v, %right ]"
                    },
                }

            if prefix == ("A",) and pass_name == "B":
                return {
                    "pass": "B",
                    "reads": ["inst:eval:%phi"],
                    "writes": ["inst:eval:%phi"],
                    "write_values": {
                        "inst:eval:%phi": "phi ptr [ %v, %right ], [ %v, %left ]"
                    },
                }

            return fake_runner((), pass_name)

        result = probe_first_order_enablement(
            passes=["A", "B"],
            runner=fake_runner,
        )

        self.assertEqual(result["expanded_passes"], ["B"])
        self.assertEqual(result["summary"]["mutation_edges"], 1)
        self.assertEqual(result["summary"]["enable_edges"], 1)
        self.assertEqual(result["edges"][0]["edge_kind"], "mutation")
        self.assertEqual(result["edges"][0]["changed_writes_after_prefix"], ["inst:eval:%phi"])
        self.assertEqual(result["edges"][0]["new_writes_after_prefix"], [])

    def test_probe_treats_read_only_pass_as_enabled_when_prefix_activates_it(self):
        from enablement_probe import probe_first_order_enablement

        def fake_runner(prefix, pass_name):
            if prefix == () and pass_name == "B":
                return {
                    "pass": "B",
                    "reads": ["analysis:loop-form:main"],
                    "writes": [],
                }

            if prefix == ("A",) and pass_name == "B":
                return {
                    "pass": "B",
                    "reads": ["analysis:loop-form:main"],
                    "writes": ["inst:main:loop:1:br"],
                }

            return {"pass": pass_name, "reads": [], "writes": ["inst:main:%a"]}

        result = probe_first_order_enablement(
            passes=["A", "B"],
            runner=fake_runner,
        )

        self.assertEqual(result["active_passes"], ["A"])
        self.assertEqual(result["enabled_passes"], ["B"])
        self.assertEqual(result["inactive_passes"], [])
        self.assertEqual(result["summary"]["enable_edges"], 1)
        self.assertEqual(result["edges"][0]["enabler"], "A")
        self.assertEqual(result["edges"][0]["enabled"], "B")

    def test_write_outputs_emits_json_and_csv(self):
        from enablement_probe import write_outputs

        result = {
            "summary": {
                "total_passes": 2,
                "active_passes": 1,
                "enabled_passes": 1,
                "inactive_passes": 0,
                "tested_prefix_pairs": 1,
                "enable_edges": 1,
            },
            "active_passes": ["A"],
            "enabled_passes": ["B"],
            "inactive_passes": [],
            "edges": [
                {
                    "enabler": "A",
                    "enabled": "B",
                    "round": 1,
                    "prefix": ["A"],
                    "reads_after_prefix": ["inst:main:%a"],
                    "writes_after_prefix": ["inst:main:%b"],
                }
            ],
        }

        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            json_path = tmp_path / "enablement.json"
            csv_path = tmp_path / "enablement.csv"
            write_outputs(result, json_path, csv_path)
            payload = json.loads(json_path.read_text(encoding="utf-8"))
            with csv_path.open(encoding="utf-8", newline="") as handle:
                rows = list(csv.DictReader(handle))

        self.assertEqual(payload["summary"]["enable_edges"], 1)
        self.assertEqual(payload["active_passes"], ["A"])
        self.assertEqual(rows[0]["enabler"], "A")
        self.assertEqual(rows[0]["enabled"], "B")
        self.assertEqual(rows[0]["prefix"], "A")
        self.assertEqual(rows[0]["writes_after_prefix"], "inst:main:%b")


if __name__ == "__main__":
    unittest.main()
