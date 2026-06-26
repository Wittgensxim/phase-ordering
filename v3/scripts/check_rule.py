"""Quick check of rule chooser trace."""
import csv
from pathlib import Path

base = Path("results/test_rule/demo_rule")
with open(base / "schedule_trace.csv") as f:
    for r in csv.DictReader(f):
        kind = r["selected_action_kind"]
        action = r["selected_action"]
        details = (r.get("action_details", "") or "")[:90]
        print(f"R{r['round']}: [{kind}] {action}")
        if details:
            print(f"     {details}")
