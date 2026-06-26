; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_001\output.ll'
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

13:                                               ; preds = %30, %2
  %14 = phi i32 [ %31, %30 ], [ %.promoted, %2 ]
  %15 = icmp sle i32 %14, %10
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

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
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %16
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %14, 1
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %27
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
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %12 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = phi i32 [ %27, %26 ], [ %.promoted, %2 ]
  %15 = icmp sle i32 %14, %10
  br i1 %15, label %16, label %28

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

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %14, 1
  br label %13, !llvm.loop !9

28:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %14, %13 ]
  %.lcssa = phi i64 [ %8, %13 ]
  store i32 %.lcssa2, ptr %6, align 4
  %29 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %5, align 4
  store i32 %35, ptr %6, align 4
  %.promoted3 = load i32, ptr %6, align 4
  br label %36

36:                                               ; preds = %46, %28
  %37 = phi i32 [ %47, %46 ], [ %.promoted3, %28 ]
  %38 = icmp sle i32 %37, 511
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  %.lcssa5 = phi i32 [ %37, %39 ]
  %.lcssa1 = phi i32 [ %37, %39 ]
  store i32 %.lcssa5, ptr %6, align 4
  store i32 %.lcssa1, ptr %3, align 4
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %37, 1
  br label %36, !llvm.loop !10

48:                                               ; preds = %36
  %.lcssa4 = phi i32 [ %37, %36 ]
  store i32 %.lcssa4, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, ptr %3, align 4
  ret i32 %50
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

12:                                               ; preds = %25, %2
  %13 = phi i32 [ %26, %25 ], [ %.promoted, %2 ]
  %14 = icmp sle i32 %13, %9
  br i1 %14, label %15, label %27

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

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %13, 1
  br label %12, !llvm.loop !11

27:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %13, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %.lcssa1, ptr %5, align 4
  %28 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
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

14:                                               ; preds = %201, %13
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %201 ], [ %.promoted11, %13 ]
  %.lcssa410 = phi i32 [ %.lcssa4, %201 ], [ %.promoted9, %13 ]
  %15 = phi i32 [ %202, %201 ], [ %.promoted7, %13 ]
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %203

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %15, 72
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %15, 136
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %15, 200
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = add nsw i32 %15, 264
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %15, 328
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %41
  br i1 false, label %.loopexit, label %53

.loopexit:                                        ; preds = %45, %81, %110, %139, %168
  %.lcssa179.ph = phi i32 [ %15, %168 ], [ %15, %139 ], [ %15, %110 ], [ %15, %81 ], [ %15, %45 ]
  %.lcssa177.ph = phi i32 [ 5, %168 ], [ 4, %139 ], [ 3, %110 ], [ 2, %81 ], [ 1, %45 ]
  br label %46

46:                                               ; preds = %.loopexit, %197
  %.lcssa179 = phi i32 [ %.lcssa182, %197 ], [ %.lcssa179.ph, %.loopexit ]
  %.lcssa177 = phi i32 [ 6, %197 ], [ %.lcssa177.ph, %.loopexit ]
  %47 = add nsw i32 %.lcssa177, 48
  %48 = mul nsw i32 8, %47
  %49 = add nsw i32 %.lcssa179, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %50
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %46
  unreachable

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %15, 80
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %15, 144
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %64
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %15, 208
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %69
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = add nsw i32 %15, 272
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %74
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %15, 336
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %79
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %77
  br i1 false, label %.loopexit, label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = add nsw i32 %15, 88
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = add nsw i32 %15, 152
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %93
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = add nsw i32 %15, 216
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100
  %102 = add nsw i32 %15, 280
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %103
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  %107 = add nsw i32 %15, 344
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %108
  store i32 0, ptr %109, align 4
  br label %110

110:                                              ; preds = %106
  br i1 false, label %.loopexit, label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = add nsw i32 %15, 96
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %117
  store i32 0, ptr %118, align 4
  br label %119

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119
  %121 = add nsw i32 %15, 160
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %122
  store i32 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124
  %126 = add nsw i32 %15, 224
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %127
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129
  %131 = add nsw i32 %15, 288
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %132
  store i32 0, ptr %133, align 4
  br label %134

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134
  %136 = add nsw i32 %15, 352
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %137
  store i32 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %135
  br i1 false, label %.loopexit, label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  %145 = add nsw i32 %15, 104
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %146
  store i32 0, ptr %147, align 4
  br label %148

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148
  %150 = add nsw i32 %15, 168
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %151
  store i32 0, ptr %152, align 4
  br label %153

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153
  %155 = add nsw i32 %15, 232
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %156
  store i32 0, ptr %157, align 4
  br label %158

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158
  %160 = add nsw i32 %15, 296
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %161
  store i32 0, ptr %162, align 4
  br label %163

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %163
  %165 = add nsw i32 %15, 360
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %166
  store i32 0, ptr %167, align 4
  br label %168

168:                                              ; preds = %164
  br i1 false, label %.loopexit, label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  br i1 false, label %171, label %200

171:                                              ; preds = %170
  %.lcssa182 = phi i32 [ %15, %170 ]
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  %174 = add nsw i32 %.lcssa182, 112
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %175
  store i32 0, ptr %176, align 4
  br label %177

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177
  %179 = add nsw i32 %.lcssa182, 176
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %180
  store i32 0, ptr %181, align 4
  br label %182

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182
  %184 = add nsw i32 %.lcssa182, 240
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %185
  store i32 0, ptr %186, align 4
  br label %187

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187
  %189 = add nsw i32 %.lcssa182, 304
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %190
  store i32 0, ptr %191, align 4
  br label %192

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192
  %194 = add nsw i32 %.lcssa182, 368
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %195
  store i32 0, ptr %196, align 4
  br label %197

197:                                              ; preds = %193
  br i1 false, label %46, label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  unreachable

200:                                              ; preds = %170
  %.lcssa26.lcssa = phi i32 [ 6, %170 ]
  %.lcssa4 = phi i32 [ 6, %170 ]
  br label %201

201:                                              ; preds = %200
  %202 = add nsw i32 %15, 1
  br label %14, !llvm.loop !14

203:                                              ; preds = %14
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %14 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %14 ]
  %.lcssa8 = phi i32 [ %15, %14 ]
  store i32 %.lcssa8, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  br label %204

