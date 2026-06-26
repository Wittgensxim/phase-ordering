; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@kount = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
define dso_local i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %12 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %28, %2
  %14 = phi i32 [ %29, %28 ], [ %.promoted, %2 ]
  %15 = icmp sle i32 %14, %10
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = add nsw i32 %12, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  %.lcssa1 = phi i32 [ %14, %21 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %31

28:                                               ; preds = %16, %21
  %29 = add nsw i32 %14, 1
  br label %13, !llvm.loop !7

30:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %12 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %25, %2
  %14 = phi i32 [ %26, %25 ], [ %.promoted, %2 ]
  %15 = icmp sle i32 %14, %10
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = add nsw i32 %12, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %16, %21
  %26 = add nsw i32 %14, 1
  br label %13, !llvm.loop !9

27:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %14, %13 ]
  %.lcssa = phi i64 [ %8, %13 ]
  store i32 %.lcssa2, ptr %6, align 4
  %28 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = load i32, ptr %5, align 4
  store i32 %34, ptr %6, align 4
  %.promoted3 = load i32, ptr %6, align 4
  br label %35

35:                                               ; preds = %44, %27
  %36 = phi i32 [ %45, %44 ], [ %.promoted3, %27 ]
  %37 = icmp sle i32 %36, 511
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  %.lcssa5 = phi i32 [ %36, %38 ]
  %.lcssa1 = phi i32 [ %36, %38 ]
  store i32 %.lcssa5, ptr %6, align 4
  store i32 %.lcssa1, ptr %3, align 4
  br label %47

44:                                               ; preds = %38
  %45 = add nsw i32 %36, 1
  br label %35, !llvm.loop !10

46:                                               ; preds = %35
  %.lcssa4 = phi i32 [ %36, %35 ]
  store i32 %.lcssa4, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, ptr %3, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  %11 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %12

12:                                               ; preds = %24, %2
  %13 = phi i32 [ %25, %24 ], [ %.promoted, %2 ]
  %14 = icmp sle i32 %13, %9
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = add nsw i32 %11, %13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %15, %20
  %25 = add nsw i32 %13, 1
  br label %12, !llvm.loop !11

26:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %13, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %.lcssa1, ptr %5, align 4
  %27 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr @kount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @kount, align 4
  store i32 0, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted3 = load i32, ptr %5, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = phi i32 [ %34, %33 ], [ %.promoted3, %1 ]
  %13 = phi i32 [ %35, %33 ], [ %.promoted, %1 ]
  %14 = icmp sle i32 %13, 12
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = call i32 @Fit(i32 noundef %13, i32 noundef %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = call i32 @Place(i32 noundef %13, i32 noundef %9)
  %28 = call i32 @Trial(i32 noundef %27)
  %29 = icmp ne i32 %28, 0
  %30 = icmp eq i32 %27, 0
  %or.cond = select i1 %29, i1 true, i1 %30
  br i1 %or.cond, label %31, label %32

31:                                               ; preds = %26
  %.lcssa5 = phi i32 [ %27, %26 ]
  %.lcssa2 = phi i32 [ %13, %26 ]
  store i32 %.lcssa2, ptr %4, align 4
  store i32 %.lcssa5, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %37

32:                                               ; preds = %26
  call void @Remove(i32 noundef %13, i32 noundef %10)
  br label %33

33:                                               ; preds = %15, %32, %23
  %34 = phi i32 [ %12, %15 ], [ %27, %32 ], [ %12, %23 ]
  %35 = add nsw i32 %13, 1
  br label %11, !llvm.loop !12

36:                                               ; preds = %11
  %.lcssa4 = phi i32 [ %12, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  store i32 0, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, ptr %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ %11, %8 ], [ %.promoted, %0 ]
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted7 = load i32, ptr %1, align 4
  %.promoted9 = load i32, ptr %2, align 4
  %.promoted11 = load i32, ptr %3, align 4
  br label %13

13:                                               ; preds = %34, %12
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %34 ], [ %.promoted11, %12 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %34 ], [ %.promoted9, %12 ]
  %14 = phi i32 [ %35, %34 ], [ %.promoted7, %12 ]
  %15 = icmp sle i32 %14, 5
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %32, %16
  %.lcssa26 = phi i32 [ %.lcssa2, %32 ], [ %.lcssa26.lcssa12, %16 ]
  %18 = phi i32 [ %33, %32 ], [ 1, %16 ]
  %19 = icmp sle i32 %18, 5
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi i32 [ %31, %24 ], [ 1, %20 ]
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = mul nsw i32 8, %22
  %26 = add nsw i32 %18, %25
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %14, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %29
  store i32 0, ptr %30, align 4
  %31 = add nsw i32 %22, 1
  br label %21, !llvm.loop !14

