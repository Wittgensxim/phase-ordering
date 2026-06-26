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

15:                                               ; preds = %32, %2
  %16 = phi i32 [ %33, %32 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, %10
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

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
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %18
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %16, 1
  br label %15, !llvm.loop !7

34:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, ptr %3, align 4
  ret i32 %36
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

15:                                               ; preds = %28, %2
  %16 = phi i32 [ %29, %28 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, %10
  br i1 %17, label %18, label %30

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

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %16, 1
  br label %15, !llvm.loop !9

30:                                               ; preds = %15
  %.lcssa = phi i32 [ %16, %15 ]
  store i32 %.lcssa, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, ptr %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %43
  store i32 %38, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  store i32 %45, ptr %6, align 4
  %.promoted1 = load i32, ptr %6, align 4
  br label %46

46:                                               ; preds = %57, %30
  %47 = phi i32 [ %58, %57 ], [ %.promoted1, %30 ]
  %48 = icmp sle i32 %47, 511
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %.lcssa3 = phi i32 [ %47, %49 ]
  store i32 %.lcssa3, ptr %6, align 4
  %55 = load i32, ptr %6, align 4
  store i32 %55, ptr %3, align 4
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %47, 1
  br label %46, !llvm.loop !10

59:                                               ; preds = %46
  %.lcssa2 = phi i32 [ %47, %46 ]
  store i32 %.lcssa2, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, ptr %3, align 4
  ret i32 %61
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

14:                                               ; preds = %27, %2
  %15 = phi i32 [ %28, %27 ], [ %.promoted, %2 ]
  %16 = icmp sle i32 %15, %9
  br i1 %16, label %17, label %29

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

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %15, 1
  br label %14, !llvm.loop !11

29:                                               ; preds = %14
  %.lcssa = phi i32 [ %15, %14 ]
  store i32 %.lcssa, ptr %5, align 4
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %42
  store i32 %37, ptr %43, align 4
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

11:                                               ; preds = %39, %1
  %12 = phi i32 [ %38, %39 ], [ %.promoted2, %1 ]
  %13 = phi i32 [ %40, %39 ], [ %.promoted, %1 ]
  %14 = icmp sle i32 %13, 12
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = call i32 @Fit(i32 noundef %13, i32 noundef %8)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = call i32 @Place(i32 noundef %13, i32 noundef %9)
  %28 = call i32 @Trial(i32 noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %26
  %.lcssa4 = phi i32 [ %27, %30 ], [ %27, %26 ]
  %.lcssa1 = phi i32 [ %13, %30 ], [ %13, %26 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %42

33:                                               ; preds = %30
  call void @Remove(i32 noundef %13, i32 noundef %10)
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi i32 [ %27, %34 ], [ %12, %23 ]
  br label %37

37:                                               ; preds = %35, %15
  %38 = phi i32 [ %36, %35 ], [ %12, %15 ]
  br label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %13, 1
  br label %11, !llvm.loop !12

41:                                               ; preds = %11
  %.lcssa3 = phi i32 [ %12, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
  store i32 0, ptr %2, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, ptr %2, align 4
  ret i32 %43
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

5:                                                ; preds = %11, %0
  %6 = phi i32 [ %12, %11 ], [ %.promoted, %0 ]
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

13:                                               ; preds = %5
  %.lcssa = phi i32 [ %6, %5 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted7 = load i32, ptr %1, align 4
  %.promoted9 = load i32, ptr %2, align 4
  %.promoted11 = load i32, ptr %3, align 4
  br label %14

14:                                               ; preds = %38, %13
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %38 ], [ %.promoted11, %13 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %38 ], [ %.promoted9, %13 ]
  %15 = phi i32 [ %39, %38 ], [ %.promoted7, %13 ]
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %35, %17
  %.lcssa26 = phi i32 [ %.lcssa2, %35 ], [ %.lcssa26.lcssa12, %17 ]
  %19 = phi i32 [ %36, %35 ], [ 1, %17 ]
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %32, %21
  %23 = phi i32 [ %33, %32 ], [ 1, %21 ]
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = mul nsw i32 8, %23
  %27 = add nsw i32 %19, %26
  %28 = mul nsw i32 8, %27
  %29 = add nsw i32 %15, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %30
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = add nsw i32 %23, 1
  br label %22, !llvm.loop !14

34:                                               ; preds = %22
  %.lcssa2 = phi i32 [ %23, %22 ]
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %19, 1
  br label %18, !llvm.loop !15

37:                                               ; preds = %18
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %18 ]
  %.lcssa4 = phi i32 [ %19, %18 ]
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %15, 1
  br label %14, !llvm.loop !16

40:                                               ; preds = %14
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %14 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %14 ]
  %.lcssa8 = phi i32 [ %15, %14 ]
  store i32 %.lcssa8, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  br label %41

41:                                               ; preds = %56, %40
  %.lcssa1418 = phi i32 [ %.lcssa14, %56 ], [ %.promoted17, %40 ]
  %42 = phi i32 [ %57, %56 ], [ %.promoted15, %40 ]
  %43 = icmp sle i32 %42, 12
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %45
  br label %47

47:                                               ; preds = %53, %44
  %48 = phi i32 [ %54, %53 ], [ 0, %44 ]
  %49 = icmp sle i32 %48, 511
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds [512 x i32], ptr %46, i64 0, i64 %51
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %50
  %54 = add nsw i32 %48, 1
  br label %47, !llvm.loop !17

55:                                               ; preds = %47
  %.lcssa14 = phi i32 [ %48, %47 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %42, 1
  br label %41, !llvm.loop !18

58:                                               ; preds = %41
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %41 ]
  %.lcssa16 = phi i32 [ %42, %41 ]
  store i32 %.lcssa16, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  br label %59

59:                                               ; preds = %83, %58
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %83 ], [ %.promoted30, %58 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %83 ], [ %.promoted28, %58 ]
  %60 = phi i32 [ %84, %83 ], [ %.promoted25, %58 ]
  %61 = icmp sle i32 %60, 3
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %80, %62
  %.lcssa2024 = phi i32 [ %.lcssa20, %80 ], [ %.lcssa2024.lcssa31, %62 ]
  %64 = phi i32 [ %81, %80 ], [ 0, %62 ]
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %77, %66
  %68 = phi i32 [ %78, %77 ], [ 0, %66 ]
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = mul nsw i32 8, %68
  %72 = add nsw i32 %64, %71
  %73 = mul nsw i32 8, %72
  %74 = add nsw i32 %60, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %75
  store i32 1, ptr %76, align 4
  br label %77

77:                                               ; preds = %70
  %78 = add nsw i32 %68, 1
  br label %67, !llvm.loop !19

79:                                               ; preds = %67
  %.lcssa20 = phi i32 [ %68, %67 ]
  br label %80

80:                                               ; preds = %79
  %81 = add nsw i32 %64, 1
  br label %63, !llvm.loop !20

82:                                               ; preds = %63
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %63 ]
  %.lcssa22 = phi i32 [ %64, %63 ]
  br label %83

83:                                               ; preds = %82
  %84 = add nsw i32 %60, 1
  br label %59, !llvm.loop !21

85:                                               ; preds = %59
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %59 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %59 ]
  %.lcssa27 = phi i32 [ %60, %59 ]
  store i32 %.lcssa27, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  br label %86

