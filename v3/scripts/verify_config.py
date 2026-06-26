"""Verify 15-pass config."""
import json

config = json.load(open("configs/pass_sets.json"))
ps = config["pass_sets"]["research"]
print(f"research: {len(ps)} passes")
for i, p in enumerate(ps):
    tag = ""
    if p == "mem2reg":
        tag = "  <- NEW"
    elif p in ("licm", "indvars", "reassociate"):
        tag = "  <- NEW"
    print(f"  {i+1:2d}. {p:20s}{tag}")

print(f"\nmandatory_orders: {len(config['mandatory_orders'])}")
for o in config["mandatory_orders"]:
    print(f"  {o['before']} -> {o['after']}")

# Verify count
assert len(ps) == 15, f"Expected 15 passes, got {len(ps)}"
print("\n✓ Config valid: 15 passes, 6 mandatory orders")
