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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  br i1 %11, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %.preheader31 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %.preheader31 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %.preheader31 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %.preheader28

.preheader30:                                     ; preds = %20, %.preheader30.preheader
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %20 ], [ poison, %.preheader30.preheader ]
  %storemerge47 = phi i32 [ %21, %20 ], [ 1, %.preheader30.preheader ]
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

.preheader26:                                     ; preds = %43, %.preheader26.preheader
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7.lcssa, %43 ], [ poison, %.preheader26.preheader ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44.lcssa, %43 ], [ poison, %.preheader26.preheader ]
  %storemerge3 = phi i32 [ %44, %43 ], [ 0, %.preheader26.preheader ]
  %34 = icmp slt i32 %storemerge3, 4
  br i1 %34, label %.preheader25.preheader, label %45

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %41, %.preheader25.preheader
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %41 ], [ poison, %.preheader25.preheader ]
  %storemerge44 = phi i32 [ %42, %41 ], [ 0, %.preheader25.preheader ]
  %35 = icmp slt i32 %storemerge44, 2
  br i1 %35, label %.preheader24.preheader, label %43

.preheader24.preheader:                           ; preds = %.preheader25
  %36 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = add nsw i32 %36, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %38, %.preheader24.preheader
  %storemerge45 = phi i32 [ 1, %38 ], [ 0, %.preheader24.preheader ]
  %37 = icmp slt i32 %storemerge45, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %.preheader24
  %.reass6 = add nuw nsw i32 0, %invariant.op5
  %39 = sext i32 %.reass6 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @p, i64 %39
  store i32 1, ptr %40, align 4
  br label %.preheader24, !llvm.loop !19

41:                                               ; preds = %.preheader24
  %storemerge45.lcssa = phi i32 [ %storemerge45, %.preheader24 ]
  %42 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

43:                                               ; preds = %.preheader25
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %.preheader25 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %.preheader25 ]
  %44 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

45:                                               ; preds = %.preheader26
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %.preheader26 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %.preheader26 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %.preheader26 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %46

46:                                               ; preds = %56, %45
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %45 ], [ %storemerge43.lcssa12.lcssa, %56 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %45 ], [ %storemerge42.lcssa, %56 ]
  %storemerge4 = phi i32 [ 0, %45 ], [ %57, %56 ]
  %47 = icmp slt i32 %storemerge4, 2
  br i1 %47, label %.preheader23.preheader, label %58

.preheader23.preheader:                           ; preds = %46
  br label %.preheader23

.preheader23:                                     ; preds = %55, %.preheader23.preheader
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %55 ], [ poison, %.preheader23.preheader ]
  %storemerge42 = phi i32 [ 1, %55 ], [ 0, %.preheader23.preheader ]
  %48 = icmp slt i32 %storemerge42, 1
  br i1 %48, label %.preheader22.preheader, label %56

.preheader22.preheader:                           ; preds = %.preheader23
  %invariant.op10 = add nuw nsw i32 0, %storemerge4
  br label %.preheader22

.preheader22:                                     ; preds = %50, %.preheader22.preheader
  %storemerge43 = phi i32 [ %54, %50 ], [ 0, %.preheader22.preheader ]
  %49 = icmp slt i32 %storemerge43, 4
  br i1 %49, label %50, label %55

50:                                               ; preds = %.preheader22
  %51 = shl i32 %storemerge43, 6
  %.reass11 = add nuw i32 %51, %invariant.op10
  %52 = sext i32 %.reass11 to i64
  %53 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %52
  store i32 1, ptr %53, align 4
  %54 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

55:                                               ; preds = %.preheader22
  %storemerge43.lcssa = phi i32 [ %storemerge43, %.preheader22 ]
  br label %.preheader23, !llvm.loop !23

56:                                               ; preds = %.preheader23
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %.preheader23 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %.preheader23 ]
  %57 = add nuw nsw i32 %storemerge4, 1
  br label %46, !llvm.loop !24

58:                                               ; preds = %46
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %46 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %46 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %46 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %59

