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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %22 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %24, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %24

22:                                               ; preds = %17, %13
  %23 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !7

24:                                               ; preds = %17, %12
  %storemerge.lcssa = phi i32 [ %storemerge, %17 ], [ %storemerge, %12 ]
  %storemerge1 = phi i32 [ 0, %17 ], [ 1, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
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

21:                                               ; preds = %17, %13
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
  br i1 %exitcond, label %34, label %.loopexit

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
  br label %40

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

.loopexit:                                        ; preds = %32
  %.lcssa1 = phi i32 [ %33, %32 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %40

40:                                               ; preds = %.loopexit, %37
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.loopexit ]
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

21:                                               ; preds = %17, %13
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

10:                                               ; preds = %27, %1
  %11 = phi i32 [ %.promoted, %1 ], [ %28, %27 ]
  %storemerge = phi i32 [ 0, %1 ], [ %29, %27 ]
  %12 = icmp slt i32 %storemerge, 13
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %27, label %20

20:                                               ; preds = %13
  %21 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %7)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %27, label %22

22:                                               ; preds = %20
  %23 = call i32 @Place(i32 noundef %storemerge, i32 noundef %8)
  %24 = call i32 @Trial(i32 noundef %23)
  %.not3 = icmp ne i32 %24, 0
  %25 = icmp eq i32 %23, 0
  %or.cond = select i1 %.not3, i1 true, i1 %25
  br i1 %or.cond, label %30, label %26

26:                                               ; preds = %22
  call void @Remove(i32 noundef %storemerge, i32 noundef %9)
  br label %27

27:                                               ; preds = %26, %20, %13
  %28 = phi i32 [ %23, %26 ], [ %11, %20 ], [ %11, %13 ]
  %29 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !12

30:                                               ; preds = %22, %10
  %31 = phi i32 [ %23, %22 ], [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %22 ], [ %storemerge, %10 ]
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %10 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %31, ptr %4, align 4
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
  br i1 %6, label %7, label %.preheader31

.preheader31:                                     ; preds = %5
  %storemerge.lcssa = phi i32 [ %storemerge, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %11

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

11:                                               ; preds = %24, %.preheader31
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %24 ], [ poison, %.preheader31 ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %24 ], [ poison, %.preheader31 ]
  %storemerge1 = phi i32 [ %25, %24 ], [ 1, %.preheader31 ]
  %12 = icmp slt i32 %storemerge1, 6
  br i1 %12, label %.preheader30, label %.preheader28

.preheader28:                                     ; preds = %11
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %11 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %11 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %11 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %26

.preheader30:                                     ; preds = %11, %22
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %22 ], [ poison, %11 ]
  %storemerge47 = phi i32 [ %23, %22 ], [ 1, %11 ]
  %13 = icmp slt i32 %storemerge47, 6
  br i1 %13, label %.preheader29, label %24

.preheader29:                                     ; preds = %.preheader30
  %14 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %14, %storemerge1
  br label %15

15:                                               ; preds = %17, %.preheader29
  %storemerge48 = phi i32 [ %21, %17 ], [ 1, %.preheader29 ]
  %16 = icmp slt i32 %storemerge48, 6
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = shl i32 %storemerge48, 6
  %.reass = add i32 %18, %invariant.op
  %19 = sext i32 %.reass to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %storemerge48, 1
  br label %15, !llvm.loop !14

22:                                               ; preds = %15
  %storemerge48.lcssa = phi i32 [ %storemerge48, %15 ]
  %23 = add nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

24:                                               ; preds = %.preheader30
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %.preheader30 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %.preheader30 ]
  %25 = add nsw i32 %storemerge1, 1
  br label %11, !llvm.loop !16

26:                                               ; preds = %36, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %36 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %37, %36 ], [ 0, %.preheader28 ]
  %27 = icmp slt i32 %storemerge2, 13
  br i1 %27, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %26
  %28 = sext i32 %storemerge2 to i64
  %29 = getelementptr inbounds [2048 x i8], ptr @p, i64 %28
  br label %30

