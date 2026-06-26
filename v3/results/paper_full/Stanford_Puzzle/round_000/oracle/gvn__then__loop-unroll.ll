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
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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
  %.lcssa = phi i32 [ %8, %7 ]
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
  store i32 %.lcssa, ptr %6, align 4
  br label %31

31:                                               ; preds = %40, %24
  %32 = phi i32 [ %41, %40 ], [ %.lcssa, %24 ]
  %33 = icmp sle i32 %32, 511
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %32, %34 ]
  store i32 %.lcssa2, ptr %3, align 4
  br label %43

40:                                               ; preds = %34
  %41 = add nsw i32 %32, 1
  store i32 %41, ptr %6, align 4
  br label %31, !llvm.loop !10

42:                                               ; preds = %31
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ 0, %42 ], [ %.lcssa2, %39 ]
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

5:                                                ; preds = %16, %0
  %6 = phi i32 [ 0, %0 ], [ %19, %16 ]
  br label %7

7:                                                ; preds = %5
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nuw nsw i32 %6, 1
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %7
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %6, 2
  store i32 %14, ptr %4, align 4
  %15 = icmp samesign ule i32 %14, 511
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  %19 = add nuw nsw i32 %6, 3
  store i32 %19, ptr %4, align 4
  br label %5, !llvm.loop !13

20:                                               ; preds = %11
  store i32 1, ptr %1, align 4
  br label %21

21:                                               ; preds = %170, %20
  %22 = phi i32 [ %171, %170 ], [ 1, %20 ]
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %24, label %172

24:                                               ; preds = %21
  store i32 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  store i32 1, ptr %3, align 4
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %22, 72
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %30
  store i32 0, ptr %31, align 4
  store i32 2, ptr %3, align 4
  br label %32

32:                                               ; preds = %28
  %33 = add nsw i32 %22, 136
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %34
  store i32 0, ptr %35, align 4
  store i32 3, ptr %3, align 4
  br label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %22, 200
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %38
  store i32 0, ptr %39, align 4
  store i32 4, ptr %3, align 4
  br label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %22, 264
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %42
  store i32 0, ptr %43, align 4
  store i32 5, ptr %3, align 4
  br label %44

44:                                               ; preds = %40
  %45 = add nsw i32 %22, 328
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %46
  store i32 0, ptr %47, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %54

.loopexit:                                        ; preds = %44, %73, %96, %119, %142
  %.lcssa31.ph = phi i32 [ %22, %142 ], [ %22, %119 ], [ %22, %96 ], [ %22, %73 ], [ %22, %44 ]
  %.lcssa29.ph = phi i32 [ 5, %142 ], [ 4, %119 ], [ 3, %96 ], [ 2, %73 ], [ 1, %44 ]
  br label %48

48:                                               ; preds = %.loopexit, %165
  %.lcssa31 = phi i32 [ %.lcssa34, %165 ], [ %.lcssa31.ph, %.loopexit ]
  %.lcssa29 = phi i32 [ 6, %165 ], [ %.lcssa29.ph, %.loopexit ]
  %49 = add nsw i32 %.lcssa29, 48
  %50 = mul nsw i32 8, %49
  %51 = add nsw i32 %.lcssa31, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %52
  store i32 0, ptr %53, align 4
  store i32 7, ptr %3, align 4
  unreachable

54:                                               ; preds = %44
  store i32 2, ptr %2, align 4
  br label %55

55:                                               ; preds = %54
  store i32 1, ptr %3, align 4
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %22, 80
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %59
  store i32 0, ptr %60, align 4
  store i32 2, ptr %3, align 4
  br label %61

61:                                               ; preds = %57
  %62 = add nsw i32 %22, 144
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %63
  store i32 0, ptr %64, align 4
  store i32 3, ptr %3, align 4
  br label %65

65:                                               ; preds = %61
  %66 = add nsw i32 %22, 208
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %67
  store i32 0, ptr %68, align 4
  store i32 4, ptr %3, align 4
  br label %69

69:                                               ; preds = %65
  %70 = add nsw i32 %22, 272
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %71
  store i32 0, ptr %72, align 4
  store i32 5, ptr %3, align 4
  br label %73

73:                                               ; preds = %69
  %74 = add nsw i32 %22, 336
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %75
  store i32 0, ptr %76, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %77

77:                                               ; preds = %73
  store i32 3, ptr %2, align 4
  br label %78

78:                                               ; preds = %77
  store i32 1, ptr %3, align 4
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = add nsw i32 %22, 88
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %82
  store i32 0, ptr %83, align 4
  store i32 2, ptr %3, align 4
  br label %84

84:                                               ; preds = %80
  %85 = add nsw i32 %22, 152
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %86
  store i32 0, ptr %87, align 4
  store i32 3, ptr %3, align 4
  br label %88

88:                                               ; preds = %84
  %89 = add nsw i32 %22, 216
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %90
  store i32 0, ptr %91, align 4
  store i32 4, ptr %3, align 4
  br label %92

92:                                               ; preds = %88
  %93 = add nsw i32 %22, 280
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %94
  store i32 0, ptr %95, align 4
  store i32 5, ptr %3, align 4
  br label %96

96:                                               ; preds = %92
  %97 = add nsw i32 %22, 344
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %98
  store i32 0, ptr %99, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %100

100:                                              ; preds = %96
  store i32 4, ptr %2, align 4
  br label %101

101:                                              ; preds = %100
  store i32 1, ptr %3, align 4
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = add nsw i32 %22, 96
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %105
  store i32 0, ptr %106, align 4
  store i32 2, ptr %3, align 4
  br label %107

107:                                              ; preds = %103
  %108 = add nsw i32 %22, 160
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %109
  store i32 0, ptr %110, align 4
  store i32 3, ptr %3, align 4
  br label %111

111:                                              ; preds = %107
  %112 = add nsw i32 %22, 224
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %113
  store i32 0, ptr %114, align 4
  store i32 4, ptr %3, align 4
  br label %115

115:                                              ; preds = %111
  %116 = add nsw i32 %22, 288
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %117
  store i32 0, ptr %118, align 4
  store i32 5, ptr %3, align 4
  br label %119

119:                                              ; preds = %115
  %120 = add nsw i32 %22, 352
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %121
  store i32 0, ptr %122, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %123

123:                                              ; preds = %119
  store i32 5, ptr %2, align 4
  br label %124

124:                                              ; preds = %123
  store i32 1, ptr %3, align 4
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = add nsw i32 %22, 104
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %128
  store i32 0, ptr %129, align 4
  store i32 2, ptr %3, align 4
  br label %130

130:                                              ; preds = %126
  %131 = add nsw i32 %22, 168
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %132
  store i32 0, ptr %133, align 4
  store i32 3, ptr %3, align 4
  br label %134

134:                                              ; preds = %130
  %135 = add nsw i32 %22, 232
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %136
  store i32 0, ptr %137, align 4
  store i32 4, ptr %3, align 4
  br label %138

138:                                              ; preds = %134
  %139 = add nsw i32 %22, 296
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %140
  store i32 0, ptr %141, align 4
  store i32 5, ptr %3, align 4
  br label %142

142:                                              ; preds = %138
  %143 = add nsw i32 %22, 360
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %144
  store i32 0, ptr %145, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %146

146:                                              ; preds = %142
  store i32 6, ptr %2, align 4
  br i1 false, label %147, label %170

147:                                              ; preds = %146
  %.lcssa34 = phi i32 [ %22, %146 ]
  store i32 1, ptr %3, align 4
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  %150 = add nsw i32 %.lcssa34, 112
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %151
  store i32 0, ptr %152, align 4
  store i32 2, ptr %3, align 4
  br label %153