204:                                              ; preds = %229, %203
  %.lcssa1418 = phi i32 [ %.lcssa14, %229 ], [ %.promoted17, %203 ]
  %205 = phi i32 [ %230, %229 ], [ %.promoted15, %203 ]
  %206 = icmp sle i32 %205, 12
  br i1 %206, label %207, label %231

207:                                              ; preds = %204
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %208
  br label %210

210:                                              ; preds = %226, %207
  %211 = phi i32 [ 0, %207 ], [ %227, %226 ]
  br label %212

212:                                              ; preds = %210
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds [512 x i32], ptr %209, i64 0, i64 %213
  store i32 0, ptr %214, align 4
  br label %215

215:                                              ; preds = %212
  %216 = add nuw nsw i32 %211, 1
  br label %217

217:                                              ; preds = %215
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds [512 x i32], ptr %209, i64 0, i64 %218
  store i32 0, ptr %219, align 4
  br label %220

220:                                              ; preds = %217
  %221 = add nuw nsw i32 %211, 2
  %222 = icmp samesign ule i32 %221, 511
  br i1 %222, label %223, label %228

223:                                              ; preds = %220
  %224 = sext i32 %221 to i64
  %225 = getelementptr inbounds [512 x i32], ptr %209, i64 0, i64 %224
  store i32 0, ptr %225, align 4
  br label %226

226:                                              ; preds = %223
  %227 = add nuw nsw i32 %211, 3
  br label %210, !llvm.loop !15

228:                                              ; preds = %220
  %.lcssa14 = phi i32 [ %221, %220 ]
  br label %229

229:                                              ; preds = %228
  %230 = add nsw i32 %205, 1
  br label %204, !llvm.loop !16

231:                                              ; preds = %204
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %204 ]
  %.lcssa16 = phi i32 [ %205, %204 ]
  store i32 %.lcssa16, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  br label %232

232:                                              ; preds = %271, %231
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %271 ], [ %.promoted30, %231 ]
  %.lcssa2229 = phi i32 [ %.lcssa22, %271 ], [ %.promoted28, %231 ]
  %233 = phi i32 [ %272, %271 ], [ %.promoted25, %231 ]
  %234 = icmp sle i32 %233, 3
  br i1 %234, label %235, label %273

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  %240 = sext i32 %233 to i64
  %241 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %240
  store i32 1, ptr %241, align 4
  br label %242

242:                                              ; preds = %239
  br i1 false, label %.loopexit190, label %250

.loopexit190:                                     ; preds = %242, %258
  %.lcssa186.ph = phi i32 [ %233, %258 ], [ %233, %242 ]
  %.lcssa184.ph = phi i32 [ 1, %258 ], [ 0, %242 ]
  br label %243

243:                                              ; preds = %.loopexit190, %267
  %.lcssa186 = phi i32 [ %.lcssa189, %267 ], [ %.lcssa186.ph, %.loopexit190 ]
  %.lcssa184 = phi i32 [ 2, %267 ], [ %.lcssa184.ph, %.loopexit190 ]
  %244 = add nsw i32 %.lcssa184, 8
  %245 = mul nsw i32 8, %244
  %246 = add nsw i32 %.lcssa186, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %247
  store i32 1, ptr %248, align 4
  br label %249

249:                                              ; preds = %243
  unreachable

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  %255 = add nsw i32 %233, 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %256
  store i32 1, ptr %257, align 4
  br label %258

258:                                              ; preds = %254
  br i1 false, label %.loopexit190, label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br i1 false, label %261, label %270

261:                                              ; preds = %260
  %.lcssa189 = phi i32 [ %233, %260 ]
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  %264 = add nsw i32 %.lcssa189, 16
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %265
  store i32 1, ptr %266, align 4
  br label %267

267:                                              ; preds = %263
  br i1 false, label %243, label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  unreachable

270:                                              ; preds = %260
  %.lcssa2024.lcssa = phi i32 [ 1, %260 ]
  %.lcssa22 = phi i32 [ 2, %260 ]
  br label %271

271:                                              ; preds = %270
  %272 = add nsw i32 %233, 1
  br label %232, !llvm.loop !17

273:                                              ; preds = %232
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %232 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %232 ]
  %.lcssa27 = phi i32 [ %233, %232 ]
  store i32 %.lcssa27, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  br label %274

274:                                              ; preds = %334, %273
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %334 ], [ %.promoted42, %273 ]
  %.lcssa3541 = phi i32 [ %.lcssa35, %334 ], [ %.promoted40, %273 ]
  %275 = phi i32 [ %335, %334 ], [ %.promoted38, %273 ]
  %276 = icmp sle i32 %275, 1
  br i1 %276, label %277, label %336

277:                                              ; preds = %274
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  %282 = sext i32 %275 to i64
  %283 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %282
  store i32 1, ptr %283, align 4
  br label %284

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %284
  %286 = add nsw i32 %275, 64
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %287
  store i32 1, ptr %288, align 4
  br label %289

289:                                              ; preds = %285
  br label %290

290:                                              ; preds = %289
  %291 = add nsw i32 %275, 128
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %292
  store i32 1, ptr %293, align 4
  br label %294

294:                                              ; preds = %290
  br label %295

295:                                              ; preds = %294
  %296 = add nsw i32 %275, 192
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %297
  store i32 1, ptr %298, align 4
  br label %299

299:                                              ; preds = %295
  br i1 false, label %.loopexit198, label %307

.loopexit198:                                     ; preds = %299
  %.lcssa194.ph = phi i32 [ %275, %299 ]
  %.lcssa192.ph = phi i32 [ 0, %299 ]
  br label %300

300:                                              ; preds = %.loopexit198, %330
  %.lcssa194 = phi i32 [ %.lcssa196, %330 ], [ %.lcssa194.ph, %.loopexit198 ]
  %.lcssa192 = phi i32 [ 1, %330 ], [ %.lcssa192.ph, %.loopexit198 ]
  %301 = add nsw i32 %.lcssa192, 32
  %302 = mul nsw i32 8, %301
  %303 = add nsw i32 %.lcssa194, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %304
  store i32 1, ptr %305, align 4
  br label %306

306:                                              ; preds = %300
  unreachable

307:                                              ; preds = %299
  br label %308

308:                                              ; preds = %307
  br i1 false, label %309, label %333

309:                                              ; preds = %308
  %.lcssa196 = phi i32 [ %275, %308 ]
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  %312 = add nsw i32 %.lcssa196, 8
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %313
  store i32 1, ptr %314, align 4
  br label %315

