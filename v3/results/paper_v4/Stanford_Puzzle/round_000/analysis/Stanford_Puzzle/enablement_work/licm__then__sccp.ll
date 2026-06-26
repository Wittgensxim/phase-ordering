; ModuleID = 'results\paper_v4\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %.lcssa4 = phi i32 [ 0, %30 ], [ %27, %26 ]
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

59:                                               ; preds = %81, %58
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %81 ], [ %.promoted30, %58 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %81 ], [ %.promoted28, %58 ]
  %60 = phi i32 [ %82, %81 ], [ %.promoted25, %58 ]
  %61 = icmp sle i32 %60, 3
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %78, %62
  %.lcssa2024 = phi i32 [ %.lcssa20, %78 ], [ %.lcssa2024.lcssa31, %62 ]
  %64 = phi i32 [ %79, %78 ], [ 0, %62 ]
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %76, %66
  %68 = phi i32 [ 1, %76 ], [ 0, %66 ]
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = add nuw nsw i32 %64, 0
  %72 = mul nuw nsw i32 8, %71
  %73 = add nsw i32 %60, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %74
  store i32 1, ptr %75, align 4
  br label %76

76:                                               ; preds = %70
  br label %67, !llvm.loop !19

77:                                               ; preds = %67
  %.lcssa20 = phi i32 [ %68, %67 ]
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %64, 1
  br label %63, !llvm.loop !20

80:                                               ; preds = %63
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %63 ]
  %.lcssa22 = phi i32 [ %64, %63 ]
  br label %81

81:                                               ; preds = %80
  %82 = add nsw i32 %60, 1
  br label %59, !llvm.loop !21

83:                                               ; preds = %59
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
  br label %84

84:                                               ; preds = %107, %83
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %107 ], [ %.promoted42, %83 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %107 ], [ %.promoted40, %83 ]
  %85 = phi i32 [ %108, %107 ], [ %.promoted38, %83 ]
  %86 = icmp sle i32 %85, 1
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %105, %87
  %.lcssa3337 = phi i32 [ %.lcssa33, %105 ], [ %.lcssa3337.lcssa43, %87 ]
  %89 = phi i32 [ 1, %105 ], [ 0, %87 ]
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %102, %91
  %93 = phi i32 [ %103, %102 ], [ 0, %91 ]
  %94 = icmp sle i32 %93, 3
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = mul nsw i32 8, %93
  %97 = add nuw nsw i32 0, %96
  %98 = mul nsw i32 8, %97
  %99 = add nsw i32 %85, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %100
  store i32 1, ptr %101, align 4
  br label %102

102:                                              ; preds = %95
  %103 = add nsw i32 %93, 1
  br label %92, !llvm.loop !22

104:                                              ; preds = %92
  %.lcssa33 = phi i32 [ %93, %92 ]
  br label %105

105:                                              ; preds = %104
  br label %88, !llvm.loop !23

106:                                              ; preds = %88
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %88 ]
  %.lcssa35 = phi i32 [ %89, %88 ]
  br label %107

107:                                              ; preds = %106
  %108 = add nsw i32 %85, 1
  br label %84, !llvm.loop !24

109:                                              ; preds = %84
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %84 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %84 ]
  %.lcssa39 = phi i32 [ %85, %84 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  br label %110

110:                                              ; preds = %134, %109
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %134 ], [ %.promoted54, %109 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %134 ], [ %.promoted52, %109 ]
  %111 = phi i32 [ %135, %134 ], [ %.promoted50, %109 ]
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %131, %113
  %.lcssa4549 = phi i32 [ %.lcssa45, %131 ], [ %.lcssa4549.lcssa55, %113 ]
  %115 = phi i32 [ %132, %131 ], [ 0, %113 ]
  %116 = icmp sle i32 %115, 3
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %128, %117
  %119 = phi i32 [ %129, %128 ], [ 0, %117 ]
  %120 = icmp sle i32 %119, 1
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = mul nuw nsw i32 8, %119
  %123 = add nsw i32 %115, %122
  %124 = mul nsw i32 8, %123
  %125 = add nsw i32 %111, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %126
  store i32 1, ptr %127, align 4
  br label %128

128:                                              ; preds = %121
  %129 = add nuw nsw i32 %119, 1
  br label %118, !llvm.loop !25

130:                                              ; preds = %118
  %.lcssa45 = phi i32 [ %119, %118 ]
  br label %131

131:                                              ; preds = %130
  %132 = add nsw i32 %115, 1
  br label %114, !llvm.loop !26

133:                                              ; preds = %114
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %114 ]
  %.lcssa47 = phi i32 [ %115, %114 ]
  br label %134

