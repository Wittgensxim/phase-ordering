; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_005\output.ll'
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %32

32:                                               ; preds = %39, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %23 ]
  %33 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4
  %.not3 = icmp eq i32 %36, 0
  br i1 %.not3, label %37, label %39

37:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %33, %34 ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %34 ]
  store i32 %.lcssa2, ptr %5, align 4
  %38 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %32
  %.lcssa1 = phi i32 [ %33, %32 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %37
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.loopexit.loopexit ]
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
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  br label %9

9:                                                ; preds = %25, %1
  %storemerge = phi i32 [ 0, %1 ], [ %26, %25 ]
  %10 = icmp slt i32 %storemerge, 13
  br i1 %10, label %11, label %27

11:                                               ; preds = %9
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %25, label %18

18:                                               ; preds = %11
  %19 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %6)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %25, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %storemerge, i32 noundef %7)
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp ne i32 %22, 0
  %23 = icmp eq i32 %21, 0
  %or.cond = or i1 %.not3, %23
  br i1 %or.cond, label %27, label %24

24:                                               ; preds = %20
  call void @Remove(i32 noundef %storemerge, i32 noundef %8)
  br label %25

25:                                               ; preds = %24, %18, %11
  %26 = add nsw i32 %storemerge, 1
  br label %9, !llvm.loop !12

27:                                               ; preds = %20, %9
  %storemerge.lcssa = phi i32 [ %storemerge, %20 ], [ %storemerge, %9 ]
  %storemerge1 = phi i32 [ 1, %20 ], [ 0, %9 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
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
  br i1 %6, label %7, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %5
  %storemerge.lcssa = phi i32 [ %storemerge, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %.preheader31

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %22, %.preheader31.preheader
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %22 ], [ poison, %.preheader31.preheader ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %22 ], [ poison, %.preheader31.preheader ]
  %storemerge1 = phi i32 [ %23, %22 ], [ 1, %.preheader31.preheader ]
  %11 = icmp slt i32 %storemerge1, 6
  br i1 %11, label %.preheader30, label %.preheader28.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %.preheader31 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %.preheader31 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %.preheader31 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %20
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %20 ], [ poison, %.preheader31 ]
  %storemerge47 = phi i32 [ %21, %20 ], [ 1, %.preheader31 ]
  %12 = icmp slt i32 %storemerge47, 6
  br i1 %12, label %.preheader29.preheader, label %22

.preheader29.preheader:                           ; preds = %.preheader30
  %13 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %13, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %15, %.preheader29.preheader
  %storemerge48 = phi i32 [ %19, %15 ], [ 1, %.preheader29.preheader ]
  %14 = icmp slt i32 %storemerge48, 6
  br i1 %14, label %15, label %20

15:                                               ; preds = %.preheader29
  %16 = shl i32 %storemerge48, 6
  %.reass = add i32 %16, %invariant.op
  %17 = sext i32 %.reass to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

20:                                               ; preds = %.preheader29
  %storemerge48.lcssa = phi i32 [ %storemerge48, %.preheader29 ]
  %21 = add nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

22:                                               ; preds = %.preheader30
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %.preheader30 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %.preheader30 ]
  %23 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %32, %.preheader28.preheader
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %32 ], [ poison, %.preheader28.preheader ]
  %storemerge2 = phi i32 [ %33, %32 ], [ 0, %.preheader28.preheader ]
  %24 = icmp slt i32 %storemerge2, 13
  br i1 %24, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %25 = sext i32 %storemerge2 to i64
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %25
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %.preheader28 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %.preheader28 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %.preheader26

.preheader27:                                     ; preds = %28, %.preheader27.preheader
  %storemerge46 = phi i32 [ %31, %28 ], [ 0, %.preheader27.preheader ]
  %27 = icmp slt i32 %storemerge46, 512
  br i1 %27, label %28, label %32

