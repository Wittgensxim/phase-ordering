; ModuleID = 'results\test_rule2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %10
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, %8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, ptr %3, align 4
  br label %34

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %7, !llvm.loop !7

33:                                               ; preds = %7
  store i32 1, ptr %3, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, ptr %3, align 4
  ret i32 %35
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

7:                                                ; preds = %26, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %7
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %10
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %21, %8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 4
  br label %7, !llvm.loop !9

29:                                               ; preds = %7
  %30 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %10
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %5, align 4
  store i32 %36, ptr %6, align 4
  br label %37

37:                                               ; preds = %47, %29
  %38 = load i32, ptr %6, align 4
  %39 = icmp sle i32 %38, 511
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 %38, ptr %3, align 4
  br label %50

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %38, 1
  store i32 %48, ptr %6, align 4
  br label %37, !llvm.loop !10

49:                                               ; preds = %37
  store i32 0, ptr %3, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, ptr %3, align 4
  ret i32 %51
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

6:                                                ; preds = %25, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %6
  %14 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [512 x i32], ptr %14, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, %7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %5, align 4
  br label %6, !llvm.loop !11

28:                                               ; preds = %6
  %29 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %9
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
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

8:                                                ; preds = %39, %1
  %9 = load i32, ptr %4, align 4
  %10 = icmp sle i32 %9, 12
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @Fit(i32 noundef %9, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = call i32 @Place(i32 noundef %24, i32 noundef %25)
  store i32 %26, ptr %5, align 4
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23
  store i32 1, ptr %2, align 4
  br label %43

33:                                               ; preds = %29
  %34 = load i32, ptr %4, align 4
  %35 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %34, i32 noundef %35)
  br label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %11
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4
  br label %8, !llvm.loop !12

42:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, ptr %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %11, %0
  %6 = load i32, ptr %4, align 4
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %4, align 4
  br label %5, !llvm.loop !13

14:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, ptr %1, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  store i32 1, ptr %2, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, ptr %2, align 4
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  store i32 1, ptr %3, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, ptr %3, align 4
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, ptr %1, align 4
  %28 = load i32, ptr %2, align 4
  %29 = mul nsw i32 %24, 8
  %30 = add nsw i32 %28, %29
  %31 = mul nsw i32 %30, 8
  %32 = add nsw i32 %31, %27
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %26
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  br label %23, !llvm.loop !14

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %2, align 4
  br label %19, !llvm.loop !15

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %1, align 4
  br label %15, !llvm.loop !16

46:                                               ; preds = %15
  store i32 0, ptr %1, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, ptr %1, align 4
  %49 = icmp sle i32 %48, 12
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  store i32 0, ptr %4, align 4
  br label %51

51:                                               ; preds = %60, %50
  %52 = load i32, ptr %4, align 4
  %53 = icmp sle i32 %52, 511
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %56
  %58 = sext i32 %52 to i64
  %59 = getelementptr inbounds [512 x i32], ptr %57, i64 0, i64 %58
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %4, align 4
  br label %51, !llvm.loop !17

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %1, align 4
  br label %47, !llvm.loop !18

67:                                               ; preds = %47
  store i32 0, ptr %1, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, ptr %1, align 4
  %70 = icmp sle i32 %69, 3
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  store i32 0, ptr %2, align 4
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, ptr %2, align 4
  %74 = icmp sle i32 %73, 1
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  store i32 0, ptr %3, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i32, ptr %3, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, ptr %1, align 4
  %81 = load i32, ptr %2, align 4
  %82 = mul nsw i32 %77, 8
  %83 = add nsw i32 %81, %82
  %84 = mul nsw i32 %83, 8
  %85 = add nsw i32 %84, %80
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %86
  store i32 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, ptr %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %3, align 4
  br label %76, !llvm.loop !19

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %2, align 4
  br label %72, !llvm.loop !20

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %1, align 4
  br label %68, !llvm.loop !21

99:                                               ; preds = %68
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %100

100:                                              ; preds = %128, %99
  %101 = load i32, ptr %1, align 4
  %102 = icmp sle i32 %101, 1
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  store i32 0, ptr %2, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, ptr %2, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  store i32 0, ptr %3, align 4
  br label %108

