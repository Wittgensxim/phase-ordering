"""Show round-0-only policy for Misc_flops_1."""
import csv
from pathlib import Path
from collections import Counter

base = Path("results/test_scheduler_suite/Misc_flops_1")
policy_path = base / "scheduler_policy_report.csv"

with open(policy_path) as f:
    reader = csv.DictReader(f)
    rows = [r for r in reader if r.get("round") == "0"]

counts = Counter(r["scheduler_class"] for r in rows)
print("=== Round 0 Only: Scheduler policy ===")
print(f"  Total passes: {len(rows)}")
for cls, cnt in counts.most_common():
    print(f"  {cls}: {cnt}")
print()

print("=== Round 0: Per-pass (unique) ===")
seen = set()
for r in rows:
    key = (r["round"], r["pass"])
    if key in seen:
        continue
    seen.add(key)
    ratio = float(r.get("safe_edge_ratio", 0))
    reasons = r.get("blocking_reasons", "")
    print(f"  {r['pass']:15s} -> {r['scheduler_class']:22s} safe_edge_ratio={ratio:.0%} reasons={reasons}")