134:                                              ; preds = %133
  %135 = add nsw i32 %111, 1
  br label %110, !llvm.loop !27

136:                                              ; preds = %110
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %110 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %110 ]
  %.lcssa51 = phi i32 [ %111, %110 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  br label %137

137:                                              ; preds = %159, %136
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %159 ], [ %.promoted66, %136 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %159 ], [ %.promoted64, %136 ]
  %138 = phi i32 [ %160, %159 ], [ %.promoted62, %136 ]
  %139 = icmp sle i32 %138, 1
  br i1 %139, label %140, label %161

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %156, %140
  %.lcssa5761 = phi i32 [ %.lcssa57, %156 ], [ %.lcssa5761.lcssa67, %140 ]
  %142 = phi i32 [ %157, %156 ], [ 0, %140 ]
  %143 = icmp sle i32 %142, 3
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %154, %144
  %146 = phi i32 [ 1, %154 ], [ 0, %144 ]
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = add nuw nsw i32 %142, 0
  %150 = mul nsw i32 8, %149
  %151 = add nsw i32 %138, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %152
  store i32 1, ptr %153, align 4
  br label %154

154:                                              ; preds = %148
  br label %145, !llvm.loop !28

155:                                              ; preds = %145
  %.lcssa57 = phi i32 [ %146, %145 ]
  br label %156

156:                                              ; preds = %155
  %157 = add nsw i32 %142, 1
  br label %141, !llvm.loop !29

158:                                              ; preds = %141
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %141 ]
  %.lcssa59 = phi i32 [ %142, %141 ]
  br label %159

159:                                              ; preds = %158
  %160 = add nsw i32 %138, 1
  br label %137, !llvm.loop !30

161:                                              ; preds = %137
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %137 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %137 ]
  %.lcssa63 = phi i32 [ %138, %137 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  br label %162

162:                                              ; preds = %185, %161
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %185 ], [ %.promoted78, %161 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %185 ], [ %.promoted76, %161 ]
  %163 = phi i32 [ %186, %185 ], [ %.promoted74, %161 ]
  %164 = icmp sle i32 %163, 3
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %183, %165
  %.lcssa6973 = phi i32 [ %.lcssa69, %183 ], [ %.lcssa6973.lcssa79, %165 ]
  %167 = phi i32 [ 1, %183 ], [ 0, %165 ]
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %180, %169
  %171 = phi i32 [ %181, %180 ], [ 0, %169 ]
  %172 = icmp sle i32 %171, 1
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = mul nuw nsw i32 8, %171
  %175 = add nuw nsw i32 0, %174
  %176 = mul nuw nsw i32 8, %175
  %177 = add nsw i32 %163, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %178
  store i32 1, ptr %179, align 4
  br label %180

180:                                              ; preds = %173
  %181 = add nuw nsw i32 %171, 1
  br label %170, !llvm.loop !31

182:                                              ; preds = %170
  %.lcssa69 = phi i32 [ %171, %170 ]
  br label %183

183:                                              ; preds = %182
  br label %166, !llvm.loop !32

184:                                              ; preds = %166
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %166 ]
  %.lcssa71 = phi i32 [ %167, %166 ]
  br label %185

185:                                              ; preds = %184
  %186 = add nsw i32 %163, 1
  br label %162, !llvm.loop !33

187:                                              ; preds = %162
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %162 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %162 ]
  %.lcssa75 = phi i32 [ %163, %162 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  br label %188

188:                                              ; preds = %212, %187
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %212 ], [ %.promoted90, %187 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %212 ], [ %.promoted88, %187 ]
  %189 = phi i32 [ %213, %212 ], [ %.promoted86, %187 ]
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  br label %192

192:                                              ; preds = %209, %191
  %.lcssa8185 = phi i32 [ %.lcssa81, %209 ], [ %.lcssa8185.lcssa91, %191 ]
  %193 = phi i32 [ %210, %209 ], [ 0, %191 ]
  %194 = icmp sle i32 %193, 1
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  br label %196

196:                                              ; preds = %206, %195
  %197 = phi i32 [ %207, %206 ], [ 0, %195 ]
  %198 = icmp sle i32 %197, 3
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = mul nsw i32 8, %197
  %201 = add nsw i32 %193, %200
  %202 = mul nsw i32 8, %201
  %203 = add nsw i32 %189, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %204
  store i32 1, ptr %205, align 4
  br label %206

206:                                              ; preds = %199
  %207 = add nsw i32 %197, 1
  br label %196, !llvm.loop !34

208:                                              ; preds = %196
  %.lcssa81 = phi i32 [ %197, %196 ]
  br label %209