153:                                              ; preds = %149
  %154 = add nsw i32 %.lcssa34, 176
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %155
  store i32 0, ptr %156, align 4
  store i32 3, ptr %3, align 4
  br label %157

157:                                              ; preds = %153
  %158 = add nsw i32 %.lcssa34, 240
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %159
  store i32 0, ptr %160, align 4
  store i32 4, ptr %3, align 4
  br label %161

161:                                              ; preds = %157
  %162 = add nsw i32 %.lcssa34, 304
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %163
  store i32 0, ptr %164, align 4
  store i32 5, ptr %3, align 4
  br label %165

165:                                              ; preds = %161
  %166 = add nsw i32 %.lcssa34, 368
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %167
  store i32 0, ptr %168, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %48, label %169

169:                                              ; preds = %165
  store i32 7, ptr %2, align 4
  unreachable

170:                                              ; preds = %146
  %.lcssa27 = phi i32 [ %22, %146 ]
  %171 = add nsw i32 %.lcssa27, 1
  store i32 %171, ptr %1, align 4
  br label %21, !llvm.loop !14

172:                                              ; preds = %21
  store i32 0, ptr %1, align 4
  br label %173

173:                                              ; preds = %198, %172
  %174 = phi i32 [ %199, %198 ], [ 0, %172 ]
  %175 = icmp sle i32 %174, 12
  br i1 %175, label %176, label %200

176:                                              ; preds = %173
  store i32 0, ptr %4, align 4
  %177 = sext i32 %174 to i64
  %178 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %177
  br label %179

179:                                              ; preds = %192, %176
  %180 = phi i32 [ 0, %176 ], [ %197, %192 ]
  br label %181

181:                                              ; preds = %179
  %182 = sext i32 %174 to i64
  %183 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %182
  %184 = sext i32 %180 to i64
  %185 = getelementptr inbounds [512 x i32], ptr %183, i64 0, i64 %184
  store i32 0, ptr %185, align 4
  %186 = add nuw nsw i32 %180, 1
  store i32 %186, ptr %4, align 4
  br label %187

187:                                              ; preds = %181
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds [512 x i32], ptr %178, i64 0, i64 %188
  store i32 0, ptr %189, align 4
  %190 = add nuw nsw i32 %180, 2
  store i32 %190, ptr %4, align 4
  %191 = icmp samesign ule i32 %190, 511
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = sext i32 %174 to i64
  %194 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %193
  %195 = sext i32 %190 to i64
  %196 = getelementptr inbounds [512 x i32], ptr %194, i64 0, i64 %195
  store i32 0, ptr %196, align 4
  %197 = add nuw nsw i32 %180, 3
  store i32 %197, ptr %4, align 4
  br label %179, !llvm.loop !15

198:                                              ; preds = %187
  %199 = add nsw i32 %174, 1
  store i32 %199, ptr %1, align 4
  br label %173, !llvm.loop !16

200:                                              ; preds = %173
  store i32 0, ptr %1, align 4
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  store i32 0, ptr %2, align 4
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  store i32 0, ptr %3, align 4
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  store i32 1, ptr @p, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %213

.loopexit42:                                      ; preds = %267, %263, %256, %252, %245, %241, %234, %230, %206, %216
  %.lcssa38.ph = phi i32 [ 0, %216 ], [ 0, %206 ], [ 1, %230 ], [ 1, %234 ], [ 2, %241 ], [ 2, %245 ], [ 3, %252 ], [ 3, %256 ], [ 4, %263 ], [ 4, %267 ]
  %.lcssa36.ph = phi i32 [ 1, %216 ], [ 0, %206 ], [ 0, %230 ], [ 1, %234 ], [ 0, %241 ], [ 1, %245 ], [ 0, %252 ], [ 1, %256 ], [ 0, %263 ], [ 1, %267 ]
  br label %207

207:                                              ; preds = %.loopexit42, %220
  %.lcssa38 = phi i32 [ %.lcssa41, %220 ], [ %.lcssa38.ph, %.loopexit42 ]
  %.lcssa36 = phi i32 [ 2, %220 ], [ %.lcssa36.ph, %.loopexit42 ]
  %208 = add nsw i32 %.lcssa36, 8
  %209 = mul nsw i32 8, %208
  %210 = add nsw i32 %.lcssa38, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %211
  store i32 1, ptr %212, align 4
  store i32 2, ptr %3, align 4
  unreachable

213:                                              ; preds = %206
  store i32 1, ptr %2, align 4
  br label %214

214:                                              ; preds = %213
  store i32 0, ptr %3, align 4
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %217

217:                                              ; preds = %216
  store i32 2, ptr %2, align 4
  br i1 false, label %218, label %225

218:                                              ; preds = %268, %257, %246, %235, %217
  %.lcssa41 = phi i32 [ 0, %217 ], [ 1, %235 ], [ 2, %246 ], [ 3, %257 ], [ 4, %268 ]
  store i32 0, ptr %3, align 4
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  %221 = add nsw i32 %.lcssa41, 16
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %222
  store i32 1, ptr %223, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %207, label %224

224:                                              ; preds = %220
  store i32 3, ptr %2, align 4
  unreachable

225:                                              ; preds = %217
  store i32 1, ptr %1, align 4
  br label %226

226:                                              ; preds = %225
  store i32 0, ptr %2, align 4
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  store i32 0, ptr %3, align 4
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %231

231:                                              ; preds = %230
  store i32 1, ptr %2, align 4
  br label %232

232:                                              ; preds = %231
  store i32 0, ptr %3, align 4
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %235

235:                                              ; preds = %234
  store i32 2, ptr %2, align 4
  br i1 false, label %218, label %236

236:                                              ; preds = %235
  store i32 2, ptr %1, align 4
  br label %237

237:                                              ; preds = %236
  store i32 0, ptr %2, align 4
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  store i32 0, ptr %3, align 4
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %242

242:                                              ; preds = %241
  store i32 1, ptr %2, align 4
  br label %243

243:                                              ; preds = %242
  store i32 0, ptr %3, align 4
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %246

246:                                              ; preds = %245
  store i32 2, ptr %2, align 4
  br i1 false, label %218, label %247

247:                                              ; preds = %246
  store i32 3, ptr %1, align 4
  br label %248

248:                                              ; preds = %247
  store i32 0, ptr %2, align 4
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249
  store i32 0, ptr %3, align 4
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %253

253:                                              ; preds = %252
  store i32 1, ptr %2, align 4
  br label %254

254:                                              ; preds = %253
  store i32 0, ptr %3, align 4
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %257

257:                                              ; preds = %256
  store i32 2, ptr %2, align 4
  br i1 false, label %218, label %258

258:                                              ; preds = %257
  store i32 4, ptr %1, align 4
  br i1 false, label %259, label %270

259:                                              ; preds = %258
  store i32 0, ptr %2, align 4
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  store i32 0, ptr %3, align 4
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %264

264:                                              ; preds = %263
  store i32 1, ptr %2, align 4
  br label %265

265:                                              ; preds = %264
  store i32 0, ptr %3, align 4
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %268

268:                                              ; preds = %267
  store i32 2, ptr %2, align 4
  br i1 false, label %218, label %269

269:                                              ; preds = %268
  store i32 5, ptr %1, align 4
  unreachable

270:                                              ; preds = %258
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  store i32 0, ptr %2, align 4
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  store i32 0, ptr %3, align 4
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr %3, align 4
  br label %277

277:                                              ; preds = %276
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 2, ptr %3, align 4
  br label %278

