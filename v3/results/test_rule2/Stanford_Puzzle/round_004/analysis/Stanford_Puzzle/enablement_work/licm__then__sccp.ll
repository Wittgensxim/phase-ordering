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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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

11:                                               ; preds = %25, %.preheader31
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %25 ], [ poison, %.preheader31 ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %25 ], [ poison, %.preheader31 ]
  %storemerge1 = phi i32 [ %26, %25 ], [ 1, %.preheader31 ]
  %12 = icmp slt i32 %storemerge1, 6
  br i1 %12, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %11
  br label %13

.preheader28:                                     ; preds = %11
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %11 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %11 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %11 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %27

13:                                               ; preds = %23, %.preheader30
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %23 ], [ poison, %.preheader30 ]
  %storemerge47 = phi i32 [ %24, %23 ], [ 1, %.preheader30 ]
  %14 = icmp slt i32 %storemerge47, 6
  br i1 %14, label %.preheader29, label %25

.preheader29:                                     ; preds = %13
  %15 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %15, %storemerge1
  br label %16

16:                                               ; preds = %18, %.preheader29
  %storemerge48 = phi i32 [ %22, %18 ], [ 1, %.preheader29 ]
  %17 = icmp slt i32 %storemerge48, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = shl i32 %storemerge48, 6
  %.reass = add i32 %19, %invariant.op
  %20 = sext i32 %.reass to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  %22 = add nsw i32 %storemerge48, 1
  br label %16, !llvm.loop !14

23:                                               ; preds = %16
  %storemerge48.lcssa = phi i32 [ %storemerge48, %16 ]
  %24 = add nsw i32 %storemerge47, 1
  br label %13, !llvm.loop !15

25:                                               ; preds = %13
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %13 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %13 ]
  %26 = add nsw i32 %storemerge1, 1
  br label %11, !llvm.loop !16

27:                                               ; preds = %37, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %37 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.preheader28 ]
  %28 = icmp slt i32 %storemerge2, 13
  br i1 %28, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %27
  %29 = sext i32 %storemerge2 to i64
  %30 = getelementptr inbounds [2048 x i8], ptr @p, i64 %29
  br label %31

.preheader26:                                     ; preds = %27
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %27 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %27 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %39

31:                                               ; preds = %33, %.preheader27
  %storemerge46 = phi i32 [ %36, %33 ], [ 0, %.preheader27 ]
  %32 = icmp slt i32 %storemerge46, 512
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = sext i32 %storemerge46 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %30, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nsw i32 %storemerge46, 1
  br label %31, !llvm.loop !17

37:                                               ; preds = %31
  %storemerge46.lcssa = phi i32 [ %storemerge46, %31 ]
  %38 = add nsw i32 %storemerge2, 1
  br label %27, !llvm.loop !18

39:                                               ; preds = %51, %.preheader26
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7.lcssa, %51 ], [ poison, %.preheader26 ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44.lcssa, %51 ], [ poison, %.preheader26 ]
  %storemerge3 = phi i32 [ %52, %51 ], [ 0, %.preheader26 ]
  %40 = icmp slt i32 %storemerge3, 4
  br i1 %40, label %.preheader25, label %53

.preheader25:                                     ; preds = %39
  br label %41

41:                                               ; preds = %49, %.preheader25
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %49 ], [ poison, %.preheader25 ]
  %storemerge44 = phi i32 [ %50, %49 ], [ 0, %.preheader25 ]
  %42 = icmp slt i32 %storemerge44, 2
  br i1 %42, label %.preheader24, label %51

.preheader24:                                     ; preds = %41
  %43 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = add nsw i32 %43, %storemerge3
  br label %44

44:                                               ; preds = %46, %.preheader24
  %storemerge45 = phi i32 [ 1, %46 ], [ 0, %.preheader24 ]
  %45 = icmp slt i32 %storemerge45, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %.reass6 = add nuw nsw i32 0, %invariant.op5
  %47 = sext i32 %.reass6 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @p, i64 %47
  store i32 1, ptr %48, align 4
  br label %44, !llvm.loop !19

49:                                               ; preds = %44
  %storemerge45.lcssa = phi i32 [ %storemerge45, %44 ]
  %50 = add nuw nsw i32 %storemerge44, 1
  br label %41, !llvm.loop !20

51:                                               ; preds = %41
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %41 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %41 ]
  %52 = add nsw i32 %storemerge3, 1
  br label %39, !llvm.loop !21

