"""Parse ablation results."""
import csv
from collections import defaultdict

with open("results/ablation/ablation_results.csv") as f:
    rows = list(csv.DictReader(f))

order = ["full", "no_oracle", "no_perturb", "no_cycle_guard", "strict_only"]

# Summary
by_config = defaultdict(list)
for r in rows:
    if r["status"] == "ok":
        by_config[r["configuration"]].append(r)

print("=== Ablation Study Results ===")
print()
print(f"{'Configuration':20s} {'Benchmarks':>10s} {'Avg Score':>10s} {'Avg Improve%':>12s} {'Avg Rounds':>10s}")
print("-" * 65)
for cfg in order:
    items = by_config.get(cfg, [])
    if not items:
        continue
    n = len(items)
    avg_score = sum(float(r["final_score"]) for r in items) / n
    avg_imp = sum(float(r["improvement_pct"]) for r in items) / n
    avg_rounds = sum(int(r["rounds"]) for r in items) / n
    print(f"{cfg:20s} {n:>10d} {avg_score:>10.1f} {avg_imp:>11.1f}% {avg_rounds:>10.1f}")

# Per-benchmark detail
print()
print("=== Per-Benchmark Detail ===")
by_bench = defaultdict(dict)
for r in rows:
    if r["status"] == "ok":
        by_bench[r["benchmark"]][r["configuration"]] = float(r["final_score"])

print(f"{'Benchmark':22s} ", end="")
for cfg in order:
    print(f"{cfg:>14s} ", end="")
print()
for name in sorted(by_bench.keys()):
    vals = by_bench[name]
    best = min(vals.values())
    line = f"{name:22s} "
    for cfg in order:
        v = vals.get(cfg, None)
        if v is not None:
            mark = " *" if v == best else "  "
            line += f"{v:>13.1f}{mark} "
        else:
            line += f"{'?':>13s}  "
    print(line)
print(" * = best in row")
