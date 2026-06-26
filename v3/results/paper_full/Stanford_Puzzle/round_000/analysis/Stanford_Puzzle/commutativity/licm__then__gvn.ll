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
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  br label %11

11:                                               ; preds = %27, %2
  %12 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %13 = icmp sle i32 %12, %9
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = add nsw i32 %1, %12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 %12, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %14
  %28 = add nsw i32 %12, 1
  br label %11, !llvm.loop !7

29:                                               ; preds = %11
  store i32 %12, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ 1, %29 ], [ 0, %25 ]
  ret i32 %31
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
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  br label %11

11:                                               ; preds = %23, %2
  %12 = phi i32 [ %24, %23 ], [ 0, %2 ]
  %13 = icmp sle i32 %12, %9
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = add nsw i32 %1, %12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %21
  store i32 1, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = add nsw i32 %12, 1
  br label %11, !llvm.loop !9

25:                                               ; preds = %11
  store i32 %12, ptr %6, align 4
  %26 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr %29, align 4
  store i32 %1, ptr %6, align 4
  br label %32

32:                                               ; preds = %41, %25
  %33 = phi i32 [ %42, %41 ], [ %1, %25 ]
  %34 = icmp sle i32 %33, 511
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 %33, ptr %6, align 4
  store i32 %33, ptr %3, align 4
  br label %44

41:                                               ; preds = %35
  %42 = add nsw i32 %33, 1
  br label %32, !llvm.loop !10

43:                                               ; preds = %32
  store i32 %33, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ 0, %43 ], [ %33, %40 ]
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %6
  br label %10

10:                                               ; preds = %22, %2
  %11 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %12 = icmp sle i32 %11, %8
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = add nsw i32 %1, %11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %20
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = add nsw i32 %11, 1
  br label %10, !llvm.loop !11

24:                                               ; preds = %10
  store i32 %11, ptr %5, align 4
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %6
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
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
  br label %8

