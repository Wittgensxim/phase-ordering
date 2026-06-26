"""
LLVM pass footprint collection: runs each pass individually on input IR
and records which IR features each pass reads and writes.

Key design:
- Extracts fingerprint tokens: func:, bb:, inst:, loop:
- Strong tokens: func, loop. Weak tokens: bb, br/ret/unreachable inst
- SSA variables normalized to %v, block labels to canonical names
- Only tracks instructions inside function bodies
"""

import argparse
import json
import re
import subprocess
from pathlib import Path

from pass_pipeline import pipeline_name


# --- Regex patterns for IR parsing ---
DEFINE_RE = re.compile(r"^\s*define\b.*@([A-Za-z_.$][\w.$-]*)\s*\(")
LABEL_RE = re.compile(r"^\s*([A-Za-z_.$][\w.$-]*|\d+):")
ASSIGN_INST_RE = re.compile(
    r"^\s*((?:[%@])[-A-Za-z0-9_.$]+)\s*=\s*([A-Za-z][A-Za-z0-9_.-]*)\b"
)
PLAIN_OPCODE_RE = re.compile(r"^\s*([A-Za-z][A-Za-z0-9_.-]*)\b")
BRANCH_TARGET_RE = re.compile(r"\blabel\s+%?([A-Za-z_.$][\w.$-]*|\d+)\b")
SSA_REF_RE = re.compile(r"%[-A-Za-z0-9_.$]+")

SKIP_OPCODES = {"attributes", "define", "declare", "source_filename", "target"}


# --- Fingerprint extraction ---

def extract_ir_fingerprint(ir_text):
    """Parse LLVM IR text and return a dict of fingerprint tokens -> values."""
    fingerprint = {}
    current_function = None
    current_block = "entry"
    block_label_map = {}
    block_instruction_counts = {}

    for raw_line in ir_text.splitlines():
        line = raw_line.split(";", 1)[0].strip()
        if not line:
            continue

        # Function definition
        define_match = DEFINE_RE.match(line)
        if define_match:
            current_function = define_match.group(1)
            current_block = "entry"
            block_label_map = {}
            block_instruction_counts = {}
            token = f"func:{current_function}"
            fingerprint[token] = token
            continue

        if line == "}":
            current_function = None
            continue

        if not current_function:
            continue

        # Basic block label
        label_match = LABEL_RE.match(line)
        if label_match:
            current_block = _canonical_block_name(
                label_match.group(1), block_label_map
            )
            block_instruction_counts[current_block] = 0
            token = f"bb:{current_function}:{current_block}"
            fingerprint[token] = token
            continue

        # Instruction token
        token = _extract_instruction_token(
            line, current_function, current_block, block_instruction_counts
        )
        if token:
            fingerprint[token] = _normalize_ir_line(line, block_label_map)

        # Loop tokens
        for loop_token, loop_value in _extract_loop_tokens(
            line, current_function, current_block, block_label_map
        ).items():
            fingerprint[loop_token] = _merge_value(
                fingerprint.get(loop_token), loop_value
            )

    return dict(fingerprint)


def _extract_instruction_token(line, func, block, counts):
    assign_match = ASSIGN_INST_RE.match(line)
    if assign_match:
        result_name = assign_match.group(1)
        opcode = assign_match.group(2)
        if opcode in SKIP_OPCODES:
            return None
        return f"inst:{func}:{result_name}"

    opcode = _extract_opcode(line)
    if not opcode or opcode in SKIP_OPCODES:
        return None

    counts[block] = counts.get(block, 0) + 1
    ordinal = counts[block]
    return f"inst:{func}:{block}:{ordinal}:{opcode}"


def _extract_opcode(line):
    assign_match = ASSIGN_INST_RE.match(line)
    if assign_match:
        return assign_match.group(2)
    plain_match = PLAIN_OPCODE_RE.match(line)
    return plain_match.group(1) if plain_match else None


def _extract_loop_tokens(line, func, block, label_map):
    if "!llvm.loop" not in line:
        return {}
    targets = BRANCH_TARGET_RE.findall(line)
    if not targets:
        return {}
    header = _canonical_block_name(targets[0], label_map)
    token = f"loop:{func}:{header}"
    value = (
        f"header={header} "
        f"latch={block} "
        f"terminator={_normalize_ir_line(line, label_map)}"
    )
    return {token: value}