209:                                              ; preds = %208
  %210 = add nuw nsw i32 %193, 1
  br label %192, !llvm.loop !35

211:                                              ; preds = %192
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %192 ]
  %.lcssa83 = phi i32 [ %193, %192 ]
  br label %212

212:                                              ; preds = %211
  %213 = add nsw i32 %189, 1
  br label %188, !llvm.loop !36

214:                                              ; preds = %188
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %188 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %188 ]
  %.lcssa87 = phi i32 [ %189, %188 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  br label %215

215:                                              ; preds = %234, %214
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %234 ], [ %.promoted102, %214 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %234 ], [ %.promoted100, %214 ]
  %216 = phi i32 [ %235, %234 ], [ %.promoted98, %214 ]
  %217 = icmp sle i32 %216, 2
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %232, %218
  %.lcssa9397 = phi i32 [ %.lcssa93, %232 ], [ %.lcssa9397.lcssa103, %218 ]
  %220 = phi i32 [ 1, %232 ], [ 0, %218 ]
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %230, %222
  %224 = phi i32 [ 1, %230 ], [ 0, %222 ]
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = add nuw nsw i32 %216, 0
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %228
  store i32 1, ptr %229, align 4
  br label %230

230:                                              ; preds = %226
  br label %223, !llvm.loop !37

231:                                              ; preds = %223
  %.lcssa93 = phi i32 [ %224, %223 ]
  br label %232

232:                                              ; preds = %231
  br label %219, !llvm.loop !38

233:                                              ; preds = %219
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %219 ]
  %.lcssa95 = phi i32 [ %220, %219 ]
  br label %234

234:                                              ; preds = %233
  %235 = add nsw i32 %216, 1
  br label %215, !llvm.loop !39

236:                                              ; preds = %215
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %215 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %215 ]
  %.lcssa99 = phi i32 [ %216, %215 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  br label %237

237:                                              ; preds = %259, %236
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %259 ], [ %.promoted114, %236 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %259 ], [ %.promoted112, %236 ]
  %238 = phi i32 [ %260, %259 ], [ %.promoted110, %236 ]
  %239 = icmp sle i32 %238, 0
  br i1 %239, label %240, label %261

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %256, %240
  %.lcssa105109 = phi i32 [ %.lcssa105, %256 ], [ %.lcssa105109.lcssa115, %240 ]
  %242 = phi i32 [ %257, %256 ], [ 0, %240 ]
  %243 = icmp sle i32 %242, 2
  br i1 %243, label %244, label %258

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %254, %244
  %246 = phi i32 [ 1, %254 ], [ 0, %244 ]
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = add nuw nsw i32 %242, 0
  %250 = mul nsw i32 8, %249
  %251 = add nsw i32 %238, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %252
  store i32 1, ptr %253, align 4
  br label %254

254:                                              ; preds = %248
  br label %245, !llvm.loop !40

255:                                              ; preds = %245
  %.lcssa105 = phi i32 [ %246, %245 ]
  br label %256

256:                                              ; preds = %255
  %257 = add nsw i32 %242, 1
  br label %241, !llvm.loop !41

258:                                              ; preds = %241
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %241 ]
  %.lcssa107 = phi i32 [ %242, %241 ]
  br label %259

259:                                              ; preds = %258
  %260 = add nsw i32 %238, 1
  br label %237, !llvm.loop !42

261:                                              ; preds = %237
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %237 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %237 ]
  %.lcssa111 = phi i32 [ %238, %237 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  br label %262

262:                                              ; preds = %285, %261
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %285 ], [ %.promoted126, %261 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %285 ], [ %.promoted124, %261 ]
  %263 = phi i32 [ %286, %285 ], [ %.promoted122, %261 ]
  %264 = icmp sle i32 %263, 0
  br i1 %264, label %265, label %287

265:                                              ; preds = %262
  br label %266

266:                                              ; preds = %283, %265
  %.lcssa117121 = phi i32 [ %.lcssa117, %283 ], [ %.lcssa117121.lcssa127, %265 ]
  %267 = phi i32 [ 1, %283 ], [ 0, %265 ]
  %268 = icmp sle i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %280, %269
  %271 = phi i32 [ %281, %280 ], [ 0, %269 ]
  %272 = icmp sle i32 %271, 2
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = mul nsw i32 8, %271
  %275 = add nuw nsw i32 0, %274
  %276 = mul nsw i32 8, %275
  %277 = add nsw i32 %263, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %273
  %281 = add nsw i32 %271, 1
  br label %270, !llvm.loop !43

