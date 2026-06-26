"""Analyze scheduler output for Misc_flops_1."""
import csv, json
from pathlib import Path

base = Path("results/test_scheduler_suite/Misc_flops_1")

# Schedule trace
with open(base / "schedule_trace.csv") as f:
    reader = csv.DictReader(f)
    for row in reader:
        r = row['round']
        kind = row['selected_action_kind']
        action = row['selected_action']
        score = row['metric_score']
        inst = row['instruction_count']
        auto = row['auto_safe_passes']
        changed = row.get('changed', 'N/A')
        print(f"R{r}: [{kind}] {action} | score={score} inst={inst} changed={changed}")
        if auto:
            print(f"     auto_safe={auto}")

print()

# Final metrics
data = json.loads((base / "final_metrics.json").read_text())
print("Final IR metrics:")
for k, v in sorted(data.items()):
    print(f"  {k}: {v}")

# Original metrics
orig = json.loads((base / "round_000" / "analysis" / ".." ).exists())
print()

# Check round files
print("Rounds output:")
for d in sorted(base.glob("round_*")):
    has_output = (d / "output.ll").exists()
    action_file = d / "selected_action.json"
    if action_file.exists():
        act = json.loads(action_file.read_text())
        print(f"  {d.name}: {act.get('kind','?')} changed={act.get('changed','?')}")
