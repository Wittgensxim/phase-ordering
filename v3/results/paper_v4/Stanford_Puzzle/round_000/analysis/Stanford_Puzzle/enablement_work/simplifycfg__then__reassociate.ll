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
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %7
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %16
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, ptr %3, align 4
  br label %36

32:                                               ; preds = %14, %23
  %33 = load i32, ptr %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %6, align 4
  br label %7, !llvm.loop !7

35:                                               ; preds = %7
  store i32 1, ptr %3, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, ptr %3, align 4
  ret i32 %37
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
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %16
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr %17, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  store i32 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %14, %23
  %30 = load i32, ptr %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %6, align 4
  br label %7, !llvm.loop !9

32:                                               ; preds = %7
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, ptr %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %45
  store i32 %40, ptr %46, align 4
  %47 = load i32, ptr %5, align 4
  store i32 %47, ptr %6, align 4
  br label %48

48:                                               ; preds = %59, %32
  %49 = load i32, ptr %6, align 4
  %50 = icmp sle i32 %49, 511
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i32, ptr %6, align 4
  store i32 %58, ptr %3, align 4
  br label %63

59:                                               ; preds = %51
  %60 = load i32, ptr %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %6, align 4
  br label %48, !llvm.loop !10

62:                                               ; preds = %48
  store i32 0, ptr %3, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, ptr %3, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %6
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %15
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr %16, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %26
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %13, %22
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  br label %6, !llvm.loop !11

31:                                               ; preds = %6
  %32 = load i32, ptr %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = load i32, ptr %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %44
  store i32 %39, ptr %45, align 4
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

8:                                                ; preds = %38, %1
  %9 = load i32, ptr %4, align 4
  %10 = icmp sle i32 %9, 12
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %11
  %21 = load i32, ptr %4, align 4
  %22 = load i32, ptr %3, align 4
  %23 = call i32 @Fit(i32 noundef %21, i32 noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i32, ptr %4, align 4
  %27 = load i32, ptr %3, align 4
  %28 = call i32 @Place(i32 noundef %26, i32 noundef %27)
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %5, align 4
  %30 = call i32 @Trial(i32 noundef %29)
  %31 = icmp ne i32 %30, 0
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 0
  %or.cond = select i1 %31, i1 true, i1 %33
  br i1 %or.cond, label %34, label %35

34:                                               ; preds = %25
  store i32 1, ptr %2, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load i32, ptr %4, align 4
  %37 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %36, i32 noundef %37)
  br label %38

38:                                               ; preds = %11, %35, %20
  %39 = load i32, ptr %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %4, align 4
  br label %8, !llvm.loop !12

41:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %42

42:                                               ; preds = %41, %34
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
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i32, ptr %4, align 4
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %10
  store i32 1, ptr %11, align 4
  %12 = load i32, ptr %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %4, align 4
  br label %5, !llvm.loop !13

14:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, ptr %1, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  store i32 1, ptr %2, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, ptr %2, align 4
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  store i32 1, ptr %3, align 4
  br label %23

23:                                               ; preds = %26, %22
  %24 = load i32, ptr %3, align 4
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = load i32, ptr %2, align 4
  %29 = load i32, ptr %3, align 4
  %30 = mul nsw i32 %29, 8
  %31 = add nsw i32 %30, %28
  %32 = mul nsw i32 %31, 8
  %33 = add nsw i32 %32, %27
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %34
  store i32 0, ptr %35, align 4
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  br label %23, !llvm.loop !14

38:                                               ; preds = %23
  %39 = load i32, ptr %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %2, align 4
  br label %19, !llvm.loop !15

41:                                               ; preds = %19
  %42 = load i32, ptr %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %1, align 4
  br label %15, !llvm.loop !16

44:                                               ; preds = %15
  store i32 0, ptr %1, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, ptr %1, align 4
  %47 = icmp sle i32 %46, 12
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  store i32 0, ptr %4, align 4
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i32, ptr %4, align 4
  %51 = icmp sle i32 %50, 511
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, ptr %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %54
  %56 = load i32, ptr %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [512 x i32], ptr %55, i64 0, i64 %57
  store i32 0, ptr %58, align 4
  %59 = load i32, ptr %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %4, align 4
  br label %49, !llvm.loop !17

61:                                               ; preds = %49
  %62 = load i32, ptr %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %1, align 4
  br label %45, !llvm.loop !18

64:                                               ; preds = %45
  store i32 0, ptr %1, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, ptr %1, align 4
  %67 = icmp sle i32 %66, 3
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  store i32 0, ptr %2, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, ptr %2, align 4
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  store i32 0, ptr %3, align 4
  br label %73

