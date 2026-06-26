; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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
@str = private unnamed_addr constant [17 x i8] c"Error1 in Puzzle\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Error2 in Puzzle.\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"Error3 in Puzzle.\00", align 1

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
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %23, %2
  %storemerge = phi i32 [ 0, %2 ], [ %24, %23 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %25, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %23, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %17
  %storemerge.lcssa1 = phi i32 [ %storemerge, %17 ]
  store i32 %storemerge.lcssa1, ptr %5, align 4
  br label %26

23:                                               ; preds = %13, %17
  %24 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !7

25:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %26

26:                                               ; preds = %25, %22
  %storemerge1 = phi i32 [ 1, %25 ], [ 0, %22 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %13, %17
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %smax = call i32 @llvm.smax.i32(i32 %30, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %32

32:                                               ; preds = %39, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %23 ]
  %33 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %34, label %40

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4
  %.not3 = icmp eq i32 %36, 0
  br i1 %.not3, label %37, label %39

37:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %33, %34 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %34 ]
  store i32 %.lcssa2, ptr %5, align 4
  %38 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %41

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

40:                                               ; preds = %32
  %.lcssa1 = phi i32 [ %33, %32 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  %storemerge2 = phi i32 [ 0, %40 ], [ %38, %37 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %13, %17
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !11

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = phi i32 [ %.promoted, %1 ], [ %29, %28 ]
  %storemerge = phi i32 [ 0, %1 ], [ %30, %28 ]
  %12 = icmp slt i32 %storemerge, 13
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %28, label %20

20:                                               ; preds = %13
  %21 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %7)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %28, label %22

22:                                               ; preds = %20
  %23 = call i32 @Place(i32 noundef %storemerge, i32 noundef %8)
  %24 = call i32 @Trial(i32 noundef %23)
  %.not3 = icmp ne i32 %24, 0
  %25 = icmp eq i32 %23, 0
  %or.cond = or i1 %.not3, %25
  br i1 %or.cond, label %26, label %27

26:                                               ; preds = %22
  store i32 %storemerge, ptr %3, align 4
  store i32 %23, ptr %4, align 4
  br label %32

27:                                               ; preds = %22
  call void @Remove(i32 noundef %storemerge, i32 noundef %9)
  br label %28

28:                                               ; preds = %13, %27, %20
  %29 = phi i32 [ %11, %13 ], [ %23, %27 ], [ %11, %20 ]
  %30 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !12

31:                                               ; preds = %10
  %.lcssa = phi i32 [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa, ptr %4, align 4
  br label %32

32:                                               ; preds = %31, %26
  %storemerge1 = phi i32 [ 0, %31 ], [ 1, %26 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %7, %0
  %storemerge = phi i32 [ 0, %0 ], [ %10, %7 ]
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

11:                                               ; preds = %5
  %storemerge.lcssa = phi i32 [ %storemerge, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %12

12:                                               ; preds = %27, %11
  %storemerge48.lcssa1.lcssa3 = phi i32 [ poison, %11 ], [ %storemerge48.lcssa1.lcssa, %27 ]
  %storemerge47.lcssa2 = phi i32 [ poison, %11 ], [ %storemerge47.lcssa, %27 ]
  %storemerge1 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %13 = icmp slt i32 %storemerge1, 6
  br i1 %13, label %14, label %29

14:                                               ; preds = %12, %25
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %25 ], [ poison, %12 ]
  %storemerge47 = phi i32 [ %26, %25 ], [ 1, %12 ]
  %15 = icmp slt i32 %storemerge47, 6
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %17, %storemerge1
  br label %18

18:                                               ; preds = %20, %16
  %storemerge48 = phi i32 [ 1, %16 ], [ %24, %20 ]
  %19 = icmp slt i32 %storemerge48, 6
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = shl i32 %storemerge48, 6
  %.reass = add i32 %21, %invariant.op
  %22 = sext i32 %.reass to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %storemerge48, 1
  br label %18, !llvm.loop !14

25:                                               ; preds = %18
  %storemerge48.lcssa = phi i32 [ %storemerge48, %18 ]
  %26 = add nsw i32 %storemerge47, 1
  br label %14, !llvm.loop !15

27:                                               ; preds = %14
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %14 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %14 ]
  %28 = add nsw i32 %storemerge1, 1
  br label %12, !llvm.loop !16

29:                                               ; preds = %12
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %12 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %12 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %12 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %30

30:                                               ; preds = %41, %29
  %storemerge46.lcssa4 = phi i32 [ poison, %29 ], [ %storemerge46.lcssa, %41 ]
  %storemerge2 = phi i32 [ 0, %29 ], [ %42, %41 ]
  %31 = icmp slt i32 %storemerge2, 13
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = sext i32 %storemerge2 to i64
  %34 = getelementptr inbounds [2048 x i8], ptr @p, i64 %33
  br label %35

35:                                               ; preds = %37, %32
  %storemerge46 = phi i32 [ 0, %32 ], [ %40, %37 ]
  %36 = icmp slt i32 %storemerge46, 512
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = sext i32 %storemerge46 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %34, i64 %38
  store i32 0, ptr %39, align 4
  %40 = add nsw i32 %storemerge46, 1
  br label %35, !llvm.loop !17

41:                                               ; preds = %35
  %storemerge46.lcssa = phi i32 [ %storemerge46, %35 ]
  %42 = add nsw i32 %storemerge2, 1
  br label %30, !llvm.loop !18

43:                                               ; preds = %30
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %30 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %30 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %44

44:                                               ; preds = %59, %43
  %storemerge45.lcssa7.lcssa9 = phi i32 [ poison, %43 ], [ %storemerge45.lcssa7.lcssa, %59 ]
  %storemerge44.lcssa8 = phi i32 [ poison, %43 ], [ %storemerge44.lcssa, %59 ]
  %storemerge3 = phi i32 [ 0, %43 ], [ %60, %59 ]
  %45 = icmp slt i32 %storemerge3, 4
  br i1 %45, label %46, label %61

46:                                               ; preds = %44, %57
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %57 ], [ poison, %44 ]
  %storemerge44 = phi i32 [ %58, %57 ], [ 0, %44 ]
  %47 = icmp slt i32 %storemerge44, 2
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %49, %storemerge3
  br label %50

50:                                               ; preds = %52, %48
  %storemerge45 = phi i32 [ 0, %48 ], [ %56, %52 ]
  %51 = icmp slt i32 %storemerge45, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %53, %invariant.op5
  %54 = sext i32 %.reass6 to i64
  %55 = getelementptr inbounds [4 x i8], ptr @p, i64 %54
  store i32 1, ptr %55, align 4
  %56 = add nsw i32 %storemerge45, 1
  br label %50, !llvm.loop !19

57:                                               ; preds = %50
  %storemerge45.lcssa = phi i32 [ %storemerge45, %50 ]
  %58 = add nsw i32 %storemerge44, 1
  br label %46, !llvm.loop !20

59:                                               ; preds = %46
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %46 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %46 ]
  %60 = add nsw i32 %storemerge3, 1
  br label %44, !llvm.loop !21

61:                                               ; preds = %44
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %44 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %44 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %44 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %62

62:                                               ; preds = %77, %61
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %61 ], [ %storemerge43.lcssa12.lcssa, %77 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %61 ], [ %storemerge42.lcssa, %77 ]
  %storemerge4 = phi i32 [ 0, %61 ], [ %78, %77 ]
  %63 = icmp slt i32 %storemerge4, 2
  br i1 %63, label %64, label %79