53:                                               ; preds = %39
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %39 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %39 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %39 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %66, %53
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %53 ], [ %storemerge43.lcssa12.lcssa, %66 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %53 ], [ %storemerge42.lcssa, %66 ]
  %storemerge4 = phi i32 [ 0, %53 ], [ %67, %66 ]
  %55 = icmp slt i32 %storemerge4, 2
  br i1 %55, label %.preheader23, label %68

.preheader23:                                     ; preds = %54
  br label %56

56:                                               ; preds = %65, %.preheader23
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %65 ], [ poison, %.preheader23 ]
  %storemerge42 = phi i32 [ 1, %65 ], [ 0, %.preheader23 ]
  %57 = icmp slt i32 %storemerge42, 1
  br i1 %57, label %.preheader22, label %66

.preheader22:                                     ; preds = %56
  %invariant.op10 = add nuw nsw i32 0, %storemerge4
  br label %58

58:                                               ; preds = %60, %.preheader22
  %storemerge43 = phi i32 [ %64, %60 ], [ 0, %.preheader22 ]
  %59 = icmp slt i32 %storemerge43, 4
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = shl i32 %storemerge43, 6
  %.reass11 = add nuw i32 %61, %invariant.op10
  %62 = sext i32 %.reass11 to i64
  %63 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nsw i32 %storemerge43, 1
  br label %58, !llvm.loop !22

65:                                               ; preds = %58
  %storemerge43.lcssa = phi i32 [ %storemerge43, %58 ]
  br label %56, !llvm.loop !23

66:                                               ; preds = %56
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %56 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %56 ]
  %67 = add nuw nsw i32 %storemerge4, 1
  br label %54, !llvm.loop !24

68:                                               ; preds = %54
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %54 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %54 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %54 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %69

69:                                               ; preds = %83, %68
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %68 ], [ %storemerge41.lcssa17.lcssa, %83 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %68 ], [ %storemerge40.lcssa, %83 ]
  %storemerge5 = phi i32 [ 0, %68 ], [ 1, %83 ]
  %70 = icmp slt i32 %storemerge5, 1
  br i1 %70, label %.preheader21, label %84

.preheader21:                                     ; preds = %69
  br label %71

71:                                               ; preds = %81, %.preheader21
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %81 ], [ poison, %.preheader21 ]
  %storemerge40 = phi i32 [ %82, %81 ], [ 0, %.preheader21 ]
  %72 = icmp slt i32 %storemerge40, 4
  br i1 %72, label %.preheader20, label %83

.preheader20:                                     ; preds = %71
  %73 = shl i32 %storemerge40, 3
  %invariant.op15 = add nuw nsw i32 %73, 0
  br label %74

74:                                               ; preds = %76, %.preheader20
  %storemerge41 = phi i32 [ %80, %76 ], [ 0, %.preheader20 ]
  %75 = icmp slt i32 %storemerge41, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = add i32 %77, %invariant.op15
  %78 = sext i32 %.reass16 to i64
  %79 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nuw nsw i32 %storemerge41, 1
  br label %74, !llvm.loop !25

81:                                               ; preds = %74
  %storemerge41.lcssa = phi i32 [ %storemerge41, %74 ]
  %82 = add nsw i32 %storemerge40, 1
  br label %71, !llvm.loop !26

83:                                               ; preds = %71
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %71 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %71 ]
  br label %69, !llvm.loop !27

84:                                               ; preds = %69
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %69 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %69 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %69 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %85

85:                                               ; preds = %97, %84
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %84 ], [ %storemerge39.lcssa22.lcssa, %97 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %84 ], [ %storemerge38.lcssa, %97 ]
  %storemerge6 = phi i32 [ 0, %84 ], [ %98, %97 ]
  %86 = icmp slt i32 %storemerge6, 2
  br i1 %86, label %.preheader19, label %99

.preheader19:                                     ; preds = %85
  br label %87

87:                                               ; preds = %95, %.preheader19
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %95 ], [ poison, %.preheader19 ]
  %storemerge38 = phi i32 [ %96, %95 ], [ 0, %.preheader19 ]
  %88 = icmp slt i32 %storemerge38, 4
  br i1 %88, label %.preheader18, label %97

.preheader18:                                     ; preds = %87
  %89 = shl i32 %storemerge38, 3
  %invariant.op20 = add nuw i32 %89, %storemerge6
  br label %90