73:                                               ; preds = %76, %72
  %74 = load i32, ptr %3, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32, ptr %1, align 4
  %78 = load i32, ptr %2, align 4
  %79 = load i32, ptr %3, align 4
  %80 = mul nsw i32 %79, 8
  %81 = add nsw i32 %80, %78
  %82 = mul nsw i32 %81, 8
  %83 = add nsw i32 %82, %77
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %84
  store i32 1, ptr %85, align 4
  %86 = load i32, ptr %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %3, align 4
  br label %73, !llvm.loop !19

88:                                               ; preds = %73
  %89 = load i32, ptr %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %2, align 4
  br label %69, !llvm.loop !20

91:                                               ; preds = %69
  %92 = load i32, ptr %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %1, align 4
  br label %65, !llvm.loop !21

94:                                               ; preds = %65
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, ptr %1, align 4
  %97 = icmp sle i32 %96, 1
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  store i32 0, ptr %2, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, ptr %2, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  store i32 0, ptr %3, align 4
  br label %103

103:                                              ; preds = %106, %102
  %104 = load i32, ptr %3, align 4
  %105 = icmp sle i32 %104, 3
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i32, ptr %1, align 4
  %108 = load i32, ptr %2, align 4
  %109 = load i32, ptr %3, align 4
  %110 = mul nsw i32 %109, 8
  %111 = add nsw i32 %110, %108
  %112 = mul nsw i32 %111, 8
  %113 = add nsw i32 %112, %107
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %114
  store i32 1, ptr %115, align 4
  %116 = load i32, ptr %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %3, align 4
  br label %103, !llvm.loop !22

118:                                              ; preds = %103
  %119 = load i32, ptr %2, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %2, align 4
  br label %99, !llvm.loop !23

121:                                              ; preds = %99
  %122 = load i32, ptr %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %1, align 4
  br label %95, !llvm.loop !24

124:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i32, ptr %1, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  store i32 0, ptr %2, align 4
  br label %129

129:                                              ; preds = %148, %128
  %130 = load i32, ptr %2, align 4
  %131 = icmp sle i32 %130, 3
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  store i32 0, ptr %3, align 4
  br label %133

133:                                              ; preds = %136, %132
  %134 = load i32, ptr %3, align 4
  %135 = icmp sle i32 %134, 1
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load i32, ptr %1, align 4
  %138 = load i32, ptr %2, align 4
  %139 = load i32, ptr %3, align 4
  %140 = mul nsw i32 %139, 8
  %141 = add nsw i32 %140, %138
  %142 = mul nsw i32 %141, 8
  %143 = add nsw i32 %142, %137
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %144
  store i32 1, ptr %145, align 4
  %146 = load i32, ptr %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %3, align 4
  br label %133, !llvm.loop !25

148:                                              ; preds = %133
  %149 = load i32, ptr %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %2, align 4
  br label %129, !llvm.loop !26

151:                                              ; preds = %129
  %152 = load i32, ptr %1, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %1, align 4
  br label %125, !llvm.loop !27

154:                                              ; preds = %125
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %155

155:                                              ; preds = %181, %154
  %156 = load i32, ptr %1, align 4
  %157 = icmp sle i32 %156, 1
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  store i32 0, ptr %2, align 4
  br label %159

159:                                              ; preds = %178, %158
  %160 = load i32, ptr %2, align 4
  %161 = icmp sle i32 %160, 3
  br i1 %161, label %162, label %181

162:                                              ; preds = %159
  store i32 0, ptr %3, align 4
  br label %163

163:                                              ; preds = %166, %162
  %164 = load i32, ptr %3, align 4
  %165 = icmp sle i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i32, ptr %1, align 4
  %168 = load i32, ptr %2, align 4
  %169 = load i32, ptr %3, align 4
  %170 = mul nsw i32 %169, 8
  %171 = add nsw i32 %170, %168
  %172 = mul nsw i32 %171, 8
  %173 = add nsw i32 %172, %167
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %174
  store i32 1, ptr %175, align 4
  %176 = load i32, ptr %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %3, align 4
  br label %163, !llvm.loop !28

178:                                              ; preds = %163
  %179 = load i32, ptr %2, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %2, align 4
  br label %159, !llvm.loop !29

181:                                              ; preds = %159
  %182 = load i32, ptr %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %1, align 4
  br label %155, !llvm.loop !30

184:                                              ; preds = %155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %185

185:                                              ; preds = %211, %184
  %186 = load i32, ptr %1, align 4
  %187 = icmp sle i32 %186, 3
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  store i32 0, ptr %2, align 4
  br label %189