32:                                               ; preds = %21
  %.lcssa2 = phi i32 [ %22, %21 ]
  %33 = add nsw i32 %18, 1
  br label %17, !llvm.loop !15

34:                                               ; preds = %17
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %17 ]
  %.lcssa4 = phi i32 [ %18, %17 ]
  %35 = add nsw i32 %14, 1
  br label %13, !llvm.loop !16

36:                                               ; preds = %13
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %13 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %13 ]
  %.lcssa8 = phi i32 [ %14, %13 ]
  store i32 %.lcssa8, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %.lcssa1418 = phi i32 [ %.lcssa14, %50 ], [ %.promoted17, %36 ]
  %38 = phi i32 [ %51, %50 ], [ %.promoted15, %36 ]
  %39 = icmp sle i32 %38, 12
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %41
  br label %43

43:                                               ; preds = %46, %40
  %44 = phi i32 [ %49, %46 ], [ 0, %40 ]
  %45 = icmp sle i32 %44, 511
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [512 x i32], ptr %42, i64 0, i64 %47
  store i32 0, ptr %48, align 4
  %49 = add nsw i32 %44, 1
  br label %43, !llvm.loop !17

50:                                               ; preds = %43
  %.lcssa14 = phi i32 [ %44, %43 ]
  %51 = add nsw i32 %38, 1
  br label %37, !llvm.loop !18

52:                                               ; preds = %37
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %37 ]
  %.lcssa16 = phi i32 [ %38, %37 ]
  store i32 %.lcssa16, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  br label %53

53:                                               ; preds = %74, %52
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %74 ], [ %.promoted30, %52 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %74 ], [ %.promoted28, %52 ]
  %54 = phi i32 [ %75, %74 ], [ %.promoted25, %52 ]
  %55 = icmp sle i32 %54, 3
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %72, %56
  %.lcssa2024 = phi i32 [ %.lcssa20, %72 ], [ %.lcssa2024.lcssa31, %56 ]
  %58 = phi i32 [ %73, %72 ], [ 0, %56 ]
  %59 = icmp sle i32 %58, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i32 [ %71, %64 ], [ 0, %60 ]
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = mul nsw i32 8, %62
  %66 = add nsw i32 %58, %65
  %67 = mul nsw i32 8, %66
  %68 = add nsw i32 %54, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nsw i32 %62, 1
  br label %61, !llvm.loop !19

72:                                               ; preds = %61
  %.lcssa20 = phi i32 [ %62, %61 ]
  %73 = add nsw i32 %58, 1
  br label %57, !llvm.loop !20

74:                                               ; preds = %57
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %57 ]
  %.lcssa22 = phi i32 [ %58, %57 ]
  %75 = add nsw i32 %54, 1
  br label %53, !llvm.loop !21

76:                                               ; preds = %53
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %53 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %53 ]
  %.lcssa27 = phi i32 [ %54, %53 ]
  store i32 %.lcssa27, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  br label %77

77:                                               ; preds = %98, %76
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %98 ], [ %.promoted42, %76 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %98 ], [ %.promoted40, %76 ]
  %78 = phi i32 [ %99, %98 ], [ %.promoted38, %76 ]
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %96, %80
  %.lcssa3337 = phi i32 [ %.lcssa33, %96 ], [ %.lcssa3337.lcssa43, %80 ]
  %82 = phi i32 [ %97, %96 ], [ 0, %80 ]
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %88, %84
  %86 = phi i32 [ %95, %88 ], [ 0, %84 ]
  %87 = icmp sle i32 %86, 3
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = mul nsw i32 8, %86
  %90 = add nsw i32 %82, %89
  %91 = mul nsw i32 8, %90
  %92 = add nsw i32 %78, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nsw i32 %86, 1
  br label %85, !llvm.loop !22

96:                                               ; preds = %85
  %.lcssa33 = phi i32 [ %86, %85 ]
  %97 = add nsw i32 %82, 1
  br label %81, !llvm.loop !23

98:                                               ; preds = %81
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %81 ]
  %.lcssa35 = phi i32 [ %82, %81 ]
  %99 = add nsw i32 %78, 1
  br label %77, !llvm.loop !24