28:                                               ; preds = %.preheader27
  %29 = sext i32 %storemerge46 to i64
  %30 = getelementptr inbounds [4 x i8], ptr %26, i64 %29
  store i32 0, ptr %30, align 4
  %31 = add nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

32:                                               ; preds = %.preheader27
  %storemerge46.lcssa = phi i32 [ %storemerge46, %.preheader27 ]
  %33 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %45, %.preheader26.preheader
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7.lcssa, %45 ], [ poison, %.preheader26.preheader ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44.lcssa, %45 ], [ poison, %.preheader26.preheader ]
  %storemerge3 = phi i32 [ %46, %45 ], [ 0, %.preheader26.preheader ]
  %34 = icmp slt i32 %storemerge3, 4
  br i1 %34, label %.preheader25, label %47

.preheader25:                                     ; preds = %.preheader26, %43
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %43 ], [ poison, %.preheader26 ]
  %storemerge44 = phi i32 [ %44, %43 ], [ 0, %.preheader26 ]
  %35 = icmp slt i32 %storemerge44, 2
  br i1 %35, label %.preheader24.preheader, label %45

.preheader24.preheader:                           ; preds = %.preheader25
  %36 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %36, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %38, %.preheader24.preheader
  %storemerge45 = phi i32 [ %42, %38 ], [ 0, %.preheader24.preheader ]
  %37 = icmp slt i32 %storemerge45, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %.preheader24
  %39 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %39, %invariant.op5
  %40 = sext i32 %.reass6 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @p, i64 %40
  store i32 1, ptr %41, align 4
  %42 = add nsw i32 %storemerge45, 1
  br label %.preheader24, !llvm.loop !19

43:                                               ; preds = %.preheader24
  %storemerge45.lcssa = phi i32 [ %storemerge45, %.preheader24 ]
  %44 = add nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

45:                                               ; preds = %.preheader25
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %.preheader25 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %.preheader25 ]
  %46 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

47:                                               ; preds = %.preheader26
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %.preheader26 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %.preheader26 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %.preheader26 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %48

48:                                               ; preds = %60, %47
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %47 ], [ %storemerge43.lcssa12.lcssa, %60 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %47 ], [ %storemerge42.lcssa, %60 ]
  %storemerge4 = phi i32 [ 0, %47 ], [ %61, %60 ]
  %49 = icmp slt i32 %storemerge4, 2
  br i1 %49, label %.preheader23, label %62

.preheader23:                                     ; preds = %48, %58
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %58 ], [ poison, %48 ]
  %storemerge42 = phi i32 [ %59, %58 ], [ 0, %48 ]
  %50 = icmp slt i32 %storemerge42, 1
  br i1 %50, label %.preheader22.preheader, label %60

.preheader22.preheader:                           ; preds = %.preheader23
  %51 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %51, %storemerge4
  br label %.preheader22

.preheader22:                                     ; preds = %53, %.preheader22.preheader
  %storemerge43 = phi i32 [ %57, %53 ], [ 0, %.preheader22.preheader ]
  %52 = icmp slt i32 %storemerge43, 4
  br i1 %52, label %53, label %58

53:                                               ; preds = %.preheader22
  %54 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %54, %invariant.op10
  %55 = sext i32 %.reass11 to i64
  %56 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %55
  store i32 1, ptr %56, align 4
  %57 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

58:                                               ; preds = %.preheader22
  %storemerge43.lcssa = phi i32 [ %storemerge43, %.preheader22 ]
  %59 = add nsw i32 %storemerge42, 1
  br label %.preheader23, !llvm.loop !23

60:                                               ; preds = %.preheader23
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %.preheader23 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %.preheader23 ]
  %61 = add nsw i32 %storemerge4, 1
  br label %48, !llvm.loop !24

62:                                               ; preds = %48
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %48 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %48 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %48 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %63

