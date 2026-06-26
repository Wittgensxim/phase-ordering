; ModuleID = 'results\paper_full\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %12
  %14 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %30, %2
  %16 = phi i32 [ %31, %30 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, %10
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = add nsw i32 %14, %16
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %16, %23 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %33

30:                                               ; preds = %18, %23
  %31 = add nsw i32 %16, 1
  br label %15, !llvm.loop !7

32:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, ptr %3, align 4
  ret i32 %34
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
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %12
  %14 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = phi i32 [ %28, %27 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, %10
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = add nsw i32 %14, %16
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %25
  store i32 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %18, %23
  %28 = add nsw i32 %16, 1
  br label %15, !llvm.loop !9

29:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %6, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, ptr %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %42
  store i32 %37, ptr %43, align 4
  %44 = load i32, ptr %5, align 4
  store i32 %44, ptr %6, align 4
  %.promoted1 = load i32, ptr %6, align 4
  br label %45

45:                                               ; preds = %55, %29
  %46 = phi i32 [ %56, %55 ], [ %.promoted1, %29 ]
  %47 = icmp sle i32 %46, 511
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %.lcssa3 = phi i32 [ %46, %48 ]
  store i32 %.lcssa3, ptr %6, align 4
  %54 = load i32, ptr %6, align 4
  store i32 %54, ptr %3, align 4
  br label %58

55:                                               ; preds = %48
  %56 = add nsw i32 %46, 1
  br label %45, !llvm.loop !10

57:                                               ; preds = %45
  %.lcssa2 = phi i32 [ %46, %45 ]
  store i32 %.lcssa2, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, ptr %3, align 4
  ret i32 %59
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
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %11
  %13 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %26, %2
  %15 = phi i32 [ %27, %26 ], [ %.promoted, %2 ]
  %16 = icmp sle i32 %15, %9
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [512 x i32], ptr %12, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = add nsw i32 %13, %15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %17, %22
  %27 = add nsw i32 %15, 1
  br label %14, !llvm.loop !11

28:                                               ; preds = %14
  %.lcssa = phi i32 [ %15, %14 ]
  store i32 %.lcssa, ptr %5, align 4
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %41
  store i32 %36, ptr %42, align 4
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
  %.promoted2 = load i32, ptr %5, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = phi i32 [ %34, %33 ], [ %.promoted2, %1 ]
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
  %or.cond = or i1 %29, %30
  br i1 %or.cond, label %31, label %32

31:                                               ; preds = %26
  store i32 %13, ptr %4, align 4
  store i32 %27, ptr %5, align 4
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
  %.lcssa3 = phi i32 [ %12, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
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

13:                                               ; preds = %32, %12
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %32 ], [ %.promoted11, %12 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %32 ], [ %.promoted9, %12 ]
  %14 = phi i32 [ %33, %32 ], [ %.promoted7, %12 ]
  %15 = icmp sle i32 %14, 5
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %30
  %.lcssa26 = phi i32 [ %.lcssa2, %30 ], [ %.lcssa26.lcssa12, %13 ]
  %17 = phi i32 [ %31, %30 ], [ 1, %13 ]
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %32

19:                                               ; preds = %16, %22
  %20 = phi i32 [ %29, %22 ], [ 1, %16 ]
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = mul nsw i32 8, %20
  %24 = add nsw i32 %17, %23
  %25 = mul nsw i32 8, %24
  %26 = add nsw i32 %14, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nsw i32 %20, 1
  br label %19, !llvm.loop !14

30:                                               ; preds = %19
  %.lcssa2 = phi i32 [ %20, %19 ]
  %31 = add nsw i32 %17, 1
  br label %16, !llvm.loop !15

32:                                               ; preds = %16
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %16 ]
  %.lcssa4 = phi i32 [ %17, %16 ]
  %33 = add nsw i32 %14, 1
  br label %13, !llvm.loop !16

34:                                               ; preds = %13
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %13 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %13 ]
  %.lcssa8 = phi i32 [ %14, %13 ]
  store i32 %.lcssa8, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  br label %35

35:                                               ; preds = %48, %34
  %.lcssa1418 = phi i32 [ %.lcssa14, %48 ], [ %.promoted17, %34 ]
  %36 = phi i32 [ %49, %48 ], [ %.promoted15, %34 ]
  %37 = icmp sle i32 %36, 12
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %39
  br label %41