278:                                              ; preds = %277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 3, ptr %3, align 4
  br label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit50, label %286

.loopexit50:                                      ; preds = %324, %314, %279
  %.lcssa46.ph = phi i32 [ 0, %279 ], [ 1, %314 ], [ 2, %324 ]
  %.lcssa44.ph = phi i32 [ 0, %279 ], [ 0, %314 ], [ 0, %324 ]
  br label %280

280:                                              ; preds = %.loopexit50, %301
  %.lcssa46 = phi i32 [ %.lcssa48, %301 ], [ %.lcssa46.ph, %.loopexit50 ]
  %.lcssa44 = phi i32 [ 1, %301 ], [ %.lcssa44.ph, %.loopexit50 ]
  %281 = add nsw i32 %.lcssa44, 32
  %282 = mul nsw i32 8, %281
  %283 = add nsw i32 %.lcssa46, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %284
  store i32 1, ptr %285, align 4
  store i32 5, ptr %3, align 4
  unreachable

286:                                              ; preds = %279
  store i32 1, ptr %2, align 4
  br i1 false, label %287, label %306

287:                                              ; preds = %325, %315, %286
  %.lcssa48 = phi i32 [ 0, %286 ], [ 1, %315 ], [ 2, %325 ]
  store i32 0, ptr %3, align 4
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  %290 = add nsw i32 %.lcssa48, 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %291
  store i32 1, ptr %292, align 4
  store i32 1, ptr %3, align 4
  br label %293

293:                                              ; preds = %289
  %294 = add nsw i32 %.lcssa48, 72
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %295
  store i32 1, ptr %296, align 4
  store i32 2, ptr %3, align 4
  br label %297

297:                                              ; preds = %293
  %298 = add nsw i32 %.lcssa48, 136
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %299
  store i32 1, ptr %300, align 4
  store i32 3, ptr %3, align 4
  br label %301

301:                                              ; preds = %297
  %302 = add nsw i32 %.lcssa48, 200
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %303
  store i32 1, ptr %304, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %280, label %305

305:                                              ; preds = %301
  store i32 2, ptr %2, align 4
  unreachable

306:                                              ; preds = %286
  store i32 1, ptr %1, align 4
  br label %307

307:                                              ; preds = %306
  store i32 0, ptr %2, align 4
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  store i32 0, ptr %3, align 4
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr %3, align 4
  br label %312

312:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 2, ptr %3, align 4
  br label %313

313:                                              ; preds = %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 3, ptr %3, align 4
  br label %314

314:                                              ; preds = %313
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit50, label %315

315:                                              ; preds = %314
  store i32 1, ptr %2, align 4
  br i1 false, label %287, label %316

316:                                              ; preds = %315
  store i32 2, ptr %1, align 4
  br i1 false, label %317, label %327

317:                                              ; preds = %316
  store i32 0, ptr %2, align 4
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  store i32 0, ptr %3, align 4
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr %3, align 4
  br label %322

322:                                              ; preds = %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 2, ptr %3, align 4
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 3, ptr %3, align 4
  br label %324

324:                                              ; preds = %323
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit50, label %325

325:                                              ; preds = %324
  store i32 1, ptr %2, align 4
  br i1 false, label %287, label %326

326:                                              ; preds = %325
  store i32 3, ptr %1, align 4
  unreachable

327:                                              ; preds = %316
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  store i32 0, ptr %2, align 4
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  store i32 0, ptr %3, align 4
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr %3, align 4
  br label %334

334:                                              ; preds = %333
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %341

.loopexit58:                                      ; preds = %389, %384, %379, %374, %334, %345, %350, %355
  %.lcssa54.ph = phi i32 [ 0, %355 ], [ 0, %350 ], [ 0, %345 ], [ 0, %334 ], [ 1, %374 ], [ 1, %379 ], [ 1, %384 ], [ 1, %389 ]
  %.lcssa52.ph = phi i32 [ 3, %355 ], [ 2, %350 ], [ 1, %345 ], [ 0, %334 ], [ 0, %374 ], [ 1, %379 ], [ 2, %384 ], [ 3, %389 ]
  br label %335

335:                                              ; preds = %.loopexit58, %363
  %.lcssa54 = phi i32 [ %.lcssa57, %363 ], [ %.lcssa54.ph, %.loopexit58 ]
  %.lcssa52 = phi i32 [ 4, %363 ], [ %.lcssa52.ph, %.loopexit58 ]
  %336 = add nsw i32 %.lcssa52, 16
  %337 = mul nsw i32 8, %336
  %338 = add nsw i32 %.lcssa54, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %339
  store i32 1, ptr %340, align 4
  store i32 3, ptr %3, align 4
  unreachable

341:                                              ; preds = %334
  store i32 1, ptr %2, align 4
  br label %342

342:                                              ; preds = %341
  store i32 0, ptr %3, align 4
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr %3, align 4
  br label %345

345:                                              ; preds = %344
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %346

346:                                              ; preds = %345
  store i32 2, ptr %2, align 4
  br label %347

347:                                              ; preds = %346
  store i32 0, ptr %3, align 4
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr %3, align 4
  br label %350

350:                                              ; preds = %349
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %351

351:                                              ; preds = %350
  store i32 3, ptr %2, align 4
  br label %352

352:                                              ; preds = %351
  store i32 0, ptr %3, align 4
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr %3, align 4
  br label %355

355:                                              ; preds = %354
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %356

356:                                              ; preds = %355
  store i32 4, ptr %2, align 4
  br i1 false, label %357, label %368

357:                                              ; preds = %390, %356
  %.lcssa57 = phi i32 [ 0, %356 ], [ 1, %390 ]
  store i32 0, ptr %3, align 4
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  %360 = add nsw i32 %.lcssa57, 32
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %361
  store i32 1, ptr %362, align 4
  store i32 1, ptr %3, align 4
  br label %363

363:                                              ; preds = %359
  %364 = add nsw i32 %.lcssa57, 96
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %365
  store i32 1, ptr %366, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %335, label %367

367:                                              ; preds = %363
  store i32 5, ptr %2, align 4
  unreachable

368:                                              ; preds = %356
  store i32 1, ptr %1, align 4
  br i1 false, label %369, label %392

369:                                              ; preds = %368
  store i32 0, ptr %2, align 4
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  store i32 0, ptr %3, align 4
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  store i32 1, ptr %3, align 4
  br label %374

374:                                              ; preds = %373
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %375

375:                                              ; preds = %374
  store i32 1, ptr %2, align 4
  br label %376

376:                                              ; preds = %375
  store i32 0, ptr %3, align 4
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  store i32 1, ptr %3, align 4
  br label %379

379:                                              ; preds = %378
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %380

380:                                              ; preds = %379
  store i32 2, ptr %2, align 4
  br label %381

381:                                              ; preds = %380
  store i32 0, ptr %3, align 4
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  store i32 1, ptr %3, align 4
  br label %384

384:                                              ; preds = %383
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %385

385:                                              ; preds = %384
  store i32 3, ptr %2, align 4
  br label %386

386:                                              ; preds = %385
  store i32 0, ptr %3, align 4
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  store i32 1, ptr %3, align 4
  br label %389

389:                                              ; preds = %388
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit58, label %390

390:                                              ; preds = %389
  store i32 4, ptr %2, align 4
  br i1 false, label %357, label %391

391:                                              ; preds = %390
  store i32 2, ptr %1, align 4
  unreachable

392:                                              ; preds = %368
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  store i32 0, ptr %2, align 4
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  store i32 0, ptr %3, align 4
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %405

