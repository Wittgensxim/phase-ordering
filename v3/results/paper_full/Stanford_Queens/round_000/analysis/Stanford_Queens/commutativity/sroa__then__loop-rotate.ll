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
  br label %6

6:                                                ; preds = %0, %24
  %.09 = phi i32 [ -7, %0 ], [ %25, %24 ]
  %7 = icmp sge i32 %.09, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = icmp sle i32 %.09, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = sext i32 %.09 to i64
  %12 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %8, %6
  %14 = icmp sge i32 %.09, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = sext i32 %.09 to i64
  %17 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp sle i32 %.09, 7
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = add nsw i32 %.09, 7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %22
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = add nsw i32 %.09, 1
  %26 = icmp sle i32 %25, 16
  br i1 %26, label %6, label %27, !llvm.loop !9

27:                                               ; preds = %24
  %28 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 0
  %29 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 0
  %30 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 0
  %31 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 0
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31)
  %32 = load i32, ptr %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %36

36:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1, %3
  %.03 = phi i32 [ 1, %1 ], [ %4, %3 ]
  call void @Doit()
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %.03, 1
  %5 = icmp sle i32 %4, 50
  br i1 %5, label %2, label %6, !llvm.loop !10

6:                                                ; preds = %3
  %7 = add nsw i32 %0, 1
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.03 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Queens(i32 noundef %.03)
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.03, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !11

5:                                                ; preds = %2
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