108:                                              ; preds = %120, %107
  %109 = load i32, ptr %3, align 4
  %110 = icmp sle i32 %109, 3
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32, ptr %1, align 4
  %113 = load i32, ptr %2, align 4
  %114 = mul nsw i32 %109, 8
  %115 = add nsw i32 %113, %114
  %116 = mul nsw i32 %115, 8
  %117 = add nsw i32 %116, %112
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %118
  store i32 1, ptr %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, ptr %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %3, align 4
  br label %108, !llvm.loop !22

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %2, align 4
  br label %104, !llvm.loop !23

127:                                              ; preds = %104
  br label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %1, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %1, align 4
  br label %100, !llvm.loop !24

131:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %132

132:                                              ; preds = %160, %131
  %133 = load i32, ptr %1, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  store i32 0, ptr %2, align 4
  br label %136

136:                                              ; preds = %156, %135
  %137 = load i32, ptr %2, align 4
  %138 = icmp sle i32 %137, 3
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  store i32 0, ptr %3, align 4
  br label %140

140:                                              ; preds = %152, %139
  %141 = load i32, ptr %3, align 4
  %142 = icmp sle i32 %141, 1
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i32, ptr %1, align 4
  %145 = load i32, ptr %2, align 4
  %146 = mul nsw i32 %141, 8
  %147 = add nsw i32 %145, %146
  %148 = mul nsw i32 %147, 8
  %149 = add nsw i32 %148, %144
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %150
  store i32 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %143
  %153 = load i32, ptr %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %3, align 4
  br label %140, !llvm.loop !25

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %2, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, ptr %2, align 4
  br label %136, !llvm.loop !26

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %1, align 4
  br label %132, !llvm.loop !27

163:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %164

164:                                              ; preds = %192, %163
  %165 = load i32, ptr %1, align 4
  %166 = icmp sle i32 %165, 1
  br i1 %166, label %167, label %195

167:                                              ; preds = %164
  store i32 0, ptr %2, align 4
  br label %168

168:                                              ; preds = %188, %167
  %169 = load i32, ptr %2, align 4
  %170 = icmp sle i32 %169, 3
  br i1 %170, label %171, label %191

171:                                              ; preds = %168
  store i32 0, ptr %3, align 4
  br label %172

172:                                              ; preds = %184, %171
  %173 = load i32, ptr %3, align 4
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32, ptr %1, align 4
  %177 = load i32, ptr %2, align 4
  %178 = mul nsw i32 %173, 8
  %179 = add nsw i32 %177, %178
  %180 = mul nsw i32 %179, 8
  %181 = add nsw i32 %180, %176
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %182
  store i32 1, ptr %183, align 4
  br label %184

184:                                              ; preds = %175
  %185 = load i32, ptr %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %3, align 4
  br label %172, !llvm.loop !28

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %2, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %2, align 4
  br label %168, !llvm.loop !29

191:                                              ; preds = %168
  br label %192

192:                                              ; preds = %191
  %193 = load i32, ptr %1, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr %1, align 4
  br label %164, !llvm.loop !30

195:                                              ; preds = %164
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %196

196:                                              ; preds = %224, %195
  %197 = load i32, ptr %1, align 4
  %198 = icmp sle i32 %197, 3
  br i1 %198, label %199, label %227

199:                                              ; preds = %196
  store i32 0, ptr %2, align 4
  br label %200

200:                                              ; preds = %220, %199
  %201 = load i32, ptr %2, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %200
  store i32 0, ptr %3, align 4
  br label %204

204:                                              ; preds = %216, %203
  %205 = load i32, ptr %3, align 4
  %206 = icmp sle i32 %205, 1
  br i1 %206, label %207, label %219

207:                                              ; preds = %204
  %208 = load i32, ptr %1, align 4
  %209 = load i32, ptr %2, align 4
  %210 = mul nsw i32 %205, 8
  %211 = add nsw i32 %209, %210
  %212 = mul nsw i32 %211, 8
  %213 = add nsw i32 %212, %208
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %214
  store i32 1, ptr %215, align 4
  br label %216

216:                                              ; preds = %207
  %217 = load i32, ptr %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %3, align 4
  br label %204, !llvm.loop !31

219:                                              ; preds = %204
  br label %220

220:                                              ; preds = %219
  %221 = load i32, ptr %2, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %2, align 4
  br label %200, !llvm.loop !32

223:                                              ; preds = %200
  br label %224

224:                                              ; preds = %223
  %225 = load i32, ptr %1, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %1, align 4
  br label %196, !llvm.loop !33

227:                                              ; preds = %196
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %228

228:                                              ; preds = %256, %227
  %229 = load i32, ptr %1, align 4
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %231, label %259

231:                                              ; preds = %228
  store i32 0, ptr %2, align 4
  br label %232

