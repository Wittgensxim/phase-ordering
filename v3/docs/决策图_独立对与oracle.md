# 决策图专题：为什么独立对不需要 oracle

> 本文档正面回答 reviewer 最可能问的三个问题。

---

## 问题 1：你说 oracle 只测 order_sensitive 对，那独立对的收益不会被漏掉吗？

### 简短回答

**不会。独立对涉及的 pass 通过 Priority 1/1.5 被直接执行，不等 oracle。**

### 完整推理

**前提 1**：一对 pass (A, B) 被标记为 `confirmed_independent`。

**前提 2**：`confirmed_independent` 的含义是 `opt(A→B) = opt(B→A)`（黑盒验证）。

**推论**：对 (A, B) 不存在排序决策——两个方向结果相同。

**分两种情况**：

#### 情况 1：A（或 B）的所有边都独立 → A 是 auto_safe

```
调度器行为:
  Priority 1 触发 → 直接执行 A → RETURN
  收益照拿。oracle 从未被调用。
```

**证据**（SMG2000_HYPRE_pcg, Round 0）：

```
auto_safe_passes: early-cse;gvn;instcombine;mem2reg;sroa
selected_action: auto_safe_pass (early-cse)
```

5 个 pass 全部通过 Priority 1 执行，oracle 调用次数 = 0。

#### 情况 2：A 有部分边独立、部分边 order_sensitive → A 不是 auto_safe

```
调度器行为:
  Priority 1 跳过（auto_safe 为空）
  Priority 2 触发 → oracle 评估 decision_pairs
  A 会出现在某些 decision pairs 中（A 的 order_sensitive 边）
  oracle 评估这些对时，会实际运行 A 并测量收益
  如果 A 的收益最大 → oracle 选中 A 所在的 pair → A 被执行
```

**关键点**：即使 A 不是 auto_safe，只要 A 有至少一条 order_sensitive 边，A 就会进入 decision_pairs，oracle 就会评估它。

#### 什么时候 A 的收益会被漏掉？

**唯一的情况**：A 的所有边都是 `confirmed_independent`（即 A 是 auto_safe）——但这时候 A 在 Priority 1 就被执行了。

**结论**：不存在"独立对中的 pass 不被执行/不被评估"的情况。它们要么在 Priority 1/1.5 被直接执行，要么在 Priority 2 通过 order_sensitive 边被 oracle 评估。

---

## 问题 2：那 21 个独立对里，有一个比 gvn→dse 更好的怎么办？

### 如果这个"更好的对"涉及的都是独立 pass

那这些 pass 在 Priority 1 就被执行了——oracle 根本不会跑，因为不需要决策。

### 如果这个"更好的对"中有一个 pass 不是 auto_safe

那这个 pass 的 order_sensitive 边会进入 decision_pairs。oracle 会评估这些边（包括涉及该 pass 的各种方向），自然会测量到它的收益。

**具体例子**：假设 `early-cse → instcombine` 改善 +80（比 gvn→dse 的 +72 更好），且两者都独立。

- 如果 early-cse 的所有边都独立 → early-cse 是 auto_safe → Priority 1 直接执行 early-cse（改善 +80 照拿）
- 如果 early-cse 有 1 条 order_sensitive 边（比如和 sroa） → early-cse 不是 auto_safe → 但 early-cse↔sroa 在 decision_pairs 中 → oracle 会测 `early-cse→sroa` 和 `sroa→early-cse` → 其中一个方向可能改善 +80 → oracle 会选它

---

## 问题 3：如果 oracle 也测独立对，会怎样？

### 计算量

```
Misc_flops_1, Round 0:
  当前: oracle 测 70 对 × 2 方向 = 140 次 opt
  补测: oracle 测 91 对 × 2 方向 = 182 次 opt (+30%)
```

### 对 claim 的影响

**核心 claim**："独立性分析把需要 oracle 决策的 pair 从 91 降到 70（-23%）。"

如果补测独立对：决策数从 70 回到 91 → 塌缩消失 → claim 被亲手抹掉。

### 对结果的影响

**零**。独立对方向无关——测了也是两个方向结果相同。oracle 选的最优动作不变。

---

## 真正的局限性（不在独立对）

### 贪心次优性

每轮只选 1 个局部最优动作。可能错过全局最优路径。

**这不关独立对的事。** 即使 oracle 测了全部 91 对，贪心单步决策仍然可能次优。

**正确验证**: 用 `exact_optimum.py` 枚举小 benchmark 的全局最优，算 `greedy_gap`。

### auto_safe 批次的内部顺序

当一个 batch 有 5 个独立 pass 时（如 SMG2000_HYPRE），Priority 1 当前用的是 `one_at_a_time`（每次只执行 1 个）。这 5 个 pass 的执行顺序是否影响后续的 order_sensitive 决策？

**理论上可能**。当前通过 batch commutativity spot-check 验证它们确实可交换。如果 spot-check 失败，回退到单 pass 模式。

---

## 总结

| 关注点 | 结论 |
|--------|------|
| 独立对收益是否被漏掉 | **否** — 通过 Priority 1/1.5 执行 |
| oracle 是否应该补测独立对 | **否** — 拆掉 claim，且无收益 |
| 真正的局限性 | **贪心次优性** — 用 exact_optimum 量化 |
| 正确验证方法 | `greedy_gap = greedy_instr − exact_instr` |