59:                                               ; preds = %71, %58
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %58 ], [ %storemerge41.lcssa17.lcssa, %71 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %58 ], [ %storemerge40.lcssa, %71 ]
  %storemerge5 = phi i32 [ 0, %58 ], [ 1, %71 ]
  %60 = icmp slt i32 %storemerge5, 1
  br i1 %60, label %.preheader21.preheader, label %72

.preheader21.preheader:                           ; preds = %59
  br label %.preheader21

.preheader21:                                     ; preds = %69, %.preheader21.preheader
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %69 ], [ poison, %.preheader21.preheader ]
  %storemerge40 = phi i32 [ %70, %69 ], [ 0, %.preheader21.preheader ]
  %61 = icmp slt i32 %storemerge40, 4
  br i1 %61, label %.preheader20.preheader, label %71

.preheader20.preheader:                           ; preds = %.preheader21
  %62 = shl i32 %storemerge40, 3
  %invariant.op15 = add nuw nsw i32 %62, 0
  br label %.preheader20

.preheader20:                                     ; preds = %64, %.preheader20.preheader
  %storemerge41 = phi i32 [ %68, %64 ], [ 0, %.preheader20.preheader ]
  %63 = icmp slt i32 %storemerge41, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %.preheader20
  %65 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = add i32 %65, %invariant.op15
  %66 = sext i32 %.reass16 to i64
  %67 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %66
  store i32 1, ptr %67, align 4
  %68 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

69:                                               ; preds = %.preheader20
  %storemerge41.lcssa = phi i32 [ %storemerge41, %.preheader20 ]
  %70 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

71:                                               ; preds = %.preheader21
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %.preheader21 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %.preheader21 ]
  br label %59, !llvm.loop !27

72:                                               ; preds = %59
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %59 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %59 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %59 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %73

73:                                               ; preds = %83, %72
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %72 ], [ %storemerge39.lcssa22.lcssa, %83 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %72 ], [ %storemerge38.lcssa, %83 ]
  %storemerge6 = phi i32 [ 0, %72 ], [ %84, %83 ]
  %74 = icmp slt i32 %storemerge6, 2
  br i1 %74, label %.preheader19.preheader, label %85

.preheader19.preheader:                           ; preds = %73
  br label %.preheader19

.preheader19:                                     ; preds = %81, %.preheader19.preheader
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %81 ], [ poison, %.preheader19.preheader ]
  %storemerge38 = phi i32 [ %82, %81 ], [ 0, %.preheader19.preheader ]
  %75 = icmp slt i32 %storemerge38, 4
  br i1 %75, label %.preheader18.preheader, label %83

.preheader18.preheader:                           ; preds = %.preheader19
  %76 = shl i32 %storemerge38, 3
  %invariant.op20 = add nuw i32 %76, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %78, %.preheader18.preheader
  %storemerge39 = phi i32 [ 1, %78 ], [ 0, %.preheader18.preheader ]
  %77 = icmp slt i32 %storemerge39, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %.preheader18
  %.reass21 = add nuw nsw i32 0, %invariant.op20
  %79 = sext i32 %.reass21 to i64
  %80 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %79
  store i32 1, ptr %80, align 4
  br label %.preheader18, !llvm.loop !28

81:                                               ; preds = %.preheader18
  %storemerge39.lcssa = phi i32 [ %storemerge39, %.preheader18 ]
  %82 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

83:                                               ; preds = %.preheader19
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %.preheader19 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %.preheader19 ]
  %84 = add nuw nsw i32 %storemerge6, 1
  br label %73, !llvm.loop !30

85:                                               ; preds = %73
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %73 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %73 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %73 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %86

86:                                               ; preds = %96, %85
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %85 ], [ %storemerge37.lcssa27.lcssa, %96 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %85 ], [ %storemerge36.lcssa, %96 ]
  %storemerge7 = phi i32 [ 0, %85 ], [ %97, %96 ]
  %87 = icmp slt i32 %storemerge7, 4
  br i1 %87, label %.preheader17.preheader, label %98

.preheader17.preheader:                           ; preds = %86
  br label %.preheader17

.preheader17:                                     ; preds = %95, %.preheader17.preheader
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %95 ], [ poison, %.preheader17.preheader ]
  %storemerge36 = phi i32 [ 1, %95 ], [ 0, %.preheader17.preheader ]
  %88 = icmp slt i32 %storemerge36, 1
  br i1 %88, label %.preheader16.preheader, label %96

