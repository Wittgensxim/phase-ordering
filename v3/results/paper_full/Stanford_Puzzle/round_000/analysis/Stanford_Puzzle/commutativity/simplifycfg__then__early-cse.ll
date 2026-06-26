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
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %10
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

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
  br label %32

28:                                               ; preds = %14, %20
  %29 = load i32, ptr %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %6, align 4
  br label %7, !llvm.loop !7

31:                                               ; preds = %7
  store i32 1, ptr %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr %3, align 4
  ret i32 %33
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

7:                                                ; preds = %25, %2
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp sle i32 %8, %12
  br i1 %13, label %14, label %28

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

25:                                               ; preds = %14, %20
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %6, align 4
  br label %7, !llvm.loop !9

28:                                               ; preds = %7
  %29 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %10
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %5, align 4
  store i32 %35, ptr %6, align 4
  br label %36

36:                                               ; preds = %45, %28
  %37 = load i32, ptr %6, align 4
  %38 = icmp sle i32 %37, 511
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 %37, ptr %3, align 4
  br label %48

45:                                               ; preds = %39
  %46 = add nsw i32 %37, 1
  store i32 %46, ptr %6, align 4
  br label %36, !llvm.loop !10

47:                                               ; preds = %36
  store i32 0, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, ptr %3, align 4
  ret i32 %49
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

6:                                                ; preds = %24, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %13, label %27

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

24:                                               ; preds = %13, %19
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %5, align 4
  br label %6, !llvm.loop !11

27:                                               ; preds = %6
  %28 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %9
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
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

8:                                                ; preds = %35, %1
  %9 = load i32, ptr %4, align 4
  %10 = icmp sle i32 %9, 12
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %11
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @Fit(i32 noundef %9, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = call i32 @Place(i32 noundef %24, i32 noundef %25)
  store i32 %26, ptr %5, align 4
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  %29 = load i32, ptr %5, align 4
  %30 = icmp eq i32 %29, 0
  %or.cond = select i1 %28, i1 true, i1 %30
  br i1 %or.cond, label %31, label %32

31:                                               ; preds = %23
  store i32 1, ptr %2, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load i32, ptr %4, align 4
  %34 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %33, i32 noundef %34)
  br label %35

35:                                               ; preds = %11, %32, %19
  %36 = load i32, ptr %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %4, align 4
  br label %8, !llvm.loop !12

38:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, ptr %2, align 4
  ret i32 %40
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
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %4, align 4
  br label %5, !llvm.loop !13

13:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, ptr %1, align 4
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  store i32 1, ptr %2, align 4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load i32, ptr %2, align 4
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  store i32 1, ptr %3, align 4
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i32, ptr %3, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, ptr %1, align 4
  %27 = load i32, ptr %2, align 4
  %28 = mul nsw i32 8, %23
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 8, %29
  %31 = add nsw i32 %26, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %32
  store i32 0, ptr %33, align 4
  %34 = load i32, ptr %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %3, align 4
  br label %22, !llvm.loop !14

36:                                               ; preds = %22
  %37 = load i32, ptr %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %2, align 4
  br label %18, !llvm.loop !15

39:                                               ; preds = %18
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %1, align 4
  br label %14, !llvm.loop !16

42:                                               ; preds = %14
  store i32 0, ptr %1, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, ptr %1, align 4
  %45 = icmp sle i32 %44, 12
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  store i32 0, ptr %4, align 4
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, ptr %4, align 4
  %49 = icmp sle i32 %48, 511
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, ptr %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %52
  %54 = sext i32 %48 to i64
  %55 = getelementptr inbounds [512 x i32], ptr %53, i64 0, i64 %54
  store i32 0, ptr %55, align 4
  %56 = load i32, ptr %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %4, align 4
  br label %47, !llvm.loop !17

58:                                               ; preds = %47
  %59 = load i32, ptr %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %1, align 4
  br label %43, !llvm.loop !18

61:                                               ; preds = %43
  store i32 0, ptr %1, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, ptr %1, align 4
  %64 = icmp sle i32 %63, 3
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  store i32 0, ptr %2, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, ptr %2, align 4
  %68 = icmp sle i32 %67, 1
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  store i32 0, ptr %3, align 4
  br label %70

