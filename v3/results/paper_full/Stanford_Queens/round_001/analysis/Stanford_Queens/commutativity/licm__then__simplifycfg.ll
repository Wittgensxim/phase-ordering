; ModuleID = 'results\paper_full\Stanford_Queens\round_000\output.ll'
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
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Try(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  store i32 0, ptr %1, align 4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = icmp slt i32 %0, 8
  %10 = add nsw i32 %0, 1
  br label %11

11:                                               ; preds = %40, %6
  %.0 = phi i32 [ 0, %6 ], [ %16, %40 ]
  %12 = load i32, ptr %1, align 4
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne i32 %.0, 8
  %spec.select = select i1 %13, i1 false, i1 %14
  br i1 %spec.select, label %15, label %41

15:                                               ; preds = %11
  %16 = add nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %3, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = add nsw i32 %0, %16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %2, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = sub nsw i32 %0, %16
  %29 = add nsw i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %4, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  store i32 %16, ptr %8, align 4
  store i32 0, ptr %18, align 4
  store i32 0, ptr %24, align 4
  store i32 0, ptr %31, align 4
  br i1 %9, label %35, label %39

35:                                               ; preds = %34
  call void @Try(i32 noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %36 = load i32, ptr %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  store i32 1, ptr %18, align 4
  store i32 1, ptr %24, align 4
  store i32 1, ptr %31, align 4
  br label %40

39:                                               ; preds = %34
  store i32 1, ptr %1, align 4
  br label %40

40:                                               ; preds = %39, %38, %35, %27, %21, %15
  br label %11, !llvm.loop !7

41:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [9 x i32], align 16
  %3 = alloca [17 x i32], align 16
  %4 = alloca [15 x i32], align 16
  %5 = alloca [9 x i32], align 16
  br label %6

6:                                                ; preds = %25, %0
  %.0 = phi i32 [ -7, %0 ], [ %26, %25 ]
  %7 = icmp sle i32 %.0, 16
  br i1 %7, label %8, label %27

8:                                                ; preds = %6
  %9 = icmp sge i32 %.0, 1
  %10 = icmp sle i32 %.0, 8
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %14

11:                                               ; preds = %8
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %8
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
  br label %6, !llvm.loop !9

27:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  %28 = load i32, ptr %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi i32 [ 1, %1 ], [ %5, %4 ]
  %3 = icmp sle i32 %.0, 50
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  call void @Doit()
  %5 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !10

6:                                                ; preds = %2
  %7 = add nsw i32 %0, 1
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  %4 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !11

5:                                                ; preds = %1
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