90:                                               ; preds = %92, %.preheader18
  %storemerge39 = phi i32 [ 1, %92 ], [ 0, %.preheader18 ]
  %91 = icmp slt i32 %storemerge39, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %.reass21 = add nuw nsw i32 0, %invariant.op20
  %93 = sext i32 %.reass21 to i64
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %93
  store i32 1, ptr %94, align 4
  br label %90, !llvm.loop !28

95:                                               ; preds = %90
  %storemerge39.lcssa = phi i32 [ %storemerge39, %90 ]
  %96 = add nsw i32 %storemerge38, 1
  br label %87, !llvm.loop !29

97:                                               ; preds = %87
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %87 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %87 ]
  %98 = add nuw nsw i32 %storemerge6, 1
  br label %85, !llvm.loop !30

99:                                               ; preds = %85
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %85 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %85 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %85 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %100

100:                                              ; preds = %112, %99
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %99 ], [ %storemerge37.lcssa27.lcssa, %112 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %99 ], [ %storemerge36.lcssa, %112 ]
  %storemerge7 = phi i32 [ 0, %99 ], [ %113, %112 ]
  %101 = icmp slt i32 %storemerge7, 4
  br i1 %101, label %.preheader17, label %114

.preheader17:                                     ; preds = %100
  br label %102

102:                                              ; preds = %111, %.preheader17
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %111 ], [ poison, %.preheader17 ]
  %storemerge36 = phi i32 [ 1, %111 ], [ 0, %.preheader17 ]
  %103 = icmp slt i32 %storemerge36, 1
  br i1 %103, label %.preheader16, label %112

.preheader16:                                     ; preds = %102
  %invariant.op25 = add nuw nsw i32 0, %storemerge7
  br label %104

104:                                              ; preds = %106, %.preheader16
  %storemerge37 = phi i32 [ %110, %106 ], [ 0, %.preheader16 ]
  %105 = icmp slt i32 %storemerge37, 2
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = add nsw i32 %107, %invariant.op25
  %108 = sext i32 %.reass26 to i64
  %109 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %108
  store i32 1, ptr %109, align 4
  %110 = add nuw nsw i32 %storemerge37, 1
  br label %104, !llvm.loop !31

111:                                              ; preds = %104
  %storemerge37.lcssa = phi i32 [ %storemerge37, %104 ]
  br label %102, !llvm.loop !32

112:                                              ; preds = %102
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %102 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %102 ]
  %113 = add nsw i32 %storemerge7, 1
  br label %100, !llvm.loop !33

114:                                              ; preds = %100
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %100 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %100 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %100 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %115

115:                                              ; preds = %129, %114
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %114 ], [ %storemerge35.lcssa32.lcssa, %129 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %114 ], [ %storemerge34.lcssa, %129 ]
  %storemerge8 = phi i32 [ 0, %114 ], [ 1, %129 ]
  %116 = icmp slt i32 %storemerge8, 1
  br i1 %116, label %.preheader15, label %130

.preheader15:                                     ; preds = %115
  br label %117

117:                                              ; preds = %127, %.preheader15
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %127 ], [ poison, %.preheader15 ]
  %storemerge34 = phi i32 [ %128, %127 ], [ 0, %.preheader15 ]
  %118 = icmp slt i32 %storemerge34, 2
  br i1 %118, label %.preheader14, label %129

.preheader14:                                     ; preds = %117
  %119 = shl nuw nsw i32 %storemerge34, 3
  %invariant.op30 = add nuw nsw i32 %119, 0
  br label %120

120:                                              ; preds = %122, %.preheader14
  %storemerge35 = phi i32 [ %126, %122 ], [ 0, %.preheader14 ]
  %121 = icmp slt i32 %storemerge35, 4
  br i1 %121, label %122, label %127

122:                                              ; preds = %120
  %123 = shl i32 %storemerge35, 6
  %.reass31 = add nuw i32 %123, %invariant.op30
  %124 = sext i32 %.reass31 to i64
  %125 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nsw i32 %storemerge35, 1
  br label %120, !llvm.loop !34

127:                                              ; preds = %120
  %storemerge35.lcssa = phi i32 [ %storemerge35, %120 ]
  %128 = add nuw nsw i32 %storemerge34, 1
  br label %117, !llvm.loop !35

129:                                              ; preds = %117
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %117 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %117 ]
  br label %115, !llvm.loop !36

130:                                              ; preds = %115
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %115 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %115 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %115 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %131

