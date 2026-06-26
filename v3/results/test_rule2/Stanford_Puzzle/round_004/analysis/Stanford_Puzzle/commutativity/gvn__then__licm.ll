; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_003\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %20, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %13, %9
  %19 = add nsw i32 %8, 1
  br label %7, !llvm.loop !7

20:                                               ; preds = %13, %7
  %.lcssa = phi i32 [ %8, %13 ], [ %8, %7 ]
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %17, %2
  %8 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %19, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %29, label %.loopexit

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  %.lcssa4 = phi i32 [ %28, %29 ]
  %.lcssa2 = phi i32 [ %28, %29 ]
  store i32 %.lcssa4, ptr %5, align 4
  br label %34

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit:                                        ; preds = %27
  %.lcssa3 = phi i32 [ %28, %27 ]
  store i32 %.lcssa3, ptr %5, align 4
  br label %34

34:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %17, %2
  %8 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %19, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = add nsw i32 %8, 1
  br label %7, !llvm.loop !11

19:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
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
  %.promoted = load i32, ptr %4, align 1
  br label %7

7:                                                ; preds = %26, %1
  %8 = phi i32 [ %.promoted, %1 ], [ %27, %26 ]
  %9 = phi i32 [ %0, %1 ], [ %28, %26 ]
  %10 = phi i32 [ 0, %1 ], [ %29, %26 ]
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %26, label %19

19:                                               ; preds = %12
  %20 = call i32 @Fit(i32 noundef %10, i32 noundef %9)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %26, label %21

21:                                               ; preds = %19
  %22 = call i32 @Place(i32 noundef %10, i32 noundef %9)
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp ne i32 %23, 0
  %24 = icmp eq i32 %22, 0
  %or.cond = select i1 %.not3, i1 true, i1 %24
  br i1 %or.cond, label %30, label %25

25:                                               ; preds = %21
  call void @Remove(i32 noundef %10, i32 noundef %0)
  br label %26

26:                                               ; preds = %25, %19, %12
  %27 = phi i32 [ %22, %25 ], [ %8, %19 ], [ %8, %12 ]
  %28 = phi i32 [ %0, %25 ], [ %9, %19 ], [ %9, %12 ]
  %29 = add nsw i32 %10, 1
  br label %7, !llvm.loop !12

