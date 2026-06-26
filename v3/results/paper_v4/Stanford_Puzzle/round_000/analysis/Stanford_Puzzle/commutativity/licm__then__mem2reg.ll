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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %6
  br label %8

8:                                                ; preds = %25, %2
  %9 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %10 = icmp sle i32 %9, %5
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = add nsw i32 %1, %9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  %.lcssa1 = phi i32 [ %9, %16 ]
  br label %28

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %9, 1
  br label %8, !llvm.loop !7

27:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  br label %28

28:                                               ; preds = %27, %22
  %.0 = phi i32 [ 0, %22 ], [ 1, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %6
  br label %8

8:                                                ; preds = %21, %2
  %9 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %10 = icmp sle i32 %9, %5
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = add nsw i32 %1, %9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

23:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  store i32 %30, ptr %35, align 4
  br label %36

36:                                               ; preds = %46, %23
  %37 = phi i32 [ %47, %46 ], [ %1, %23 ]
  %38 = icmp sle i32 %37, 511
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  %.lcssa3 = phi i32 [ %37, %39 ]
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %37, 1
  br label %36, !llvm.loop !10

48:                                               ; preds = %36
  %.lcssa2 = phi i32 [ %37, %36 ]
  br label %49

49:                                               ; preds = %48, %44
  %.0 = phi i32 [ %.lcssa3, %44 ], [ 0, %48 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %6
  br label %8

8:                                                ; preds = %21, %2
  %9 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %10 = icmp sle i32 %9, %5
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = add nsw i32 %1, %9
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %9, 1
  br label %8, !llvm.loop !11

23:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  store i32 %30, ptr %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = phi i32 [ %31, %32 ], [ undef, %1 ]
  %6 = phi i32 [ %33, %32 ], [ 0, %1 ]
  %7 = icmp sle i32 %6, 12
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %8
  %17 = call i32 @Fit(i32 noundef %6, i32 noundef %0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = call i32 @Place(i32 noundef %6, i32 noundef %0)
  %21 = call i32 @Trial(i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %19
  %.lcssa4 = phi i32 [ %20, %23 ], [ %20, %19 ]
  %.lcssa1 = phi i32 [ %6, %23 ], [ %6, %19 ]
  br label %35

26:                                               ; preds = %23
  call void @Remove(i32 noundef %6, i32 noundef %0)
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %16
  %29 = phi i32 [ %20, %27 ], [ %5, %16 ]
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi i32 [ %29, %28 ], [ %5, %8 ]
  br label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %6, 1
  br label %4, !llvm.loop !12

34:                                               ; preds = %4
  %.lcssa3 = phi i32 [ %5, %4 ]
  %.lcssa = phi i32 [ %6, %4 ]
  br label %35

35:                                               ; preds = %34, %25
  %.0 = phi i32 [ 1, %25 ], [ 0, %34 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i32 [ %8, %7 ], [ 0, %0 ]
  %3 = icmp sle i32 %2, 511
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %5
  store i32 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

9:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
  br label %10

10:                                               ; preds = %34, %9
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %34 ], [ undef, %9 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %34 ], [ undef, %9 ]
  %11 = phi i32 [ %35, %34 ], [ 1, %9 ]
  %12 = icmp sle i32 %11, 5
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %31, %13
  %.lcssa26 = phi i32 [ %.lcssa2, %31 ], [ %.lcssa26.lcssa12, %13 ]
  %15 = phi i32 [ %32, %31 ], [ 1, %13 ]
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %28, %17
  %19 = phi i32 [ %29, %28 ], [ 1, %17 ]
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = mul nsw i32 8, %19
  %23 = add nsw i32 %15, %22
  %24 = mul nsw i32 8, %23
  %25 = add nsw i32 %11, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %26
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %21
  %29 = add nsw i32 %19, 1
  br label %18, !llvm.loop !14

30:                                               ; preds = %18
  %.lcssa2 = phi i32 [ %19, %18 ]
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %15, 1
  br label %14, !llvm.loop !15

33:                                               ; preds = %14
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %14 ]
  %.lcssa4 = phi i32 [ %15, %14 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nsw i32 %11, 1
  br label %10, !llvm.loop !16

36:                                               ; preds = %10
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %10 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %10 ]
  %.lcssa8 = phi i32 [ %11, %10 ]
  br label %37

37:                                               ; preds = %52, %36
  %.lcssa1418 = phi i32 [ %.lcssa14, %52 ], [ %.lcssa, %36 ]
  %38 = phi i32 [ %53, %52 ], [ 0, %36 ]
  %39 = icmp sle i32 %38, 12
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %41
  br label %43

43:                                               ; preds = %49, %40
  %44 = phi i32 [ %50, %49 ], [ 0, %40 ]
  %45 = icmp sle i32 %44, 511
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [512 x i32], ptr %42, i64 0, i64 %47
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %46
  %50 = add nsw i32 %44, 1
  br label %43, !llvm.loop !17

51:                                               ; preds = %43
  %.lcssa14 = phi i32 [ %44, %43 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %38, 1
  br label %37, !llvm.loop !18

54:                                               ; preds = %37
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %37 ]
  %.lcssa16 = phi i32 [ %38, %37 ]
  br label %55

55:                                               ; preds = %79, %54
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %79 ], [ %.lcssa26.lcssa12.lcssa, %54 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %79 ], [ %.lcssa410.lcssa, %54 ]
  %56 = phi i32 [ %80, %79 ], [ 0, %54 ]
  %57 = icmp sle i32 %56, 3
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %76, %58
  %.lcssa2024 = phi i32 [ %.lcssa20, %76 ], [ %.lcssa2024.lcssa31, %58 ]
  %60 = phi i32 [ %77, %76 ], [ 0, %58 ]
  %61 = icmp sle i32 %60, 1
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %73, %62
  %64 = phi i32 [ %74, %73 ], [ 0, %62 ]
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = mul nsw i32 8, %64
  %68 = add nsw i32 %60, %67
  %69 = mul nsw i32 8, %68
  %70 = add nsw i32 %56, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %71
  store i32 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = add nsw i32 %64, 1
  br label %63, !llvm.loop !19

75:                                               ; preds = %63
  %.lcssa20 = phi i32 [ %64, %63 ]
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %60, 1
  br label %59, !llvm.loop !20

78:                                               ; preds = %59
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %59 ]
  %.lcssa22 = phi i32 [ %60, %59 ]
  br label %79

79:                                               ; preds = %78
  %80 = add nsw i32 %56, 1
  br label %55, !llvm.loop !21

81:                                               ; preds = %55
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %55 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %55 ]
  %.lcssa27 = phi i32 [ %56, %55 ]
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %82

