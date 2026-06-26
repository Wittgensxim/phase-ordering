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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %21 = load i32, ptr %7, align 4
  %22 = load ptr, ptr %12, align 8
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load ptr, ptr %10, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = load i32, ptr %7, align 4
  %29 = load ptr, ptr %11, align 8
  %30 = load i32, ptr %7, align 4
  %31 = load i32, ptr %7, align 4
  %32 = icmp slt i32 %31, 8
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = load ptr, ptr %11, align 8
  %40 = load ptr, ptr %12, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = load i32, ptr %7, align 4
  %45 = load ptr, ptr %11, align 8
  %46 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %13, align 4
  br label %47

47:                                               ; preds = %95, %6
  %48 = phi i32 [ %96, %95 ], [ %.promoted, %6 ]
  %49 = load i32, ptr %15, align 4
  %50 = icmp ne i32 %49, 0
  %51 = icmp ne i32 %48, 8
  %spec.select = select i1 %50, i1 false, i1 %51
  br i1 %spec.select, label %52, label %97

52:                                               ; preds = %47
  %53 = add nsw i32 %48, 1
  store i32 0, ptr %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %17, i64 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = add nsw i32 %19, %53
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %18, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = sub nsw i32 %21, %53
  %66 = add nsw i32 %65, 7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %20, i64 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %64
  store i32 %53, ptr %25, align 4
  %72 = sext i32 %53 to i64
  %73 = getelementptr inbounds i32, ptr %26, i64 %72
  store i32 0, ptr %73, align 4
  %74 = add nsw i32 %28, %53
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %27, i64 %75
  store i32 0, ptr %76, align 4
  %77 = sub nsw i32 %30, %53
  %78 = add nsw i32 %77, 7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %29, i64 %79
  store i32 0, ptr %80, align 4
  br i1 %32, label %81, label %94

81:                                               ; preds = %71
  call void @Try(i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40)
  %82 = load i32, ptr %41, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = sext i32 %53 to i64
  %86 = getelementptr inbounds i32, ptr %42, i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nsw i32 %44, %53
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %43, i64 %88
  store i32 1, ptr %89, align 4
  %90 = sub nsw i32 %46, %53
  %91 = add nsw i32 %90, 7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %45, i64 %92
  store i32 1, ptr %93, align 4
  br label %95

94:                                               ; preds = %71
  store i32 1, ptr %33, align 4
  br label %95

95:                                               ; preds = %94, %84, %81, %64, %58, %52
  %96 = phi i32 [ %53, %52 ], [ %53, %64 ], [ %53, %58 ], [ %53, %94 ], [ %53, %84 ], [ %53, %81 ]
  br label %47, !llvm.loop !7

97:                                               ; preds = %47
  %.lcssa = phi i32 [ %48, %47 ]
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

7:                                                ; preds = %27, %0
  %8 = phi i32 [ %28, %27 ], [ %.promoted, %0 ]
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
  br label %7, !llvm.loop !9

29:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %1, align 4
  %30 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 0
  %31 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 0
  %32 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 0
  %33 = getelementptr inbounds [9 x i32], ptr %6, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  %34 = load i32, ptr %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %38

38:                                               ; preds = %36, %29
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

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %8, %7 ], [ %.promoted, %1 ]
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @Doit()
  %8 = add nsw i32 %5, 1
  br label %4, !llvm.loop !10

9:                                                ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  store i32 %.lcssa, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
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

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

8:                                                ; preds = %3
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
