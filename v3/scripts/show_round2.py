"""Show combined round 2 results."""
import csv, json
from pathlib import Path

base = Path("results/paper_round2")
for d in sorted(base.iterdir()):
    if not d.is_dir():
        continue
    bc_path = d / "baseline_comparison.json"
    fm_path = d / "final_metrics.json"
    trace_path = d / "schedule_trace.csv"

    bc = json.loads(bc_path.read_text()) if bc_path.exists() else {}
    fm = json.loads(fm_path.read_text()) if fm_path.exists() else {}
    with open(trace_path) as f:
        rows = list(csv.DictReader(f))

    name = d.name
    init_score = rows[0]["metric_score"] if rows else "?"
    sched_score = fm.get("score", "?")
    o2_score = bc.get("baseline_score", "?")
    imp = bc.get("improvement", 0)
    pct = (imp / o2_score * 100) if o2_score else 0
    rounds = len(rows)

    # Count rollbacks
    rollbacks = 0
    for r in rows:
        det = r.get("action_details", "")
        if "Rollback" in det or "revert" in det.lower():
            rollbacks += 1

    winner = "✅" if imp > 0 else ("➖" if imp == 0 else "❌")
    print(f"{winner} {name:25s} | Scheduler={str(sched_score):>6s}  O2={str(o2_score):>6s}  "
          f"Δ={pct:+.1f}%  | rounds={rounds}  rollbacks={rollbacks}")
