; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_006\output.ll'
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  %.lcssa4 = phi i32 [ %28, %29 ]
  %.lcssa2 = phi i32 [ %28, %29 ]
  store i32 %.lcssa4, ptr %5, align 4
  br label %.loopexit

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %27
  %.lcssa3 = phi i32 [ %28, %27 ]
  store i32 %.lcssa3, ptr %5, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit.loopexit ]
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
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = phi i32 [ %0, %1 ], [ %25, %24 ]
  %8 = phi i32 [ 0, %1 ], [ %26, %24 ]
  %9 = icmp slt i32 %8, 13
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %24, label %17

17:                                               ; preds = %10
  %18 = call i32 @Fit(i32 noundef %8, i32 noundef %7)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %8, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %19
  call void @Remove(i32 noundef %8, i32 noundef %0)
  br label %24

24:                                               ; preds = %23, %17, %10
  %25 = phi i32 [ %0, %23 ], [ %7, %17 ], [ %7, %10 ]
  %26 = add nsw i32 %8, 1
  br label %6, !llvm.loop !12

27:                                               ; preds = %19, %6
  %.lcssa = phi i32 [ %8, %19 ], [ %8, %6 ]
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %6 ]
  store i32 %.lcssa, ptr %3, align 4
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
  br i1 %7, label %8, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %5
  %.lcssa28 = phi i32 [ %6, %5 ]
  store i32 %.lcssa28, ptr %4, align 4
  br label %.preheader31

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %28, %.preheader31.preheader
  %.lcssa2931.lcssa34 = phi i32 [ %.lcssa2931.lcssa, %28 ], [ poison, %.preheader31.preheader ]
  %.lcssa3033 = phi i32 [ %.lcssa30, %28 ], [ poison, %.preheader31.preheader ]
  %12 = phi i32 [ %29, %28 ], [ 1, %.preheader31.preheader ]
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  %.lcssa2931.lcssa34.lcssa = phi i32 [ %.lcssa2931.lcssa34, %.preheader31 ]
  %.lcssa3033.lcssa = phi i32 [ %.lcssa3033, %.preheader31 ]
  %.lcssa32 = phi i32 [ %12, %.preheader31 ]
  store i32 %.lcssa32, ptr %1, align 4
  store i32 %.lcssa3033.lcssa, ptr %2, align 4
  store i32 %.lcssa2931.lcssa34.lcssa, ptr %3, align 4
  br label %.preheader28

.preheader30:                                     ; preds = %26, %.preheader30.preheader
  %.lcssa2931 = phi i32 [ %.lcssa29, %26 ], [ poison, %.preheader30.preheader ]
  %14 = phi i32 [ %.lcssa26, %26 ], [ %12, %.preheader30.preheader ]
  %15 = phi i32 [ %27, %26 ], [ 1, %.preheader30.preheader ]
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %.preheader29.preheader, label %28

.preheader29.preheader:                           ; preds = %.preheader30
  %17 = shl i32 %15, 3
  %invariant.op = add i32 %17, %12
  br label %.preheader29

.preheader29:                                     ; preds = %21, %.preheader29.preheader
  %18 = phi i32 [ %12, %21 ], [ %14, %.preheader29.preheader ]
  %19 = phi i32 [ %25, %21 ], [ 1, %.preheader29.preheader ]
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %26

21:                                               ; preds = %.preheader29
  %22 = shl i32 %19, 6
  %.reass = add i32 %22, %invariant.op
  %23 = sext i32 %.reass to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %25 = add nsw i32 %19, 1
  br label %.preheader29, !llvm.loop !14

26:                                               ; preds = %.preheader29
  %.lcssa29 = phi i32 [ %19, %.preheader29 ]
  %.lcssa26 = phi i32 [ %18, %.preheader29 ]
  %27 = add nsw i32 %15, 1
  br label %.preheader30, !llvm.loop !15

28:                                               ; preds = %.preheader30
  %.lcssa2931.lcssa = phi i32 [ %.lcssa2931, %.preheader30 ]
  %.lcssa30 = phi i32 [ %15, %.preheader30 ]
  %.lcssa27 = phi i32 [ %14, %.preheader30 ]
  %29 = add nsw i32 %.lcssa27, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %40, %.preheader28.preheader
  %.lcssa3537 = phi i32 [ %.lcssa35, %40 ], [ poison, %.preheader28.preheader ]
  %30 = phi i32 [ %41, %40 ], [ 0, %.preheader28.preheader ]
  %31 = icmp slt i32 %30, 13
  br i1 %31, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [2048 x i8], ptr @p, i64 %32
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %.lcssa3537.lcssa = phi i32 [ %.lcssa3537, %.preheader28 ]
  %.lcssa36 = phi i32 [ %30, %.preheader28 ]
  store i32 %.lcssa36, ptr %1, align 4
  store i32 %.lcssa3537.lcssa, ptr %4, align 4
  br label %.preheader26

.preheader27:                                     ; preds = %36, %.preheader27.preheader
  %34 = phi i32 [ %39, %36 ], [ 0, %.preheader27.preheader ]
  %35 = icmp slt i32 %34, 512
  br i1 %35, label %36, label %40

36:                                               ; preds = %.preheader27
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %33, i64 %37
  store i32 0, ptr %38, align 4
  %39 = add nsw i32 %34, 1
  br label %.preheader27, !llvm.loop !17