82:                                               ; preds = %106, %81
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %106 ], [ %.lcssa2024.lcssa31.lcssa, %81 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %106 ], [ %.lcssa2229.lcssa, %81 ]
  %83 = phi i32 [ %107, %106 ], [ 0, %81 ]
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %103, %85
  %.lcssa3337 = phi i32 [ %.lcssa33, %103 ], [ %.lcssa3337.lcssa43, %85 ]
  %87 = phi i32 [ %104, %103 ], [ 0, %85 ]
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %100, %89
  %91 = phi i32 [ %101, %100 ], [ 0, %89 ]
  %92 = icmp sle i32 %91, 3
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = mul nsw i32 8, %91
  %95 = add nsw i32 %87, %94
  %96 = mul nsw i32 8, %95
  %97 = add nsw i32 %83, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %98
  store i32 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %93
  %101 = add nsw i32 %91, 1
  br label %90, !llvm.loop !22

102:                                              ; preds = %90
  %.lcssa33 = phi i32 [ %91, %90 ]
  br label %103

103:                                              ; preds = %102
  %104 = add nsw i32 %87, 1
  br label %86, !llvm.loop !23

105:                                              ; preds = %86
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %86 ]
  %.lcssa35 = phi i32 [ %87, %86 ]
  br label %106

106:                                              ; preds = %105
  %107 = add nsw i32 %83, 1
  br label %82, !llvm.loop !24