86:                                               ; preds = %110, %85
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %110 ], [ %.promoted42, %85 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %110 ], [ %.promoted40, %85 ]
  %87 = phi i32 [ %111, %110 ], [ %.promoted38, %85 ]
  %88 = icmp sle i32 %87, 1
  br i1 %88, label %89, label %112

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %107, %89
  %.lcssa3337 = phi i32 [ %.lcssa33, %107 ], [ %.lcssa3337.lcssa43, %89 ]
  %91 = phi i32 [ %108, %107 ], [ 0, %89 ]
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %104, %93
  %95 = phi i32 [ %105, %104 ], [ 0, %93 ]
  %96 = icmp sle i32 %95, 3
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = mul nsw i32 8, %95
  %99 = add nsw i32 %91, %98
  %100 = mul nsw i32 8, %99
  %101 = add nsw i32 %87, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %102
  store i32 1, ptr %103, align 4
  br label %104

104:                                              ; preds = %97
  %105 = add nsw i32 %95, 1
  br label %94, !llvm.loop !22

106:                                              ; preds = %94
  %.lcssa33 = phi i32 [ %95, %94 ]
  br label %107

107:                                              ; preds = %106
  %108 = add nsw i32 %91, 1
  br label %90, !llvm.loop !23

109:                                              ; preds = %90
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %90 ]
  %.lcssa35 = phi i32 [ %91, %90 ]
  br label %110

