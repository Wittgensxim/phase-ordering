"""Check the trace output for demo after fixes."""
import csv
from pathlib import Path

base = Path("results/test_fix_demo/demo")
with open(base / "schedule_trace.csv") as f:
    reader = csv.DictReader(f)
    for row in reader:
        r = row["round"]
        kind = row["selected_action_kind"]
        action = row["selected_action"]
        before = row["metric_score"]
        after = row["metric_after"]
        delta = row["metric_delta"]
        changed = row["changed"]
        out_hash = row["output_hash"][:12] if row["output_hash"] else "-"
        print(f"R{r}: [{kind}] {action}")
        print(f"    before={before} after={after} delta={delta} changed={changed} out_hash={out_hash}")