108:                                              ; preds = %82
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %82 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %82 ]
  %.lcssa39 = phi i32 [ %83, %82 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %109

109:                                              ; preds = %133, %108
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %133 ], [ %.lcssa3337.lcssa43.lcssa, %108 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %133 ], [ %.lcssa3541.lcssa, %108 ]
  %110 = phi i32 [ %134, %133 ], [ 0, %108 ]
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %130, %112
  %.lcssa4549 = phi i32 [ %.lcssa45, %130 ], [ %.lcssa4549.lcssa55, %112 ]
  %114 = phi i32 [ %131, %130 ], [ 0, %112 ]
  %115 = icmp sle i32 %114, 3
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  br label %117

117:                                              ; preds = %127, %116
  %118 = phi i32 [ %128, %127 ], [ 0, %116 ]
  %119 = icmp sle i32 %118, 1
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = mul nsw i32 8, %118
  %122 = add nsw i32 %114, %121
  %123 = mul nsw i32 8, %122
  %124 = add nsw i32 %110, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %125
  store i32 1, ptr %126, align 4
  br label %127

127:                                              ; preds = %120
  %128 = add nsw i32 %118, 1
  br label %117, !llvm.loop !25

129:                                              ; preds = %117
  %.lcssa45 = phi i32 [ %118, %117 ]
  br label %130

130:                                              ; preds = %129
  %131 = add nsw i32 %114, 1
  br label %113, !llvm.loop !26

132:                                              ; preds = %113
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %113 ]
  %.lcssa47 = phi i32 [ %114, %113 ]
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %110, 1
  br label %109, !llvm.loop !27

135:                                              ; preds = %109
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %109 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %109 ]
  %.lcssa51 = phi i32 [ %110, %109 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %136

136:                                              ; preds = %160, %135
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %160 ], [ %.lcssa4549.lcssa55.lcssa, %135 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %160 ], [ %.lcssa4753.lcssa, %135 ]
  %137 = phi i32 [ %161, %160 ], [ 0, %135 ]
  %138 = icmp sle i32 %137, 1
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %157, %139
  %.lcssa5761 = phi i32 [ %.lcssa57, %157 ], [ %.lcssa5761.lcssa67, %139 ]
  %141 = phi i32 [ %158, %157 ], [ 0, %139 ]
  %142 = icmp sle i32 %141, 3
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %154, %143
  %145 = phi i32 [ %155, %154 ], [ 0, %143 ]
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = mul nsw i32 8, %145
  %149 = add nsw i32 %141, %148
  %150 = mul nsw i32 8, %149
  %151 = add nsw i32 %137, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %152
  store i32 1, ptr %153, align 4
  br label %154

154:                                              ; preds = %147
  %155 = add nsw i32 %145, 1
  br label %144, !llvm.loop !28

156:                                              ; preds = %144
  %.lcssa57 = phi i32 [ %145, %144 ]
  br label %157

157:                                              ; preds = %156
  %158 = add nsw i32 %141, 1
  br label %140, !llvm.loop !29

159:                                              ; preds = %140
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %140 ]
  %.lcssa59 = phi i32 [ %141, %140 ]
  br label %160

160:                                              ; preds = %159
  %161 = add nsw i32 %137, 1
  br label %136, !llvm.loop !30

162:                                              ; preds = %136
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %136 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %136 ]
  %.lcssa63 = phi i32 [ %137, %136 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %163

163:                                              ; preds = %187, %162
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %187 ], [ %.lcssa5761.lcssa67.lcssa, %162 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %187 ], [ %.lcssa5965.lcssa, %162 ]
  %164 = phi i32 [ %188, %187 ], [ 0, %162 ]
  %165 = icmp sle i32 %164, 3
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %184, %166
  %.lcssa6973 = phi i32 [ %.lcssa69, %184 ], [ %.lcssa6973.lcssa79, %166 ]
  %168 = phi i32 [ %185, %184 ], [ 0, %166 ]
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  br label %171

