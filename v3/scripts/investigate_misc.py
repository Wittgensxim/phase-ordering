"""Investigate why Misc_flops_1 has 0 auto_safe passes."""
import csv, json
from pathlib import Path
from collections import Counter

base = Path("results/test_scheduler_suite/Misc_flops_1")

# Scheduler policy report
policy_path = base / "scheduler_policy_report.csv"
with open(policy_path) as f:
    reader = csv.DictReader(f)
    rows = list(reader)
    counts = Counter(r["scheduler_class"] for r in rows)
    print("=== Scheduler policy distribution ===")
    for cls, cnt in counts.most_common():
        print(f"  {cls}: {cnt}")
    print()

    print("=== Per-pass classification ===")
    for r in rows:
        reasons = r.get("blocking_reasons", "")
        print(f"  {r['pass']:20s} -> {r['scheduler_class']:20s} safe_ratio={r.get('safe_edge_ratio','?')} reasons={reasons[:100]}")

# Check the underlying confirmation distribution
# The analysis is in round_000/analysis/<benchmark>/
analysis_dir = base / "round_000" / "analysis"
# List what's inside
for d in sorted(analysis_dir.glob("*")):
    if d.is_dir():
        files = list(d.glob("*"))
        print(f"\n  {d.name}/: {len(files)} files")
    else:
        print(f"  {d.name}")

# Check if there's a validation report
val_json = analysis_dir / "Misc_flops_1" / "validation_report.json"
if val_json.exists():
    data = json.loads(val_json.read_text())
    summary = data["summary"]
    print("\n=== Validation summary ===")
    for k, v in summary.items():
        print(f"  {k}: {v}")