64:                                               ; preds = %62, %75
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %75 ], [ poison, %62 ]
  %storemerge42 = phi i32 [ %76, %75 ], [ 0, %62 ]
  %65 = icmp slt i32 %storemerge42, 1
  br i1 %65, label %66, label %77

66:                                               ; preds = %64
  %67 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %67, %storemerge4
  br label %68

68:                                               ; preds = %70, %66
  %storemerge43 = phi i32 [ 0, %66 ], [ %74, %70 ]
  %69 = icmp slt i32 %storemerge43, 4
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %71, %invariant.op10
  %72 = sext i32 %.reass11 to i64
  %73 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %72
  store i32 1, ptr %73, align 4
  %74 = add nsw i32 %storemerge43, 1
  br label %68, !llvm.loop !22

75:                                               ; preds = %68
  %storemerge43.lcssa = phi i32 [ %storemerge43, %68 ]
  %76 = add nsw i32 %storemerge42, 1
  br label %64, !llvm.loop !23

77:                                               ; preds = %64
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %64 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %64 ]
  %78 = add nsw i32 %storemerge4, 1
  br label %62, !llvm.loop !24

79:                                               ; preds = %62
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %62 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %62 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %62 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %80

80:                                               ; preds = %95, %79
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %79 ], [ %storemerge41.lcssa17.lcssa, %95 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %79 ], [ %storemerge40.lcssa, %95 ]
  %storemerge5 = phi i32 [ 0, %79 ], [ %96, %95 ]
  %81 = icmp slt i32 %storemerge5, 1
  br i1 %81, label %82, label %97

