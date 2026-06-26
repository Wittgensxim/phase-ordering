"""Quick analysis script for scheduler output."""
import csv, json
from pathlib import Path

base = Path("results/test_demo_scheduler/demo")

# Schedule trace
with open(base / "schedule_trace.csv") as f:
    reader = csv.DictReader(f)
    for row in reader:
        print(f"Round {row['round']}: action={row['selected_action_kind']} | {row['selected_action']}")
        print(f"  score={row['metric_score']} inst={row['instruction_count']} candidates={row['candidate_pass_count']}")
        print(f"  auto_safe={row['auto_safe_passes']}")
        print(f"  decision_pairs={row['decision_required_pairs']}")
        print(f"  changed={row.get('changed', 'N/A')}")
        print()

# Final metrics
data = json.loads((base / "final_metrics.json").read_text())
print("Final metrics:")
for k, v in data.items():
    print(f"  {k}: {v}")

# Check round directories
print("\nRound directories:")
for d in sorted(base.glob("round_*")):
    files = list(d.glob("*"))
    print(f"  {d.name}/: {[f.name for f in files]}")
