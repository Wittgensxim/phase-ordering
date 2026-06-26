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
  br label %15

15:                                               ; preds = %101, %6
  %16 = load ptr, ptr %8, align 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = load i32, ptr %13, align 4
  %20 = icmp ne i32 %19, 8
  %21 = select i1 %18, i1 false, i1 %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %15
  %23 = load i32, ptr %13, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %13, align 4
  %25 = load ptr, ptr %8, align 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %10, align 8
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %22
  %33 = load ptr, ptr %9, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, %27
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %33, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %101

40:                                               ; preds = %32
  %41 = load ptr, ptr %11, align 8
  %42 = sub nsw i32 %34, %27
  %43 = add nsw i32 %42, 7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %41, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %40
  %49 = load ptr, ptr %12, align 8
  %50 = sext i32 %34 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  store i32 %27, ptr %51, align 4
  %52 = load ptr, ptr %10, align 8
  %53 = load i32, ptr %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %9, align 8
  %57 = load i32, ptr %7, align 4
  %58 = load i32, ptr %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %56, i64 %60
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %11, align 8
  %63 = load i32, ptr %7, align 4
  %64 = load i32, ptr %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 7
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %62, i64 %67
  store i32 0, ptr %68, align 4
  %69 = load i32, ptr %7, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %99

71:                                               ; preds = %48
  %72 = add nsw i32 %69, 1
  %73 = load ptr, ptr %8, align 8
  %74 = load ptr, ptr %9, align 8
  %75 = load ptr, ptr %10, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load ptr, ptr %12, align 8
  call void @Try(i32 noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, ptr noundef %76, ptr noundef %77)
  %78 = load ptr, ptr %8, align 8
  %79 = load i32, ptr %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %71
  %82 = load ptr, ptr %10, align 8
  %83 = load i32, ptr %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, ptr %82, i64 %84
  store i32 1, ptr %85, align 4
  %86 = load ptr, ptr %9, align 8
  %87 = load i32, ptr %7, align 4
  %88 = load i32, ptr %13, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, ptr %86, i64 %90
  store i32 1, ptr %91, align 4
  %92 = load ptr, ptr %11, align 8
  %93 = load i32, ptr %7, align 4
  %94 = load i32, ptr %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %95, 7
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %92, i64 %97
  store i32 1, ptr %98, align 4
  br label %101

99:                                               ; preds = %48
  %100 = load ptr, ptr %8, align 8
  store i32 1, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %81, %71, %40, %32, %22
  br label %15, !llvm.loop !7

102:                                              ; preds = %15
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

7:                                                ; preds = %29, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp sle i32 %8, 16
  br i1 %9, label %10, label %32

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
  %17 = load i32, ptr %1, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, ptr %1, align 4
  %24 = icmp sle i32 %23, 7
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = add nsw i32 %23, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [15 x i32], ptr %5, i64 0, i64 %27
  store i32 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4
  br label %7, !llvm.loop !9

32:                                               ; preds = %7
  call void @Try(i32 noundef 1, ptr noundef %2, ptr noundef %4, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  %33 = load i32, ptr %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %37

37:                                               ; preds = %35, %32
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
  %5 = load i32, ptr %3, align 4
  %6 = icmp sle i32 %5, 50
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  call void @Doit()
  %8 = load i32, ptr %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %3, align 4
  br label %4, !llvm.loop !10

10:                                               ; preds = %4
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
  br label %3

3:                                                ; preds = %6, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Queens(i32 noundef %4)
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  br label %3, !llvm.loop !11

9:                                                ; preds = %3
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
