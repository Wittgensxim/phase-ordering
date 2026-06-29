"""Show discovered MultiSource benchmarks."""
import json
from collections import Counter

data = json.load(open("configs/benchmarks_multisource.json"))
cats = Counter()
for b in data["benchmarks"]:
    parts = b["name"].split("_")
    cat = parts[0] if parts else "unknown"
    cats[cat] += 1

print("Top 20 categories:")
for c, n in cats.most_common(20):
    print(f"  {c:30s}: {n}")

print(f"\nFirst 15 benchmarks:")
for b in data["benchmarks"][:15]:
    print(f"  {b['name']}")

print(f"\nTotal: {len(data['benchmarks'])} benchmarks across {len(cats)} categories")