70:                                               ; preds = %73, %69
  %71 = load i32, ptr %3, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, ptr %1, align 4
  %75 = load i32, ptr %2, align 4
  %76 = mul nsw i32 8, %71
  %77 = add nsw i32 %75, %76
  %78 = mul nsw i32 8, %77
  %79 = add nsw i32 %74, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %80
  store i32 1, ptr %81, align 4
  %82 = load i32, ptr %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %3, align 4
  br label %70, !llvm.loop !19

84:                                               ; preds = %70
  %85 = load i32, ptr %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %2, align 4
  br label %66, !llvm.loop !20

87:                                               ; preds = %66
  %88 = load i32, ptr %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %1, align 4
  br label %62, !llvm.loop !21

90:                                               ; preds = %62
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i32, ptr %1, align 4
  %93 = icmp sle i32 %92, 1
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  store i32 0, ptr %2, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, ptr %2, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  store i32 0, ptr %3, align 4
  br label %99

99:                                               ; preds = %102, %98
  %100 = load i32, ptr %3, align 4
  %101 = icmp sle i32 %100, 3
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, ptr %1, align 4
  %104 = load i32, ptr %2, align 4
  %105 = mul nsw i32 8, %100
  %106 = add nsw i32 %104, %105
  %107 = mul nsw i32 8, %106
  %108 = add nsw i32 %103, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %109
  store i32 1, ptr %110, align 4
  %111 = load i32, ptr %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %3, align 4
  br label %99, !llvm.loop !22

113:                                              ; preds = %99
  %114 = load i32, ptr %2, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %2, align 4
  br label %95, !llvm.loop !23

116:                                              ; preds = %95
  %117 = load i32, ptr %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %1, align 4
  br label %91, !llvm.loop !24

119:                                              ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %120

120:                                              ; preds = %145, %119
  %121 = load i32, ptr %1, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %120
  store i32 0, ptr %2, align 4
  br label %124

124:                                              ; preds = %142, %123
  %125 = load i32, ptr %2, align 4
  %126 = icmp sle i32 %125, 3
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  store i32 0, ptr %3, align 4
  br label %128

128:                                              ; preds = %131, %127
  %129 = load i32, ptr %3, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32, ptr %1, align 4
  %133 = load i32, ptr %2, align 4
  %134 = mul nsw i32 8, %129
  %135 = add nsw i32 %133, %134
  %136 = mul nsw i32 8, %135
  %137 = add nsw i32 %132, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %138
  store i32 1, ptr %139, align 4
  %140 = load i32, ptr %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %3, align 4
  br label %128, !llvm.loop !25

142:                                              ; preds = %128
  %143 = load i32, ptr %2, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %2, align 4
  br label %124, !llvm.loop !26

145:                                              ; preds = %124
  %146 = load i32, ptr %1, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %1, align 4
  br label %120, !llvm.loop !27

148:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %149

149:                                              ; preds = %174, %148
  %150 = load i32, ptr %1, align 4
  %151 = icmp sle i32 %150, 1
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  store i32 0, ptr %2, align 4
  br label %153

153:                                              ; preds = %171, %152
  %154 = load i32, ptr %2, align 4
  %155 = icmp sle i32 %154, 3
  br i1 %155, label %156, label %174

156:                                              ; preds = %153
  store i32 0, ptr %3, align 4
  br label %157

157:                                              ; preds = %160, %156
  %158 = load i32, ptr %3, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = load i32, ptr %1, align 4
  %162 = load i32, ptr %2, align 4
  %163 = mul nsw i32 8, %158
  %164 = add nsw i32 %162, %163
  %165 = mul nsw i32 8, %164
  %166 = add nsw i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %167
  store i32 1, ptr %168, align 4
  %169 = load i32, ptr %3, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %3, align 4
  br label %157, !llvm.loop !28

171:                                              ; preds = %157
  %172 = load i32, ptr %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %2, align 4
  br label %153, !llvm.loop !29

174:                                              ; preds = %153
  %175 = load i32, ptr %1, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %1, align 4
  br label %149, !llvm.loop !30

177:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %178

178:                                              ; preds = %203, %177
  %179 = load i32, ptr %1, align 4
  %180 = icmp sle i32 %179, 3
  br i1 %180, label %181, label %206

181:                                              ; preds = %178
  store i32 0, ptr %2, align 4
  br label %182