189:                                              ; preds = %208, %188
  %190 = load i32, ptr %2, align 4
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %189
  store i32 0, ptr %3, align 4
  br label %193

193:                                              ; preds = %196, %192
  %194 = load i32, ptr %3, align 4
  %195 = icmp sle i32 %194, 1
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load i32, ptr %1, align 4
  %198 = load i32, ptr %2, align 4
  %199 = load i32, ptr %3, align 4
  %200 = mul nsw i32 %199, 8
  %201 = add nsw i32 %200, %198
  %202 = mul nsw i32 %201, 8
  %203 = add nsw i32 %202, %197
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %204
  store i32 1, ptr %205, align 4
  %206 = load i32, ptr %3, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %3, align 4
  br label %193, !llvm.loop !31

208:                                              ; preds = %193
  %209 = load i32, ptr %2, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %2, align 4
  br label %189, !llvm.loop !32

211:                                              ; preds = %189
  %212 = load i32, ptr %1, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, ptr %1, align 4
  br label %185, !llvm.loop !33

214:                                              ; preds = %185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %215

215:                                              ; preds = %241, %214
  %216 = load i32, ptr %1, align 4
  %217 = icmp sle i32 %216, 0
  br i1 %217, label %218, label %244

218:                                              ; preds = %215
  store i32 0, ptr %2, align 4
  br label %219

219:                                              ; preds = %238, %218
  %220 = load i32, ptr %2, align 4
  %221 = icmp sle i32 %220, 1
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  store i32 0, ptr %3, align 4
  br label %223

223:                                              ; preds = %226, %222
  %224 = load i32, ptr %3, align 4
  %225 = icmp sle i32 %224, 3
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load i32, ptr %1, align 4
  %228 = load i32, ptr %2, align 4
  %229 = load i32, ptr %3, align 4
  %230 = mul nsw i32 %229, 8
  %231 = add nsw i32 %230, %228
  %232 = mul nsw i32 %231, 8
  %233 = add nsw i32 %232, %227
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %234
  store i32 1, ptr %235, align 4
  %236 = load i32, ptr %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %3, align 4
  br label %223, !llvm.loop !34

238:                                              ; preds = %223
  %239 = load i32, ptr %2, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %2, align 4
  br label %219, !llvm.loop !35

241:                                              ; preds = %219
  %242 = load i32, ptr %1, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %1, align 4
  br label %215, !llvm.loop !36

244:                                              ; preds = %215
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %245

245:                                              ; preds = %271, %244
  %246 = load i32, ptr %1, align 4
  %247 = icmp sle i32 %246, 2
  br i1 %247, label %248, label %274

248:                                              ; preds = %245
  store i32 0, ptr %2, align 4
  br label %249

249:                                              ; preds = %268, %248
  %250 = load i32, ptr %2, align 4
  %251 = icmp sle i32 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  store i32 0, ptr %3, align 4
  br label %253

253:                                              ; preds = %256, %252
  %254 = load i32, ptr %3, align 4
  %255 = icmp sle i32 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = load i32, ptr %1, align 4
  %258 = load i32, ptr %2, align 4
  %259 = load i32, ptr %3, align 4
  %260 = mul nsw i32 %259, 8
  %261 = add nsw i32 %260, %258
  %262 = mul nsw i32 %261, 8
  %263 = add nsw i32 %262, %257
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %264
  store i32 1, ptr %265, align 4
  %266 = load i32, ptr %3, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %3, align 4
  br label %253, !llvm.loop !37

268:                                              ; preds = %253
  %269 = load i32, ptr %2, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %2, align 4
  br label %249, !llvm.loop !38

271:                                              ; preds = %249
  %272 = load i32, ptr %1, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %1, align 4
  br label %245, !llvm.loop !39

274:                                              ; preds = %245
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %275

275:                                              ; preds = %301, %274
  %276 = load i32, ptr %1, align 4
  %277 = icmp sle i32 %276, 0
  br i1 %277, label %278, label %304

278:                                              ; preds = %275
  store i32 0, ptr %2, align 4
  br label %279

279:                                              ; preds = %298, %278
  %280 = load i32, ptr %2, align 4
  %281 = icmp sle i32 %280, 2
  br i1 %281, label %282, label %301

282:                                              ; preds = %279
  store i32 0, ptr %3, align 4
  br label %283