.preheader16.preheader:                           ; preds = %.preheader17
  %invariant.op25 = add nuw nsw i32 0, %storemerge7
  br label %.preheader16

.preheader16:                                     ; preds = %90, %.preheader16.preheader
  %storemerge37 = phi i32 [ %94, %90 ], [ 0, %.preheader16.preheader ]
  %89 = icmp slt i32 %storemerge37, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %.preheader16
  %91 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = add nsw i32 %91, %invariant.op25
  %92 = sext i32 %.reass26 to i64
  %93 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %92
  store i32 1, ptr %93, align 4
  %94 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

95:                                               ; preds = %.preheader16
  %storemerge37.lcssa = phi i32 [ %storemerge37, %.preheader16 ]
  br label %.preheader17, !llvm.loop !32

96:                                               ; preds = %.preheader17
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %.preheader17 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %.preheader17 ]
  %97 = add nsw i32 %storemerge7, 1
  br label %86, !llvm.loop !33

98:                                               ; preds = %86
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %86 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %86 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %86 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %99

99:                                               ; preds = %111, %98
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %98 ], [ %storemerge35.lcssa32.lcssa, %111 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %98 ], [ %storemerge34.lcssa, %111 ]
  %storemerge8 = phi i32 [ 0, %98 ], [ 1, %111 ]
  %100 = icmp slt i32 %storemerge8, 1
  br i1 %100, label %.preheader15.preheader, label %112

.preheader15.preheader:                           ; preds = %99
  br label %.preheader15

.preheader15:                                     ; preds = %109, %.preheader15.preheader
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %109 ], [ poison, %.preheader15.preheader ]
  %storemerge34 = phi i32 [ %110, %109 ], [ 0, %.preheader15.preheader ]
  %101 = icmp slt i32 %storemerge34, 2
  br i1 %101, label %.preheader14.preheader, label %111

.preheader14.preheader:                           ; preds = %.preheader15
  %102 = shl nuw nsw i32 %storemerge34, 3
  %invariant.op30 = add nuw nsw i32 %102, 0
  br label %.preheader14

.preheader14:                                     ; preds = %104, %.preheader14.preheader
  %storemerge35 = phi i32 [ %108, %104 ], [ 0, %.preheader14.preheader ]
  %103 = icmp slt i32 %storemerge35, 4
  br i1 %103, label %104, label %109

104:                                              ; preds = %.preheader14
  %105 = shl i32 %storemerge35, 6
  %.reass31 = add nuw i32 %105, %invariant.op30
  %106 = sext i32 %.reass31 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %106
  store i32 1, ptr %107, align 4
  %108 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

109:                                              ; preds = %.preheader14
  %storemerge35.lcssa = phi i32 [ %storemerge35, %.preheader14 ]
  %110 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

111:                                              ; preds = %.preheader15
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %.preheader15 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %.preheader15 ]
  br label %99, !llvm.loop !36

112:                                              ; preds = %99
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %99 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %99 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %99 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %113

113:                                              ; preds = %121, %112
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %112 ], [ %storemerge33.lcssa37.lcssa, %121 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %112 ], [ %storemerge32.lcssa, %121 ]
  %storemerge9 = phi i32 [ 0, %112 ], [ %122, %121 ]
  %114 = icmp slt i32 %storemerge9, 3
  br i1 %114, label %.preheader13.preheader, label %123

.preheader13.preheader:                           ; preds = %113
  br label %.preheader13

.preheader13:                                     ; preds = %120, %.preheader13.preheader
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %120 ], [ poison, %.preheader13.preheader ]
  %storemerge32 = phi i32 [ 1, %120 ], [ 0, %.preheader13.preheader ]
  %115 = icmp slt i32 %storemerge32, 1
  br i1 %115, label %.preheader12.preheader, label %121

.preheader12.preheader:                           ; preds = %.preheader13
  %invariant.op35 = add nuw nsw i32 0, %storemerge9
  br label %.preheader12