232:                                              ; preds = %252, %231
  %233 = load i32, ptr %2, align 4
  %234 = icmp sle i32 %233, 1
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  store i32 0, ptr %3, align 4
  br label %236

236:                                              ; preds = %248, %235
  %237 = load i32, ptr %3, align 4
  %238 = icmp sle i32 %237, 3
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i32, ptr %1, align 4
  %241 = load i32, ptr %2, align 4
  %242 = mul nsw i32 %237, 8
  %243 = add nsw i32 %241, %242
  %244 = mul nsw i32 %243, 8
  %245 = add nsw i32 %244, %240
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %246
  store i32 1, ptr %247, align 4
  br label %248

248:                                              ; preds = %239
  %249 = load i32, ptr %3, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr %3, align 4
  br label %236, !llvm.loop !34

251:                                              ; preds = %236
  br label %252

252:                                              ; preds = %251
  %253 = load i32, ptr %2, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %2, align 4
  br label %232, !llvm.loop !35

255:                                              ; preds = %232
  br label %256

256:                                              ; preds = %255
  %257 = load i32, ptr %1, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %1, align 4
  br label %228, !llvm.loop !36

259:                                              ; preds = %228
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %260

260:                                              ; preds = %288, %259
  %261 = load i32, ptr %1, align 4
  %262 = icmp sle i32 %261, 2
  br i1 %262, label %263, label %291

263:                                              ; preds = %260
  store i32 0, ptr %2, align 4
  br label %264

264:                                              ; preds = %284, %263
  %265 = load i32, ptr %2, align 4
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %267, label %287

267:                                              ; preds = %264
  store i32 0, ptr %3, align 4
  br label %268

268:                                              ; preds = %280, %267
  %269 = load i32, ptr %3, align 4
  %270 = icmp sle i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load i32, ptr %1, align 4
  %273 = load i32, ptr %2, align 4
  %274 = mul nsw i32 %269, 8
  %275 = add nsw i32 %273, %274
  %276 = mul nsw i32 %275, 8
  %277 = add nsw i32 %276, %272
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %271
  %281 = load i32, ptr %3, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %3, align 4
  br label %268, !llvm.loop !37

283:                                              ; preds = %268
  br label %284

284:                                              ; preds = %283
  %285 = load i32, ptr %2, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %2, align 4
  br label %264, !llvm.loop !38

287:                                              ; preds = %264
  br label %288

288:                                              ; preds = %287
  %289 = load i32, ptr %1, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr %1, align 4
  br label %260, !llvm.loop !39

291:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %292

292:                                              ; preds = %320, %291
  %293 = load i32, ptr %1, align 4
  %294 = icmp sle i32 %293, 0
  br i1 %294, label %295, label %323

295:                                              ; preds = %292
  store i32 0, ptr %2, align 4
  br label %296

296:                                              ; preds = %316, %295
  %297 = load i32, ptr %2, align 4
  %298 = icmp sle i32 %297, 2
  br i1 %298, label %299, label %319

299:                                              ; preds = %296
  store i32 0, ptr %3, align 4
  br label %300

300:                                              ; preds = %312, %299
  %301 = load i32, ptr %3, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %300
  %304 = load i32, ptr %1, align 4
  %305 = load i32, ptr %2, align 4
  %306 = mul nsw i32 %301, 8
  %307 = add nsw i32 %305, %306
  %308 = mul nsw i32 %307, 8
  %309 = add nsw i32 %308, %304
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %310
  store i32 1, ptr %311, align 4
  br label %312

312:                                              ; preds = %303
  %313 = load i32, ptr %3, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, ptr %3, align 4
  br label %300, !llvm.loop !40

315:                                              ; preds = %300
  br label %316

316:                                              ; preds = %315
  %317 = load i32, ptr %2, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %2, align 4
  br label %296, !llvm.loop !41

319:                                              ; preds = %296
  br label %320

320:                                              ; preds = %319
  %321 = load i32, ptr %1, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %1, align 4
  br label %292, !llvm.loop !42

323:                                              ; preds = %292
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %324

324:                                              ; preds = %352, %323
  %325 = load i32, ptr %1, align 4
  %326 = icmp sle i32 %325, 0
  br i1 %326, label %327, label %355

327:                                              ; preds = %324
  store i32 0, ptr %2, align 4
  br label %328

328:                                              ; preds = %348, %327
  %329 = load i32, ptr %2, align 4
  %330 = icmp sle i32 %329, 0
  br i1 %330, label %331, label %351

