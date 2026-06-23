import csv
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"


class AnalyzeFootprintsTests(unittest.TestCase):
    def test_load_footprints_merges_multiple_records_for_same_pass(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import load_footprints

        with tempfile.TemporaryDirectory() as tmpdir:
            footprints_path = Path(tmpdir) / "footprints.jsonl"
            footprints_path.write_text(
                "\n".join(
                    [
                        json.dumps(
                            {
                                "pass": "instcombine",
                                "reads": ["func:main", "bb:entry"],
                                "writes": ["inst:%1"],
                            }
                        ),
                        json.dumps(
                            {
                                "pass": "instcombine",
                                "reads": ["inst:%1"],
                                "writes": ["inst:%2", "inst:%1"],
                            }
                        ),
                    ]
                )
                + "\n",
                encoding="utf-8",
            )

            footprints = load_footprints(footprints_path)

        self.assertEqual(
            footprints,
            {
                "instcombine": {
                    "reads": {"func:main", "bb:entry", "inst:%1"},
                    "writes": {"inst:%1", "inst:%2"},
                }
            },
        )

    def test_analyze_pairs_reports_independent_and_dependency_intersections(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"func:main"},
                "writes": {"inst:main:entry:1:store"},
            },
            "beta": {
                "reads": {"inst:main:entry:1:store", "bb:then"},
                "writes": {"inst:%y"},
            },
            "gamma": {
                "reads": {"func:helper"},
                "writes": {"inst:%z"},
            },
        }

        pairs = {(row["pass_a"], row["pass_b"]): row for row in analyze_pairs(footprints)}

        self.assertEqual(pairs[("alpha", "beta")]["classification"], "dependent")
        self.assertEqual(pairs[("alpha", "beta")]["wa_intersect_rb"], ["inst:main:entry:1:store"])
        self.assertEqual(pairs[("alpha", "beta")]["dependency_strength"], "strong")
        self.assertEqual(pairs[("alpha", "beta")]["wb_intersect_ra"], [])
        self.assertEqual(pairs[("alpha", "beta")]["wa_intersect_wb"], [])

        self.assertEqual(pairs[("alpha", "gamma")]["classification"], "independent")
        self.assertEqual(pairs[("alpha", "gamma")]["wa_intersect_rb"], [])
        self.assertEqual(pairs[("alpha", "gamma")]["wb_intersect_ra"], [])
        self.assertEqual(pairs[("alpha", "gamma")]["wa_intersect_wb"], [])

    def test_analyze_pairs_marks_weak_only_intersections_as_uncertain(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"func:main"},
                "writes": {"inst:main:%10", "bb:main:12"},
            },
            "beta": {
                "reads": {"inst:main:%10", "bb:main:12"},
                "writes": {"inst:main:%11"},
            },
        }

        row = analyze_pairs(footprints)[0]

        self.assertEqual(row["classification"], "uncertain")
        self.assertEqual(row["dependency_kinds"], ["read_write"])
        self.assertEqual(row["dependency_strength"], "weak")
        self.assertEqual(row["read_write_strength"], "weak")
        self.assertEqual(row["strong_intersections"], [])
        self.assertEqual(row["weak_intersections"], ["bb:main:12", "inst:main:%10"])
        self.assertEqual(row["intersection_token_kinds"], ["bb", "inst"])
        self.assertEqual(row["overlap_pattern"], "read_write_only")

    def test_analyze_pairs_marks_symmetric_overlap_pattern(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"inst:main:%1"},
                "writes": {"inst:main:%1"},
            },
            "beta": {
                "reads": {"inst:main:%1"},
                "writes": {"inst:main:%1"},
            },
        }

        row = analyze_pairs(footprints)[0]

        self.assertEqual(row["classification"], "uncertain")
        self.assertEqual(row["overlap_pattern"], "symmetric_rewrite")

    def test_analyze_pairs_marks_loop_intersections_as_strong_dependency(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"func:main"},
                "writes": {"loop:main:4"},
            },
            "beta": {
                "reads": {"loop:main:4"},
                "writes": {"inst:main:%11"},
            },
        }

        row = analyze_pairs(footprints)[0]

        self.assertEqual(row["classification"], "dependent")
        self.assertEqual(row["dependency_strength"], "strong")
        self.assertEqual(row["read_write_strength"], "strong")
        self.assertEqual(row["strong_intersections"], ["loop:main:4"])
        self.assertEqual(row["weak_intersections"], [])

    def test_analyze_pairs_marks_enablement_edge_as_dependent(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"func:main"},
                "writes": {"inst:main:entry:1:store"},
            },
            "beta": {
                "reads": {"func:helper"},
                "writes": {"inst:%y"},
            },
        }
        enablement_edges = {
            ("alpha", "beta"): [
                {
                    "edge_kind": "activation",
                    "enabler": "alpha",
                    "enabled": "beta",
                    "round": 1,
                    "prefix": ["alpha"],
                    "writes_after_prefix": ["inst:%enabled"],
                }
            ]
        }

        pairs = analyze_pairs(footprints, enablement_edges=enablement_edges)

        self.assertEqual(pairs[0]["classification"], "dependent")
        self.assertEqual(pairs[0]["dependency_kinds"], ["enablement"])
        self.assertEqual(pairs[0]["enablement_strength"], "strong")
        self.assertEqual(pairs[0]["enablement_edge_kinds"], ["activation"])
        self.assertEqual(pairs[0]["enablement_edges"], ["alpha->beta"])
        self.assertEqual(
            pairs[0]["enablement_evidence"],
            ["kind=activation round=1 prefix=alpha writes=inst:%enabled"],
        )

    def test_analyze_pairs_marks_weak_symmetric_expansion_as_uncertain(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "sccp": {
                "reads": {"inst:main:%22"},
                "writes": {"inst:main:%22"},
            },
            "sroa": {
                "reads": {"inst:main:%22"},
                "writes": {"inst:main:%22"},
            },
        }
        enablement_edges = {
            ("sccp", "sroa"): [
                {
                    "edge_kind": "expansion",
                    "enabler": "sccp",
                    "enabled": "sroa",
                    "round": 1,
                    "prefix": ["sccp"],
                    "writes_after_prefix": ["inst:main:%22"],
                    "new_writes_after_prefix": ["inst:main:%22"],
                    "changed_writes_after_prefix": [],
                }
            ]
        }

        row = analyze_pairs(footprints, enablement_edges=enablement_edges)[0]

        self.assertEqual(row["classification"], "uncertain")
        self.assertEqual(row["dependency_strength"], "weak")
        self.assertEqual(row["read_write_strength"], "weak")
        self.assertEqual(row["enablement_strength"], "weak")
        self.assertEqual(row["enablement_edge_kinds"], ["expansion"])
        self.assertEqual(row["uncertainty_risk"], "high")
        self.assertEqual(row["overlap_pattern"], "symmetric_rewrite")

    def test_analyze_pairs_keeps_strong_expansion_as_dependent(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "loop-simplify": {
                "reads": {"loop:main:4"},
                "writes": {"loop:main:4"},
            },
            "loop-unroll": {
                "reads": {"func:main"},
                "writes": {"inst:main:%10"},
            },
        }
        enablement_edges = {
            ("loop-simplify", "loop-unroll"): [
                {
                    "edge_kind": "expansion",
                    "enabler": "loop-simplify",
                    "enabled": "loop-unroll",
                    "round": 1,
                    "prefix": ["loop-simplify"],
                    "writes_after_prefix": ["loop:main:4"],
                    "new_writes_after_prefix": ["loop:main:4"],
                    "changed_writes_after_prefix": [],
                }
            ]
        }

        row = analyze_pairs(footprints, enablement_edges=enablement_edges)[0]

        self.assertEqual(row["classification"], "dependent")
        self.assertEqual(row["dependency_strength"], "strong")
        self.assertEqual(row["enablement_strength"], "strong")
        self.assertEqual(row["enablement_edge_kinds"], ["expansion"])
        self.assertEqual(row["uncertainty_risk"], "none")

    def test_analyze_pairs_combines_read_write_and_enablement_kinds(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "alpha": {
                "reads": {"func:main"},
                "writes": {"inst:main:entry:1:store"},
            },
            "beta": {
                "reads": {"inst:main:entry:1:store"},
                "writes": {"inst:%y"},
            },
        }
        enablement_edges = {
            ("beta", "alpha"): [
                {
                    "edge_kind": "activation",
                    "enabler": "beta",
                    "enabled": "alpha",
                    "round": 1,
                    "prefix": ["beta"],
                    "writes_after_prefix": ["inst:%enabled"],
                }
            ]
        }

        pairs = analyze_pairs(footprints, enablement_edges=enablement_edges)

        self.assertEqual(pairs[0]["classification"], "dependent")
        self.assertEqual(
            pairs[0]["dependency_kinds"],
            ["read_write", "enablement"],
        )
        self.assertEqual(pairs[0]["enablement_edges"], ["beta->alpha"])

    def test_analyze_pairs_excludes_inactive_passes_from_pairwise_matrix(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import analyze_pairs

        footprints = {
            "active": {
                "reads": {"inst:%x"},
                "writes": {"inst:%y"},
            },
            "inactive": {
                "reads": {"inst:%q"},
                "writes": set(),
            },
            "other": {
                "reads": {"inst:%z"},
                "writes": {"inst:%w"},
            },
        }

        pairs = analyze_pairs(footprints)

        self.assertEqual(
            [(row["pass_a"], row["pass_b"]) for row in pairs],
            [("active", "other")],
        )

    def test_load_enablement_edges_groups_edges_by_unordered_pair(self):
        sys.path.insert(0, str(SCRIPTS))
        from analyze_footprints import load_enablement_edges

        with tempfile.TemporaryDirectory() as tmpdir:
            enablement_path = Path(tmpdir) / "enablement.json"
            enablement_path.write_text(
                json.dumps(
                    {
                        "summary": {"enable_edges": 2},
                        "edges": [
                            {
                                "enabler": "beta",
                                "enabled": "alpha",
                                "round": 1,
                                "prefix": ["beta"],
                                "writes_after_prefix": ["inst:%a"],
                            },
                            {
                                "enabler": "gamma",
                                "enabled": "alpha",
                                "round": 1,
                                "prefix": ["gamma"],
                                "writes_after_prefix": ["inst:%b"],
                            },
                        ],
                    }
                ),
                encoding="utf-8",
            )

            edges = load_enablement_edges(enablement_path)

        self.assertIn(("alpha", "beta"), edges)
        self.assertIn(("alpha", "gamma"), edges)
        self.assertEqual(edges[("alpha", "beta")][0]["enabler"], "beta")

    def test_cli_writes_dependency_matrix_csv_and_json_analysis(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            footprints_path = tmp_path / "footprints.jsonl"
            csv_path = tmp_path / "dependency_matrix.csv"
            json_path = tmp_path / "independence_analysis.json"
            footprints_path.write_text(
                "\n".join(
                    [
                        json.dumps(
                            {
                                "pass": "alpha",
                                "reads": ["func:main"],
                                "writes": ["inst:main:entry:1:store"],
                            }
                        ),
                        json.dumps(
                            {
                                "pass": "beta",
                                "reads": ["inst:main:entry:1:store"],
                                "writes": ["inst:%y"],
                            }
                        ),
                    ]
                )
                + "\n",
                encoding="utf-8",
            )

            result = subprocess.run(
                [
                    sys.executable,
                    str(SCRIPTS / "analyze_footprints.py"),
                    str(footprints_path),
                    "--out-csv",
                    str(csv_path),
                    "--out-json",
                    str(json_path),
                ],
                cwd=ROOT,
                text=True,
                capture_output=True,
                check=False,
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            with csv_path.open(encoding="utf-8", newline="") as handle:
                rows = list(csv.DictReader(handle))
            analysis = json.loads(json_path.read_text(encoding="utf-8"))

        self.assertEqual(rows[0]["pass_a"], "alpha")
        self.assertEqual(rows[0]["pass_b"], "beta")
        self.assertEqual(rows[0]["classification"], "dependent")
        self.assertEqual(rows[0]["dependency_strength"], "strong")
        self.assertEqual(rows[0]["wa_intersect_rb"], "inst:main:entry:1:store")
        self.assertEqual(analysis["summary"]["total_pairs"], 1)
        self.assertEqual(analysis["summary"]["dependent_pairs"], 1)
        self.assertEqual(analysis["summary"]["uncertain_pairs"], 0)
        self.assertEqual(analysis["pairs"][0]["classification"], "dependent")

    def test_cli_accepts_enablement_json_and_writes_enriched_fields(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            tmp_path = Path(tmpdir)
            footprints_path = tmp_path / "footprints.jsonl"
            enablement_path = tmp_path / "enablement.json"
            csv_path = tmp_path / "dependency_matrix.csv"
            json_path = tmp_path / "independence_analysis.json"
            footprints_path.write_text(
                "\n".join(
                    [
                        json.dumps(
                            {
                                "pass": "alpha",
                                "reads": ["func:main"],
                                "writes": ["inst:main:%x"],
                            }
                        ),
                        json.dumps(
                            {
                                "pass": "beta",
                                "reads": ["func:helper"],
                                "writes": ["inst:%y"],
                            }
                        ),
                    ]
                )
                + "\n",
                encoding="utf-8",
            )
            enablement_path.write_text(
                json.dumps(
                    {
                        "summary": {"enable_edges": 1},
                        "edges": [
                            {
                                "enabler": "alpha",
                                "enabled": "beta",
                                "round": 1,
                                "prefix": ["alpha"],
                                "writes_after_prefix": ["inst:%enabled"],
                            }
                        ],
                    }
                ),
                encoding="utf-8",
            )

            result = subprocess.run(
                [
                    sys.executable,
                    str(SCRIPTS / "analyze_footprints.py"),
                    str(footprints_path),
                    "--enablement-json",
                    str(enablement_path),
                    "--out-csv",
                    str(csv_path),
                    "--out-json",
                    str(json_path),
                ],
                cwd=ROOT,
                text=True,
                capture_output=True,
                check=False,
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            with csv_path.open(encoding="utf-8", newline="") as handle:
                rows = list(csv.DictReader(handle))
            analysis = json.loads(json_path.read_text(encoding="utf-8"))

        self.assertEqual(rows[0]["classification"], "dependent")
        self.assertEqual(rows[0]["dependency_kinds"], "enablement")
        self.assertEqual(rows[0]["enablement_strength"], "strong")
        self.assertEqual(rows[0]["enablement_edge_kinds"], "activation")
        self.assertEqual(rows[0]["enablement_edges"], "alpha->beta")
        self.assertEqual(analysis["summary"]["dependent_pairs"], 1)
        self.assertEqual(
            analysis["pairs"][0]["enablement_evidence"],
            ["kind=activation round=1 prefix=alpha writes=inst:%enabled"],
        )


if __name__ == "__main__":
    unittest.main()
