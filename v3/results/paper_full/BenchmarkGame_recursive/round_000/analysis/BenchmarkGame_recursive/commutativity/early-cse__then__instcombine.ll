; ModuleID = 'results\paper_full\BenchmarkGame_recursive\BenchmarkGame_recursive.ll'
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
  %7 = add nsw i32 %0, -1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %11, label %8

8:                                                ; preds = %6
  %9 = add nsw i32 %1, -1
  %10 = call i32 @ack(i32 noundef %0, i32 noundef %9)
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i32 [ %10, %8 ], [ 1, %11 ]
  %14 = call i32 @ack(i32 noundef %7, i32 noundef %13)
  br label %15

15:                                               ; preds = %12, %4
  %storemerge = phi i32 [ %14, %12 ], [ %5, %4 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fib(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = add nsw i32 %0, -2
  %7 = call i32 @fib(i32 noundef %6)
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, -1
  %10 = call i32 @fib(i32 noundef %9)
  %11 = add nsw i32 %7, %10
  br label %12

12:                                               ; preds = %5, %4
  %storemerge = phi i32 [ %11, %5 ], [ 1, %4 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @fibFP(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, ptr %2, align 8
  %3 = fcmp olt double %0, 2.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = fadd double %0, -2.000000e+00
  %7 = call double @fibFP(double noundef %6)
  %8 = load double, ptr %2, align 8
  %9 = fadd double %8, -1.000000e+00
  %10 = call double @fibFP(double noundef %9)
  %11 = fadd double %7, %10
  br label %12

12:                                               ; preds = %5, %4
  %storemerge = phi double [ %11, %5 ], [ 1.000000e+00, %4 ]
  ret double %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tak(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = icmp slt i32 %1, %0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = add nsw i32 %0, -1
  %10 = call i32 @tak(i32 noundef %9, i32 noundef %1, i32 noundef %2)
  %11 = load i32, ptr %5, align 4
  %12 = add nsw i32 %11, -1
  %13 = load i32, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  %15 = call i32 @tak(i32 noundef %12, i32 noundef %13, i32 noundef %14)
  %16 = add nsw i32 %13, -1
  %17 = call i32 @tak(i32 noundef %16, i32 noundef %14, i32 noundef %11)
  %18 = call i32 @tak(i32 noundef %10, i32 noundef %15, i32 noundef %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %8
  %storemerge = phi i32 [ %2, %19 ], [ %18, %8 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @takFP(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, ptr %4, align 8
  store double %1, ptr %5, align 8
  store double %2, ptr %6, align 8
  %7 = fcmp olt double %1, %0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = fadd double %0, -1.000000e+00
  %10 = call double @takFP(double noundef %9, double noundef %1, double noundef %2)
  %11 = load double, ptr %5, align 8
  %12 = fadd double %11, -1.000000e+00
  %13 = load double, ptr %6, align 8
  %14 = load double, ptr %4, align 8
  %15 = call double @takFP(double noundef %12, double noundef %13, double noundef %14)
  %16 = fadd double %13, -1.000000e+00
  %17 = call double @takFP(double noundef %16, double noundef %14, double noundef %11)
  %18 = call double @takFP(double noundef %10, double noundef %15, double noundef %17)
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %8
  %storemerge = phi double [ %2, %19 ], [ %18, %8 ]
  ret double %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = call i32 @ack(i32 noundef 3, i32 noundef 11)
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 11, i32 noundef %3) #2
  %5 = call double @fibFP(double noundef 3.800000e+01)
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef 3.800000e+01, double noundef %5) #2
  %7 = call i32 @tak(i32 noundef 30, i32 noundef 20, i32 noundef 10)
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 30, i32 noundef 20, i32 noundef 10, i32 noundef %7) #2
  %9 = call i32 @fib(i32 noundef 3)
  %10 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %9) #2
  %11 = call double @takFP(double noundef 3.000000e+00, double noundef 2.000000e+00, double noundef 1.000000e+00)
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %11) #2
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
