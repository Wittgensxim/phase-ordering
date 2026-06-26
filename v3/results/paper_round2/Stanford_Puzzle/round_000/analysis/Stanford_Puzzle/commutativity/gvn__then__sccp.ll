; ModuleID = 'results\paper_round2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %9 = icmp sle i32 %8, %.pre
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = add nsw i32 %1, %8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, ptr %3, align 4
  br label %27

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %10
  %25 = add nsw i32 %8, 1
  store i32 %25, ptr %6, align 4
  br label %7, !llvm.loop !7

26:                                               ; preds = %7
  store i32 1, ptr %3, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ 1, %26 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = phi i32 [ %22, %21 ], [ %1, %2 ]
  %9 = phi i32 [ %23, %21 ], [ 0, %2 ]
  %10 = icmp sle i32 %9, %.pre
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [512 x i32], ptr %12, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = add nsw i32 %1, %9
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %1, %17 ], [ %8, %11 ]
  %23 = add nsw i32 %9, 1
  store i32 %23, ptr %6, align 4
  br label %7, !llvm.loop !9

24:                                               ; preds = %7
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
  store i32 %8, ptr %6, align 4
  br label %31

31:                                               ; preds = %40, %24
  %32 = phi i32 [ %41, %40 ], [ %8, %24 ]
  %33 = icmp sle i32 %32, 511
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 %32, ptr %3, align 4
  br label %43

40:                                               ; preds = %34
  %41 = add nsw i32 %32, 1
  store i32 %41, ptr %6, align 4
  br label %31, !llvm.loop !10

