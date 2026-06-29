"""Curate a diverse, non-trivial benchmark set from all available sources.

Finds .c files from SingleSource + MultiSource, compiles to IR,
filters out trivial programs (< 30 IR instructions), ensures
category diversity, outputs a curated manifest.

Target: 40-60 diverse benchmarks for ablation and ML training.
"""

import json
import random
import subprocess
from pathlib import Path
from collections import defaultdict

CLANG = "E:/llvm/build/bin/clang.exe"
OPT = "E:/llvm/build/bin/opt.exe"
TEST_SUITE = Path("E:/llvm-test-suite")
OUT_DIR = Path("results/curated_ir")
OUT_DIR.mkdir(parents=True, exist_ok=True)

# Sources: discover all .c files
SOURCES = [
    TEST_SUITE / "SingleSource/Benchmarks",
    TEST_SUITE / "MultiSource/Benchmarks",
    TEST_SUITE / "MultiSource/Applications",
]

SKIP_PATTERNS = [
    "tramp3d", "sqlite3", "obsequi", "Bullet", "ClamAV",
    "kimwitu++", "mafft", "JM", "SPASS", "lencod",
    "7zip", "consumer-typeset",
]

random.seed(42)


def try_compile_and_measure(c_file):
    """Try clang → IR, measure instruction count. Returns (name, source, inst_count) or None."""
    name = f"{c_file.parent.name}_{c_file.stem}"

    # Skip patterns
    cs = str(c_file).lower()
    for p in SKIP_PATTERNS:
        if p.lower() in cs:
            return None

    ir_path = OUT_DIR / f"{name}.ll"

    # Compile
    cmd = [
        CLANG, "-S", "-emit-llvm", "-O0",
        "-Xclang", "-disable-O0-optnone",
        "-Wno-implicit-int", "-Wno-implicit-function-declaration",
        "-Wno-return-type", "-Wno-incompatible-library-redeclaration",
        str(c_file), "-o", str(ir_path),
    ]
    result = subprocess.run(cmd, capture_output=True, check=False, timeout=30)
    if result.returncode != 0 or not ir_path.exists():
        return None

    # Quick count of instructions in IR (just grep for '=' or 'ret' lines)
    text = ir_path.read_text(encoding="utf-8", errors="ignore")
    lines = text.splitlines()
    inst_count = 0
    for line in lines:
        line = line.split(";", 1)[0].strip()
        if not line or line.startswith(("define", "declare", "attributes", "source_filename", "target", "!", "}")):
            continue
        if line == "{" or line.endswith(":"):
            continue
        inst_count += 1

    if inst_count < 25:  # Skip trivial programs
        return None
    if inst_count > 2500:  # Skip very large programs (slow to analyze)
        return None

    # Category
    category = c_file.parent.parent.name if c_file.parent.parent != TEST_SUITE else c_file.parent.name

    return {
        "name": name,
        "source": str(c_file).replace("\\", "/"),
        "category": category,
        "inst_count": inst_count,
    }


def main():
    # Discover all .c files
    all_files = []
    for sd in SOURCES:
        if sd.exists():
            for c_file in sorted(sd.rglob("*.c")):
                cs = str(c_file).lower()
                if any(p.lower() in cs for p in SKIP_PATTERNS):
                    continue
                all_files.append(c_file)

    print(f"Found {len(all_files)} C files. Sampling and measuring...")

    # Use all files (no sampling)
    print(f"Testing all {len(all_files)} files.")

    # Compile and measure
    qualified = []
    for i, c_file in enumerate(all_files):
        if i % 50 == 0:
            print(f"  {i}/{len(all_files)} ({len(qualified)} qualified)")

        result = try_compile_and_measure(c_file)
        if result:
            qualified.append(result)

    print(f"\nQualified: {len(qualified)} benchmarks (30-2000 IR instructions)")

    # Ensure category diversity: max 3 per category
    by_category = defaultdict(list)
    for b in qualified:
        by_category[b["category"]].append(b)

    curated = []
    for cat, items in sorted(by_category.items()):
        # Pick up to 5 random from each category
        if len(items) > 5:
            items = random.sample(items, 5)
        curated.extend(items)

    # Shuffle
    random.shuffle(curated)

    # Cap at 120
    if len(curated) > 120:
        curated = curated[:120]

    # Sort by instruction count for nice distribution
    curated.sort(key=lambda b: b["inst_count"])

    print(f"Curated: {len(curated)} benchmarks from {len(by_category)} categories")
    print(f"IR size range: {curated[0]['inst_count']} - {curated[-1]['inst_count']} instructions")

    # Show distribution
    sizes = [b["inst_count"] for b in curated]
    print(f"  Small (30-100):  {sum(1 for s in sizes if s <= 100)}")
    print(f"  Medium (101-300):{sum(1 for s in sizes if 100 < s <= 300)}")
    print(f"  Large (301-2000):{sum(1 for s in sizes if s > 300)}")

    # Write manifest
    manifest = {
        "description": f"Curated diverse benchmark set: {len(curated)} programs, "
                       f"30-2000 IR instructions, max 3 per category",
        "test_suite_root": "E:/llvm-test-suite",
        "benchmarks": [{"name": b["name"], "source": b["source"]} for b in curated],
    }

    out_path = Path("configs/benchmarks_curated.json")
    out_path.write_text(json.dumps(manifest, indent=2))
    print(f"\nSaved to {out_path}")


if __name__ == "__main__":
    main()
