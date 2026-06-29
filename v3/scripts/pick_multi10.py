"""Pick 10 diverse MultiSource benchmarks for quick test."""
import json, random

data = json.load(open("configs/benchmarks_multisource.json"))
random.seed(42)
picked = random.sample(data["benchmarks"], 10)

subset = {
    "description": "10 diverse MultiSource benchmarks for quick test",
    "test_suite_root": data["test_suite_root"],
    "benchmarks": picked,
}
with open("configs/benchmarks_multi10.json", "w") as f:
    json.dump(subset, f, indent=2)
print("10 benchmarks:")
for b in picked:
    print(f"  {b['name']}")
