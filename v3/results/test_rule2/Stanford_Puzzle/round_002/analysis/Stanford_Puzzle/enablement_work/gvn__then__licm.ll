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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %.promoted = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %25, %2
  %9 = phi i32 [ %26, %25 ], [ %.promoted, %2 ]
  %10 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %11 = icmp sle i32 %10, %.pre
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = add nsw i32 %1, %10
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  %.lcssa2 = phi i32 [ %9, %17 ]
  store i32 %.lcssa2, ptr %6, align 1
  store i32 0, ptr %3, align 4
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = add nsw i32 %10, 1
  br label %8, !llvm.loop !7

27:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  store i32 %.lcssa, ptr %6, align 1
  store i32 1, ptr %3, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 1, %27 ], [ 0, %23 ]
  ret i32 %29
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
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %.promoted = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %22, %2
  %9 = phi i32 [ %24, %22 ], [ %.promoted, %2 ]
  %10 = phi i32 [ %23, %22 ], [ %1, %2 ]
  %11 = phi i32 [ %24, %22 ], [ 0, %2 ]
  %12 = icmp sle i32 %11, %.pre
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = add nsw i32 %1, %11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %20
  store i32 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i32 [ %1, %18 ], [ %10, %13 ]
  %24 = add nsw i32 %11, 1
  br label %8, !llvm.loop !9

25:                                               ; preds = %8
  %.lcssa3 = phi i32 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  store i32 %.lcssa3, ptr %6, align 1
  %26 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, ptr %29, align 4
  store i32 %.lcssa, ptr %6, align 4
  %.promoted4 = load i32, ptr %6, align 1
  br label %32

32:                                               ; preds = %42, %25
  %33 = phi i32 [ %43, %42 ], [ %.promoted4, %25 ]
  %34 = phi i32 [ %43, %42 ], [ %.lcssa, %25 ]
  %35 = icmp sle i32 %34, 511
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  %.lcssa6 = phi i32 [ %33, %36 ]
  %.lcssa2 = phi i32 [ %34, %36 ]
  store i32 %.lcssa6, ptr %6, align 1
  store i32 %.lcssa2, ptr %3, align 4
  br label %45

42:                                               ; preds = %36
  %43 = add nsw i32 %34, 1
  br label %32, !llvm.loop !10

44:                                               ; preds = %32
  %.lcssa5 = phi i32 [ %33, %32 ]
  store i32 %.lcssa5, ptr %6, align 1
  store i32 0, ptr %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ 0, %44 ], [ %.lcssa2, %41 ]
  ret i32 %46
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
  %6 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %.promoted = load i32, ptr %5, align 1
  br label %7

7:                                                ; preds = %20, %2
  %8 = phi i32 [ %21, %20 ], [ %.promoted, %2 ]
  %9 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %10 = icmp sle i32 %9, %.pre
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [512 x i32], ptr %6, i64 0, i64 %12
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
  %21 = add nsw i32 %9, 1
  br label %7, !llvm.loop !11

22:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 1
  %23 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
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
  %.promoted = load i32, ptr %5, align 1
  %.promoted2 = load i32, ptr %4, align 1
  br label %8

8:                                                ; preds = %36, %1
  %9 = phi i32 [ %39, %36 ], [ %.promoted2, %1 ]
  %10 = phi i32 [ %37, %36 ], [ %.promoted, %1 ]
  %11 = phi i32 [ %38, %36 ], [ %0, %1 ]
  %12 = phi i32 [ %39, %36 ], [ 0, %1 ]
  %13 = icmp sle i32 %12, 12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = call i32 @Fit(i32 noundef %12, i32 noundef %11)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i32 @Place(i32 noundef %12, i32 noundef %11)
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29, %25
  %.lcssa4 = phi i32 [ %9, %29 ], [ %9, %25 ]
  %.lcssa1 = phi i32 [ %26, %29 ], [ %26, %25 ]
  store i32 %.lcssa1, ptr %5, align 1
  store i32 %.lcssa4, ptr %4, align 1
  store i32 1, ptr %2, align 4
  br label %41

32:                                               ; preds = %29
  call void @Remove(i32 noundef %12, i32 noundef %0)
  br label %33

33:                                               ; preds = %32, %22
  %34 = phi i32 [ %26, %32 ], [ %10, %22 ]
  %35 = phi i32 [ %0, %32 ], [ %11, %22 ]
  br label %36

36:                                               ; preds = %33, %14
  %37 = phi i32 [ %34, %33 ], [ %10, %14 ]
  %38 = phi i32 [ %35, %33 ], [ %11, %14 ]
  %39 = add nsw i32 %12, 1
  br label %8, !llvm.loop !12