.preheader26:                                     ; preds = %26
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %26 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %26 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %38

30:                                               ; preds = %32, %.preheader27
  %storemerge46 = phi i32 [ %35, %32 ], [ 0, %.preheader27 ]
  %31 = icmp slt i32 %storemerge46, 512
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = sext i32 %storemerge46 to i64
  %34 = getelementptr inbounds [4 x i8], ptr %29, i64 %33
  store i32 0, ptr %34, align 4
  %35 = add nsw i32 %storemerge46, 1
  br label %30, !llvm.loop !17

36:                                               ; preds = %30
  %storemerge46.lcssa = phi i32 [ %storemerge46, %30 ]
  %37 = add nsw i32 %storemerge2, 1
  br label %26, !llvm.loop !18

38:                                               ; preds = %51, %.preheader26
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7.lcssa, %51 ], [ poison, %.preheader26 ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44.lcssa, %51 ], [ poison, %.preheader26 ]
  %storemerge3 = phi i32 [ %52, %51 ], [ 0, %.preheader26 ]
  %39 = icmp slt i32 %storemerge3, 4
  br i1 %39, label %.preheader25, label %53

.preheader25:                                     ; preds = %38, %49
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %49 ], [ poison, %38 ]
  %storemerge44 = phi i32 [ %50, %49 ], [ 0, %38 ]
  %40 = icmp slt i32 %storemerge44, 2
  br i1 %40, label %.preheader24, label %51

.preheader24:                                     ; preds = %.preheader25
  %41 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %41, %storemerge3
  br label %42

42:                                               ; preds = %44, %.preheader24
  %storemerge45 = phi i32 [ %48, %44 ], [ 0, %.preheader24 ]
  %43 = icmp slt i32 %storemerge45, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %45, %invariant.op5
  %46 = sext i32 %.reass6 to i64
  %47 = getelementptr inbounds [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  %48 = add nsw i32 %storemerge45, 1
  br label %42, !llvm.loop !19

49:                                               ; preds = %42
  %storemerge45.lcssa = phi i32 [ %storemerge45, %42 ]
  %50 = add nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

51:                                               ; preds = %.preheader25
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %.preheader25 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %.preheader25 ]
  %52 = add nsw i32 %storemerge3, 1
  br label %38, !llvm.loop !21

53:                                               ; preds = %38
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %38 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %38 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %38 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %67, %53
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %53 ], [ %storemerge43.lcssa12.lcssa, %67 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %53 ], [ %storemerge42.lcssa, %67 ]
  %storemerge4 = phi i32 [ 0, %53 ], [ %68, %67 ]
  %55 = icmp slt i32 %storemerge4, 2
  br i1 %55, label %.preheader23, label %69

.preheader23:                                     ; preds = %54, %65
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %65 ], [ poison, %54 ]
  %storemerge42 = phi i32 [ %66, %65 ], [ 0, %54 ]
  %56 = icmp slt i32 %storemerge42, 1
  br i1 %56, label %.preheader22, label %67

.preheader22:                                     ; preds = %.preheader23
  %57 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %57, %storemerge4
  br label %58

58:                                               ; preds = %60, %.preheader22
  %storemerge43 = phi i32 [ %64, %60 ], [ 0, %.preheader22 ]
  %59 = icmp slt i32 %storemerge43, 4
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %61, %invariant.op10
  %62 = sext i32 %.reass11 to i64
  %63 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nsw i32 %storemerge43, 1
  br label %58, !llvm.loop !22

65:                                               ; preds = %58
  %storemerge43.lcssa = phi i32 [ %storemerge43, %58 ]
  %66 = add nsw i32 %storemerge42, 1
  br label %.preheader23, !llvm.loop !23