315:                                              ; preds = %311
  br label %316

316:                                              ; preds = %315
  %317 = add nsw i32 %.lcssa196, 72
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %318
  store i32 1, ptr %319, align 4
  br label %320

320:                                              ; preds = %316
  br label %321

321:                                              ; preds = %320
  %322 = add nsw i32 %.lcssa196, 136
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %323
  store i32 1, ptr %324, align 4
  br label %325

325:                                              ; preds = %321
  br label %326

326:                                              ; preds = %325
  %327 = add nsw i32 %.lcssa196, 200
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %328
  store i32 1, ptr %329, align 4
  br label %330

330:                                              ; preds = %326
  br i1 false, label %300, label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  unreachable

333:                                              ; preds = %308
  %.lcssa3337.lcssa = phi i32 [ 4, %308 ]
  %.lcssa35 = phi i32 [ 1, %308 ]
  br label %334

334:                                              ; preds = %333
  %335 = add nsw i32 %275, 1
  br label %274, !llvm.loop !18

336:                                              ; preds = %274
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %274 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %274 ]
  %.lcssa39 = phi i32 [ %275, %274 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  br label %337

337:                                              ; preds = %419, %336
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %419 ], [ %.promoted54, %336 ]
  %.lcssa4753 = phi i32 [ %.lcssa47, %419 ], [ %.promoted52, %336 ]
  %338 = phi i32 [ %420, %419 ], [ %.promoted50, %336 ]
  %339 = icmp sle i32 %338, 0
  br i1 %339, label %340, label %421

340:                                              ; preds = %337
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343
  %345 = sext i32 %338 to i64
  %346 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %345
  store i32 1, ptr %346, align 4
  br label %347

347:                                              ; preds = %344
  br label %348

348:                                              ; preds = %347
  %349 = add nsw i32 %338, 64
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %350
  store i32 1, ptr %351, align 4
  br label %352

352:                                              ; preds = %348
  br i1 false, label %.loopexit206, label %360

.loopexit206:                                     ; preds = %352, %373, %387, %401
  %.lcssa202.ph = phi i32 [ %338, %401 ], [ %338, %387 ], [ %338, %373 ], [ %338, %352 ]
  %.lcssa200.ph = phi i32 [ 3, %401 ], [ 2, %387 ], [ 1, %373 ], [ 0, %352 ]
  br label %353

353:                                              ; preds = %.loopexit206, %415
  %.lcssa202 = phi i32 [ %.lcssa205, %415 ], [ %.lcssa202.ph, %.loopexit206 ]
  %.lcssa200 = phi i32 [ 4, %415 ], [ %.lcssa200.ph, %.loopexit206 ]
  %354 = add nsw i32 %.lcssa200, 16
  %355 = mul nsw i32 8, %354
  %356 = add nsw i32 %.lcssa202, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %357
  store i32 1, ptr %358, align 4
  br label %359

359:                                              ; preds = %353
  unreachable

360:                                              ; preds = %352
  br label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  %365 = add nsw i32 %338, 8
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %366
  store i32 1, ptr %367, align 4
  br label %368

368:                                              ; preds = %364
  br label %369

369:                                              ; preds = %368
  %370 = add nsw i32 %338, 72
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %371
  store i32 1, ptr %372, align 4
  br label %373

373:                                              ; preds = %369
  br i1 false, label %.loopexit206, label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  %379 = add nsw i32 %338, 16
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %380
  store i32 1, ptr %381, align 4
  br label %382

382:                                              ; preds = %378
  br label %383

383:                                              ; preds = %382
  %384 = add nsw i32 %338, 80
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %385
  store i32 1, ptr %386, align 4
  br label %387

387:                                              ; preds = %383
  br i1 false, label %.loopexit206, label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  %393 = add nsw i32 %338, 24
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %394
  store i32 1, ptr %395, align 4
  br label %396

396:                                              ; preds = %392
  br label %397

397:                                              ; preds = %396
  %398 = add nsw i32 %338, 88
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %399
  store i32 1, ptr %400, align 4
  br label %401

401:                                              ; preds = %397
  br i1 false, label %.loopexit206, label %402

402:                                              ; preds = %401
  br label %403

403:                                              ; preds = %402
  br i1 false, label %404, label %418

404:                                              ; preds = %403
  %.lcssa205 = phi i32 [ %338, %403 ]
  br label %405

405:                                              ; preds = %404
  br label %406

406:                                              ; preds = %405
  %407 = add nsw i32 %.lcssa205, 32
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %408
  store i32 1, ptr %409, align 4
  br label %410

410:                                              ; preds = %406
  br label %411

411:                                              ; preds = %410
  %412 = add nsw i32 %.lcssa205, 96
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %413
  store i32 1, ptr %414, align 4
  br label %415

415:                                              ; preds = %411
  br i1 false, label %353, label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  unreachable

418:                                              ; preds = %403
  %.lcssa4549.lcssa = phi i32 [ 2, %403 ]
  %.lcssa47 = phi i32 [ 4, %403 ]
  br label %419

419:                                              ; preds = %418
  %420 = add nsw i32 %338, 1
  br label %337, !llvm.loop !19

421:                                              ; preds = %337
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %337 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %337 ]
  %.lcssa51 = phi i32 [ %338, %337 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  br label %422

422:                                              ; preds = %479, %421
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %479 ], [ %.promoted66, %421 ]
  %.lcssa5965 = phi i32 [ %.lcssa59, %479 ], [ %.promoted64, %421 ]
  %423 = phi i32 [ %480, %479 ], [ %.promoted62, %421 ]
  %424 = icmp sle i32 %423, 1
  br i1 %424, label %425, label %481

425:                                              ; preds = %422
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  %430 = sext i32 %423 to i64
  %431 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %430
  store i32 1, ptr %431, align 4
  br label %432

432:                                              ; preds = %429
  br i1 false, label %.loopexit214, label %440

.loopexit214:                                     ; preds = %432, %448, %457, %466
  %.lcssa210.ph = phi i32 [ %423, %466 ], [ %423, %457 ], [ %423, %448 ], [ %423, %432 ]
  %.lcssa208.ph = phi i32 [ 3, %466 ], [ 2, %457 ], [ 1, %448 ], [ 0, %432 ]
  br label %433