282:                                              ; preds = %270
  %.lcssa117 = phi i32 [ %271, %270 ]
  br label %283

283:                                              ; preds = %282
  br label %266, !llvm.loop !44

284:                                              ; preds = %266
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %266 ]
  %.lcssa119 = phi i32 [ %267, %266 ]
  br label %285

285:                                              ; preds = %284
  %286 = add nsw i32 %263, 1
  br label %262, !llvm.loop !45

287:                                              ; preds = %262
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %262 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %262 ]
  %.lcssa123 = phi i32 [ %263, %262 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  br label %288

288:                                              ; preds = %310, %287
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %310 ], [ %.promoted138, %287 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %310 ], [ %.promoted136, %287 ]
  %289 = phi i32 [ %311, %310 ], [ %.promoted134, %287 ]
  %290 = icmp sle i32 %289, 1
  br i1 %290, label %291, label %312

291:                                              ; preds = %288
  br label %292

292:                                              ; preds = %307, %291
  %.lcssa129133 = phi i32 [ %.lcssa129, %307 ], [ %.lcssa129133.lcssa139, %291 ]
  %293 = phi i32 [ %308, %307 ], [ 0, %291 ]
  %294 = icmp sle i32 %293, 1
  br i1 %294, label %295, label %309

295:                                              ; preds = %292
  br label %296

296:                                              ; preds = %305, %295
  %297 = phi i32 [ 1, %305 ], [ 0, %295 ]
  %298 = icmp sle i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %296
  %300 = add nuw nsw i32 %293, 0
  %301 = mul nuw nsw i32 8, %300
  %302 = add nsw i32 %289, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %303
  store i32 1, ptr %304, align 4
  br label %305

305:                                              ; preds = %299
  br label %296, !llvm.loop !46

306:                                              ; preds = %296
  %.lcssa129 = phi i32 [ %297, %296 ]
  br label %307

307:                                              ; preds = %306
  %308 = add nuw nsw i32 %293, 1
  br label %292, !llvm.loop !47

309:                                              ; preds = %292
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %292 ]
  %.lcssa131 = phi i32 [ %293, %292 ]
  br label %310

310:                                              ; preds = %309
  %311 = add nsw i32 %289, 1
  br label %288, !llvm.loop !48

312:                                              ; preds = %288
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %288 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %288 ]
  %.lcssa135 = phi i32 [ %289, %288 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  br label %313

313:                                              ; preds = %336, %312
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %336 ], [ %.promoted150, %312 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %336 ], [ %.promoted148, %312 ]
  %314 = phi i32 [ %337, %336 ], [ %.promoted146, %312 ]
  %315 = icmp sle i32 %314, 1
  br i1 %315, label %316, label %338

316:                                              ; preds = %313
  br label %317

317:                                              ; preds = %334, %316
  %.lcssa141145 = phi i32 [ %.lcssa141, %334 ], [ %.lcssa141145.lcssa151, %316 ]
  %318 = phi i32 [ 1, %334 ], [ 0, %316 ]
  %319 = icmp sle i32 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %317
  br label %321

321:                                              ; preds = %331, %320
  %322 = phi i32 [ %332, %331 ], [ 0, %320 ]
  %323 = icmp sle i32 %322, 1
  br i1 %323, label %324, label %333

324:                                              ; preds = %321
  %325 = mul nuw nsw i32 8, %322
  %326 = add nuw nsw i32 0, %325
  %327 = mul nuw nsw i32 8, %326
  %328 = add nsw i32 %314, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %329
  store i32 1, ptr %330, align 4
  br label %331

331:                                              ; preds = %324
  %332 = add nuw nsw i32 %322, 1
  br label %321, !llvm.loop !49

333:                                              ; preds = %321
  %.lcssa141 = phi i32 [ %322, %321 ]
  br label %334

334:                                              ; preds = %333
  br label %317, !llvm.loop !50

335:                                              ; preds = %317
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %317 ]
  %.lcssa143 = phi i32 [ %318, %317 ]
  br label %336

336:                                              ; preds = %335
  %337 = add nsw i32 %314, 1
  br label %313, !llvm.loop !51

338:                                              ; preds = %313
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %313 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %313 ]
  %.lcssa147 = phi i32 [ %314, %313 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  br label %339

339:                                              ; preds = %363, %338
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %363 ], [ %.promoted162, %338 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %363 ], [ %.promoted160, %338 ]
  %340 = phi i32 [ %364, %363 ], [ %.promoted158, %338 ]
  %341 = icmp sle i32 %340, 0
  br i1 %341, label %342, label %365

342:                                              ; preds = %339
  br label %343