41:                                               ; preds = %44, %38
  %42 = phi i32 [ %47, %44 ], [ 0, %38 ]
  %43 = icmp sle i32 %42, 511
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [512 x i32], ptr %40, i64 0, i64 %45
  store i32 0, ptr %46, align 4
  %47 = add nsw i32 %42, 1
  br label %41, !llvm.loop !17

48:                                               ; preds = %41
  %.lcssa14 = phi i32 [ %42, %41 ]
  %49 = add nsw i32 %36, 1
  br label %35, !llvm.loop !18

50:                                               ; preds = %35
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %35 ]
  %.lcssa16 = phi i32 [ %36, %35 ]
  store i32 %.lcssa16, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  br label %51

51:                                               ; preds = %70, %50
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %70 ], [ %.promoted30, %50 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %70 ], [ %.promoted28, %50 ]
  %52 = phi i32 [ %71, %70 ], [ %.promoted25, %50 ]
  %53 = icmp sle i32 %52, 3
  br i1 %53, label %54, label %72

54:                                               ; preds = %51, %68
  %.lcssa2024 = phi i32 [ %.lcssa20, %68 ], [ %.lcssa2024.lcssa31, %51 ]
  %55 = phi i32 [ %69, %68 ], [ 0, %51 ]
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %70

57:                                               ; preds = %54, %60
  %58 = phi i32 [ %67, %60 ], [ 0, %54 ]
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = mul nsw i32 8, %58
  %62 = add nsw i32 %55, %61
  %63 = mul nsw i32 8, %62
  %64 = add nsw i32 %52, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nsw i32 %58, 1
  br label %57, !llvm.loop !19

68:                                               ; preds = %57
  %.lcssa20 = phi i32 [ %58, %57 ]
  %69 = add nsw i32 %55, 1
  br label %54, !llvm.loop !20

70:                                               ; preds = %54
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %54 ]
  %.lcssa22 = phi i32 [ %55, %54 ]
  %71 = add nsw i32 %52, 1
  br label %51, !llvm.loop !21

72:                                               ; preds = %51
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %51 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %51 ]
  %.lcssa27 = phi i32 [ %52, %51 ]
  store i32 %.lcssa27, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  br label %73

73:                                               ; preds = %92, %72
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %92 ], [ %.promoted42, %72 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %92 ], [ %.promoted40, %72 ]
  %74 = phi i32 [ %93, %92 ], [ %.promoted38, %72 ]
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %76, label %94

76:                                               ; preds = %73, %90
  %.lcssa3337 = phi i32 [ %.lcssa33, %90 ], [ %.lcssa3337.lcssa43, %73 ]
  %77 = phi i32 [ %91, %90 ], [ 0, %73 ]
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76, %82
  %80 = phi i32 [ %89, %82 ], [ 0, %76 ]
  %81 = icmp sle i32 %80, 3
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = mul nsw i32 8, %80
  %84 = add nsw i32 %77, %83
  %85 = mul nsw i32 8, %84
  %86 = add nsw i32 %74, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %87
  store i32 1, ptr %88, align 4
  %89 = add nsw i32 %80, 1
  br label %79, !llvm.loop !22

90:                                               ; preds = %79
  %.lcssa33 = phi i32 [ %80, %79 ]
  %91 = add nsw i32 %77, 1
  br label %76, !llvm.loop !23

92:                                               ; preds = %76
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %76 ]
  %.lcssa35 = phi i32 [ %77, %76 ]
  %93 = add nsw i32 %74, 1
  br label %73, !llvm.loop !24

94:                                               ; preds = %73
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %73 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %73 ]
  %.lcssa39 = phi i32 [ %74, %73 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  br label %95

95:                                               ; preds = %114, %94
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %114 ], [ %.promoted54, %94 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %114 ], [ %.promoted52, %94 ]
  %96 = phi i32 [ %115, %114 ], [ %.promoted50, %94 ]
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95, %112
  %.lcssa4549 = phi i32 [ %.lcssa45, %112 ], [ %.lcssa4549.lcssa55, %95 ]
  %99 = phi i32 [ %113, %112 ], [ 0, %95 ]
  %100 = icmp sle i32 %99, 3
  br i1 %100, label %101, label %114