182:                                              ; preds = %200, %181
  %183 = load i32, ptr %2, align 4
  %184 = icmp sle i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  store i32 0, ptr %3, align 4
  br label %186

186:                                              ; preds = %189, %185
  %187 = load i32, ptr %3, align 4
  %188 = icmp sle i32 %187, 1
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load i32, ptr %1, align 4
  %191 = load i32, ptr %2, align 4
  %192 = mul nsw i32 8, %187
  %193 = add nsw i32 %191, %192
  %194 = mul nsw i32 8, %193
  %195 = add nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %196
  store i32 1, ptr %197, align 4
  %198 = load i32, ptr %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %3, align 4
  br label %186, !llvm.loop !31

200:                                              ; preds = %186
  %201 = load i32, ptr %2, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %2, align 4
  br label %182, !llvm.loop !32

203:                                              ; preds = %182
  %204 = load i32, ptr %1, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %1, align 4
  br label %178, !llvm.loop !33

206:                                              ; preds = %178
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %207

207:                                              ; preds = %232, %206
  %208 = load i32, ptr %1, align 4
  %209 = icmp sle i32 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %207
  store i32 0, ptr %2, align 4
  br label %211

211:                                              ; preds = %229, %210
  %212 = load i32, ptr %2, align 4
  %213 = icmp sle i32 %212, 1
  br i1 %213, label %214, label %232

214:                                              ; preds = %211
  store i32 0, ptr %3, align 4
  br label %215

215:                                              ; preds = %218, %214
  %216 = load i32, ptr %3, align 4
  %217 = icmp sle i32 %216, 3
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load i32, ptr %1, align 4
  %220 = load i32, ptr %2, align 4
  %221 = mul nsw i32 8, %216
  %222 = add nsw i32 %220, %221
  %223 = mul nsw i32 8, %222
  %224 = add nsw i32 %219, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %225
  store i32 1, ptr %226, align 4
  %227 = load i32, ptr %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %3, align 4
  br label %215, !llvm.loop !34

229:                                              ; preds = %215
  %230 = load i32, ptr %2, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %2, align 4
  br label %211, !llvm.loop !35

232:                                              ; preds = %211
  %233 = load i32, ptr %1, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %1, align 4
  br label %207, !llvm.loop !36

235:                                              ; preds = %207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %236

236:                                              ; preds = %261, %235
  %237 = load i32, ptr %1, align 4
  %238 = icmp sle i32 %237, 2
  br i1 %238, label %239, label %264

239:                                              ; preds = %236
  store i32 0, ptr %2, align 4
  br label %240

240:                                              ; preds = %258, %239
  %241 = load i32, ptr %2, align 4
  %242 = icmp sle i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %240
  store i32 0, ptr %3, align 4
  br label %244

244:                                              ; preds = %247, %243
  %245 = load i32, ptr %3, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = load i32, ptr %1, align 4
  %249 = load i32, ptr %2, align 4
  %250 = mul nsw i32 8, %245
  %251 = add nsw i32 %249, %250
  %252 = mul nsw i32 8, %251
  %253 = add nsw i32 %248, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %254
  store i32 1, ptr %255, align 4
  %256 = load i32, ptr %3, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %3, align 4
  br label %244, !llvm.loop !37

258:                                              ; preds = %244
  %259 = load i32, ptr %2, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr %2, align 4
  br label %240, !llvm.loop !38

261:                                              ; preds = %240
  %262 = load i32, ptr %1, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %1, align 4
  br label %236, !llvm.loop !39

264:                                              ; preds = %236
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %265

265:                                              ; preds = %290, %264
  %266 = load i32, ptr %1, align 4
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %268, label %293

268:                                              ; preds = %265
  store i32 0, ptr %2, align 4
  br label %269

269:                                              ; preds = %287, %268
  %270 = load i32, ptr %2, align 4
  %271 = icmp sle i32 %270, 2
  br i1 %271, label %272, label %290

272:                                              ; preds = %269
  store i32 0, ptr %3, align 4
  br label %273

273:                                              ; preds = %276, %272
  %274 = load i32, ptr %3, align 4
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %273
  %277 = load i32, ptr %1, align 4
  %278 = load i32, ptr %2, align 4
  %279 = mul nsw i32 8, %274
  %280 = add nsw i32 %278, %279
  %281 = mul nsw i32 8, %280
  %282 = add nsw i32 %277, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %283
  store i32 1, ptr %284, align 4
  %285 = load i32, ptr %3, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %3, align 4
  br label %273, !llvm.loop !40

