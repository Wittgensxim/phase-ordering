; Demo IR for phase ordering experiments
; A simple function that benefits from multiple passes

define i32 @compute(i32 %n, ptr %arr) {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %loop, label %exit

loop:
  %i = phi i32 [ 0, %entry ], [ %next, %loop ]
  %sum = phi i32 [ 0, %entry ], [ %add, %loop ]
  %gep = getelementptr i32, ptr %arr, i32 %i
  %val = load i32, ptr %gep
  %mul = mul i32 %val, 2
  %add = add i32 %sum, %mul
  %next = add i32 %i, 1
  %cond = icmp slt i32 %next, %n
  br i1 %cond, label %loop, label %exit

exit:
  %result = phi i32 [ 0, %entry ], [ %add, %loop ]
  ret i32 %result
}

define i32 @main() {
entry:
  %arr = alloca [10 x i32]
  %result = call i32 @compute(i32 10, ptr %arr)
  ret i32 %result
}
