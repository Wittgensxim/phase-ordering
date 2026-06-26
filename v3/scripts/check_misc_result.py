"""Check trace output for Misc_flops_1 after fixes."""
import csv
from pathlib import Path

base = Path("results/test_fix_misc/Misc_flops_1")
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
        auto = row.get("auto_safe_passes", "")
        print(f"R{r}: [{kind:25s}] {action:30s} | before={before:6s} after={after:6s} delta={delta:7s} changed={changed}")
        if auto:
            print(f"     auto_safe={auto}")