171:                                              ; preds = %181, %170
  %172 = phi i32 [ %182, %181 ], [ 0, %170 ]
  %173 = icmp sle i32 %172, 1
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = mul nsw i32 8, %172
  %176 = add nsw i32 %168, %175
  %177 = mul nsw i32 8, %176
  %178 = add nsw i32 %164, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %179
  store i32 1, ptr %180, align 4
  br label %181

181:                                              ; preds = %174
  %182 = add nsw i32 %172, 1
  br label %171, !llvm.loop !31

183:                                              ; preds = %171
  %.lcssa69 = phi i32 [ %172, %171 ]
  br label %184

184:                                              ; preds = %183
  %185 = add nsw i32 %168, 1
  br label %167, !llvm.loop !32

186:                                              ; preds = %167
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %167 ]
  %.lcssa71 = phi i32 [ %168, %167 ]
  br label %187

187:                                              ; preds = %186
  %188 = add nsw i32 %164, 1
  br label %163, !llvm.loop !33

189:                                              ; preds = %163
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %163 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %163 ]
  %.lcssa75 = phi i32 [ %164, %163 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %190

190:                                              ; preds = %214, %189
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %214 ], [ %.lcssa6973.lcssa79.lcssa, %189 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %214 ], [ %.lcssa7177.lcssa, %189 ]
  %191 = phi i32 [ %215, %214 ], [ 0, %189 ]
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %211, %193
  %.lcssa8185 = phi i32 [ %.lcssa81, %211 ], [ %.lcssa8185.lcssa91, %193 ]
  %195 = phi i32 [ %212, %211 ], [ 0, %193 ]
  %196 = icmp sle i32 %195, 1
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  br label %198

198:                                              ; preds = %208, %197
  %199 = phi i32 [ %209, %208 ], [ 0, %197 ]
  %200 = icmp sle i32 %199, 3
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = mul nsw i32 8, %199
  %203 = add nsw i32 %195, %202
  %204 = mul nsw i32 8, %203
  %205 = add nsw i32 %191, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %206
  store i32 1, ptr %207, align 4
  br label %208

208:                                              ; preds = %201
  %209 = add nsw i32 %199, 1
  br label %198, !llvm.loop !34

210:                                              ; preds = %198
  %.lcssa81 = phi i32 [ %199, %198 ]
  br label %211

211:                                              ; preds = %210
  %212 = add nsw i32 %195, 1
  br label %194, !llvm.loop !35

213:                                              ; preds = %194
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %194 ]
  %.lcssa83 = phi i32 [ %195, %194 ]
  br label %214

214:                                              ; preds = %213
  %215 = add nsw i32 %191, 1
  br label %190, !llvm.loop !36

216:                                              ; preds = %190
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %190 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %190 ]
  %.lcssa87 = phi i32 [ %191, %190 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %217

217:                                              ; preds = %241, %216
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %241 ], [ %.lcssa8185.lcssa91.lcssa, %216 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %241 ], [ %.lcssa8389.lcssa, %216 ]
  %218 = phi i32 [ %242, %241 ], [ 0, %216 ]
  %219 = icmp sle i32 %218, 2
  br i1 %219, label %220, label %243

220:                                              ; preds = %217
  br label %221

221:                                              ; preds = %238, %220
  %.lcssa9397 = phi i32 [ %.lcssa93, %238 ], [ %.lcssa9397.lcssa103, %220 ]
  %222 = phi i32 [ %239, %238 ], [ 0, %220 ]
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %235, %224
  %226 = phi i32 [ %236, %235 ], [ 0, %224 ]
  %227 = icmp sle i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = mul nsw i32 8, %226
  %230 = add nsw i32 %222, %229
  %231 = mul nsw i32 8, %230
  %232 = add nsw i32 %218, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %233
  store i32 1, ptr %234, align 4
  br label %235

235:                                              ; preds = %228
  %236 = add nsw i32 %226, 1
  br label %225, !llvm.loop !37

237:                                              ; preds = %225
  %.lcssa93 = phi i32 [ %226, %225 ]
  br label %238

238:                                              ; preds = %237
  %239 = add nsw i32 %222, 1
  br label %221, !llvm.loop !38

