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
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %59, %6
  %.0 = phi i32 [ 0, %6 ], [ %13, %59 ]
  %8 = load i32, ptr %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne i32 %.0, 8
  %11 = select i1 %9, i1 false, i1 %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %7
  %13 = add nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %3, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = add nsw i32 %0, %13
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %2, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = sub nsw i32 %0, %13
  %26 = add nsw i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds i32, ptr %5, i64 %32
  store i32 %13, ptr %33, align 4
  %34 = sext i32 %13 to i64
  %35 = getelementptr inbounds i32, ptr %3, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nsw i32 %0, %13
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %2, i64 %37
  store i32 0, ptr %38, align 4
  %39 = sub nsw i32 %0, %13
  %40 = add nsw i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %4, i64 %41
  store i32 0, ptr %42, align 4
  %43 = icmp slt i32 %0, 8
  br i1 %43, label %44, label %58

44:                                               ; preds = %31
  %45 = add nsw i32 %0, 1
  call void @Try(i32 noundef %45, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %46 = load i32, ptr %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = sext i32 %13 to i64
  %50 = getelementptr inbounds i32, ptr %3, i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nsw i32 %0, %13
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %2, i64 %52
  store i32 1, ptr %53, align 4
  %54 = sub nsw i32 %0, %13
  %55 = add nsw i32 %54, 7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %4, i64 %56
  store i32 1, ptr %57, align 4
  br label %59

58:                                               ; preds = %31
  store i32 1, ptr %1, align 4
  br label %59

59:                                               ; preds = %58, %48, %44, %24, %18, %12
  br label %7, !llvm.loop !7

60:                                               ; preds = %7
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
  %or.cond = select i1 %9, i1 %10, i1 false
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