40:                                               ; preds = %8
  %.lcssa3 = phi i32 [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  store i32 %.lcssa, ptr %5, align 1
  store i32 %.lcssa3, ptr %4, align 1
  store i32 0, ptr %2, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = phi i32 [ 0, %40 ], [ 1, %31 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = phi i32 [ %12, %9 ], [ poison, %0 ]
  %7 = phi i32 [ %12, %9 ], [ 0, %0 ]
  %8 = icmp sle i32 %7, 511
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %10
  store i32 1, ptr %11, align 4
  %12 = add nsw i32 %7, 1
  br label %5, !llvm.loop !13

13:                                               ; preds = %5
  %.lcssa28 = phi i32 [ %6, %5 ]
  store i32 %.lcssa28, ptr %4, align 4
  store i32 1, ptr %1, align 4
  br label %14

14:                                               ; preds = %40, %13
  %15 = phi i32 [ %41, %40 ], [ poison, %13 ]
  %.lcssa2930.lcssa33 = phi i32 [ %.lcssa2930.lcssa, %40 ], [ poison, %13 ]
  %.lcssa3132 = phi i32 [ %.lcssa31, %40 ], [ poison, %13 ]
  %16 = phi i32 [ %41, %40 ], [ 1, %13 ]
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %38, %18
  %20 = phi i32 [ %39, %38 ], [ poison, %18 ]
  %.lcssa2930 = phi i32 [ %.lcssa29, %38 ], [ poison, %18 ]
  %21 = phi i32 [ %.lcssa26, %38 ], [ %16, %18 ]
  %22 = phi i32 [ %39, %38 ], [ 1, %18 ]
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi i32 [ %37, %30 ], [ poison, %24 ]
  %27 = phi i32 [ %37, %30 ], [ 1, %24 ]
  %28 = phi i32 [ %16, %30 ], [ %21, %24 ]
  %29 = icmp sle i32 %27, 5
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = mul nsw i32 8, %27
  %32 = add nsw i32 %22, %31
  %33 = mul nsw i32 8, %32
  %34 = add nsw i32 %16, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %35
  store i32 0, ptr %36, align 4
  %37 = add nsw i32 %27, 1
  br label %25, !llvm.loop !14

38:                                               ; preds = %25
  %.lcssa29 = phi i32 [ %26, %25 ]
  %.lcssa26 = phi i32 [ %28, %25 ]
  %39 = add nsw i32 %22, 1
  br label %19, !llvm.loop !15

40:                                               ; preds = %19
  %.lcssa31 = phi i32 [ %20, %19 ]
  %.lcssa2930.lcssa = phi i32 [ %.lcssa2930, %19 ]
  %.lcssa27 = phi i32 [ %21, %19 ]
  %41 = add nsw i32 %.lcssa27, 1
  br label %14, !llvm.loop !16

42:                                               ; preds = %14
  %.lcssa34 = phi i32 [ %15, %14 ]
  %.lcssa2930.lcssa33.lcssa = phi i32 [ %.lcssa2930.lcssa33, %14 ]
  %.lcssa3132.lcssa = phi i32 [ %.lcssa3132, %14 ]
  store i32 %.lcssa3132.lcssa, ptr %2, align 4
  store i32 %.lcssa2930.lcssa33.lcssa, ptr %3, align 4
  store i32 %.lcssa34, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = phi i32 [ %59, %58 ], [ poison, %42 ]
  %.lcssa3536 = phi i32 [ %.lcssa35, %58 ], [ poison, %42 ]
  %45 = phi i32 [ %59, %58 ], [ 0, %42 ]
  %46 = icmp sle i32 %45, 12
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %48
  br label %50

50:                                               ; preds = %54, %47
  %51 = phi i32 [ %57, %54 ], [ poison, %47 ]
  %52 = phi i32 [ %57, %54 ], [ 0, %47 ]
  %53 = icmp sle i32 %52, 511
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds [512 x i32], ptr %49, i64 0, i64 %55
  store i32 0, ptr %56, align 4
  %57 = add nsw i32 %52, 1
  br label %50, !llvm.loop !17

58:                                               ; preds = %50
  %.lcssa35 = phi i32 [ %51, %50 ]
  %59 = add nsw i32 %45, 1
  br label %43, !llvm.loop !18

60:                                               ; preds = %43
  %.lcssa37 = phi i32 [ %44, %43 ]
  %.lcssa3536.lcssa = phi i32 [ %.lcssa3536, %43 ]
  store i32 %.lcssa3536.lcssa, ptr %4, align 4
  store i32 %.lcssa37, ptr %1, align 4
  store i32 0, ptr %1, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = phi i32 [ %88, %87 ], [ poison, %60 ]
  %.lcssa3839.lcssa42 = phi i32 [ %.lcssa3839.lcssa, %87 ], [ poison, %60 ]
  %.lcssa4041 = phi i32 [ %.lcssa40, %87 ], [ poison, %60 ]
  %63 = phi i32 [ %88, %87 ], [ 0, %60 ]
  %64 = icmp sle i32 %63, 3
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %85, %65
  %67 = phi i32 [ %86, %85 ], [ poison, %65 ]
  %.lcssa3839 = phi i32 [ %.lcssa38, %85 ], [ poison, %65 ]
  %68 = phi i32 [ %.lcssa24, %85 ], [ %63, %65 ]
  %69 = phi i32 [ %86, %85 ], [ 0, %65 ]
  %70 = icmp sle i32 %69, 1
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %77, %71
  %73 = phi i32 [ %84, %77 ], [ poison, %71 ]
  %74 = phi i32 [ %84, %77 ], [ 0, %71 ]
  %75 = phi i32 [ %63, %77 ], [ %68, %71 ]
  %76 = icmp sle i32 %74, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = mul nsw i32 8, %74
  %79 = add nsw i32 %69, %78
  %80 = mul nsw i32 8, %79
  %81 = add nsw i32 %63, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %82
  store i32 1, ptr %83, align 4
  %84 = add nsw i32 %74, 1
  br label %72, !llvm.loop !19

85:                                               ; preds = %72
  %.lcssa38 = phi i32 [ %73, %72 ]
  %.lcssa24 = phi i32 [ %75, %72 ]
  %86 = add nsw i32 %69, 1
  br label %66, !llvm.loop !20

87:                                               ; preds = %66
  %.lcssa40 = phi i32 [ %67, %66 ]
  %.lcssa3839.lcssa = phi i32 [ %.lcssa3839, %66 ]
  %.lcssa25 = phi i32 [ %68, %66 ]
  %88 = add nsw i32 %.lcssa25, 1
  br label %61, !llvm.loop !21

89:                                               ; preds = %61
  %.lcssa43 = phi i32 [ %62, %61 ]
  %.lcssa3839.lcssa42.lcssa = phi i32 [ %.lcssa3839.lcssa42, %61 ]
  %.lcssa4041.lcssa = phi i32 [ %.lcssa4041, %61 ]
  store i32 %.lcssa4041.lcssa, ptr %2, align 4
  store i32 %.lcssa3839.lcssa42.lcssa, ptr %3, align 4
  store i32 %.lcssa43, ptr %1, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %90

90:                                               ; preds = %116, %89
  %91 = phi i32 [ %117, %116 ], [ poison, %89 ]
  %.lcssa4445.lcssa48 = phi i32 [ %.lcssa4445.lcssa, %116 ], [ poison, %89 ]
  %.lcssa4647 = phi i32 [ %.lcssa46, %116 ], [ poison, %89 ]
  %92 = phi i32 [ %117, %116 ], [ 0, %89 ]
  %93 = icmp sle i32 %92, 1
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %114, %94
  %96 = phi i32 [ %115, %114 ], [ poison, %94 ]
  %.lcssa4445 = phi i32 [ %.lcssa44, %114 ], [ poison, %94 ]
  %97 = phi i32 [ %.lcssa22, %114 ], [ %92, %94 ]
  %98 = phi i32 [ %115, %114 ], [ 0, %94 ]
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %106, %100
  %102 = phi i32 [ %113, %106 ], [ poison, %100 ]
  %103 = phi i32 [ %113, %106 ], [ 0, %100 ]
  %104 = phi i32 [ %92, %106 ], [ %97, %100 ]
  %105 = icmp sle i32 %103, 3
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = mul nsw i32 8, %103
  %108 = add nsw i32 %98, %107
  %109 = mul nsw i32 8, %108
  %110 = add nsw i32 %92, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nsw i32 %103, 1
  br label %101, !llvm.loop !22

114:                                              ; preds = %101
  %.lcssa44 = phi i32 [ %102, %101 ]
  %.lcssa22 = phi i32 [ %104, %101 ]
  %115 = add nsw i32 %98, 1
  br label %95, !llvm.loop !23

116:                                              ; preds = %95
  %.lcssa46 = phi i32 [ %96, %95 ]
  %.lcssa4445.lcssa = phi i32 [ %.lcssa4445, %95 ]
  %.lcssa23 = phi i32 [ %97, %95 ]
  %117 = add nsw i32 %.lcssa23, 1
  br label %90, !llvm.loop !24

118:                                              ; preds = %90
  %.lcssa49 = phi i32 [ %91, %90 ]
  %.lcssa4445.lcssa48.lcssa = phi i32 [ %.lcssa4445.lcssa48, %90 ]
  %.lcssa4647.lcssa = phi i32 [ %.lcssa4647, %90 ]
  store i32 %.lcssa4647.lcssa, ptr %2, align 4
  store i32 %.lcssa4445.lcssa48.lcssa, ptr %3, align 4
  store i32 %.lcssa49, ptr %1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %119

119:                                              ; preds = %145, %118
  %120 = phi i32 [ %146, %145 ], [ poison, %118 ]
  %.lcssa5051.lcssa54 = phi i32 [ %.lcssa5051.lcssa, %145 ], [ poison, %118 ]
  %.lcssa5253 = phi i32 [ %.lcssa52, %145 ], [ poison, %118 ]
  %121 = phi i32 [ %146, %145 ], [ 0, %118 ]
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %143, %123
  %125 = phi i32 [ %144, %143 ], [ poison, %123 ]
  %.lcssa5051 = phi i32 [ %.lcssa50, %143 ], [ poison, %123 ]
  %126 = phi i32 [ %.lcssa20, %143 ], [ %121, %123 ]
  %127 = phi i32 [ %144, %143 ], [ 0, %123 ]
  %128 = icmp sle i32 %127, 3
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %135, %129
  %131 = phi i32 [ %142, %135 ], [ poison, %129 ]
  %132 = phi i32 [ %142, %135 ], [ 0, %129 ]
  %133 = phi i32 [ %121, %135 ], [ %126, %129 ]
  %134 = icmp sle i32 %132, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = mul nsw i32 8, %132
  %137 = add nsw i32 %127, %136
  %138 = mul nsw i32 8, %137
  %139 = add nsw i32 %121, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nsw i32 %132, 1
  br label %130, !llvm.loop !25

143:                                              ; preds = %130
  %.lcssa50 = phi i32 [ %131, %130 ]
  %.lcssa20 = phi i32 [ %133, %130 ]
  %144 = add nsw i32 %127, 1
  br label %124, !llvm.loop !26

145:                                              ; preds = %124
  %.lcssa52 = phi i32 [ %125, %124 ]
  %.lcssa5051.lcssa = phi i32 [ %.lcssa5051, %124 ]
  %.lcssa21 = phi i32 [ %126, %124 ]
  %146 = add nsw i32 %.lcssa21, 1
  br label %119, !llvm.loop !27

147:                                              ; preds = %119
  %.lcssa55 = phi i32 [ %120, %119 ]
  %.lcssa5051.lcssa54.lcssa = phi i32 [ %.lcssa5051.lcssa54, %119 ]
  %.lcssa5253.lcssa = phi i32 [ %.lcssa5253, %119 ]
  store i32 %.lcssa5253.lcssa, ptr %2, align 4
  store i32 %.lcssa5051.lcssa54.lcssa, ptr %3, align 4
  store i32 %.lcssa55, ptr %1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %148

148:                                              ; preds = %174, %147
  %149 = phi i32 [ %175, %174 ], [ poison, %147 ]
  %.lcssa5657.lcssa60 = phi i32 [ %.lcssa5657.lcssa, %174 ], [ poison, %147 ]
  %.lcssa5859 = phi i32 [ %.lcssa58, %174 ], [ poison, %147 ]
  %150 = phi i32 [ %175, %174 ], [ 0, %147 ]
  %151 = icmp sle i32 %150, 1
  br i1 %151, label %152, label %176

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %172, %152
  %154 = phi i32 [ %173, %172 ], [ poison, %152 ]
  %.lcssa5657 = phi i32 [ %.lcssa56, %172 ], [ poison, %152 ]
  %155 = phi i32 [ %.lcssa18, %172 ], [ %150, %152 ]
  %156 = phi i32 [ %173, %172 ], [ 0, %152 ]
  %157 = icmp sle i32 %156, 3
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %164, %158
  %160 = phi i32 [ %171, %164 ], [ poison, %158 ]
  %161 = phi i32 [ %171, %164 ], [ 0, %158 ]
  %162 = phi i32 [ %150, %164 ], [ %155, %158 ]
  %163 = icmp sle i32 %161, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = mul nsw i32 8, %161
  %166 = add nsw i32 %156, %165
  %167 = mul nsw i32 8, %166
  %168 = add nsw i32 %150, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nsw i32 %161, 1
  br label %159, !llvm.loop !28

172:                                              ; preds = %159
  %.lcssa56 = phi i32 [ %160, %159 ]
  %.lcssa18 = phi i32 [ %162, %159 ]
  %173 = add nsw i32 %156, 1
  br label %153, !llvm.loop !29

174:                                              ; preds = %153
  %.lcssa58 = phi i32 [ %154, %153 ]
  %.lcssa5657.lcssa = phi i32 [ %.lcssa5657, %153 ]
  %.lcssa19 = phi i32 [ %155, %153 ]
  %175 = add nsw i32 %.lcssa19, 1
  br label %148, !llvm.loop !30

176:                                              ; preds = %148
  %.lcssa61 = phi i32 [ %149, %148 ]
  %.lcssa5657.lcssa60.lcssa = phi i32 [ %.lcssa5657.lcssa60, %148 ]
  %.lcssa5859.lcssa = phi i32 [ %.lcssa5859, %148 ]
  store i32 %.lcssa5859.lcssa, ptr %2, align 4
  store i32 %.lcssa5657.lcssa60.lcssa, ptr %3, align 4
  store i32 %.lcssa61, ptr %1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %177

177:                                              ; preds = %203, %176
  %178 = phi i32 [ %204, %203 ], [ poison, %176 ]
  %.lcssa6263.lcssa66 = phi i32 [ %.lcssa6263.lcssa, %203 ], [ poison, %176 ]
  %.lcssa6465 = phi i32 [ %.lcssa64, %203 ], [ poison, %176 ]
  %179 = phi i32 [ %204, %203 ], [ 0, %176 ]
  %180 = icmp sle i32 %179, 3
  br i1 %180, label %181, label %205

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %201, %181
  %183 = phi i32 [ %202, %201 ], [ poison, %181 ]
  %.lcssa6263 = phi i32 [ %.lcssa62, %201 ], [ poison, %181 ]
  %184 = phi i32 [ %.lcssa16, %201 ], [ %179, %181 ]
  %185 = phi i32 [ %202, %201 ], [ 0, %181 ]
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %182
  br label %188

188:                                              ; preds = %193, %187
  %189 = phi i32 [ %200, %193 ], [ poison, %187 ]
  %190 = phi i32 [ %200, %193 ], [ 0, %187 ]
  %191 = phi i32 [ %179, %193 ], [ %184, %187 ]
  %192 = icmp sle i32 %190, 1
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = mul nsw i32 8, %190
  %195 = add nsw i32 %185, %194
  %196 = mul nsw i32 8, %195
  %197 = add nsw i32 %179, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nsw i32 %190, 1
  br label %188, !llvm.loop !31

201:                                              ; preds = %188
  %.lcssa62 = phi i32 [ %189, %188 ]
  %.lcssa16 = phi i32 [ %191, %188 ]
  %202 = add nsw i32 %185, 1
  br label %182, !llvm.loop !32

203:                                              ; preds = %182
  %.lcssa64 = phi i32 [ %183, %182 ]
  %.lcssa6263.lcssa = phi i32 [ %.lcssa6263, %182 ]
  %.lcssa17 = phi i32 [ %184, %182 ]
  %204 = add nsw i32 %.lcssa17, 1
  br label %177, !llvm.loop !33

205:                                              ; preds = %177
  %.lcssa67 = phi i32 [ %178, %177 ]
  %.lcssa6263.lcssa66.lcssa = phi i32 [ %.lcssa6263.lcssa66, %177 ]
  %.lcssa6465.lcssa = phi i32 [ %.lcssa6465, %177 ]
  store i32 %.lcssa6465.lcssa, ptr %2, align 4
  store i32 %.lcssa6263.lcssa66.lcssa, ptr %3, align 4
  store i32 %.lcssa67, ptr %1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %206

206:                                              ; preds = %232, %205
  %207 = phi i32 [ %233, %232 ], [ poison, %205 ]
  %.lcssa6869.lcssa72 = phi i32 [ %.lcssa6869.lcssa, %232 ], [ poison, %205 ]
  %.lcssa7071 = phi i32 [ %.lcssa70, %232 ], [ poison, %205 ]
  %208 = phi i32 [ %233, %232 ], [ 0, %205 ]
  %209 = icmp sle i32 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %206
  br label %211

211:                                              ; preds = %230, %210
  %212 = phi i32 [ %231, %230 ], [ poison, %210 ]
  %.lcssa6869 = phi i32 [ %.lcssa68, %230 ], [ poison, %210 ]
  %213 = phi i32 [ %.lcssa14, %230 ], [ %208, %210 ]
  %214 = phi i32 [ %231, %230 ], [ 0, %210 ]
  %215 = icmp sle i32 %214, 1
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %222, %216
  %218 = phi i32 [ %229, %222 ], [ poison, %216 ]
  %219 = phi i32 [ %229, %222 ], [ 0, %216 ]
  %220 = phi i32 [ %208, %222 ], [ %213, %216 ]
  %221 = icmp sle i32 %219, 3
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = mul nsw i32 8, %219
  %224 = add nsw i32 %214, %223
  %225 = mul nsw i32 8, %224
  %226 = add nsw i32 %208, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %227
  store i32 1, ptr %228, align 4
  %229 = add nsw i32 %219, 1
  br label %217, !llvm.loop !34

230:                                              ; preds = %217
  %.lcssa68 = phi i32 [ %218, %217 ]
  %.lcssa14 = phi i32 [ %220, %217 ]
  %231 = add nsw i32 %214, 1
  br label %211, !llvm.loop !35

232:                                              ; preds = %211
  %.lcssa70 = phi i32 [ %212, %211 ]
  %.lcssa6869.lcssa = phi i32 [ %.lcssa6869, %211 ]
  %.lcssa15 = phi i32 [ %213, %211 ]
  %233 = add nsw i32 %.lcssa15, 1
  br label %206, !llvm.loop !36

234:                                              ; preds = %206
  %.lcssa73 = phi i32 [ %207, %206 ]
  %.lcssa6869.lcssa72.lcssa = phi i32 [ %.lcssa6869.lcssa72, %206 ]
  %.lcssa7071.lcssa = phi i32 [ %.lcssa7071, %206 ]
  store i32 %.lcssa7071.lcssa, ptr %2, align 4
  store i32 %.lcssa6869.lcssa72.lcssa, ptr %3, align 4
  store i32 %.lcssa73, ptr %1, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %235

235:                                              ; preds = %261, %234
  %236 = phi i32 [ %262, %261 ], [ poison, %234 ]
  %.lcssa7475.lcssa78 = phi i32 [ %.lcssa7475.lcssa, %261 ], [ poison, %234 ]
  %.lcssa7677 = phi i32 [ %.lcssa76, %261 ], [ poison, %234 ]
  %237 = phi i32 [ %262, %261 ], [ 0, %234 ]
  %238 = icmp sle i32 %237, 2
  br i1 %238, label %239, label %263

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %259, %239
  %241 = phi i32 [ %260, %259 ], [ poison, %239 ]
  %.lcssa7475 = phi i32 [ %.lcssa74, %259 ], [ poison, %239 ]
  %242 = phi i32 [ %.lcssa12, %259 ], [ %237, %239 ]
  %243 = phi i32 [ %260, %259 ], [ 0, %239 ]
  %244 = icmp sle i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %251, %245
  %247 = phi i32 [ %258, %251 ], [ poison, %245 ]
  %248 = phi i32 [ %258, %251 ], [ 0, %245 ]
  %249 = phi i32 [ %237, %251 ], [ %242, %245 ]
  %250 = icmp sle i32 %248, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = mul nsw i32 8, %248
  %253 = add nsw i32 %243, %252
  %254 = mul nsw i32 8, %253
  %255 = add nsw i32 %237, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %256
  store i32 1, ptr %257, align 4
  %258 = add nsw i32 %248, 1
  br label %246, !llvm.loop !37

259:                                              ; preds = %246
  %.lcssa74 = phi i32 [ %247, %246 ]
  %.lcssa12 = phi i32 [ %249, %246 ]
  %260 = add nsw i32 %243, 1
  br label %240, !llvm.loop !38

261:                                              ; preds = %240
  %.lcssa76 = phi i32 [ %241, %240 ]
  %.lcssa7475.lcssa = phi i32 [ %.lcssa7475, %240 ]
  %.lcssa13 = phi i32 [ %242, %240 ]
  %262 = add nsw i32 %.lcssa13, 1
  br label %235, !llvm.loop !39

263:                                              ; preds = %235
  %.lcssa79 = phi i32 [ %236, %235 ]
  %.lcssa7475.lcssa78.lcssa = phi i32 [ %.lcssa7475.lcssa78, %235 ]
  %.lcssa7677.lcssa = phi i32 [ %.lcssa7677, %235 ]
  store i32 %.lcssa7677.lcssa, ptr %2, align 4
  store i32 %.lcssa7475.lcssa78.lcssa, ptr %3, align 4
  store i32 %.lcssa79, ptr %1, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %264

264:                                              ; preds = %290, %263
  %265 = phi i32 [ %291, %290 ], [ poison, %263 ]
  %.lcssa8081.lcssa84 = phi i32 [ %.lcssa8081.lcssa, %290 ], [ poison, %263 ]
  %.lcssa8283 = phi i32 [ %.lcssa82, %290 ], [ poison, %263 ]
  %266 = phi i32 [ %291, %290 ], [ 0, %263 ]
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %268, label %292

268:                                              ; preds = %264
  br label %269

269:                                              ; preds = %288, %268
  %270 = phi i32 [ %289, %288 ], [ poison, %268 ]
  %.lcssa8081 = phi i32 [ %.lcssa80, %288 ], [ poison, %268 ]
  %271 = phi i32 [ %.lcssa10, %288 ], [ %266, %268 ]
  %272 = phi i32 [ %289, %288 ], [ 0, %268 ]
  %273 = icmp sle i32 %272, 2
  br i1 %273, label %274, label %290

274:                                              ; preds = %269
  br label %275

275:                                              ; preds = %280, %274
  %276 = phi i32 [ %287, %280 ], [ poison, %274 ]
  %277 = phi i32 [ %287, %280 ], [ 0, %274 ]
  %278 = phi i32 [ %266, %280 ], [ %271, %274 ]
  %279 = icmp sle i32 %277, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = mul nsw i32 8, %277
  %282 = add nsw i32 %272, %281
  %283 = mul nsw i32 8, %282
  %284 = add nsw i32 %266, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nsw i32 %277, 1
  br label %275, !llvm.loop !40

288:                                              ; preds = %275
  %.lcssa80 = phi i32 [ %276, %275 ]
  %.lcssa10 = phi i32 [ %278, %275 ]
  %289 = add nsw i32 %272, 1
  br label %269, !llvm.loop !41

290:                                              ; preds = %269
  %.lcssa82 = phi i32 [ %270, %269 ]
  %.lcssa8081.lcssa = phi i32 [ %.lcssa8081, %269 ]
  %.lcssa11 = phi i32 [ %271, %269 ]
  %291 = add nsw i32 %.lcssa11, 1
  br label %264, !llvm.loop !42

292:                                              ; preds = %264
  %.lcssa85 = phi i32 [ %265, %264 ]
  %.lcssa8081.lcssa84.lcssa = phi i32 [ %.lcssa8081.lcssa84, %264 ]
  %.lcssa8283.lcssa = phi i32 [ %.lcssa8283, %264 ]
  store i32 %.lcssa8283.lcssa, ptr %2, align 4
  store i32 %.lcssa8081.lcssa84.lcssa, ptr %3, align 4
  store i32 %.lcssa85, ptr %1, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %293

293:                                              ; preds = %319, %292
  %294 = phi i32 [ %320, %319 ], [ poison, %292 ]
  %.lcssa8687.lcssa90 = phi i32 [ %.lcssa8687.lcssa, %319 ], [ poison, %292 ]
  %.lcssa8889 = phi i32 [ %.lcssa88, %319 ], [ poison, %292 ]
  %295 = phi i32 [ %320, %319 ], [ 0, %292 ]
  %296 = icmp sle i32 %295, 0
  br i1 %296, label %297, label %321

297:                                              ; preds = %293
  br label %298

298:                                              ; preds = %317, %297
  %299 = phi i32 [ %318, %317 ], [ poison, %297 ]
  %.lcssa8687 = phi i32 [ %.lcssa86, %317 ], [ poison, %297 ]
  %300 = phi i32 [ %.lcssa8, %317 ], [ %295, %297 ]
  %301 = phi i32 [ %318, %317 ], [ 0, %297 ]
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %319

303:                                              ; preds = %298
  br label %304

304:                                              ; preds = %309, %303
  %305 = phi i32 [ %316, %309 ], [ poison, %303 ]
  %306 = phi i32 [ %316, %309 ], [ 0, %303 ]
  %307 = phi i32 [ %295, %309 ], [ %300, %303 ]
  %308 = icmp sle i32 %306, 2
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = mul nsw i32 8, %306
  %311 = add nsw i32 %301, %310
  %312 = mul nsw i32 8, %311
  %313 = add nsw i32 %295, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %314
  store i32 1, ptr %315, align 4
  %316 = add nsw i32 %306, 1
  br label %304, !llvm.loop !43

317:                                              ; preds = %304
  %.lcssa86 = phi i32 [ %305, %304 ]
  %.lcssa8 = phi i32 [ %307, %304 ]
  %318 = add nsw i32 %301, 1
  br label %298, !llvm.loop !44

319:                                              ; preds = %298
  %.lcssa88 = phi i32 [ %299, %298 ]
  %.lcssa8687.lcssa = phi i32 [ %.lcssa8687, %298 ]
  %.lcssa9 = phi i32 [ %300, %298 ]
  %320 = add nsw i32 %.lcssa9, 1
  br label %293, !llvm.loop !45

321:                                              ; preds = %293
  %.lcssa91 = phi i32 [ %294, %293 ]
  %.lcssa8687.lcssa90.lcssa = phi i32 [ %.lcssa8687.lcssa90, %293 ]
  %.lcssa8889.lcssa = phi i32 [ %.lcssa8889, %293 ]
  store i32 %.lcssa8889.lcssa, ptr %2, align 4
  store i32 %.lcssa8687.lcssa90.lcssa, ptr %3, align 4
  store i32 %.lcssa91, ptr %1, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %322

322:                                              ; preds = %348, %321
  %323 = phi i32 [ %349, %348 ], [ poison, %321 ]
  %.lcssa9293.lcssa96 = phi i32 [ %.lcssa9293.lcssa, %348 ], [ poison, %321 ]
  %.lcssa9495 = phi i32 [ %.lcssa94, %348 ], [ poison, %321 ]
  %324 = phi i32 [ %349, %348 ], [ 0, %321 ]
  %325 = icmp sle i32 %324, 1
  br i1 %325, label %326, label %350

326:                                              ; preds = %322
  br label %327

327:                                              ; preds = %346, %326
  %328 = phi i32 [ %347, %346 ], [ poison, %326 ]
  %.lcssa9293 = phi i32 [ %.lcssa92, %346 ], [ poison, %326 ]
  %329 = phi i32 [ %.lcssa6, %346 ], [ %324, %326 ]
  %330 = phi i32 [ %347, %346 ], [ 0, %326 ]
  %331 = icmp sle i32 %330, 1
  br i1 %331, label %332, label %348

332:                                              ; preds = %327
  br label %333

333:                                              ; preds = %338, %332
  %334 = phi i32 [ %345, %338 ], [ poison, %332 ]
  %335 = phi i32 [ %345, %338 ], [ 0, %332 ]
  %336 = phi i32 [ %324, %338 ], [ %329, %332 ]
  %337 = icmp sle i32 %335, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %333
  %339 = mul nsw i32 8, %335
  %340 = add nsw i32 %330, %339
  %341 = mul nsw i32 8, %340
  %342 = add nsw i32 %324, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %343
  store i32 1, ptr %344, align 4
  %345 = add nsw i32 %335, 1
  br label %333, !llvm.loop !46

346:                                              ; preds = %333
  %.lcssa92 = phi i32 [ %334, %333 ]
  %.lcssa6 = phi i32 [ %336, %333 ]
  %347 = add nsw i32 %330, 1
  br label %327, !llvm.loop !47

348:                                              ; preds = %327
  %.lcssa94 = phi i32 [ %328, %327 ]
  %.lcssa9293.lcssa = phi i32 [ %.lcssa9293, %327 ]
  %.lcssa7 = phi i32 [ %329, %327 ]
  %349 = add nsw i32 %.lcssa7, 1
  br label %322, !llvm.loop !48

350:                                              ; preds = %322
  %.lcssa97 = phi i32 [ %323, %322 ]
  %.lcssa9293.lcssa96.lcssa = phi i32 [ %.lcssa9293.lcssa96, %322 ]
  %.lcssa9495.lcssa = phi i32 [ %.lcssa9495, %322 ]
  store i32 %.lcssa9495.lcssa, ptr %2, align 4
  store i32 %.lcssa9293.lcssa96.lcssa, ptr %3, align 4
  store i32 %.lcssa97, ptr %1, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %351

351:                                              ; preds = %377, %350
  %352 = phi i32 [ %378, %377 ], [ poison, %350 ]
  %.lcssa9899.lcssa102 = phi i32 [ %.lcssa9899.lcssa, %377 ], [ poison, %350 ]
  %.lcssa100101 = phi i32 [ %.lcssa100, %377 ], [ poison, %350 ]
  %353 = phi i32 [ %378, %377 ], [ 0, %350 ]
  %354 = icmp sle i32 %353, 1
  br i1 %354, label %355, label %379

355:                                              ; preds = %351
  br label %356

356:                                              ; preds = %375, %355
  %357 = phi i32 [ %376, %375 ], [ poison, %355 ]
  %.lcssa9899 = phi i32 [ %.lcssa98, %375 ], [ poison, %355 ]
  %358 = phi i32 [ %.lcssa4, %375 ], [ %353, %355 ]
  %359 = phi i32 [ %376, %375 ], [ 0, %355 ]
  %360 = icmp sle i32 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %367, %361
  %363 = phi i32 [ %374, %367 ], [ poison, %361 ]
  %364 = phi i32 [ %374, %367 ], [ 0, %361 ]
  %365 = phi i32 [ %353, %367 ], [ %358, %361 ]
  %366 = icmp sle i32 %364, 1
  br i1 %366, label %367, label %375

367:                                              ; preds = %362
  %368 = mul nsw i32 8, %364
  %369 = add nsw i32 %359, %368
  %370 = mul nsw i32 8, %369
  %371 = add nsw i32 %353, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %372
  store i32 1, ptr %373, align 4
  %374 = add nsw i32 %364, 1
  br label %362, !llvm.loop !49

375:                                              ; preds = %362
  %.lcssa98 = phi i32 [ %363, %362 ]
  %.lcssa4 = phi i32 [ %365, %362 ]
  %376 = add nsw i32 %359, 1
  br label %356, !llvm.loop !50

377:                                              ; preds = %356
  %.lcssa100 = phi i32 [ %357, %356 ]
  %.lcssa9899.lcssa = phi i32 [ %.lcssa9899, %356 ]
  %.lcssa5 = phi i32 [ %358, %356 ]
  %378 = add nsw i32 %.lcssa5, 1
  br label %351, !llvm.loop !51

379:                                              ; preds = %351
  %.lcssa103 = phi i32 [ %352, %351 ]
  %.lcssa9899.lcssa102.lcssa = phi i32 [ %.lcssa9899.lcssa102, %351 ]
  %.lcssa100101.lcssa = phi i32 [ %.lcssa100101, %351 ]
  store i32 %.lcssa100101.lcssa, ptr %2, align 4
  store i32 %.lcssa9899.lcssa102.lcssa, ptr %3, align 4
  store i32 %.lcssa103, ptr %1, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %380

380:                                              ; preds = %406, %379
  %381 = phi i32 [ %407, %406 ], [ poison, %379 ]
  %.lcssa104105.lcssa108 = phi i32 [ %.lcssa104105.lcssa, %406 ], [ poison, %379 ]
  %.lcssa106107 = phi i32 [ %.lcssa106, %406 ], [ poison, %379 ]
  %382 = phi i32 [ %407, %406 ], [ 0, %379 ]
  %383 = icmp sle i32 %382, 0
  br i1 %383, label %384, label %408

384:                                              ; preds = %380
  br label %385

385:                                              ; preds = %404, %384
  %386 = phi i32 [ %405, %404 ], [ poison, %384 ]
  %.lcssa104105 = phi i32 [ %.lcssa104, %404 ], [ poison, %384 ]
  %387 = phi i32 [ %.lcssa2, %404 ], [ %382, %384 ]
  %388 = phi i32 [ %405, %404 ], [ 0, %384 ]
  %389 = icmp sle i32 %388, 1
  br i1 %389, label %390, label %406

390:                                              ; preds = %385
  br label %391

391:                                              ; preds = %396, %390
  %392 = phi i32 [ %403, %396 ], [ poison, %390 ]
  %393 = phi i32 [ %403, %396 ], [ 0, %390 ]
  %394 = phi i32 [ %382, %396 ], [ %387, %390 ]
  %395 = icmp sle i32 %393, 1
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = mul nsw i32 8, %393
  %398 = add nsw i32 %388, %397
  %399 = mul nsw i32 8, %398
  %400 = add nsw i32 %382, %399
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %401
  store i32 1, ptr %402, align 4
  %403 = add nsw i32 %393, 1
  br label %391, !llvm.loop !52

404:                                              ; preds = %391
  %.lcssa104 = phi i32 [ %392, %391 ]
  %.lcssa2 = phi i32 [ %394, %391 ]
  %405 = add nsw i32 %388, 1
  br label %385, !llvm.loop !53

406:                                              ; preds = %385
  %.lcssa106 = phi i32 [ %386, %385 ]
  %.lcssa104105.lcssa = phi i32 [ %.lcssa104105, %385 ]
  %.lcssa3 = phi i32 [ %387, %385 ]
  %407 = add nsw i32 %.lcssa3, 1
  br label %380, !llvm.loop !54

408:                                              ; preds = %380
  %.lcssa109 = phi i32 [ %381, %380 ]
  %.lcssa104105.lcssa108.lcssa = phi i32 [ %.lcssa104105.lcssa108, %380 ]
  %.lcssa106107.lcssa = phi i32 [ %.lcssa106107, %380 ]
  store i32 %.lcssa106107.lcssa, ptr %2, align 4
  store i32 %.lcssa104105.lcssa108.lcssa, ptr %3, align 4
  store i32 %.lcssa109, ptr %1, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %409

409:                                              ; preds = %435, %408
  %410 = phi i32 [ %436, %435 ], [ poison, %408 ]
  %.lcssa110111.lcssa114 = phi i32 [ %.lcssa110111.lcssa, %435 ], [ poison, %408 ]
  %.lcssa112113 = phi i32 [ %.lcssa112, %435 ], [ poison, %408 ]
  %411 = phi i32 [ %436, %435 ], [ 0, %408 ]
  %412 = icmp sle i32 %411, 1
  br i1 %412, label %413, label %437

413:                                              ; preds = %409
  br label %414

414:                                              ; preds = %433, %413
  %415 = phi i32 [ %434, %433 ], [ poison, %413 ]
  %.lcssa110111 = phi i32 [ %.lcssa110, %433 ], [ poison, %413 ]
  %416 = phi i32 [ %.lcssa, %433 ], [ %411, %413 ]
  %417 = phi i32 [ %434, %433 ], [ 0, %413 ]
  %418 = icmp sle i32 %417, 1
  br i1 %418, label %419, label %435

419:                                              ; preds = %414
  br label %420

420:                                              ; preds = %425, %419
  %421 = phi i32 [ %432, %425 ], [ poison, %419 ]
  %422 = phi i32 [ %432, %425 ], [ 0, %419 ]
  %423 = phi i32 [ %411, %425 ], [ %416, %419 ]
  %424 = icmp sle i32 %422, 1
  br i1 %424, label %425, label %433

425:                                              ; preds = %420
  %426 = mul nsw i32 8, %422
  %427 = add nsw i32 %417, %426
  %428 = mul nsw i32 8, %427
  %429 = add nsw i32 %411, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %430
  store i32 1, ptr %431, align 4
  %432 = add nsw i32 %422, 1
  br label %420, !llvm.loop !55

433:                                              ; preds = %420
  %.lcssa110 = phi i32 [ %421, %420 ]
  %.lcssa = phi i32 [ %423, %420 ]
  %434 = add nsw i32 %417, 1
  br label %414, !llvm.loop !56

435:                                              ; preds = %414
  %.lcssa112 = phi i32 [ %415, %414 ]
  %.lcssa110111.lcssa = phi i32 [ %.lcssa110111, %414 ]
  %.lcssa1 = phi i32 [ %416, %414 ]
  %436 = add nsw i32 %.lcssa1, 1
  br label %409, !llvm.loop !57

437:                                              ; preds = %409
  %.lcssa115 = phi i32 [ %410, %409 ]
  %.lcssa110111.lcssa114.lcssa = phi i32 [ %.lcssa110111.lcssa114, %409 ]
  %.lcssa112113.lcssa = phi i32 [ %.lcssa112113, %409 ]
  store i32 %.lcssa112113.lcssa, ptr %2, align 4
  store i32 %.lcssa110111.lcssa114.lcssa, ptr %3, align 4
  store i32 %.lcssa115, ptr %1, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %438 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %441, ptr @n, align 4
  br label %444

442:                                              ; preds = %437
  %443 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %444

444:                                              ; preds = %442, %440
  %445 = phi i32 [ %.pre, %442 ], [ %441, %440 ]
  %446 = call i32 @Trial(i32 noundef %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %444
  %449 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %456

450:                                              ; preds = %444
  %451 = load i32, ptr @kount, align 4
  %452 = icmp ne i32 %451, 2005
  br i1 %452, label %453, label %455

453:                                              ; preds = %450
  %454 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %455

455:                                              ; preds = %453, %450
  br label %456

456:                                              ; preds = %455, %448
  %457 = load i32, ptr @n, align 4
  %458 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %457)
  %459 = load i32, ptr @kount, align 4
  %460 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %459)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 1
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = phi i32 [ %8, %7 ], [ 0, %0 ]
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  call void @Puzzle()
  %8 = add nsw i32 %5, 1
  br label %3, !llvm.loop !58

9:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 1
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