240:                                              ; preds = %221
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %221 ]
  %.lcssa95 = phi i32 [ %222, %221 ]
  br label %241

241:                                              ; preds = %240
  %242 = add nsw i32 %218, 1
  br label %217, !llvm.loop !39

243:                                              ; preds = %217
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %217 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %217 ]
  %.lcssa99 = phi i32 [ %218, %217 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %244

244:                                              ; preds = %268, %243
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %268 ], [ %.lcssa9397.lcssa103.lcssa, %243 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %268 ], [ %.lcssa95101.lcssa, %243 ]
  %245 = phi i32 [ %269, %268 ], [ 0, %243 ]
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %265, %247
  %.lcssa105109 = phi i32 [ %.lcssa105, %265 ], [ %.lcssa105109.lcssa115, %247 ]
  %249 = phi i32 [ %266, %265 ], [ 0, %247 ]
  %250 = icmp sle i32 %249, 2
  br i1 %250, label %251, label %267

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %262, %251
  %253 = phi i32 [ %263, %262 ], [ 0, %251 ]
  %254 = icmp sle i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = mul nsw i32 8, %253
  %257 = add nsw i32 %249, %256
  %258 = mul nsw i32 8, %257
  %259 = add nsw i32 %245, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %260
  store i32 1, ptr %261, align 4
  br label %262

262:                                              ; preds = %255
  %263 = add nsw i32 %253, 1
  br label %252, !llvm.loop !40

264:                                              ; preds = %252
  %.lcssa105 = phi i32 [ %253, %252 ]
  br label %265

265:                                              ; preds = %264
  %266 = add nsw i32 %249, 1
  br label %248, !llvm.loop !41

267:                                              ; preds = %248
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %248 ]
  %.lcssa107 = phi i32 [ %249, %248 ]
  br label %268

268:                                              ; preds = %267
  %269 = add nsw i32 %245, 1
  br label %244, !llvm.loop !42

270:                                              ; preds = %244
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %244 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %244 ]
  %.lcssa111 = phi i32 [ %245, %244 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %271

271:                                              ; preds = %295, %270
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %295 ], [ %.lcssa105109.lcssa115.lcssa, %270 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %295 ], [ %.lcssa107113.lcssa, %270 ]
  %272 = phi i32 [ %296, %295 ], [ 0, %270 ]
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %274, label %297

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %292, %274
  %.lcssa117121 = phi i32 [ %.lcssa117, %292 ], [ %.lcssa117121.lcssa127, %274 ]
  %276 = phi i32 [ %293, %292 ], [ 0, %274 ]
  %277 = icmp sle i32 %276, 0
  br i1 %277, label %278, label %294

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %289, %278
  %280 = phi i32 [ %290, %289 ], [ 0, %278 ]
  %281 = icmp sle i32 %280, 2
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = mul nsw i32 8, %280
  %284 = add nsw i32 %276, %283
  %285 = mul nsw i32 8, %284
  %286 = add nsw i32 %272, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %287
  store i32 1, ptr %288, align 4
  br label %289

289:                                              ; preds = %282
  %290 = add nsw i32 %280, 1
  br label %279, !llvm.loop !43

291:                                              ; preds = %279
  %.lcssa117 = phi i32 [ %280, %279 ]
  br label %292

292:                                              ; preds = %291
  %293 = add nsw i32 %276, 1
  br label %275, !llvm.loop !44

294:                                              ; preds = %275
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %275 ]
  %.lcssa119 = phi i32 [ %276, %275 ]
  br label %295

295:                                              ; preds = %294
  %296 = add nsw i32 %272, 1
  br label %271, !llvm.loop !45

297:                                              ; preds = %271
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %271 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %271 ]
  %.lcssa123 = phi i32 [ %272, %271 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %298

298:                                              ; preds = %322, %297
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %322 ], [ %.lcssa117121.lcssa127.lcssa, %297 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %322 ], [ %.lcssa119125.lcssa, %297 ]
  %299 = phi i32 [ %323, %322 ], [ 0, %297 ]
  %300 = icmp sle i32 %299, 1
  br i1 %300, label %301, label %324