.loopexit66:                                      ; preds = %461, %457, %453, %449, %442, %438, %434, %430, %398, %408, %412, %416
  %.lcssa62.ph = phi i32 [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %398 ], [ 1, %430 ], [ 1, %434 ], [ 1, %438 ], [ 1, %442 ], [ 2, %449 ], [ 2, %453 ], [ 2, %457 ], [ 2, %461 ]
  %.lcssa60.ph = phi i32 [ 3, %416 ], [ 2, %412 ], [ 1, %408 ], [ 0, %398 ], [ 0, %430 ], [ 1, %434 ], [ 2, %438 ], [ 3, %442 ], [ 0, %449 ], [ 1, %453 ], [ 2, %457 ], [ 3, %461 ]
  br label %399

399:                                              ; preds = %.loopexit66, %420
  %.lcssa62 = phi i32 [ %.lcssa65, %420 ], [ %.lcssa62.ph, %.loopexit66 ]
  %.lcssa60 = phi i32 [ 4, %420 ], [ %.lcssa60.ph, %.loopexit66 ]
  %400 = add nsw i32 %.lcssa60, 8
  %401 = mul nsw i32 8, %400
  %402 = add nsw i32 %.lcssa62, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %403
  store i32 1, ptr %404, align 4
  store i32 2, ptr %3, align 4
  unreachable

405:                                              ; preds = %398
  store i32 1, ptr %2, align 4
  br label %406

406:                                              ; preds = %405
  store i32 0, ptr %3, align 4
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %409

409:                                              ; preds = %408
  store i32 2, ptr %2, align 4
  br label %410

410:                                              ; preds = %409
  store i32 0, ptr %3, align 4
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %413

413:                                              ; preds = %412
  store i32 3, ptr %2, align 4
  br label %414

414:                                              ; preds = %413
  store i32 0, ptr %3, align 4
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %417

417:                                              ; preds = %416
  store i32 4, ptr %2, align 4
  br i1 false, label %418, label %425

418:                                              ; preds = %462, %443, %417
  %.lcssa65 = phi i32 [ 0, %417 ], [ 1, %443 ], [ 2, %462 ]
  store i32 0, ptr %3, align 4
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  %421 = add nsw i32 %.lcssa65, 32
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %422
  store i32 1, ptr %423, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %399, label %424

424:                                              ; preds = %420
  store i32 5, ptr %2, align 4
  unreachable

425:                                              ; preds = %417
  store i32 1, ptr %1, align 4
  br label %426

426:                                              ; preds = %425
  store i32 0, ptr %2, align 4
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  store i32 0, ptr %3, align 4
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %431

431:                                              ; preds = %430
  store i32 1, ptr %2, align 4
  br label %432

432:                                              ; preds = %431
  store i32 0, ptr %3, align 4
  br label %433

433:                                              ; preds = %432
  br label %434

434:                                              ; preds = %433
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %435

435:                                              ; preds = %434
  store i32 2, ptr %2, align 4
  br label %436

436:                                              ; preds = %435
  store i32 0, ptr %3, align 4
  br label %437

437:                                              ; preds = %436
  br label %438

438:                                              ; preds = %437
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %439

439:                                              ; preds = %438
  store i32 3, ptr %2, align 4
  br label %440

440:                                              ; preds = %439
  store i32 0, ptr %3, align 4
  br label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %443

443:                                              ; preds = %442
  store i32 4, ptr %2, align 4
  br i1 false, label %418, label %444

444:                                              ; preds = %443
  store i32 2, ptr %1, align 4
  br i1 false, label %445, label %464

445:                                              ; preds = %444
  store i32 0, ptr %2, align 4
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  store i32 0, ptr %3, align 4
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %450

450:                                              ; preds = %449
  store i32 1, ptr %2, align 4
  br label %451

451:                                              ; preds = %450
  store i32 0, ptr %3, align 4
  br label %452

452:                                              ; preds = %451
  br label %453

453:                                              ; preds = %452
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %454

454:                                              ; preds = %453
  store i32 2, ptr %2, align 4
  br label %455

455:                                              ; preds = %454
  store i32 0, ptr %3, align 4
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %458

458:                                              ; preds = %457
  store i32 3, ptr %2, align 4
  br label %459

459:                                              ; preds = %458
  store i32 0, ptr %3, align 4
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit66, label %462

462:                                              ; preds = %461
  store i32 4, ptr %2, align 4
  br i1 false, label %418, label %463

463:                                              ; preds = %462
  store i32 3, ptr %1, align 4
  unreachable

464:                                              ; preds = %444
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  store i32 0, ptr %2, align 4
  br label %467

467:                                              ; preds = %466
  br label %468

468:                                              ; preds = %467
  store i32 0, ptr %3, align 4
  br label %469

469:                                              ; preds = %468
  br label %470

470:                                              ; preds = %469
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr %3, align 4
  br label %471

471:                                              ; preds = %470
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit74, label %478

.loopexit74:                                      ; preds = %520, %512, %504, %496, %471
  %.lcssa70.ph = phi i32 [ 0, %471 ], [ 1, %496 ], [ 2, %504 ], [ 3, %512 ], [ 4, %520 ]
  %.lcssa68.ph = phi i32 [ 0, %471 ], [ 0, %496 ], [ 0, %504 ], [ 0, %512 ], [ 0, %520 ]
  br label %472

472:                                              ; preds = %.loopexit74, %485
  %.lcssa70 = phi i32 [ %.lcssa72, %485 ], [ %.lcssa70.ph, %.loopexit74 ]
  %.lcssa68 = phi i32 [ 1, %485 ], [ %.lcssa68.ph, %.loopexit74 ]
  %473 = add nsw i32 %.lcssa68, 16
  %474 = mul nsw i32 8, %473
  %475 = add nsw i32 %.lcssa70, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %476
  store i32 1, ptr %477, align 4
  store i32 3, ptr %3, align 4
  unreachable

478:                                              ; preds = %471
  store i32 1, ptr %2, align 4
  br i1 false, label %479, label %490

479:                                              ; preds = %521, %513, %505, %497, %478
  %.lcssa72 = phi i32 [ 0, %478 ], [ 1, %497 ], [ 2, %505 ], [ 3, %513 ], [ 4, %521 ]
  store i32 0, ptr %3, align 4
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  %482 = add nsw i32 %.lcssa72, 8
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %483
  store i32 1, ptr %484, align 4
  store i32 1, ptr %3, align 4
  br label %485

485:                                              ; preds = %481
  %486 = add nsw i32 %.lcssa72, 72
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %487
  store i32 1, ptr %488, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %472, label %489

489:                                              ; preds = %485
  store i32 2, ptr %2, align 4
  unreachable

490:                                              ; preds = %478
  store i32 1, ptr %1, align 4
  br label %491

491:                                              ; preds = %490
  store i32 0, ptr %2, align 4
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  store i32 0, ptr %3, align 4
  br label %494

494:                                              ; preds = %493
  br label %495

495:                                              ; preds = %494
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr %3, align 4
  br label %496

496:                                              ; preds = %495
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit74, label %497

497:                                              ; preds = %496
  store i32 1, ptr %2, align 4
  br i1 false, label %479, label %498

498:                                              ; preds = %497
  store i32 2, ptr %1, align 4
  br label %499

499:                                              ; preds = %498
  store i32 0, ptr %2, align 4
  br label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  store i32 0, ptr %3, align 4
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr %3, align 4
  br label %504

504:                                              ; preds = %503
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit74, label %505

505:                                              ; preds = %504
  store i32 1, ptr %2, align 4
  br i1 false, label %479, label %506

506:                                              ; preds = %505
  store i32 3, ptr %1, align 4
  br label %507