67:                                               ; preds = %.preheader23
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %.preheader23 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %.preheader23 ]
  %68 = add nsw i32 %storemerge4, 1
  br label %54, !llvm.loop !24

69:                                               ; preds = %54
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %54 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %54 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %54 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %70

70:                                               ; preds = %83, %69
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %69 ], [ %storemerge41.lcssa17.lcssa, %83 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %69 ], [ %storemerge40.lcssa, %83 ]
  %storemerge5 = phi i32 [ 0, %69 ], [ %84, %83 ]
  %71 = icmp slt i32 %storemerge5, 1
  br i1 %71, label %.preheader21, label %85

.preheader21:                                     ; preds = %70, %81
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %81 ], [ poison, %70 ]
  %storemerge40 = phi i32 [ %82, %81 ], [ 0, %70 ]
  %72 = icmp slt i32 %storemerge40, 4
  br i1 %72, label %.preheader20, label %83

.preheader20:                                     ; preds = %.preheader21
  %73 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %73, %storemerge5
  br label %74

74:                                               ; preds = %76, %.preheader20
  %storemerge41 = phi i32 [ %80, %76 ], [ 0, %.preheader20 ]
  %75 = icmp slt i32 %storemerge41, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %77, %invariant.op15
  %78 = sext i32 %.reass16 to i64
  %79 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nsw i32 %storemerge41, 1
  br label %74, !llvm.loop !25

81:                                               ; preds = %74
  %storemerge41.lcssa = phi i32 [ %storemerge41, %74 ]
  %82 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

83:                                               ; preds = %.preheader21
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %.preheader21 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %.preheader21 ]
  %84 = add nsw i32 %storemerge5, 1
  br label %70, !llvm.loop !27

85:                                               ; preds = %70
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %70 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %70 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %70 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %86

86:                                               ; preds = %99, %85
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %85 ], [ %storemerge39.lcssa22.lcssa, %99 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %85 ], [ %storemerge38.lcssa, %99 ]
  %storemerge6 = phi i32 [ 0, %85 ], [ %100, %99 ]
  %87 = icmp slt i32 %storemerge6, 2
  br i1 %87, label %.preheader19, label %101

.preheader19:                                     ; preds = %86, %97
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %97 ], [ poison, %86 ]
  %storemerge38 = phi i32 [ %98, %97 ], [ 0, %86 ]
  %88 = icmp slt i32 %storemerge38, 4
  br i1 %88, label %.preheader18, label %99

.preheader18:                                     ; preds = %.preheader19
  %89 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %89, %storemerge6
  br label %90

90:                                               ; preds = %92, %.preheader18
  %storemerge39 = phi i32 [ %96, %92 ], [ 0, %.preheader18 ]
  %91 = icmp slt i32 %storemerge39, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %93, %invariant.op20
  %94 = sext i32 %.reass21 to i64
  %95 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %94
  store i32 1, ptr %95, align 4
  %96 = add nsw i32 %storemerge39, 1
  br label %90, !llvm.loop !28

97:                                               ; preds = %90
  %storemerge39.lcssa = phi i32 [ %storemerge39, %90 ]
  %98 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

99:                                               ; preds = %.preheader19
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %.preheader19 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %.preheader19 ]
  %100 = add nsw i32 %storemerge6, 1
  br label %86, !llvm.loop !30

101:                                              ; preds = %86
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %86 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %86 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %86 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %102

102:                                              ; preds = %115, %101
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %101 ], [ %storemerge37.lcssa27.lcssa, %115 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %101 ], [ %storemerge36.lcssa, %115 ]
  %storemerge7 = phi i32 [ 0, %101 ], [ %116, %115 ]
  %103 = icmp slt i32 %storemerge7, 4
  br i1 %103, label %.preheader17, label %117

.preheader17:                                     ; preds = %102, %113
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %113 ], [ poison, %102 ]
  %storemerge36 = phi i32 [ %114, %113 ], [ 0, %102 ]
  %104 = icmp slt i32 %storemerge36, 1
  br i1 %104, label %.preheader16, label %115