301:                                              ; preds = %298
  br label %302

302:                                              ; preds = %319, %301
  %.lcssa129133 = phi i32 [ %.lcssa129, %319 ], [ %.lcssa129133.lcssa139, %301 ]
  %303 = phi i32 [ %320, %319 ], [ 0, %301 ]
  %304 = icmp sle i32 %303, 1
  br i1 %304, label %305, label %321

305:                                              ; preds = %302
  br label %306

306:                                              ; preds = %316, %305
  %307 = phi i32 [ %317, %316 ], [ 0, %305 ]
  %308 = icmp sle i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %306
  %310 = mul nsw i32 8, %307
  %311 = add nsw i32 %303, %310
  %312 = mul nsw i32 8, %311
  %313 = add nsw i32 %299, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %314
  store i32 1, ptr %315, align 4
  br label %316

316:                                              ; preds = %309
  %317 = add nsw i32 %307, 1
  br label %306, !llvm.loop !46

318:                                              ; preds = %306
  %.lcssa129 = phi i32 [ %307, %306 ]
  br label %319

319:                                              ; preds = %318
  %320 = add nsw i32 %303, 1
  br label %302, !llvm.loop !47

321:                                              ; preds = %302
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %302 ]
  %.lcssa131 = phi i32 [ %303, %302 ]
  br label %322

322:                                              ; preds = %321
  %323 = add nsw i32 %299, 1
  br label %298, !llvm.loop !48

324:                                              ; preds = %298
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %298 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %298 ]
  %.lcssa135 = phi i32 [ %299, %298 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %325

325:                                              ; preds = %349, %324
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %349 ], [ %.lcssa129133.lcssa139.lcssa, %324 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %349 ], [ %.lcssa131137.lcssa, %324 ]
  %326 = phi i32 [ %350, %349 ], [ 0, %324 ]
  %327 = icmp sle i32 %326, 1
  br i1 %327, label %328, label %351

328:                                              ; preds = %325
  br label %329

329:                                              ; preds = %346, %328
  %.lcssa141145 = phi i32 [ %.lcssa141, %346 ], [ %.lcssa141145.lcssa151, %328 ]
  %330 = phi i32 [ %347, %346 ], [ 0, %328 ]
  %331 = icmp sle i32 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %329
  br label %333

333:                                              ; preds = %343, %332
  %334 = phi i32 [ %344, %343 ], [ 0, %332 ]
  %335 = icmp sle i32 %334, 1
  br i1 %335, label %336, label %345

336:                                              ; preds = %333
  %337 = mul nsw i32 8, %334
  %338 = add nsw i32 %330, %337
  %339 = mul nsw i32 8, %338
  %340 = add nsw i32 %326, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %341
  store i32 1, ptr %342, align 4
  br label %343

343:                                              ; preds = %336
  %344 = add nsw i32 %334, 1
  br label %333, !llvm.loop !49

345:                                              ; preds = %333
  %.lcssa141 = phi i32 [ %334, %333 ]
  br label %346

346:                                              ; preds = %345
  %347 = add nsw i32 %330, 1
  br label %329, !llvm.loop !50

348:                                              ; preds = %329
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %329 ]
  %.lcssa143 = phi i32 [ %330, %329 ]
  br label %349

349:                                              ; preds = %348
  %350 = add nsw i32 %326, 1
  br label %325, !llvm.loop !51

351:                                              ; preds = %325
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %325 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %325 ]
  %.lcssa147 = phi i32 [ %326, %325 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %352

352:                                              ; preds = %376, %351
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %376 ], [ %.lcssa141145.lcssa151.lcssa, %351 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %376 ], [ %.lcssa143149.lcssa, %351 ]
  %353 = phi i32 [ %377, %376 ], [ 0, %351 ]
  %354 = icmp sle i32 %353, 0
  br i1 %354, label %355, label %378

355:                                              ; preds = %352
  br label %356

356:                                              ; preds = %373, %355
  %.lcssa153157 = phi i32 [ %.lcssa153, %373 ], [ %.lcssa153157.lcssa163, %355 ]
  %357 = phi i32 [ %374, %373 ], [ 0, %355 ]
  %358 = icmp sle i32 %357, 1
  br i1 %358, label %359, label %375