82:                                               ; preds = %80, %93
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %93 ], [ poison, %80 ]
  %storemerge40 = phi i32 [ %94, %93 ], [ 0, %80 ]
  %83 = icmp slt i32 %storemerge40, 4
  br i1 %83, label %84, label %95

84:                                               ; preds = %82
  %85 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %85, %storemerge5
  br label %86

86:                                               ; preds = %88, %84
  %storemerge41 = phi i32 [ 0, %84 ], [ %92, %88 ]
  %87 = icmp slt i32 %storemerge41, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %89, %invariant.op15
  %90 = sext i32 %.reass16 to i64
  %91 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %90
  store i32 1, ptr %91, align 4
  %92 = add nsw i32 %storemerge41, 1
  br label %86, !llvm.loop !25

93:                                               ; preds = %86
  %storemerge41.lcssa = phi i32 [ %storemerge41, %86 ]
  %94 = add nsw i32 %storemerge40, 1
  br label %82, !llvm.loop !26

95:                                               ; preds = %82
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %82 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %82 ]
  %96 = add nsw i32 %storemerge5, 1
  br label %80, !llvm.loop !27

97:                                               ; preds = %80
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %80 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %80 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %80 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %98

98:                                               ; preds = %113, %97
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %97 ], [ %storemerge39.lcssa22.lcssa, %113 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %97 ], [ %storemerge38.lcssa, %113 ]
  %storemerge6 = phi i32 [ 0, %97 ], [ %114, %113 ]
  %99 = icmp slt i32 %storemerge6, 2
  br i1 %99, label %100, label %115

100:                                              ; preds = %98, %111
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %111 ], [ poison, %98 ]
  %storemerge38 = phi i32 [ %112, %111 ], [ 0, %98 ]
  %101 = icmp slt i32 %storemerge38, 4
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %103, %storemerge6
  br label %104

104:                                              ; preds = %106, %102
  %storemerge39 = phi i32 [ 0, %102 ], [ %110, %106 ]
  %105 = icmp slt i32 %storemerge39, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %107, %invariant.op20
  %108 = sext i32 %.reass21 to i64
  %109 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %108
  store i32 1, ptr %109, align 4
  %110 = add nsw i32 %storemerge39, 1
  br label %104, !llvm.loop !28

111:                                              ; preds = %104
  %storemerge39.lcssa = phi i32 [ %storemerge39, %104 ]
  %112 = add nsw i32 %storemerge38, 1
  br label %100, !llvm.loop !29

113:                                              ; preds = %100
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %100 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %100 ]
  %114 = add nsw i32 %storemerge6, 1
  br label %98, !llvm.loop !30