40:                                               ; preds = %.preheader27
  %.lcssa35 = phi i32 [ %34, %.preheader27 ]
  %41 = add nsw i32 %30, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %58, %.preheader26.preheader
  %.lcssa4042.lcssa45 = phi i32 [ %.lcssa4042.lcssa, %58 ], [ poison, %.preheader26.preheader ]
  %.lcssa4144 = phi i32 [ %.lcssa41, %58 ], [ poison, %.preheader26.preheader ]
  %42 = phi i32 [ %59, %58 ], [ 0, %.preheader26.preheader ]
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %.preheader25.preheader, label %60

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %56, %.preheader25.preheader
  %.lcssa4042 = phi i32 [ %.lcssa40, %56 ], [ poison, %.preheader25.preheader ]
  %44 = phi i32 [ %.lcssa24, %56 ], [ %42, %.preheader25.preheader ]
  %45 = phi i32 [ %57, %56 ], [ 0, %.preheader25.preheader ]
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %.preheader24.preheader, label %58

.preheader24.preheader:                           ; preds = %.preheader25
  %47 = shl i32 %45, 3
  %invariant.op38 = add i32 %47, %42
  br label %.preheader24

.preheader24:                                     ; preds = %51, %.preheader24.preheader
  %48 = phi i32 [ %42, %51 ], [ %44, %.preheader24.preheader ]
  %49 = phi i32 [ %55, %51 ], [ 0, %.preheader24.preheader ]
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %.preheader24
  %52 = shl i32 %49, 6
  %.reass39 = add i32 %52, %invariant.op38
  %53 = sext i32 %.reass39 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @p, i64 %53
  store i32 1, ptr %54, align 4
  %55 = add nsw i32 %49, 1
  br label %.preheader24, !llvm.loop !19

56:                                               ; preds = %.preheader24
  %.lcssa40 = phi i32 [ %49, %.preheader24 ]
  %.lcssa24 = phi i32 [ %48, %.preheader24 ]
  %57 = add nsw i32 %45, 1
  br label %.preheader25, !llvm.loop !20

58:                                               ; preds = %.preheader25
  %.lcssa4042.lcssa = phi i32 [ %.lcssa4042, %.preheader25 ]
  %.lcssa41 = phi i32 [ %45, %.preheader25 ]
  %.lcssa25 = phi i32 [ %44, %.preheader25 ]
  %59 = add nsw i32 %.lcssa25, 1
  br label %.preheader26, !llvm.loop !21

60:                                               ; preds = %.preheader26
  %.lcssa4042.lcssa45.lcssa = phi i32 [ %.lcssa4042.lcssa45, %.preheader26 ]
  %.lcssa4144.lcssa = phi i32 [ %.lcssa4144, %.preheader26 ]
  %.lcssa43 = phi i32 [ %42, %.preheader26 ]
  store i32 %.lcssa43, ptr %1, align 4
  store i32 %.lcssa4144.lcssa, ptr %2, align 4
  store i32 %.lcssa4042.lcssa45.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %61

61:                                               ; preds = %78, %60
  %.lcssa4850.lcssa53 = phi i32 [ poison, %60 ], [ %.lcssa4850.lcssa, %78 ]
  %.lcssa4952 = phi i32 [ poison, %60 ], [ %.lcssa49, %78 ]
  %62 = phi i32 [ 0, %60 ], [ %79, %78 ]
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %.preheader23.preheader, label %80

.preheader23.preheader:                           ; preds = %61
  br label %.preheader23

.preheader23:                                     ; preds = %76, %.preheader23.preheader
  %.lcssa4850 = phi i32 [ %.lcssa48, %76 ], [ poison, %.preheader23.preheader ]
  %64 = phi i32 [ %.lcssa22, %76 ], [ %62, %.preheader23.preheader ]
  %65 = phi i32 [ %77, %76 ], [ 0, %.preheader23.preheader ]
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %.preheader22.preheader, label %78

.preheader22.preheader:                           ; preds = %.preheader23
  %67 = shl i32 %65, 3
  %invariant.op46 = add i32 %67, %62
  br label %.preheader22

.preheader22:                                     ; preds = %71, %.preheader22.preheader
  %68 = phi i32 [ %62, %71 ], [ %64, %.preheader22.preheader ]
  %69 = phi i32 [ %75, %71 ], [ 0, %.preheader22.preheader ]
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %.preheader22
  %72 = shl i32 %69, 6
  %.reass47 = add i32 %72, %invariant.op46
  %73 = sext i32 %.reass47 to i64
  %74 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nsw i32 %69, 1
  br label %.preheader22, !llvm.loop !22

76:                                               ; preds = %.preheader22
  %.lcssa48 = phi i32 [ %69, %.preheader22 ]
  %.lcssa22 = phi i32 [ %68, %.preheader22 ]
  %77 = add nsw i32 %65, 1
  br label %.preheader23, !llvm.loop !23

78:                                               ; preds = %.preheader23
  %.lcssa4850.lcssa = phi i32 [ %.lcssa4850, %.preheader23 ]
  %.lcssa49 = phi i32 [ %65, %.preheader23 ]
  %.lcssa23 = phi i32 [ %64, %.preheader23 ]
  %79 = add nsw i32 %.lcssa23, 1
  br label %61, !llvm.loop !24