.preheader16:                                     ; preds = %.preheader17
  %105 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %105, %storemerge7
  br label %106

106:                                              ; preds = %108, %.preheader16
  %storemerge37 = phi i32 [ %112, %108 ], [ 0, %.preheader16 ]
  %107 = icmp slt i32 %storemerge37, 2
  br i1 %107, label %108, label %113

108:                                              ; preds = %106
  %109 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %109, %invariant.op25
  %110 = sext i32 %.reass26 to i64
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %110
  store i32 1, ptr %111, align 4
  %112 = add nsw i32 %storemerge37, 1
  br label %106, !llvm.loop !31

113:                                              ; preds = %106
  %storemerge37.lcssa = phi i32 [ %storemerge37, %106 ]
  %114 = add nsw i32 %storemerge36, 1
  br label %.preheader17, !llvm.loop !32

115:                                              ; preds = %.preheader17
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %.preheader17 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %.preheader17 ]
  %116 = add nsw i32 %storemerge7, 1
  br label %102, !llvm.loop !33

117:                                              ; preds = %102
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %102 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %102 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %102 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %118

118:                                              ; preds = %131, %117
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %117 ], [ %storemerge35.lcssa32.lcssa, %131 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %117 ], [ %storemerge34.lcssa, %131 ]
  %storemerge8 = phi i32 [ 0, %117 ], [ %132, %131 ]
  %119 = icmp slt i32 %storemerge8, 1
  br i1 %119, label %.preheader15, label %133

.preheader15:                                     ; preds = %118, %129
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %129 ], [ poison, %118 ]
  %storemerge34 = phi i32 [ %130, %129 ], [ 0, %118 ]
  %120 = icmp slt i32 %storemerge34, 2
  br i1 %120, label %.preheader14, label %131

.preheader14:                                     ; preds = %.preheader15
  %121 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %121, %storemerge8
  br label %122

122:                                              ; preds = %124, %.preheader14
  %storemerge35 = phi i32 [ %128, %124 ], [ 0, %.preheader14 ]
  %123 = icmp slt i32 %storemerge35, 4
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %125, %invariant.op30
  %126 = sext i32 %.reass31 to i64
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nsw i32 %storemerge35, 1
  br label %122, !llvm.loop !34

129:                                              ; preds = %122
  %storemerge35.lcssa = phi i32 [ %storemerge35, %122 ]
  %130 = add nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

131:                                              ; preds = %.preheader15
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %.preheader15 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %.preheader15 ]
  %132 = add nsw i32 %storemerge8, 1
  br label %118, !llvm.loop !36

133:                                              ; preds = %118
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %118 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %118 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %118 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %134

134:                                              ; preds = %147, %133
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %133 ], [ %storemerge33.lcssa37.lcssa, %147 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %133 ], [ %storemerge32.lcssa, %147 ]
  %storemerge9 = phi i32 [ 0, %133 ], [ %148, %147 ]
  %135 = icmp slt i32 %storemerge9, 3
  br i1 %135, label %.preheader13, label %149

.preheader13:                                     ; preds = %134, %145
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %145 ], [ poison, %134 ]
  %storemerge32 = phi i32 [ %146, %145 ], [ 0, %134 ]
  %136 = icmp slt i32 %storemerge32, 1
  br i1 %136, label %.preheader12, label %147

.preheader12:                                     ; preds = %.preheader13
  %137 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %137, %storemerge9
  br label %138

138:                                              ; preds = %140, %.preheader12
  %storemerge33 = phi i32 [ %144, %140 ], [ 0, %.preheader12 ]
  %139 = icmp slt i32 %storemerge33, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %141, %invariant.op35
  %142 = sext i32 %.reass36 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nsw i32 %storemerge33, 1
  br label %138, !llvm.loop !37