.preheader12:                                     ; preds = %117, %.preheader12.preheader
  %storemerge33 = phi i32 [ 1, %117 ], [ 0, %.preheader12.preheader ]
  %116 = icmp slt i32 %storemerge33, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %.preheader12
  %.reass36 = add nuw nsw i32 0, %invariant.op35
  %118 = sext i32 %.reass36 to i64
  %119 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %118
  store i32 1, ptr %119, align 4
  br label %.preheader12, !llvm.loop !37

120:                                              ; preds = %.preheader12
  %storemerge33.lcssa = phi i32 [ %storemerge33, %.preheader12 ]
  br label %.preheader13, !llvm.loop !38

121:                                              ; preds = %.preheader13
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %.preheader13 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %.preheader13 ]
  %122 = add nsw i32 %storemerge9, 1
  br label %113, !llvm.loop !39

123:                                              ; preds = %113
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %113 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %113 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %113 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %124

124:                                              ; preds = %134, %123
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %123 ], [ %storemerge31.lcssa42.lcssa, %134 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %123 ], [ %storemerge30.lcssa, %134 ]
  %storemerge10 = phi i32 [ 0, %123 ], [ 1, %134 ]
  %125 = icmp slt i32 %storemerge10, 1
  br i1 %125, label %.preheader11.preheader, label %135

.preheader11.preheader:                           ; preds = %124
  br label %.preheader11

.preheader11:                                     ; preds = %132, %.preheader11.preheader
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %132 ], [ poison, %.preheader11.preheader ]
  %storemerge30 = phi i32 [ %133, %132 ], [ 0, %.preheader11.preheader ]
  %126 = icmp slt i32 %storemerge30, 3
  br i1 %126, label %.preheader10.preheader, label %134

.preheader10.preheader:                           ; preds = %.preheader11
  %127 = shl i32 %storemerge30, 3
  %invariant.op40 = add nuw nsw i32 %127, 0
  br label %.preheader10

.preheader10:                                     ; preds = %129, %.preheader10.preheader
  %storemerge31 = phi i32 [ 1, %129 ], [ 0, %.preheader10.preheader ]
  %128 = icmp slt i32 %storemerge31, 1
  br i1 %128, label %129, label %132

129:                                              ; preds = %.preheader10
  %.reass41 = add nuw nsw i32 0, %invariant.op40
  %130 = sext i32 %.reass41 to i64
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %130
  store i32 1, ptr %131, align 4
  br label %.preheader10, !llvm.loop !40

132:                                              ; preds = %.preheader10
  %storemerge31.lcssa = phi i32 [ %storemerge31, %.preheader10 ]
  %133 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

134:                                              ; preds = %.preheader11
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %.preheader11 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %.preheader11 ]
  br label %124, !llvm.loop !42

135:                                              ; preds = %124
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %124 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %124 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %124 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %136

136:                                              ; preds = %146, %135
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %135 ], [ %storemerge29.lcssa47.lcssa, %146 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %135 ], [ %storemerge28.lcssa, %146 ]
  %storemerge11 = phi i32 [ 0, %135 ], [ 1, %146 ]
  %137 = icmp slt i32 %storemerge11, 1
  br i1 %137, label %.preheader9.preheader, label %147

.preheader9.preheader:                            ; preds = %136
  br label %.preheader9

.preheader9:                                      ; preds = %145, %.preheader9.preheader
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %145 ], [ poison, %.preheader9.preheader ]
  %storemerge28 = phi i32 [ 1, %145 ], [ 0, %.preheader9.preheader ]
  %138 = icmp slt i32 %storemerge28, 1
  br i1 %138, label %.preheader8.preheader, label %146

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %140, %.preheader8.preheader
  %storemerge29 = phi i32 [ %144, %140 ], [ 0, %.preheader8.preheader ]
  %139 = icmp slt i32 %storemerge29, 3
  br i1 %139, label %140, label %145

140:                                              ; preds = %.preheader8
  %141 = shl i32 %storemerge29, 6
  %.reass46 = add nuw nsw i32 %141, 0
  %142 = sext i32 %.reass46 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

145:                                              ; preds = %.preheader8
  %storemerge29.lcssa = phi i32 [ %storemerge29, %.preheader8 ]
  br label %.preheader9, !llvm.loop !44

146:                                              ; preds = %.preheader9
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %.preheader9 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %.preheader9 ]
  br label %136, !llvm.loop !45