101:                                              ; preds = %98, %104
  %102 = phi i32 [ %111, %104 ], [ 0, %98 ]
  %103 = icmp sle i32 %102, 1
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = mul nsw i32 8, %102
  %106 = add nsw i32 %99, %105
  %107 = mul nsw i32 8, %106
  %108 = add nsw i32 %96, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %109
  store i32 1, ptr %110, align 4
  %111 = add nsw i32 %102, 1
  br label %101, !llvm.loop !25

112:                                              ; preds = %101
  %.lcssa45 = phi i32 [ %102, %101 ]
  %113 = add nsw i32 %99, 1
  br label %98, !llvm.loop !26

114:                                              ; preds = %98
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %98 ]
  %.lcssa47 = phi i32 [ %99, %98 ]
  %115 = add nsw i32 %96, 1
  br label %95, !llvm.loop !27

116:                                              ; preds = %95
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %95 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %95 ]
  %.lcssa51 = phi i32 [ %96, %95 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  br label %117

117:                                              ; preds = %136, %116
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %136 ], [ %.promoted66, %116 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %136 ], [ %.promoted64, %116 ]
  %118 = phi i32 [ %137, %136 ], [ %.promoted62, %116 ]
  %119 = icmp sle i32 %118, 1
  br i1 %119, label %120, label %138

120:                                              ; preds = %117, %134
  %.lcssa5761 = phi i32 [ %.lcssa57, %134 ], [ %.lcssa5761.lcssa67, %117 ]
  %121 = phi i32 [ %135, %134 ], [ 0, %117 ]
  %122 = icmp sle i32 %121, 3
  br i1 %122, label %123, label %136

123:                                              ; preds = %120, %126
  %124 = phi i32 [ %133, %126 ], [ 0, %120 ]
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = mul nsw i32 8, %124
  %128 = add nsw i32 %121, %127
  %129 = mul nsw i32 8, %128
  %130 = add nsw i32 %118, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nsw i32 %124, 1
  br label %123, !llvm.loop !28

134:                                              ; preds = %123
  %.lcssa57 = phi i32 [ %124, %123 ]
  %135 = add nsw i32 %121, 1
  br label %120, !llvm.loop !29

136:                                              ; preds = %120
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %120 ]
  %.lcssa59 = phi i32 [ %121, %120 ]
  %137 = add nsw i32 %118, 1
  br label %117, !llvm.loop !30

138:                                              ; preds = %117
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %117 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %117 ]
  %.lcssa63 = phi i32 [ %118, %117 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  br label %139

139:                                              ; preds = %158, %138
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %158 ], [ %.promoted78, %138 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %158 ], [ %.promoted76, %138 ]
  %140 = phi i32 [ %159, %158 ], [ %.promoted74, %138 ]
  %141 = icmp sle i32 %140, 3
  br i1 %141, label %142, label %160

142:                                              ; preds = %139, %156
  %.lcssa6973 = phi i32 [ %.lcssa69, %156 ], [ %.lcssa6973.lcssa79, %139 ]
  %143 = phi i32 [ %157, %156 ], [ 0, %139 ]
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142, %148
  %146 = phi i32 [ %155, %148 ], [ 0, %142 ]
  %147 = icmp sle i32 %146, 1
  br i1 %147, label %148, label %156

148:                                              ; preds = %145
  %149 = mul nsw i32 8, %146
  %150 = add nsw i32 %143, %149
  %151 = mul nsw i32 8, %150
  %152 = add nsw i32 %140, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %153
  store i32 1, ptr %154, align 4
  %155 = add nsw i32 %146, 1
  br label %145, !llvm.loop !31

156:                                              ; preds = %145
  %.lcssa69 = phi i32 [ %146, %145 ]
  %157 = add nsw i32 %143, 1
  br label %142, !llvm.loop !32

158:                                              ; preds = %142
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %142 ]
  %.lcssa71 = phi i32 [ %143, %142 ]
  %159 = add nsw i32 %140, 1
  br label %139, !llvm.loop !33

160:                                              ; preds = %139
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %139 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %139 ]
  %.lcssa75 = phi i32 [ %140, %139 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  br label %161

161:                                              ; preds = %180, %160
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %180 ], [ %.promoted90, %160 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %180 ], [ %.promoted88, %160 ]
  %162 = phi i32 [ %181, %180 ], [ %.promoted86, %160 ]
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161, %178
  %.lcssa8185 = phi i32 [ %.lcssa81, %178 ], [ %.lcssa8185.lcssa91, %161 ]
  %165 = phi i32 [ %179, %178 ], [ 0, %161 ]
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %180

