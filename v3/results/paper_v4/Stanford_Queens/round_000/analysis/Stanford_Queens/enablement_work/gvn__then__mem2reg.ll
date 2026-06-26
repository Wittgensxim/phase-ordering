; ModuleID = 'results\paper_v4\Stanford_Queens\Stanford_Queens.ll'
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
  br label %7

7:                                                ; preds = %57, %6
  %8 = phi ptr [ %58, %57 ], [ %1, %6 ]
  %9 = phi ptr [ %59, %57 ], [ %1, %6 ]
  %10 = phi i32 [ %18, %57 ], [ 0, %6 ]
  %11 = phi i32 [ %.pre, %57 ], [ 0, %6 ]
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = icmp ne i32 %10, 8
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i1 [ false, %7 ], [ %14, %13 ]
  br i1 %16, label %17, label %60

17:                                               ; preds = %15
  %18 = add nsw i32 %10, 1
  store i32 0, ptr %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %3, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = add nsw i32 %0, %18
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %2, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = sub nsw i32 %0, %18
  %31 = add nsw i32 %30, 7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %4, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = sext i32 %0 to i64
  %38 = getelementptr inbounds i32, ptr %5, i64 %37
  store i32 %18, ptr %38, align 4
  store i32 0, ptr %20, align 4
  store i32 0, ptr %26, align 4
  store i32 0, ptr %33, align 4
  %39 = icmp slt i32 %0, 8
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = add nsw i32 %0, 1
  call void @Try(i32 noundef %41, ptr noundef %8, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %42 = load i32, ptr %1, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i32, ptr %3, i64 %19
  store i32 1, ptr %45, align 4
  %46 = add nsw i32 %0, %18
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %2, i64 %47
  store i32 1, ptr %48, align 4
  %49 = sub nsw i32 %0, %18
  %50 = add nsw i32 %49, 7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %4, i64 %51
  store i32 1, ptr %52, align 4
  %.pre.pre.pre.pre = load i32, ptr %1, align 4
  br label %53

53:                                               ; preds = %44, %40
  %.pre.pre.pre = phi i32 [ %.pre.pre.pre.pre, %44 ], [ %42, %40 ]
  br label %55

54:                                               ; preds = %36
  store i32 1, ptr %8, align 4
  br label %55

55:                                               ; preds = %54, %53
  %.pre.pre = phi i32 [ 1, %54 ], [ %.pre.pre.pre, %53 ]
  %56 = phi ptr [ %8, %54 ], [ %1, %53 ]
  br label %57

57:                                               ; preds = %55, %29, %23, %17
  %.pre = phi i32 [ %.pre.pre, %55 ], [ 0, %29 ], [ 0, %23 ], [ 0, %17 ]
  %58 = phi ptr [ %56, %55 ], [ %8, %29 ], [ %8, %23 ], [ %8, %17 ]
  %59 = phi ptr [ %56, %55 ], [ %9, %29 ], [ %9, %23 ], [ %9, %17 ]
  br label %7, !llvm.loop !7

60:                                               ; preds = %15
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

6:                                                ; preds = %27, %0
  %7 = phi i32 [ %28, %27 ], [ -7, %0 ]
  %8 = icmp sle i32 %7, 16
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = icmp sge i32 %7, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = icmp sle i32 %7, 8
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %11, %9
  %17 = icmp sge i32 %7, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp sle i32 %7, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = add nsw i32 %7, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %25
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

29:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  %30 = load i32, ptr %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %34

34:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ %6, %5 ], [ 1, %1 ]
  %4 = icmp sle i32 %3, 50
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Doit()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !10

7:                                                ; preds = %2
  %8 = add nsw i32 %0, 1
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Queens(i32 noundef %2)
  %5 = add nsw i32 %2, 1
  br label %1, !llvm.loop !11

6:                                                ; preds = %1
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
