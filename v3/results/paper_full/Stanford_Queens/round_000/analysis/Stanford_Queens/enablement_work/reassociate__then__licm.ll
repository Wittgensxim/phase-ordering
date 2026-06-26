; ModuleID = 'results\paper_full\Stanford_Queens\Stanford_Queens.ll'
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
  %22 = add i32 %21, 7
  %23 = load ptr, ptr %12, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  %27 = load ptr, ptr %10, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %11, align 8
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, 7
  %33 = load i32, ptr %7, align 4
  %34 = icmp slt i32 %33, 8
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = load ptr, ptr %8, align 8
  %39 = load ptr, ptr %9, align 8
  %40 = load ptr, ptr %10, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = load ptr, ptr %12, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load ptr, ptr %10, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = load i32, ptr %7, align 4
  %47 = load ptr, ptr %11, align 8
  %48 = load i32, ptr %7, align 4
  %49 = add i32 %48, 7
  %.promoted = load i32, ptr %13, align 4
  br label %50

50:                                               ; preds = %101, %6
  %51 = phi i32 [ %102, %101 ], [ %.promoted, %6 ]
  %52 = load i32, ptr %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = icmp ne i32 %51, 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i1 [ false, %50 ], [ %55, %54 ]
  br i1 %57, label %58, label %103

58:                                               ; preds = %56
  %59 = add nsw i32 %51, 1
  store i32 0, ptr %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %17, i64 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = add nsw i32 %59, %19
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %18, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %.neg = sub i32 0, %59
  %71 = add i32 %22, %.neg
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %20, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  store i32 %59, ptr %26, align 4
  %77 = sext i32 %59 to i64
  %78 = getelementptr inbounds i32, ptr %27, i64 %77
  store i32 0, ptr %78, align 4
  %79 = add nsw i32 %59, %29
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %28, i64 %80
  store i32 0, ptr %81, align 4
  %.neg1 = sub i32 0, %59
  %82 = add i32 %32, %.neg1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %30, i64 %83
  store i32 0, ptr %84, align 4
  br i1 %34, label %85, label %98

85:                                               ; preds = %76
  call void @Try(i32 noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42)
  %86 = load i32, ptr %43, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = sext i32 %59 to i64
  %90 = getelementptr inbounds i32, ptr %44, i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nsw i32 %59, %46
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %45, i64 %92
  store i32 1, ptr %93, align 4
  %.neg2 = sub i32 0, %59
  %94 = add i32 %49, %.neg2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %47, i64 %95
  store i32 1, ptr %96, align 4
  br label %97

97:                                               ; preds = %88, %85
  br label %99

98:                                               ; preds = %76
  store i32 1, ptr %35, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = phi i32 [ %59, %98 ], [ %59, %97 ]
  br label %101

101:                                              ; preds = %99, %70, %64, %58
  %102 = phi i32 [ %100, %99 ], [ %59, %70 ], [ %59, %64 ], [ %59, %58 ]
  br label %50, !llvm.loop !7

103:                                              ; preds = %56
  %.lcssa = phi i32 [ %51, %56 ]
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
  %31 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 0
  %32 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 0
  %33 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 0
  %34 = getelementptr inbounds [9 x i32], ptr %6, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34)
  %35 = load i32, ptr %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %39

39:                                               ; preds = %37, %30
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