331:                                              ; preds = %328
  store i32 0, ptr %3, align 4
  br label %332

332:                                              ; preds = %344, %331
  %333 = load i32, ptr %3, align 4
  %334 = icmp sle i32 %333, 2
  br i1 %334, label %335, label %347

335:                                              ; preds = %332
  %336 = load i32, ptr %1, align 4
  %337 = load i32, ptr %2, align 4
  %338 = mul nsw i32 %333, 8
  %339 = add nsw i32 %337, %338
  %340 = mul nsw i32 %339, 8
  %341 = add nsw i32 %340, %336
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %342
  store i32 1, ptr %343, align 4
  br label %344

344:                                              ; preds = %335
  %345 = load i32, ptr %3, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, ptr %3, align 4
  br label %332, !llvm.loop !43

347:                                              ; preds = %332
  br label %348

348:                                              ; preds = %347
  %349 = load i32, ptr %2, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %2, align 4
  br label %328, !llvm.loop !44

351:                                              ; preds = %328
  br label %352

352:                                              ; preds = %351
  %353 = load i32, ptr %1, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %1, align 4
  br label %324, !llvm.loop !45

355:                                              ; preds = %324
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %356

356:                                              ; preds = %384, %355
  %357 = load i32, ptr %1, align 4
  %358 = icmp sle i32 %357, 1
  br i1 %358, label %359, label %387

359:                                              ; preds = %356
  store i32 0, ptr %2, align 4
  br label %360

360:                                              ; preds = %380, %359
  %361 = load i32, ptr %2, align 4
  %362 = icmp sle i32 %361, 1
  br i1 %362, label %363, label %383

363:                                              ; preds = %360
  store i32 0, ptr %3, align 4
  br label %364

364:                                              ; preds = %376, %363
  %365 = load i32, ptr %3, align 4
  %366 = icmp sle i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %364
  %368 = load i32, ptr %1, align 4
  %369 = load i32, ptr %2, align 4
  %370 = mul nsw i32 %365, 8
  %371 = add nsw i32 %369, %370
  %372 = mul nsw i32 %371, 8
  %373 = add nsw i32 %372, %368
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %374
  store i32 1, ptr %375, align 4
  br label %376

376:                                              ; preds = %367
  %377 = load i32, ptr %3, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %3, align 4
  br label %364, !llvm.loop !46

379:                                              ; preds = %364
  br label %380

380:                                              ; preds = %379
  %381 = load i32, ptr %2, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, ptr %2, align 4
  br label %360, !llvm.loop !47

383:                                              ; preds = %360
  br label %384

384:                                              ; preds = %383
  %385 = load i32, ptr %1, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, ptr %1, align 4
  br label %356, !llvm.loop !48

387:                                              ; preds = %356
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %388

388:                                              ; preds = %416, %387
  %389 = load i32, ptr %1, align 4
  %390 = icmp sle i32 %389, 1
  br i1 %390, label %391, label %419

391:                                              ; preds = %388
  store i32 0, ptr %2, align 4
  br label %392

392:                                              ; preds = %412, %391
  %393 = load i32, ptr %2, align 4
  %394 = icmp sle i32 %393, 0
  br i1 %394, label %395, label %415

395:                                              ; preds = %392
  store i32 0, ptr %3, align 4
  br label %396

396:                                              ; preds = %408, %395
  %397 = load i32, ptr %3, align 4
  %398 = icmp sle i32 %397, 1
  br i1 %398, label %399, label %411

399:                                              ; preds = %396
  %400 = load i32, ptr %1, align 4
  %401 = load i32, ptr %2, align 4
  %402 = mul nsw i32 %397, 8
  %403 = add nsw i32 %401, %402
  %404 = mul nsw i32 %403, 8
  %405 = add nsw i32 %404, %400
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %406
  store i32 1, ptr %407, align 4
  br label %408

408:                                              ; preds = %399
  %409 = load i32, ptr %3, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, ptr %3, align 4
  br label %396, !llvm.loop !49

411:                                              ; preds = %396
  br label %412

412:                                              ; preds = %411
  %413 = load i32, ptr %2, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, ptr %2, align 4
  br label %392, !llvm.loop !50

415:                                              ; preds = %392
  br label %416

416:                                              ; preds = %415
  %417 = load i32, ptr %1, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, ptr %1, align 4
  br label %388, !llvm.loop !51

419:                                              ; preds = %388
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %420