115:                                              ; preds = %98
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %98 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %98 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %98 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %116

116:                                              ; preds = %131, %115
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %115 ], [ %storemerge37.lcssa27.lcssa, %131 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %115 ], [ %storemerge36.lcssa, %131 ]
  %storemerge7 = phi i32 [ 0, %115 ], [ %132, %131 ]
  %117 = icmp slt i32 %storemerge7, 4
  br i1 %117, label %118, label %133

118:                                              ; preds = %116, %129
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %129 ], [ poison, %116 ]
  %storemerge36 = phi i32 [ %130, %129 ], [ 0, %116 ]
  %119 = icmp slt i32 %storemerge36, 1
  br i1 %119, label %120, label %131

120:                                              ; preds = %118
  %121 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %121, %storemerge7
  br label %122

122:                                              ; preds = %124, %120
  %storemerge37 = phi i32 [ 0, %120 ], [ %128, %124 ]
  %123 = icmp slt i32 %storemerge37, 2
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %125, %invariant.op25
  %126 = sext i32 %.reass26 to i64
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nsw i32 %storemerge37, 1
  br label %122, !llvm.loop !31

129:                                              ; preds = %122
  %storemerge37.lcssa = phi i32 [ %storemerge37, %122 ]
  %130 = add nsw i32 %storemerge36, 1
  br label %118, !llvm.loop !32

131:                                              ; preds = %118
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %118 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %118 ]
  %132 = add nsw i32 %storemerge7, 1
  br label %116, !llvm.loop !33

133:                                              ; preds = %116
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %116 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %116 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %116 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %134

134:                                              ; preds = %149, %133
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %133 ], [ %storemerge35.lcssa32.lcssa, %149 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %133 ], [ %storemerge34.lcssa, %149 ]
  %storemerge8 = phi i32 [ 0, %133 ], [ %150, %149 ]
  %135 = icmp slt i32 %storemerge8, 1
  br i1 %135, label %136, label %151

136:                                              ; preds = %134, %147
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %147 ], [ poison, %134 ]
  %storemerge34 = phi i32 [ %148, %147 ], [ 0, %134 ]
  %137 = icmp slt i32 %storemerge34, 2
  br i1 %137, label %138, label %149

138:                                              ; preds = %136
  %139 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %139, %storemerge8
  br label %140

140:                                              ; preds = %142, %138
  %storemerge35 = phi i32 [ 0, %138 ], [ %146, %142 ]
  %141 = icmp slt i32 %storemerge35, 4
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %143, %invariant.op30
  %144 = sext i32 %.reass31 to i64
  %145 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %144
  store i32 1, ptr %145, align 4
  %146 = add nsw i32 %storemerge35, 1
  br label %140, !llvm.loop !34

147:                                              ; preds = %140
  %storemerge35.lcssa = phi i32 [ %storemerge35, %140 ]
  %148 = add nsw i32 %storemerge34, 1
  br label %136, !llvm.loop !35

149:                                              ; preds = %136
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %136 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %136 ]
  %150 = add nsw i32 %storemerge8, 1
  br label %134, !llvm.loop !36

151:                                              ; preds = %134
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %134 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %134 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %134 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %152

152:                                              ; preds = %167, %151
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %151 ], [ %storemerge33.lcssa37.lcssa, %167 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %151 ], [ %storemerge32.lcssa, %167 ]
  %storemerge9 = phi i32 [ 0, %151 ], [ %168, %167 ]
  %153 = icmp slt i32 %storemerge9, 3
  br i1 %153, label %154, label %169

154:                                              ; preds = %152, %165
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %165 ], [ poison, %152 ]
  %storemerge32 = phi i32 [ %166, %165 ], [ 0, %152 ]
  %155 = icmp slt i32 %storemerge32, 1
  br i1 %155, label %156, label %167

156:                                              ; preds = %154
  %157 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %157, %storemerge9
  br label %158