433:                                              ; preds = %.loopexit214, %475
  %.lcssa210 = phi i32 [ %.lcssa213, %475 ], [ %.lcssa210.ph, %.loopexit214 ]
  %.lcssa208 = phi i32 [ 4, %475 ], [ %.lcssa208.ph, %.loopexit214 ]
  %434 = add nsw i32 %.lcssa208, 8
  %435 = mul nsw i32 8, %434
  %436 = add nsw i32 %.lcssa210, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %437
  store i32 1, ptr %438, align 4
  br label %439

439:                                              ; preds = %433
  unreachable

440:                                              ; preds = %432
  br label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443
  %445 = add nsw i32 %423, 8
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %446
  store i32 1, ptr %447, align 4
  br label %448

448:                                              ; preds = %444
  br i1 false, label %.loopexit214, label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  br label %453

453:                                              ; preds = %452
  %454 = add nsw i32 %423, 16
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %455
  store i32 1, ptr %456, align 4
  br label %457

457:                                              ; preds = %453
  br i1 false, label %.loopexit214, label %458

458:                                              ; preds = %457
  br label %459

459:                                              ; preds = %458
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  br label %462

462:                                              ; preds = %461
  %463 = add nsw i32 %423, 24
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %464
  store i32 1, ptr %465, align 4
  br label %466

466:                                              ; preds = %462
  br i1 false, label %.loopexit214, label %467

467:                                              ; preds = %466
  br label %468

468:                                              ; preds = %467
  br i1 false, label %469, label %478

469:                                              ; preds = %468
  %.lcssa213 = phi i32 [ %423, %468 ]
  br label %470

470:                                              ; preds = %469
  br label %471

471:                                              ; preds = %470
  %472 = add nsw i32 %.lcssa213, 32
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %473
  store i32 1, ptr %474, align 4
  br label %475

475:                                              ; preds = %471
  br i1 false, label %433, label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  unreachable

478:                                              ; preds = %468
  %.lcssa5761.lcssa = phi i32 [ 1, %468 ]
  %.lcssa59 = phi i32 [ 4, %468 ]
  br label %479

479:                                              ; preds = %478
  %480 = add nsw i32 %423, 1
  br label %422, !llvm.loop !20

481:                                              ; preds = %422
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %422 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %422 ]
  %.lcssa63 = phi i32 [ %423, %422 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  br label %482

482:                                              ; preds = %522, %481
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %522 ], [ %.promoted78, %481 ]
  %.lcssa7177 = phi i32 [ %.lcssa71, %522 ], [ %.promoted76, %481 ]
  %483 = phi i32 [ %523, %522 ], [ %.promoted74, %481 ]
  %484 = icmp sle i32 %483, 3
  br i1 %484, label %485, label %524

485:                                              ; preds = %482
  br label %486

486:                                              ; preds = %485
  br label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  %490 = sext i32 %483 to i64
  %491 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %490
  store i32 1, ptr %491, align 4
  br label %492

492:                                              ; preds = %489
  br label %493

493:                                              ; preds = %492
  %494 = add nsw i32 %483, 64
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %495
  store i32 1, ptr %496, align 4
  br label %497

497:                                              ; preds = %493
  br i1 false, label %.loopexit222, label %505

.loopexit222:                                     ; preds = %497
  %.lcssa218.ph = phi i32 [ %483, %497 ]
  %.lcssa216.ph = phi i32 [ 0, %497 ]
  br label %498

498:                                              ; preds = %.loopexit222, %518
  %.lcssa218 = phi i32 [ %.lcssa220, %518 ], [ %.lcssa218.ph, %.loopexit222 ]
  %.lcssa216 = phi i32 [ 1, %518 ], [ %.lcssa216.ph, %.loopexit222 ]
  %499 = add nsw i32 %.lcssa216, 16
  %500 = mul nsw i32 8, %499
  %501 = add nsw i32 %.lcssa218, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %502
  store i32 1, ptr %503, align 4
  br label %504

504:                                              ; preds = %498
  unreachable

505:                                              ; preds = %497
  br label %506

506:                                              ; preds = %505
  br i1 false, label %507, label %521

507:                                              ; preds = %506
  %.lcssa220 = phi i32 [ %483, %506 ]
  br label %508

508:                                              ; preds = %507
  br label %509

509:                                              ; preds = %508
  %510 = add nsw i32 %.lcssa220, 8
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %511
  store i32 1, ptr %512, align 4
  br label %513

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %513
  %515 = add nsw i32 %.lcssa220, 72
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %516
  store i32 1, ptr %517, align 4
  br label %518

518:                                              ; preds = %514
  br i1 false, label %498, label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  unreachable

521:                                              ; preds = %506
  %.lcssa6973.lcssa = phi i32 [ 2, %506 ]
  %.lcssa71 = phi i32 [ 1, %506 ]
  br label %522

522:                                              ; preds = %521
  %523 = add nsw i32 %483, 1
  br label %482, !llvm.loop !21

524:                                              ; preds = %482
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %482 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %482 ]
  %.lcssa75 = phi i32 [ %483, %482 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  br label %525

525:                                              ; preds = %609, %524
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %609 ], [ %.promoted90, %524 ]
  %.lcssa8389 = phi i32 [ %.lcssa83, %609 ], [ %.promoted88, %524 ]
  %526 = phi i32 [ %610, %609 ], [ %.promoted86, %524 ]
  %527 = icmp sle i32 %526, 0
  br i1 %527, label %528, label %611

528:                                              ; preds = %525
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  br label %532

532:                                              ; preds = %531
  %533 = sext i32 %526 to i64
  %534 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %533
  store i32 1, ptr %534, align 4
  br label %535

535:                                              ; preds = %532
  br label %536

536:                                              ; preds = %535
  %537 = add nsw i32 %526, 64
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %538
  store i32 1, ptr %539, align 4
  br label %540

540:                                              ; preds = %536
  br label %541

541:                                              ; preds = %540
  %542 = add nsw i32 %526, 128
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %543
  store i32 1, ptr %544, align 4
  br label %545

545:                                              ; preds = %541
  br label %546

546:                                              ; preds = %545
  %547 = add nsw i32 %526, 192
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %548
  store i32 1, ptr %549, align 4
  br label %550

550:                                              ; preds = %546
  br i1 false, label %.loopexit230, label %558

.loopexit230:                                     ; preds = %550, %581
  %.lcssa226.ph = phi i32 [ %526, %581 ], [ %526, %550 ]
  %.lcssa224.ph = phi i32 [ 1, %581 ], [ 0, %550 ]
  br label %551