8:                                                ; preds = %33, %1
  %9 = phi i32 [ %34, %33 ], [ undef, %1 ]
  %10 = phi i32 [ %35, %33 ], [ 0, %1 ]
  %11 = icmp sle i32 %10, 12
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = call i32 @Fit(i32 noundef %10, i32 noundef %0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = call i32 @Place(i32 noundef %10, i32 noundef %0)
  %25 = call i32 @Trial(i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27, %23
  %.lcssa4 = phi i32 [ 0, %27 ], [ %24, %23 ]
  store i32 %10, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %37

30:                                               ; preds = %27
  call void @Remove(i32 noundef %10, i32 noundef %0)
  br label %31

31:                                               ; preds = %30, %20
  %32 = phi i32 [ %24, %30 ], [ %9, %20 ]
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ %32, %31 ], [ %9, %12 ]
  %35 = add nsw i32 %10, 1
  br label %8, !llvm.loop !12

36:                                               ; preds = %8
  store i32 %10, ptr %4, align 4
  store i32 %9, ptr %5, align 4
  store i32 0, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i32 [ 0, %36 ], [ 1, %29 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %7, %0
  %.promoted17 = phi i32 [ %10, %7 ], [ 0, %0 ]
  %6 = icmp sle i32 %.promoted17, 511
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %.promoted17 to i64
  %9 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %.promoted17, 1
  br label %5, !llvm.loop !13

11:                                               ; preds = %5
  store i32 %.promoted17, ptr %4, align 4
  store i32 1, ptr %1, align 4
  br label %12

12:                                               ; preds = %33, %11
  %.promoted30 = phi i32 [ %.lcssa26, %33 ], [ undef, %11 ]
  %.promoted28 = phi i32 [ %17, %33 ], [ undef, %11 ]
  %13 = phi i32 [ %34, %33 ], [ 1, %11 ]
  %14 = icmp sle i32 %13, 5
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %31, %15
  %.lcssa26 = phi i32 [ %21, %31 ], [ %.promoted30, %15 ]
  %17 = phi i32 [ %32, %31 ], [ 1, %15 ]
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %23, %19
  %21 = phi i32 [ %30, %23 ], [ 1, %19 ]
  %22 = icmp sle i32 %21, 5
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = mul nsw i32 8, %21
  %25 = add nsw i32 %17, %24
  %26 = mul nsw i32 8, %25
  %27 = add nsw i32 %13, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  store i32 0, ptr %29, align 4
  %30 = add nsw i32 %21, 1
  br label %20, !llvm.loop !14

31:                                               ; preds = %20
  %32 = add nsw i32 %17, 1
  br label %16, !llvm.loop !15

33:                                               ; preds = %16
  %34 = add nsw i32 %13, 1
  br label %12, !llvm.loop !16

35:                                               ; preds = %12
  store i32 %13, ptr %1, align 4
  store i32 %.promoted28, ptr %2, align 4
  store i32 %.promoted30, ptr %3, align 4
  store i32 0, ptr %1, align 4
  br label %36

36:                                               ; preds = %49, %35
  %.lcssa1418 = phi i32 [ %43, %49 ], [ %.promoted17, %35 ]
  %37 = phi i32 [ %50, %49 ], [ 0, %35 ]
  %38 = icmp sle i32 %37, 12
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %40
  br label %42

42:                                               ; preds = %45, %39
  %43 = phi i32 [ %48, %45 ], [ 0, %39 ]
  %44 = icmp sle i32 %43, 511
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds [512 x i32], ptr %41, i64 0, i64 %46
  store i32 0, ptr %47, align 4
  %48 = add nsw i32 %43, 1
  br label %42, !llvm.loop !17

49:                                               ; preds = %42
  %50 = add nsw i32 %37, 1
  br label %36, !llvm.loop !18

51:                                               ; preds = %36
  store i32 %37, ptr %1, align 4
  store i32 %.lcssa1418, ptr %4, align 4
  store i32 0, ptr %1, align 4
  br label %52

52:                                               ; preds = %73, %51
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024, %73 ], [ %.promoted30, %51 ]
  %.lcssa2229 = phi i32 [ %57, %73 ], [ %.promoted28, %51 ]
  %53 = phi i32 [ %74, %73 ], [ 0, %51 ]
  %54 = icmp sle i32 %53, 3
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %71, %55
  %.lcssa2024 = phi i32 [ %61, %71 ], [ %.lcssa2024.lcssa31, %55 ]
  %57 = phi i32 [ %72, %71 ], [ 0, %55 ]
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %63, %59
  %61 = phi i32 [ %70, %63 ], [ 0, %59 ]
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = mul nsw i32 8, %61
  %65 = add nsw i32 %57, %64
  %66 = mul nsw i32 8, %65
  %67 = add nsw i32 %53, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %61, 1
  br label %60, !llvm.loop !19

71:                                               ; preds = %60
  %72 = add nsw i32 %57, 1
  br label %56, !llvm.loop !20

73:                                               ; preds = %56
  %74 = add nsw i32 %53, 1
  br label %52, !llvm.loop !21

75:                                               ; preds = %52
  store i32 %53, ptr %1, align 4
  store i32 %.lcssa2229, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %76

76:                                               ; preds = %97, %75
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337, %97 ], [ %.lcssa2024.lcssa31, %75 ]
  %.lcssa3541 = phi i32 [ %81, %97 ], [ %.lcssa2229, %75 ]
  %77 = phi i32 [ %98, %97 ], [ 0, %75 ]
  %78 = icmp sle i32 %77, 1
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %95, %79
  %.lcssa3337 = phi i32 [ %85, %95 ], [ %.lcssa3337.lcssa43, %79 ]
  %81 = phi i32 [ %96, %95 ], [ 0, %79 ]
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %87, %83
  %85 = phi i32 [ %94, %87 ], [ 0, %83 ]
  %86 = icmp sle i32 %85, 3
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = mul nsw i32 8, %85
  %89 = add nsw i32 %81, %88
  %90 = mul nsw i32 8, %89
  %91 = add nsw i32 %77, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %92
  store i32 1, ptr %93, align 4
  %94 = add nsw i32 %85, 1
  br label %84, !llvm.loop !22

95:                                               ; preds = %84
  %96 = add nsw i32 %81, 1
  br label %80, !llvm.loop !23

97:                                               ; preds = %80
  %98 = add nsw i32 %77, 1
  br label %76, !llvm.loop !24