507:                                              ; preds = %506
  store i32 0, ptr %2, align 4
  br label %508

508:                                              ; preds = %507
  br label %509

509:                                              ; preds = %508
  store i32 0, ptr %3, align 4
  br label %510

510:                                              ; preds = %509
  br label %511

511:                                              ; preds = %510
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr %3, align 4
  br label %512

512:                                              ; preds = %511
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit74, label %513

513:                                              ; preds = %512
  store i32 1, ptr %2, align 4
  br i1 false, label %479, label %514

514:                                              ; preds = %513
  store i32 4, ptr %1, align 4
  br i1 false, label %515, label %523

515:                                              ; preds = %514
  store i32 0, ptr %2, align 4
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516
  store i32 0, ptr %3, align 4
  br label %518

518:                                              ; preds = %517
  br label %519

519:                                              ; preds = %518
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr %3, align 4
  br label %520

520:                                              ; preds = %519
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit74, label %521

521:                                              ; preds = %520
  store i32 1, ptr %2, align 4
  br i1 false, label %479, label %522

522:                                              ; preds = %521
  store i32 5, ptr %1, align 4
  unreachable

523:                                              ; preds = %514
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  store i32 0, ptr %2, align 4
  br label %526

526:                                              ; preds = %525
  br label %527

527:                                              ; preds = %526
  store i32 0, ptr %3, align 4
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr %3, align 4
  br label %530

530:                                              ; preds = %529
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 2, ptr %3, align 4
  br label %531

531:                                              ; preds = %530
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 3, ptr %3, align 4
  br label %532

532:                                              ; preds = %531
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit82, label %539

.loopexit82:                                      ; preds = %581, %574, %532, %545
  %.lcssa78.ph = phi i32 [ 0, %545 ], [ 0, %532 ], [ 1, %574 ], [ 1, %581 ]
  %.lcssa76.ph = phi i32 [ 1, %545 ], [ 0, %532 ], [ 0, %574 ], [ 1, %581 ]
  br label %533

533:                                              ; preds = %.loopexit82, %561
  %.lcssa78 = phi i32 [ %.lcssa81, %561 ], [ %.lcssa78.ph, %.loopexit82 ]
  %.lcssa76 = phi i32 [ 2, %561 ], [ %.lcssa76.ph, %.loopexit82 ]
  %534 = add nsw i32 %.lcssa76, 32
  %535 = mul nsw i32 8, %534
  %536 = add nsw i32 %.lcssa78, %535
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %537
  store i32 1, ptr %538, align 4
  store i32 5, ptr %3, align 4
  unreachable

539:                                              ; preds = %532
  store i32 1, ptr %2, align 4
  br label %540

540:                                              ; preds = %539
  store i32 0, ptr %3, align 4
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr %3, align 4
  br label %543

543:                                              ; preds = %542
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 2, ptr %3, align 4
  br label %544

544:                                              ; preds = %543
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 3, ptr %3, align 4
  br label %545

545:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit82, label %546

546:                                              ; preds = %545
  store i32 2, ptr %2, align 4
  br i1 false, label %547, label %566

547:                                              ; preds = %582, %546
  %.lcssa81 = phi i32 [ 0, %546 ], [ 1, %582 ]
  store i32 0, ptr %3, align 4
  br label %548

548:                                              ; preds = %547
  br label %549

549:                                              ; preds = %548
  %550 = add nsw i32 %.lcssa81, 16
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %551
  store i32 1, ptr %552, align 4
  store i32 1, ptr %3, align 4
  br label %553

553:                                              ; preds = %549
  %554 = add nsw i32 %.lcssa81, 80
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %555
  store i32 1, ptr %556, align 4
  store i32 2, ptr %3, align 4
  br label %557

557:                                              ; preds = %553
  %558 = add nsw i32 %.lcssa81, 144
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %559
  store i32 1, ptr %560, align 4
  store i32 3, ptr %3, align 4
  br label %561

561:                                              ; preds = %557
  %562 = add nsw i32 %.lcssa81, 208
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %563
  store i32 1, ptr %564, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %533, label %565

565:                                              ; preds = %561
  store i32 3, ptr %2, align 4
  unreachable

566:                                              ; preds = %546
  store i32 1, ptr %1, align 4
  br i1 false, label %567, label %584

567:                                              ; preds = %566
  store i32 0, ptr %2, align 4
  br label %568

568:                                              ; preds = %567
  br label %569

569:                                              ; preds = %568
  store i32 0, ptr %3, align 4
  br label %570

570:                                              ; preds = %569
  br label %571

571:                                              ; preds = %570
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  store i32 1, ptr %3, align 4
  br label %572

572:                                              ; preds = %571
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  store i32 2, ptr %3, align 4
  br label %573

573:                                              ; preds = %572
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  store i32 3, ptr %3, align 4
  br label %574

574:                                              ; preds = %573
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit82, label %575

575:                                              ; preds = %574
  store i32 1, ptr %2, align 4
  br label %576

576:                                              ; preds = %575
  store i32 0, ptr %3, align 4
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  store i32 1, ptr %3, align 4
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  store i32 2, ptr %3, align 4
  br label %580

580:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  store i32 3, ptr %3, align 4
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit82, label %582

582:                                              ; preds = %581
  store i32 2, ptr %2, align 4
  br i1 false, label %547, label %583

583:                                              ; preds = %582
  store i32 2, ptr %1, align 4
  unreachable

584:                                              ; preds = %566
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %585

585:                                              ; preds = %584
  br label %586

586:                                              ; preds = %585
  store i32 0, ptr %2, align 4
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  store i32 0, ptr %3, align 4
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit90, label %597

.loopexit90:                                      ; preds = %624, %617, %610, %590
  %.lcssa86.ph = phi i32 [ 0, %590 ], [ 1, %610 ], [ 2, %617 ], [ 3, %624 ]
  %.lcssa84.ph = phi i32 [ 0, %590 ], [ 0, %610 ], [ 0, %617 ], [ 0, %624 ]
  br label %591

591:                                              ; preds = %.loopexit90, %600
  %.lcssa86 = phi i32 [ %.lcssa88, %600 ], [ %.lcssa86.ph, %.loopexit90 ]
  %.lcssa84 = phi i32 [ 1, %600 ], [ %.lcssa84.ph, %.loopexit90 ]
  %592 = add nsw i32 %.lcssa84, 8
  %593 = mul nsw i32 8, %592
  %594 = add nsw i32 %.lcssa86, %593
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %595
  store i32 1, ptr %596, align 4
  store i32 2, ptr %3, align 4
  unreachable

597:                                              ; preds = %590
  store i32 1, ptr %2, align 4
  br i1 false, label %598, label %605

598:                                              ; preds = %625, %618, %611, %597
  %.lcssa88 = phi i32 [ 0, %597 ], [ 1, %611 ], [ 2, %618 ], [ 3, %625 ]
  store i32 0, ptr %3, align 4
  br label %599

599:                                              ; preds = %598
  br label %600

600:                                              ; preds = %599
  %601 = add nsw i32 %.lcssa88, 8
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %602
  store i32 1, ptr %603, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %591, label %604

604:                                              ; preds = %600
  store i32 2, ptr %2, align 4
  unreachable

605:                                              ; preds = %597
  store i32 1, ptr %1, align 4
  br label %606

606:                                              ; preds = %605
  store i32 0, ptr %2, align 4
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  store i32 0, ptr %3, align 4
  br label %609

609:                                              ; preds = %608
  br label %610

610:                                              ; preds = %609
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit90, label %611

611:                                              ; preds = %610
  store i32 1, ptr %2, align 4
  br i1 false, label %598, label %612