551:                                              ; preds = %.loopexit230, %605
  %.lcssa226 = phi i32 [ %.lcssa229, %605 ], [ %.lcssa226.ph, %.loopexit230 ]
  %.lcssa224 = phi i32 [ 2, %605 ], [ %.lcssa224.ph, %.loopexit230 ]
  %552 = add nsw i32 %.lcssa224, 32
  %553 = mul nsw i32 8, %552
  %554 = add nsw i32 %.lcssa226, %553
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %555
  store i32 1, ptr %556, align 4
  br label %557

557:                                              ; preds = %551
  unreachable

558:                                              ; preds = %550
  br label %559

559:                                              ; preds = %558
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560
  br label %562

562:                                              ; preds = %561
  %563 = add nsw i32 %526, 8
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %564
  store i32 1, ptr %565, align 4
  br label %566

566:                                              ; preds = %562
  br label %567

567:                                              ; preds = %566
  %568 = add nsw i32 %526, 72
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %569
  store i32 1, ptr %570, align 4
  br label %571

571:                                              ; preds = %567
  br label %572

572:                                              ; preds = %571
  %573 = add nsw i32 %526, 136
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %574
  store i32 1, ptr %575, align 4
  br label %576

576:                                              ; preds = %572
  br label %577

577:                                              ; preds = %576
  %578 = add nsw i32 %526, 200
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %579
  store i32 1, ptr %580, align 4
  br label %581

581:                                              ; preds = %577
  br i1 false, label %.loopexit230, label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  br i1 false, label %584, label %608

584:                                              ; preds = %583
  %.lcssa229 = phi i32 [ %526, %583 ]
  br label %585

585:                                              ; preds = %584
  br label %586

586:                                              ; preds = %585
  %587 = add nsw i32 %.lcssa229, 16
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %588
  store i32 1, ptr %589, align 4
  br label %590

590:                                              ; preds = %586
  br label %591

591:                                              ; preds = %590
  %592 = add nsw i32 %.lcssa229, 80
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %593
  store i32 1, ptr %594, align 4
  br label %595

595:                                              ; preds = %591
  br label %596

596:                                              ; preds = %595
  %597 = add nsw i32 %.lcssa229, 144
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %598
  store i32 1, ptr %599, align 4
  br label %600

600:                                              ; preds = %596
  br label %601

601:                                              ; preds = %600
  %602 = add nsw i32 %.lcssa229, 208
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %603
  store i32 1, ptr %604, align 4
  br label %605

605:                                              ; preds = %601
  br i1 false, label %551, label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  unreachable

608:                                              ; preds = %583
  %.lcssa8185.lcssa = phi i32 [ 4, %583 ]
  %.lcssa83 = phi i32 [ 2, %583 ]
  br label %609

609:                                              ; preds = %608
  %610 = add nsw i32 %526, 1
  br label %525, !llvm.loop !22

611:                                              ; preds = %525
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %525 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %525 ]
  %.lcssa87 = phi i32 [ %526, %525 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  br label %612

612:                                              ; preds = %642, %611
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %642 ], [ %.promoted102, %611 ]
  %.lcssa95101 = phi i32 [ %.lcssa95, %642 ], [ %.promoted100, %611 ]
  %613 = phi i32 [ %643, %642 ], [ %.promoted98, %611 ]
  %614 = icmp sle i32 %613, 2
  br i1 %614, label %615, label %644

615:                                              ; preds = %612
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  %620 = sext i32 %613 to i64
  %621 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %620
  store i32 1, ptr %621, align 4
  br label %622

622:                                              ; preds = %619
  br i1 false, label %.loopexit238, label %630

.loopexit238:                                     ; preds = %622
  %.lcssa234.ph = phi i32 [ %613, %622 ]
  %.lcssa232.ph = phi i32 [ 0, %622 ]
  br label %623

623:                                              ; preds = %.loopexit238, %638
  %.lcssa234 = phi i32 [ %.lcssa236, %638 ], [ %.lcssa234.ph, %.loopexit238 ]
  %.lcssa232 = phi i32 [ 1, %638 ], [ %.lcssa232.ph, %.loopexit238 ]
  %624 = add nsw i32 %.lcssa232, 8
  %625 = mul nsw i32 8, %624
  %626 = add nsw i32 %.lcssa234, %625
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %627
  store i32 1, ptr %628, align 4
  br label %629

629:                                              ; preds = %623
  unreachable

630:                                              ; preds = %622
  br label %631

631:                                              ; preds = %630
  br i1 false, label %632, label %641

632:                                              ; preds = %631
  %.lcssa236 = phi i32 [ %613, %631 ]
  br label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  %635 = add nsw i32 %.lcssa236, 8
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %636
  store i32 1, ptr %637, align 4
  br label %638

638:                                              ; preds = %634
  br i1 false, label %623, label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639
  unreachable

641:                                              ; preds = %631
  %.lcssa9397.lcssa = phi i32 [ 1, %631 ]
  %.lcssa95 = phi i32 [ 1, %631 ]
  br label %642

642:                                              ; preds = %641
  %643 = add nsw i32 %613, 1
  br label %612, !llvm.loop !23

644:                                              ; preds = %612
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %612 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %612 ]
  %.lcssa99 = phi i32 [ %613, %612 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  br label %645

645:                                              ; preds = %693, %644
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %693 ], [ %.promoted114, %644 ]
  %.lcssa107113 = phi i32 [ %.lcssa107, %693 ], [ %.promoted112, %644 ]
  %646 = phi i32 [ %694, %693 ], [ %.promoted110, %644 ]
  %647 = icmp sle i32 %646, 0
  br i1 %647, label %648, label %695

648:                                              ; preds = %645
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  %653 = sext i32 %646 to i64
  %654 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %653
  store i32 1, ptr %654, align 4
  br label %655

655:                                              ; preds = %652
  br i1 false, label %.loopexit246, label %663

.loopexit246:                                     ; preds = %655, %671, %680
  %.lcssa242.ph = phi i32 [ %646, %680 ], [ %646, %671 ], [ %646, %655 ]
  %.lcssa240.ph = phi i32 [ 2, %680 ], [ 1, %671 ], [ 0, %655 ]
  br label %656

