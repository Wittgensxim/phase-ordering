; ModuleID = 'results\paper_full\BenchmarkGame_recursive\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/recursive.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fib(%.1f): %.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Tak(%d,%d,%d): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Fib(3): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Tak(3.0,2.0,1.0): %.1f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = add nsw i32 %1, 1
  br label %15

6:                                                ; preds = %2
  %7 = sub nsw i32 %0, 1
  %8 = icmp ne i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = sub nsw i32 %1, 1
  %11 = call i32 @ack(i32 noundef %0, i32 noundef %10)
  br label %12

12:                                               ; preds = %6, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %6 ]
  %14 = call i32 @ack(i32 noundef %7, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %4
  %.0 = phi i32 [ %5, %4 ], [ %14, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fib(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = sub nsw i32 %0, 2
  %5 = call i32 @fib(i32 noundef %4)
  %6 = sub nsw i32 %0, 1
  %7 = call i32 @fib(i32 noundef %6)
  %8 = add nsw i32 %5, %7
  br label %9

9:                                                ; preds = %1, %3
  %.0 = phi i32 [ %8, %3 ], [ 1, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @fibFP(double noundef %0) #0 {
  %2 = fcmp olt double %0, 2.000000e+00
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = fsub double %0, 2.000000e+00
  %5 = call double @fibFP(double noundef %4)
  %6 = fsub double %0, 1.000000e+00
  %7 = call double @fibFP(double noundef %6)
  %8 = fadd double %5, %7
  br label %9

9:                                                ; preds = %1, %3
  %.0 = phi double [ %8, %3 ], [ 1.000000e+00, %1 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tak(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = sub nsw i32 %0, 1
  %7 = call i32 @tak(i32 noundef %6, i32 noundef %1, i32 noundef %2)
  %8 = sub nsw i32 %1, 1
  %9 = call i32 @tak(i32 noundef %8, i32 noundef %2, i32 noundef %0)
  %10 = sub nsw i32 %2, 1
  %11 = call i32 @tak(i32 noundef %10, i32 noundef %0, i32 noundef %1)
  %12 = call i32 @tak(i32 noundef %7, i32 noundef %9, i32 noundef %11)
  br label %13

13:                                               ; preds = %3, %5
  %.0 = phi i32 [ %12, %5 ], [ %2, %3 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @takFP(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = fcmp olt double %1, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = fsub double %0, 1.000000e+00
  %7 = call double @takFP(double noundef %6, double noundef %1, double noundef %2)
  %8 = fsub double %1, 1.000000e+00
  %9 = call double @takFP(double noundef %8, double noundef %2, double noundef %0)
  %10 = fsub double %2, 1.000000e+00
  %11 = call double @takFP(double noundef %10, double noundef %0, double noundef %1)
  %12 = call double @takFP(double noundef %7, double noundef %9, double noundef %11)
  br label %13

13:                                               ; preds = %3, %5
  %.0 = phi double [ %12, %5 ], [ %2, %3 ]
  ret double %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 @ack(i32 noundef 3, i32 noundef 11)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 11, i32 noundef %3)
  %5 = call double @fibFP(double noundef 3.800000e+01)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef 3.800000e+01, double noundef %5)
  %7 = call i32 @tak(i32 noundef 30, i32 noundef 20, i32 noundef 10)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 30, i32 noundef 20, i32 noundef 10, i32 noundef %7)
  %9 = call i32 @fib(i32 noundef 3)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %9)
  %11 = call double @takFP(double noundef 3.000000e+00, double noundef 2.000000e+00, double noundef 1.000000e+00)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %11)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/recursive.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