110:                                              ; preds = %109
  %111 = add nsw i32 %87, 1
  br label %86, !llvm.loop !24

112:                                              ; preds = %86
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %86 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %86 ]
  %.lcssa39 = phi i32 [ %87, %86 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  br label %113

113:                                              ; preds = %137, %112
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %137 ], [ %.promoted54, %112 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %137 ], [ %.promoted52, %112 ]
  %114 = phi i32 [ %138, %137 ], [ %.promoted50, %112 ]
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %134, %116
  %.lcssa4549 = phi i32 [ %.lcssa45, %134 ], [ %.lcssa4549.lcssa55, %116 ]
  %118 = phi i32 [ %135, %134 ], [ 0, %116 ]
  %119 = icmp sle i32 %118, 3
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %131, %120
  %122 = phi i32 [ %132, %131 ], [ 0, %120 ]
  %123 = icmp sle i32 %122, 1
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = mul nsw i32 8, %122
  %126 = add nsw i32 %118, %125
  %127 = mul nsw i32 8, %126
  %128 = add nsw i32 %114, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %129
  store i32 1, ptr %130, align 4
  br label %131

131:                                              ; preds = %124
  %132 = add nsw i32 %122, 1
  br label %121, !llvm.loop !25

133:                                              ; preds = %121
  %.lcssa45 = phi i32 [ %122, %121 ]
  br label %134

134:                                              ; preds = %133
  %135 = add nsw i32 %118, 1
  br label %117, !llvm.loop !26

136:                                              ; preds = %117
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %117 ]
  %.lcssa47 = phi i32 [ %118, %117 ]
  br label %137

137:                                              ; preds = %136
  %138 = add nsw i32 %114, 1
  br label %113, !llvm.loop !27

139:                                              ; preds = %113
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %113 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %113 ]
  %.lcssa51 = phi i32 [ %114, %113 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  br label %140

140:                                              ; preds = %164, %139
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %164 ], [ %.promoted66, %139 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %164 ], [ %.promoted64, %139 ]
  %141 = phi i32 [ %165, %164 ], [ %.promoted62, %139 ]
  %142 = icmp sle i32 %141, 1
  br i1 %142, label %143, label %166

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %161, %143
  %.lcssa5761 = phi i32 [ %.lcssa57, %161 ], [ %.lcssa5761.lcssa67, %143 ]
  %145 = phi i32 [ %162, %161 ], [ 0, %143 ]
  %146 = icmp sle i32 %145, 3
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %158, %147
  %149 = phi i32 [ %159, %158 ], [ 0, %147 ]
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = mul nsw i32 8, %149
  %153 = add nsw i32 %145, %152
  %154 = mul nsw i32 8, %153
  %155 = add nsw i32 %141, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %156
  store i32 1, ptr %157, align 4
  br label %158

158:                                              ; preds = %151
  %159 = add nsw i32 %149, 1
  br label %148, !llvm.loop !28

160:                                              ; preds = %148
  %.lcssa57 = phi i32 [ %149, %148 ]
  br label %161

161:                                              ; preds = %160
  %162 = add nsw i32 %145, 1
  br label %144, !llvm.loop !29

163:                                              ; preds = %144
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %144 ]
  %.lcssa59 = phi i32 [ %145, %144 ]
  br label %164

164:                                              ; preds = %163
  %165 = add nsw i32 %141, 1
  br label %140, !llvm.loop !30

