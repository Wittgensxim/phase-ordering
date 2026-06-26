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
  br label %15

15:                                               ; preds = %111, %6
  %16 = load ptr, ptr %8, align 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 4
  %21 = icmp ne i32 %20, 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %112

24:                                               ; preds = %22
  %25 = load i32, ptr %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %13, align 4
  %27 = load ptr, ptr %8, align 8
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %10, align 8
  %29 = load i32, ptr %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %24
  %35 = load ptr, ptr %9, align 8
  %36 = load i32, ptr %7, align 4
  %37 = load i32, ptr %13, align 4
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %35, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %34
  %44 = load ptr, ptr %11, align 8
  %45 = load i32, ptr %7, align 4
  %46 = load i32, ptr %13, align 4
  %.neg = sub i32 0, %46
  %47 = add i32 %45, 7
  %48 = add i32 %47, %.neg
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %44, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %43
  %54 = load i32, ptr %13, align 4
  %55 = load ptr, ptr %12, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, ptr %55, i64 %57
  store i32 %54, ptr %58, align 4
  %59 = load ptr, ptr %10, align 8
  %60 = load i32, ptr %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %59, i64 %61
  store i32 0, ptr %62, align 4
  %63 = load ptr, ptr %9, align 8
  %64 = load i32, ptr %7, align 4
  %65 = load i32, ptr %13, align 4
  %66 = add nsw i32 %65, %64
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %63, i64 %67
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr %11, align 8
  %70 = load i32, ptr %7, align 4
  %71 = load i32, ptr %13, align 4
  %.neg1 = sub i32 0, %71
  %72 = add i32 %70, 7
  %73 = add i32 %72, %.neg1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %69, i64 %74
  store i32 0, ptr %75, align 4
  %76 = load i32, ptr %7, align 4
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %108

78:                                               ; preds = %53
  %79 = load i32, ptr %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = load ptr, ptr %8, align 8
  %82 = load ptr, ptr %9, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %8, align 8
  %87 = load i32, ptr %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr %10, align 8
  %91 = load i32, ptr %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  store i32 1, ptr %93, align 4
  %94 = load ptr, ptr %9, align 8
  %95 = load i32, ptr %7, align 4
  %96 = load i32, ptr %13, align 4
  %97 = add nsw i32 %96, %95
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %94, i64 %98
  store i32 1, ptr %99, align 4
  %100 = load ptr, ptr %11, align 8
  %101 = load i32, ptr %7, align 4
  %102 = load i32, ptr %13, align 4
  %.neg2 = sub i32 0, %102
  %103 = add i32 %101, 7
  %104 = add i32 %103, %.neg2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %100, i64 %105
  store i32 1, ptr %106, align 4
  br label %107

107:                                              ; preds = %89, %78
  br label %110

108:                                              ; preds = %53
  %109 = load ptr, ptr %8, align 8
  store i32 1, ptr %109, align 4
  br label %110

110:                                              ; preds = %108, %107
  br label %111

111:                                              ; preds = %110, %43, %34, %24
  br label %15, !llvm.loop !7

112:                                              ; preds = %22
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
  %7 = load i32, ptr %1, align 4
  %8 = icmp sle i32 %7, 16
  br i1 %8, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %0
  br label %9

9:                                                ; preds = %.lr.ph, %34
  %10 = load i32, ptr %1, align 4
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, ptr %1, align 4
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %12, %9
  %20 = load i32, ptr %1, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, ptr %1, align 4
  %28 = icmp sle i32 %27, 7
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %32
  store i32 1, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  %37 = load i32, ptr %1, align 4
  %38 = icmp sle i32 %37, 16
  br i1 %38, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %34
  br label %39

39:                                               ; preds = %._crit_edge, %0
  %40 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 0
  %41 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 0
  %42 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 0
  %43 = getelementptr inbounds [9 x i32], ptr %6, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = load i32, ptr %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %48

48:                                               ; preds = %46, %39
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sle i32 %4, 50
  br i1 %5, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %7
  call void @Doit()
  br label %7

7:                                                ; preds = %6
  %8 = load i32, ptr %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp sle i32 %10, 50
  br i1 %11, label %6, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %7
  br label %12

12:                                               ; preds = %._crit_edge, %1
  %13 = load i32, ptr %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %.lr.ph, label %12

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = load i32, ptr %2, align 4
  call void @Queens(i32 noundef %6)
  br label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %7
  br label %12

12:                                               ; preds = %._crit_edge, %0
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