131:                                              ; preds = %141, %130
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %130 ], [ %storemerge33.lcssa37.lcssa, %141 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %130 ], [ %storemerge32.lcssa, %141 ]
  %storemerge9 = phi i32 [ 0, %130 ], [ %142, %141 ]
  %132 = icmp slt i32 %storemerge9, 3
  br i1 %132, label %.preheader13, label %143

.preheader13:                                     ; preds = %131
  br label %133

133:                                              ; preds = %140, %.preheader13
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %140 ], [ poison, %.preheader13 ]
  %storemerge32 = phi i32 [ 1, %140 ], [ 0, %.preheader13 ]
  %134 = icmp slt i32 %storemerge32, 1
  br i1 %134, label %.preheader12, label %141

.preheader12:                                     ; preds = %133
  %invariant.op35 = add nuw nsw i32 0, %storemerge9
  br label %135

135:                                              ; preds = %137, %.preheader12
  %storemerge33 = phi i32 [ 1, %137 ], [ 0, %.preheader12 ]
  %136 = icmp slt i32 %storemerge33, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %.reass36 = add nuw nsw i32 0, %invariant.op35
  %138 = sext i32 %.reass36 to i64
  %139 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %138
  store i32 1, ptr %139, align 4
  br label %135, !llvm.loop !37

140:                                              ; preds = %135
  %storemerge33.lcssa = phi i32 [ %storemerge33, %135 ]
  br label %133, !llvm.loop !38

141:                                              ; preds = %133
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %133 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %133 ]
  %142 = add nsw i32 %storemerge9, 1
  br label %131, !llvm.loop !39

143:                                              ; preds = %131
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %131 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %131 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %131 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %144

144:                                              ; preds = %156, %143
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %143 ], [ %storemerge31.lcssa42.lcssa, %156 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %143 ], [ %storemerge30.lcssa, %156 ]
  %storemerge10 = phi i32 [ 0, %143 ], [ 1, %156 ]
  %145 = icmp slt i32 %storemerge10, 1
  br i1 %145, label %.preheader11, label %157

.preheader11:                                     ; preds = %144
  br label %146

146:                                              ; preds = %154, %.preheader11
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %154 ], [ poison, %.preheader11 ]
  %storemerge30 = phi i32 [ %155, %154 ], [ 0, %.preheader11 ]
  %147 = icmp slt i32 %storemerge30, 3
  br i1 %147, label %.preheader10, label %156

.preheader10:                                     ; preds = %146
  %148 = shl i32 %storemerge30, 3
  %invariant.op40 = add nuw nsw i32 %148, 0
  br label %149

149:                                              ; preds = %151, %.preheader10
  %storemerge31 = phi i32 [ 1, %151 ], [ 0, %.preheader10 ]
  %150 = icmp slt i32 %storemerge31, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %.reass41 = add nuw nsw i32 0, %invariant.op40
  %152 = sext i32 %.reass41 to i64
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %152
  store i32 1, ptr %153, align 4
  br label %149, !llvm.loop !40

154:                                              ; preds = %149
  %storemerge31.lcssa = phi i32 [ %storemerge31, %149 ]
  %155 = add nsw i32 %storemerge30, 1
  br label %146, !llvm.loop !41

156:                                              ; preds = %146
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %146 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %146 ]
  br label %144, !llvm.loop !42

157:                                              ; preds = %144
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %144 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %144 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %144 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %158

158:                                              ; preds = %170, %157
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %157 ], [ %storemerge29.lcssa47.lcssa, %170 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %157 ], [ %storemerge28.lcssa, %170 ]
  %storemerge11 = phi i32 [ 0, %157 ], [ 1, %170 ]
  %159 = icmp slt i32 %storemerge11, 1
  br i1 %159, label %.preheader9, label %171

.preheader9:                                      ; preds = %158
  br label %160

160:                                              ; preds = %169, %.preheader9
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %169 ], [ poison, %.preheader9 ]
  %storemerge28 = phi i32 [ 1, %169 ], [ 0, %.preheader9 ]
  %161 = icmp slt i32 %storemerge28, 1
  br i1 %161, label %.preheader8, label %170

.preheader8:                                      ; preds = %160
  br label %162

162:                                              ; preds = %164, %.preheader8
  %storemerge29 = phi i32 [ %168, %164 ], [ 0, %.preheader8 ]
  %163 = icmp slt i32 %storemerge29, 3
  br i1 %163, label %164, label %169