287:                                              ; preds = %273
  %288 = load i32, ptr %2, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %2, align 4
  br label %269, !llvm.loop !41

290:                                              ; preds = %269
  %291 = load i32, ptr %1, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, ptr %1, align 4
  br label %265, !llvm.loop !42

293:                                              ; preds = %265
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %294

294:                                              ; preds = %319, %293
  %295 = load i32, ptr %1, align 4
  %296 = icmp sle i32 %295, 0
  br i1 %296, label %297, label %322

297:                                              ; preds = %294
  store i32 0, ptr %2, align 4
  br label %298

298:                                              ; preds = %316, %297
  %299 = load i32, ptr %2, align 4
  %300 = icmp sle i32 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %298
  store i32 0, ptr %3, align 4
  br label %302

302:                                              ; preds = %305, %301
  %303 = load i32, ptr %3, align 4
  %304 = icmp sle i32 %303, 2
  br i1 %304, label %305, label %316

305:                                              ; preds = %302
  %306 = load i32, ptr %1, align 4
  %307 = load i32, ptr %2, align 4
  %308 = mul nsw i32 8, %303
  %309 = add nsw i32 %307, %308
  %310 = mul nsw i32 8, %309
  %311 = add nsw i32 %306, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %312
  store i32 1, ptr %313, align 4
  %314 = load i32, ptr %3, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %3, align 4
  br label %302, !llvm.loop !43

316:                                              ; preds = %302
  %317 = load i32, ptr %2, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %2, align 4
  br label %298, !llvm.loop !44

319:                                              ; preds = %298
  %320 = load i32, ptr %1, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %1, align 4
  br label %294, !llvm.loop !45

322:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %323

323:                                              ; preds = %348, %322
  %324 = load i32, ptr %1, align 4
  %325 = icmp sle i32 %324, 1
  br i1 %325, label %326, label %351

326:                                              ; preds = %323
  store i32 0, ptr %2, align 4
  br label %327

327:                                              ; preds = %345, %326
  %328 = load i32, ptr %2, align 4
  %329 = icmp sle i32 %328, 1
  br i1 %329, label %330, label %348

330:                                              ; preds = %327
  store i32 0, ptr %3, align 4
  br label %331

331:                                              ; preds = %334, %330
  %332 = load i32, ptr %3, align 4
  %333 = icmp sle i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %331
  %335 = load i32, ptr %1, align 4
  %336 = load i32, ptr %2, align 4
  %337 = mul nsw i32 8, %332
  %338 = add nsw i32 %336, %337
  %339 = mul nsw i32 8, %338
  %340 = add nsw i32 %335, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %341
  store i32 1, ptr %342, align 4
  %343 = load i32, ptr %3, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, ptr %3, align 4
  br label %331, !llvm.loop !46

345:                                              ; preds = %331
  %346 = load i32, ptr %2, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, ptr %2, align 4
  br label %327, !llvm.loop !47

348:                                              ; preds = %327
  %349 = load i32, ptr %1, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %1, align 4
  br label %323, !llvm.loop !48

351:                                              ; preds = %323
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %352

352:                                              ; preds = %377, %351
  %353 = load i32, ptr %1, align 4
  %354 = icmp sle i32 %353, 1
  br i1 %354, label %355, label %380

355:                                              ; preds = %352
  store i32 0, ptr %2, align 4
  br label %356

356:                                              ; preds = %374, %355
  %357 = load i32, ptr %2, align 4
  %358 = icmp sle i32 %357, 0
  br i1 %358, label %359, label %377

359:                                              ; preds = %356
  store i32 0, ptr %3, align 4
  br label %360

360:                                              ; preds = %363, %359
  %361 = load i32, ptr %3, align 4
  %362 = icmp sle i32 %361, 1
  br i1 %362, label %363, label %374

363:                                              ; preds = %360
  %364 = load i32, ptr %1, align 4
  %365 = load i32, ptr %2, align 4
  %366 = mul nsw i32 8, %361
  %367 = add nsw i32 %365, %366
  %368 = mul nsw i32 8, %367
  %369 = add nsw i32 %364, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %370
  store i32 1, ptr %371, align 4
  %372 = load i32, ptr %3, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %3, align 4
  br label %360, !llvm.loop !49

