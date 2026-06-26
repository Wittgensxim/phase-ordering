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
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = load i32, ptr %13, align 4
  %19 = icmp ne i32 %18, 8
  %20 = select i1 %17, i1 false, i1 %19
  br i1 %20, label %.lr.ph, label %113

.lr.ph:                                           ; preds = %6
  br label %21

21:                                               ; preds = %.lr.ph, %106
  %22 = load i32, ptr %13, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %13, align 4
  %24 = load ptr, ptr %8, align 8
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %10, align 8
  %26 = load i32, ptr %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %106

31:                                               ; preds = %21
  %32 = load ptr, ptr %9, align 8
  %33 = load i32, ptr %7, align 4
  %34 = load i32, ptr %13, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %32, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %106

40:                                               ; preds = %31
  %41 = load ptr, ptr %11, align 8
  %42 = load i32, ptr %7, align 4
  %43 = load i32, ptr %13, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %41, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %106

50:                                               ; preds = %40
  %51 = load i32, ptr %13, align 4
  %52 = load ptr, ptr %12, align 8
  %53 = load i32, ptr %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  store i32 %51, ptr %55, align 4
  %56 = load ptr, ptr %10, align 8
  %57 = load i32, ptr %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %9, align 8
  %61 = load i32, ptr %7, align 4
  %62 = load i32, ptr %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  store i32 0, ptr %65, align 4
  %66 = load ptr, ptr %11, align 8
  %67 = load i32, ptr %7, align 4
  %68 = load i32, ptr %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 7
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, ptr %66, i64 %71
  store i32 0, ptr %72, align 4
  %73 = load i32, ptr %7, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %104

75:                                               ; preds = %50
  %76 = load i32, ptr %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = load ptr, ptr %8, align 8
  %79 = load ptr, ptr %9, align 8
  %80 = load ptr, ptr %10, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82)
  %83 = load ptr, ptr %8, align 8
  %84 = load i32, ptr %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %75
  %87 = load ptr, ptr %10, align 8
  %88 = load i32, ptr %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  store i32 1, ptr %90, align 4
  %91 = load ptr, ptr %9, align 8
  %92 = load i32, ptr %7, align 4
  %93 = load i32, ptr %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %91, i64 %95
  store i32 1, ptr %96, align 4
  %97 = load ptr, ptr %11, align 8
  %98 = load i32, ptr %7, align 4
  %99 = load i32, ptr %13, align 4
  %100 = sub nsw i32 %98, %99
  %101 = add nsw i32 %100, 7
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %97, i64 %102
  store i32 1, ptr %103, align 4
  br label %106

104:                                              ; preds = %50
  %105 = load ptr, ptr %8, align 8
  store i32 1, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %86, %75, %40, %31, %21
  %107 = load ptr, ptr %8, align 8
  %108 = load i32, ptr %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr %13, align 4
  %111 = icmp ne i32 %110, 8
  %112 = select i1 %109, i1 false, i1 %111
  br i1 %112, label %21, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %106
  br label %113

113:                                              ; preds = %._crit_edge, %6
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
  br i1 %8, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %0
  br label %9

9:                                                ; preds = %.lr.ph, %33
  %10 = load i32, ptr %1, align 4
  %11 = icmp sge i32 %10, 1
  %12 = load i32, ptr %1, align 4
  %13 = icmp sle i32 %12, 8
  %or.cond = select i1 %11, i1 %13, i1 false
  br i1 %or.cond, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i32, ptr %1, align 4
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, ptr %1, align 4
  %27 = icmp sle i32 %26, 7
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, ptr %1, align 4
  %30 = add nsw i32 %29, 7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %31
  store i32 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, ptr %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %1, align 4
  %36 = load i32, ptr %1, align 4
  %37 = icmp sle i32 %36, 16
  br i1 %37, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %33
  br label %38

38:                                               ; preds = %._crit_edge, %0
  %39 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 0
  %40 = getelementptr inbounds [9 x i32], ptr %3, i64 0, i64 0
  %41 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 0
  %42 = getelementptr inbounds [9 x i32], ptr %6, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42)
  %43 = load i32, ptr %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %47

47:                                               ; preds = %45, %38
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
  br i1 %5, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %6
  call void @Doit()
  %7 = load i32, ptr %3, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = icmp sle i32 %9, 50
  br i1 %10, label %6, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %6
  br label %11

11:                                               ; preds = %._crit_edge, %1
  %12 = load i32, ptr %2, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
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
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %5
  %6 = load i32, ptr %2, align 4
  call void @Queens(i32 noundef %6)
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %5
  br label %11

11:                                               ; preds = %._crit_edge, %0
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