147:                                              ; preds = %136
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %136 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %136 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %136 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %148

148:                                              ; preds = %158, %147
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %147 ], [ %storemerge27.lcssa52.lcssa, %158 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %147 ], [ %storemerge26.lcssa, %158 ]
  %storemerge12 = phi i32 [ 0, %147 ], [ %159, %158 ]
  %149 = icmp slt i32 %storemerge12, 2
  br i1 %149, label %.preheader7.preheader, label %160

.preheader7.preheader:                            ; preds = %148
  br label %.preheader7

.preheader7:                                      ; preds = %156, %.preheader7.preheader
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %156 ], [ poison, %.preheader7.preheader ]
  %storemerge26 = phi i32 [ %157, %156 ], [ 0, %.preheader7.preheader ]
  %150 = icmp slt i32 %storemerge26, 2
  br i1 %150, label %.preheader6.preheader, label %158

.preheader6.preheader:                            ; preds = %.preheader7
  %151 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = add nuw nsw i32 %151, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %153, %.preheader6.preheader
  %storemerge27 = phi i32 [ 1, %153 ], [ 0, %.preheader6.preheader ]
  %152 = icmp slt i32 %storemerge27, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %.preheader6
  %.reass51 = add nuw nsw i32 0, %invariant.op50
  %154 = zext nneg i32 %.reass51 to i64
  %155 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %154
  store i32 1, ptr %155, align 4
  br label %.preheader6, !llvm.loop !46

156:                                              ; preds = %.preheader6
  %storemerge27.lcssa = phi i32 [ %storemerge27, %.preheader6 ]
  %157 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

158:                                              ; preds = %.preheader7
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %.preheader7 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %.preheader7 ]
  %159 = add nuw nsw i32 %storemerge12, 1
  br label %148, !llvm.loop !48

160:                                              ; preds = %148
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %148 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %148 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %148 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %161

161:                                              ; preds = %171, %160
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %160 ], [ %storemerge25.lcssa57.lcssa, %171 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %160 ], [ %storemerge24.lcssa, %171 ]
  %storemerge13 = phi i32 [ 0, %160 ], [ %172, %171 ]
  %162 = icmp slt i32 %storemerge13, 2
  br i1 %162, label %.preheader5.preheader, label %173

.preheader5.preheader:                            ; preds = %161
  br label %.preheader5

.preheader5:                                      ; preds = %170, %.preheader5.preheader
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %170 ], [ poison, %.preheader5.preheader ]
  %storemerge24 = phi i32 [ 1, %170 ], [ 0, %.preheader5.preheader ]
  %163 = icmp slt i32 %storemerge24, 1
  br i1 %163, label %.preheader4.preheader, label %171

.preheader4.preheader:                            ; preds = %.preheader5
  %invariant.op55 = add nuw nsw i32 0, %storemerge13
  br label %.preheader4

.preheader4:                                      ; preds = %165, %.preheader4.preheader
  %storemerge25 = phi i32 [ %169, %165 ], [ 0, %.preheader4.preheader ]
  %164 = icmp slt i32 %storemerge25, 2
  br i1 %164, label %165, label %170

165:                                              ; preds = %.preheader4
  %166 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = add nuw nsw i32 %166, %invariant.op55
  %167 = zext nneg i32 %.reass56 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

170:                                              ; preds = %.preheader4
  %storemerge25.lcssa = phi i32 [ %storemerge25, %.preheader4 ]
  br label %.preheader5, !llvm.loop !50

171:                                              ; preds = %.preheader5
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %.preheader5 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %.preheader5 ]
  %172 = add nuw nsw i32 %storemerge13, 1
  br label %161, !llvm.loop !51

173:                                              ; preds = %161
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %161 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %161 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %161 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %174

174:                                              ; preds = %186, %173
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %173 ], [ %storemerge23.lcssa62.lcssa, %186 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %173 ], [ %storemerge22.lcssa, %186 ]
  %storemerge14 = phi i32 [ 0, %173 ], [ 1, %186 ]
  %175 = icmp slt i32 %storemerge14, 1
  br i1 %175, label %.preheader3.preheader, label %187

