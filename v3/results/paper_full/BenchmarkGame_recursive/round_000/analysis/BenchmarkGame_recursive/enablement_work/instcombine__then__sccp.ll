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
define dso_local range(i32 -2147483647, -2147483648) i32 @ack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 4
  %8 = add nsw i32 %7, 1
  br label %22

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = add nsw i32 %10, -1
  %12 = load i32, ptr %4, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %18, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %4, align 4
  %16 = add nsw i32 %15, -1
  %17 = call i32 @ack(i32 noundef %14, i32 noundef %16)
  br label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 1, %18 ]
  %21 = call i32 @ack(i32 noundef %11, i32 noundef %20)
  br label %22

22:                                               ; preds = %19, %6
  %storemerge = phi i32 [ %21, %19 ], [ %8, %6 ]
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
  %6 = load i32, ptr %2, align 4
  %7 = add nsw i32 %6, -2
  %8 = call i32 @fib(i32 noundef %7)
  %9 = add nsw i32 %6, -1
  %10 = call i32 @fib(i32 noundef %9)
  %11 = add nsw i32 %8, %10
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
  %6 = load double, ptr %2, align 8
  %7 = fadd double %6, -2.000000e+00
  %8 = call double @fibFP(double noundef %7)
  %9 = fadd double %6, -1.000000e+00
  %10 = call double @fibFP(double noundef %9)
  %11 = fadd double %8, %10
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
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = add nsw i32 %9, -1
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %6, align 4
  %13 = call i32 @tak(i32 noundef %10, i32 noundef %11, i32 noundef %12)
  %14 = add nsw i32 %11, -1
  %15 = call i32 @tak(i32 noundef %14, i32 noundef %12, i32 noundef %9)
  %16 = add nsw i32 %12, -1
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %5, align 4
  %19 = call i32 @tak(i32 noundef %16, i32 noundef %17, i32 noundef %18)
  %20 = call i32 @tak(i32 noundef %13, i32 noundef %15, i32 noundef %19)
  br label %23

21:                                               ; preds = %3
  %22 = load i32, ptr %6, align 4
  br label %23

23:                                               ; preds = %21, %8
  %storemerge = phi i32 [ %22, %21 ], [ %20, %8 ]
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
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load double, ptr %4, align 8
  %10 = fadd double %9, -1.000000e+00
  %11 = load double, ptr %5, align 8
  %12 = load double, ptr %6, align 8
  %13 = call double @takFP(double noundef %10, double noundef %11, double noundef %12)
  %14 = fadd double %11, -1.000000e+00
  %15 = call double @takFP(double noundef %14, double noundef %12, double noundef %9)
  %16 = fadd double %12, -1.000000e+00
  %17 = load double, ptr %4, align 8
  %18 = load double, ptr %5, align 8
  %19 = call double @takFP(double noundef %16, double noundef %17, double noundef %18)
  %20 = call double @takFP(double noundef %13, double noundef %15, double noundef %19)
  br label %23

21:                                               ; preds = %3
  %22 = load double, ptr %6, align 8
  br label %23

23:                                               ; preds = %21, %8
  %storemerge = phi double [ %22, %21 ], [ %20, %8 ]
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
