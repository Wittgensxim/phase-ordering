import argparse
import json
import re
import subprocess
from collections import defaultdict
from pathlib import Path

from pass_pipeline import pipeline_name


DEFINE_RE = re.compile(r"^\s*define\b.*@([A-Za-z_.$][\w.$-]*)\s*\(")
DECLARE_RE = re.compile(r"^\s*declare\b.*@([A-Za-z_.$][\w.$-]*)\s*\(")
LABEL_RE = re.compile(r"^\s*([A-Za-z_.$][\w.$-]*|\d+):")
CALL_RE = re.compile(r"\bcall\b.*@([A-Za-z_.$][\w.$-]*)\s*\(")
ASSIGN_OPCODE_RE = re.compile(r"^\s*(?:[%@][-A-Za-z0-9_.$]+)\s*=\s*([A-Za-z][A-Za-z0-9_.-]*)\b")
ASSIGN_INST_RE = re.compile(r"^\s*((?:[%@])[-A-Za-z0-9_.$]+)\s*=\s*([A-Za-z][A-Za-z0-9_.-]*)\b")
PLAIN_OPCODE_RE = re.compile(r"^\s*([A-Za-z][A-Za-z0-9_.-]*)\b")
BRANCH_TARGET_RE = re.compile(r"\blabel\s+%?([A-Za-z_.$][\w.$-]*|\d+)\b")
SSA_REF_RE = re.compile(r"%[-A-Za-z0-9_.$]+")

SKIP_OPCODES = {
    "attributes",
    "define",
    "declare",
    "source_filename",
    "target",
}


def extract_ir_fingerprint(ir_text):
    fingerprint = {}
    current_function = None
    current_block = "entry"
    block_label_map = {}
    block_instruction_counts = defaultdict(int)
    loop_headers = set()

    for raw_line in ir_text.splitlines():
        line = raw_line.split(";", 1)[0].strip()
        if not line:
            continue

        define_match = DEFINE_RE.match(line)
        if define_match:
            current_function = define_match.group(1)
            current_block = "entry"
            block_label_map = {}
            block_instruction_counts.clear()
            loop_headers.clear()
            token = f"func:{current_function}"
            fingerprint[token] = token
            continue

        if line == "}":
            current_function = None
            continue

        if DECLARE_RE.match(line):
            continue

        label_match = LABEL_RE.match(line)
        if label_match and current_function:
            current_block = _canonical_block_name(label_match.group(1), block_label_map)
            block_instruction_counts[current_block] = 0
            token = f"bb:{current_function}:{current_block}"
            fingerprint[token] = token
            continue

        token = _extract_instruction_token(
            line, current_function, current_block, block_instruction_counts
        )
        if token:
            fingerprint[token] = _normalize_ir_line(line, block_label_map)

        loop_tokens = _extract_loop_tokens(
            line, current_function, current_block, block_label_map
        )
        for loop_token, loop_value in loop_tokens.items():
            loop_headers.add(loop_token.rsplit(":", 1)[1])
            fingerprint[loop_token] = _merge_fingerprint_value(
                fingerprint.get(loop_token), loop_value
            )

    return dict(fingerprint)


def _extract_instruction_token(line, current_function, current_block, block_instruction_counts):
    if not current_function:
        return None

    assign_match = ASSIGN_INST_RE.match(line)
    if assign_match:
        result_name = assign_match.group(1)
        opcode = assign_match.group(2)
        if opcode in SKIP_OPCODES:
            return None
        return f"inst:{current_function}:{result_name}"

    opcode = _extract_opcode(line)
    if not opcode:
        return None

    block_instruction_counts[current_block] += 1
    ordinal = block_instruction_counts[current_block]
    return f"inst:{current_function}:{current_block}:{ordinal}:{opcode}"


def _extract_opcode(line):
    assign_match = ASSIGN_OPCODE_RE.match(line)
    if assign_match:
        opcode = assign_match.group(1)
        return opcode if opcode not in SKIP_OPCODES else None

    plain_match = PLAIN_OPCODE_RE.match(line)
    if not plain_match:
        return None

    opcode = plain_match.group(1)
    return opcode if opcode not in SKIP_OPCODES else None


