"""Discover compilable C files in llvm-test-suite MultiSource.

For each .c file, tries clang -fsyntax-only to check if it compiles standalone.
Keeps files that pass. Generates a manifest for the iterative scheduler.
"""
import subprocess
import json
import sys
from pathlib import Path

ROOT = Path("E:/llvm-test-suite")
CLANG = Path("E:/llvm/build/bin/clang.exe")

# Directories to search
SEARCH_DIRS = [
    ROOT / "MultiSource/Benchmarks",
    ROOT / "MultiSource/Applications",
]

# Files/dirs to skip (too large, known issues)
SKIP_PATTERNS = [
    "tramp3d", "sqlite3", "obsequi", "Bullet", "ClamAV",
    "kimwitu++", "mafft", "JM", "SPASS", "lencod",
    "7zip", "consumer-typeset", "sgefa", "lambda-0.1.3",
]


def should_skip(path_str):
    for p in SKIP_PATTERNS:
        if p.lower() in path_str.lower():
            return True
    return False


def try_compile(c_file, clang_path):
    """Test if a .c file compiles standalone. Returns True/False."""
    cmd = [
        str(clang_path), "-fsyntax-only",
        "-Wno-implicit-int", "-Wno-implicit-function-declaration",
        "-Wno-incompatible-library-redeclaration",
        "-Wno-return-type",
        str(c_file),
    ]
    result = subprocess.run(cmd, capture_output=True, check=False, timeout=30)
    return result.returncode == 0


def discover_benchmarks(search_dirs, clang_path, max_files=200):
    """Find all compilable C files, return list of {name, source} dicts."""
    benchmarks = []
    tested = 0
    passed = 0

    all_c_files = []
    for d in search_dirs:
        if not d.exists():
            continue
        for c_file in sorted(d.rglob("*.c")):
            if should_skip(str(c_file)):
                continue
            all_c_files.append(c_file)

    print(f"Found {len(all_c_files)} C files. Testing compilation...")
    if len(all_c_files) > max_files:
        import random
        random.seed(42)
        all_c_files = random.sample(all_c_files, max_files)
        print(f"Sampled {max_files} files for testing.")

    for c_file in all_c_files:
        tested += 1
        if tested % 20 == 0:
            print(f"  {tested}/{len(all_c_files)} ({passed} passed)")

        try:
            if try_compile(c_file, clang_path):
                passed += 1
                name = f"{c_file.parent.name}_{c_file.stem}"
                benchmarks.append({
                    "name": name,
                    "source": str(c_file).replace("\\", "/"),
                })
        except subprocess.TimeoutExpired:
            pass

    print(f"\nDone: {passed}/{tested} files compile standalone.")
    return benchmarks


def main():
    benchmarks = discover_benchmarks(SEARCH_DIRS, CLANG)

    manifest = {
        "description": f"MultiSource benchmarks: {len(benchmarks)} compilable files",
        "test_suite_root": "E:/llvm-test-suite",
        "benchmarks": benchmarks,
    }

    out_path = Path("configs/benchmarks_multisource.json")
    out_path.write_text(json.dumps(manifest, indent=2))
    print(f"\nSaved {out_path} with {len(benchmarks)} benchmarks")


if __name__ == "__main__":
    main()