164:                                              ; preds = %162
  %165 = shl i32 %storemerge29, 6
  %.reass46 = add nuw nsw i32 %165, 0
  %166 = sext i32 %.reass46 to i64
  %167 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %166
  store i32 1, ptr %167, align 4
  %168 = add nsw i32 %storemerge29, 1
  br label %162, !llvm.loop !43

169:                                              ; preds = %162
  %storemerge29.lcssa = phi i32 [ %storemerge29, %162 ]
  br label %160, !llvm.loop !44

170:                                              ; preds = %160
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %160 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %160 ]
  br label %158, !llvm.loop !45

171:                                              ; preds = %158
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %158 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %158 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %158 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %172

172:                                              ; preds = %184, %171
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %171 ], [ %storemerge27.lcssa52.lcssa, %184 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %171 ], [ %storemerge26.lcssa, %184 ]
  %storemerge12 = phi i32 [ 0, %171 ], [ %185, %184 ]
  %173 = icmp slt i32 %storemerge12, 2
  br i1 %173, label %.preheader7, label %186

.preheader7:                                      ; preds = %172
  br label %174

174:                                              ; preds = %182, %.preheader7
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %182 ], [ poison, %.preheader7 ]
  %storemerge26 = phi i32 [ %183, %182 ], [ 0, %.preheader7 ]
  %175 = icmp slt i32 %storemerge26, 2
  br i1 %175, label %.preheader6, label %184

.preheader6:                                      ; preds = %174
  %176 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = add nuw nsw i32 %176, %storemerge12
  br label %177

177:                                              ; preds = %179, %.preheader6
  %storemerge27 = phi i32 [ 1, %179 ], [ 0, %.preheader6 ]
  %178 = icmp slt i32 %storemerge27, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %.reass51 = add nuw nsw i32 0, %invariant.op50
  %180 = zext nneg i32 %.reass51 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %180
  store i32 1, ptr %181, align 4
  br label %177, !llvm.loop !46

182:                                              ; preds = %177
  %storemerge27.lcssa = phi i32 [ %storemerge27, %177 ]
  %183 = add nuw nsw i32 %storemerge26, 1
  br label %174, !llvm.loop !47

184:                                              ; preds = %174
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %174 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %174 ]
  %185 = add nuw nsw i32 %storemerge12, 1
  br label %172, !llvm.loop !48

186:                                              ; preds = %172
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %172 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %172 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %172 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %187

187:                                              ; preds = %199, %186
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %186 ], [ %storemerge25.lcssa57.lcssa, %199 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %186 ], [ %storemerge24.lcssa, %199 ]
  %storemerge13 = phi i32 [ 0, %186 ], [ %200, %199 ]
  %188 = icmp slt i32 %storemerge13, 2
  br i1 %188, label %.preheader5, label %201

.preheader5:                                      ; preds = %187
  br label %189

189:                                              ; preds = %198, %.preheader5
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %198 ], [ poison, %.preheader5 ]
  %storemerge24 = phi i32 [ 1, %198 ], [ 0, %.preheader5 ]
  %190 = icmp slt i32 %storemerge24, 1
  br i1 %190, label %.preheader4, label %199

.preheader4:                                      ; preds = %189
  %invariant.op55 = add nuw nsw i32 0, %storemerge13
  br label %191

191:                                              ; preds = %193, %.preheader4
  %storemerge25 = phi i32 [ %197, %193 ], [ 0, %.preheader4 ]
  %192 = icmp slt i32 %storemerge25, 2
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  %194 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = add nuw nsw i32 %194, %invariant.op55
  %195 = zext nneg i32 %.reass56 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %195
  store i32 1, ptr %196, align 4
  %197 = add nuw nsw i32 %storemerge25, 1
  br label %191, !llvm.loop !49

198:                                              ; preds = %191
  %storemerge25.lcssa = phi i32 [ %storemerge25, %191 ]
  br label %189, !llvm.loop !50

199:                                              ; preds = %189
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %189 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %189 ]
  %200 = add nuw nsw i32 %storemerge13, 1
  br label %187, !llvm.loop !51

201:                                              ; preds = %187
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %187 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %187 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %187 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %202

202:                                              ; preds = %216, %201
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %201 ], [ %storemerge23.lcssa62.lcssa, %216 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %201 ], [ %storemerge22.lcssa, %216 ]
  %storemerge14 = phi i32 [ 0, %201 ], [ 1, %216 ]
  %203 = icmp slt i32 %storemerge14, 1
  br i1 %203, label %.preheader3, label %217