99:                                               ; preds = %76
  store i32 %77, ptr %1, align 4
  store i32 %.lcssa3541, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %100

100:                                              ; preds = %121, %99
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549, %121 ], [ %.lcssa3337.lcssa43, %99 ]
  %.lcssa4753 = phi i32 [ %105, %121 ], [ %.lcssa3541, %99 ]
  %101 = phi i32 [ %122, %121 ], [ 0, %99 ]
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %119, %103
  %.lcssa4549 = phi i32 [ %109, %119 ], [ %.lcssa4549.lcssa55, %103 ]
  %105 = phi i32 [ %120, %119 ], [ 0, %103 ]
  %106 = icmp sle i32 %105, 3
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %111, %107
  %109 = phi i32 [ %118, %111 ], [ 0, %107 ]
  %110 = icmp sle i32 %109, 1
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = mul nsw i32 8, %109
  %113 = add nsw i32 %105, %112
  %114 = mul nsw i32 8, %113
  %115 = add nsw i32 %101, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nsw i32 %109, 1
  br label %108, !llvm.loop !25

119:                                              ; preds = %108
  %120 = add nsw i32 %105, 1
  br label %104, !llvm.loop !26

121:                                              ; preds = %104
  %122 = add nsw i32 %101, 1
  br label %100, !llvm.loop !27

123:                                              ; preds = %100
  store i32 %101, ptr %1, align 4
  store i32 %.lcssa4753, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %124

124:                                              ; preds = %145, %123
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761, %145 ], [ %.lcssa4549.lcssa55, %123 ]
  %.lcssa5965 = phi i32 [ %129, %145 ], [ %.lcssa4753, %123 ]
  %125 = phi i32 [ %146, %145 ], [ 0, %123 ]
  %126 = icmp sle i32 %125, 1
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  br label %128

128:                                              ; preds = %143, %127
  %.lcssa5761 = phi i32 [ %133, %143 ], [ %.lcssa5761.lcssa67, %127 ]
  %129 = phi i32 [ %144, %143 ], [ 0, %127 ]
  %130 = icmp sle i32 %129, 3
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %135, %131
  %133 = phi i32 [ %142, %135 ], [ 0, %131 ]
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = mul nsw i32 8, %133
  %137 = add nsw i32 %129, %136
  %138 = mul nsw i32 8, %137
  %139 = add nsw i32 %125, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nsw i32 %133, 1
  br label %132, !llvm.loop !28

143:                                              ; preds = %132
  %144 = add nsw i32 %129, 1
  br label %128, !llvm.loop !29

145:                                              ; preds = %128
  %146 = add nsw i32 %125, 1
  br label %124, !llvm.loop !30

147:                                              ; preds = %124
  store i32 %125, ptr %1, align 4
  store i32 %.lcssa5965, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %148

148:                                              ; preds = %169, %147
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973, %169 ], [ %.lcssa5761.lcssa67, %147 ]
  %.lcssa7177 = phi i32 [ %153, %169 ], [ %.lcssa5965, %147 ]
  %149 = phi i32 [ %170, %169 ], [ 0, %147 ]
  %150 = icmp sle i32 %149, 3
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %167, %151
  %.lcssa6973 = phi i32 [ %157, %167 ], [ %.lcssa6973.lcssa79, %151 ]
  %153 = phi i32 [ %168, %167 ], [ 0, %151 ]
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %159, %155
  %157 = phi i32 [ %166, %159 ], [ 0, %155 ]
  %158 = icmp sle i32 %157, 1
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = mul nsw i32 8, %157
  %161 = add nsw i32 %153, %160
  %162 = mul nsw i32 8, %161
  %163 = add nsw i32 %149, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nsw i32 %157, 1
  br label %156, !llvm.loop !31

167:                                              ; preds = %156
  %168 = add nsw i32 %153, 1
  br label %152, !llvm.loop !32

169:                                              ; preds = %152
  %170 = add nsw i32 %149, 1
  br label %148, !llvm.loop !33

171:                                              ; preds = %148
  store i32 %149, ptr %1, align 4
  store i32 %.lcssa7177, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %172

