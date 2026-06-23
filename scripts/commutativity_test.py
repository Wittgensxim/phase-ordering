import argparse
import csv
import json
import re
import subprocess
from itertools import combinations
from pathlib import Path

from pass_pipeline import pipeline_names


CSV_FIELDS = [
    "pass_a",
    "pass_b",
    "commute",
    "ab_path",
    "ba_path",
    "details",
]


def generate_pass_pairs(passes):
    return list(combinations(passes, 2))


def build_pair_result(
    pass_a,
    pass_b,
    diff_returncode,
    diff_stdout,
    diff_stderr,
    ab_path,
    ba_path,
):
    identical_text = diff_returncode != 0 and _ir_text_equal(ab_path, ba_path)
    if identical_text:
        details = (
            "identical IR text; ignored non-zero llvm-diff exit. "
            "llvm-diff output was:\n"
            + "\n".join(
                item.strip() for item in [diff_stdout, diff_stderr] if item.strip()
            )
        ).strip()
    else:
        details = "\n".join(
            item.strip() for item in [diff_stdout, diff_stderr] if item.strip()
        )
    return {
        "pass_a": pass_a,
        "pass_b": pass_b,
        "commute": diff_returncode == 0 or identical_text,
        "ab_path": str(ab_path),
        "ba_path": str(ba_path),
        "details": details,
    }


def _ir_text_equal(left_ir, right_ir):
    try:
        return Path(left_ir).read_text(encoding="utf-8") == Path(right_ir).read_text(
            encoding="utf-8"
        )
    except OSError:
        return False


def run_opt_pipeline(opt_path, input_ir, passes, output_ir):
    output_path = Path(output_ir)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    command = [
        str(opt_path),
        "-S",
        f"-passes={','.join(pipeline_names(passes))}",
        str(input_ir),
        "-o",
        str(output_path),
    ]
    result = subprocess.run(command, text=True, capture_output=True, check=False)
    if result.returncode != 0:
        raise RuntimeError(
            "opt failed for pipeline {pipeline} with exit code {code}\n{stderr}".format(
                pipeline=",".join(passes),
                code=result.returncode,
                stderr=result.stderr.strip(),
            )
        )
    return output_path


def compare_ir(llvm_diff_path, left_ir, right_ir):
    return subprocess.run(
        [str(llvm_diff_path), str(left_ir), str(right_ir)],
        text=True,
        capture_output=True,
        check=False,
    )


def run_pair_test(opt_path, llvm_diff_path, input_ir, pass_a, pass_b, work_dir):
    work_path = Path(work_dir)
    work_path.mkdir(parents=True, exist_ok=True)
    safe_a = _safe_name(pass_a)
    safe_b = _safe_name(pass_b)
    ab_path = work_path / f"{safe_a}__then__{safe_b}.ll"
    ba_path = work_path / f"{safe_b}__then__{safe_a}.ll"

    run_opt_pipeline(opt_path, input_ir, [pass_a, pass_b], ab_path)
    run_opt_pipeline(opt_path, input_ir, [pass_b, pass_a], ba_path)
    diff = compare_ir(llvm_diff_path, ab_path, ba_path)
    return build_pair_result(
        pass_a=pass_a,
        pass_b=pass_b,
        diff_returncode=diff.returncode,
        diff_stdout=diff.stdout,
        diff_stderr=diff.stderr,
        ab_path=ab_path,
        ba_path=ba_path,
    )


def run_commutativity_tests(opt_path, llvm_diff_path, input_ir, passes, work_dir):
    return [
        run_pair_test(opt_path, llvm_diff_path, input_ir, pass_a, pass_b, work_dir)
        for pass_a, pass_b in generate_pass_pairs(passes)
    ]


def filter_active_passes(passes, footprints):
    return [
        pass_name
        for pass_name in passes
        if footprints.get(pass_name, {}).get("writes")
    ]


def summarize(results):
    total_pairs = len(results)
    commuting_pairs = sum(1 for result in results if result["commute"])
    return {
        "total_pairs": total_pairs,
        "commuting_pairs": commuting_pairs,
        "non_commuting_pairs": total_pairs - commuting_pairs,
    }


def write_outputs(results, out_json, out_csv):
    json_path = Path(out_json)
    csv_path = Path(out_csv)
    json_path.parent.mkdir(parents=True, exist_ok=True)
    csv_path.parent.mkdir(parents=True, exist_ok=True)

    payload = {
        "summary": summarize(results),
        "pairs": results,
    }
    json_path.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    with csv_path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=CSV_FIELDS)
        writer.writeheader()
        for result in results:
            row = dict(result)
            row["commute"] = "true" if result["commute"] else "false"
            writer.writerow(row)


def parse_passes(value):
    return [item.strip() for item in value.split(",") if item.strip()]


def _safe_name(value):
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", value)


def parse_args():
    parser = argparse.ArgumentParser(
        description="Black-box commutativity test for LLVM pass pairs."
    )
    parser.add_argument("input_ir", help="Input LLVM IR .ll file.")
    parser.add_argument(
        "--passes",
        required=True,
        help="Comma-separated LLVM pass names.",
    )
    parser.add_argument(
        "--opt",
        default=r"E:\llvm\build\bin\opt.exe",
        help="Path to LLVM opt executable.",
    )
    parser.add_argument(
        "--llvm-diff",
        default=r"E:\llvm\build\bin\llvm-diff.exe",
        help="Path to llvm-diff executable.",
    )
    parser.add_argument(
        "--work-dir",
        default="results/commutativity",
        help="Directory for pair output IR files.",
    )
    parser.add_argument(
        "--out-json",
        default="results/commutativity_results.json",
        help="Output JSON path.",
    )
    parser.add_argument(
        "--out-csv",
        default="results/commutativity_results.csv",
        help="Output CSV path.",
    )
    return parser.parse_args()


def main():
    args = parse_args()
    results = run_commutativity_tests(
        opt_path=args.opt,
        llvm_diff_path=args.llvm_diff,
        input_ir=args.input_ir,
        passes=parse_passes(args.passes),
        work_dir=args.work_dir,
    )
    write_outputs(results, args.out_json, args.out_csv)
    summary = summarize(results)
    print(
        "Tested {total_pairs} pairs: {commuting_pairs} commuting, "
        "{non_commuting_pairs} non-commuting.".format(**summary)
    )


if __name__ == "__main__":
    main()