.preheader3:                                      ; preds = %202
  br label %204

204:                                              ; preds = %214, %.preheader3
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %214 ], [ poison, %.preheader3 ]
  %storemerge22 = phi i32 [ %215, %214 ], [ 0, %.preheader3 ]
  %205 = icmp slt i32 %storemerge22, 2
  br i1 %205, label %.preheader2, label %216

.preheader2:                                      ; preds = %204
  %206 = shl nuw nsw i32 %storemerge22, 3
  %invariant.op60 = add nuw nsw i32 %206, 0
  br label %207

207:                                              ; preds = %209, %.preheader2
  %storemerge23 = phi i32 [ %213, %209 ], [ 0, %.preheader2 ]
  %208 = icmp slt i32 %storemerge23, 2
  br i1 %208, label %209, label %214

209:                                              ; preds = %207
  %210 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = add nuw nsw i32 %210, %invariant.op60
  %211 = zext nneg i32 %.reass61 to i64
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %211
  store i32 1, ptr %212, align 4
  %213 = add nuw nsw i32 %storemerge23, 1
  br label %207, !llvm.loop !52

214:                                              ; preds = %207
  %storemerge23.lcssa = phi i32 [ %storemerge23, %207 ]
  %215 = add nuw nsw i32 %storemerge22, 1
  br label %204, !llvm.loop !53

216:                                              ; preds = %204
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %204 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %204 ]
  br label %202, !llvm.loop !54

217:                                              ; preds = %202
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %202 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %202 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %202 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %218

218:                                              ; preds = %232, %217
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %217 ], [ %storemerge21.lcssa67.lcssa, %232 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %217 ], [ %storemerge20.lcssa, %232 ]
  %storemerge15 = phi i32 [ 0, %217 ], [ %233, %232 ]
  %219 = icmp slt i32 %storemerge15, 2
  br i1 %219, label %.preheader1, label %234

.preheader1:                                      ; preds = %218
  br label %220

220:                                              ; preds = %230, %.preheader1
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %230 ], [ poison, %.preheader1 ]
  %storemerge20 = phi i32 [ %231, %230 ], [ 0, %.preheader1 ]
  %221 = icmp slt i32 %storemerge20, 2
  br i1 %221, label %.preheader, label %232

.preheader:                                       ; preds = %220
  %222 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op65 = add nuw nsw i32 %222, %storemerge15
  br label %223

223:                                              ; preds = %225, %.preheader
  %storemerge21 = phi i32 [ %229, %225 ], [ 0, %.preheader ]
  %224 = icmp slt i32 %storemerge21, 2
  br i1 %224, label %225, label %230

225:                                              ; preds = %223
  %226 = shl nuw nsw i32 %storemerge21, 6
  %.reass66 = add nuw nsw i32 %226, %invariant.op65
  %227 = zext nneg i32 %.reass66 to i64
  %228 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %227
  store i32 1, ptr %228, align 4
  %229 = add nuw nsw i32 %storemerge21, 1
  br label %223, !llvm.loop !55

230:                                              ; preds = %223
  %storemerge21.lcssa = phi i32 [ %storemerge21, %223 ]
  %231 = add nuw nsw i32 %storemerge20, 1
  br label %220, !llvm.loop !56

232:                                              ; preds = %220
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %220 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %220 ]
  %233 = add nuw nsw i32 %storemerge15, 1
  br label %218, !llvm.loop !57

234:                                              ; preds = %218
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %218 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %218 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %218 ]
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
  %235 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %235, 0
  br i1 %.not, label %239, label %236

236:                                              ; preds = %234
  %237 = load i32, ptr %4, align 4
  %238 = call i32 @Place(i32 noundef 0, i32 noundef %237)
  store i32 %238, ptr @n, align 4
  br label %240

239:                                              ; preds = %234
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %240

240:                                              ; preds = %239, %236
  %241 = load i32, ptr @n, align 4
  %242 = call i32 @Trial(i32 noundef %241)
  %.not16 = icmp eq i32 %242, 0
  br i1 %.not16, label %243, label %244

243:                                              ; preds = %240
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %247

244:                                              ; preds = %240
  %245 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %245, 2005
  br i1 %.not18, label %247, label %246

246:                                              ; preds = %244
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %247

247:                                              ; preds = %246, %244, %243
  %248 = load i32, ptr @n, align 4
  %249 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %248) #4
  %250 = load i32, ptr @kount, align 4
  %251 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %250) #4
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