145:                                              ; preds = %138
  %storemerge33.lcssa = phi i32 [ %storemerge33, %138 ]
  %146 = add nsw i32 %storemerge32, 1
  br label %.preheader13, !llvm.loop !38

147:                                              ; preds = %.preheader13
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %.preheader13 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %.preheader13 ]
  %148 = add nsw i32 %storemerge9, 1
  br label %134, !llvm.loop !39

149:                                              ; preds = %134
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %134 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %134 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %134 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %150

150:                                              ; preds = %163, %149
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %149 ], [ %storemerge31.lcssa42.lcssa, %163 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %149 ], [ %storemerge30.lcssa, %163 ]
  %storemerge10 = phi i32 [ 0, %149 ], [ %164, %163 ]
  %151 = icmp slt i32 %storemerge10, 1
  br i1 %151, label %.preheader11, label %165

.preheader11:                                     ; preds = %150, %161
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %161 ], [ poison, %150 ]
  %storemerge30 = phi i32 [ %162, %161 ], [ 0, %150 ]
  %152 = icmp slt i32 %storemerge30, 3
  br i1 %152, label %.preheader10, label %163

.preheader10:                                     ; preds = %.preheader11
  %153 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %153, %storemerge10
  br label %154

154:                                              ; preds = %156, %.preheader10
  %storemerge31 = phi i32 [ %160, %156 ], [ 0, %.preheader10 ]
  %155 = icmp slt i32 %storemerge31, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %154
  %157 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %157, %invariant.op40
  %158 = sext i32 %.reass41 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %158
  store i32 1, ptr %159, align 4
  %160 = add nsw i32 %storemerge31, 1
  br label %154, !llvm.loop !40

161:                                              ; preds = %154
  %storemerge31.lcssa = phi i32 [ %storemerge31, %154 ]
  %162 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

163:                                              ; preds = %.preheader11
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %.preheader11 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %.preheader11 ]
  %164 = add nsw i32 %storemerge10, 1
  br label %150, !llvm.loop !42

165:                                              ; preds = %150
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %150 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %150 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %150 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %166

166:                                              ; preds = %179, %165
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %165 ], [ %storemerge29.lcssa47.lcssa, %179 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %165 ], [ %storemerge28.lcssa, %179 ]
  %storemerge11 = phi i32 [ 0, %165 ], [ %180, %179 ]
  %167 = icmp slt i32 %storemerge11, 1
  br i1 %167, label %.preheader9, label %181

.preheader9:                                      ; preds = %166, %177
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %177 ], [ poison, %166 ]
  %storemerge28 = phi i32 [ %178, %177 ], [ 0, %166 ]
  %168 = icmp slt i32 %storemerge28, 1
  br i1 %168, label %.preheader8, label %179

.preheader8:                                      ; preds = %.preheader9
  %169 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %169, %storemerge11
  br label %170

170:                                              ; preds = %172, %.preheader8
  %storemerge29 = phi i32 [ %176, %172 ], [ 0, %.preheader8 ]
  %171 = icmp slt i32 %storemerge29, 3
  br i1 %171, label %172, label %177

172:                                              ; preds = %170
  %173 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %173, %invariant.op45
  %174 = sext i32 %.reass46 to i64
  %175 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %174
  store i32 1, ptr %175, align 4
  %176 = add nsw i32 %storemerge29, 1
  br label %170, !llvm.loop !43

177:                                              ; preds = %170
  %storemerge29.lcssa = phi i32 [ %storemerge29, %170 ]
  %178 = add nsw i32 %storemerge28, 1
  br label %.preheader9, !llvm.loop !44

179:                                              ; preds = %.preheader9
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %.preheader9 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %.preheader9 ]
  %180 = add nsw i32 %storemerge11, 1
  br label %166, !llvm.loop !45

181:                                              ; preds = %166
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %166 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %166 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %166 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %182