612:                                              ; preds = %611
  store i32 2, ptr %1, align 4
  br label %613

613:                                              ; preds = %612
  store i32 0, ptr %2, align 4
  br label %614

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  store i32 0, ptr %3, align 4
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit90, label %618

618:                                              ; preds = %617
  store i32 1, ptr %2, align 4
  br i1 false, label %598, label %619

619:                                              ; preds = %618
  store i32 3, ptr %1, align 4
  br i1 false, label %620, label %627

620:                                              ; preds = %619
  store i32 0, ptr %2, align 4
  br label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  store i32 0, ptr %3, align 4
  br label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit90, label %625

625:                                              ; preds = %624
  store i32 1, ptr %2, align 4
  br i1 false, label %598, label %626

626:                                              ; preds = %625
  store i32 4, ptr %1, align 4
  unreachable

627:                                              ; preds = %619
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  store i32 0, ptr %2, align 4
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  store i32 0, ptr %3, align 4
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %640

.loopexit98:                                      ; preds = %669, %665, %661, %633, %643, %647
  %.lcssa94.ph = phi i32 [ 0, %647 ], [ 0, %643 ], [ 0, %633 ], [ 1, %661 ], [ 1, %665 ], [ 1, %669 ]
  %.lcssa92.ph = phi i32 [ 2, %647 ], [ 1, %643 ], [ 0, %633 ], [ 0, %661 ], [ 1, %665 ], [ 2, %669 ]
  br label %634

634:                                              ; preds = %.loopexit98, %651
  %.lcssa94 = phi i32 [ %.lcssa97, %651 ], [ %.lcssa94.ph, %.loopexit98 ]
  %.lcssa92 = phi i32 [ 3, %651 ], [ %.lcssa92.ph, %.loopexit98 ]
  %635 = add nsw i32 %.lcssa92, 8
  %636 = mul nsw i32 8, %635
  %637 = add nsw i32 %.lcssa94, %636
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %638
  store i32 1, ptr %639, align 4
  store i32 2, ptr %3, align 4
  unreachable

640:                                              ; preds = %633
  store i32 1, ptr %2, align 4
  br label %641

641:                                              ; preds = %640
  store i32 0, ptr %3, align 4
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %644

644:                                              ; preds = %643
  store i32 2, ptr %2, align 4
  br label %645

645:                                              ; preds = %644
  store i32 0, ptr %3, align 4
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %648

648:                                              ; preds = %647
  store i32 3, ptr %2, align 4
  br i1 false, label %649, label %656

649:                                              ; preds = %670, %648
  %.lcssa97 = phi i32 [ 0, %648 ], [ 1, %670 ]
  store i32 0, ptr %3, align 4
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  %652 = add nsw i32 %.lcssa97, 24
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %653
  store i32 1, ptr %654, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %634, label %655

655:                                              ; preds = %651
  store i32 4, ptr %2, align 4
  unreachable

656:                                              ; preds = %648
  store i32 1, ptr %1, align 4
  br i1 false, label %657, label %672

657:                                              ; preds = %656
  store i32 0, ptr %2, align 4
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
  store i32 0, ptr %3, align 4
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %662

662:                                              ; preds = %661
  store i32 1, ptr %2, align 4
  br label %663

663:                                              ; preds = %662
  store i32 0, ptr %3, align 4
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %666

666:                                              ; preds = %665
  store i32 2, ptr %2, align 4
  br label %667

667:                                              ; preds = %666
  store i32 0, ptr %3, align 4
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %670

670:                                              ; preds = %669
  store i32 3, ptr %2, align 4
  br i1 false, label %649, label %671

671:                                              ; preds = %670
  store i32 2, ptr %1, align 4
  unreachable

672:                                              ; preds = %656
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673
  store i32 0, ptr %2, align 4
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  store i32 0, ptr %3, align 4
  br label %677

677:                                              ; preds = %676
  br label %678

678:                                              ; preds = %677
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr %3, align 4
  br label %679

679:                                              ; preds = %678
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 2, ptr %3, align 4
  br label %680

680:                                              ; preds = %679
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit106, label %687

.loopexit106:                                     ; preds = %710, %680
  %.lcssa102.ph = phi i32 [ 0, %680 ], [ 1, %710 ]
  %.lcssa100.ph = phi i32 [ 0, %680 ], [ 0, %710 ]
  br label %681

681:                                              ; preds = %.loopexit106, %698
  %.lcssa102 = phi i32 [ %.lcssa104, %698 ], [ %.lcssa102.ph, %.loopexit106 ]
  %.lcssa100 = phi i32 [ 1, %698 ], [ %.lcssa100.ph, %.loopexit106 ]
  %682 = add nsw i32 %.lcssa100, 24
  %683 = mul nsw i32 8, %682
  %684 = add nsw i32 %.lcssa102, %683
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %685
  store i32 1, ptr %686, align 4
  store i32 4, ptr %3, align 4
  unreachable

687:                                              ; preds = %680
  store i32 1, ptr %2, align 4
  br i1 false, label %688, label %703

688:                                              ; preds = %711, %687
  %.lcssa104 = phi i32 [ 0, %687 ], [ 1, %711 ]
  store i32 0, ptr %3, align 4
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  %691 = add nsw i32 %.lcssa104, 8
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %692
  store i32 1, ptr %693, align 4
  store i32 1, ptr %3, align 4
  br label %694

694:                                              ; preds = %690
  %695 = add nsw i32 %.lcssa104, 72
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %696
  store i32 1, ptr %697, align 4
  store i32 2, ptr %3, align 4
  br label %698

698:                                              ; preds = %694
  %699 = add nsw i32 %.lcssa104, 136
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %700
  store i32 1, ptr %701, align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %681, label %702

702:                                              ; preds = %698
  store i32 2, ptr %2, align 4
  unreachable

703:                                              ; preds = %687
  store i32 1, ptr %1, align 4
  br i1 false, label %704, label %713

704:                                              ; preds = %703
  store i32 0, ptr %2, align 4
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  store i32 0, ptr %3, align 4
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  store i32 1, ptr %3, align 4
  br label %709

709:                                              ; preds = %708
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  store i32 2, ptr %3, align 4
  br label %710

710:                                              ; preds = %709
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit106, label %711

711:                                              ; preds = %710
  store i32 1, ptr %2, align 4
  br i1 false, label %688, label %712

712:                                              ; preds = %711
  store i32 2, ptr %1, align 4
  unreachable

713:                                              ; preds = %703
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %714

714:                                              ; preds = %713
  br label %715

715:                                              ; preds = %714
  store i32 0, ptr %2, align 4
  br label %716

716:                                              ; preds = %715
  br label %717

717:                                              ; preds = %716
  store i32 0, ptr %3, align 4
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %726

.loopexit114:                                     ; preds = %758, %754, %747, %743, %719, %729
  %.lcssa110.ph = phi i32 [ 0, %729 ], [ 0, %719 ], [ 1, %743 ], [ 1, %747 ], [ 2, %754 ], [ 2, %758 ]
  %.lcssa108.ph = phi i32 [ 1, %729 ], [ 0, %719 ], [ 0, %743 ], [ 1, %747 ], [ 0, %754 ], [ 1, %758 ]
  br label %720

720:                                              ; preds = %.loopexit114, %733
  %.lcssa110 = phi i32 [ %.lcssa113, %733 ], [ %.lcssa110.ph, %.loopexit114 ]
  %.lcssa108 = phi i32 [ 2, %733 ], [ %.lcssa108.ph, %.loopexit114 ]
  %721 = add nsw i32 %.lcssa108, 8
  %722 = mul nsw i32 8, %721
  %723 = add nsw i32 %.lcssa110, %722
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %724
  store i32 1, ptr %725, align 4
  store i32 2, ptr %3, align 4
  unreachable