167:                                              ; preds = %164, %170
  %168 = phi i32 [ %177, %170 ], [ 0, %164 ]
  %169 = icmp sle i32 %168, 3
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = mul nsw i32 8, %168
  %172 = add nsw i32 %165, %171
  %173 = mul nsw i32 8, %172
  %174 = add nsw i32 %162, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %175
  store i32 1, ptr %176, align 4
  %177 = add nsw i32 %168, 1
  br label %167, !llvm.loop !34

178:                                              ; preds = %167
  %.lcssa81 = phi i32 [ %168, %167 ]
  %179 = add nsw i32 %165, 1
  br label %164, !llvm.loop !35

180:                                              ; preds = %164
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %164 ]
  %.lcssa83 = phi i32 [ %165, %164 ]
  %181 = add nsw i32 %162, 1
  br label %161, !llvm.loop !36

182:                                              ; preds = %161
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %161 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %161 ]
  %.lcssa87 = phi i32 [ %162, %161 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  br label %183

183:                                              ; preds = %202, %182
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %202 ], [ %.promoted102, %182 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %202 ], [ %.promoted100, %182 ]
  %184 = phi i32 [ %203, %202 ], [ %.promoted98, %182 ]
  %185 = icmp sle i32 %184, 2
  br i1 %185, label %186, label %204

186:                                              ; preds = %183, %200
  %.lcssa9397 = phi i32 [ %.lcssa93, %200 ], [ %.lcssa9397.lcssa103, %183 ]
  %187 = phi i32 [ %201, %200 ], [ 0, %183 ]
  %188 = icmp sle i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %186, %192
  %190 = phi i32 [ %199, %192 ], [ 0, %186 ]
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = mul nsw i32 8, %190
  %194 = add nsw i32 %187, %193
  %195 = mul nsw i32 8, %194
  %196 = add nsw i32 %184, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %197
  store i32 1, ptr %198, align 4
  %199 = add nsw i32 %190, 1
  br label %189, !llvm.loop !37

200:                                              ; preds = %189
  %.lcssa93 = phi i32 [ %190, %189 ]
  %201 = add nsw i32 %187, 1
  br label %186, !llvm.loop !38

202:                                              ; preds = %186
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %186 ]
  %.lcssa95 = phi i32 [ %187, %186 ]
  %203 = add nsw i32 %184, 1
  br label %183, !llvm.loop !39

204:                                              ; preds = %183
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %183 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %183 ]
  %.lcssa99 = phi i32 [ %184, %183 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  br label %205

205:                                              ; preds = %224, %204
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %224 ], [ %.promoted114, %204 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %224 ], [ %.promoted112, %204 ]
  %206 = phi i32 [ %225, %224 ], [ %.promoted110, %204 ]
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %208, label %226

208:                                              ; preds = %205, %222
  %.lcssa105109 = phi i32 [ %.lcssa105, %222 ], [ %.lcssa105109.lcssa115, %205 ]
  %209 = phi i32 [ %223, %222 ], [ 0, %205 ]
  %210 = icmp sle i32 %209, 2
  br i1 %210, label %211, label %224

211:                                              ; preds = %208, %214
  %212 = phi i32 [ %221, %214 ], [ 0, %208 ]
  %213 = icmp sle i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = mul nsw i32 8, %212
  %216 = add nsw i32 %209, %215
  %217 = mul nsw i32 8, %216
  %218 = add nsw i32 %206, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %219
  store i32 1, ptr %220, align 4
  %221 = add nsw i32 %212, 1
  br label %211, !llvm.loop !40

222:                                              ; preds = %211
  %.lcssa105 = phi i32 [ %212, %211 ]
  %223 = add nsw i32 %209, 1
  br label %208, !llvm.loop !41

224:                                              ; preds = %208
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %208 ]
  %.lcssa107 = phi i32 [ %209, %208 ]
  %225 = add nsw i32 %206, 1
  br label %205, !llvm.loop !42

