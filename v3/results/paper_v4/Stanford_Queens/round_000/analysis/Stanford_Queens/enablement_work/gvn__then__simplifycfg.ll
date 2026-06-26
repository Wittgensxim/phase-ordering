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
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store i32 %0, ptr %7, align 4
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  store i32 0, ptr %13, align 4
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %69, %6
  %15 = phi ptr [ %70, %69 ], [ %1, %6 ]
  %16 = phi ptr [ %71, %69 ], [ %1, %6 ]
  %17 = phi i32 [ %24, %69 ], [ 0, %6 ]
  %18 = phi i32 [ %.pre, %69 ], [ 0, %6 ]
  %19 = icmp ne i32 %18, 0
  %20 = icmp ne i32 %17, 8
  %spec.select = select i1 %19, i1 false, i1 %20
  br i1 %spec.select, label %21, label %72

21:                                               ; preds = %14
  %22 = add nsw i32 %17, 1
  store i32 %22, ptr %13, align 4
  store i32 0, ptr %16, align 4
  %23 = load ptr, ptr %10, align 8
  %24 = load i32, ptr %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = load ptr, ptr %9, align 8
  %31 = load i32, ptr %7, align 4
  %32 = add nsw i32 %31, %24
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %29
  %38 = load ptr, ptr %11, align 8
  %39 = sub nsw i32 %31, %24
  %40 = add nsw i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load ptr, ptr %12, align 8
  %47 = sext i32 %31 to i64
  %48 = getelementptr inbounds i32, ptr %46, i64 %47
  store i32 %24, ptr %48, align 4
  store i32 0, ptr %26, align 4
  store i32 0, ptr %34, align 4
  store i32 0, ptr %42, align 4
  %49 = icmp slt i32 %31, 8
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = add nsw i32 %31, 1
  call void @Try(i32 noundef %51, ptr noundef %15, ptr noundef %30, ptr noundef %23, ptr noundef %38, ptr noundef %46)
  %52 = load ptr, ptr %8, align 8
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %10, align 8
  %57 = getelementptr inbounds i32, ptr %56, i64 %25
  store i32 1, ptr %57, align 4
  %58 = load ptr, ptr %9, align 8
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, %24
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %58, i64 %61
  store i32 1, ptr %62, align 4
  %63 = load ptr, ptr %11, align 8
  %64 = sub nsw i32 %59, %24
  %65 = add nsw i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %63, i64 %66
  store i32 1, ptr %67, align 4
  %.pre.pre.pre.pre = load i32, ptr %52, align 4
  br label %69

68:                                               ; preds = %45
  store i32 1, ptr %15, align 4
  br label %69

69:                                               ; preds = %68, %55, %50, %37, %29, %21
  %.pre = phi i32 [ 0, %21 ], [ 0, %37 ], [ 0, %29 ], [ 1, %68 ], [ %.pre.pre.pre.pre, %55 ], [ %53, %50 ]
  %70 = phi ptr [ %15, %21 ], [ %15, %37 ], [ %15, %29 ], [ %15, %68 ], [ %52, %55 ], [ %52, %50 ]
  %71 = phi ptr [ %16, %21 ], [ %16, %37 ], [ %16, %29 ], [ %15, %68 ], [ %52, %55 ], [ %52, %50 ]
  br label %14, !llvm.loop !7

72:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Doit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i32], align 16
  %4 = alloca [17 x i32], align 16
  %5 = alloca [15 x i32], align 16
  %6 = alloca [9 x i32], align 16
  store i32 -7, ptr %1, align 4
  br label %7

7:                                                ; preds = %27, %0
  %8 = phi i32 [ %28, %27 ], [ -7, %0 ]
  %9 = icmp sle i32 %8, 16
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = icmp sge i32 %8, 1
  %12 = icmp sle i32 %8, 8
  %or.cond = and i1 %11, %12
  br i1 %or.cond, label %13, label %16

13:                                               ; preds = %10
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = icmp sge i32 %8, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp sle i32 %8, 7
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = add nsw i32 %8, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %25
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = add nsw i32 %8, 1
  store i32 %28, ptr %1, align 4
  br label %7, !llvm.loop !9

29:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  %30 = load i32, ptr %2, align 4
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %8, %7 ], [ 1, %1 ]
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @Doit()
  %8 = add nsw i32 %5, 1
  store i32 %8, ptr %3, align 4
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %10 = add nsw i32 %0, 1
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !11

8:                                                ; preds = %3
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