100:                                              ; preds = %77
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %77 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %77 ]
  %.lcssa39 = phi i32 [ %78, %77 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  br label %101

101:                                              ; preds = %122, %100
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %122 ], [ %.promoted54, %100 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %122 ], [ %.promoted52, %100 ]
  %102 = phi i32 [ %123, %122 ], [ %.promoted50, %100 ]
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %120, %104
  %.lcssa4549 = phi i32 [ %.lcssa45, %120 ], [ %.lcssa4549.lcssa55, %104 ]
  %106 = phi i32 [ %121, %120 ], [ 0, %104 ]
  %107 = icmp sle i32 %106, 3
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %112, %108
  %110 = phi i32 [ %119, %112 ], [ 0, %108 ]
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = mul nsw i32 8, %110
  %114 = add nsw i32 %106, %113
  %115 = mul nsw i32 8, %114
  %116 = add nsw i32 %102, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %117
  store i32 1, ptr %118, align 4
  %119 = add nsw i32 %110, 1
  br label %109, !llvm.loop !25

120:                                              ; preds = %109
  %.lcssa45 = phi i32 [ %110, %109 ]
  %121 = add nsw i32 %106, 1
  br label %105, !llvm.loop !26

122:                                              ; preds = %105
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %105 ]
  %.lcssa47 = phi i32 [ %106, %105 ]
  %123 = add nsw i32 %102, 1
  br label %101, !llvm.loop !27

124:                                              ; preds = %101
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %101 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %101 ]
  %.lcssa51 = phi i32 [ %102, %101 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  br label %125

125:                                              ; preds = %146, %124
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %146 ], [ %.promoted66, %124 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %146 ], [ %.promoted64, %124 ]
  %126 = phi i32 [ %147, %146 ], [ %.promoted62, %124 ]
  %127 = icmp sle i32 %126, 1
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %144, %128
  %.lcssa5761 = phi i32 [ %.lcssa57, %144 ], [ %.lcssa5761.lcssa67, %128 ]
  %130 = phi i32 [ %145, %144 ], [ 0, %128 ]
  %131 = icmp sle i32 %130, 3
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %136, %132
  %134 = phi i32 [ %143, %136 ], [ 0, %132 ]
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = mul nsw i32 8, %134
  %138 = add nsw i32 %130, %137
  %139 = mul nsw i32 8, %138
  %140 = add nsw i32 %126, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nsw i32 %134, 1
  br label %133, !llvm.loop !28

144:                                              ; preds = %133
  %.lcssa57 = phi i32 [ %134, %133 ]
  %145 = add nsw i32 %130, 1
  br label %129, !llvm.loop !29

146:                                              ; preds = %129
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %129 ]
  %.lcssa59 = phi i32 [ %130, %129 ]
  %147 = add nsw i32 %126, 1
  br label %125, !llvm.loop !30

148:                                              ; preds = %125
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %125 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %125 ]
  %.lcssa63 = phi i32 [ %126, %125 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  br label %149

149:                                              ; preds = %170, %148
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %170 ], [ %.promoted78, %148 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %170 ], [ %.promoted76, %148 ]
  %150 = phi i32 [ %171, %170 ], [ %.promoted74, %148 ]
  %151 = icmp sle i32 %150, 3
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %168, %152
  %.lcssa6973 = phi i32 [ %.lcssa69, %168 ], [ %.lcssa6973.lcssa79, %152 ]
  %154 = phi i32 [ %169, %168 ], [ 0, %152 ]
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %160, %156
  %158 = phi i32 [ %167, %160 ], [ 0, %156 ]
  %159 = icmp sle i32 %158, 1
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = mul nsw i32 8, %158
  %162 = add nsw i32 %154, %161
  %163 = mul nsw i32 8, %162
  %164 = add nsw i32 %150, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %165
  store i32 1, ptr %166, align 4
  %167 = add nsw i32 %158, 1
  br label %157, !llvm.loop !31

168:                                              ; preds = %157
  %.lcssa69 = phi i32 [ %158, %157 ]
  %169 = add nsw i32 %154, 1
  br label %153, !llvm.loop !32

170:                                              ; preds = %153
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %153 ]
  %.lcssa71 = phi i32 [ %154, %153 ]
  %171 = add nsw i32 %150, 1
  br label %149, !llvm.loop !33