def _extract_loop_tokens(line, current_function, current_block, block_label_map):
    if not current_function or "!llvm.loop" not in line:
        return {}

    targets = BRANCH_TARGET_RE.findall(line)
    if not targets:
        return {}

    header = _canonical_block_name(targets[0], block_label_map)
    token = f"loop:{current_function}:{header}"
    value = " ".join(
        [
            f"header={header}",
            f"latch={current_block}",
            f"terminator={_normalize_ir_line(line, block_label_map)}",
        ]
    )
    return {token: value}


def _merge_fingerprint_value(existing, value):
    if existing is None:
        return value

    parts = existing.split(" | ")
    if value not in parts:
        parts.append(value)
    return " | ".join(parts)


def _normalize_ir_line(line, block_label_map=None):
    normalized = " ".join(line.split())
    if block_label_map is not None:
        normalized = re.sub(
            r"\blabel\s+%?([A-Za-z_.$][\w.$-]*|\d+)\b",
            lambda match: f"label %{_canonical_block_name(match.group(1), block_label_map)}",
            normalized,
        )
    return SSA_REF_RE.sub("%v", normalized)


def _canonical_block_name(label, block_label_map):
    if not label.isdigit():
        return label

    canonical = block_label_map.get(label)
    if canonical is None:
        canonical = f"bb{len(block_label_map)}"
        block_label_map[label] = canonical
    return canonical


def build_footprint_record(pass_name, before_ir, after_ir):
    before = extract_ir_fingerprint(before_ir)
    after = extract_ir_fingerprint(after_ir)
    changed = _changed_features(before, after)
    reads = set(feature for feature in changed if feature in before)
    writes = sorted(changed)
    return {
        "pass": pass_name,
        "reads": sorted(reads),
        "writes": writes,
        "write_values": {feature: after.get(feature) for feature in writes},
    }


def _changed_features(before, after):
    return {
        feature
        for feature in set(before) | set(after)
        if before.get(feature, 0) != after.get(feature, 0)
    }


def run_opt_pass(opt_path, input_ir, pass_name, output_ir):
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    command = [
        str(opt_path),
        "-S",
        f"-passes={pipeline_name(pass_name)}",
        str(input_ir),
        "-o",
        str(output_path),
    ]
    result = subprocess.run(command, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            "opt failed for pass {pass_name} with exit code {code}\n{stderr}".format(
                pass_name=pass_name,
                code=result.returncode,
                stderr=result.stderr.strip(),
            )
        )
    return output_path


def collect_pass_footprints(input_ir, passes, opt_path, work_dir):
    input_path = Path(input_ir)
    before_ir = input_path.read_text(encoding="utf-8")
    work_path = Path(work_dir)
    work_path.mkdir(parents=True, exist_ok=True)

    records = []
    for pass_name in passes:
        safe_pass_name = pass_name.replace(",", "_").replace(" ", "_")
        after_path = work_path / f"{safe_pass_name}.after.ll"
        run_opt_pass(opt_path, input_path, pass_name, after_path)
        after_ir = after_path.read_text(encoding="utf-8")
        records.append(build_footprint_record(pass_name, before_ir, after_ir))

    return records


def write_footprints_jsonl(records, output_path):
    path = Path(output_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8") as handle:
        for record in records:
            handle.write(json.dumps(record, ensure_ascii=False, sort_keys=True) + "\n")


def parse_passes(value):
    return [item.strip() for item in value.split(",") if item.strip()]


def parse_args():
    parser = argparse.ArgumentParser(
        description="Run LLVM passes and collect coarse read/write footprints."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument(
        "--passes",
        required=True,
        help="Comma-separated LLVM pass names, such as instcombine,simplifycfg,dce.",
    )
    parser.add_argument(
        "--opt",
        default=r"E:\llvm\build\bin\opt.exe",
        help="Path to LLVM opt executable.",
    )
    parser.add_argument(
        "--work-dir",
        default="results/pass_outputs",
        help="Directory for per-pass after-IR files.",
    )
    parser.add_argument(
        "--out",
        default="results/footprints.jsonl",
        help="Output JSONL footprint path.",
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
    print(f"Wrote {len(records)} footprint records to {args.out}")


if __name__ == "__main__":
    main()