420:                                              ; preds = %448, %419
  %421 = load i32, ptr %1, align 4
  %422 = icmp sle i32 %421, 0
  br i1 %422, label %423, label %451

423:                                              ; preds = %420
  store i32 0, ptr %2, align 4
  br label %424

424:                                              ; preds = %444, %423
  %425 = load i32, ptr %2, align 4
  %426 = icmp sle i32 %425, 1
  br i1 %426, label %427, label %447

427:                                              ; preds = %424
  store i32 0, ptr %3, align 4
  br label %428

428:                                              ; preds = %440, %427
  %429 = load i32, ptr %3, align 4
  %430 = icmp sle i32 %429, 1
  br i1 %430, label %431, label %443

431:                                              ; preds = %428
  %432 = load i32, ptr %1, align 4
  %433 = load i32, ptr %2, align 4
  %434 = mul nsw i32 %429, 8
  %435 = add nsw i32 %433, %434
  %436 = mul nsw i32 %435, 8
  %437 = add nsw i32 %436, %432
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %438
  store i32 1, ptr %439, align 4
  br label %440

440:                                              ; preds = %431
  %441 = load i32, ptr %3, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, ptr %3, align 4
  br label %428, !llvm.loop !52

443:                                              ; preds = %428
  br label %444

444:                                              ; preds = %443
  %445 = load i32, ptr %2, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, ptr %2, align 4
  br label %424, !llvm.loop !53

447:                                              ; preds = %424
  br label %448

448:                                              ; preds = %447
  %449 = load i32, ptr %1, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, ptr %1, align 4
  br label %420, !llvm.loop !54

451:                                              ; preds = %420
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %452

452:                                              ; preds = %480, %451
  %453 = load i32, ptr %1, align 4
  %454 = icmp sle i32 %453, 1
  br i1 %454, label %455, label %483

455:                                              ; preds = %452
  store i32 0, ptr %2, align 4
  br label %456

456:                                              ; preds = %476, %455
  %457 = load i32, ptr %2, align 4
  %458 = icmp sle i32 %457, 1
  br i1 %458, label %459, label %479

459:                                              ; preds = %456
  store i32 0, ptr %3, align 4
  br label %460

460:                                              ; preds = %472, %459
  %461 = load i32, ptr %3, align 4
  %462 = icmp sle i32 %461, 1
  br i1 %462, label %463, label %475

463:                                              ; preds = %460
  %464 = load i32, ptr %1, align 4
  %465 = load i32, ptr %2, align 4
  %466 = mul nsw i32 %461, 8
  %467 = add nsw i32 %465, %466
  %468 = mul nsw i32 %467, 8
  %469 = add nsw i32 %468, %464
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %470
  store i32 1, ptr %471, align 4
  br label %472

472:                                              ; preds = %463
  %473 = load i32, ptr %3, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, ptr %3, align 4
  br label %460, !llvm.loop !55

475:                                              ; preds = %460
  br label %476

476:                                              ; preds = %475
  %477 = load i32, ptr %2, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr %2, align 4
  br label %456, !llvm.loop !56

479:                                              ; preds = %456
  br label %480

480:                                              ; preds = %479
  %481 = load i32, ptr %1, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, ptr %1, align 4
  br label %452, !llvm.loop !57

483:                                              ; preds = %452
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %484 = load i32, ptr %4, align 4
  %485 = call i32 @Fit(i32 noundef 0, i32 noundef %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %483
  %488 = load i32, ptr %4, align 4
  %489 = call i32 @Place(i32 noundef 0, i32 noundef %488)
  store i32 %489, ptr @n, align 4
  br label %492

490:                                              ; preds = %483
  %491 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %492

492:                                              ; preds = %490, %487
  %493 = load i32, ptr @n, align 4
  %494 = call i32 @Trial(i32 noundef %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %498, label %496

496:                                              ; preds = %492
  %497 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %504

498:                                              ; preds = %492
  %499 = load i32, ptr @kount, align 4
  %500 = icmp ne i32 %499, 2005
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  %502 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %503

503:                                              ; preds = %501, %498
  br label %504

504:                                              ; preds = %503, %496
  %505 = load i32, ptr @n, align 4
  %506 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %505)
  %507 = load i32, ptr @kount, align 4
  %508 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %507)
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

3:                                                ; preds = %7, %0
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  call void @Puzzle()
  br label %7

7:                                                ; preds = %6
  %8 = load i32, ptr %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %2, align 4
  br label %3, !llvm.loop !58

10:                                               ; preds = %3
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