30:                                               ; preds = %21, %7
  %31 = phi i32 [ %22, %21 ], [ %8, %7 ]
  %.lcssa = phi i32 [ %10, %21 ], [ %10, %7 ]
  %storemerge1 = phi i32 [ 1, %21 ], [ 0, %7 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %31, ptr %4, align 1
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %.preheader31

.preheader31:                                     ; preds = %5
  %.lcssa28 = phi i32 [ %6, %5 ]
  store i32 %.lcssa28, ptr %4, align 4
  br label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %31, %.preheader31
  %.lcssa2931.lcssa34 = phi i32 [ %.lcssa2931.lcssa, %31 ], [ poison, %.preheader31 ]
  %.lcssa3033 = phi i32 [ %.lcssa30, %31 ], [ poison, %.preheader31 ]
  %13 = phi i32 [ %32, %31 ], [ 1, %.preheader31 ]
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %12
  br label %15

.preheader28:                                     ; preds = %12
  %.lcssa2931.lcssa34.lcssa = phi i32 [ %.lcssa2931.lcssa34, %12 ]
  %.lcssa3033.lcssa = phi i32 [ %.lcssa3033, %12 ]
  %.lcssa32 = phi i32 [ %13, %12 ]
  store i32 %.lcssa32, ptr %1, align 4
  store i32 %.lcssa3033.lcssa, ptr %2, align 4
  store i32 %.lcssa2931.lcssa34.lcssa, ptr %3, align 4
  br label %33

15:                                               ; preds = %29, %.preheader30
  %.lcssa2931 = phi i32 [ %.lcssa29, %29 ], [ poison, %.preheader30 ]
  %16 = phi i32 [ %.lcssa26, %29 ], [ %13, %.preheader30 ]
  %17 = phi i32 [ %30, %29 ], [ 1, %.preheader30 ]
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %.preheader29, label %31

.preheader29:                                     ; preds = %15
  %19 = shl i32 %17, 3
  %invariant.op = add i32 %19, %13
  br label %20

20:                                               ; preds = %24, %.preheader29
  %21 = phi i32 [ %13, %24 ], [ %16, %.preheader29 ]
  %22 = phi i32 [ %28, %24 ], [ 1, %.preheader29 ]
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = shl i32 %22, 6
  %.reass = add i32 %25, %invariant.op
  %26 = sext i32 %.reass to i64
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  %28 = add nsw i32 %22, 1
  br label %20, !llvm.loop !14

29:                                               ; preds = %20
  %.lcssa29 = phi i32 [ %22, %20 ]
  %.lcssa26 = phi i32 [ %21, %20 ]
  %30 = add nsw i32 %17, 1
  br label %15, !llvm.loop !15

31:                                               ; preds = %15
  %.lcssa2931.lcssa = phi i32 [ %.lcssa2931, %15 ]
  %.lcssa30 = phi i32 [ %17, %15 ]
  %.lcssa27 = phi i32 [ %16, %15 ]
  %32 = add nsw i32 %.lcssa27, 1
  br label %12, !llvm.loop !16

33:                                               ; preds = %45, %.preheader28
  %.lcssa3537 = phi i32 [ %.lcssa35, %45 ], [ poison, %.preheader28 ]
  %34 = phi i32 [ %46, %45 ], [ 0, %.preheader28 ]
  %35 = icmp slt i32 %34, 13
  br i1 %35, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %33
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [2048 x i8], ptr @p, i64 %36
  br label %38

.preheader26:                                     ; preds = %33
  %.lcssa3537.lcssa = phi i32 [ %.lcssa3537, %33 ]
  %.lcssa36 = phi i32 [ %34, %33 ]
  store i32 %.lcssa36, ptr %1, align 4
  store i32 %.lcssa3537.lcssa, ptr %4, align 4
  br label %47

38:                                               ; preds = %41, %.preheader27
  %39 = phi i32 [ %44, %41 ], [ 0, %.preheader27 ]
  %40 = icmp slt i32 %39, 512
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %37, i64 %42
  store i32 0, ptr %43, align 4
  %44 = add nsw i32 %39, 1
  br label %38, !llvm.loop !17

45:                                               ; preds = %38
  %.lcssa35 = phi i32 [ %39, %38 ]
  %46 = add nsw i32 %34, 1
  br label %33, !llvm.loop !18

47:                                               ; preds = %66, %.preheader26
  %.lcssa4042.lcssa45 = phi i32 [ %.lcssa4042.lcssa, %66 ], [ poison, %.preheader26 ]
  %.lcssa4144 = phi i32 [ %.lcssa41, %66 ], [ poison, %.preheader26 ]
  %48 = phi i32 [ %67, %66 ], [ 0, %.preheader26 ]
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %.preheader25, label %68

.preheader25:                                     ; preds = %47
  br label %50

50:                                               ; preds = %64, %.preheader25
  %.lcssa4042 = phi i32 [ %.lcssa40, %64 ], [ poison, %.preheader25 ]
  %51 = phi i32 [ %.lcssa24, %64 ], [ %48, %.preheader25 ]
  %52 = phi i32 [ %65, %64 ], [ 0, %.preheader25 ]
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %.preheader24, label %66

.preheader24:                                     ; preds = %50
  %54 = shl i32 %52, 3
  %invariant.op38 = add i32 %54, %48
  br label %55

55:                                               ; preds = %59, %.preheader24
  %56 = phi i32 [ %48, %59 ], [ %51, %.preheader24 ]
  %57 = phi i32 [ %63, %59 ], [ 0, %.preheader24 ]
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = shl i32 %57, 6
  %.reass39 = add i32 %60, %invariant.op38
  %61 = sext i32 %.reass39 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @p, i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nsw i32 %57, 1
  br label %55, !llvm.loop !19

64:                                               ; preds = %55
  %.lcssa40 = phi i32 [ %57, %55 ]
  %.lcssa24 = phi i32 [ %56, %55 ]
  %65 = add nsw i32 %52, 1
  br label %50, !llvm.loop !20

66:                                               ; preds = %50
  %.lcssa4042.lcssa = phi i32 [ %.lcssa4042, %50 ]
  %.lcssa41 = phi i32 [ %52, %50 ]
  %.lcssa25 = phi i32 [ %51, %50 ]
  %67 = add nsw i32 %.lcssa25, 1
  br label %47, !llvm.loop !21

68:                                               ; preds = %47
  %.lcssa4042.lcssa45.lcssa = phi i32 [ %.lcssa4042.lcssa45, %47 ]
  %.lcssa4144.lcssa = phi i32 [ %.lcssa4144, %47 ]
  %.lcssa43 = phi i32 [ %48, %47 ]
  store i32 %.lcssa43, ptr %1, align 4
  store i32 %.lcssa4144.lcssa, ptr %2, align 4
  store i32 %.lcssa4042.lcssa45.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %69

69:                                               ; preds = %88, %68
  %.lcssa4850.lcssa53 = phi i32 [ poison, %68 ], [ %.lcssa4850.lcssa, %88 ]
  %.lcssa4952 = phi i32 [ poison, %68 ], [ %.lcssa49, %88 ]
  %70 = phi i32 [ 0, %68 ], [ %89, %88 ]
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %.preheader23, label %90

.preheader23:                                     ; preds = %69
  br label %72

72:                                               ; preds = %86, %.preheader23
  %.lcssa4850 = phi i32 [ %.lcssa48, %86 ], [ poison, %.preheader23 ]
  %73 = phi i32 [ %.lcssa22, %86 ], [ %70, %.preheader23 ]
  %74 = phi i32 [ %87, %86 ], [ 0, %.preheader23 ]
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %.preheader22, label %88

.preheader22:                                     ; preds = %72
  %76 = shl i32 %74, 3
  %invariant.op46 = add i32 %76, %70
  br label %77

77:                                               ; preds = %81, %.preheader22
  %78 = phi i32 [ %70, %81 ], [ %73, %.preheader22 ]
  %79 = phi i32 [ %85, %81 ], [ 0, %.preheader22 ]
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = shl i32 %79, 6
  %.reass47 = add i32 %82, %invariant.op46
  %83 = sext i32 %.reass47 to i64
  %84 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %83
  store i32 1, ptr %84, align 4
  %85 = add nsw i32 %79, 1
  br label %77, !llvm.loop !22

86:                                               ; preds = %77
  %.lcssa48 = phi i32 [ %79, %77 ]
  %.lcssa22 = phi i32 [ %78, %77 ]
  %87 = add nsw i32 %74, 1
  br label %72, !llvm.loop !23

88:                                               ; preds = %72
  %.lcssa4850.lcssa = phi i32 [ %.lcssa4850, %72 ]
  %.lcssa49 = phi i32 [ %74, %72 ]
  %.lcssa23 = phi i32 [ %73, %72 ]
  %89 = add nsw i32 %.lcssa23, 1
  br label %69, !llvm.loop !24

90:                                               ; preds = %69
  %.lcssa4850.lcssa53.lcssa = phi i32 [ %.lcssa4850.lcssa53, %69 ]
  %.lcssa4952.lcssa = phi i32 [ %.lcssa4952, %69 ]
  %.lcssa51 = phi i32 [ %70, %69 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4952.lcssa, ptr %2, align 4
  store i32 %.lcssa4850.lcssa53.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %91

91:                                               ; preds = %110, %90
  %.lcssa5658.lcssa61 = phi i32 [ poison, %90 ], [ %.lcssa5658.lcssa, %110 ]
  %.lcssa5760 = phi i32 [ poison, %90 ], [ %.lcssa57, %110 ]
  %92 = phi i32 [ 0, %90 ], [ %111, %110 ]
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %.preheader21, label %112

.preheader21:                                     ; preds = %91
  br label %94

94:                                               ; preds = %108, %.preheader21
  %.lcssa5658 = phi i32 [ %.lcssa56, %108 ], [ poison, %.preheader21 ]
  %95 = phi i32 [ %.lcssa20, %108 ], [ %92, %.preheader21 ]
  %96 = phi i32 [ %109, %108 ], [ 0, %.preheader21 ]
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %.preheader20, label %110

.preheader20:                                     ; preds = %94
  %98 = shl i32 %96, 3
  %invariant.op54 = add i32 %98, %92
  br label %99

99:                                               ; preds = %103, %.preheader20
  %100 = phi i32 [ %92, %103 ], [ %95, %.preheader20 ]
  %101 = phi i32 [ %107, %103 ], [ 0, %.preheader20 ]
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = shl i32 %101, 6
  %.reass55 = add i32 %104, %invariant.op54
  %105 = sext i32 %.reass55 to i64
  %106 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %105
  store i32 1, ptr %106, align 4
  %107 = add nsw i32 %101, 1
  br label %99, !llvm.loop !25

108:                                              ; preds = %99
  %.lcssa56 = phi i32 [ %101, %99 ]
  %.lcssa20 = phi i32 [ %100, %99 ]
  %109 = add nsw i32 %96, 1
  br label %94, !llvm.loop !26

110:                                              ; preds = %94
  %.lcssa5658.lcssa = phi i32 [ %.lcssa5658, %94 ]
  %.lcssa57 = phi i32 [ %96, %94 ]
  %.lcssa21 = phi i32 [ %95, %94 ]
  %111 = add nsw i32 %.lcssa21, 1
  br label %91, !llvm.loop !27

112:                                              ; preds = %91
  %.lcssa5658.lcssa61.lcssa = phi i32 [ %.lcssa5658.lcssa61, %91 ]
  %.lcssa5760.lcssa = phi i32 [ %.lcssa5760, %91 ]
  %.lcssa59 = phi i32 [ %92, %91 ]
  store i32 %.lcssa59, ptr %1, align 4
  store i32 %.lcssa5760.lcssa, ptr %2, align 4
  store i32 %.lcssa5658.lcssa61.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %113

113:                                              ; preds = %132, %112
  %.lcssa6466.lcssa69 = phi i32 [ poison, %112 ], [ %.lcssa6466.lcssa, %132 ]
  %.lcssa6568 = phi i32 [ poison, %112 ], [ %.lcssa65, %132 ]
  %114 = phi i32 [ 0, %112 ], [ %133, %132 ]
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %.preheader19, label %134

.preheader19:                                     ; preds = %113
  br label %116

116:                                              ; preds = %130, %.preheader19
  %.lcssa6466 = phi i32 [ %.lcssa64, %130 ], [ poison, %.preheader19 ]
  %117 = phi i32 [ %.lcssa18, %130 ], [ %114, %.preheader19 ]
  %118 = phi i32 [ %131, %130 ], [ 0, %.preheader19 ]
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %.preheader18, label %132

.preheader18:                                     ; preds = %116
  %120 = shl i32 %118, 3
  %invariant.op62 = add i32 %120, %114
  br label %121

121:                                              ; preds = %125, %.preheader18
  %122 = phi i32 [ %114, %125 ], [ %117, %.preheader18 ]
  %123 = phi i32 [ %129, %125 ], [ 0, %.preheader18 ]
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = shl i32 %123, 6
  %.reass63 = add i32 %126, %invariant.op62
  %127 = sext i32 %.reass63 to i64
  %128 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %127
  store i32 1, ptr %128, align 4
  %129 = add nsw i32 %123, 1
  br label %121, !llvm.loop !28

130:                                              ; preds = %121
  %.lcssa64 = phi i32 [ %123, %121 ]
  %.lcssa18 = phi i32 [ %122, %121 ]
  %131 = add nsw i32 %118, 1
  br label %116, !llvm.loop !29

132:                                              ; preds = %116
  %.lcssa6466.lcssa = phi i32 [ %.lcssa6466, %116 ]
  %.lcssa65 = phi i32 [ %118, %116 ]
  %.lcssa19 = phi i32 [ %117, %116 ]
  %133 = add nsw i32 %.lcssa19, 1
  br label %113, !llvm.loop !30

134:                                              ; preds = %113
  %.lcssa6466.lcssa69.lcssa = phi i32 [ %.lcssa6466.lcssa69, %113 ]
  %.lcssa6568.lcssa = phi i32 [ %.lcssa6568, %113 ]
  %.lcssa67 = phi i32 [ %114, %113 ]
  store i32 %.lcssa67, ptr %1, align 4
  store i32 %.lcssa6568.lcssa, ptr %2, align 4
  store i32 %.lcssa6466.lcssa69.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %135

135:                                              ; preds = %154, %134
  %.lcssa7274.lcssa77 = phi i32 [ poison, %134 ], [ %.lcssa7274.lcssa, %154 ]
  %.lcssa7376 = phi i32 [ poison, %134 ], [ %.lcssa73, %154 ]
  %136 = phi i32 [ 0, %134 ], [ %155, %154 ]
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %.preheader17, label %156

.preheader17:                                     ; preds = %135
  br label %138

138:                                              ; preds = %152, %.preheader17
  %.lcssa7274 = phi i32 [ %.lcssa72, %152 ], [ poison, %.preheader17 ]
  %139 = phi i32 [ %.lcssa16, %152 ], [ %136, %.preheader17 ]
  %140 = phi i32 [ %153, %152 ], [ 0, %.preheader17 ]
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %.preheader16, label %154

.preheader16:                                     ; preds = %138
  %142 = shl i32 %140, 3
  %invariant.op70 = add i32 %142, %136
  br label %143

143:                                              ; preds = %147, %.preheader16
  %144 = phi i32 [ %136, %147 ], [ %139, %.preheader16 ]
  %145 = phi i32 [ %151, %147 ], [ 0, %.preheader16 ]
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = shl i32 %145, 6
  %.reass71 = add i32 %148, %invariant.op70
  %149 = sext i32 %.reass71 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %149
  store i32 1, ptr %150, align 4
  %151 = add nsw i32 %145, 1
  br label %143, !llvm.loop !31

152:                                              ; preds = %143
  %.lcssa72 = phi i32 [ %145, %143 ]
  %.lcssa16 = phi i32 [ %144, %143 ]
  %153 = add nsw i32 %140, 1
  br label %138, !llvm.loop !32

154:                                              ; preds = %138
  %.lcssa7274.lcssa = phi i32 [ %.lcssa7274, %138 ]
  %.lcssa73 = phi i32 [ %140, %138 ]
  %.lcssa17 = phi i32 [ %139, %138 ]
  %155 = add nsw i32 %.lcssa17, 1
  br label %135, !llvm.loop !33

156:                                              ; preds = %135
  %.lcssa7274.lcssa77.lcssa = phi i32 [ %.lcssa7274.lcssa77, %135 ]
  %.lcssa7376.lcssa = phi i32 [ %.lcssa7376, %135 ]
  %.lcssa75 = phi i32 [ %136, %135 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7376.lcssa, ptr %2, align 4
  store i32 %.lcssa7274.lcssa77.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %157

157:                                              ; preds = %176, %156
  %.lcssa8082.lcssa85 = phi i32 [ poison, %156 ], [ %.lcssa8082.lcssa, %176 ]
  %.lcssa8184 = phi i32 [ poison, %156 ], [ %.lcssa81, %176 ]
  %158 = phi i32 [ 0, %156 ], [ %177, %176 ]
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %.preheader15, label %178

.preheader15:                                     ; preds = %157
  br label %160

160:                                              ; preds = %174, %.preheader15
  %.lcssa8082 = phi i32 [ %.lcssa80, %174 ], [ poison, %.preheader15 ]
  %161 = phi i32 [ %.lcssa14, %174 ], [ %158, %.preheader15 ]
  %162 = phi i32 [ %175, %174 ], [ 0, %.preheader15 ]
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %.preheader14, label %176

.preheader14:                                     ; preds = %160
  %164 = shl i32 %162, 3
  %invariant.op78 = add i32 %164, %158
  br label %165

165:                                              ; preds = %169, %.preheader14
  %166 = phi i32 [ %158, %169 ], [ %161, %.preheader14 ]
  %167 = phi i32 [ %173, %169 ], [ 0, %.preheader14 ]
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = shl i32 %167, 6
  %.reass79 = add i32 %170, %invariant.op78
  %171 = sext i32 %.reass79 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %171
  store i32 1, ptr %172, align 4
  %173 = add nsw i32 %167, 1
  br label %165, !llvm.loop !34

174:                                              ; preds = %165
  %.lcssa80 = phi i32 [ %167, %165 ]
  %.lcssa14 = phi i32 [ %166, %165 ]
  %175 = add nsw i32 %162, 1
  br label %160, !llvm.loop !35

176:                                              ; preds = %160
  %.lcssa8082.lcssa = phi i32 [ %.lcssa8082, %160 ]
  %.lcssa81 = phi i32 [ %162, %160 ]
  %.lcssa15 = phi i32 [ %161, %160 ]
  %177 = add nsw i32 %.lcssa15, 1
  br label %157, !llvm.loop !36

178:                                              ; preds = %157
  %.lcssa8082.lcssa85.lcssa = phi i32 [ %.lcssa8082.lcssa85, %157 ]
  %.lcssa8184.lcssa = phi i32 [ %.lcssa8184, %157 ]
  %.lcssa83 = phi i32 [ %158, %157 ]
  store i32 %.lcssa83, ptr %1, align 4
  store i32 %.lcssa8184.lcssa, ptr %2, align 4
  store i32 %.lcssa8082.lcssa85.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %179

179:                                              ; preds = %198, %178
  %.lcssa8890.lcssa93 = phi i32 [ poison, %178 ], [ %.lcssa8890.lcssa, %198 ]
  %.lcssa8992 = phi i32 [ poison, %178 ], [ %.lcssa89, %198 ]
  %180 = phi i32 [ 0, %178 ], [ %199, %198 ]
  %181 = icmp slt i32 %180, 3
  br i1 %181, label %.preheader13, label %200

.preheader13:                                     ; preds = %179
  br label %182

182:                                              ; preds = %196, %.preheader13
  %.lcssa8890 = phi i32 [ %.lcssa88, %196 ], [ poison, %.preheader13 ]
  %183 = phi i32 [ %.lcssa12, %196 ], [ %180, %.preheader13 ]
  %184 = phi i32 [ %197, %196 ], [ 0, %.preheader13 ]
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %.preheader12, label %198

.preheader12:                                     ; preds = %182
  %186 = shl i32 %184, 3
  %invariant.op86 = add i32 %186, %180
  br label %187

187:                                              ; preds = %191, %.preheader12
  %188 = phi i32 [ %180, %191 ], [ %183, %.preheader12 ]
  %189 = phi i32 [ %195, %191 ], [ 0, %.preheader12 ]
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = shl i32 %189, 6
  %.reass87 = add i32 %192, %invariant.op86
  %193 = sext i32 %.reass87 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nsw i32 %189, 1
  br label %187, !llvm.loop !37

196:                                              ; preds = %187
  %.lcssa88 = phi i32 [ %189, %187 ]
  %.lcssa12 = phi i32 [ %188, %187 ]
  %197 = add nsw i32 %184, 1
  br label %182, !llvm.loop !38

198:                                              ; preds = %182
  %.lcssa8890.lcssa = phi i32 [ %.lcssa8890, %182 ]
  %.lcssa89 = phi i32 [ %184, %182 ]
  %.lcssa13 = phi i32 [ %183, %182 ]
  %199 = add nsw i32 %.lcssa13, 1
  br label %179, !llvm.loop !39

200:                                              ; preds = %179
  %.lcssa8890.lcssa93.lcssa = phi i32 [ %.lcssa8890.lcssa93, %179 ]
  %.lcssa8992.lcssa = phi i32 [ %.lcssa8992, %179 ]
  %.lcssa91 = phi i32 [ %180, %179 ]
  store i32 %.lcssa91, ptr %1, align 4
  store i32 %.lcssa8992.lcssa, ptr %2, align 4
  store i32 %.lcssa8890.lcssa93.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %201

201:                                              ; preds = %220, %200
  %.lcssa9698.lcssa101 = phi i32 [ poison, %200 ], [ %.lcssa9698.lcssa, %220 ]
  %.lcssa97100 = phi i32 [ poison, %200 ], [ %.lcssa97, %220 ]
  %202 = phi i32 [ 0, %200 ], [ %221, %220 ]
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %.preheader11, label %222

.preheader11:                                     ; preds = %201
  br label %204

204:                                              ; preds = %218, %.preheader11
  %.lcssa9698 = phi i32 [ %.lcssa96, %218 ], [ poison, %.preheader11 ]
  %205 = phi i32 [ %.lcssa10, %218 ], [ %202, %.preheader11 ]
  %206 = phi i32 [ %219, %218 ], [ 0, %.preheader11 ]
  %207 = icmp slt i32 %206, 3
  br i1 %207, label %.preheader10, label %220

.preheader10:                                     ; preds = %204
  %208 = shl i32 %206, 3
  %invariant.op94 = add i32 %208, %202
  br label %209

209:                                              ; preds = %213, %.preheader10
  %210 = phi i32 [ %202, %213 ], [ %205, %.preheader10 ]
  %211 = phi i32 [ %217, %213 ], [ 0, %.preheader10 ]
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %213, label %218

213:                                              ; preds = %209
  %214 = shl i32 %211, 6
  %.reass95 = add i32 %214, %invariant.op94
  %215 = sext i32 %.reass95 to i64
  %216 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %215
  store i32 1, ptr %216, align 4
  %217 = add nsw i32 %211, 1
  br label %209, !llvm.loop !40

218:                                              ; preds = %209
  %.lcssa96 = phi i32 [ %211, %209 ]
  %.lcssa10 = phi i32 [ %210, %209 ]
  %219 = add nsw i32 %206, 1
  br label %204, !llvm.loop !41

220:                                              ; preds = %204
  %.lcssa9698.lcssa = phi i32 [ %.lcssa9698, %204 ]
  %.lcssa97 = phi i32 [ %206, %204 ]
  %.lcssa11 = phi i32 [ %205, %204 ]
  %221 = add nsw i32 %.lcssa11, 1
  br label %201, !llvm.loop !42

222:                                              ; preds = %201
  %.lcssa9698.lcssa101.lcssa = phi i32 [ %.lcssa9698.lcssa101, %201 ]
  %.lcssa97100.lcssa = phi i32 [ %.lcssa97100, %201 ]
  %.lcssa99 = phi i32 [ %202, %201 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa97100.lcssa, ptr %2, align 4
  store i32 %.lcssa9698.lcssa101.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %223

223:                                              ; preds = %242, %222
  %.lcssa104106.lcssa109 = phi i32 [ poison, %222 ], [ %.lcssa104106.lcssa, %242 ]
  %.lcssa105108 = phi i32 [ poison, %222 ], [ %.lcssa105, %242 ]
  %224 = phi i32 [ 0, %222 ], [ %243, %242 ]
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %.preheader9, label %244

.preheader9:                                      ; preds = %223
  br label %226

226:                                              ; preds = %240, %.preheader9
  %.lcssa104106 = phi i32 [ %.lcssa104, %240 ], [ poison, %.preheader9 ]
  %227 = phi i32 [ %.lcssa8, %240 ], [ %224, %.preheader9 ]
  %228 = phi i32 [ %241, %240 ], [ 0, %.preheader9 ]
  %229 = icmp slt i32 %228, 1
  br i1 %229, label %.preheader8, label %242

.preheader8:                                      ; preds = %226
  %230 = shl i32 %228, 3
  %invariant.op102 = add i32 %230, %224
  br label %231

231:                                              ; preds = %235, %.preheader8
  %232 = phi i32 [ %224, %235 ], [ %227, %.preheader8 ]
  %233 = phi i32 [ %239, %235 ], [ 0, %.preheader8 ]
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = shl i32 %233, 6
  %.reass103 = add i32 %236, %invariant.op102
  %237 = sext i32 %.reass103 to i64
  %238 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %237
  store i32 1, ptr %238, align 4
  %239 = add nsw i32 %233, 1
  br label %231, !llvm.loop !43

240:                                              ; preds = %231
  %.lcssa104 = phi i32 [ %233, %231 ]
  %.lcssa8 = phi i32 [ %232, %231 ]
  %241 = add nsw i32 %228, 1
  br label %226, !llvm.loop !44

242:                                              ; preds = %226
  %.lcssa104106.lcssa = phi i32 [ %.lcssa104106, %226 ]
  %.lcssa105 = phi i32 [ %228, %226 ]
  %.lcssa9 = phi i32 [ %227, %226 ]
  %243 = add nsw i32 %.lcssa9, 1
  br label %223, !llvm.loop !45

244:                                              ; preds = %223
  %.lcssa104106.lcssa109.lcssa = phi i32 [ %.lcssa104106.lcssa109, %223 ]
  %.lcssa105108.lcssa = phi i32 [ %.lcssa105108, %223 ]
  %.lcssa107 = phi i32 [ %224, %223 ]
  store i32 %.lcssa107, ptr %1, align 4
  store i32 %.lcssa105108.lcssa, ptr %2, align 4
  store i32 %.lcssa104106.lcssa109.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %245

245:                                              ; preds = %264, %244
  %.lcssa112114.lcssa117 = phi i32 [ poison, %244 ], [ %.lcssa112114.lcssa, %264 ]
  %.lcssa113116 = phi i32 [ poison, %244 ], [ %.lcssa113, %264 ]
  %246 = phi i32 [ 0, %244 ], [ %265, %264 ]
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %.preheader7, label %266

.preheader7:                                      ; preds = %245
  br label %248

248:                                              ; preds = %262, %.preheader7
  %.lcssa112114 = phi i32 [ %.lcssa112, %262 ], [ poison, %.preheader7 ]
  %249 = phi i32 [ %.lcssa6, %262 ], [ %246, %.preheader7 ]
  %250 = phi i32 [ %263, %262 ], [ 0, %.preheader7 ]
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %.preheader6, label %264

.preheader6:                                      ; preds = %248
  %252 = shl i32 %250, 3
  %invariant.op110 = add i32 %252, %246
  br label %253

253:                                              ; preds = %257, %.preheader6
  %254 = phi i32 [ %246, %257 ], [ %249, %.preheader6 ]
  %255 = phi i32 [ %261, %257 ], [ 0, %.preheader6 ]
  %256 = icmp slt i32 %255, 1
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = shl i32 %255, 6
  %.reass111 = add i32 %258, %invariant.op110
  %259 = sext i32 %.reass111 to i64
  %260 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %259
  store i32 1, ptr %260, align 4
  %261 = add nsw i32 %255, 1
  br label %253, !llvm.loop !46

262:                                              ; preds = %253
  %.lcssa112 = phi i32 [ %255, %253 ]
  %.lcssa6 = phi i32 [ %254, %253 ]
  %263 = add nsw i32 %250, 1
  br label %248, !llvm.loop !47

264:                                              ; preds = %248
  %.lcssa112114.lcssa = phi i32 [ %.lcssa112114, %248 ]
  %.lcssa113 = phi i32 [ %250, %248 ]
  %.lcssa7 = phi i32 [ %249, %248 ]
  %265 = add nsw i32 %.lcssa7, 1
  br label %245, !llvm.loop !48

266:                                              ; preds = %245
  %.lcssa112114.lcssa117.lcssa = phi i32 [ %.lcssa112114.lcssa117, %245 ]
  %.lcssa113116.lcssa = phi i32 [ %.lcssa113116, %245 ]
  %.lcssa115 = phi i32 [ %246, %245 ]
  store i32 %.lcssa115, ptr %1, align 4
  store i32 %.lcssa113116.lcssa, ptr %2, align 4
  store i32 %.lcssa112114.lcssa117.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %267

267:                                              ; preds = %286, %266
  %.lcssa120122.lcssa125 = phi i32 [ poison, %266 ], [ %.lcssa120122.lcssa, %286 ]
  %.lcssa121124 = phi i32 [ poison, %266 ], [ %.lcssa121, %286 ]
  %268 = phi i32 [ 0, %266 ], [ %287, %286 ]
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %.preheader5, label %288

.preheader5:                                      ; preds = %267
  br label %270

270:                                              ; preds = %284, %.preheader5
  %.lcssa120122 = phi i32 [ %.lcssa120, %284 ], [ poison, %.preheader5 ]
  %271 = phi i32 [ %.lcssa4, %284 ], [ %268, %.preheader5 ]
  %272 = phi i32 [ %285, %284 ], [ 0, %.preheader5 ]
  %273 = icmp slt i32 %272, 1
  br i1 %273, label %.preheader4, label %286

.preheader4:                                      ; preds = %270
  %274 = shl i32 %272, 3
  %invariant.op118 = add i32 %274, %268
  br label %275

275:                                              ; preds = %279, %.preheader4
  %276 = phi i32 [ %268, %279 ], [ %271, %.preheader4 ]
  %277 = phi i32 [ %283, %279 ], [ 0, %.preheader4 ]
  %278 = icmp slt i32 %277, 2
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = shl i32 %277, 6
  %.reass119 = add i32 %280, %invariant.op118
  %281 = sext i32 %.reass119 to i64
  %282 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %281
  store i32 1, ptr %282, align 4
  %283 = add nsw i32 %277, 1
  br label %275, !llvm.loop !49

284:                                              ; preds = %275
  %.lcssa120 = phi i32 [ %277, %275 ]
  %.lcssa4 = phi i32 [ %276, %275 ]
  %285 = add nsw i32 %272, 1
  br label %270, !llvm.loop !50

286:                                              ; preds = %270
  %.lcssa120122.lcssa = phi i32 [ %.lcssa120122, %270 ]
  %.lcssa121 = phi i32 [ %272, %270 ]
  %.lcssa5 = phi i32 [ %271, %270 ]
  %287 = add nsw i32 %.lcssa5, 1
  br label %267, !llvm.loop !51

288:                                              ; preds = %267
  %.lcssa120122.lcssa125.lcssa = phi i32 [ %.lcssa120122.lcssa125, %267 ]
  %.lcssa121124.lcssa = phi i32 [ %.lcssa121124, %267 ]
  %.lcssa123 = phi i32 [ %268, %267 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa121124.lcssa, ptr %2, align 4
  store i32 %.lcssa120122.lcssa125.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %289

289:                                              ; preds = %308, %288
  %.lcssa128130.lcssa133 = phi i32 [ poison, %288 ], [ %.lcssa128130.lcssa, %308 ]
  %.lcssa129132 = phi i32 [ poison, %288 ], [ %.lcssa129, %308 ]
  %290 = phi i32 [ 0, %288 ], [ %309, %308 ]
  %291 = icmp slt i32 %290, 1
  br i1 %291, label %.preheader3, label %310

.preheader3:                                      ; preds = %289
  br label %292

292:                                              ; preds = %306, %.preheader3
  %.lcssa128130 = phi i32 [ %.lcssa128, %306 ], [ poison, %.preheader3 ]
  %293 = phi i32 [ %.lcssa2, %306 ], [ %290, %.preheader3 ]
  %294 = phi i32 [ %307, %306 ], [ 0, %.preheader3 ]
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %.preheader2, label %308

.preheader2:                                      ; preds = %292
  %296 = shl i32 %294, 3
  %invariant.op126 = add i32 %296, %290
  br label %297

297:                                              ; preds = %301, %.preheader2
  %298 = phi i32 [ %290, %301 ], [ %293, %.preheader2 ]
  %299 = phi i32 [ %305, %301 ], [ 0, %.preheader2 ]
  %300 = icmp slt i32 %299, 2
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = shl i32 %299, 6
  %.reass127 = add i32 %302, %invariant.op126
  %303 = sext i32 %.reass127 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %303
  store i32 1, ptr %304, align 4
  %305 = add nsw i32 %299, 1
  br label %297, !llvm.loop !52

306:                                              ; preds = %297
  %.lcssa128 = phi i32 [ %299, %297 ]
  %.lcssa2 = phi i32 [ %298, %297 ]
  %307 = add nsw i32 %294, 1
  br label %292, !llvm.loop !53

308:                                              ; preds = %292
  %.lcssa128130.lcssa = phi i32 [ %.lcssa128130, %292 ]
  %.lcssa129 = phi i32 [ %294, %292 ]
  %.lcssa3 = phi i32 [ %293, %292 ]
  %309 = add nsw i32 %.lcssa3, 1
  br label %289, !llvm.loop !54

310:                                              ; preds = %289
  %.lcssa128130.lcssa133.lcssa = phi i32 [ %.lcssa128130.lcssa133, %289 ]
  %.lcssa129132.lcssa = phi i32 [ %.lcssa129132, %289 ]
  %.lcssa131 = phi i32 [ %290, %289 ]
  store i32 %.lcssa131, ptr %1, align 4
  store i32 %.lcssa129132.lcssa, ptr %2, align 4
  store i32 %.lcssa128130.lcssa133.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %311

311:                                              ; preds = %330, %310
  %.lcssa136138.lcssa141 = phi i32 [ poison, %310 ], [ %.lcssa136138.lcssa, %330 ]
  %.lcssa137140 = phi i32 [ poison, %310 ], [ %.lcssa137, %330 ]
  %312 = phi i32 [ 0, %310 ], [ %331, %330 ]
  %313 = icmp slt i32 %312, 2
  br i1 %313, label %.preheader1, label %332

.preheader1:                                      ; preds = %311
  br label %314

314:                                              ; preds = %328, %.preheader1
  %.lcssa136138 = phi i32 [ %.lcssa136, %328 ], [ poison, %.preheader1 ]
  %315 = phi i32 [ %.lcssa, %328 ], [ %312, %.preheader1 ]
  %316 = phi i32 [ %329, %328 ], [ 0, %.preheader1 ]
  %317 = icmp slt i32 %316, 2
  br i1 %317, label %.preheader, label %330

.preheader:                                       ; preds = %314
  %318 = shl i32 %316, 3
  %invariant.op134 = add i32 %318, %312
  br label %319

319:                                              ; preds = %323, %.preheader
  %320 = phi i32 [ %312, %323 ], [ %315, %.preheader ]
  %321 = phi i32 [ %327, %323 ], [ 0, %.preheader ]
  %322 = icmp slt i32 %321, 2
  br i1 %322, label %323, label %328

323:                                              ; preds = %319
  %324 = shl i32 %321, 6
  %.reass135 = add i32 %324, %invariant.op134
  %325 = sext i32 %.reass135 to i64
  %326 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %325
  store i32 1, ptr %326, align 4
  %327 = add nsw i32 %321, 1
  br label %319, !llvm.loop !55

328:                                              ; preds = %319
  %.lcssa136 = phi i32 [ %321, %319 ]
  %.lcssa = phi i32 [ %320, %319 ]
  %329 = add nsw i32 %316, 1
  br label %314, !llvm.loop !56

330:                                              ; preds = %314
  %.lcssa136138.lcssa = phi i32 [ %.lcssa136138, %314 ]
  %.lcssa137 = phi i32 [ %316, %314 ]
  %.lcssa1 = phi i32 [ %315, %314 ]
  %331 = add nsw i32 %.lcssa1, 1
  br label %311, !llvm.loop !57

332:                                              ; preds = %311
  %.lcssa136138.lcssa141.lcssa = phi i32 [ %.lcssa136138.lcssa141, %311 ]
  %.lcssa137140.lcssa = phi i32 [ %.lcssa137140, %311 ]
  %.lcssa139 = phi i32 [ %312, %311 ]
  store i32 %.lcssa139, ptr %1, align 4
  store i32 %.lcssa137140.lcssa, ptr %2, align 4
  store i32 %.lcssa136138.lcssa141.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %333 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %333, 0
  br i1 %.not, label %336, label %334

334:                                              ; preds = %332
  %335 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %335, ptr @n, align 4
  br label %337

336:                                              ; preds = %332
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %337

337:                                              ; preds = %336, %334
  %338 = phi i32 [ %.pre, %336 ], [ %335, %334 ]
  %339 = call i32 @Trial(i32 noundef %338)
  %.not16 = icmp eq i32 %339, 0
  br i1 %.not16, label %340, label %341

340:                                              ; preds = %337
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %344

341:                                              ; preds = %337
  %342 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %342, 2005
  br i1 %.not18, label %344, label %343

343:                                              ; preds = %341
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %344

344:                                              ; preds = %343, %341, %340
  %345 = load i32, ptr @n, align 4
  %346 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %345) #4
  %347 = load i32, ptr @kount, align 4
  %348 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %347) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