726:                                              ; preds = %719
  store i32 1, ptr %2, align 4
  br label %727

727:                                              ; preds = %726
  store i32 0, ptr %3, align 4
  br label %728

728:                                              ; preds = %727
  br label %729

729:                                              ; preds = %728
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %730

730:                                              ; preds = %729
  store i32 2, ptr %2, align 4
  br i1 false, label %731, label %738

731:                                              ; preds = %759, %748, %730
  %.lcssa113 = phi i32 [ 0, %730 ], [ 1, %748 ], [ 2, %759 ]
  store i32 0, ptr %3, align 4
  br label %732

732:                                              ; preds = %731
  br label %733

733:                                              ; preds = %732
  %734 = add nsw i32 %.lcssa113, 16
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %735
  store i32 1, ptr %736, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %720, label %737

737:                                              ; preds = %733
  store i32 3, ptr %2, align 4
  unreachable

738:                                              ; preds = %730
  store i32 1, ptr %1, align 4
  br label %739

739:                                              ; preds = %738
  store i32 0, ptr %2, align 4
  br label %740

740:                                              ; preds = %739
  br label %741

741:                                              ; preds = %740
  store i32 0, ptr %3, align 4
  br label %742

742:                                              ; preds = %741
  br label %743

743:                                              ; preds = %742
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %744

744:                                              ; preds = %743
  store i32 1, ptr %2, align 4
  br label %745

745:                                              ; preds = %744
  store i32 0, ptr %3, align 4
  br label %746

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %748

748:                                              ; preds = %747
  store i32 2, ptr %2, align 4
  br i1 false, label %731, label %749

749:                                              ; preds = %748
  store i32 2, ptr %1, align 4
  br i1 false, label %750, label %761

750:                                              ; preds = %749
  store i32 0, ptr %2, align 4
  br label %751

751:                                              ; preds = %750
  br label %752

752:                                              ; preds = %751
  store i32 0, ptr %3, align 4
  br label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %755

755:                                              ; preds = %754
  store i32 1, ptr %2, align 4
  br label %756

756:                                              ; preds = %755
  store i32 0, ptr %3, align 4
  br label %757

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit114, label %759

759:                                              ; preds = %758
  store i32 2, ptr %2, align 4
  br i1 false, label %731, label %760

760:                                              ; preds = %759
  store i32 3, ptr %1, align 4
  unreachable

761:                                              ; preds = %749
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %762

762:                                              ; preds = %761
  br label %763

763:                                              ; preds = %762
  store i32 0, ptr %2, align 4
  br label %764

764:                                              ; preds = %763
  br label %765

765:                                              ; preds = %764
  store i32 0, ptr %3, align 4
  br label %766

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr %3, align 4
  br label %768

768:                                              ; preds = %767
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit122, label %775

.loopexit122:                                     ; preds = %801, %793, %768
  %.lcssa118.ph = phi i32 [ 0, %768 ], [ 1, %793 ], [ 2, %801 ]
  %.lcssa116.ph = phi i32 [ 0, %768 ], [ 0, %793 ], [ 0, %801 ]
  br label %769

769:                                              ; preds = %.loopexit122, %782
  %.lcssa118 = phi i32 [ %.lcssa120, %782 ], [ %.lcssa118.ph, %.loopexit122 ]
  %.lcssa116 = phi i32 [ 1, %782 ], [ %.lcssa116.ph, %.loopexit122 ]
  %770 = add nsw i32 %.lcssa116, 16
  %771 = mul nsw i32 8, %770
  %772 = add nsw i32 %.lcssa118, %771
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %773
  store i32 1, ptr %774, align 4
  store i32 3, ptr %3, align 4
  unreachable

775:                                              ; preds = %768
  store i32 1, ptr %2, align 4
  br i1 false, label %776, label %787

776:                                              ; preds = %802, %794, %775
  %.lcssa120 = phi i32 [ 0, %775 ], [ 1, %794 ], [ 2, %802 ]
  store i32 0, ptr %3, align 4
  br label %777

777:                                              ; preds = %776
  br label %778

778:                                              ; preds = %777
  %779 = add nsw i32 %.lcssa120, 8
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %780
  store i32 1, ptr %781, align 4
  store i32 1, ptr %3, align 4
  br label %782

782:                                              ; preds = %778
  %783 = add nsw i32 %.lcssa120, 72
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %784
  store i32 1, ptr %785, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %769, label %786

786:                                              ; preds = %782
  store i32 2, ptr %2, align 4
  unreachable

787:                                              ; preds = %775
  store i32 1, ptr %1, align 4
  br label %788

788:                                              ; preds = %787
  store i32 0, ptr %2, align 4
  br label %789

789:                                              ; preds = %788
  br label %790

790:                                              ; preds = %789
  store i32 0, ptr %3, align 4
  br label %791

791:                                              ; preds = %790
  br label %792

792:                                              ; preds = %791
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr %3, align 4
  br label %793

793:                                              ; preds = %792
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit122, label %794

794:                                              ; preds = %793
  store i32 1, ptr %2, align 4
  br i1 false, label %776, label %795

795:                                              ; preds = %794
  store i32 2, ptr %1, align 4
  br i1 false, label %796, label %804

796:                                              ; preds = %795
  store i32 0, ptr %2, align 4
  br label %797

797:                                              ; preds = %796
  br label %798

798:                                              ; preds = %797
  store i32 0, ptr %3, align 4
  br label %799

799:                                              ; preds = %798
  br label %800

800:                                              ; preds = %799
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr %3, align 4
  br label %801

801:                                              ; preds = %800
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit122, label %802

802:                                              ; preds = %801
  store i32 1, ptr %2, align 4
  br i1 false, label %776, label %803

803:                                              ; preds = %802
  store i32 3, ptr %1, align 4
  unreachable

804:                                              ; preds = %795
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %805

805:                                              ; preds = %804
  br label %806

806:                                              ; preds = %805
  store i32 0, ptr %2, align 4
  br label %807

807:                                              ; preds = %806
  br label %808

808:                                              ; preds = %807
  store i32 0, ptr %3, align 4
  br label %809

809:                                              ; preds = %808
  br label %810

810:                                              ; preds = %809
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr %3, align 4
  br label %811

811:                                              ; preds = %810
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit130, label %818

.loopexit130:                                     ; preds = %846, %841, %811, %822
  %.lcssa126.ph = phi i32 [ 0, %822 ], [ 0, %811 ], [ 1, %841 ], [ 1, %846 ]
  %.lcssa124.ph = phi i32 [ 1, %822 ], [ 0, %811 ], [ 0, %841 ], [ 1, %846 ]
  br label %812

812:                                              ; preds = %.loopexit130, %830
  %.lcssa126 = phi i32 [ %.lcssa129, %830 ], [ %.lcssa126.ph, %.loopexit130 ]
  %.lcssa124 = phi i32 [ 2, %830 ], [ %.lcssa124.ph, %.loopexit130 ]
  %813 = add nsw i32 %.lcssa124, 16
  %814 = mul nsw i32 8, %813
  %815 = add nsw i32 %.lcssa126, %814
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %816
  store i32 1, ptr %817, align 4
  store i32 3, ptr %3, align 4
  unreachable

818:                                              ; preds = %811
  store i32 1, ptr %2, align 4
  br label %819

819:                                              ; preds = %818
  store i32 0, ptr %3, align 4
  br label %820

820:                                              ; preds = %819
  br label %821