63:                                               ; preds = %75, %62
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %62 ], [ %storemerge41.lcssa17.lcssa, %75 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %62 ], [ %storemerge40.lcssa, %75 ]
  %storemerge5 = phi i32 [ 0, %62 ], [ %76, %75 ]
  %64 = icmp slt i32 %storemerge5, 1
  br i1 %64, label %.preheader21, label %77

.preheader21:                                     ; preds = %63, %73
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %73 ], [ poison, %63 ]
  %storemerge40 = phi i32 [ %74, %73 ], [ 0, %63 ]
  %65 = icmp slt i32 %storemerge40, 4
  br i1 %65, label %.preheader20.preheader, label %75

.preheader20.preheader:                           ; preds = %.preheader21
  %66 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %66, %storemerge5
  br label %.preheader20

.preheader20:                                     ; preds = %68, %.preheader20.preheader
  %storemerge41 = phi i32 [ %72, %68 ], [ 0, %.preheader20.preheader ]
  %67 = icmp slt i32 %storemerge41, 2
  br i1 %67, label %68, label %73

68:                                               ; preds = %.preheader20
  %69 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %69, %invariant.op15
  %70 = sext i32 %.reass16 to i64
  %71 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %70
  store i32 1, ptr %71, align 4
  %72 = add nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

73:                                               ; preds = %.preheader20
  %storemerge41.lcssa = phi i32 [ %storemerge41, %.preheader20 ]
  %74 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

75:                                               ; preds = %.preheader21
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %.preheader21 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %.preheader21 ]
  %76 = add nsw i32 %storemerge5, 1
  br label %63, !llvm.loop !27

77:                                               ; preds = %63
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %63 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %63 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %63 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %78

78:                                               ; preds = %90, %77
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %77 ], [ %storemerge39.lcssa22.lcssa, %90 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %77 ], [ %storemerge38.lcssa, %90 ]
  %storemerge6 = phi i32 [ 0, %77 ], [ %91, %90 ]
  %79 = icmp slt i32 %storemerge6, 2
  br i1 %79, label %.preheader19, label %92

.preheader19:                                     ; preds = %78, %88
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %88 ], [ poison, %78 ]
  %storemerge38 = phi i32 [ %89, %88 ], [ 0, %78 ]
  %80 = icmp slt i32 %storemerge38, 4
  br i1 %80, label %.preheader18.preheader, label %90

.preheader18.preheader:                           ; preds = %.preheader19
  %81 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %81, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %83, %.preheader18.preheader
  %storemerge39 = phi i32 [ %87, %83 ], [ 0, %.preheader18.preheader ]
  %82 = icmp slt i32 %storemerge39, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %.preheader18
  %84 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %84, %invariant.op20
  %85 = sext i32 %.reass21 to i64
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nsw i32 %storemerge39, 1
  br label %.preheader18, !llvm.loop !28

88:                                               ; preds = %.preheader18
  %storemerge39.lcssa = phi i32 [ %storemerge39, %.preheader18 ]
  %89 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

90:                                               ; preds = %.preheader19
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %.preheader19 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %.preheader19 ]
  %91 = add nsw i32 %storemerge6, 1
  br label %78, !llvm.loop !30

92:                                               ; preds = %78
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %78 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %78 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %78 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %93

93:                                               ; preds = %105, %92
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %92 ], [ %storemerge37.lcssa27.lcssa, %105 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %92 ], [ %storemerge36.lcssa, %105 ]
  %storemerge7 = phi i32 [ 0, %92 ], [ %106, %105 ]
  %94 = icmp slt i32 %storemerge7, 4
  br i1 %94, label %.preheader17, label %107

.preheader17:                                     ; preds = %93, %103
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %103 ], [ poison, %93 ]
  %storemerge36 = phi i32 [ %104, %103 ], [ 0, %93 ]
  %95 = icmp slt i32 %storemerge36, 1
  br i1 %95, label %.preheader16.preheader, label %105

