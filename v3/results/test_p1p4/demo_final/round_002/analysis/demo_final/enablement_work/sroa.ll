; ModuleID = 'results\test_p1p4\demo_final\round_001\output.ll'
source_filename = "examples\\demo.ll"

define i32 @compute(i32 %n, ptr %arr) {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %loop, label %exit

loop:                                             ; preds = %loop, %entry
  %i = phi i32 [ %next, %loop ], [ 0, %entry ]
  %sum = phi i32 [ %add, %loop ], [ 0, %entry ]
  %gep = getelementptr i32, ptr %arr, i32 %i
  %val = load i32, ptr %gep, align 4
  %mul = mul i32 %val, 2
  %add = add i32 %sum, %mul
  %next = add nuw nsw i32 %i, 1
  %cond = icmp slt i32 %next, %n
  br i1 %cond, label %loop, label %exit

exit:                                             ; preds = %loop, %entry
  %result = phi i32 [ 0, %entry ], [ %add, %loop ]
  ret i32 %result
}

define i32 @main() {
entry:
  %arr = alloca [10 x i32], align 4
  %result = call i32 @compute(i32 10, ptr %arr)
  ret i32 %result
}