283:                                              ; preds = %286, %282
  %284 = load i32, ptr %3, align 4
  %285 = icmp sle i32 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %283
  %287 = load i32, ptr %1, align 4
  %288 = load i32, ptr %2, align 4
  %289 = load i32, ptr %3, align 4
  %290 = mul nsw i32 %289, 8
  %291 = add nsw i32 %290, %288
  %292 = mul nsw i32 %291, 8
  %293 = add nsw i32 %292, %287
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %294
  store i32 1, ptr %295, align 4
  %296 = load i32, ptr %3, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %3, align 4
  br label %283, !llvm.loop !40

298:                                              ; preds = %283
  %299 = load i32, ptr %2, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %2, align 4
  br label %279, !llvm.loop !41

301:                                              ; preds = %279
  %302 = load i32, ptr %1, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %1, align 4
  br label %275, !llvm.loop !42

304:                                              ; preds = %275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %305

305:                                              ; preds = %331, %304
  %306 = load i32, ptr %1, align 4
  %307 = icmp sle i32 %306, 0
  br i1 %307, label %308, label %334

308:                                              ; preds = %305
  store i32 0, ptr %2, align 4
  br label %309

309:                                              ; preds = %328, %308
  %310 = load i32, ptr %2, align 4
  %311 = icmp sle i32 %310, 0
  br i1 %311, label %312, label %331

312:                                              ; preds = %309
  store i32 0, ptr %3, align 4
  br label %313

313:                                              ; preds = %316, %312
  %314 = load i32, ptr %3, align 4
  %315 = icmp sle i32 %314, 2
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load i32, ptr %1, align 4
  %318 = load i32, ptr %2, align 4
  %319 = load i32, ptr %3, align 4
  %320 = mul nsw i32 %319, 8
  %321 = add nsw i32 %320, %318
  %322 = mul nsw i32 %321, 8
  %323 = add nsw i32 %322, %317
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %324
  store i32 1, ptr %325, align 4
  %326 = load i32, ptr %3, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, ptr %3, align 4
  br label %313, !llvm.loop !43

328:                                              ; preds = %313
  %329 = load i32, ptr %2, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, ptr %2, align 4
  br label %309, !llvm.loop !44

331:                                              ; preds = %309
  %332 = load i32, ptr %1, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %1, align 4
  br label %305, !llvm.loop !45

334:                                              ; preds = %305
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %335

335:                                              ; preds = %361, %334
  %336 = load i32, ptr %1, align 4
  %337 = icmp sle i32 %336, 1
  br i1 %337, label %338, label %364

338:                                              ; preds = %335
  store i32 0, ptr %2, align 4
  br label %339

339:                                              ; preds = %358, %338
  %340 = load i32, ptr %2, align 4
  %341 = icmp sle i32 %340, 1
  br i1 %341, label %342, label %361

342:                                              ; preds = %339
  store i32 0, ptr %3, align 4
  br label %343

343:                                              ; preds = %346, %342
  %344 = load i32, ptr %3, align 4
  %345 = icmp sle i32 %344, 0
  br i1 %345, label %346, label %358

346:                                              ; preds = %343
  %347 = load i32, ptr %1, align 4
  %348 = load i32, ptr %2, align 4
  %349 = load i32, ptr %3, align 4
  %350 = mul nsw i32 %349, 8
  %351 = add nsw i32 %350, %348
  %352 = mul nsw i32 %351, 8
  %353 = add nsw i32 %352, %347
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %354
  store i32 1, ptr %355, align 4
  %356 = load i32, ptr %3, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %3, align 4
  br label %343, !llvm.loop !46

358:                                              ; preds = %343
  %359 = load i32, ptr %2, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %2, align 4
  br label %339, !llvm.loop !47

361:                                              ; preds = %339
  %362 = load i32, ptr %1, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, ptr %1, align 4
  br label %335, !llvm.loop !48

364:                                              ; preds = %335
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %365

365:                                              ; preds = %391, %364
  %366 = load i32, ptr %1, align 4
  %367 = icmp sle i32 %366, 1
  br i1 %367, label %368, label %394

368:                                              ; preds = %365
  store i32 0, ptr %2, align 4
  br label %369

369:                                              ; preds = %388, %368
  %370 = load i32, ptr %2, align 4
  %371 = icmp sle i32 %370, 0
  br i1 %371, label %372, label %391

372:                                              ; preds = %369
  store i32 0, ptr %3, align 4
  br label %373

373:                                              ; preds = %376, %372
  %374 = load i32, ptr %3, align 4
  %375 = icmp sle i32 %374, 1
  br i1 %375, label %376, label %388

376:                                              ; preds = %373
  %377 = load i32, ptr %1, align 4
  %378 = load i32, ptr %2, align 4
  %379 = load i32, ptr %3, align 4
  %380 = mul nsw i32 %379, 8
  %381 = add nsw i32 %380, %378
  %382 = mul nsw i32 %381, 8
  %383 = add nsw i32 %382, %377
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %384
  store i32 1, ptr %385, align 4
  %386 = load i32, ptr %3, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, ptr %3, align 4
  br label %373, !llvm.loop !49

