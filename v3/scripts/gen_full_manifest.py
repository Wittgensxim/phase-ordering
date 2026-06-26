"""Auto-generate manifest from all .c files in SingleSource/Benchmarks."""
import json
from pathlib import Path

root = Path("E:/llvm-test-suite/SingleSource/Benchmarks")
benchmarks = []

for c_file in sorted(root.rglob("*.c")):
    name = f"{c_file.parent.name}_{c_file.stem}"
    benchmarks.append({
        "name": name,
        "source": str(c_file).replace("\\", "/"),
    })

manifest = {
    "description": f"Auto-generated: all {len(benchmarks)} SingleSource benchmarks",
    "test_suite_root": "E:/llvm-test-suite",
    "benchmarks": benchmarks,
}

out_path = Path("configs/benchmarks_full.json")
out_path.write_text(json.dumps(manifest, indent=2))
print(f"Generated {out_path} with {len(benchmarks)} benchmarks")
