; ModuleID = 'results\test_rule\demo_rule\round_000\input.ll'
source_filename = "results\\test_rule\\demo_rule\\round_000\\input.ll"

define i32 @compute(i32 %n, ptr %arr) {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %loop.preheader, label %exit

loop.preheader:                                   ; preds = %entry
  br label %loop

loop:                                             ; preds = %loop.preheader, %loop
  %i = phi i32 [ %next, %loop ], [ 0, %loop.preheader ]
  %sum = phi i32 [ %add, %loop ], [ 0, %loop.preheader ]
  %0 = sext i32 %i to i64
  %gep = getelementptr [4 x i8], ptr %arr, i64 %0
  %val = load i32, ptr %gep, align 4
  %mul = shl i32 %val, 1
  %add = add i32 %sum, %mul
  %next = add i32 %i, 1
  %cond = icmp slt i32 %next, %n
  br i1 %cond, label %loop, label %exit.loopexit

exit.loopexit:                                    ; preds = %loop
  %add.lcssa = phi i32 [ %add, %loop ]
  br label %exit

exit:                                             ; preds = %exit.loopexit, %entry
  %result = phi i32 [ 0, %entry ], [ %add.lcssa, %exit.loopexit ]
  ret i32 %result
}

define i32 @main() {
entry:
  %arr = alloca [10 x i32], align 4
  %result = call i32 @compute(i32 10, ptr nonnull %arr)
  ret i32 %result
}