172:                                              ; preds = %149
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %149 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %149 ]
  %.lcssa75 = phi i32 [ %150, %149 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  br label %173

173:                                              ; preds = %194, %172
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %194 ], [ %.promoted90, %172 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %194 ], [ %.promoted88, %172 ]
  %174 = phi i32 [ %195, %194 ], [ %.promoted86, %172 ]
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %192, %176
  %.lcssa8185 = phi i32 [ %.lcssa81, %192 ], [ %.lcssa8185.lcssa91, %176 ]
  %178 = phi i32 [ %193, %192 ], [ 0, %176 ]
  %179 = icmp sle i32 %178, 1
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %184, %180
  %182 = phi i32 [ %191, %184 ], [ 0, %180 ]
  %183 = icmp sle i32 %182, 3
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = mul nsw i32 8, %182
  %186 = add nsw i32 %178, %185
  %187 = mul nsw i32 8, %186
  %188 = add nsw i32 %174, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %189
  store i32 1, ptr %190, align 4
  %191 = add nsw i32 %182, 1
  br label %181, !llvm.loop !34

192:                                              ; preds = %181
  %.lcssa81 = phi i32 [ %182, %181 ]
  %193 = add nsw i32 %178, 1
  br label %177, !llvm.loop !35

194:                                              ; preds = %177
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %177 ]
  %.lcssa83 = phi i32 [ %178, %177 ]
  %195 = add nsw i32 %174, 1
  br label %173, !llvm.loop !36

196:                                              ; preds = %173
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %173 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %173 ]
  %.lcssa87 = phi i32 [ %174, %173 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  br label %197

197:                                              ; preds = %218, %196
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %218 ], [ %.promoted102, %196 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %218 ], [ %.promoted100, %196 ]
  %198 = phi i32 [ %219, %218 ], [ %.promoted98, %196 ]
  %199 = icmp sle i32 %198, 2
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %216, %200
  %.lcssa9397 = phi i32 [ %.lcssa93, %216 ], [ %.lcssa9397.lcssa103, %200 ]
  %202 = phi i32 [ %217, %216 ], [ 0, %200 ]
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  br label %205

205:                                              ; preds = %208, %204
  %206 = phi i32 [ %215, %208 ], [ 0, %204 ]
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = mul nsw i32 8, %206
  %210 = add nsw i32 %202, %209
  %211 = mul nsw i32 8, %210
  %212 = add nsw i32 %198, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nsw i32 %206, 1
  br label %205, !llvm.loop !37

216:                                              ; preds = %205
  %.lcssa93 = phi i32 [ %206, %205 ]
  %217 = add nsw i32 %202, 1
  br label %201, !llvm.loop !38

218:                                              ; preds = %201
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %201 ]
  %.lcssa95 = phi i32 [ %202, %201 ]
  %219 = add nsw i32 %198, 1
  br label %197, !llvm.loop !39

220:                                              ; preds = %197
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %197 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %197 ]
  %.lcssa99 = phi i32 [ %198, %197 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  br label %221

221:                                              ; preds = %242, %220
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %242 ], [ %.promoted114, %220 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %242 ], [ %.promoted112, %220 ]
  %222 = phi i32 [ %243, %242 ], [ %.promoted110, %220 ]
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %240, %224
  %.lcssa105109 = phi i32 [ %.lcssa105, %240 ], [ %.lcssa105109.lcssa115, %224 ]
  %226 = phi i32 [ %241, %240 ], [ 0, %224 ]
  %227 = icmp sle i32 %226, 2
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %232, %228
  %230 = phi i32 [ %239, %232 ], [ 0, %228 ]
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = mul nsw i32 8, %230
  %234 = add nsw i32 %226, %233
  %235 = mul nsw i32 8, %234
  %236 = add nsw i32 %222, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %237
  store i32 1, ptr %238, align 4
  %239 = add nsw i32 %230, 1
  br label %229, !llvm.loop !40

240:                                              ; preds = %229
  %.lcssa105 = phi i32 [ %230, %229 ]
  %241 = add nsw i32 %226, 1
  br label %225, !llvm.loop !41

242:                                              ; preds = %225
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %225 ]
  %.lcssa107 = phi i32 [ %226, %225 ]
  %243 = add nsw i32 %222, 1
  br label %221, !llvm.loop !42

