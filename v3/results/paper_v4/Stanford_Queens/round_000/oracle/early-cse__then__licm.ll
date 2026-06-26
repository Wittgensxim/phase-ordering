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
  %14 = load ptr, ptr %8, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %8, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = load ptr, ptr %9, align 8
  %19 = load i32, ptr %7, align 4
  %20 = load ptr, ptr %11, align 8
  %21 = load ptr, ptr %12, align 8
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load ptr, ptr %10, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = load i32, ptr %7, align 4
  %27 = load ptr, ptr %11, align 8
  %28 = load i32, ptr %7, align 4
  %29 = load i32, ptr %7, align 4
  %30 = icmp slt i32 %29, 8
  %31 = load ptr, ptr %8, align 8
  %32 = add nsw i32 %29, 1
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %10, align 8
  %36 = load ptr, ptr %11, align 8
  %37 = load ptr, ptr %12, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = load ptr, ptr %10, align 8
  %40 = load ptr, ptr %9, align 8
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %11, align 8
  %43 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %13, align 4
  br label %44

44:                                               ; preds = %98, %6
  %45 = phi i32 [ %99, %98 ], [ %.promoted, %6 ]
  %46 = load i32, ptr %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = icmp ne i32 %45, 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i1 [ false, %44 ], [ %49, %48 ]
  br i1 %51, label %52, label %100

52:                                               ; preds = %50
  %53 = add nsw i32 %45, 1
  store i32 0, ptr %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %17, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %52
  %59 = add nsw i32 %19, %53
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %18, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %58
  %65 = sub nsw i32 %19, %53
  %66 = add nsw i32 %65, 7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %20, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %64
  store i32 %53, ptr %23, align 4
  %72 = sext i32 %53 to i64
  %73 = getelementptr inbounds i32, ptr %24, i64 %72
  store i32 0, ptr %73, align 4
  %74 = add nsw i32 %26, %53
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %25, i64 %75
  store i32 0, ptr %76, align 4
  %77 = sub nsw i32 %28, %53
  %78 = add nsw i32 %77, 7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %27, i64 %79
  store i32 0, ptr %80, align 4
  br i1 %30, label %81, label %95

81:                                               ; preds = %71
  call void @Try(i32 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %82 = load i32, ptr %38, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = sext i32 %53 to i64
  %86 = getelementptr inbounds i32, ptr %39, i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nsw i32 %41, %53
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %40, i64 %88
  store i32 1, ptr %89, align 4
  %90 = sub nsw i32 %43, %53
  %91 = add nsw i32 %90, 7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %42, i64 %92
  store i32 1, ptr %93, align 4
  br label %94

94:                                               ; preds = %84, %81
  br label %96

95:                                               ; preds = %71
  store i32 1, ptr %31, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = phi i32 [ %53, %95 ], [ %53, %94 ]
  br label %98

98:                                               ; preds = %96, %64, %58, %52
  %99 = phi i32 [ %97, %96 ], [ %53, %64 ], [ %53, %58 ], [ %53, %52 ]
  br label %44, !llvm.loop !7

100:                                              ; preds = %50
  %.lcssa = phi i32 [ %45, %50 ]
  store i32 %.lcssa, ptr %13, align 4
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
  %.promoted = load i32, ptr %1, align 4
  br label %7

7:                                                ; preds = %28, %0
  %8 = phi i32 [ %29, %28 ], [ %.promoted, %0 ]
  %9 = icmp sle i32 %8, 16
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = icmp sge i32 %8, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = icmp sle i32 %8, 8
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = icmp sge i32 %8, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = icmp sle i32 %8, 7
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = add nsw i32 %8, 7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %26
  store i32 1, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

30:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %1, align 4
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  %31 = load i32, ptr %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %35

35:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  %.promoted = load i32, ptr %3, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi i32 [ %9, %8 ], [ %.promoted, %1 ]
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  call void @Doit()
  br label %8

8:                                                ; preds = %7
  %9 = add nsw i32 %5, 1
  br label %4, !llvm.loop !10

10:                                               ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  store i32 %.lcssa, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
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
