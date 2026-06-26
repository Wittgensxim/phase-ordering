"""Final validation trace."""
import csv
from pathlib import Path

base = Path("results/test_final/Misc_flops_1")
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
        out_h = row["output_hash"][:12] if row["output_hash"] else "-"
        details = row.get("action_details", "")
        print(f"R{r}: {action:32s} | before={before:6s} after={after:6s} delta={delta:7s} changed={changed} hash={out_h}")
        if details:
            print(f"     {details}")