.preheader16.preheader:                           ; preds = %.preheader17
  %96 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %96, %storemerge7
  br label %.preheader16

.preheader16:                                     ; preds = %98, %.preheader16.preheader
  %storemerge37 = phi i32 [ %102, %98 ], [ 0, %.preheader16.preheader ]
  %97 = icmp slt i32 %storemerge37, 2
  br i1 %97, label %98, label %103

98:                                               ; preds = %.preheader16
  %99 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %99, %invariant.op25
  %100 = sext i32 %.reass26 to i64
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

103:                                              ; preds = %.preheader16
  %storemerge37.lcssa = phi i32 [ %storemerge37, %.preheader16 ]
  %104 = add nsw i32 %storemerge36, 1
  br label %.preheader17, !llvm.loop !32

105:                                              ; preds = %.preheader17
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %.preheader17 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %.preheader17 ]
  %106 = add nsw i32 %storemerge7, 1
  br label %93, !llvm.loop !33

107:                                              ; preds = %93
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %93 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %93 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %93 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %108

108:                                              ; preds = %120, %107
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %107 ], [ %storemerge35.lcssa32.lcssa, %120 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %107 ], [ %storemerge34.lcssa, %120 ]
  %storemerge8 = phi i32 [ 0, %107 ], [ %121, %120 ]
  %109 = icmp slt i32 %storemerge8, 1
  br i1 %109, label %.preheader15, label %122

.preheader15:                                     ; preds = %108, %118
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %118 ], [ poison, %108 ]
  %storemerge34 = phi i32 [ %119, %118 ], [ 0, %108 ]
  %110 = icmp slt i32 %storemerge34, 2
  br i1 %110, label %.preheader14.preheader, label %120

.preheader14.preheader:                           ; preds = %.preheader15
  %111 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %111, %storemerge8
  br label %.preheader14

.preheader14:                                     ; preds = %113, %.preheader14.preheader
  %storemerge35 = phi i32 [ %117, %113 ], [ 0, %.preheader14.preheader ]
  %112 = icmp slt i32 %storemerge35, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %.preheader14
  %114 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %114, %invariant.op30
  %115 = sext i32 %.reass31 to i64
  %116 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %115
  store i32 1, ptr %116, align 4
  %117 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

118:                                              ; preds = %.preheader14
  %storemerge35.lcssa = phi i32 [ %storemerge35, %.preheader14 ]
  %119 = add nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

120:                                              ; preds = %.preheader15
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %.preheader15 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %.preheader15 ]
  %121 = add nsw i32 %storemerge8, 1
  br label %108, !llvm.loop !36

122:                                              ; preds = %108
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %108 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %108 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %108 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %123

123:                                              ; preds = %135, %122
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %122 ], [ %storemerge33.lcssa37.lcssa, %135 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %122 ], [ %storemerge32.lcssa, %135 ]
  %storemerge9 = phi i32 [ 0, %122 ], [ %136, %135 ]
  %124 = icmp slt i32 %storemerge9, 3
  br i1 %124, label %.preheader13, label %137

.preheader13:                                     ; preds = %123, %133
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %133 ], [ poison, %123 ]
  %storemerge32 = phi i32 [ %134, %133 ], [ 0, %123 ]
  %125 = icmp slt i32 %storemerge32, 1
  br i1 %125, label %.preheader12.preheader, label %135

.preheader12.preheader:                           ; preds = %.preheader13
  %126 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %126, %storemerge9
  br label %.preheader12

.preheader12:                                     ; preds = %128, %.preheader12.preheader
  %storemerge33 = phi i32 [ %132, %128 ], [ 0, %.preheader12.preheader ]
  %127 = icmp slt i32 %storemerge33, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %.preheader12
  %129 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %129, %invariant.op35
  %130 = sext i32 %.reass36 to i64
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nsw i32 %storemerge33, 1
  br label %.preheader12, !llvm.loop !37