244:                                              ; preds = %221
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %221 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %221 ]
  %.lcssa111 = phi i32 [ %222, %221 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  br label %245

245:                                              ; preds = %266, %244
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %266 ], [ %.promoted126, %244 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %266 ], [ %.promoted124, %244 ]
  %246 = phi i32 [ %267, %266 ], [ %.promoted122, %244 ]
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %264, %248
  %.lcssa117121 = phi i32 [ %.lcssa117, %264 ], [ %.lcssa117121.lcssa127, %248 ]
  %250 = phi i32 [ %265, %264 ], [ 0, %248 ]
  %251 = icmp sle i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %256, %252
  %254 = phi i32 [ %263, %256 ], [ 0, %252 ]
  %255 = icmp sle i32 %254, 2
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = mul nsw i32 8, %254
  %258 = add nsw i32 %250, %257
  %259 = mul nsw i32 8, %258
  %260 = add nsw i32 %246, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %261
  store i32 1, ptr %262, align 4
  %263 = add nsw i32 %254, 1
  br label %253, !llvm.loop !43

264:                                              ; preds = %253
  %.lcssa117 = phi i32 [ %254, %253 ]
  %265 = add nsw i32 %250, 1
  br label %249, !llvm.loop !44

266:                                              ; preds = %249
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %249 ]
  %.lcssa119 = phi i32 [ %250, %249 ]
  %267 = add nsw i32 %246, 1
  br label %245, !llvm.loop !45

268:                                              ; preds = %245
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %245 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %245 ]
  %.lcssa123 = phi i32 [ %246, %245 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  br label %269

269:                                              ; preds = %290, %268
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %290 ], [ %.promoted138, %268 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %290 ], [ %.promoted136, %268 ]
  %270 = phi i32 [ %291, %290 ], [ %.promoted134, %268 ]
  %271 = icmp sle i32 %270, 1
  br i1 %271, label %272, label %292

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %288, %272
  %.lcssa129133 = phi i32 [ %.lcssa129, %288 ], [ %.lcssa129133.lcssa139, %272 ]
  %274 = phi i32 [ %289, %288 ], [ 0, %272 ]
  %275 = icmp sle i32 %274, 1
  br i1 %275, label %276, label %290

276:                                              ; preds = %273
  br label %277

277:                                              ; preds = %280, %276
  %278 = phi i32 [ %287, %280 ], [ 0, %276 ]
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %277
  %281 = mul nsw i32 8, %278
  %282 = add nsw i32 %274, %281
  %283 = mul nsw i32 8, %282
  %284 = add nsw i32 %270, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nsw i32 %278, 1
  br label %277, !llvm.loop !46

288:                                              ; preds = %277
  %.lcssa129 = phi i32 [ %278, %277 ]
  %289 = add nsw i32 %274, 1
  br label %273, !llvm.loop !47

290:                                              ; preds = %273
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %273 ]
  %.lcssa131 = phi i32 [ %274, %273 ]
  %291 = add nsw i32 %270, 1
  br label %269, !llvm.loop !48

292:                                              ; preds = %269
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %269 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %269 ]
  %.lcssa135 = phi i32 [ %270, %269 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  br label %293

293:                                              ; preds = %314, %292
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %314 ], [ %.promoted150, %292 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %314 ], [ %.promoted148, %292 ]
  %294 = phi i32 [ %315, %314 ], [ %.promoted146, %292 ]
  %295 = icmp sle i32 %294, 1
  br i1 %295, label %296, label %316

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %312, %296
  %.lcssa141145 = phi i32 [ %.lcssa141, %312 ], [ %.lcssa141145.lcssa151, %296 ]
  %298 = phi i32 [ %313, %312 ], [ 0, %296 ]
  %299 = icmp sle i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %297
  br label %301

301:                                              ; preds = %304, %300
  %302 = phi i32 [ %311, %304 ], [ 0, %300 ]
  %303 = icmp sle i32 %302, 1
  br i1 %303, label %304, label %312

304:                                              ; preds = %301
  %305 = mul nsw i32 8, %302
  %306 = add nsw i32 %298, %305
  %307 = mul nsw i32 8, %306
  %308 = add nsw i32 %294, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %309
  store i32 1, ptr %310, align 4
  %311 = add nsw i32 %302, 1
  br label %301, !llvm.loop !49

312:                                              ; preds = %301
  %.lcssa141 = phi i32 [ %302, %301 ]
  %313 = add nsw i32 %298, 1
  br label %297, !llvm.loop !50

314:                                              ; preds = %297
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %297 ]
  %.lcssa143 = phi i32 [ %298, %297 ]
  %315 = add nsw i32 %294, 1
  br label %293, !llvm.loop !51

316:                                              ; preds = %293
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %293 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %293 ]
  %.lcssa147 = phi i32 [ %294, %293 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  br label %317

317:                                              ; preds = %338, %316
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %338 ], [ %.promoted162, %316 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %338 ], [ %.promoted160, %316 ]
  %318 = phi i32 [ %339, %338 ], [ %.promoted158, %316 ]
  %319 = icmp sle i32 %318, 0
  br i1 %319, label %320, label %340