182:                                              ; preds = %195, %181
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %181 ], [ %storemerge27.lcssa52.lcssa, %195 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %181 ], [ %storemerge26.lcssa, %195 ]
  %storemerge12 = phi i32 [ 0, %181 ], [ %196, %195 ]
  %183 = icmp slt i32 %storemerge12, 2
  br i1 %183, label %.preheader7, label %197

.preheader7:                                      ; preds = %182, %193
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %193 ], [ poison, %182 ]
  %storemerge26 = phi i32 [ %194, %193 ], [ 0, %182 ]
  %184 = icmp slt i32 %storemerge26, 2
  br i1 %184, label %.preheader6, label %195

.preheader6:                                      ; preds = %.preheader7
  %185 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %185, %storemerge12
  br label %186

186:                                              ; preds = %188, %.preheader6
  %storemerge27 = phi i32 [ %192, %188 ], [ 0, %.preheader6 ]
  %187 = icmp slt i32 %storemerge27, 1
  br i1 %187, label %188, label %193

188:                                              ; preds = %186
  %189 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %189, %invariant.op50
  %190 = sext i32 %.reass51 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nsw i32 %storemerge27, 1
  br label %186, !llvm.loop !46

193:                                              ; preds = %186
  %storemerge27.lcssa = phi i32 [ %storemerge27, %186 ]
  %194 = add nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

195:                                              ; preds = %.preheader7
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %.preheader7 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %.preheader7 ]
  %196 = add nsw i32 %storemerge12, 1
  br label %182, !llvm.loop !48

197:                                              ; preds = %182
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %182 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %182 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %182 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %198

198:                                              ; preds = %211, %197
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %197 ], [ %storemerge25.lcssa57.lcssa, %211 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %197 ], [ %storemerge24.lcssa, %211 ]
  %storemerge13 = phi i32 [ 0, %197 ], [ %212, %211 ]
  %199 = icmp slt i32 %storemerge13, 2
  br i1 %199, label %.preheader5, label %213

.preheader5:                                      ; preds = %198, %209
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %209 ], [ poison, %198 ]
  %storemerge24 = phi i32 [ %210, %209 ], [ 0, %198 ]
  %200 = icmp slt i32 %storemerge24, 1
  br i1 %200, label %.preheader4, label %211

.preheader4:                                      ; preds = %.preheader5
  %201 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %201, %storemerge13
  br label %202

202:                                              ; preds = %204, %.preheader4
  %storemerge25 = phi i32 [ %208, %204 ], [ 0, %.preheader4 ]
  %203 = icmp slt i32 %storemerge25, 2
  br i1 %203, label %204, label %209

204:                                              ; preds = %202
  %205 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %205, %invariant.op55
  %206 = sext i32 %.reass56 to i64
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %206
  store i32 1, ptr %207, align 4
  %208 = add nsw i32 %storemerge25, 1
  br label %202, !llvm.loop !49

209:                                              ; preds = %202
  %storemerge25.lcssa = phi i32 [ %storemerge25, %202 ]
  %210 = add nsw i32 %storemerge24, 1
  br label %.preheader5, !llvm.loop !50

211:                                              ; preds = %.preheader5
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %.preheader5 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %.preheader5 ]
  %212 = add nsw i32 %storemerge13, 1
  br label %198, !llvm.loop !51

213:                                              ; preds = %198
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %198 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %198 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %198 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %214

214:                                              ; preds = %227, %213
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %213 ], [ %storemerge23.lcssa62.lcssa, %227 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %213 ], [ %storemerge22.lcssa, %227 ]
  %storemerge14 = phi i32 [ 0, %213 ], [ %228, %227 ]
  %215 = icmp slt i32 %storemerge14, 1
  br i1 %215, label %.preheader3, label %229