226:                                              ; preds = %205
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %205 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %205 ]
  %.lcssa111 = phi i32 [ %206, %205 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  br label %227

227:                                              ; preds = %246, %226
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %246 ], [ %.promoted126, %226 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %246 ], [ %.promoted124, %226 ]
  %228 = phi i32 [ %247, %246 ], [ %.promoted122, %226 ]
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %227, %244
  %.lcssa117121 = phi i32 [ %.lcssa117, %244 ], [ %.lcssa117121.lcssa127, %227 ]
  %231 = phi i32 [ %245, %244 ], [ 0, %227 ]
  %232 = icmp sle i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %230, %236
  %234 = phi i32 [ %243, %236 ], [ 0, %230 ]
  %235 = icmp sle i32 %234, 2
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = mul nsw i32 8, %234
  %238 = add nsw i32 %231, %237
  %239 = mul nsw i32 8, %238
  %240 = add nsw i32 %228, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %241
  store i32 1, ptr %242, align 4
  %243 = add nsw i32 %234, 1
  br label %233, !llvm.loop !43

244:                                              ; preds = %233
  %.lcssa117 = phi i32 [ %234, %233 ]
  %245 = add nsw i32 %231, 1
  br label %230, !llvm.loop !44

246:                                              ; preds = %230
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %230 ]
  %.lcssa119 = phi i32 [ %231, %230 ]
  %247 = add nsw i32 %228, 1
  br label %227, !llvm.loop !45

248:                                              ; preds = %227
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %227 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %227 ]
  %.lcssa123 = phi i32 [ %228, %227 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  br label %249

249:                                              ; preds = %268, %248
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %268 ], [ %.promoted138, %248 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %268 ], [ %.promoted136, %248 ]
  %250 = phi i32 [ %269, %268 ], [ %.promoted134, %248 ]
  %251 = icmp sle i32 %250, 1
  br i1 %251, label %252, label %270

252:                                              ; preds = %249, %266
  %.lcssa129133 = phi i32 [ %.lcssa129, %266 ], [ %.lcssa129133.lcssa139, %249 ]
  %253 = phi i32 [ %267, %266 ], [ 0, %249 ]
  %254 = icmp sle i32 %253, 1
  br i1 %254, label %255, label %268

255:                                              ; preds = %252, %258
  %256 = phi i32 [ %265, %258 ], [ 0, %252 ]
  %257 = icmp sle i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = mul nsw i32 8, %256
  %260 = add nsw i32 %253, %259
  %261 = mul nsw i32 8, %260
  %262 = add nsw i32 %250, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %263
  store i32 1, ptr %264, align 4
  %265 = add nsw i32 %256, 1
  br label %255, !llvm.loop !46

266:                                              ; preds = %255
  %.lcssa129 = phi i32 [ %256, %255 ]
  %267 = add nsw i32 %253, 1
  br label %252, !llvm.loop !47

268:                                              ; preds = %252
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %252 ]
  %.lcssa131 = phi i32 [ %253, %252 ]
  %269 = add nsw i32 %250, 1
  br label %249, !llvm.loop !48

270:                                              ; preds = %249
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %249 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %249 ]
  %.lcssa135 = phi i32 [ %250, %249 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  br label %271

271:                                              ; preds = %290, %270
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %290 ], [ %.promoted150, %270 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %290 ], [ %.promoted148, %270 ]
  %272 = phi i32 [ %291, %290 ], [ %.promoted146, %270 ]
  %273 = icmp sle i32 %272, 1
  br i1 %273, label %274, label %292

274:                                              ; preds = %271, %288
  %.lcssa141145 = phi i32 [ %.lcssa141, %288 ], [ %.lcssa141145.lcssa151, %271 ]
  %275 = phi i32 [ %289, %288 ], [ 0, %271 ]
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %274, %280
  %278 = phi i32 [ %287, %280 ], [ 0, %274 ]
  %279 = icmp sle i32 %278, 1
  br i1 %279, label %280, label %288

280:                                              ; preds = %277
  %281 = mul nsw i32 8, %278
  %282 = add nsw i32 %275, %281
  %283 = mul nsw i32 8, %282
  %284 = add nsw i32 %272, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nsw i32 %278, 1
  br label %277, !llvm.loop !49

288:                                              ; preds = %277
  %.lcssa141 = phi i32 [ %278, %277 ]
  %289 = add nsw i32 %275, 1
  br label %274, !llvm.loop !50