172:                                              ; preds = %193, %171
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185, %193 ], [ %.lcssa6973.lcssa79, %171 ]
  %.lcssa8389 = phi i32 [ %177, %193 ], [ %.lcssa7177, %171 ]
  %173 = phi i32 [ %194, %193 ], [ 0, %171 ]
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %191, %175
  %.lcssa8185 = phi i32 [ %181, %191 ], [ %.lcssa8185.lcssa91, %175 ]
  %177 = phi i32 [ %192, %191 ], [ 0, %175 ]
  %178 = icmp sle i32 %177, 1
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %183, %179
  %181 = phi i32 [ %190, %183 ], [ 0, %179 ]
  %182 = icmp sle i32 %181, 3
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = mul nsw i32 8, %181
  %185 = add nsw i32 %177, %184
  %186 = mul nsw i32 8, %185
  %187 = add nsw i32 %173, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %188
  store i32 1, ptr %189, align 4
  %190 = add nsw i32 %181, 1
  br label %180, !llvm.loop !34

191:                                              ; preds = %180
  %192 = add nsw i32 %177, 1
  br label %176, !llvm.loop !35

193:                                              ; preds = %176
  %194 = add nsw i32 %173, 1
  br label %172, !llvm.loop !36

195:                                              ; preds = %172
  store i32 %173, ptr %1, align 4
  store i32 %.lcssa8389, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %196

196:                                              ; preds = %217, %195
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397, %217 ], [ %.lcssa8185.lcssa91, %195 ]
  %.lcssa95101 = phi i32 [ %201, %217 ], [ %.lcssa8389, %195 ]
  %197 = phi i32 [ %218, %217 ], [ 0, %195 ]
  %198 = icmp sle i32 %197, 2
  br i1 %198, label %199, label %219

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %215, %199
  %.lcssa9397 = phi i32 [ %205, %215 ], [ %.lcssa9397.lcssa103, %199 ]
  %201 = phi i32 [ %216, %215 ], [ 0, %199 ]
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %200
  br label %204

204:                                              ; preds = %207, %203
  %205 = phi i32 [ %214, %207 ], [ 0, %203 ]
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = mul nsw i32 8, %205
  %209 = add nsw i32 %201, %208
  %210 = mul nsw i32 8, %209
  %211 = add nsw i32 %197, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %212
  store i32 1, ptr %213, align 4
  %214 = add nsw i32 %205, 1
  br label %204, !llvm.loop !37

215:                                              ; preds = %204
  %216 = add nsw i32 %201, 1
  br label %200, !llvm.loop !38

217:                                              ; preds = %200
  %218 = add nsw i32 %197, 1
  br label %196, !llvm.loop !39

219:                                              ; preds = %196
  store i32 %197, ptr %1, align 4
  store i32 %.lcssa95101, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %220

220:                                              ; preds = %241, %219
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109, %241 ], [ %.lcssa9397.lcssa103, %219 ]
  %.lcssa107113 = phi i32 [ %225, %241 ], [ %.lcssa95101, %219 ]
  %221 = phi i32 [ %242, %241 ], [ 0, %219 ]
  %222 = icmp sle i32 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %239, %223
  %.lcssa105109 = phi i32 [ %229, %239 ], [ %.lcssa105109.lcssa115, %223 ]
  %225 = phi i32 [ %240, %239 ], [ 0, %223 ]
  %226 = icmp sle i32 %225, 2
  br i1 %226, label %227, label %241

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %231, %227
  %229 = phi i32 [ %238, %231 ], [ 0, %227 ]
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = mul nsw i32 8, %229
  %233 = add nsw i32 %225, %232
  %234 = mul nsw i32 8, %233
  %235 = add nsw i32 %221, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %236
  store i32 1, ptr %237, align 4
  %238 = add nsw i32 %229, 1
  br label %228, !llvm.loop !40

239:                                              ; preds = %228
  %240 = add nsw i32 %225, 1
  br label %224, !llvm.loop !41

241:                                              ; preds = %224
  %242 = add nsw i32 %221, 1
  br label %220, !llvm.loop !42

243:                                              ; preds = %220
  store i32 %221, ptr %1, align 4
  store i32 %.lcssa107113, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %244