.preheader3:                                      ; preds = %214, %225
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %225 ], [ poison, %214 ]
  %storemerge22 = phi i32 [ %226, %225 ], [ 0, %214 ]
  %216 = icmp slt i32 %storemerge22, 2
  br i1 %216, label %.preheader2, label %227

.preheader2:                                      ; preds = %.preheader3
  %217 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %217, %storemerge14
  br label %218

218:                                              ; preds = %220, %.preheader2
  %storemerge23 = phi i32 [ %224, %220 ], [ 0, %.preheader2 ]
  %219 = icmp slt i32 %storemerge23, 2
  br i1 %219, label %220, label %225

220:                                              ; preds = %218
  %221 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %221, %invariant.op60
  %222 = sext i32 %.reass61 to i64
  %223 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %222
  store i32 1, ptr %223, align 4
  %224 = add nsw i32 %storemerge23, 1
  br label %218, !llvm.loop !52

225:                                              ; preds = %218
  %storemerge23.lcssa = phi i32 [ %storemerge23, %218 ]
  %226 = add nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

227:                                              ; preds = %.preheader3
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %.preheader3 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %.preheader3 ]
  %228 = add nsw i32 %storemerge14, 1
  br label %214, !llvm.loop !54

229:                                              ; preds = %214
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %214 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %214 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %214 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %230

230:                                              ; preds = %243, %229
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %229 ], [ %storemerge21.lcssa67.lcssa, %243 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %229 ], [ %storemerge20.lcssa, %243 ]
  %storemerge15 = phi i32 [ 0, %229 ], [ %244, %243 ]
  %231 = icmp slt i32 %storemerge15, 2
  br i1 %231, label %.preheader1, label %245

.preheader1:                                      ; preds = %230, %241
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %241 ], [ poison, %230 ]
  %storemerge20 = phi i32 [ %242, %241 ], [ 0, %230 ]
  %232 = icmp slt i32 %storemerge20, 2
  br i1 %232, label %.preheader, label %243

.preheader:                                       ; preds = %.preheader1
  %233 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %233, %storemerge15
  br label %234

234:                                              ; preds = %236, %.preheader
  %storemerge21 = phi i32 [ %240, %236 ], [ 0, %.preheader ]
  %235 = icmp slt i32 %storemerge21, 2
  br i1 %235, label %236, label %241

236:                                              ; preds = %234
  %237 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %237, %invariant.op65
  %238 = sext i32 %.reass66 to i64
  %239 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %238
  store i32 1, ptr %239, align 4
  %240 = add nsw i32 %storemerge21, 1
  br label %234, !llvm.loop !55

241:                                              ; preds = %234
  %storemerge21.lcssa = phi i32 [ %storemerge21, %234 ]
  %242 = add nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

243:                                              ; preds = %.preheader1
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %.preheader1 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %.preheader1 ]
  %244 = add nsw i32 %storemerge15, 1
  br label %230, !llvm.loop !57

245:                                              ; preds = %230
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %230 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %230 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %230 ]
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
  %246 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %246, 0
  br i1 %.not, label %250, label %247

247:                                              ; preds = %245
  %248 = load i32, ptr %4, align 4
  %249 = call i32 @Place(i32 noundef 0, i32 noundef %248)
  store i32 %249, ptr @n, align 4
  br label %251

250:                                              ; preds = %245
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %251

251:                                              ; preds = %250, %247
  %252 = load i32, ptr @n, align 4
  %253 = call i32 @Trial(i32 noundef %252)
  %.not16 = icmp eq i32 %253, 0
  br i1 %.not16, label %254, label %255

254:                                              ; preds = %251
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %258

255:                                              ; preds = %251
  %256 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %256, 2005
  br i1 %.not18, label %258, label %257

257:                                              ; preds = %255
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %258

258:                                              ; preds = %257, %255, %254
  %259 = load i32, ptr @n, align 4
  %260 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %259) #4
  %261 = load i32, ptr @kount, align 4
  %262 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %261) #4
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
