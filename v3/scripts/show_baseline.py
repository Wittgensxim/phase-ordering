"""Parse baseline comparison results."""
import csv, json
from pathlib import Path

base = Path("results/test_baseline2/Misc_flops_1")

# baseline comparison
bc = json.loads((base / "baseline_comparison.json").read_text())
print("=== O2 Baseline Comparison ===")
for k, v in bc.items():
    print(f"  {k}: {v}")

print()
fm = json.loads((base / "final_metrics.json").read_text())
print("=== Scheduler Final IR ===")
for k in sorted(fm.keys()):
    print(f"  {k}: {fm[k]}")

print()
with open(base / "schedule_trace.csv") as f:
    rows = list(csv.DictReader(f))
    first = rows[0]
    last = rows[-1]
    print(f"Rounds: {len(rows)}")
    print(f"Score trajectory: {first['metric_score']} -> {last['metric_after']}")
    print(f"Instructions: {first['instruction_count']} -> {fm.get('instruction_count','?')}")
    total_delta = float(last["metric_after"]) - float(first["metric_score"])
    print(f"Total score improvement: {total_delta:.1f}")