133:                                              ; preds = %.preheader12
  %storemerge33.lcssa = phi i32 [ %storemerge33, %.preheader12 ]
  %134 = add nsw i32 %storemerge32, 1
  br label %.preheader13, !llvm.loop !38

135:                                              ; preds = %.preheader13
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %.preheader13 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %.preheader13 ]
  %136 = add nsw i32 %storemerge9, 1
  br label %123, !llvm.loop !39

137:                                              ; preds = %123
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %123 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %123 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %123 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %138

138:                                              ; preds = %150, %137
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %137 ], [ %storemerge31.lcssa42.lcssa, %150 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %137 ], [ %storemerge30.lcssa, %150 ]
  %storemerge10 = phi i32 [ 0, %137 ], [ %151, %150 ]
  %139 = icmp slt i32 %storemerge10, 1
  br i1 %139, label %.preheader11, label %152

.preheader11:                                     ; preds = %138, %148
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %148 ], [ poison, %138 ]
  %storemerge30 = phi i32 [ %149, %148 ], [ 0, %138 ]
  %140 = icmp slt i32 %storemerge30, 3
  br i1 %140, label %.preheader10.preheader, label %150

.preheader10.preheader:                           ; preds = %.preheader11
  %141 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %141, %storemerge10
  br label %.preheader10

.preheader10:                                     ; preds = %143, %.preheader10.preheader
  %storemerge31 = phi i32 [ %147, %143 ], [ 0, %.preheader10.preheader ]
  %142 = icmp slt i32 %storemerge31, 1
  br i1 %142, label %143, label %148

143:                                              ; preds = %.preheader10
  %144 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %144, %invariant.op40
  %145 = sext i32 %.reass41 to i64
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %145
  store i32 1, ptr %146, align 4
  %147 = add nsw i32 %storemerge31, 1
  br label %.preheader10, !llvm.loop !40

148:                                              ; preds = %.preheader10
  %storemerge31.lcssa = phi i32 [ %storemerge31, %.preheader10 ]
  %149 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

150:                                              ; preds = %.preheader11
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %.preheader11 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %.preheader11 ]
  %151 = add nsw i32 %storemerge10, 1
  br label %138, !llvm.loop !42

152:                                              ; preds = %138
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %138 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %138 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %138 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %153

153:                                              ; preds = %165, %152
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %152 ], [ %storemerge29.lcssa47.lcssa, %165 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %152 ], [ %storemerge28.lcssa, %165 ]
  %storemerge11 = phi i32 [ 0, %152 ], [ %166, %165 ]
  %154 = icmp slt i32 %storemerge11, 1
  br i1 %154, label %.preheader9, label %167

.preheader9:                                      ; preds = %153, %163
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %163 ], [ poison, %153 ]
  %storemerge28 = phi i32 [ %164, %163 ], [ 0, %153 ]
  %155 = icmp slt i32 %storemerge28, 1
  br i1 %155, label %.preheader8.preheader, label %165

.preheader8.preheader:                            ; preds = %.preheader9
  %156 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %156, %storemerge11
  br label %.preheader8

.preheader8:                                      ; preds = %158, %.preheader8.preheader
  %storemerge29 = phi i32 [ %162, %158 ], [ 0, %.preheader8.preheader ]
  %157 = icmp slt i32 %storemerge29, 3
  br i1 %157, label %158, label %163

158:                                              ; preds = %.preheader8
  %159 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %159, %invariant.op45
  %160 = sext i32 %.reass46 to i64
  %161 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %160
  store i32 1, ptr %161, align 4
  %162 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

163:                                              ; preds = %.preheader8
  %storemerge29.lcssa = phi i32 [ %storemerge29, %.preheader8 ]
  %164 = add nsw i32 %storemerge28, 1
  br label %.preheader9, !llvm.loop !44

165:                                              ; preds = %.preheader9
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %.preheader9 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %.preheader9 ]
  %166 = add nsw i32 %storemerge11, 1
  br label %153, !llvm.loop !45