656:                                              ; preds = %.loopexit246, %689
  %.lcssa242 = phi i32 [ %.lcssa245, %689 ], [ %.lcssa242.ph, %.loopexit246 ]
  %.lcssa240 = phi i32 [ 3, %689 ], [ %.lcssa240.ph, %.loopexit246 ]
  %657 = add nsw i32 %.lcssa240, 8
  %658 = mul nsw i32 8, %657
  %659 = add nsw i32 %.lcssa242, %658
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %660
  store i32 1, ptr %661, align 4
  br label %662

662:                                              ; preds = %656
  unreachable

663:                                              ; preds = %655
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  br label %666

666:                                              ; preds = %665
  br label %667

667:                                              ; preds = %666
  %668 = add nsw i32 %646, 8
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %669
  store i32 1, ptr %670, align 4
  br label %671

671:                                              ; preds = %667
  br i1 false, label %.loopexit246, label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  %677 = add nsw i32 %646, 16
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %678
  store i32 1, ptr %679, align 4
  br label %680

680:                                              ; preds = %676
  br i1 false, label %.loopexit246, label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br i1 false, label %683, label %692

683:                                              ; preds = %682
  %.lcssa245 = phi i32 [ %646, %682 ]
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  %686 = add nsw i32 %.lcssa245, 24
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %687
  store i32 1, ptr %688, align 4
  br label %689

689:                                              ; preds = %685
  br i1 false, label %656, label %690

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  unreachable

692:                                              ; preds = %682
  %.lcssa105109.lcssa = phi i32 [ 1, %682 ]
  %.lcssa107 = phi i32 [ 3, %682 ]
  br label %693

693:                                              ; preds = %692
  %694 = add nsw i32 %646, 1
  br label %645, !llvm.loop !24

695:                                              ; preds = %645
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %645 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %645 ]
  %.lcssa111 = phi i32 [ %646, %645 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  br label %696

696:                                              ; preds = %746, %695
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %746 ], [ %.promoted126, %695 ]
  %.lcssa119125 = phi i32 [ %.lcssa119, %746 ], [ %.promoted124, %695 ]
  %697 = phi i32 [ %747, %746 ], [ %.promoted122, %695 ]
  %698 = icmp sle i32 %697, 0
  br i1 %698, label %699, label %748

699:                                              ; preds = %696
  br label %700

700:                                              ; preds = %699
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701
  br label %703

703:                                              ; preds = %702
  %704 = sext i32 %697 to i64
  %705 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %704
  store i32 1, ptr %705, align 4
  br label %706

706:                                              ; preds = %703
  br label %707

707:                                              ; preds = %706
  %708 = add nsw i32 %697, 64
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %709
  store i32 1, ptr %710, align 4
  br label %711

711:                                              ; preds = %707
  br label %712

712:                                              ; preds = %711
  %713 = add nsw i32 %697, 128
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %714
  store i32 1, ptr %715, align 4
  br label %716

716:                                              ; preds = %712
  br i1 false, label %.loopexit254, label %724

.loopexit254:                                     ; preds = %716
  %.lcssa250.ph = phi i32 [ %697, %716 ]
  %.lcssa248.ph = phi i32 [ 0, %716 ]
  br label %717

717:                                              ; preds = %.loopexit254, %742
  %.lcssa250 = phi i32 [ %.lcssa252, %742 ], [ %.lcssa250.ph, %.loopexit254 ]
  %.lcssa248 = phi i32 [ 1, %742 ], [ %.lcssa248.ph, %.loopexit254 ]
  %718 = add nsw i32 %.lcssa248, 24
  %719 = mul nsw i32 8, %718
  %720 = add nsw i32 %.lcssa250, %719
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %721
  store i32 1, ptr %722, align 4
  br label %723

723:                                              ; preds = %717
  unreachable

724:                                              ; preds = %716
  br label %725

725:                                              ; preds = %724
  br i1 false, label %726, label %745

726:                                              ; preds = %725
  %.lcssa252 = phi i32 [ %697, %725 ]
  br label %727

727:                                              ; preds = %726
  br label %728

728:                                              ; preds = %727
  %729 = add nsw i32 %.lcssa252, 8
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %730
  store i32 1, ptr %731, align 4
  br label %732

732:                                              ; preds = %728
  br label %733

733:                                              ; preds = %732
  %734 = add nsw i32 %.lcssa252, 72
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %735
  store i32 1, ptr %736, align 4
  br label %737

737:                                              ; preds = %733
  br label %738

738:                                              ; preds = %737
  %739 = add nsw i32 %.lcssa252, 136
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %740
  store i32 1, ptr %741, align 4
  br label %742

742:                                              ; preds = %738
  br i1 false, label %717, label %743

743:                                              ; preds = %742
  br label %744

744:                                              ; preds = %743
  unreachable

745:                                              ; preds = %725
  %.lcssa117121.lcssa = phi i32 [ 3, %725 ]
  %.lcssa119 = phi i32 [ 1, %725 ]
  br label %746

746:                                              ; preds = %745
  %747 = add nsw i32 %697, 1
  br label %696, !llvm.loop !25

748:                                              ; preds = %696
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %696 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %696 ]
  %.lcssa123 = phi i32 [ %697, %696 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  br label %749

749:                                              ; preds = %788, %748
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %788 ], [ %.promoted138, %748 ]
  %.lcssa131137 = phi i32 [ %.lcssa131, %788 ], [ %.promoted136, %748 ]
  %750 = phi i32 [ %789, %788 ], [ %.promoted134, %748 ]
  %751 = icmp sle i32 %750, 1
  br i1 %751, label %752, label %790

752:                                              ; preds = %749
  br label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  br label %755

755:                                              ; preds = %754
  br label %756

756:                                              ; preds = %755
  %757 = sext i32 %750 to i64
  %758 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %757
  store i32 1, ptr %758, align 4
  br label %759

759:                                              ; preds = %756
  br i1 false, label %.loopexit262, label %767

.loopexit262:                                     ; preds = %759, %775
  %.lcssa258.ph = phi i32 [ %750, %775 ], [ %750, %759 ]
  %.lcssa256.ph = phi i32 [ 1, %775 ], [ 0, %759 ]
  br label %760

760:                                              ; preds = %.loopexit262, %784
  %.lcssa258 = phi i32 [ %.lcssa261, %784 ], [ %.lcssa258.ph, %.loopexit262 ]
  %.lcssa256 = phi i32 [ 2, %784 ], [ %.lcssa256.ph, %.loopexit262 ]
  %761 = add nsw i32 %.lcssa256, 8
  %762 = mul nsw i32 8, %761
  %763 = add nsw i32 %.lcssa258, %762
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %764
  store i32 1, ptr %765, align 4
  br label %766