42:                                               ; preds = %31
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ 0, %42 ], [ %32, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %8 = icmp sle i32 %7, %.pre
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nsw i32 %7, 1
  store i32 %20, ptr %5, align 4
  br label %6, !llvm.loop !11

21:                                               ; preds = %6
  %22 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  %9 = phi i32 [ %34, %33 ], [ %0, %1 ]
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
  %21 = call i32 @Fit(i32 noundef %10, i32 noundef %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = call i32 @Place(i32 noundef %10, i32 noundef %9)
  store i32 %24, ptr %5, align 4
  %25 = call i32 @Trial(i32 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27, %23
  store i32 1, ptr %2, align 4
  br label %37

30:                                               ; preds = %27
  call void @Remove(i32 noundef %10, i32 noundef %0)
  br label %31

31:                                               ; preds = %30, %20
  %32 = phi i32 [ %0, %30 ], [ %9, %20 ]
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ %32, %31 ], [ %9, %12 ]
  %35 = add nsw i32 %10, 1
  store i32 %35, ptr %4, align 4
  br label %8, !llvm.loop !12

36:                                               ; preds = %8
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

5:                                                ; preds = %8, %0
  %6 = phi i32 [ %11, %8 ], [ 0, %0 ]
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  store i32 %11, ptr %4, align 4
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = phi i32 [ %37, %36 ], [ 1, %12 ]
  %15 = icmp sle i32 %14, 5
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  store i32 1, ptr %2, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = phi i32 [ %24, %34 ], [ %14, %16 ]
  %19 = phi i32 [ %35, %34 ], [ 1, %16 ]
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  store i32 1, ptr %3, align 4
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi i32 [ %33, %26 ], [ 1, %21 ]
  %24 = phi i32 [ %14, %26 ], [ %18, %21 ]
  %25 = icmp sle i32 %23, 5
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = mul nsw i32 8, %23
  %28 = add nsw i32 %19, %27
  %29 = mul nsw i32 8, %28
  %30 = add nsw i32 %14, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %31
  store i32 0, ptr %32, align 4
  %33 = add nsw i32 %23, 1
  store i32 %33, ptr %3, align 4
  br label %22, !llvm.loop !14

34:                                               ; preds = %22
  %35 = add nsw i32 %19, 1
  store i32 %35, ptr %2, align 4
  br label %17, !llvm.loop !15

36:                                               ; preds = %17
  %37 = add nsw i32 %18, 1
  store i32 %37, ptr %1, align 4
  br label %13, !llvm.loop !16

38:                                               ; preds = %13
  store i32 0, ptr %1, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = phi i32 [ %53, %52 ], [ 0, %38 ]
  %41 = icmp sle i32 %40, 12
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  store i32 0, ptr %4, align 4
  br label %43

43:                                               ; preds = %46, %42
  %44 = phi i32 [ %51, %46 ], [ 0, %42 ]
  %45 = icmp sle i32 %44, 511
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = sext i32 %40 to i64
  %48 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %47
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [512 x i32], ptr %48, i64 0, i64 %49
  store i32 0, ptr %50, align 4
  %51 = add nsw i32 %44, 1
  store i32 %51, ptr %4, align 4
  br label %43, !llvm.loop !17

52:                                               ; preds = %43
  %53 = add nsw i32 %40, 1
  store i32 %53, ptr %1, align 4
  br label %39, !llvm.loop !18

54:                                               ; preds = %39
  store i32 0, ptr %1, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = phi i32 [ %77, %76 ], [ 0, %54 ]
  %57 = icmp sle i32 %56, 3
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  store i32 0, ptr %2, align 4
  br label %59

59:                                               ; preds = %74, %58
  %60 = phi i32 [ %66, %74 ], [ %56, %58 ]
  %61 = phi i32 [ %75, %74 ], [ 0, %58 ]
  %62 = icmp sle i32 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  store i32 0, ptr %3, align 4
  br label %64

64:                                               ; preds = %68, %63
  %65 = phi i32 [ 1, %68 ], [ 0, %63 ]
  %66 = phi i32 [ %56, %68 ], [ %60, %63 ]
  %67 = icmp sle i32 %65, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %61, 0
  %70 = mul nuw nsw i32 8, %69
  %71 = add nsw i32 %56, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %72
  store i32 1, ptr %73, align 4
  store i32 1, ptr %3, align 4
  br label %64, !llvm.loop !19

74:                                               ; preds = %64
  %75 = add nuw nsw i32 %61, 1
  store i32 %75, ptr %2, align 4
  br label %59, !llvm.loop !20

76:                                               ; preds = %59
  %77 = add nsw i32 %60, 1
  store i32 %77, ptr %1, align 4
  br label %55, !llvm.loop !21

78:                                               ; preds = %55
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = phi i32 [ %102, %101 ], [ 0, %78 ]
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  store i32 0, ptr %2, align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = phi i32 [ %90, %100 ], [ %80, %82 ]
  %85 = phi i32 [ 1, %100 ], [ 0, %82 ]
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  store i32 0, ptr %3, align 4
  br label %88

88:                                               ; preds = %92, %87
  %89 = phi i32 [ %99, %92 ], [ 0, %87 ]
  %90 = phi i32 [ %80, %92 ], [ %84, %87 ]
  %91 = icmp sle i32 %89, 3
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = mul nsw i32 8, %89
  %94 = add nuw nsw i32 0, %93
  %95 = mul nsw i32 8, %94
  %96 = add nsw i32 %80, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %97
  store i32 1, ptr %98, align 4
  %99 = add nsw i32 %89, 1
  store i32 %99, ptr %3, align 4
  br label %88, !llvm.loop !22

100:                                              ; preds = %88
  store i32 1, ptr %2, align 4
  br label %83, !llvm.loop !23

101:                                              ; preds = %83
  %102 = add nuw nsw i32 %84, 1
  store i32 %102, ptr %1, align 4
  br label %79, !llvm.loop !24

103:                                              ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %104

104:                                              ; preds = %125, %103
  %105 = phi i32 [ 1, %125 ], [ 0, %103 ]
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  store i32 0, ptr %2, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = phi i32 [ %124, %123 ], [ 0, %107 ]
  %110 = icmp sle i32 %109, 3
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  store i32 0, ptr %3, align 4
  br label %112

112:                                              ; preds = %115, %111
  %113 = phi i32 [ %122, %115 ], [ 0, %111 ]
  %114 = icmp sle i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = mul nuw nsw i32 8, %113
  %117 = add nsw i32 %109, %116
  %118 = mul nsw i32 8, %117
  %119 = add nuw nsw i32 0, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %120
  store i32 1, ptr %121, align 4
  %122 = add nuw nsw i32 %113, 1
  store i32 %122, ptr %3, align 4
  br label %112, !llvm.loop !25

123:                                              ; preds = %112
  %124 = add nsw i32 %109, 1
  store i32 %124, ptr %2, align 4
  br label %108, !llvm.loop !26

125:                                              ; preds = %108
  store i32 1, ptr %1, align 4
  br label %104, !llvm.loop !27

126:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %127

127:                                              ; preds = %148, %126
  %128 = phi i32 [ %149, %148 ], [ 0, %126 ]
  %129 = icmp sle i32 %128, 1
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  store i32 0, ptr %2, align 4
  br label %131

131:                                              ; preds = %146, %130
  %132 = phi i32 [ %138, %146 ], [ %128, %130 ]
  %133 = phi i32 [ %147, %146 ], [ 0, %130 ]
  %134 = icmp sle i32 %133, 3
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  store i32 0, ptr %3, align 4
  br label %136

136:                                              ; preds = %140, %135
  %137 = phi i32 [ 1, %140 ], [ 0, %135 ]
  %138 = phi i32 [ %128, %140 ], [ %132, %135 ]
  %139 = icmp sle i32 %137, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = add nuw nsw i32 %133, 0
  %142 = mul nsw i32 8, %141
  %143 = add nsw i32 %128, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %144
  store i32 1, ptr %145, align 4
  store i32 1, ptr %3, align 4
  br label %136, !llvm.loop !28

146:                                              ; preds = %136
  %147 = add nsw i32 %133, 1
  store i32 %147, ptr %2, align 4
  br label %131, !llvm.loop !29

148:                                              ; preds = %131
  %149 = add nuw nsw i32 %132, 1
  store i32 %149, ptr %1, align 4
  br label %127, !llvm.loop !30

150:                                              ; preds = %127
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %151

151:                                              ; preds = %173, %150
  %152 = phi i32 [ %174, %173 ], [ 0, %150 ]
  %153 = icmp sle i32 %152, 3
  br i1 %153, label %154, label %175

154:                                              ; preds = %151
  store i32 0, ptr %2, align 4
  br label %155

155:                                              ; preds = %172, %154
  %156 = phi i32 [ %162, %172 ], [ %152, %154 ]
  %157 = phi i32 [ 1, %172 ], [ 0, %154 ]
  %158 = icmp sle i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  store i32 0, ptr %3, align 4
  br label %160

160:                                              ; preds = %164, %159
  %161 = phi i32 [ %171, %164 ], [ 0, %159 ]
  %162 = phi i32 [ %152, %164 ], [ %156, %159 ]
  %163 = icmp sle i32 %161, 1
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = mul nuw nsw i32 8, %161
  %166 = add nuw nsw i32 0, %165
  %167 = mul nuw nsw i32 8, %166
  %168 = add nsw i32 %152, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nuw nsw i32 %161, 1
  store i32 %171, ptr %3, align 4
  br label %160, !llvm.loop !31

172:                                              ; preds = %160
  store i32 1, ptr %2, align 4
  br label %155, !llvm.loop !32

173:                                              ; preds = %155
  %174 = add nsw i32 %156, 1
  store i32 %174, ptr %1, align 4
  br label %151, !llvm.loop !33

175:                                              ; preds = %151
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %176

176:                                              ; preds = %197, %175
  %177 = phi i32 [ 1, %197 ], [ 0, %175 ]
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %176
  store i32 0, ptr %2, align 4
  br label %180

180:                                              ; preds = %195, %179
  %181 = phi i32 [ %196, %195 ], [ 0, %179 ]
  %182 = icmp sle i32 %181, 1
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  store i32 0, ptr %3, align 4
  br label %184

184:                                              ; preds = %187, %183
  %185 = phi i32 [ %194, %187 ], [ 0, %183 ]
  %186 = icmp sle i32 %185, 3
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = mul nsw i32 8, %185
  %189 = add nsw i32 %181, %188
  %190 = mul nsw i32 8, %189
  %191 = add nuw nsw i32 0, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %192
  store i32 1, ptr %193, align 4
  %194 = add nsw i32 %185, 1
  store i32 %194, ptr %3, align 4
  br label %184, !llvm.loop !34

195:                                              ; preds = %184
  %196 = add nuw nsw i32 %181, 1
  store i32 %196, ptr %2, align 4
  br label %180, !llvm.loop !35

197:                                              ; preds = %180
  store i32 1, ptr %1, align 4
  br label %176, !llvm.loop !36

198:                                              ; preds = %176
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %199

199:                                              ; preds = %217, %198
  %200 = phi i32 [ %218, %217 ], [ 0, %198 ]
  %201 = icmp sle i32 %200, 2
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  store i32 0, ptr %2, align 4
  br label %203

203:                                              ; preds = %216, %202
  %204 = phi i32 [ %210, %216 ], [ %200, %202 ]
  %205 = phi i32 [ 1, %216 ], [ 0, %202 ]
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  store i32 0, ptr %3, align 4
  br label %208

208:                                              ; preds = %212, %207
  %209 = phi i32 [ 1, %212 ], [ 0, %207 ]
  %210 = phi i32 [ %200, %212 ], [ %204, %207 ]
  %211 = icmp sle i32 %209, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = add nuw nsw i32 %200, 0
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %214
  store i32 1, ptr %215, align 4
  store i32 1, ptr %3, align 4
  br label %208, !llvm.loop !37

216:                                              ; preds = %208
  store i32 1, ptr %2, align 4
  br label %203, !llvm.loop !38

217:                                              ; preds = %203
  %218 = add nsw i32 %204, 1
  store i32 %218, ptr %1, align 4
  br label %199, !llvm.loop !39

219:                                              ; preds = %199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %220

220:                                              ; preds = %239, %219
  %221 = phi i32 [ 1, %239 ], [ 0, %219 ]
  %222 = icmp sle i32 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  store i32 0, ptr %2, align 4
  br label %224

224:                                              ; preds = %237, %223
  %225 = phi i32 [ %238, %237 ], [ 0, %223 ]
  %226 = icmp sle i32 %225, 2
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  store i32 0, ptr %3, align 4
  br label %228

228:                                              ; preds = %231, %227
  %229 = phi i32 [ 1, %231 ], [ 0, %227 ]
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = add nuw nsw i32 %225, 0
  %233 = mul nsw i32 8, %232
  %234 = add nuw nsw i32 0, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %235
  store i32 1, ptr %236, align 4
  store i32 1, ptr %3, align 4
  br label %228, !llvm.loop !40

237:                                              ; preds = %228
  %238 = add nsw i32 %225, 1
  store i32 %238, ptr %2, align 4
  br label %224, !llvm.loop !41

239:                                              ; preds = %224
  store i32 1, ptr %1, align 4
  br label %220, !llvm.loop !42

240:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %241

241:                                              ; preds = %261, %240
  %242 = phi i32 [ 1, %261 ], [ 0, %240 ]
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %241
  store i32 0, ptr %2, align 4
  br label %245

245:                                              ; preds = %260, %244
  %246 = phi i32 [ 1, %260 ], [ 0, %244 ]
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  store i32 0, ptr %3, align 4
  br label %249

249:                                              ; preds = %252, %248
  %250 = phi i32 [ %259, %252 ], [ 0, %248 ]
  %251 = icmp sle i32 %250, 2
  br i1 %251, label %252, label %260

252:                                              ; preds = %249
  %253 = mul nsw i32 8, %250
  %254 = add nuw nsw i32 0, %253
  %255 = mul nsw i32 8, %254
  %256 = add nuw nsw i32 0, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %257
  store i32 1, ptr %258, align 4
  %259 = add nsw i32 %250, 1
  store i32 %259, ptr %3, align 4
  br label %249, !llvm.loop !43

260:                                              ; preds = %249
  store i32 1, ptr %2, align 4
  br label %245, !llvm.loop !44

261:                                              ; preds = %245
  store i32 1, ptr %1, align 4
  br label %241, !llvm.loop !45

262:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %263

263:                                              ; preds = %284, %262
  %264 = phi i32 [ %285, %284 ], [ 0, %262 ]
  %265 = icmp sle i32 %264, 1
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  store i32 0, ptr %2, align 4
  br label %267

267:                                              ; preds = %282, %266
  %268 = phi i32 [ %274, %282 ], [ %264, %266 ]
  %269 = phi i32 [ %283, %282 ], [ 0, %266 ]
  %270 = icmp sle i32 %269, 1
  br i1 %270, label %271, label %284

271:                                              ; preds = %267
  store i32 0, ptr %3, align 4
  br label %272

272:                                              ; preds = %276, %271
  %273 = phi i32 [ 1, %276 ], [ 0, %271 ]
  %274 = phi i32 [ %264, %276 ], [ %268, %271 ]
  %275 = icmp sle i32 %273, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = add nuw nsw i32 %269, 0
  %278 = mul nuw nsw i32 8, %277
  %279 = add nuw nsw i32 %264, %278
  %280 = zext nneg i32 %279 to i64
  %281 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %280
  store i32 1, ptr %281, align 4
  store i32 1, ptr %3, align 4
  br label %272, !llvm.loop !46

282:                                              ; preds = %272
  %283 = add nuw nsw i32 %269, 1
  store i32 %283, ptr %2, align 4
  br label %267, !llvm.loop !47

284:                                              ; preds = %267
  %285 = add nuw nsw i32 %268, 1
  store i32 %285, ptr %1, align 4
  br label %263, !llvm.loop !48

286:                                              ; preds = %263
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %287

287:                                              ; preds = %309, %286
  %288 = phi i32 [ %310, %309 ], [ 0, %286 ]
  %289 = icmp sle i32 %288, 1
  br i1 %289, label %290, label %311

290:                                              ; preds = %287
  store i32 0, ptr %2, align 4
  br label %291

291:                                              ; preds = %308, %290
  %292 = phi i32 [ %298, %308 ], [ %288, %290 ]
  %293 = phi i32 [ 1, %308 ], [ 0, %290 ]
  %294 = icmp sle i32 %293, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %291
  store i32 0, ptr %3, align 4
  br label %296

296:                                              ; preds = %300, %295
  %297 = phi i32 [ %307, %300 ], [ 0, %295 ]
  %298 = phi i32 [ %288, %300 ], [ %292, %295 ]
  %299 = icmp sle i32 %297, 1
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = mul nuw nsw i32 8, %297
  %302 = add nuw nsw i32 0, %301
  %303 = mul nuw nsw i32 8, %302
  %304 = add nuw nsw i32 %288, %303
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %305
  store i32 1, ptr %306, align 4
  %307 = add nuw nsw i32 %297, 1
  store i32 %307, ptr %3, align 4
  br label %296, !llvm.loop !49

308:                                              ; preds = %296
  store i32 1, ptr %2, align 4
  br label %291, !llvm.loop !50

309:                                              ; preds = %291
  %310 = add nuw nsw i32 %292, 1
  store i32 %310, ptr %1, align 4
  br label %287, !llvm.loop !51

311:                                              ; preds = %287
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %312

312:                                              ; preds = %333, %311
  %313 = phi i32 [ 1, %333 ], [ 0, %311 ]
  %314 = icmp sle i32 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %312
  store i32 0, ptr %2, align 4
  br label %316

316:                                              ; preds = %331, %315
  %317 = phi i32 [ %332, %331 ], [ 0, %315 ]
  %318 = icmp sle i32 %317, 1
  br i1 %318, label %319, label %333

319:                                              ; preds = %316
  store i32 0, ptr %3, align 4
  br label %320

320:                                              ; preds = %323, %319
  %321 = phi i32 [ %330, %323 ], [ 0, %319 ]
  %322 = icmp sle i32 %321, 1
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = mul nuw nsw i32 8, %321
  %325 = add nuw nsw i32 %317, %324
  %326 = mul nuw nsw i32 8, %325
  %327 = add nuw nsw i32 0, %326
  %328 = zext nneg i32 %327 to i64
  %329 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %328
  store i32 1, ptr %329, align 4
  %330 = add nuw nsw i32 %321, 1
  store i32 %330, ptr %3, align 4
  br label %320, !llvm.loop !52

331:                                              ; preds = %320
  %332 = add nuw nsw i32 %317, 1
  store i32 %332, ptr %2, align 4
  br label %316, !llvm.loop !53

333:                                              ; preds = %316
  store i32 1, ptr %1, align 4
  br label %312, !llvm.loop !54

334:                                              ; preds = %312
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %335

335:                                              ; preds = %358, %334
  %336 = phi i32 [ %359, %358 ], [ 0, %334 ]
  %337 = icmp sle i32 %336, 1
  br i1 %337, label %338, label %360

338:                                              ; preds = %335
  store i32 0, ptr %2, align 4
  br label %339

339:                                              ; preds = %356, %338
  %340 = phi i32 [ %346, %356 ], [ %336, %338 ]
  %341 = phi i32 [ %357, %356 ], [ 0, %338 ]
  %342 = icmp sle i32 %341, 1
  br i1 %342, label %343, label %358

343:                                              ; preds = %339
  store i32 0, ptr %3, align 4
  br label %344

344:                                              ; preds = %348, %343
  %345 = phi i32 [ %355, %348 ], [ 0, %343 ]
  %346 = phi i32 [ %336, %348 ], [ %340, %343 ]
  %347 = icmp sle i32 %345, 1
  br i1 %347, label %348, label %356

348:                                              ; preds = %344
  %349 = mul nuw nsw i32 8, %345
  %350 = add nuw nsw i32 %341, %349
  %351 = mul nuw nsw i32 8, %350
  %352 = add nuw nsw i32 %336, %351
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %353
  store i32 1, ptr %354, align 4
  %355 = add nuw nsw i32 %345, 1
  store i32 %355, ptr %3, align 4
  br label %344, !llvm.loop !55

356:                                              ; preds = %344
  %357 = add nuw nsw i32 %341, 1
  store i32 %357, ptr %2, align 4
  br label %339, !llvm.loop !56

358:                                              ; preds = %339
  %359 = add nuw nsw i32 %340, 1
  store i32 %359, ptr %1, align 4
  br label %335, !llvm.loop !57

360:                                              ; preds = %335
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %361 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  %364 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %364, ptr @n, align 4
  br label %367

365:                                              ; preds = %360
  %366 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %367

367:                                              ; preds = %365, %363
  %368 = phi i32 [ %.pre, %365 ], [ %364, %363 ]
  %369 = call i32 @Trial(i32 noundef %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %367
  %372 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %379

373:                                              ; preds = %367
  %374 = load i32, ptr @kount, align 4
  %375 = icmp ne i32 %374, 2005
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %378

378:                                              ; preds = %376, %373
  br label %379

379:                                              ; preds = %378, %371
  %380 = load i32, ptr @n, align 4
  %381 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %380)
  %382 = load i32, ptr @kount, align 4
  %383 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %382)
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
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !58

8:                                                ; preds = %3
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