.preheader3.preheader:                            ; preds = %174
  br label %.preheader3

.preheader3:                                      ; preds = %184, %.preheader3.preheader
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %184 ], [ poison, %.preheader3.preheader ]
  %storemerge22 = phi i32 [ %185, %184 ], [ 0, %.preheader3.preheader ]
  %176 = icmp slt i32 %storemerge22, 2
  br i1 %176, label %.preheader2.preheader, label %186

.preheader2.preheader:                            ; preds = %.preheader3
  %177 = shl nuw nsw i32 %storemerge22, 3
  %invariant.op60 = add nuw nsw i32 %177, 0
  br label %.preheader2

.preheader2:                                      ; preds = %179, %.preheader2.preheader
  %storemerge23 = phi i32 [ %183, %179 ], [ 0, %.preheader2.preheader ]
  %178 = icmp slt i32 %storemerge23, 2
  br i1 %178, label %179, label %184

179:                                              ; preds = %.preheader2
  %180 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = add nuw nsw i32 %180, %invariant.op60
  %181 = zext nneg i32 %.reass61 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

184:                                              ; preds = %.preheader2
  %storemerge23.lcssa = phi i32 [ %storemerge23, %.preheader2 ]
  %185 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

186:                                              ; preds = %.preheader3
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %.preheader3 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %.preheader3 ]
  br label %174, !llvm.loop !54

187:                                              ; preds = %174
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %174 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %174 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %174 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %188

188:                                              ; preds = %200, %187
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %187 ], [ %storemerge21.lcssa67.lcssa, %200 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %187 ], [ %storemerge20.lcssa, %200 ]
  %storemerge15 = phi i32 [ 0, %187 ], [ %201, %200 ]
  %189 = icmp slt i32 %storemerge15, 2
  br i1 %189, label %.preheader1.preheader, label %202

.preheader1.preheader:                            ; preds = %188
  br label %.preheader1

.preheader1:                                      ; preds = %198, %.preheader1.preheader
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %198 ], [ poison, %.preheader1.preheader ]
  %storemerge20 = phi i32 [ %199, %198 ], [ 0, %.preheader1.preheader ]
  %190 = icmp slt i32 %storemerge20, 2
  br i1 %190, label %.preheader.preheader, label %200

.preheader.preheader:                             ; preds = %.preheader1
  %191 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op65 = add nuw nsw i32 %191, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %193, %.preheader.preheader
  %storemerge21 = phi i32 [ %197, %193 ], [ 0, %.preheader.preheader ]
  %192 = icmp slt i32 %storemerge21, 2
  br i1 %192, label %193, label %198

193:                                              ; preds = %.preheader
  %194 = shl nuw nsw i32 %storemerge21, 6
  %.reass66 = add nuw nsw i32 %194, %invariant.op65
  %195 = zext nneg i32 %.reass66 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %195
  store i32 1, ptr %196, align 4
  %197 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

198:                                              ; preds = %.preheader
  %storemerge21.lcssa = phi i32 [ %storemerge21, %.preheader ]
  %199 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

200:                                              ; preds = %.preheader1
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %.preheader1 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %.preheader1 ]
  %201 = add nuw nsw i32 %storemerge15, 1
  br label %188, !llvm.loop !57

202:                                              ; preds = %188
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %188 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %188 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %188 ]
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
  %203 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %203, 0
  br i1 %.not, label %207, label %204

204:                                              ; preds = %202
  %205 = load i32, ptr %4, align 4
  %206 = call i32 @Place(i32 noundef 0, i32 noundef %205)
  store i32 %206, ptr @n, align 4
  br label %208

207:                                              ; preds = %202
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, ptr @n, align 4
  %210 = call i32 @Trial(i32 noundef %209)
  %.not16 = icmp eq i32 %210, 0
  br i1 %.not16, label %211, label %212

211:                                              ; preds = %208
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %215

212:                                              ; preds = %208
  %213 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %213, 2005
  br i1 %.not18, label %215, label %214

214:                                              ; preds = %212
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %215

215:                                              ; preds = %214, %212, %211
  %216 = load i32, ptr @n, align 4
  %217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %216) #4
  %218 = load i32, ptr @kount, align 4
  %219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %218) #4
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