158:                                              ; preds = %160, %156
  %storemerge33 = phi i32 [ 0, %156 ], [ %164, %160 ]
  %159 = icmp slt i32 %storemerge33, 1
  br i1 %159, label %160, label %165

160:                                              ; preds = %158
  %161 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %161, %invariant.op35
  %162 = sext i32 %.reass36 to i64
  %163 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %162
  store i32 1, ptr %163, align 4
  %164 = add nsw i32 %storemerge33, 1
  br label %158, !llvm.loop !37

165:                                              ; preds = %158
  %storemerge33.lcssa = phi i32 [ %storemerge33, %158 ]
  %166 = add nsw i32 %storemerge32, 1
  br label %154, !llvm.loop !38

167:                                              ; preds = %154
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %154 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %154 ]
  %168 = add nsw i32 %storemerge9, 1
  br label %152, !llvm.loop !39

169:                                              ; preds = %152
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %152 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %152 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %152 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %170

170:                                              ; preds = %185, %169
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %169 ], [ %storemerge31.lcssa42.lcssa, %185 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %169 ], [ %storemerge30.lcssa, %185 ]
  %storemerge10 = phi i32 [ 0, %169 ], [ %186, %185 ]
  %171 = icmp slt i32 %storemerge10, 1
  br i1 %171, label %172, label %187

172:                                              ; preds = %170, %183
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %183 ], [ poison, %170 ]
  %storemerge30 = phi i32 [ %184, %183 ], [ 0, %170 ]
  %173 = icmp slt i32 %storemerge30, 3
  br i1 %173, label %174, label %185

174:                                              ; preds = %172
  %175 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %175, %storemerge10
  br label %176

176:                                              ; preds = %178, %174
  %storemerge31 = phi i32 [ 0, %174 ], [ %182, %178 ]
  %177 = icmp slt i32 %storemerge31, 1
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  %179 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %179, %invariant.op40
  %180 = sext i32 %.reass41 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %180
  store i32 1, ptr %181, align 4
  %182 = add nsw i32 %storemerge31, 1
  br label %176, !llvm.loop !40

183:                                              ; preds = %176
  %storemerge31.lcssa = phi i32 [ %storemerge31, %176 ]
  %184 = add nsw i32 %storemerge30, 1
  br label %172, !llvm.loop !41

185:                                              ; preds = %172
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %172 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %172 ]
  %186 = add nsw i32 %storemerge10, 1
  br label %170, !llvm.loop !42

187:                                              ; preds = %170
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %170 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %170 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %170 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %188

188:                                              ; preds = %203, %187
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %187 ], [ %storemerge29.lcssa47.lcssa, %203 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %187 ], [ %storemerge28.lcssa, %203 ]
  %storemerge11 = phi i32 [ 0, %187 ], [ %204, %203 ]
  %189 = icmp slt i32 %storemerge11, 1
  br i1 %189, label %190, label %205

190:                                              ; preds = %188, %201
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %201 ], [ poison, %188 ]
  %storemerge28 = phi i32 [ %202, %201 ], [ 0, %188 ]
  %191 = icmp slt i32 %storemerge28, 1
  br i1 %191, label %192, label %203

192:                                              ; preds = %190
  %193 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %193, %storemerge11
  br label %194

194:                                              ; preds = %196, %192
  %storemerge29 = phi i32 [ 0, %192 ], [ %200, %196 ]
  %195 = icmp slt i32 %storemerge29, 3
  br i1 %195, label %196, label %201

196:                                              ; preds = %194
  %197 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %197, %invariant.op45
  %198 = sext i32 %.reass46 to i64
  %199 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nsw i32 %storemerge29, 1
  br label %194, !llvm.loop !43

201:                                              ; preds = %194
  %storemerge29.lcssa = phi i32 [ %storemerge29, %194 ]
  %202 = add nsw i32 %storemerge28, 1
  br label %190, !llvm.loop !44