343:                                              ; preds = %360, %342
  %.lcssa153157 = phi i32 [ %.lcssa153, %360 ], [ %.lcssa153157.lcssa163, %342 ]
  %344 = phi i32 [ %361, %360 ], [ 0, %342 ]
  %345 = icmp sle i32 %344, 1
  br i1 %345, label %346, label %362

346:                                              ; preds = %343
  br label %347

347:                                              ; preds = %357, %346
  %348 = phi i32 [ %358, %357 ], [ 0, %346 ]
  %349 = icmp sle i32 %348, 1
  br i1 %349, label %350, label %359

350:                                              ; preds = %347
  %351 = mul nuw nsw i32 8, %348
  %352 = add nuw nsw i32 %344, %351
  %353 = mul nuw nsw i32 8, %352
  %354 = add nsw i32 %340, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %355
  store i32 1, ptr %356, align 4
  br label %357

357:                                              ; preds = %350
  %358 = add nuw nsw i32 %348, 1
  br label %347, !llvm.loop !52

359:                                              ; preds = %347
  %.lcssa153 = phi i32 [ %348, %347 ]
  br label %360

360:                                              ; preds = %359
  %361 = add nuw nsw i32 %344, 1
  br label %343, !llvm.loop !53

362:                                              ; preds = %343
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %343 ]
  %.lcssa155 = phi i32 [ %344, %343 ]
  br label %363

363:                                              ; preds = %362
  %364 = add nsw i32 %340, 1
  br label %339, !llvm.loop !54

365:                                              ; preds = %339
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %339 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %339 ]
  %.lcssa159 = phi i32 [ %340, %339 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  br label %366

366:                                              ; preds = %390, %365
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %390 ], [ %.promoted174, %365 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %390 ], [ %.promoted172, %365 ]
  %367 = phi i32 [ %391, %390 ], [ %.promoted170, %365 ]
  %368 = icmp sle i32 %367, 1
  br i1 %368, label %369, label %392

369:                                              ; preds = %366
  br label %370

370:                                              ; preds = %387, %369
  %.lcssa165169 = phi i32 [ %.lcssa165, %387 ], [ %.lcssa165169.lcssa175, %369 ]
  %371 = phi i32 [ %388, %387 ], [ 0, %369 ]
  %372 = icmp sle i32 %371, 1
  br i1 %372, label %373, label %389

373:                                              ; preds = %370
  br label %374

374:                                              ; preds = %384, %373
  %375 = phi i32 [ %385, %384 ], [ 0, %373 ]
  %376 = icmp sle i32 %375, 1
  br i1 %376, label %377, label %386

377:                                              ; preds = %374
  %378 = mul nuw nsw i32 8, %375
  %379 = add nuw nsw i32 %371, %378
  %380 = mul nuw nsw i32 8, %379
  %381 = add nsw i32 %367, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %382
  store i32 1, ptr %383, align 4
  br label %384

384:                                              ; preds = %377
  %385 = add nuw nsw i32 %375, 1
  br label %374, !llvm.loop !55

386:                                              ; preds = %374
  %.lcssa165 = phi i32 [ %375, %374 ]
  br label %387

387:                                              ; preds = %386
  %388 = add nuw nsw i32 %371, 1
  br label %370, !llvm.loop !56

389:                                              ; preds = %370
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %370 ]
  %.lcssa167 = phi i32 [ %371, %370 ]
  br label %390

390:                                              ; preds = %389
  %391 = add nsw i32 %367, 1
  br label %366, !llvm.loop !57

392:                                              ; preds = %366
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %366 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %366 ]
  %.lcssa171 = phi i32 [ %367, %366 ]
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
  %393 = load i32, ptr %4, align 4
  %394 = call i32 @Fit(i32 noundef 0, i32 noundef %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %392
  %397 = load i32, ptr %4, align 4
  %398 = call i32 @Place(i32 noundef 0, i32 noundef %397)
  store i32 %398, ptr @n, align 4
  br label %401

399:                                              ; preds = %392
  %400 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %401

401:                                              ; preds = %399, %396
  %402 = load i32, ptr @n, align 4
  %403 = call i32 @Trial(i32 noundef %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %401
  %406 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %413

407:                                              ; preds = %401
  %408 = load i32, ptr @kount, align 4
  %409 = icmp ne i32 %408, 2005
  br i1 %409, label %410, label %412

410:                                              ; preds = %407
  %411 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %412

412:                                              ; preds = %410, %407
  br label %413

413:                                              ; preds = %412, %405
  %414 = load i32, ptr @n, align 4
  %415 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %414)
  %416 = load i32, ptr @kount, align 4
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %416)
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