374:                                              ; preds = %360
  %375 = load i32, ptr %2, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, ptr %2, align 4
  br label %356, !llvm.loop !50

377:                                              ; preds = %356
  %378 = load i32, ptr %1, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, ptr %1, align 4
  br label %352, !llvm.loop !51

380:                                              ; preds = %352
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %381

381:                                              ; preds = %406, %380
  %382 = load i32, ptr %1, align 4
  %383 = icmp sle i32 %382, 0
  br i1 %383, label %384, label %409

384:                                              ; preds = %381
  store i32 0, ptr %2, align 4
  br label %385

385:                                              ; preds = %403, %384
  %386 = load i32, ptr %2, align 4
  %387 = icmp sle i32 %386, 1
  br i1 %387, label %388, label %406

388:                                              ; preds = %385
  store i32 0, ptr %3, align 4
  br label %389

389:                                              ; preds = %392, %388
  %390 = load i32, ptr %3, align 4
  %391 = icmp sle i32 %390, 1
  br i1 %391, label %392, label %403

392:                                              ; preds = %389
  %393 = load i32, ptr %1, align 4
  %394 = load i32, ptr %2, align 4
  %395 = mul nsw i32 8, %390
  %396 = add nsw i32 %394, %395
  %397 = mul nsw i32 8, %396
  %398 = add nsw i32 %393, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %399
  store i32 1, ptr %400, align 4
  %401 = load i32, ptr %3, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, ptr %3, align 4
  br label %389, !llvm.loop !52

403:                                              ; preds = %389
  %404 = load i32, ptr %2, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %2, align 4
  br label %385, !llvm.loop !53

406:                                              ; preds = %385
  %407 = load i32, ptr %1, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %1, align 4
  br label %381, !llvm.loop !54

409:                                              ; preds = %381
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %410

410:                                              ; preds = %435, %409
  %411 = load i32, ptr %1, align 4
  %412 = icmp sle i32 %411, 1
  br i1 %412, label %413, label %438

413:                                              ; preds = %410
  store i32 0, ptr %2, align 4
  br label %414

414:                                              ; preds = %432, %413
  %415 = load i32, ptr %2, align 4
  %416 = icmp sle i32 %415, 1
  br i1 %416, label %417, label %435

417:                                              ; preds = %414
  store i32 0, ptr %3, align 4
  br label %418

418:                                              ; preds = %421, %417
  %419 = load i32, ptr %3, align 4
  %420 = icmp sle i32 %419, 1
  br i1 %420, label %421, label %432

421:                                              ; preds = %418
  %422 = load i32, ptr %1, align 4
  %423 = load i32, ptr %2, align 4
  %424 = mul nsw i32 8, %419
  %425 = add nsw i32 %423, %424
  %426 = mul nsw i32 8, %425
  %427 = add nsw i32 %422, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %428
  store i32 1, ptr %429, align 4
  %430 = load i32, ptr %3, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, ptr %3, align 4
  br label %418, !llvm.loop !55

432:                                              ; preds = %418
  %433 = load i32, ptr %2, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, ptr %2, align 4
  br label %414, !llvm.loop !56

435:                                              ; preds = %414
  %436 = load i32, ptr %1, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, ptr %1, align 4
  br label %410, !llvm.loop !57

438:                                              ; preds = %410
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %439 = load i32, ptr %4, align 4
  %440 = call i32 @Fit(i32 noundef 0, i32 noundef %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %438
  %443 = load i32, ptr %4, align 4
  %444 = call i32 @Place(i32 noundef 0, i32 noundef %443)
  store i32 %444, ptr @n, align 4
  br label %447

445:                                              ; preds = %438
  %446 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %447

447:                                              ; preds = %445, %442
  %448 = load i32, ptr @n, align 4
  %449 = call i32 @Trial(i32 noundef %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %458

453:                                              ; preds = %447
  %454 = load i32, ptr @kount, align 4
  %455 = icmp ne i32 %454, 2005
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %458

458:                                              ; preds = %453, %456, %451
  %459 = load i32, ptr @n, align 4
  %460 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %459)
  %461 = load i32, ptr @kount, align 4
  %462 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %461)
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
