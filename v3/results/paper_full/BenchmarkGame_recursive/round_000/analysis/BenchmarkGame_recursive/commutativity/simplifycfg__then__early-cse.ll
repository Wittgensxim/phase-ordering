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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = add nsw i32 %1, 1
  store i32 %9, ptr %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = sub nsw i32 %6, 1
  %12 = icmp ne i32 %1, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = sub nsw i32 %1, 1
  %15 = call i32 @ack(i32 noundef %6, i32 noundef %14)
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 1, %10 ]
  %18 = call i32 @ack(i32 noundef %11, i32 noundef %17)
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32, ptr %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fib(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  br label %13

6:                                                ; preds = %1
  %7 = sub nsw i32 %0, 2
  %8 = call i32 @fib(i32 noundef %7)
  %9 = load i32, ptr %3, align 4
  %10 = sub nsw i32 %9, 1
  %11 = call i32 @fib(i32 noundef %10)
  %12 = add nsw i32 %8, %11
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %6, %5
  %14 = load i32, ptr %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @fibFP(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, ptr %3, align 8
  %4 = fcmp olt double %0, 2.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store double 1.000000e+00, ptr %2, align 8
  br label %13

6:                                                ; preds = %1
  %7 = fsub double %0, 2.000000e+00
  %8 = call double @fibFP(double noundef %7)
  %9 = load double, ptr %3, align 8
  %10 = fsub double %9, 1.000000e+00
  %11 = call double @fibFP(double noundef %10)
  %12 = fadd double %8, %11
  store double %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %6, %5
  %14 = load double, ptr %2, align 8
  ret double %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tak(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = sub nsw i32 %9, 1
  %13 = call i32 @tak(i32 noundef %12, i32 noundef %8, i32 noundef %2)
  %14 = load i32, ptr %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, ptr %7, align 4
  %17 = load i32, ptr %5, align 4
  %18 = call i32 @tak(i32 noundef %15, i32 noundef %16, i32 noundef %17)
  %19 = load i32, ptr %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, ptr %5, align 4
  %22 = load i32, ptr %6, align 4
  %23 = call i32 @tak(i32 noundef %20, i32 noundef %21, i32 noundef %22)
  %24 = call i32 @tak(i32 noundef %13, i32 noundef %18, i32 noundef %23)
  store i32 %24, ptr %4, align 4
  br label %26

25:                                               ; preds = %3
  store i32 %2, ptr %4, align 4
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i32, ptr %4, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @takFP(double noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, ptr %5, align 8
  store double %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  %8 = load double, ptr %6, align 8
  %9 = load double, ptr %5, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = fsub double %9, 1.000000e+00
  %13 = call double @takFP(double noundef %12, double noundef %8, double noundef %2)
  %14 = load double, ptr %6, align 8
  %15 = fsub double %14, 1.000000e+00
  %16 = load double, ptr %7, align 8
  %17 = load double, ptr %5, align 8
  %18 = call double @takFP(double noundef %15, double noundef %16, double noundef %17)
  %19 = load double, ptr %7, align 8
  %20 = fsub double %19, 1.000000e+00
  %21 = load double, ptr %5, align 8
  %22 = load double, ptr %6, align 8
  %23 = call double @takFP(double noundef %20, double noundef %21, double noundef %22)
  %24 = call double @takFP(double noundef %13, double noundef %18, double noundef %23)
  store double %24, ptr %4, align 8
  br label %26

25:                                               ; preds = %3
  store double %2, ptr %4, align 8
  br label %26

26:                                               ; preds = %25, %11
  %27 = load double, ptr %4, align 8
  ret double %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 10, ptr %6, align 4
  %7 = call i32 @ack(i32 noundef 3, i32 noundef 11)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 11, i32 noundef %7)
  %9 = load i32, ptr %6, align 4
  %10 = sitofp i32 %9 to double
  %11 = fadd double 2.800000e+01, %10
  %12 = call double @fibFP(double noundef %11)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %11, double noundef %12)
  %14 = load i32, ptr %6, align 4
  %15 = mul nsw i32 3, %14
  %16 = mul nsw i32 2, %14
  %17 = call i32 @tak(i32 noundef %15, i32 noundef %16, i32 noundef %14)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15, i32 noundef %16, i32 noundef %14, i32 noundef %17)
  %19 = call i32 @fib(i32 noundef 3)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %19)
  %21 = call double @takFP(double noundef 3.000000e+00, double noundef 2.000000e+00, double noundef 1.000000e+00)
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %21)
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