821:                                              ; preds = %820
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr %3, align 4
  br label %822

822:                                              ; preds = %821
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit130, label %823

823:                                              ; preds = %822
  store i32 2, ptr %2, align 4
  br i1 false, label %824, label %835

824:                                              ; preds = %847, %823
  %.lcssa129 = phi i32 [ 0, %823 ], [ 1, %847 ]
  store i32 0, ptr %3, align 4
  br label %825

825:                                              ; preds = %824
  br label %826

826:                                              ; preds = %825
  %827 = add nsw i32 %.lcssa129, 16
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %828
  store i32 1, ptr %829, align 4
  store i32 1, ptr %3, align 4
  br label %830

830:                                              ; preds = %826
  %831 = add nsw i32 %.lcssa129, 80
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %832
  store i32 1, ptr %833, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %812, label %834

834:                                              ; preds = %830
  store i32 3, ptr %2, align 4
  unreachable

835:                                              ; preds = %823
  store i32 1, ptr %1, align 4
  br i1 false, label %836, label %849

836:                                              ; preds = %835
  store i32 0, ptr %2, align 4
  br label %837

837:                                              ; preds = %836
  br label %838

838:                                              ; preds = %837
  store i32 0, ptr %3, align 4
  br label %839

839:                                              ; preds = %838
  br label %840

840:                                              ; preds = %839
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  store i32 1, ptr %3, align 4
  br label %841

841:                                              ; preds = %840
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit130, label %842

842:                                              ; preds = %841
  store i32 1, ptr %2, align 4
  br label %843

843:                                              ; preds = %842
  store i32 0, ptr %3, align 4
  br label %844

844:                                              ; preds = %843
  br label %845

845:                                              ; preds = %844
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  store i32 1, ptr %3, align 4
  br label %846

846:                                              ; preds = %845
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit130, label %847

847:                                              ; preds = %846
  store i32 2, ptr %2, align 4
  br i1 false, label %824, label %848

848:                                              ; preds = %847
  store i32 2, ptr %1, align 4
  unreachable

849:                                              ; preds = %835
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %850

850:                                              ; preds = %849
  br label %851

851:                                              ; preds = %850
  store i32 0, ptr %2, align 4
  br label %852

852:                                              ; preds = %851
  br label %853

853:                                              ; preds = %852
  store i32 0, ptr %3, align 4
  br label %854

854:                                              ; preds = %853
  br label %855

855:                                              ; preds = %854
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr %3, align 4
  br label %856

856:                                              ; preds = %855
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %863

.loopexit137:                                     ; preds = %904, %899, %891, %886, %856, %867
  %.lcssa134.ph = phi i32 [ 0, %867 ], [ 0, %856 ], [ 1, %886 ], [ 1, %891 ], [ 2, %899 ], [ 2, %904 ]
  %.lcssa132.ph = phi i32 [ 1, %867 ], [ 0, %856 ], [ 0, %886 ], [ 1, %891 ], [ 0, %899 ], [ 1, %904 ]
  br label %857

857:                                              ; preds = %.loopexit137, %875
  %.lcssa134 = phi i32 [ %.lcssa136, %875 ], [ %.lcssa134.ph, %.loopexit137 ]
  %.lcssa132 = phi i32 [ 2, %875 ], [ %.lcssa132.ph, %.loopexit137 ]
  %858 = add nsw i32 %.lcssa132, 16
  %859 = mul nsw i32 8, %858
  %860 = add nsw i32 %.lcssa134, %859
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %861
  store i32 1, ptr %862, align 4
  store i32 3, ptr %3, align 4
  unreachable

863:                                              ; preds = %856
  store i32 1, ptr %2, align 4
  br label %864

864:                                              ; preds = %863
  store i32 0, ptr %3, align 4
  br label %865

865:                                              ; preds = %864
  br label %866

866:                                              ; preds = %865
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr %3, align 4
  br label %867

867:                                              ; preds = %866
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %868

868:                                              ; preds = %867
  store i32 2, ptr %2, align 4
  br i1 false, label %869, label %880

869:                                              ; preds = %905, %892, %868
  %.lcssa136 = phi i32 [ 0, %868 ], [ 1, %892 ], [ 2, %905 ]
  store i32 0, ptr %3, align 4
  br label %870

870:                                              ; preds = %869
  br label %871

871:                                              ; preds = %870
  %872 = add nsw i32 %.lcssa136, 16
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %873
  store i32 1, ptr %874, align 4
  store i32 1, ptr %3, align 4
  br label %875

875:                                              ; preds = %871
  %876 = add nsw i32 %.lcssa136, 80
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %877
  store i32 1, ptr %878, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %857, label %879

879:                                              ; preds = %875
  store i32 3, ptr %2, align 4
  unreachable

880:                                              ; preds = %868
  store i32 1, ptr %1, align 4
  br label %881

881:                                              ; preds = %880
  store i32 0, ptr %2, align 4
  br label %882

882:                                              ; preds = %881
  br label %883

883:                                              ; preds = %882
  store i32 0, ptr %3, align 4
  br label %884

884:                                              ; preds = %883
  br label %885

885:                                              ; preds = %884
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr %3, align 4
  br label %886

886:                                              ; preds = %885
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %887

887:                                              ; preds = %886
  store i32 1, ptr %2, align 4
  br label %888

888:                                              ; preds = %887
  store i32 0, ptr %3, align 4
  br label %889

889:                                              ; preds = %888
  br label %890

890:                                              ; preds = %889
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr %3, align 4
  br label %891

891:                                              ; preds = %890
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %892

892:                                              ; preds = %891
  store i32 2, ptr %2, align 4
  br i1 false, label %869, label %893

893:                                              ; preds = %892
  store i32 2, ptr %1, align 4
  br i1 false, label %894, label %907

894:                                              ; preds = %893
  store i32 0, ptr %2, align 4
  br label %895

895:                                              ; preds = %894
  br label %896

896:                                              ; preds = %895
  store i32 0, ptr %3, align 4
  br label %897

897:                                              ; preds = %896
  br label %898

898:                                              ; preds = %897
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr %3, align 4
  br label %899

899:                                              ; preds = %898
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %900

900:                                              ; preds = %899
  store i32 1, ptr %2, align 4
  br label %901

901:                                              ; preds = %900
  store i32 0, ptr %3, align 4
  br label %902

902:                                              ; preds = %901
  br label %903

903:                                              ; preds = %902
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr %3, align 4
  br label %904

904:                                              ; preds = %903
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit137, label %905

905:                                              ; preds = %904
  store i32 2, ptr %2, align 4
  br i1 false, label %869, label %906

906:                                              ; preds = %905
  store i32 3, ptr %1, align 4
  unreachable

907:                                              ; preds = %893
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %908 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %912

910:                                              ; preds = %907
  %911 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %911, ptr @n, align 4
  br label %914

912:                                              ; preds = %907
  %913 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %914

914:                                              ; preds = %912, %910
  %915 = phi i32 [ %.pre, %912 ], [ %911, %910 ]
  %916 = call i32 @Trial(i32 noundef %915)
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %920, label %918

918:                                              ; preds = %914
  %919 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %926

920:                                              ; preds = %914
  %921 = load i32, ptr @kount, align 4
  %922 = icmp ne i32 %921, 2005
  br i1 %922, label %923, label %925

923:                                              ; preds = %920
  %924 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %925

925:                                              ; preds = %923, %920
  br label %926

926:                                              ; preds = %925, %918
  %927 = load i32, ptr @n, align 4
  %928 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %927)
  %929 = load i32, ptr @kount, align 4
  %930 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %929)
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
  br label %3, !llvm.loop !17

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