def _normalize_ir_line(line, label_map=None):
    normalized = " ".join(line.split())
    if label_map is not None:
        normalized = re.sub(
            r"\blabel\s+%?([A-Za-z_.$][\w.$-]*|\d+)\b",
            lambda m: f"label %{_canonical_block_name(m.group(1), label_map)}",
            normalized,
        )
    return SSA_REF_RE.sub("%v", normalized)


def _canonical_block_name(label, label_map):
    if not label.isdigit():
        return label
    canonical = label_map.get(label)
    if canonical is None:
        canonical = f"bb{len(label_map)}"
        label_map[label] = canonical
    return canonical


def _merge_value(existing, value):
    if existing is None:
        return value
    parts = existing.split(" | ")
    if value not in parts:
        parts.append(value)
    return " | ".join(parts)


# --- Footprint records ---

def build_footprint_record(pass_name, before_ir, after_ir):
    """Compare before/after IR fingerprints to produce a footprint record."""
    before = extract_ir_fingerprint(before_ir)
    after = extract_ir_fingerprint(after_ir)
    changed = {
        feature
        for feature in set(before) | set(after)
        if before.get(feature, 0) != after.get(feature, 0)
    }
    reads = sorted(feature for feature in changed if feature in before)
    writes = sorted(changed)
    return {
        "pass": pass_name,
        "reads": reads,
        "writes": writes,
        "write_values": {f: after.get(f) for f in writes},
    }


# --- opt execution ---

def run_opt_pass(opt_path, input_ir, pass_name, output_ir):
    """Run a single LLVM pass via opt and write the output IR."""
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    cmd = [
        str(opt_path),
        "-S",
        f"-passes={pipeline_name(pass_name)}",
        str(input_ir),
        "-o",
        str(output_path),
    ]
    result = subprocess.run(cmd, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            f"opt failed for pass '{pass_name}' (exit {result.returncode}): "
            f"{result.stderr.strip()}"
        )
    return output_path


def collect_pass_footprints(input_ir, passes, opt_path, work_dir):
    """Run each pass on input IR and collect footprint records."""
    input_path = Path(input_ir)
    before_ir = input_path.read_text(encoding="utf-8")
    work_path = Path(work_dir)
    work_path.mkdir(parents=True, exist_ok=True)

    records = []
    for pass_name in passes:
        safe_name = pass_name.replace(",", "_").replace(" ", "_")
        after_path = work_path / f"{safe_name}.after.ll"
        run_opt_pass(opt_path, input_path, pass_name, after_path)
        after_ir = after_path.read_text(encoding="utf-8")
        records.append(build_footprint_record(pass_name, before_ir, after_ir))

    return records


def write_footprints_jsonl(records, output_path):
    """Write footprint records as JSONL."""
    path = Path(output_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as f:
        for record in records:
            f.write(json.dumps(record, ensure_ascii=False, sort_keys=True) + "\n")


# --- Active pass detection ---

def is_pass_active(record):
    """A pass is active if its writes set is non-empty."""
    return bool(record.get("writes"))


# --- CLI ---

def parse_passes(value):
    return [p.strip() for p in value.split(",") if p.strip()]


def parse_args():
    parser = argparse.ArgumentParser(
        description="Run LLVM passes and collect read/write footprints."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument(
        "--passes", required=True, help="Comma-separated LLVM pass names."
    )
    parser.add_argument(
        "--opt", default=r"E:\llvm\build\bin\opt.exe", help="Path to opt."
    )
    parser.add_argument(
        "--work-dir", default="results/pass_outputs",
        help="Directory for per-pass output IR files."
    )
    parser.add_argument(
        "--out", default="results/footprints.jsonl", help="Output JSONL path."
    )
    return parser.parse_args()


def main():
    args = parse_args()
    passes = parse_passes(args.passes)
    records = collect_pass_footprints(
        input_ir=args.input_ir,
        passes=passes,
        opt_path=args.opt,
        work_dir=args.work_dir,
    )
    write_footprints_jsonl(records, args.out)
    active_count = sum(1 for r in records if is_pass_active(r))
    print(
        f"Collected {len(records)} footprint records "
        f"({active_count} active passes)."
    )


if __name__ == "__main__":
    main()