244:                                              ; preds = %265, %243
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121, %265 ], [ %.lcssa105109.lcssa115, %243 ]
  %.lcssa119125 = phi i32 [ %249, %265 ], [ %.lcssa107113, %243 ]
  %245 = phi i32 [ %266, %265 ], [ 0, %243 ]
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %263, %247
  %.lcssa117121 = phi i32 [ %253, %263 ], [ %.lcssa117121.lcssa127, %247 ]
  %249 = phi i32 [ %264, %263 ], [ 0, %247 ]
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %251, label %265

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %255, %251
  %253 = phi i32 [ %262, %255 ], [ 0, %251 ]
  %254 = icmp sle i32 %253, 2
  br i1 %254, label %255, label %263

255:                                              ; preds = %252
  %256 = mul nsw i32 8, %253
  %257 = add nsw i32 %249, %256
  %258 = mul nsw i32 8, %257
  %259 = add nsw i32 %245, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %260
  store i32 1, ptr %261, align 4
  %262 = add nsw i32 %253, 1
  br label %252, !llvm.loop !43

263:                                              ; preds = %252
  %264 = add nsw i32 %249, 1
  br label %248, !llvm.loop !44

265:                                              ; preds = %248
  %266 = add nsw i32 %245, 1
  br label %244, !llvm.loop !45

267:                                              ; preds = %244
  store i32 %245, ptr %1, align 4
  store i32 %.lcssa119125, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %268

268:                                              ; preds = %289, %267
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133, %289 ], [ %.lcssa117121.lcssa127, %267 ]
  %.lcssa131137 = phi i32 [ %273, %289 ], [ %.lcssa119125, %267 ]
  %269 = phi i32 [ %290, %289 ], [ 0, %267 ]
  %270 = icmp sle i32 %269, 1
  br i1 %270, label %271, label %291

271:                                              ; preds = %268
  br label %272

272:                                              ; preds = %287, %271
  %.lcssa129133 = phi i32 [ %277, %287 ], [ %.lcssa129133.lcssa139, %271 ]
  %273 = phi i32 [ %288, %287 ], [ 0, %271 ]
  %274 = icmp sle i32 %273, 1
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  br label %276

276:                                              ; preds = %279, %275
  %277 = phi i32 [ %286, %279 ], [ 0, %275 ]
  %278 = icmp sle i32 %277, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = mul nsw i32 8, %277
  %281 = add nsw i32 %273, %280
  %282 = mul nsw i32 8, %281
  %283 = add nsw i32 %269, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %284
  store i32 1, ptr %285, align 4
  %286 = add nsw i32 %277, 1
  br label %276, !llvm.loop !46

287:                                              ; preds = %276
  %288 = add nsw i32 %273, 1
  br label %272, !llvm.loop !47

289:                                              ; preds = %272
  %290 = add nsw i32 %269, 1
  br label %268, !llvm.loop !48

291:                                              ; preds = %268
  store i32 %269, ptr %1, align 4
  store i32 %.lcssa131137, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %292

292:                                              ; preds = %313, %291
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145, %313 ], [ %.lcssa129133.lcssa139, %291 ]
  %.lcssa143149 = phi i32 [ %297, %313 ], [ %.lcssa131137, %291 ]
  %293 = phi i32 [ %314, %313 ], [ 0, %291 ]
  %294 = icmp sle i32 %293, 1
  br i1 %294, label %295, label %315

295:                                              ; preds = %292
  br label %296

296:                                              ; preds = %311, %295
  %.lcssa141145 = phi i32 [ %301, %311 ], [ %.lcssa141145.lcssa151, %295 ]
  %297 = phi i32 [ %312, %311 ], [ 0, %295 ]
  %298 = icmp sle i32 %297, 0
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %303, %299
  %301 = phi i32 [ %310, %303 ], [ 0, %299 ]
  %302 = icmp sle i32 %301, 1
  br i1 %302, label %303, label %311

303:                                              ; preds = %300
  %304 = mul nsw i32 8, %301
  %305 = add nsw i32 %297, %304
  %306 = mul nsw i32 8, %305
  %307 = add nsw i32 %293, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %308
  store i32 1, ptr %309, align 4
  %310 = add nsw i32 %301, 1
  br label %300, !llvm.loop !49

311:                                              ; preds = %300
  %312 = add nsw i32 %297, 1
  br label %296, !llvm.loop !50