290:                                              ; preds = %274
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %274 ]
  %.lcssa143 = phi i32 [ %275, %274 ]
  %291 = add nsw i32 %272, 1
  br label %271, !llvm.loop !51

292:                                              ; preds = %271
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %271 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %271 ]
  %.lcssa147 = phi i32 [ %272, %271 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  br label %293

293:                                              ; preds = %312, %292
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %312 ], [ %.promoted162, %292 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %312 ], [ %.promoted160, %292 ]
  %294 = phi i32 [ %313, %312 ], [ %.promoted158, %292 ]
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %296, label %314

296:                                              ; preds = %293, %310
  %.lcssa153157 = phi i32 [ %.lcssa153, %310 ], [ %.lcssa153157.lcssa163, %293 ]
  %297 = phi i32 [ %311, %310 ], [ 0, %293 ]
  %298 = icmp sle i32 %297, 1
  br i1 %298, label %299, label %312

299:                                              ; preds = %296, %302
  %300 = phi i32 [ %309, %302 ], [ 0, %296 ]
  %301 = icmp sle i32 %300, 1
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = mul nsw i32 8, %300
  %304 = add nsw i32 %297, %303
  %305 = mul nsw i32 8, %304
  %306 = add nsw i32 %294, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %307
  store i32 1, ptr %308, align 4
  %309 = add nsw i32 %300, 1
  br label %299, !llvm.loop !52

310:                                              ; preds = %299
  %.lcssa153 = phi i32 [ %300, %299 ]
  %311 = add nsw i32 %297, 1
  br label %296, !llvm.loop !53

312:                                              ; preds = %296
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %296 ]
  %.lcssa155 = phi i32 [ %297, %296 ]
  %313 = add nsw i32 %294, 1
  br label %293, !llvm.loop !54

314:                                              ; preds = %293
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %293 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %293 ]
  %.lcssa159 = phi i32 [ %294, %293 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  br label %315

315:                                              ; preds = %334, %314
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %334 ], [ %.promoted174, %314 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %334 ], [ %.promoted172, %314 ]
  %316 = phi i32 [ %335, %334 ], [ %.promoted170, %314 ]
  %317 = icmp sle i32 %316, 1
  br i1 %317, label %318, label %336

318:                                              ; preds = %315, %332
  %.lcssa165169 = phi i32 [ %.lcssa165, %332 ], [ %.lcssa165169.lcssa175, %315 ]
  %319 = phi i32 [ %333, %332 ], [ 0, %315 ]
  %320 = icmp sle i32 %319, 1
  br i1 %320, label %321, label %334

321:                                              ; preds = %318, %324
  %322 = phi i32 [ %331, %324 ], [ 0, %318 ]
  %323 = icmp sle i32 %322, 1
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = mul nsw i32 8, %322
  %326 = add nsw i32 %319, %325
  %327 = mul nsw i32 8, %326
  %328 = add nsw i32 %316, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %329
  store i32 1, ptr %330, align 4
  %331 = add nsw i32 %322, 1
  br label %321, !llvm.loop !55

332:                                              ; preds = %321
  %.lcssa165 = phi i32 [ %322, %321 ]
  %333 = add nsw i32 %319, 1
  br label %318, !llvm.loop !56

334:                                              ; preds = %318
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %318 ]
  %.lcssa167 = phi i32 [ %319, %318 ]
  %335 = add nsw i32 %316, 1
  br label %315, !llvm.loop !57

336:                                              ; preds = %315
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %315 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %315 ]
  %.lcssa171 = phi i32 [ %316, %315 ]
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
  %337 = load i32, ptr %4, align 4
  %338 = call i32 @Fit(i32 noundef 0, i32 noundef %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = load i32, ptr %4, align 4
  %342 = call i32 @Place(i32 noundef 0, i32 noundef %341)
  store i32 %342, ptr @n, align 4
  br label %345

343:                                              ; preds = %336
  %344 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %345

345:                                              ; preds = %343, %340
  %346 = load i32, ptr @n, align 4
  %347 = call i32 @Trial(i32 noundef %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %356

351:                                              ; preds = %345
  %352 = load i32, ptr @kount, align 4
  %353 = icmp ne i32 %352, 2005
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %356

356:                                              ; preds = %351, %354, %349
  %357 = load i32, ptr @n, align 4
  %358 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %357)
  %359 = load i32, ptr @kount, align 4
  %360 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %359)
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