166:                                              ; preds = %140
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %140 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %140 ]
  %.lcssa63 = phi i32 [ %141, %140 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  br label %167

167:                                              ; preds = %191, %166
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %191 ], [ %.promoted78, %166 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %191 ], [ %.promoted76, %166 ]
  %168 = phi i32 [ %192, %191 ], [ %.promoted74, %166 ]
  %169 = icmp sle i32 %168, 3
  br i1 %169, label %170, label %193

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %188, %170
  %.lcssa6973 = phi i32 [ %.lcssa69, %188 ], [ %.lcssa6973.lcssa79, %170 ]
  %172 = phi i32 [ %189, %188 ], [ 0, %170 ]
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %185, %174
  %176 = phi i32 [ %186, %185 ], [ 0, %174 ]
  %177 = icmp sle i32 %176, 1
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = mul nsw i32 8, %176
  %180 = add nsw i32 %172, %179
  %181 = mul nsw i32 8, %180
  %182 = add nsw i32 %168, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %183
  store i32 1, ptr %184, align 4
  br label %185

185:                                              ; preds = %178
  %186 = add nsw i32 %176, 1
  br label %175, !llvm.loop !31

187:                                              ; preds = %175
  %.lcssa69 = phi i32 [ %176, %175 ]
  br label %188

188:                                              ; preds = %187
  %189 = add nsw i32 %172, 1
  br label %171, !llvm.loop !32

190:                                              ; preds = %171
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %171 ]
  %.lcssa71 = phi i32 [ %172, %171 ]
  br label %191

191:                                              ; preds = %190
  %192 = add nsw i32 %168, 1
  br label %167, !llvm.loop !33

193:                                              ; preds = %167
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %167 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %167 ]
  %.lcssa75 = phi i32 [ %168, %167 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  br label %194

194:                                              ; preds = %218, %193
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %218 ], [ %.promoted90, %193 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %218 ], [ %.promoted88, %193 ]
  %195 = phi i32 [ %219, %218 ], [ %.promoted86, %193 ]
  %196 = icmp sle i32 %195, 0
  br i1 %196, label %197, label %220

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %215, %197
  %.lcssa8185 = phi i32 [ %.lcssa81, %215 ], [ %.lcssa8185.lcssa91, %197 ]
  %199 = phi i32 [ %216, %215 ], [ 0, %197 ]
  %200 = icmp sle i32 %199, 1
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  br label %202

202:                                              ; preds = %212, %201
  %203 = phi i32 [ %213, %212 ], [ 0, %201 ]
  %204 = icmp sle i32 %203, 3
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = mul nsw i32 8, %203
  %207 = add nsw i32 %199, %206
  %208 = mul nsw i32 8, %207
  %209 = add nsw i32 %195, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %210
  store i32 1, ptr %211, align 4
  br label %212

212:                                              ; preds = %205
  %213 = add nsw i32 %203, 1
  br label %202, !llvm.loop !34

214:                                              ; preds = %202
  %.lcssa81 = phi i32 [ %203, %202 ]
  br label %215

215:                                              ; preds = %214
  %216 = add nsw i32 %199, 1
  br label %198, !llvm.loop !35

217:                                              ; preds = %198
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %198 ]
  %.lcssa83 = phi i32 [ %199, %198 ]
  br label %218

218:                                              ; preds = %217
  %219 = add nsw i32 %195, 1
  br label %194, !llvm.loop !36

220:                                              ; preds = %194
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %194 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %194 ]
  %.lcssa87 = phi i32 [ %195, %194 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  br label %221

221:                                              ; preds = %245, %220
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %245 ], [ %.promoted102, %220 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %245 ], [ %.promoted100, %220 ]
  %222 = phi i32 [ %246, %245 ], [ %.promoted98, %220 ]
  %223 = icmp sle i32 %222, 2
  br i1 %223, label %224, label %247

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %242, %224
  %.lcssa9397 = phi i32 [ %.lcssa93, %242 ], [ %.lcssa9397.lcssa103, %224 ]
  %226 = phi i32 [ %243, %242 ], [ 0, %224 ]
  %227 = icmp sle i32 %226, 0
  br i1 %227, label %228, label %244

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %239, %228
  %230 = phi i32 [ %240, %239 ], [ 0, %228 ]
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = mul nsw i32 8, %230
  %234 = add nsw i32 %226, %233
  %235 = mul nsw i32 8, %234
  %236 = add nsw i32 %222, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %237
  store i32 1, ptr %238, align 4
  br label %239

239:                                              ; preds = %232
  %240 = add nsw i32 %230, 1
  br label %229, !llvm.loop !37

241:                                              ; preds = %229
  %.lcssa93 = phi i32 [ %230, %229 ]
  br label %242