313:                                              ; preds = %296
  %314 = add nsw i32 %293, 1
  br label %292, !llvm.loop !51

315:                                              ; preds = %292
  store i32 %293, ptr %1, align 4
  store i32 %.lcssa143149, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %316

316:                                              ; preds = %337, %315
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157, %337 ], [ %.lcssa141145.lcssa151, %315 ]
  %.lcssa155161 = phi i32 [ %321, %337 ], [ %.lcssa143149, %315 ]
  %317 = phi i32 [ %338, %337 ], [ 0, %315 ]
  %318 = icmp sle i32 %317, 0
  br i1 %318, label %319, label %339

319:                                              ; preds = %316
  br label %320

320:                                              ; preds = %335, %319
  %.lcssa153157 = phi i32 [ %325, %335 ], [ %.lcssa153157.lcssa163, %319 ]
  %321 = phi i32 [ %336, %335 ], [ 0, %319 ]
  %322 = icmp sle i32 %321, 1
  br i1 %322, label %323, label %337

323:                                              ; preds = %320
  br label %324

324:                                              ; preds = %327, %323
  %325 = phi i32 [ %334, %327 ], [ 0, %323 ]
  %326 = icmp sle i32 %325, 1
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = mul nsw i32 8, %325
  %329 = add nsw i32 %321, %328
  %330 = mul nsw i32 8, %329
  %331 = add nsw i32 %317, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %332
  store i32 1, ptr %333, align 4
  %334 = add nsw i32 %325, 1
  br label %324, !llvm.loop !52

335:                                              ; preds = %324
  %336 = add nsw i32 %321, 1
  br label %320, !llvm.loop !53

337:                                              ; preds = %320
  %338 = add nsw i32 %317, 1
  br label %316, !llvm.loop !54

339:                                              ; preds = %316
  store i32 %317, ptr %1, align 4
  store i32 %.lcssa155161, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %340

340:                                              ; preds = %361, %339
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169, %361 ], [ %.lcssa153157.lcssa163, %339 ]
  %.lcssa167173 = phi i32 [ %345, %361 ], [ %.lcssa155161, %339 ]
  %341 = phi i32 [ %362, %361 ], [ 0, %339 ]
  %342 = icmp sle i32 %341, 1
  br i1 %342, label %343, label %363

343:                                              ; preds = %340
  br label %344

344:                                              ; preds = %359, %343
  %.lcssa165169 = phi i32 [ %349, %359 ], [ %.lcssa165169.lcssa175, %343 ]
  %345 = phi i32 [ %360, %359 ], [ 0, %343 ]
  %346 = icmp sle i32 %345, 1
  br i1 %346, label %347, label %361

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %351, %347
  %349 = phi i32 [ %358, %351 ], [ 0, %347 ]
  %350 = icmp sle i32 %349, 1
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = mul nsw i32 8, %349
  %353 = add nsw i32 %345, %352
  %354 = mul nsw i32 8, %353
  %355 = add nsw i32 %341, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %356
  store i32 1, ptr %357, align 4
  %358 = add nsw i32 %349, 1
  br label %348, !llvm.loop !55

359:                                              ; preds = %348
  %360 = add nsw i32 %345, 1
  br label %344, !llvm.loop !56

361:                                              ; preds = %344
  %362 = add nsw i32 %341, 1
  br label %340, !llvm.loop !57

363:                                              ; preds = %340
  store i32 %341, ptr %1, align 4
  store i32 %.lcssa167173, ptr %2, align 4
  store i32 %.lcssa165169.lcssa175, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %364 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %367, ptr @n, align 4
  br label %370

368:                                              ; preds = %363
  %369 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %.pre, %368 ], [ %367, %366 ]
  %372 = call i32 @Trial(i32 noundef %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %370
  %375 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %382

376:                                              ; preds = %370
  %377 = load i32, ptr @kount, align 4
  %378 = icmp ne i32 %377, 2005
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %381

381:                                              ; preds = %379, %376
  br label %382

382:                                              ; preds = %381, %374
  %383 = load i32, ptr @n, align 4
  %384 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %383)
  %385 = load i32, ptr @kount, align 4
  %386 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %385)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Puzzle()
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !58

8:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
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