167:                                              ; preds = %153
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %153 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %153 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %153 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %168

168:                                              ; preds = %180, %167
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %167 ], [ %storemerge27.lcssa52.lcssa, %180 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %167 ], [ %storemerge26.lcssa, %180 ]
  %storemerge12 = phi i32 [ 0, %167 ], [ %181, %180 ]
  %169 = icmp slt i32 %storemerge12, 2
  br i1 %169, label %.preheader7, label %182

.preheader7:                                      ; preds = %168, %178
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %178 ], [ poison, %168 ]
  %storemerge26 = phi i32 [ %179, %178 ], [ 0, %168 ]
  %170 = icmp slt i32 %storemerge26, 2
  br i1 %170, label %.preheader6.preheader, label %180

.preheader6.preheader:                            ; preds = %.preheader7
  %171 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %171, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %173, %.preheader6.preheader
  %storemerge27 = phi i32 [ %177, %173 ], [ 0, %.preheader6.preheader ]
  %172 = icmp slt i32 %storemerge27, 1
  br i1 %172, label %173, label %178

173:                                              ; preds = %.preheader6
  %174 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %174, %invariant.op50
  %175 = sext i32 %.reass51 to i64
  %176 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %175
  store i32 1, ptr %176, align 4
  %177 = add nsw i32 %storemerge27, 1
  br label %.preheader6, !llvm.loop !46

178:                                              ; preds = %.preheader6
  %storemerge27.lcssa = phi i32 [ %storemerge27, %.preheader6 ]
  %179 = add nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

180:                                              ; preds = %.preheader7
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %.preheader7 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %.preheader7 ]
  %181 = add nsw i32 %storemerge12, 1
  br label %168, !llvm.loop !48

182:                                              ; preds = %168
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %168 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %168 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %168 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %183

183:                                              ; preds = %195, %182
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %182 ], [ %storemerge25.lcssa57.lcssa, %195 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %182 ], [ %storemerge24.lcssa, %195 ]
  %storemerge13 = phi i32 [ 0, %182 ], [ %196, %195 ]
  %184 = icmp slt i32 %storemerge13, 2
  br i1 %184, label %.preheader5, label %197

.preheader5:                                      ; preds = %183, %193
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %193 ], [ poison, %183 ]
  %storemerge24 = phi i32 [ %194, %193 ], [ 0, %183 ]
  %185 = icmp slt i32 %storemerge24, 1
  br i1 %185, label %.preheader4.preheader, label %195

.preheader4.preheader:                            ; preds = %.preheader5
  %186 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %186, %storemerge13
  br label %.preheader4

.preheader4:                                      ; preds = %188, %.preheader4.preheader
  %storemerge25 = phi i32 [ %192, %188 ], [ 0, %.preheader4.preheader ]
  %187 = icmp slt i32 %storemerge25, 2
  br i1 %187, label %188, label %193

188:                                              ; preds = %.preheader4
  %189 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %189, %invariant.op55
  %190 = sext i32 %.reass56 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

193:                                              ; preds = %.preheader4
  %storemerge25.lcssa = phi i32 [ %storemerge25, %.preheader4 ]
  %194 = add nsw i32 %storemerge24, 1
  br label %.preheader5, !llvm.loop !50

195:                                              ; preds = %.preheader5
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %.preheader5 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %.preheader5 ]
  %196 = add nsw i32 %storemerge13, 1
  br label %183, !llvm.loop !51

197:                                              ; preds = %183
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %183 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %183 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %183 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %198

198:                                              ; preds = %210, %197
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %197 ], [ %storemerge23.lcssa62.lcssa, %210 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %197 ], [ %storemerge22.lcssa, %210 ]
  %storemerge14 = phi i32 [ 0, %197 ], [ %211, %210 ]
  %199 = icmp slt i32 %storemerge14, 1
  br i1 %199, label %.preheader3, label %212