242:                                              ; preds = %241
  %243 = add nsw i32 %226, 1
  br label %225, !llvm.loop !38

244:                                              ; preds = %225
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %225 ]
  %.lcssa95 = phi i32 [ %226, %225 ]
  br label %245

245:                                              ; preds = %244
  %246 = add nsw i32 %222, 1
  br label %221, !llvm.loop !39

247:                                              ; preds = %221
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %221 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %221 ]
  %.lcssa99 = phi i32 [ %222, %221 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  br label %248

248:                                              ; preds = %272, %247
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %272 ], [ %.promoted114, %247 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %272 ], [ %.promoted112, %247 ]
  %249 = phi i32 [ %273, %272 ], [ %.promoted110, %247 ]
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %269, %251
  %.lcssa105109 = phi i32 [ %.lcssa105, %269 ], [ %.lcssa105109.lcssa115, %251 ]
  %253 = phi i32 [ %270, %269 ], [ 0, %251 ]
  %254 = icmp sle i32 %253, 2
  br i1 %254, label %255, label %271

255:                                              ; preds = %252
  br label %256

256:                                              ; preds = %266, %255
  %257 = phi i32 [ %267, %266 ], [ 0, %255 ]
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = mul nsw i32 8, %257
  %261 = add nsw i32 %253, %260
  %262 = mul nsw i32 8, %261
  %263 = add nsw i32 %249, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %264
  store i32 1, ptr %265, align 4
  br label %266

266:                                              ; preds = %259
  %267 = add nsw i32 %257, 1
  br label %256, !llvm.loop !40

268:                                              ; preds = %256
  %.lcssa105 = phi i32 [ %257, %256 ]
  br label %269

269:                                              ; preds = %268
  %270 = add nsw i32 %253, 1
  br label %252, !llvm.loop !41

271:                                              ; preds = %252
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %252 ]
  %.lcssa107 = phi i32 [ %253, %252 ]
  br label %272

272:                                              ; preds = %271
  %273 = add nsw i32 %249, 1
  br label %248, !llvm.loop !42

274:                                              ; preds = %248
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %248 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %248 ]
  %.lcssa111 = phi i32 [ %249, %248 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  br label %275

275:                                              ; preds = %299, %274
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %299 ], [ %.promoted126, %274 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %299 ], [ %.promoted124, %274 ]
  %276 = phi i32 [ %300, %299 ], [ %.promoted122, %274 ]
  %277 = icmp sle i32 %276, 0
  br i1 %277, label %278, label %301

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %296, %278
  %.lcssa117121 = phi i32 [ %.lcssa117, %296 ], [ %.lcssa117121.lcssa127, %278 ]
  %280 = phi i32 [ %297, %296 ], [ 0, %278 ]
  %281 = icmp sle i32 %280, 0
  br i1 %281, label %282, label %298

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %293, %282
  %284 = phi i32 [ %294, %293 ], [ 0, %282 ]
  %285 = icmp sle i32 %284, 2
  br i1 %285, label %286, label %295

286:                                              ; preds = %283
  %287 = mul nsw i32 8, %284
  %288 = add nsw i32 %280, %287
  %289 = mul nsw i32 8, %288
  %290 = add nsw i32 %276, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %291
  store i32 1, ptr %292, align 4
  br label %293

293:                                              ; preds = %286
  %294 = add nsw i32 %284, 1
  br label %283, !llvm.loop !43

295:                                              ; preds = %283
  %.lcssa117 = phi i32 [ %284, %283 ]
  br label %296

296:                                              ; preds = %295
  %297 = add nsw i32 %280, 1
  br label %279, !llvm.loop !44

298:                                              ; preds = %279
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %279 ]
  %.lcssa119 = phi i32 [ %280, %279 ]
  br label %299

299:                                              ; preds = %298
  %300 = add nsw i32 %276, 1
  br label %275, !llvm.loop !45

