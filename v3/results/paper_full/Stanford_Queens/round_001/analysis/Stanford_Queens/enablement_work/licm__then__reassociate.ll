; ModuleID = 'results\paper_full\Stanford_Queens\round_000\output.ll'
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
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = icmp slt i32 %0, 8
  %10 = add nsw i32 %0, 1
  br label %11

11:                                               ; preds = %45, %6
  %.0 = phi i32 [ 0, %6 ], [ %19, %45 ]
  %12 = load i32, ptr %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = icmp ne i32 %.0, 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i1 [ false, %11 ], [ %15, %14 ]
  br i1 %17, label %18, label %46

18:                                               ; preds = %16
  %19 = add nsw i32 %.0, 1
  store i32 0, ptr %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = add nsw i32 %19, %0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %.neg = sub i32 0, %19
  %31 = add i32 %0, 7
  %32 = add i32 %31, %.neg
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %4, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  store i32 %19, ptr %8, align 4
  store i32 0, ptr %21, align 4
  store i32 0, ptr %27, align 4
  store i32 0, ptr %34, align 4
  br i1 %9, label %38, label %43

38:                                               ; preds = %37
  call void @Try(i32 noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %39 = load i32, ptr %1, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 1, ptr %21, align 4
  store i32 1, ptr %27, align 4
  store i32 1, ptr %34, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %44

43:                                               ; preds = %37
  store i32 1, ptr %1, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %30, %24, %18
  br label %11, !llvm.loop !7

46:                                               ; preds = %16
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

6:                                                ; preds = %26, %0
  %.0 = phi i32 [ -7, %0 ], [ %27, %26 ]
  %7 = icmp sle i32 %.0, 16
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  %9 = icmp sge i32 %.0, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp sle i32 %.0, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds [9 x i32], ptr %2, i64 0, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %10, %8
  %16 = icmp sge i32 %.0, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds [17 x i32], ptr %3, i64 0, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp sle i32 %.0, 7
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = add nsw i32 %.0, 7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [15 x i32], ptr %4, i64 0, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
  call void @Try(i32 noundef 1, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  %29 = load i32, ptr %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %33

33:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Queens(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi i32 [ 1, %1 ], [ %6, %5 ]
  %3 = icmp sle i32 %.0, 50
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Doit()
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %.0, 1
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
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Queens(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
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