203:                                              ; preds = %190
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %190 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %190 ]
  %204 = add nsw i32 %storemerge11, 1
  br label %188, !llvm.loop !45

205:                                              ; preds = %188
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %188 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %188 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %188 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %206

206:                                              ; preds = %221, %205
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %205 ], [ %storemerge27.lcssa52.lcssa, %221 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %205 ], [ %storemerge26.lcssa, %221 ]
  %storemerge12 = phi i32 [ 0, %205 ], [ %222, %221 ]
  %207 = icmp slt i32 %storemerge12, 2
  br i1 %207, label %208, label %223

208:                                              ; preds = %206, %219
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %219 ], [ poison, %206 ]
  %storemerge26 = phi i32 [ %220, %219 ], [ 0, %206 ]
  %209 = icmp slt i32 %storemerge26, 2
  br i1 %209, label %210, label %221

210:                                              ; preds = %208
  %211 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %211, %storemerge12
  br label %212

212:                                              ; preds = %214, %210
  %storemerge27 = phi i32 [ 0, %210 ], [ %218, %214 ]
  %213 = icmp slt i32 %storemerge27, 1
  br i1 %213, label %214, label %219

214:                                              ; preds = %212
  %215 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %215, %invariant.op50
  %216 = sext i32 %.reass51 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nsw i32 %storemerge27, 1
  br label %212, !llvm.loop !46

219:                                              ; preds = %212
  %storemerge27.lcssa = phi i32 [ %storemerge27, %212 ]
  %220 = add nsw i32 %storemerge26, 1
  br label %208, !llvm.loop !47

221:                                              ; preds = %208
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %208 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %208 ]
  %222 = add nsw i32 %storemerge12, 1
  br label %206, !llvm.loop !48

223:                                              ; preds = %206
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %206 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %206 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %206 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %224

224:                                              ; preds = %239, %223
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %223 ], [ %storemerge25.lcssa57.lcssa, %239 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %223 ], [ %storemerge24.lcssa, %239 ]
  %storemerge13 = phi i32 [ 0, %223 ], [ %240, %239 ]
  %225 = icmp slt i32 %storemerge13, 2
  br i1 %225, label %226, label %241

226:                                              ; preds = %224, %237
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %237 ], [ poison, %224 ]
  %storemerge24 = phi i32 [ %238, %237 ], [ 0, %224 ]
  %227 = icmp slt i32 %storemerge24, 1
  br i1 %227, label %228, label %239

228:                                              ; preds = %226
  %229 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %229, %storemerge13
  br label %230

230:                                              ; preds = %232, %228
  %storemerge25 = phi i32 [ 0, %228 ], [ %236, %232 ]
  %231 = icmp slt i32 %storemerge25, 2
  br i1 %231, label %232, label %237

232:                                              ; preds = %230
  %233 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %233, %invariant.op55
  %234 = sext i32 %.reass56 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %234
  store i32 1, ptr %235, align 4
  %236 = add nsw i32 %storemerge25, 1
  br label %230, !llvm.loop !49

237:                                              ; preds = %230
  %storemerge25.lcssa = phi i32 [ %storemerge25, %230 ]
  %238 = add nsw i32 %storemerge24, 1
  br label %226, !llvm.loop !50

239:                                              ; preds = %226
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %226 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %226 ]
  %240 = add nsw i32 %storemerge13, 1
  br label %224, !llvm.loop !51

241:                                              ; preds = %224
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %224 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %224 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %224 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %242

242:                                              ; preds = %257, %241
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %241 ], [ %storemerge23.lcssa62.lcssa, %257 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %241 ], [ %storemerge22.lcssa, %257 ]
  %storemerge14 = phi i32 [ 0, %241 ], [ %258, %257 ]
  %243 = icmp slt i32 %storemerge14, 1
  br i1 %243, label %244, label %259

244:                                              ; preds = %242, %255
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %255 ], [ poison, %242 ]
  %storemerge22 = phi i32 [ %256, %255 ], [ 0, %242 ]
  %245 = icmp slt i32 %storemerge22, 2
  br i1 %245, label %246, label %257

