; ModuleID = 'results\paper_round2\Stanford_Queens\Stanford_Queens.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" Error in Queens.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Try(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %63, %6
  %.0 = phi i32 [ 0, %6 ], [ %15, %63 ]
  %8 = load i32, ptr %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = icmp ne i32 %.0, 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i1 [ false, %7 ], [ %11, %10 ]
  br i1 %13, label %14, label %64

14:                                               ; preds = %12
  %15 = add nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %3, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %14
  %21 = add nsw i32 %0, %15
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %2, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = sub nsw i32 %0, %15
  %28 = add nsw i32 %27, 7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %4, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %26
  %34 = sext i32 %0 to i64
  %35 = getelementptr inbounds i32, ptr %5, i64 %34
  store i32 %15, ptr %35, align 4
  %36 = sext i32 %15 to i64
  %37 = getelementptr inbounds i32, ptr %3, i64 %36
  store i32 0, ptr %37, align 4
  %38 = add nsw i32 %0, %15
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %2, i64 %39
  store i32 0, ptr %40, align 4
  %41 = sub nsw i32 %0, %15
  %42 = add nsw i32 %41, 7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %4, i64 %43
  store i32 0, ptr %44, align 4
  %45 = icmp slt i32 %0, 8
  br i1 %45, label %46, label %61

46:                                               ; preds = %33
  %47 = add nsw i32 %0, 1
  call void @Try(i32 noundef %47, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %48 = load i32, ptr %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = sext i32 %15 to i64
  %52 = getelementptr inbounds i32, ptr %3, i64 %51
  store i32 1, ptr %52, align 4
  %53 = add nsw i32 %0, %15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %2, i64 %54
  store i32 1, ptr %55, align 4
  %56 = sub nsw i32 %0, %15
  %57 = add nsw i32 %56, 7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %4, i64 %58
  store i32 1, ptr %59, align 4
  br label %60

60:                                               ; preds = %50, %46
  br label %62

61:                                               ; preds = %33
  store i32 1, ptr %1, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %26, %20, %14
  br label %7, !llvm.loop !7

64:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca [17 x i32], align 16
  %4 = alloca [15 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = icmp sle i32 -7, 16
  br i1 %6, label %.lr.ph, label %28

.lr.ph:                                           ; preds = %0
  br label %7

7:                                                ; preds = %.lr.ph, %25
  %.0 = phi i32 [ -7, %.lr.ph ], [ %26, %25 ]
  %8 = icmp sge i32 %.0, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = icmp sle i32 %.0, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %9, %7
  %15 = icmp sge i32 %.0, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sext i32 %.0 to i64
  %18 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = icmp sle i32 %.0, 7
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = add nsw i32 %.0, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = add nsw i32 %.0, 1
  %27 = icmp sle i32 %26, 16
  br i1 %27, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge, %0
  %29 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 0
  %30 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 0
  %31 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 0
  %32 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  %33 = load i32, ptr %1, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %37

37:                                               ; preds = %35, %28
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = icmp sle i32 1, 50
  br i1 %2, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %1
  br label %3

3:                                                ; preds = %.lr.ph, %4
  %.0 = phi i32 [ 1, %.lr.ph ], [ %5, %4 ]
  call void @Doit()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %3, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %4
  br label %7

7:                                                ; preds = %._crit_edge, %1
  %8 = add nsw i32 %0, 1
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = icmp slt i32 0, 100
  br i1 %1, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  %.0 = phi i32 [ 0, %.lr.ph ], [ %4, %3 ]
  call void @Queens(i32 noundef %.0)
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %.0, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %3
  br label %6

6:                                                ; preds = %._crit_edge, %0
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Queens.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