301:                                              ; preds = %275
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %275 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %275 ]
  %.lcssa123 = phi i32 [ %276, %275 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  br label %302

302:                                              ; preds = %326, %301
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %326 ], [ %.promoted138, %301 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %326 ], [ %.promoted136, %301 ]
  %303 = phi i32 [ %327, %326 ], [ %.promoted134, %301 ]
  %304 = icmp sle i32 %303, 1
  br i1 %304, label %305, label %328

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %323, %305
  %.lcssa129133 = phi i32 [ %.lcssa129, %323 ], [ %.lcssa129133.lcssa139, %305 ]
  %307 = phi i32 [ %324, %323 ], [ 0, %305 ]
  %308 = icmp sle i32 %307, 1
  br i1 %308, label %309, label %325

309:                                              ; preds = %306
  br label %310

310:                                              ; preds = %320, %309
  %311 = phi i32 [ %321, %320 ], [ 0, %309 ]
  %312 = icmp sle i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %310
  %314 = mul nsw i32 8, %311
  %315 = add nsw i32 %307, %314
  %316 = mul nsw i32 8, %315
  %317 = add nsw i32 %303, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %318
  store i32 1, ptr %319, align 4
  br label %320

320:                                              ; preds = %313
  %321 = add nsw i32 %311, 1
  br label %310, !llvm.loop !46

322:                                              ; preds = %310
  %.lcssa129 = phi i32 [ %311, %310 ]
  br label %323

323:                                              ; preds = %322
  %324 = add nsw i32 %307, 1
  br label %306, !llvm.loop !47

325:                                              ; preds = %306
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %306 ]
  %.lcssa131 = phi i32 [ %307, %306 ]
  br label %326

326:                                              ; preds = %325
  %327 = add nsw i32 %303, 1
  br label %302, !llvm.loop !48

328:                                              ; preds = %302
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %302 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %302 ]
  %.lcssa135 = phi i32 [ %303, %302 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  br label %329

329:                                              ; preds = %353, %328
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %353 ], [ %.promoted150, %328 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %353 ], [ %.promoted148, %328 ]
  %330 = phi i32 [ %354, %353 ], [ %.promoted146, %328 ]
  %331 = icmp sle i32 %330, 1
  br i1 %331, label %332, label %355

332:                                              ; preds = %329
  br label %333

333:                                              ; preds = %350, %332
  %.lcssa141145 = phi i32 [ %.lcssa141, %350 ], [ %.lcssa141145.lcssa151, %332 ]
  %334 = phi i32 [ %351, %350 ], [ 0, %332 ]
  %335 = icmp sle i32 %334, 0
  br i1 %335, label %336, label %352

336:                                              ; preds = %333
  br label %337

337:                                              ; preds = %347, %336
  %338 = phi i32 [ %348, %347 ], [ 0, %336 ]
  %339 = icmp sle i32 %338, 1
  br i1 %339, label %340, label %349

340:                                              ; preds = %337
  %341 = mul nsw i32 8, %338
  %342 = add nsw i32 %334, %341
  %343 = mul nsw i32 8, %342
  %344 = add nsw i32 %330, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %345
  store i32 1, ptr %346, align 4
  br label %347

347:                                              ; preds = %340
  %348 = add nsw i32 %338, 1
  br label %337, !llvm.loop !49

349:                                              ; preds = %337
  %.lcssa141 = phi i32 [ %338, %337 ]
  br label %350

350:                                              ; preds = %349
  %351 = add nsw i32 %334, 1
  br label %333, !llvm.loop !50

352:                                              ; preds = %333
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %333 ]
  %.lcssa143 = phi i32 [ %334, %333 ]
  br label %353

353:                                              ; preds = %352
  %354 = add nsw i32 %330, 1
  br label %329, !llvm.loop !51

355:                                              ; preds = %329
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %329 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %329 ]
  %.lcssa147 = phi i32 [ %330, %329 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  br label %356

356:                                              ; preds = %380, %355
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %380 ], [ %.promoted162, %355 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %380 ], [ %.promoted160, %355 ]
  %357 = phi i32 [ %381, %380 ], [ %.promoted158, %355 ]
  %358 = icmp sle i32 %357, 0
  br i1 %358, label %359, label %382

359:                                              ; preds = %356
  br label %360

360:                                              ; preds = %377, %359
  %.lcssa153157 = phi i32 [ %.lcssa153, %377 ], [ %.lcssa153157.lcssa163, %359 ]
  %361 = phi i32 [ %378, %377 ], [ 0, %359 ]
  %362 = icmp sle i32 %361, 1
  br i1 %362, label %363, label %379