.preheader3:                                      ; preds = %198, %208
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %208 ], [ poison, %198 ]
  %storemerge22 = phi i32 [ %209, %208 ], [ 0, %198 ]
  %200 = icmp slt i32 %storemerge22, 2
  br i1 %200, label %.preheader2.preheader, label %210

.preheader2.preheader:                            ; preds = %.preheader3
  %201 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %201, %storemerge14
  br label %.preheader2

.preheader2:                                      ; preds = %203, %.preheader2.preheader
  %storemerge23 = phi i32 [ %207, %203 ], [ 0, %.preheader2.preheader ]
  %202 = icmp slt i32 %storemerge23, 2
  br i1 %202, label %203, label %208

203:                                              ; preds = %.preheader2
  %204 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %204, %invariant.op60
  %205 = sext i32 %.reass61 to i64
  %206 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %205
  store i32 1, ptr %206, align 4
  %207 = add nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

208:                                              ; preds = %.preheader2
  %storemerge23.lcssa = phi i32 [ %storemerge23, %.preheader2 ]
  %209 = add nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

210:                                              ; preds = %.preheader3
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %.preheader3 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %.preheader3 ]
  %211 = add nsw i32 %storemerge14, 1
  br label %198, !llvm.loop !54

212:                                              ; preds = %198
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %198 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %198 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %198 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %213

213:                                              ; preds = %225, %212
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %212 ], [ %storemerge21.lcssa67.lcssa, %225 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %212 ], [ %storemerge20.lcssa, %225 ]
  %storemerge15 = phi i32 [ 0, %212 ], [ %226, %225 ]
  %214 = icmp slt i32 %storemerge15, 2
  br i1 %214, label %.preheader1, label %227

.preheader1:                                      ; preds = %213, %223
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %223 ], [ poison, %213 ]
  %storemerge20 = phi i32 [ %224, %223 ], [ 0, %213 ]
  %215 = icmp slt i32 %storemerge20, 2
  br i1 %215, label %.preheader.preheader, label %225

.preheader.preheader:                             ; preds = %.preheader1
  %216 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %216, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %218, %.preheader.preheader
  %storemerge21 = phi i32 [ %222, %218 ], [ 0, %.preheader.preheader ]
  %217 = icmp slt i32 %storemerge21, 2
  br i1 %217, label %218, label %223

218:                                              ; preds = %.preheader
  %219 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %219, %invariant.op65
  %220 = sext i32 %.reass66 to i64
  %221 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %220
  store i32 1, ptr %221, align 4
  %222 = add nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

223:                                              ; preds = %.preheader
  %storemerge21.lcssa = phi i32 [ %storemerge21, %.preheader ]
  %224 = add nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

225:                                              ; preds = %.preheader1
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %.preheader1 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %.preheader1 ]
  %226 = add nsw i32 %storemerge15, 1
  br label %213, !llvm.loop !57

227:                                              ; preds = %213
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %213 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %213 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %213 ]
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
  %228 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %228, 0
  br i1 %.not, label %232, label %229

229:                                              ; preds = %227
  %230 = load i32, ptr %4, align 4
  %231 = call i32 @Place(i32 noundef 0, i32 noundef %230)
  store i32 %231, ptr @n, align 4
  br label %233

232:                                              ; preds = %227
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, ptr @n, align 4
  %235 = call i32 @Trial(i32 noundef %234)
  %.not16 = icmp eq i32 %235, 0
  br i1 %.not16, label %236, label %237

236:                                              ; preds = %233
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %240

237:                                              ; preds = %233
  %238 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %238, 2005
  br i1 %.not18, label %240, label %239

239:                                              ; preds = %237
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %240

240:                                              ; preds = %239, %237, %236
  %241 = load i32, ptr @n, align 4
  %242 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %241) #4
  %243 = load i32, ptr @kount, align 4
  %244 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %243) #4
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