80:                                               ; preds = %61
  %.lcssa4850.lcssa53.lcssa = phi i32 [ %.lcssa4850.lcssa53, %61 ]
  %.lcssa4952.lcssa = phi i32 [ %.lcssa4952, %61 ]
  %.lcssa51 = phi i32 [ %62, %61 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4952.lcssa, ptr %2, align 4
  store i32 %.lcssa4850.lcssa53.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %81

81:                                               ; preds = %98, %80
  %.lcssa5658.lcssa61 = phi i32 [ poison, %80 ], [ %.lcssa5658.lcssa, %98 ]
  %.lcssa5760 = phi i32 [ poison, %80 ], [ %.lcssa57, %98 ]
  %82 = phi i32 [ 0, %80 ], [ %99, %98 ]
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %.preheader21.preheader, label %100

.preheader21.preheader:                           ; preds = %81
  br label %.preheader21

.preheader21:                                     ; preds = %96, %.preheader21.preheader
  %.lcssa5658 = phi i32 [ %.lcssa56, %96 ], [ poison, %.preheader21.preheader ]
  %84 = phi i32 [ %.lcssa20, %96 ], [ %82, %.preheader21.preheader ]
  %85 = phi i32 [ %97, %96 ], [ 0, %.preheader21.preheader ]
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %.preheader20.preheader, label %98

.preheader20.preheader:                           ; preds = %.preheader21
  %87 = shl i32 %85, 3
  %invariant.op54 = add i32 %87, %82
  br label %.preheader20

.preheader20:                                     ; preds = %91, %.preheader20.preheader
  %88 = phi i32 [ %82, %91 ], [ %84, %.preheader20.preheader ]
  %89 = phi i32 [ %95, %91 ], [ 0, %.preheader20.preheader ]
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %.preheader20
  %92 = shl i32 %89, 6
  %.reass55 = add i32 %92, %invariant.op54
  %93 = sext i32 %.reass55 to i64
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nsw i32 %89, 1
  br label %.preheader20, !llvm.loop !25

96:                                               ; preds = %.preheader20
  %.lcssa56 = phi i32 [ %89, %.preheader20 ]
  %.lcssa20 = phi i32 [ %88, %.preheader20 ]
  %97 = add nsw i32 %85, 1
  br label %.preheader21, !llvm.loop !26

98:                                               ; preds = %.preheader21
  %.lcssa5658.lcssa = phi i32 [ %.lcssa5658, %.preheader21 ]
  %.lcssa57 = phi i32 [ %85, %.preheader21 ]
  %.lcssa21 = phi i32 [ %84, %.preheader21 ]
  %99 = add nsw i32 %.lcssa21, 1
  br label %81, !llvm.loop !27

100:                                              ; preds = %81
  %.lcssa5658.lcssa61.lcssa = phi i32 [ %.lcssa5658.lcssa61, %81 ]
  %.lcssa5760.lcssa = phi i32 [ %.lcssa5760, %81 ]
  %.lcssa59 = phi i32 [ %82, %81 ]
  store i32 %.lcssa59, ptr %1, align 4
  store i32 %.lcssa5760.lcssa, ptr %2, align 4
  store i32 %.lcssa5658.lcssa61.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %101

101:                                              ; preds = %118, %100
  %.lcssa6466.lcssa69 = phi i32 [ poison, %100 ], [ %.lcssa6466.lcssa, %118 ]
  %.lcssa6568 = phi i32 [ poison, %100 ], [ %.lcssa65, %118 ]
  %102 = phi i32 [ 0, %100 ], [ %119, %118 ]
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %.preheader19.preheader, label %120

.preheader19.preheader:                           ; preds = %101
  br label %.preheader19

.preheader19:                                     ; preds = %116, %.preheader19.preheader
  %.lcssa6466 = phi i32 [ %.lcssa64, %116 ], [ poison, %.preheader19.preheader ]
  %104 = phi i32 [ %.lcssa18, %116 ], [ %102, %.preheader19.preheader ]
  %105 = phi i32 [ %117, %116 ], [ 0, %.preheader19.preheader ]
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %.preheader18.preheader, label %118

.preheader18.preheader:                           ; preds = %.preheader19
  %107 = shl i32 %105, 3
  %invariant.op62 = add i32 %107, %102
  br label %.preheader18

.preheader18:                                     ; preds = %111, %.preheader18.preheader
  %108 = phi i32 [ %102, %111 ], [ %104, %.preheader18.preheader ]
  %109 = phi i32 [ %115, %111 ], [ 0, %.preheader18.preheader ]
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %116

111:                                              ; preds = %.preheader18
  %112 = shl i32 %109, 6
  %.reass63 = add i32 %112, %invariant.op62
  %113 = sext i32 %.reass63 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %109, 1
  br label %.preheader18, !llvm.loop !28

116:                                              ; preds = %.preheader18
  %.lcssa64 = phi i32 [ %109, %.preheader18 ]
  %.lcssa18 = phi i32 [ %108, %.preheader18 ]
  %117 = add nsw i32 %105, 1
  br label %.preheader19, !llvm.loop !29

118:                                              ; preds = %.preheader19
  %.lcssa6466.lcssa = phi i32 [ %.lcssa6466, %.preheader19 ]
  %.lcssa65 = phi i32 [ %105, %.preheader19 ]
  %.lcssa19 = phi i32 [ %104, %.preheader19 ]
  %119 = add nsw i32 %.lcssa19, 1
  br label %101, !llvm.loop !30

120:                                              ; preds = %101
  %.lcssa6466.lcssa69.lcssa = phi i32 [ %.lcssa6466.lcssa69, %101 ]
  %.lcssa6568.lcssa = phi i32 [ %.lcssa6568, %101 ]
  %.lcssa67 = phi i32 [ %102, %101 ]
  store i32 %.lcssa67, ptr %1, align 4
  store i32 %.lcssa6568.lcssa, ptr %2, align 4
  store i32 %.lcssa6466.lcssa69.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %121

121:                                              ; preds = %138, %120
  %.lcssa7274.lcssa77 = phi i32 [ poison, %120 ], [ %.lcssa7274.lcssa, %138 ]
  %.lcssa7376 = phi i32 [ poison, %120 ], [ %.lcssa73, %138 ]
  %122 = phi i32 [ 0, %120 ], [ %139, %138 ]
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %.preheader17.preheader, label %140

.preheader17.preheader:                           ; preds = %121
  br label %.preheader17

.preheader17:                                     ; preds = %136, %.preheader17.preheader
  %.lcssa7274 = phi i32 [ %.lcssa72, %136 ], [ poison, %.preheader17.preheader ]
  %124 = phi i32 [ %.lcssa16, %136 ], [ %122, %.preheader17.preheader ]
  %125 = phi i32 [ %137, %136 ], [ 0, %.preheader17.preheader ]
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %.preheader16.preheader, label %138

.preheader16.preheader:                           ; preds = %.preheader17
  %127 = shl i32 %125, 3
  %invariant.op70 = add i32 %127, %122
  br label %.preheader16

.preheader16:                                     ; preds = %131, %.preheader16.preheader
  %128 = phi i32 [ %122, %131 ], [ %124, %.preheader16.preheader ]
  %129 = phi i32 [ %135, %131 ], [ 0, %.preheader16.preheader ]
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %136

131:                                              ; preds = %.preheader16
  %132 = shl i32 %129, 6
  %.reass71 = add i32 %132, %invariant.op70
  %133 = sext i32 %.reass71 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nsw i32 %129, 1
  br label %.preheader16, !llvm.loop !31

136:                                              ; preds = %.preheader16
  %.lcssa72 = phi i32 [ %129, %.preheader16 ]
  %.lcssa16 = phi i32 [ %128, %.preheader16 ]
  %137 = add nsw i32 %125, 1
  br label %.preheader17, !llvm.loop !32

138:                                              ; preds = %.preheader17
  %.lcssa7274.lcssa = phi i32 [ %.lcssa7274, %.preheader17 ]
  %.lcssa73 = phi i32 [ %125, %.preheader17 ]
  %.lcssa17 = phi i32 [ %124, %.preheader17 ]
  %139 = add nsw i32 %.lcssa17, 1
  br label %121, !llvm.loop !33

140:                                              ; preds = %121
  %.lcssa7274.lcssa77.lcssa = phi i32 [ %.lcssa7274.lcssa77, %121 ]
  %.lcssa7376.lcssa = phi i32 [ %.lcssa7376, %121 ]
  %.lcssa75 = phi i32 [ %122, %121 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7376.lcssa, ptr %2, align 4
  store i32 %.lcssa7274.lcssa77.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %141

141:                                              ; preds = %158, %140
  %.lcssa8082.lcssa85 = phi i32 [ poison, %140 ], [ %.lcssa8082.lcssa, %158 ]
  %.lcssa8184 = phi i32 [ poison, %140 ], [ %.lcssa81, %158 ]
  %142 = phi i32 [ 0, %140 ], [ %159, %158 ]
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %.preheader15.preheader, label %160

.preheader15.preheader:                           ; preds = %141
  br label %.preheader15

.preheader15:                                     ; preds = %156, %.preheader15.preheader
  %.lcssa8082 = phi i32 [ %.lcssa80, %156 ], [ poison, %.preheader15.preheader ]
  %144 = phi i32 [ %.lcssa14, %156 ], [ %142, %.preheader15.preheader ]
  %145 = phi i32 [ %157, %156 ], [ 0, %.preheader15.preheader ]
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %.preheader14.preheader, label %158

.preheader14.preheader:                           ; preds = %.preheader15
  %147 = shl i32 %145, 3
  %invariant.op78 = add i32 %147, %142
  br label %.preheader14

.preheader14:                                     ; preds = %151, %.preheader14.preheader
  %148 = phi i32 [ %142, %151 ], [ %144, %.preheader14.preheader ]
  %149 = phi i32 [ %155, %151 ], [ 0, %.preheader14.preheader ]
  %150 = icmp slt i32 %149, 4
  br i1 %150, label %151, label %156

151:                                              ; preds = %.preheader14
  %152 = shl i32 %149, 6
  %.reass79 = add i32 %152, %invariant.op78
  %153 = sext i32 %.reass79 to i64
  %154 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %153
  store i32 1, ptr %154, align 4
  %155 = add nsw i32 %149, 1
  br label %.preheader14, !llvm.loop !34

156:                                              ; preds = %.preheader14
  %.lcssa80 = phi i32 [ %149, %.preheader14 ]
  %.lcssa14 = phi i32 [ %148, %.preheader14 ]
  %157 = add nsw i32 %145, 1
  br label %.preheader15, !llvm.loop !35

158:                                              ; preds = %.preheader15
  %.lcssa8082.lcssa = phi i32 [ %.lcssa8082, %.preheader15 ]
  %.lcssa81 = phi i32 [ %145, %.preheader15 ]
  %.lcssa15 = phi i32 [ %144, %.preheader15 ]
  %159 = add nsw i32 %.lcssa15, 1
  br label %141, !llvm.loop !36

160:                                              ; preds = %141
  %.lcssa8082.lcssa85.lcssa = phi i32 [ %.lcssa8082.lcssa85, %141 ]
  %.lcssa8184.lcssa = phi i32 [ %.lcssa8184, %141 ]
  %.lcssa83 = phi i32 [ %142, %141 ]
  store i32 %.lcssa83, ptr %1, align 4
  store i32 %.lcssa8184.lcssa, ptr %2, align 4
  store i32 %.lcssa8082.lcssa85.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %161

161:                                              ; preds = %178, %160
  %.lcssa8890.lcssa93 = phi i32 [ poison, %160 ], [ %.lcssa8890.lcssa, %178 ]
  %.lcssa8992 = phi i32 [ poison, %160 ], [ %.lcssa89, %178 ]
  %162 = phi i32 [ 0, %160 ], [ %179, %178 ]
  %163 = icmp slt i32 %162, 3
  br i1 %163, label %.preheader13.preheader, label %180

.preheader13.preheader:                           ; preds = %161
  br label %.preheader13

.preheader13:                                     ; preds = %176, %.preheader13.preheader
  %.lcssa8890 = phi i32 [ %.lcssa88, %176 ], [ poison, %.preheader13.preheader ]
  %164 = phi i32 [ %.lcssa12, %176 ], [ %162, %.preheader13.preheader ]
  %165 = phi i32 [ %177, %176 ], [ 0, %.preheader13.preheader ]
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %.preheader12.preheader, label %178

.preheader12.preheader:                           ; preds = %.preheader13
  %167 = shl i32 %165, 3
  %invariant.op86 = add i32 %167, %162
  br label %.preheader12

.preheader12:                                     ; preds = %171, %.preheader12.preheader
  %168 = phi i32 [ %162, %171 ], [ %164, %.preheader12.preheader ]
  %169 = phi i32 [ %175, %171 ], [ 0, %.preheader12.preheader ]
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %.preheader12
  %172 = shl i32 %169, 6
  %.reass87 = add i32 %172, %invariant.op86
  %173 = sext i32 %.reass87 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %169, 1
  br label %.preheader12, !llvm.loop !37

176:                                              ; preds = %.preheader12
  %.lcssa88 = phi i32 [ %169, %.preheader12 ]
  %.lcssa12 = phi i32 [ %168, %.preheader12 ]
  %177 = add nsw i32 %165, 1
  br label %.preheader13, !llvm.loop !38

178:                                              ; preds = %.preheader13
  %.lcssa8890.lcssa = phi i32 [ %.lcssa8890, %.preheader13 ]
  %.lcssa89 = phi i32 [ %165, %.preheader13 ]
  %.lcssa13 = phi i32 [ %164, %.preheader13 ]
  %179 = add nsw i32 %.lcssa13, 1
  br label %161, !llvm.loop !39

180:                                              ; preds = %161
  %.lcssa8890.lcssa93.lcssa = phi i32 [ %.lcssa8890.lcssa93, %161 ]
  %.lcssa8992.lcssa = phi i32 [ %.lcssa8992, %161 ]
  %.lcssa91 = phi i32 [ %162, %161 ]
  store i32 %.lcssa91, ptr %1, align 4
  store i32 %.lcssa8992.lcssa, ptr %2, align 4
  store i32 %.lcssa8890.lcssa93.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %181

181:                                              ; preds = %198, %180
  %.lcssa9698.lcssa101 = phi i32 [ poison, %180 ], [ %.lcssa9698.lcssa, %198 ]
  %.lcssa97100 = phi i32 [ poison, %180 ], [ %.lcssa97, %198 ]
  %182 = phi i32 [ 0, %180 ], [ %199, %198 ]
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %.preheader11.preheader, label %200

.preheader11.preheader:                           ; preds = %181
  br label %.preheader11

.preheader11:                                     ; preds = %196, %.preheader11.preheader
  %.lcssa9698 = phi i32 [ %.lcssa96, %196 ], [ poison, %.preheader11.preheader ]
  %184 = phi i32 [ %.lcssa10, %196 ], [ %182, %.preheader11.preheader ]
  %185 = phi i32 [ %197, %196 ], [ 0, %.preheader11.preheader ]
  %186 = icmp slt i32 %185, 3
  br i1 %186, label %.preheader10.preheader, label %198

.preheader10.preheader:                           ; preds = %.preheader11
  %187 = shl i32 %185, 3
  %invariant.op94 = add i32 %187, %182
  br label %.preheader10

.preheader10:                                     ; preds = %191, %.preheader10.preheader
  %188 = phi i32 [ %182, %191 ], [ %184, %.preheader10.preheader ]
  %189 = phi i32 [ %195, %191 ], [ 0, %.preheader10.preheader ]
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %196

191:                                              ; preds = %.preheader10
  %192 = shl i32 %189, 6
  %.reass95 = add i32 %192, %invariant.op94
  %193 = sext i32 %.reass95 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nsw i32 %189, 1
  br label %.preheader10, !llvm.loop !40

196:                                              ; preds = %.preheader10
  %.lcssa96 = phi i32 [ %189, %.preheader10 ]
  %.lcssa10 = phi i32 [ %188, %.preheader10 ]
  %197 = add nsw i32 %185, 1
  br label %.preheader11, !llvm.loop !41

198:                                              ; preds = %.preheader11
  %.lcssa9698.lcssa = phi i32 [ %.lcssa9698, %.preheader11 ]
  %.lcssa97 = phi i32 [ %185, %.preheader11 ]
  %.lcssa11 = phi i32 [ %184, %.preheader11 ]
  %199 = add nsw i32 %.lcssa11, 1
  br label %181, !llvm.loop !42

200:                                              ; preds = %181
  %.lcssa9698.lcssa101.lcssa = phi i32 [ %.lcssa9698.lcssa101, %181 ]
  %.lcssa97100.lcssa = phi i32 [ %.lcssa97100, %181 ]
  %.lcssa99 = phi i32 [ %182, %181 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa97100.lcssa, ptr %2, align 4
  store i32 %.lcssa9698.lcssa101.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %201

201:                                              ; preds = %218, %200
  %.lcssa104106.lcssa109 = phi i32 [ poison, %200 ], [ %.lcssa104106.lcssa, %218 ]
  %.lcssa105108 = phi i32 [ poison, %200 ], [ %.lcssa105, %218 ]
  %202 = phi i32 [ 0, %200 ], [ %219, %218 ]
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %.preheader9.preheader, label %220

.preheader9.preheader:                            ; preds = %201
  br label %.preheader9

.preheader9:                                      ; preds = %216, %.preheader9.preheader
  %.lcssa104106 = phi i32 [ %.lcssa104, %216 ], [ poison, %.preheader9.preheader ]
  %204 = phi i32 [ %.lcssa8, %216 ], [ %202, %.preheader9.preheader ]
  %205 = phi i32 [ %217, %216 ], [ 0, %.preheader9.preheader ]
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %.preheader8.preheader, label %218

.preheader8.preheader:                            ; preds = %.preheader9
  %207 = shl i32 %205, 3
  %invariant.op102 = add i32 %207, %202
  br label %.preheader8

.preheader8:                                      ; preds = %211, %.preheader8.preheader
  %208 = phi i32 [ %202, %211 ], [ %204, %.preheader8.preheader ]
  %209 = phi i32 [ %215, %211 ], [ 0, %.preheader8.preheader ]
  %210 = icmp slt i32 %209, 3
  br i1 %210, label %211, label %216

211:                                              ; preds = %.preheader8
  %212 = shl i32 %209, 6
  %.reass103 = add i32 %212, %invariant.op102
  %213 = sext i32 %.reass103 to i64
  %214 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nsw i32 %209, 1
  br label %.preheader8, !llvm.loop !43

216:                                              ; preds = %.preheader8
  %.lcssa104 = phi i32 [ %209, %.preheader8 ]
  %.lcssa8 = phi i32 [ %208, %.preheader8 ]
  %217 = add nsw i32 %205, 1
  br label %.preheader9, !llvm.loop !44

218:                                              ; preds = %.preheader9
  %.lcssa104106.lcssa = phi i32 [ %.lcssa104106, %.preheader9 ]
  %.lcssa105 = phi i32 [ %205, %.preheader9 ]
  %.lcssa9 = phi i32 [ %204, %.preheader9 ]
  %219 = add nsw i32 %.lcssa9, 1
  br label %201, !llvm.loop !45

220:                                              ; preds = %201
  %.lcssa104106.lcssa109.lcssa = phi i32 [ %.lcssa104106.lcssa109, %201 ]
  %.lcssa105108.lcssa = phi i32 [ %.lcssa105108, %201 ]
  %.lcssa107 = phi i32 [ %202, %201 ]
  store i32 %.lcssa107, ptr %1, align 4
  store i32 %.lcssa105108.lcssa, ptr %2, align 4
  store i32 %.lcssa104106.lcssa109.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %221

221:                                              ; preds = %238, %220
  %.lcssa112114.lcssa117 = phi i32 [ poison, %220 ], [ %.lcssa112114.lcssa, %238 ]
  %.lcssa113116 = phi i32 [ poison, %220 ], [ %.lcssa113, %238 ]
  %222 = phi i32 [ 0, %220 ], [ %239, %238 ]
  %223 = icmp slt i32 %222, 2
  br i1 %223, label %.preheader7.preheader, label %240

.preheader7.preheader:                            ; preds = %221
  br label %.preheader7

.preheader7:                                      ; preds = %236, %.preheader7.preheader
  %.lcssa112114 = phi i32 [ %.lcssa112, %236 ], [ poison, %.preheader7.preheader ]
  %224 = phi i32 [ %.lcssa6, %236 ], [ %222, %.preheader7.preheader ]
  %225 = phi i32 [ %237, %236 ], [ 0, %.preheader7.preheader ]
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %.preheader6.preheader, label %238

.preheader6.preheader:                            ; preds = %.preheader7
  %227 = shl i32 %225, 3
  %invariant.op110 = add i32 %227, %222
  br label %.preheader6

.preheader6:                                      ; preds = %231, %.preheader6.preheader
  %228 = phi i32 [ %222, %231 ], [ %224, %.preheader6.preheader ]
  %229 = phi i32 [ %235, %231 ], [ 0, %.preheader6.preheader ]
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %231, label %236

231:                                              ; preds = %.preheader6
  %232 = shl i32 %229, 6
  %.reass111 = add i32 %232, %invariant.op110
  %233 = sext i32 %.reass111 to i64
  %234 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %233
  store i32 1, ptr %234, align 4
  %235 = add nsw i32 %229, 1
  br label %.preheader6, !llvm.loop !46

236:                                              ; preds = %.preheader6
  %.lcssa112 = phi i32 [ %229, %.preheader6 ]
  %.lcssa6 = phi i32 [ %228, %.preheader6 ]
  %237 = add nsw i32 %225, 1
  br label %.preheader7, !llvm.loop !47

238:                                              ; preds = %.preheader7
  %.lcssa112114.lcssa = phi i32 [ %.lcssa112114, %.preheader7 ]
  %.lcssa113 = phi i32 [ %225, %.preheader7 ]
  %.lcssa7 = phi i32 [ %224, %.preheader7 ]
  %239 = add nsw i32 %.lcssa7, 1
  br label %221, !llvm.loop !48

240:                                              ; preds = %221
  %.lcssa112114.lcssa117.lcssa = phi i32 [ %.lcssa112114.lcssa117, %221 ]
  %.lcssa113116.lcssa = phi i32 [ %.lcssa113116, %221 ]
  %.lcssa115 = phi i32 [ %222, %221 ]
  store i32 %.lcssa115, ptr %1, align 4
  store i32 %.lcssa113116.lcssa, ptr %2, align 4
  store i32 %.lcssa112114.lcssa117.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %241

241:                                              ; preds = %258, %240
  %.lcssa120122.lcssa125 = phi i32 [ poison, %240 ], [ %.lcssa120122.lcssa, %258 ]
  %.lcssa121124 = phi i32 [ poison, %240 ], [ %.lcssa121, %258 ]
  %242 = phi i32 [ 0, %240 ], [ %259, %258 ]
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %.preheader5.preheader, label %260

.preheader5.preheader:                            ; preds = %241
  br label %.preheader5

.preheader5:                                      ; preds = %256, %.preheader5.preheader
  %.lcssa120122 = phi i32 [ %.lcssa120, %256 ], [ poison, %.preheader5.preheader ]
  %244 = phi i32 [ %.lcssa4, %256 ], [ %242, %.preheader5.preheader ]
  %245 = phi i32 [ %257, %256 ], [ 0, %.preheader5.preheader ]
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %.preheader4.preheader, label %258

.preheader4.preheader:                            ; preds = %.preheader5
  %247 = shl i32 %245, 3
  %invariant.op118 = add i32 %247, %242
  br label %.preheader4

.preheader4:                                      ; preds = %251, %.preheader4.preheader
  %248 = phi i32 [ %242, %251 ], [ %244, %.preheader4.preheader ]
  %249 = phi i32 [ %255, %251 ], [ 0, %.preheader4.preheader ]
  %250 = icmp slt i32 %249, 2
  br i1 %250, label %251, label %256

251:                                              ; preds = %.preheader4
  %252 = shl i32 %249, 6
  %.reass119 = add i32 %252, %invariant.op118
  %253 = sext i32 %.reass119 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %253
  store i32 1, ptr %254, align 4
  %255 = add nsw i32 %249, 1
  br label %.preheader4, !llvm.loop !49

256:                                              ; preds = %.preheader4
  %.lcssa120 = phi i32 [ %249, %.preheader4 ]
  %.lcssa4 = phi i32 [ %248, %.preheader4 ]
  %257 = add nsw i32 %245, 1
  br label %.preheader5, !llvm.loop !50

258:                                              ; preds = %.preheader5
  %.lcssa120122.lcssa = phi i32 [ %.lcssa120122, %.preheader5 ]
  %.lcssa121 = phi i32 [ %245, %.preheader5 ]
  %.lcssa5 = phi i32 [ %244, %.preheader5 ]
  %259 = add nsw i32 %.lcssa5, 1
  br label %241, !llvm.loop !51

260:                                              ; preds = %241
  %.lcssa120122.lcssa125.lcssa = phi i32 [ %.lcssa120122.lcssa125, %241 ]
  %.lcssa121124.lcssa = phi i32 [ %.lcssa121124, %241 ]
  %.lcssa123 = phi i32 [ %242, %241 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa121124.lcssa, ptr %2, align 4
  store i32 %.lcssa120122.lcssa125.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %261

261:                                              ; preds = %278, %260
  %.lcssa128130.lcssa133 = phi i32 [ poison, %260 ], [ %.lcssa128130.lcssa, %278 ]
  %.lcssa129132 = phi i32 [ poison, %260 ], [ %.lcssa129, %278 ]
  %262 = phi i32 [ 0, %260 ], [ %279, %278 ]
  %263 = icmp slt i32 %262, 1
  br i1 %263, label %.preheader3.preheader, label %280

.preheader3.preheader:                            ; preds = %261
  br label %.preheader3

.preheader3:                                      ; preds = %276, %.preheader3.preheader
  %.lcssa128130 = phi i32 [ %.lcssa128, %276 ], [ poison, %.preheader3.preheader ]
  %264 = phi i32 [ %.lcssa2, %276 ], [ %262, %.preheader3.preheader ]
  %265 = phi i32 [ %277, %276 ], [ 0, %.preheader3.preheader ]
  %266 = icmp slt i32 %265, 2
  br i1 %266, label %.preheader2.preheader, label %278

.preheader2.preheader:                            ; preds = %.preheader3
  %267 = shl i32 %265, 3
  %invariant.op126 = add i32 %267, %262
  br label %.preheader2

.preheader2:                                      ; preds = %271, %.preheader2.preheader
  %268 = phi i32 [ %262, %271 ], [ %264, %.preheader2.preheader ]
  %269 = phi i32 [ %275, %271 ], [ 0, %.preheader2.preheader ]
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %276

271:                                              ; preds = %.preheader2
  %272 = shl i32 %269, 6
  %.reass127 = add i32 %272, %invariant.op126
  %273 = sext i32 %.reass127 to i64
  %274 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %273
  store i32 1, ptr %274, align 4
  %275 = add nsw i32 %269, 1
  br label %.preheader2, !llvm.loop !52

276:                                              ; preds = %.preheader2
  %.lcssa128 = phi i32 [ %269, %.preheader2 ]
  %.lcssa2 = phi i32 [ %268, %.preheader2 ]
  %277 = add nsw i32 %265, 1
  br label %.preheader3, !llvm.loop !53

278:                                              ; preds = %.preheader3
  %.lcssa128130.lcssa = phi i32 [ %.lcssa128130, %.preheader3 ]
  %.lcssa129 = phi i32 [ %265, %.preheader3 ]
  %.lcssa3 = phi i32 [ %264, %.preheader3 ]
  %279 = add nsw i32 %.lcssa3, 1
  br label %261, !llvm.loop !54

280:                                              ; preds = %261
  %.lcssa128130.lcssa133.lcssa = phi i32 [ %.lcssa128130.lcssa133, %261 ]
  %.lcssa129132.lcssa = phi i32 [ %.lcssa129132, %261 ]
  %.lcssa131 = phi i32 [ %262, %261 ]
  store i32 %.lcssa131, ptr %1, align 4
  store i32 %.lcssa129132.lcssa, ptr %2, align 4
  store i32 %.lcssa128130.lcssa133.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %281

281:                                              ; preds = %298, %280
  %.lcssa136138.lcssa141 = phi i32 [ poison, %280 ], [ %.lcssa136138.lcssa, %298 ]
  %.lcssa137140 = phi i32 [ poison, %280 ], [ %.lcssa137, %298 ]
  %282 = phi i32 [ 0, %280 ], [ %299, %298 ]
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %.preheader1.preheader, label %300

.preheader1.preheader:                            ; preds = %281
  br label %.preheader1

.preheader1:                                      ; preds = %296, %.preheader1.preheader
  %.lcssa136138 = phi i32 [ %.lcssa136, %296 ], [ poison, %.preheader1.preheader ]
  %284 = phi i32 [ %.lcssa, %296 ], [ %282, %.preheader1.preheader ]
  %285 = phi i32 [ %297, %296 ], [ 0, %.preheader1.preheader ]
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %.preheader.preheader, label %298

.preheader.preheader:                             ; preds = %.preheader1
  %287 = shl i32 %285, 3
  %invariant.op134 = add i32 %287, %282
  br label %.preheader

.preheader:                                       ; preds = %291, %.preheader.preheader
  %288 = phi i32 [ %282, %291 ], [ %284, %.preheader.preheader ]
  %289 = phi i32 [ %295, %291 ], [ 0, %.preheader.preheader ]
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %291, label %296

291:                                              ; preds = %.preheader
  %292 = shl i32 %289, 6
  %.reass135 = add i32 %292, %invariant.op134
  %293 = sext i32 %.reass135 to i64
  %294 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %293
  store i32 1, ptr %294, align 4
  %295 = add nsw i32 %289, 1
  br label %.preheader, !llvm.loop !55

296:                                              ; preds = %.preheader
  %.lcssa136 = phi i32 [ %289, %.preheader ]
  %.lcssa = phi i32 [ %288, %.preheader ]
  %297 = add nsw i32 %285, 1
  br label %.preheader1, !llvm.loop !56

298:                                              ; preds = %.preheader1
  %.lcssa136138.lcssa = phi i32 [ %.lcssa136138, %.preheader1 ]
  %.lcssa137 = phi i32 [ %285, %.preheader1 ]
  %.lcssa1 = phi i32 [ %284, %.preheader1 ]
  %299 = add nsw i32 %.lcssa1, 1
  br label %281, !llvm.loop !57

300:                                              ; preds = %281
  %.lcssa136138.lcssa141.lcssa = phi i32 [ %.lcssa136138.lcssa141, %281 ]
  %.lcssa137140.lcssa = phi i32 [ %.lcssa137140, %281 ]
  %.lcssa139 = phi i32 [ %282, %281 ]
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
  %301 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %301, 0
  br i1 %.not, label %304, label %302

302:                                              ; preds = %300
  %303 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %303, ptr @n, align 4
  br label %305

304:                                              ; preds = %300
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %305

305:                                              ; preds = %304, %302
  %306 = phi i32 [ %.pre, %304 ], [ %303, %302 ]
  %307 = call i32 @Trial(i32 noundef %306)
  %.not16 = icmp eq i32 %307, 0
  br i1 %.not16, label %308, label %309

308:                                              ; preds = %305
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %312

309:                                              ; preds = %305
  %310 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %310, 2005
  br i1 %.not18, label %312, label %311

311:                                              ; preds = %309
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %312

312:                                              ; preds = %311, %309, %308
  %313 = load i32, ptr @n, align 4
  %314 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %313) #4
  %315 = load i32, ptr @kount, align 4
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %315) #4
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