320:                                              ; preds = %317
  br label %321

321:                                              ; preds = %336, %320
  %.lcssa153157 = phi i32 [ %.lcssa153, %336 ], [ %.lcssa153157.lcssa163, %320 ]
  %322 = phi i32 [ %337, %336 ], [ 0, %320 ]
  %323 = icmp sle i32 %322, 1
  br i1 %323, label %324, label %338

324:                                              ; preds = %321
  br label %325

325:                                              ; preds = %328, %324
  %326 = phi i32 [ %335, %328 ], [ 0, %324 ]
  %327 = icmp sle i32 %326, 1
  br i1 %327, label %328, label %336

328:                                              ; preds = %325
  %329 = mul nsw i32 8, %326
  %330 = add nsw i32 %322, %329
  %331 = mul nsw i32 8, %330
  %332 = add nsw i32 %318, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %333
  store i32 1, ptr %334, align 4
  %335 = add nsw i32 %326, 1
  br label %325, !llvm.loop !52

336:                                              ; preds = %325
  %.lcssa153 = phi i32 [ %326, %325 ]
  %337 = add nsw i32 %322, 1
  br label %321, !llvm.loop !53

338:                                              ; preds = %321
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %321 ]
  %.lcssa155 = phi i32 [ %322, %321 ]
  %339 = add nsw i32 %318, 1
  br label %317, !llvm.loop !54

340:                                              ; preds = %317
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %317 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %317 ]
  %.lcssa159 = phi i32 [ %318, %317 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  br label %341

341:                                              ; preds = %362, %340
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %362 ], [ %.promoted174, %340 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %362 ], [ %.promoted172, %340 ]
  %342 = phi i32 [ %363, %362 ], [ %.promoted170, %340 ]
  %343 = icmp sle i32 %342, 1
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %360, %344
  %.lcssa165169 = phi i32 [ %.lcssa165, %360 ], [ %.lcssa165169.lcssa175, %344 ]
  %346 = phi i32 [ %361, %360 ], [ 0, %344 ]
  %347 = icmp sle i32 %346, 1
  br i1 %347, label %348, label %362

348:                                              ; preds = %345
  br label %349

349:                                              ; preds = %352, %348
  %350 = phi i32 [ %359, %352 ], [ 0, %348 ]
  %351 = icmp sle i32 %350, 1
  br i1 %351, label %352, label %360

352:                                              ; preds = %349
  %353 = mul nsw i32 8, %350
  %354 = add nsw i32 %346, %353
  %355 = mul nsw i32 8, %354
  %356 = add nsw i32 %342, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %357
  store i32 1, ptr %358, align 4
  %359 = add nsw i32 %350, 1
  br label %349, !llvm.loop !55

360:                                              ; preds = %349
  %.lcssa165 = phi i32 [ %350, %349 ]
  %361 = add nsw i32 %346, 1
  br label %345, !llvm.loop !56

362:                                              ; preds = %345
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %345 ]
  %.lcssa167 = phi i32 [ %346, %345 ]
  %363 = add nsw i32 %342, 1
  br label %341, !llvm.loop !57

364:                                              ; preds = %341
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %341 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %341 ]
  %.lcssa171 = phi i32 [ %342, %341 ]
  store i32 %.lcssa171, ptr %1, align 4
  store i32 %.lcssa167173.lcssa, ptr %2, align 4
  store i32 %.lcssa165169.lcssa175.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %365 = load i32, ptr %4, align 4
  %366 = call i32 @Fit(i32 noundef 0, i32 noundef %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = load i32, ptr %4, align 4
  %370 = call i32 @Place(i32 noundef 0, i32 noundef %369)
  store i32 %370, ptr @n, align 4
  br label %373

371:                                              ; preds = %364
  %372 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %373

373:                                              ; preds = %371, %368
  %374 = load i32, ptr @n, align 4
  %375 = call i32 @Trial(i32 noundef %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %384

379:                                              ; preds = %373
  %380 = load i32, ptr @kount, align 4
  %381 = icmp ne i32 %380, 2005
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %384

384:                                              ; preds = %379, %382, %377
  %385 = load i32, ptr @n, align 4
  %386 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %385)
  %387 = load i32, ptr @kount, align 4
  %388 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %387)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

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
  call void @Puzzle()
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !58

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
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c", directory: "E:/Phase Ordering/v3")
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
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