766:                                              ; preds = %760
  unreachable

767:                                              ; preds = %759
  br label %768

768:                                              ; preds = %767
  br label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  %772 = add nsw i32 %750, 8
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %773
  store i32 1, ptr %774, align 4
  br label %775

775:                                              ; preds = %771
  br i1 false, label %.loopexit262, label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  br i1 false, label %778, label %787

778:                                              ; preds = %777
  %.lcssa261 = phi i32 [ %750, %777 ]
  br label %779

779:                                              ; preds = %778
  br label %780

780:                                              ; preds = %779
  %781 = add nsw i32 %.lcssa261, 16
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %782
  store i32 1, ptr %783, align 4
  br label %784

784:                                              ; preds = %780
  br i1 false, label %760, label %785

785:                                              ; preds = %784
  br label %786

786:                                              ; preds = %785
  unreachable

787:                                              ; preds = %777
  %.lcssa129133.lcssa = phi i32 [ 1, %777 ]
  %.lcssa131 = phi i32 [ 2, %777 ]
  br label %788

788:                                              ; preds = %787
  %789 = add nsw i32 %750, 1
  br label %749, !llvm.loop !26

790:                                              ; preds = %749
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %749 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %749 ]
  %.lcssa135 = phi i32 [ %750, %749 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  br label %791

791:                                              ; preds = %831, %790
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %831 ], [ %.promoted150, %790 ]
  %.lcssa143149 = phi i32 [ %.lcssa143, %831 ], [ %.promoted148, %790 ]
  %792 = phi i32 [ %832, %831 ], [ %.promoted146, %790 ]
  %793 = icmp sle i32 %792, 1
  br i1 %793, label %794, label %833

794:                                              ; preds = %791
  br label %795

795:                                              ; preds = %794
  br label %796

796:                                              ; preds = %795
  br label %797

797:                                              ; preds = %796
  br label %798

798:                                              ; preds = %797
  %799 = sext i32 %792 to i64
  %800 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %799
  store i32 1, ptr %800, align 4
  br label %801

801:                                              ; preds = %798
  br label %802

802:                                              ; preds = %801
  %803 = add nsw i32 %792, 64
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %804
  store i32 1, ptr %805, align 4
  br label %806

806:                                              ; preds = %802
  br i1 false, label %.loopexit270, label %814

.loopexit270:                                     ; preds = %806
  %.lcssa266.ph = phi i32 [ %792, %806 ]
  %.lcssa264.ph = phi i32 [ 0, %806 ]
  br label %807

807:                                              ; preds = %.loopexit270, %827
  %.lcssa266 = phi i32 [ %.lcssa268, %827 ], [ %.lcssa266.ph, %.loopexit270 ]
  %.lcssa264 = phi i32 [ 1, %827 ], [ %.lcssa264.ph, %.loopexit270 ]
  %808 = add nsw i32 %.lcssa264, 16
  %809 = mul nsw i32 8, %808
  %810 = add nsw i32 %.lcssa266, %809
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %811
  store i32 1, ptr %812, align 4
  br label %813

813:                                              ; preds = %807
  unreachable

814:                                              ; preds = %806
  br label %815

815:                                              ; preds = %814
  br i1 false, label %816, label %830

816:                                              ; preds = %815
  %.lcssa268 = phi i32 [ %792, %815 ]
  br label %817

817:                                              ; preds = %816
  br label %818

818:                                              ; preds = %817
  %819 = add nsw i32 %.lcssa268, 8
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %820
  store i32 1, ptr %821, align 4
  br label %822

822:                                              ; preds = %818
  br label %823

823:                                              ; preds = %822
  %824 = add nsw i32 %.lcssa268, 72
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %825
  store i32 1, ptr %826, align 4
  br label %827

827:                                              ; preds = %823
  br i1 false, label %807, label %828

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  unreachable

830:                                              ; preds = %815
  %.lcssa141145.lcssa = phi i32 [ 2, %815 ]
  %.lcssa143 = phi i32 [ 1, %815 ]
  br label %831

831:                                              ; preds = %830
  %832 = add nsw i32 %792, 1
  br label %791, !llvm.loop !27

833:                                              ; preds = %791
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %791 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %791 ]
  %.lcssa147 = phi i32 [ %792, %791 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  br label %834

834:                                              ; preds = %888, %833
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %888 ], [ %.promoted162, %833 ]
  %.lcssa155161 = phi i32 [ %.lcssa155, %888 ], [ %.promoted160, %833 ]
  %835 = phi i32 [ %889, %888 ], [ %.promoted158, %833 ]
  %836 = icmp sle i32 %835, 0
  br i1 %836, label %837, label %890

837:                                              ; preds = %834
  br label %838

838:                                              ; preds = %837
  br label %839

839:                                              ; preds = %838
  br label %840

840:                                              ; preds = %839
  br label %841

841:                                              ; preds = %840
  %842 = sext i32 %835 to i64
  %843 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %842
  store i32 1, ptr %843, align 4
  br label %844

844:                                              ; preds = %841
  br label %845

845:                                              ; preds = %844
  %846 = add nsw i32 %835, 64
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %847
  store i32 1, ptr %848, align 4
  br label %849

849:                                              ; preds = %845
  br i1 false, label %.loopexit278, label %857

.loopexit278:                                     ; preds = %849, %870
  %.lcssa274.ph = phi i32 [ %835, %870 ], [ %835, %849 ]
  %.lcssa272.ph = phi i32 [ 1, %870 ], [ 0, %849 ]
  br label %850

850:                                              ; preds = %.loopexit278, %884
  %.lcssa274 = phi i32 [ %.lcssa277, %884 ], [ %.lcssa274.ph, %.loopexit278 ]
  %.lcssa272 = phi i32 [ 2, %884 ], [ %.lcssa272.ph, %.loopexit278 ]
  %851 = add nsw i32 %.lcssa272, 16
  %852 = mul nsw i32 8, %851
  %853 = add nsw i32 %.lcssa274, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %854
  store i32 1, ptr %855, align 4
  br label %856

856:                                              ; preds = %850
  unreachable

857:                                              ; preds = %849
  br label %858

858:                                              ; preds = %857
  br label %859

859:                                              ; preds = %858
  br label %860

860:                                              ; preds = %859
  br label %861

861:                                              ; preds = %860
  %862 = add nsw i32 %835, 8
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %863
  store i32 1, ptr %864, align 4
  br label %865