246:                                              ; preds = %244
  %247 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %247, %storemerge14
  br label %248

248:                                              ; preds = %250, %246
  %storemerge23 = phi i32 [ 0, %246 ], [ %254, %250 ]
  %249 = icmp slt i32 %storemerge23, 2
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %251, %invariant.op60
  %252 = sext i32 %.reass61 to i64
  %253 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %252
  store i32 1, ptr %253, align 4
  %254 = add nsw i32 %storemerge23, 1
  br label %248, !llvm.loop !52

255:                                              ; preds = %248
  %storemerge23.lcssa = phi i32 [ %storemerge23, %248 ]
  %256 = add nsw i32 %storemerge22, 1
  br label %244, !llvm.loop !53

257:                                              ; preds = %244
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %244 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %244 ]
  %258 = add nsw i32 %storemerge14, 1
  br label %242, !llvm.loop !54

259:                                              ; preds = %242
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %242 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %242 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %242 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %260

260:                                              ; preds = %275, %259
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %259 ], [ %storemerge21.lcssa67.lcssa, %275 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %259 ], [ %storemerge20.lcssa, %275 ]
  %storemerge15 = phi i32 [ 0, %259 ], [ %276, %275 ]
  %261 = icmp slt i32 %storemerge15, 2
  br i1 %261, label %262, label %277

262:                                              ; preds = %260, %273
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %273 ], [ poison, %260 ]
  %storemerge20 = phi i32 [ %274, %273 ], [ 0, %260 ]
  %263 = icmp slt i32 %storemerge20, 2
  br i1 %263, label %264, label %275

264:                                              ; preds = %262
  %265 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %265, %storemerge15
  br label %266

266:                                              ; preds = %268, %264
  %storemerge21 = phi i32 [ 0, %264 ], [ %272, %268 ]
  %267 = icmp slt i32 %storemerge21, 2
  br i1 %267, label %268, label %273

268:                                              ; preds = %266
  %269 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %269, %invariant.op65
  %270 = sext i32 %.reass66 to i64
  %271 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %270
  store i32 1, ptr %271, align 4
  %272 = add nsw i32 %storemerge21, 1
  br label %266, !llvm.loop !55

273:                                              ; preds = %266
  %storemerge21.lcssa = phi i32 [ %storemerge21, %266 ]
  %274 = add nsw i32 %storemerge20, 1
  br label %262, !llvm.loop !56

275:                                              ; preds = %262
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %262 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %262 ]
  %276 = add nsw i32 %storemerge15, 1
  br label %260, !llvm.loop !57

277:                                              ; preds = %260
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %260 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %260 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %260 ]
  store i32 %storemerge15.lcssa, ptr %1, align 4
  store i32 %storemerge20.lcssa68.lcssa, ptr %2, align 4
  store i32 %storemerge21.lcssa67.lcssa69.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %278 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %278, 0
  br i1 %.not, label %282, label %279

279:                                              ; preds = %277
  %280 = load i32, ptr %4, align 4
  %281 = call i32 @Place(i32 noundef 0, i32 noundef %280)
  store i32 %281, ptr @n, align 4
  br label %283

282:                                              ; preds = %277
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %283

283:                                              ; preds = %282, %279
  %284 = load i32, ptr @n, align 4
  %285 = call i32 @Trial(i32 noundef %284)
  %.not16 = icmp eq i32 %285, 0
  br i1 %.not16, label %286, label %287

286:                                              ; preds = %283
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %290

287:                                              ; preds = %283
  %288 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %288, 2005
  br i1 %.not18, label %290, label %289

289:                                              ; preds = %287
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %290

290:                                              ; preds = %287, %289, %286
  %291 = load i32, ptr @n, align 4
  %292 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %291) #4
  %293 = load i32, ptr @kount, align 4
  %294 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %293) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

6:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