359:                                              ; preds = %356
  br label %360

360:                                              ; preds = %370, %359
  %361 = phi i32 [ %371, %370 ], [ 0, %359 ]
  %362 = icmp sle i32 %361, 1
  br i1 %362, label %363, label %372

363:                                              ; preds = %360
  %364 = mul nsw i32 8, %361
  %365 = add nsw i32 %357, %364
  %366 = mul nsw i32 8, %365
  %367 = add nsw i32 %353, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %368
  store i32 1, ptr %369, align 4
  br label %370

370:                                              ; preds = %363
  %371 = add nsw i32 %361, 1
  br label %360, !llvm.loop !52

372:                                              ; preds = %360
  %.lcssa153 = phi i32 [ %361, %360 ]
  br label %373

373:                                              ; preds = %372
  %374 = add nsw i32 %357, 1
  br label %356, !llvm.loop !53

375:                                              ; preds = %356
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %356 ]
  %.lcssa155 = phi i32 [ %357, %356 ]
  br label %376

376:                                              ; preds = %375
  %377 = add nsw i32 %353, 1
  br label %352, !llvm.loop !54

378:                                              ; preds = %352
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %352 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %352 ]
  %.lcssa159 = phi i32 [ %353, %352 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %379

379:                                              ; preds = %403, %378
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %403 ], [ %.lcssa153157.lcssa163.lcssa, %378 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %403 ], [ %.lcssa155161.lcssa, %378 ]
  %380 = phi i32 [ %404, %403 ], [ 0, %378 ]
  %381 = icmp sle i32 %380, 1
  br i1 %381, label %382, label %405

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %400, %382
  %.lcssa165169 = phi i32 [ %.lcssa165, %400 ], [ %.lcssa165169.lcssa175, %382 ]
  %384 = phi i32 [ %401, %400 ], [ 0, %382 ]
  %385 = icmp sle i32 %384, 1
  br i1 %385, label %386, label %402

386:                                              ; preds = %383
  br label %387

387:                                              ; preds = %397, %386
  %388 = phi i32 [ %398, %397 ], [ 0, %386 ]
  %389 = icmp sle i32 %388, 1
  br i1 %389, label %390, label %399

390:                                              ; preds = %387
  %391 = mul nsw i32 8, %388
  %392 = add nsw i32 %384, %391
  %393 = mul nsw i32 8, %392
  %394 = add nsw i32 %380, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %395
  store i32 1, ptr %396, align 4
  br label %397

397:                                              ; preds = %390
  %398 = add nsw i32 %388, 1
  br label %387, !llvm.loop !55

399:                                              ; preds = %387
  %.lcssa165 = phi i32 [ %388, %387 ]
  br label %400

400:                                              ; preds = %399
  %401 = add nsw i32 %384, 1
  br label %383, !llvm.loop !56

402:                                              ; preds = %383
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %383 ]
  %.lcssa167 = phi i32 [ %384, %383 ]
  br label %403

403:                                              ; preds = %402
  %404 = add nsw i32 %380, 1
  br label %379, !llvm.loop !57

405:                                              ; preds = %379
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %379 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %379 ]
  %.lcssa171 = phi i32 [ %380, %379 ]
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %406 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %405
  %409 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %409, ptr @n, align 4
  br label %412

410:                                              ; preds = %405
  %411 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %412

412:                                              ; preds = %410, %408
  %413 = load i32, ptr @n, align 4
  %414 = call i32 @Trial(i32 noundef %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  %417 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %424

418:                                              ; preds = %412
  %419 = load i32, ptr @kount, align 4
  %420 = icmp ne i32 %419, 2005
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %423

423:                                              ; preds = %421, %418
  br label %424

424:                                              ; preds = %423, %416
  %425 = load i32, ptr @n, align 4
  %426 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %425)
  %427 = load i32, ptr @kount, align 4
  %428 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %427)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Puzzle()
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %2, 1
  br label %1, !llvm.loop !58

7:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
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