865:                                              ; preds = %861
  br label %866

866:                                              ; preds = %865
  %867 = add nsw i32 %835, 72
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %868
  store i32 1, ptr %869, align 4
  br label %870

870:                                              ; preds = %866
  br i1 false, label %.loopexit278, label %871

871:                                              ; preds = %870
  br label %872

872:                                              ; preds = %871
  br i1 false, label %873, label %887

873:                                              ; preds = %872
  %.lcssa277 = phi i32 [ %835, %872 ]
  br label %874

874:                                              ; preds = %873
  br label %875

875:                                              ; preds = %874
  %876 = add nsw i32 %.lcssa277, 16
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %877
  store i32 1, ptr %878, align 4
  br label %879

879:                                              ; preds = %875
  br label %880

880:                                              ; preds = %879
  %881 = add nsw i32 %.lcssa277, 80
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %882
  store i32 1, ptr %883, align 4
  br label %884

884:                                              ; preds = %880
  br i1 false, label %850, label %885

885:                                              ; preds = %884
  br label %886

886:                                              ; preds = %885
  unreachable

887:                                              ; preds = %872
  %.lcssa153157.lcssa = phi i32 [ 2, %872 ]
  %.lcssa155 = phi i32 [ 2, %872 ]
  br label %888

888:                                              ; preds = %887
  %889 = add nsw i32 %835, 1
  br label %834, !llvm.loop !28

890:                                              ; preds = %834
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %834 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %834 ]
  %.lcssa159 = phi i32 [ %835, %834 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  br label %891

891:                                              ; preds = %945, %890
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %945 ], [ %.promoted174, %890 ]
  %.lcssa167173 = phi i32 [ %.lcssa167, %945 ], [ %.promoted172, %890 ]
  %892 = phi i32 [ %946, %945 ], [ %.promoted170, %890 ]
  %893 = icmp sle i32 %892, 1
  br i1 %893, label %894, label %947

894:                                              ; preds = %891
  br label %895

895:                                              ; preds = %894
  br label %896

896:                                              ; preds = %895
  br label %897

897:                                              ; preds = %896
  br label %898

898:                                              ; preds = %897
  %899 = sext i32 %892 to i64
  %900 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %899
  store i32 1, ptr %900, align 4
  br label %901

901:                                              ; preds = %898
  br label %902

902:                                              ; preds = %901
  %903 = add nsw i32 %892, 64
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %904
  store i32 1, ptr %905, align 4
  br label %906

906:                                              ; preds = %902
  br i1 false, label %.loopexit286, label %914

.loopexit286:                                     ; preds = %906, %927
  %.lcssa282.ph = phi i32 [ %892, %927 ], [ %892, %906 ]
  %.lcssa280.ph = phi i32 [ 1, %927 ], [ 0, %906 ]
  br label %907

907:                                              ; preds = %.loopexit286, %941
  %.lcssa282 = phi i32 [ %.lcssa285, %941 ], [ %.lcssa282.ph, %.loopexit286 ]
  %.lcssa280 = phi i32 [ 2, %941 ], [ %.lcssa280.ph, %.loopexit286 ]
  %908 = add nsw i32 %.lcssa280, 16
  %909 = mul nsw i32 8, %908
  %910 = add nsw i32 %.lcssa282, %909
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %911
  store i32 1, ptr %912, align 4
  br label %913

913:                                              ; preds = %907
  unreachable

914:                                              ; preds = %906
  br label %915

915:                                              ; preds = %914
  br label %916

916:                                              ; preds = %915
  br label %917

917:                                              ; preds = %916
  br label %918

918:                                              ; preds = %917
  %919 = add nsw i32 %892, 8
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %920
  store i32 1, ptr %921, align 4
  br label %922

922:                                              ; preds = %918
  br label %923

923:                                              ; preds = %922
  %924 = add nsw i32 %892, 72
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %925
  store i32 1, ptr %926, align 4
  br label %927

927:                                              ; preds = %923
  br i1 false, label %.loopexit286, label %928

928:                                              ; preds = %927
  br label %929

929:                                              ; preds = %928
  br i1 false, label %930, label %944

930:                                              ; preds = %929
  %.lcssa285 = phi i32 [ %892, %929 ]
  br label %931

931:                                              ; preds = %930
  br label %932

932:                                              ; preds = %931
  %933 = add nsw i32 %.lcssa285, 16
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %934
  store i32 1, ptr %935, align 4
  br label %936

936:                                              ; preds = %932
  br label %937

937:                                              ; preds = %936
  %938 = add nsw i32 %.lcssa285, 80
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %939
  store i32 1, ptr %940, align 4
  br label %941

941:                                              ; preds = %937
  br i1 false, label %907, label %942

942:                                              ; preds = %941
  br label %943

943:                                              ; preds = %942
  unreachable

944:                                              ; preds = %929
  %.lcssa165169.lcssa = phi i32 [ 2, %929 ]
  %.lcssa167 = phi i32 [ 2, %929 ]
  br label %945

945:                                              ; preds = %944
  %946 = add nsw i32 %892, 1
  br label %891, !llvm.loop !29

947:                                              ; preds = %891
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %891 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %891 ]
  %.lcssa171 = phi i32 [ %892, %891 ]
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
  %948 = load i32, ptr %4, align 4
  %949 = call i32 @Fit(i32 noundef 0, i32 noundef %948)
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %954

951:                                              ; preds = %947
  %952 = load i32, ptr %4, align 4
  %953 = call i32 @Place(i32 noundef 0, i32 noundef %952)
  store i32 %953, ptr @n, align 4
  br label %956

954:                                              ; preds = %947
  %955 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %956

956:                                              ; preds = %954, %951
  %957 = load i32, ptr @n, align 4
  %958 = call i32 @Trial(i32 noundef %957)
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %962, label %960

960:                                              ; preds = %956
  %961 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %968

962:                                              ; preds = %956
  %963 = load i32, ptr @kount, align 4
  %964 = icmp ne i32 %963, 2005
  br i1 %964, label %965, label %967

965:                                              ; preds = %962
  %966 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %967

967:                                              ; preds = %965, %962
  br label %968

968:                                              ; preds = %967, %960
  %969 = load i32, ptr @n, align 4
  %970 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %969)
  %971 = load i32, ptr @kount, align 4
  %972 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %971)
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
  br label %3, !llvm.loop !30

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