388:                                              ; preds = %373
  %389 = load i32, ptr %2, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %2, align 4
  br label %369, !llvm.loop !50

391:                                              ; preds = %369
  %392 = load i32, ptr %1, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, ptr %1, align 4
  br label %365, !llvm.loop !51

394:                                              ; preds = %365
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %395

395:                                              ; preds = %421, %394
  %396 = load i32, ptr %1, align 4
  %397 = icmp sle i32 %396, 0
  br i1 %397, label %398, label %424

398:                                              ; preds = %395
  store i32 0, ptr %2, align 4
  br label %399

399:                                              ; preds = %418, %398
  %400 = load i32, ptr %2, align 4
  %401 = icmp sle i32 %400, 1
  br i1 %401, label %402, label %421

402:                                              ; preds = %399
  store i32 0, ptr %3, align 4
  br label %403

403:                                              ; preds = %406, %402
  %404 = load i32, ptr %3, align 4
  %405 = icmp sle i32 %404, 1
  br i1 %405, label %406, label %418

406:                                              ; preds = %403
  %407 = load i32, ptr %1, align 4
  %408 = load i32, ptr %2, align 4
  %409 = load i32, ptr %3, align 4
  %410 = mul nsw i32 %409, 8
  %411 = add nsw i32 %410, %408
  %412 = mul nsw i32 %411, 8
  %413 = add nsw i32 %412, %407
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %414
  store i32 1, ptr %415, align 4
  %416 = load i32, ptr %3, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, ptr %3, align 4
  br label %403, !llvm.loop !52

418:                                              ; preds = %403
  %419 = load i32, ptr %2, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %2, align 4
  br label %399, !llvm.loop !53

421:                                              ; preds = %399
  %422 = load i32, ptr %1, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr %1, align 4
  br label %395, !llvm.loop !54

424:                                              ; preds = %395
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %425

425:                                              ; preds = %451, %424
  %426 = load i32, ptr %1, align 4
  %427 = icmp sle i32 %426, 1
  br i1 %427, label %428, label %454

428:                                              ; preds = %425
  store i32 0, ptr %2, align 4
  br label %429

429:                                              ; preds = %448, %428
  %430 = load i32, ptr %2, align 4
  %431 = icmp sle i32 %430, 1
  br i1 %431, label %432, label %451

432:                                              ; preds = %429
  store i32 0, ptr %3, align 4
  br label %433

433:                                              ; preds = %436, %432
  %434 = load i32, ptr %3, align 4
  %435 = icmp sle i32 %434, 1
  br i1 %435, label %436, label %448

436:                                              ; preds = %433
  %437 = load i32, ptr %1, align 4
  %438 = load i32, ptr %2, align 4
  %439 = load i32, ptr %3, align 4
  %440 = mul nsw i32 %439, 8
  %441 = add nsw i32 %440, %438
  %442 = mul nsw i32 %441, 8
  %443 = add nsw i32 %442, %437
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %444
  store i32 1, ptr %445, align 4
  %446 = load i32, ptr %3, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, ptr %3, align 4
  br label %433, !llvm.loop !55

448:                                              ; preds = %433
  %449 = load i32, ptr %2, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, ptr %2, align 4
  br label %429, !llvm.loop !56

451:                                              ; preds = %429
  %452 = load i32, ptr %1, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr %1, align 4
  br label %425, !llvm.loop !57

454:                                              ; preds = %425
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %455 = load i32, ptr %4, align 4
  %456 = call i32 @Fit(i32 noundef 0, i32 noundef %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %454
  %459 = load i32, ptr %4, align 4
  %460 = call i32 @Place(i32 noundef 0, i32 noundef %459)
  store i32 %460, ptr @n, align 4
  br label %463

461:                                              ; preds = %454
  %462 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %463

463:                                              ; preds = %461, %458
  %464 = load i32, ptr @n, align 4
  %465 = call i32 @Trial(i32 noundef %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %463
  %468 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %474

469:                                              ; preds = %463
  %470 = load i32, ptr @kount, align 4
  %471 = icmp ne i32 %470, 2005
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  %473 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %474

474:                                              ; preds = %469, %472, %467
  %475 = load i32, ptr @n, align 4
  %476 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %475)
  %477 = load i32, ptr @kount, align 4
  %478 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %477)
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
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Puzzle()
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  br label %3, !llvm.loop !58

9:                                                ; preds = %3
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