363:                                              ; preds = %360
  br label %364

364:                                              ; preds = %374, %363
  %365 = phi i32 [ %375, %374 ], [ 0, %363 ]
  %366 = icmp sle i32 %365, 1
  br i1 %366, label %367, label %376

367:                                              ; preds = %364
  %368 = mul nsw i32 8, %365
  %369 = add nsw i32 %361, %368
  %370 = mul nsw i32 8, %369
  %371 = add nsw i32 %357, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %372
  store i32 1, ptr %373, align 4
  br label %374

374:                                              ; preds = %367
  %375 = add nsw i32 %365, 1
  br label %364, !llvm.loop !52

376:                                              ; preds = %364
  %.lcssa153 = phi i32 [ %365, %364 ]
  br label %377

377:                                              ; preds = %376
  %378 = add nsw i32 %361, 1
  br label %360, !llvm.loop !53

379:                                              ; preds = %360
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %360 ]
  %.lcssa155 = phi i32 [ %361, %360 ]
  br label %380

380:                                              ; preds = %379
  %381 = add nsw i32 %357, 1
  br label %356, !llvm.loop !54

382:                                              ; preds = %356
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %356 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %356 ]
  %.lcssa159 = phi i32 [ %357, %356 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  br label %383

383:                                              ; preds = %407, %382
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %407 ], [ %.promoted174, %382 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %407 ], [ %.promoted172, %382 ]
  %384 = phi i32 [ %408, %407 ], [ %.promoted170, %382 ]
  %385 = icmp sle i32 %384, 1
  br i1 %385, label %386, label %409

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %404, %386
  %.lcssa165169 = phi i32 [ %.lcssa165, %404 ], [ %.lcssa165169.lcssa175, %386 ]
  %388 = phi i32 [ %405, %404 ], [ 0, %386 ]
  %389 = icmp sle i32 %388, 1
  br i1 %389, label %390, label %406

390:                                              ; preds = %387
  br label %391

391:                                              ; preds = %401, %390
  %392 = phi i32 [ %402, %401 ], [ 0, %390 ]
  %393 = icmp sle i32 %392, 1
  br i1 %393, label %394, label %403

394:                                              ; preds = %391
  %395 = mul nsw i32 8, %392
  %396 = add nsw i32 %388, %395
  %397 = mul nsw i32 8, %396
  %398 = add nsw i32 %384, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %399
  store i32 1, ptr %400, align 4
  br label %401

401:                                              ; preds = %394
  %402 = add nsw i32 %392, 1
  br label %391, !llvm.loop !55

403:                                              ; preds = %391
  %.lcssa165 = phi i32 [ %392, %391 ]
  br label %404

404:                                              ; preds = %403
  %405 = add nsw i32 %388, 1
  br label %387, !llvm.loop !56

406:                                              ; preds = %387
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %387 ]
  %.lcssa167 = phi i32 [ %388, %387 ]
  br label %407

407:                                              ; preds = %406
  %408 = add nsw i32 %384, 1
  br label %383, !llvm.loop !57

409:                                              ; preds = %383
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %383 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %383 ]
  %.lcssa171 = phi i32 [ %384, %383 ]
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
  %410 = load i32, ptr %4, align 4
  %411 = call i32 @Fit(i32 noundef 0, i32 noundef %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load i32, ptr %4, align 4
  %415 = call i32 @Place(i32 noundef 0, i32 noundef %414)
  store i32 %415, ptr @n, align 4
  br label %418

416:                                              ; preds = %409
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %418

418:                                              ; preds = %416, %413
  %419 = load i32, ptr @n, align 4
  %420 = call i32 @Trial(i32 noundef %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %418
  %423 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %430

424:                                              ; preds = %418
  %425 = load i32, ptr @kount, align 4
  %426 = icmp ne i32 %425, 2005
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  %428 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %429

429:                                              ; preds = %427, %424
  br label %430

430:                                              ; preds = %429, %422
  %431 = load i32, ptr @n, align 4
  %432 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %431)
  %433 = load i32, ptr @kount, align 4
  %434 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %433)
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

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Puzzle()
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !58

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
