"""Verify research_codesize (139-pass) config."""
import json

config = json.load(open("configs/pass_sets.json"))
ps = config["pass_sets"]["research_codesize"]
print(f"research_codesize: {len(ps)} passes")
# Show first 15 and last 5 to keep output manageable
for i, p in enumerate(ps[:15]):
    print(f"  {i+1:3d}. {p}")
print(f"  ... ({len(ps)-20} more)")
for i, p in enumerate(ps[-5:], len(ps)-4):
    print(f"  {i:3d}. {p}")

print(f"\nmandatory_orders: {len(config['mandatory_orders'])}")
for o in config["mandatory_orders"][:5]:
    print(f"  {o['before']} -> {o['after']}")
print(f"  ... ({len(config['mandatory_orders'])-5} more)")

assert len(ps) == 139, f"Expected 139 passes, got {len(ps)}"
print(f"\n✓ Config valid: 139 passes, {len(config['mandatory_orders'])} mandatory orders")
