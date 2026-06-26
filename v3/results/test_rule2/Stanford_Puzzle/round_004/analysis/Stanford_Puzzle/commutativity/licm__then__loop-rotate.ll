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
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %22, %21 ]
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  %20 = load i32, ptr %19, align 4
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %21, label %._crit_edge

21:                                               ; preds = %16, %12
  %22 = add nsw i32 %storemerge2, 1
  %.not = icmp sgt i32 %22, %9
  br i1 %.not, label %._crit_edge4, label %12, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %storemerge2, %16 ]
  %split3 = phi i32 [ 0, %16 ]
  br label %23

._crit_edge4:                                     ; preds = %21
  %split5 = phi i32 [ %22, %21 ]
  %split6 = phi i32 [ 1, %21 ]
  br label %23

23:                                               ; preds = %._crit_edge4, %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ %split5, %._crit_edge4 ], [ 0, %2 ]
  %storemerge1 = phi i32 [ %split3, %._crit_edge ], [ %split6, %._crit_edge4 ], [ 1, %2 ]
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
  %.not5 = icmp sgt i32 0, %9
  br i1 %.not5, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %20
  %storemerge6 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %13 = sext i32 %storemerge6 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = add nsw i32 %storemerge6, 1
  %.not = icmp sgt i32 %21, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %21, %20 ]
  %split7 = phi i64 [ %7, %20 ]
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split7, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %23 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %smax = call i32 @llvm.smax.i32(i32 %29, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond8 = icmp ne i64 %30, %wide.trip.count
  br i1 %exitcond8, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %22
  br label %31

31:                                               ; preds = %.lr.ph11, %37
  %32 = phi i32 [ %29, %.lr.ph11 ], [ %38, %37 ]
  %indvars.iv9 = phi i64 [ %30, %.lr.ph11 ], [ %indvars.iv.next, %37 ]
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv9
  %34 = load i32, ptr %33, align 4
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %35, label %37

35:                                               ; preds = %31
  %.lcssa2 = phi i32 [ %32, %31 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv9, %31 ]
  store i32 %.lcssa2, ptr %5, align 4
  %36 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %39

37:                                               ; preds = %31
  %indvars.iv.next = add nsw i64 %indvars.iv9, 1
  %38 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %31, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %37
  %split12 = phi i32 [ %38, %37 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %22
  %.lcssa1 = phi i32 [ %split12, %..loopexit_crit_edge ], [ %29, %22 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %39

39:                                               ; preds = %.loopexit, %35
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.loopexit ]
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
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %20
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %21, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !11

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %21, %20 ]
  %split4 = phi i64 [ %7, %20 ]
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split4, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %23 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %25
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
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %1, %25
  %storemerge2 = phi i32 [ 0, %1 ], [ %27, %25 ]
  %11 = phi i32 [ %.promoted, %1 ], [ %26, %25 ]
  %12 = sext i32 %storemerge2 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %25, label %18

18:                                               ; preds = %10
  %19 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %7)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %25, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %8)
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp ne i32 %22, 0
  %23 = icmp eq i32 %21, 0
  %or.cond = select i1 %.not3, i1 true, i1 %23
  br i1 %or.cond, label %29, label %24

24:                                               ; preds = %20
  call void @Remove(i32 noundef %storemerge2, i32 noundef %9)
  br label %25

25:                                               ; preds = %24, %18, %10
  %26 = phi i32 [ %21, %24 ], [ %11, %18 ], [ %11, %10 ]
  %27 = add nsw i32 %storemerge2, 1
  %28 = icmp slt i32 %27, 13
  br i1 %28, label %10, label %29, !llvm.loop !12

29:                                               ; preds = %20, %25
  %30 = phi i32 [ %21, %20 ], [ %26, %25 ]
  %storemerge.lcssa = phi i32 [ %storemerge2, %20 ], [ %27, %25 ]
  %storemerge1 = phi i32 [ 1, %20 ], [ 0, %25 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %30, ptr %4, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

.preheader31:                                     ; preds = %5
  %storemerge.lcssa = phi i32 [ %8, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %.preheader30

5:                                                ; preds = %0, %5
  %storemerge70 = phi i32 [ 0, %0 ], [ %8, %5 ]
  %6 = sext i32 %storemerge70 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = add nsw i32 %storemerge70, 1
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %5, label %.preheader31, !llvm.loop !13

.preheader30:                                     ; preds = %.preheader31, %20
  %storemerge173 = phi i32 [ 1, %.preheader31 ], [ %21, %20 ]
  br label %.preheader29

.preheader28:                                     ; preds = %20
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa, %20 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa, %20 ]
  %storemerge1.lcssa = phi i32 [ %21, %20 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %.preheader27

.preheader29:                                     ; preds = %.preheader30, %17
  %storemerge4772 = phi i32 [ 1, %.preheader30 ], [ %18, %17 ]
  %10 = shl i32 %storemerge4772, 3
  %invariant.op = add i32 %10, %storemerge173
  br label %11

11:                                               ; preds = %.preheader29, %11
  %storemerge4871 = phi i32 [ 1, %.preheader29 ], [ %15, %11 ]
  %12 = shl i32 %storemerge4871, 6
  %.reass = add i32 %12, %invariant.op
  %13 = sext i32 %.reass to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  %15 = add nsw i32 %storemerge4871, 1
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %11, label %17, !llvm.loop !14

17:                                               ; preds = %11
  %storemerge48.lcssa = phi i32 [ %15, %11 ]
  %18 = add nsw i32 %storemerge4772, 1
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %.preheader29, label %20, !llvm.loop !15

20:                                               ; preds = %17
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa, %17 ]
  %storemerge47.lcssa = phi i32 [ %18, %17 ]
  %21 = add nsw i32 %storemerge173, 1
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %.preheader30, label %.preheader28, !llvm.loop !16

.preheader27:                                     ; preds = %.preheader28, %30
  %storemerge275 = phi i32 [ 0, %.preheader28 ], [ %31, %30 ]
  %23 = sext i32 %storemerge275 to i64
  %24 = getelementptr inbounds [2048 x i8], ptr @p, i64 %23
  br label %25

.preheader26:                                     ; preds = %30
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa, %30 ]
  %storemerge2.lcssa = phi i32 [ %31, %30 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %.preheader25

25:                                               ; preds = %.preheader27, %25
  %storemerge4674 = phi i32 [ 0, %.preheader27 ], [ %28, %25 ]
  %26 = sext i32 %storemerge4674 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %24, i64 %26
  store i32 0, ptr %27, align 4
  %28 = add nsw i32 %storemerge4674, 1
  %29 = icmp slt i32 %28, 512
  br i1 %29, label %25, label %30, !llvm.loop !17

30:                                               ; preds = %25
  %storemerge46.lcssa = phi i32 [ %28, %25 ]
  %31 = add nsw i32 %storemerge275, 1
  %32 = icmp slt i32 %31, 13
  br i1 %32, label %.preheader27, label %.preheader26, !llvm.loop !18

.preheader25:                                     ; preds = %.preheader26, %43
  %storemerge378 = phi i32 [ 0, %.preheader26 ], [ %44, %43 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %40
  %storemerge4477 = phi i32 [ 0, %.preheader25 ], [ %41, %40 ]
  %33 = shl i32 %storemerge4477, 3
  %invariant.op5 = add i32 %33, %storemerge378
  br label %34

34:                                               ; preds = %.preheader24, %34
  %storemerge4576 = phi i32 [ 0, %.preheader24 ], [ %38, %34 ]
  %35 = shl i32 %storemerge4576, 6
  %.reass6 = add i32 %35, %invariant.op5
  %36 = sext i32 %.reass6 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @p, i64 %36
  store i32 1, ptr %37, align 4
  %38 = add nsw i32 %storemerge4576, 1
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %34, label %40, !llvm.loop !19

40:                                               ; preds = %34
  %storemerge45.lcssa = phi i32 [ %38, %34 ]
  %41 = add nsw i32 %storemerge4477, 1
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %.preheader24, label %43, !llvm.loop !20

43:                                               ; preds = %40
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa, %40 ]
  %storemerge44.lcssa = phi i32 [ %41, %40 ]
  %44 = add nsw i32 %storemerge378, 1
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %.preheader25, label %46, !llvm.loop !21

46:                                               ; preds = %43
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa, %43 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa, %43 ]
  %storemerge3.lcssa = phi i32 [ %44, %43 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23

.preheader23:                                     ; preds = %46, %57
  %storemerge481 = phi i32 [ 0, %46 ], [ %58, %57 ]
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %54
  %storemerge4280 = phi i32 [ 0, %.preheader23 ], [ %55, %54 ]
  %47 = shl i32 %storemerge4280, 3
  %invariant.op10 = add i32 %47, %storemerge481
  br label %48

48:                                               ; preds = %.preheader22, %48
  %storemerge4379 = phi i32 [ 0, %.preheader22 ], [ %52, %48 ]
  %49 = shl i32 %storemerge4379, 6
  %.reass11 = add i32 %49, %invariant.op10
  %50 = sext i32 %.reass11 to i64
  %51 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %50
  store i32 1, ptr %51, align 4
  %52 = add nsw i32 %storemerge4379, 1
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %48, label %54, !llvm.loop !22

54:                                               ; preds = %48
  %storemerge43.lcssa = phi i32 [ %52, %48 ]
  %55 = add nsw i32 %storemerge4280, 1
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %.preheader22, label %57, !llvm.loop !23

57:                                               ; preds = %54
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa, %54 ]
  %storemerge42.lcssa = phi i32 [ %55, %54 ]
  %58 = add nsw i32 %storemerge481, 1
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %.preheader23, label %60, !llvm.loop !24

60:                                               ; preds = %57
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa, %57 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa, %57 ]
  %storemerge4.lcssa = phi i32 [ %58, %57 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21

.preheader21:                                     ; preds = %60, %71
  %storemerge584 = phi i32 [ 0, %60 ], [ %72, %71 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %68
  %storemerge4083 = phi i32 [ 0, %.preheader21 ], [ %69, %68 ]
  %61 = shl i32 %storemerge4083, 3
  %invariant.op15 = add i32 %61, %storemerge584
  br label %62

62:                                               ; preds = %.preheader20, %62
  %storemerge4182 = phi i32 [ 0, %.preheader20 ], [ %66, %62 ]
  %63 = shl i32 %storemerge4182, 6
  %.reass16 = add i32 %63, %invariant.op15
  %64 = sext i32 %.reass16 to i64
  %65 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %64
  store i32 1, ptr %65, align 4
  %66 = add nsw i32 %storemerge4182, 1
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %62, label %68, !llvm.loop !25

68:                                               ; preds = %62
  %storemerge41.lcssa = phi i32 [ %66, %62 ]
  %69 = add nsw i32 %storemerge4083, 1
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %.preheader20, label %71, !llvm.loop !26

71:                                               ; preds = %68
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa, %68 ]
  %storemerge40.lcssa = phi i32 [ %69, %68 ]
  %72 = add nsw i32 %storemerge584, 1
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %.preheader21, label %74, !llvm.loop !27

74:                                               ; preds = %71
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa, %71 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa, %71 ]
  %storemerge5.lcssa = phi i32 [ %72, %71 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19

.preheader19:                                     ; preds = %74, %85
  %storemerge687 = phi i32 [ 0, %74 ], [ %86, %85 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %82
  %storemerge3886 = phi i32 [ 0, %.preheader19 ], [ %83, %82 ]
  %75 = shl i32 %storemerge3886, 3
  %invariant.op20 = add i32 %75, %storemerge687
  br label %76

76:                                               ; preds = %.preheader18, %76
  %storemerge3985 = phi i32 [ 0, %.preheader18 ], [ %80, %76 ]
  %77 = shl i32 %storemerge3985, 6
  %.reass21 = add i32 %77, %invariant.op20
  %78 = sext i32 %.reass21 to i64
  %79 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nsw i32 %storemerge3985, 1
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %76, label %82, !llvm.loop !28

82:                                               ; preds = %76
  %storemerge39.lcssa = phi i32 [ %80, %76 ]
  %83 = add nsw i32 %storemerge3886, 1
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %.preheader18, label %85, !llvm.loop !29

85:                                               ; preds = %82
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa, %82 ]
  %storemerge38.lcssa = phi i32 [ %83, %82 ]
  %86 = add nsw i32 %storemerge687, 1
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %.preheader19, label %88, !llvm.loop !30

88:                                               ; preds = %85
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa, %85 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa, %85 ]
  %storemerge6.lcssa = phi i32 [ %86, %85 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17

.preheader17:                                     ; preds = %88, %99
  %storemerge790 = phi i32 [ 0, %88 ], [ %100, %99 ]
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader17, %96
  %storemerge3689 = phi i32 [ 0, %.preheader17 ], [ %97, %96 ]
  %89 = shl i32 %storemerge3689, 3
  %invariant.op25 = add i32 %89, %storemerge790
  br label %90

90:                                               ; preds = %.preheader16, %90
  %storemerge3788 = phi i32 [ 0, %.preheader16 ], [ %94, %90 ]
  %91 = shl i32 %storemerge3788, 6
  %.reass26 = add i32 %91, %invariant.op25
  %92 = sext i32 %.reass26 to i64
  %93 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %92
  store i32 1, ptr %93, align 4
  %94 = add nsw i32 %storemerge3788, 1
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %90, label %96, !llvm.loop !31

96:                                               ; preds = %90
  %storemerge37.lcssa = phi i32 [ %94, %90 ]
  %97 = add nsw i32 %storemerge3689, 1
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %.preheader16, label %99, !llvm.loop !32

99:                                               ; preds = %96
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa, %96 ]
  %storemerge36.lcssa = phi i32 [ %97, %96 ]
  %100 = add nsw i32 %storemerge790, 1
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %.preheader17, label %102, !llvm.loop !33

102:                                              ; preds = %99
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa, %99 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa, %99 ]
  %storemerge7.lcssa = phi i32 [ %100, %99 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15

.preheader15:                                     ; preds = %102, %113
  %storemerge893 = phi i32 [ 0, %102 ], [ %114, %113 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %110
  %storemerge3492 = phi i32 [ 0, %.preheader15 ], [ %111, %110 ]
  %103 = shl i32 %storemerge3492, 3
  %invariant.op30 = add i32 %103, %storemerge893
  br label %104

104:                                              ; preds = %.preheader14, %104
  %storemerge3591 = phi i32 [ 0, %.preheader14 ], [ %108, %104 ]
  %105 = shl i32 %storemerge3591, 6
  %.reass31 = add i32 %105, %invariant.op30
  %106 = sext i32 %.reass31 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %106
  store i32 1, ptr %107, align 4
  %108 = add nsw i32 %storemerge3591, 1
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %104, label %110, !llvm.loop !34

110:                                              ; preds = %104
  %storemerge35.lcssa = phi i32 [ %108, %104 ]
  %111 = add nsw i32 %storemerge3492, 1
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %.preheader14, label %113, !llvm.loop !35

113:                                              ; preds = %110
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa, %110 ]
  %storemerge34.lcssa = phi i32 [ %111, %110 ]
  %114 = add nsw i32 %storemerge893, 1
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %.preheader15, label %116, !llvm.loop !36

116:                                              ; preds = %113
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa, %113 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa, %113 ]
  %storemerge8.lcssa = phi i32 [ %114, %113 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13

.preheader13:                                     ; preds = %116, %127
  %storemerge996 = phi i32 [ 0, %116 ], [ %128, %127 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader13, %124
  %storemerge3295 = phi i32 [ 0, %.preheader13 ], [ %125, %124 ]
  %117 = shl i32 %storemerge3295, 3
  %invariant.op35 = add i32 %117, %storemerge996
  br label %118

118:                                              ; preds = %.preheader12, %118
  %storemerge3394 = phi i32 [ 0, %.preheader12 ], [ %122, %118 ]
  %119 = shl i32 %storemerge3394, 6
  %.reass36 = add i32 %119, %invariant.op35
  %120 = sext i32 %.reass36 to i64
  %121 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %120
  store i32 1, ptr %121, align 4
  %122 = add nsw i32 %storemerge3394, 1
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %118, label %124, !llvm.loop !37

124:                                              ; preds = %118
  %storemerge33.lcssa = phi i32 [ %122, %118 ]
  %125 = add nsw i32 %storemerge3295, 1
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %.preheader12, label %127, !llvm.loop !38

127:                                              ; preds = %124
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa, %124 ]
  %storemerge32.lcssa = phi i32 [ %125, %124 ]
  %128 = add nsw i32 %storemerge996, 1
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %.preheader13, label %130, !llvm.loop !39

130:                                              ; preds = %127
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa, %127 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa, %127 ]
  %storemerge9.lcssa = phi i32 [ %128, %127 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11

.preheader11:                                     ; preds = %130, %141
  %storemerge1099 = phi i32 [ 0, %130 ], [ %142, %141 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %138
  %storemerge3098 = phi i32 [ 0, %.preheader11 ], [ %139, %138 ]
  %131 = shl i32 %storemerge3098, 3
  %invariant.op40 = add i32 %131, %storemerge1099
  br label %132

132:                                              ; preds = %.preheader10, %132
  %storemerge3197 = phi i32 [ 0, %.preheader10 ], [ %136, %132 ]
  %133 = shl i32 %storemerge3197, 6
  %.reass41 = add i32 %133, %invariant.op40
  %134 = sext i32 %.reass41 to i64
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %134
  store i32 1, ptr %135, align 4
  %136 = add nsw i32 %storemerge3197, 1
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %132, label %138, !llvm.loop !40

138:                                              ; preds = %132
  %storemerge31.lcssa = phi i32 [ %136, %132 ]
  %139 = add nsw i32 %storemerge3098, 1
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %.preheader10, label %141, !llvm.loop !41

141:                                              ; preds = %138
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa, %138 ]
  %storemerge30.lcssa = phi i32 [ %139, %138 ]
  %142 = add nsw i32 %storemerge1099, 1
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %.preheader11, label %144, !llvm.loop !42

144:                                              ; preds = %141
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa, %141 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa, %141 ]
  %storemerge10.lcssa = phi i32 [ %142, %141 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9

.preheader9:                                      ; preds = %144, %155
  %storemerge11102 = phi i32 [ 0, %144 ], [ %156, %155 ]
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader9, %152
  %storemerge28101 = phi i32 [ 0, %.preheader9 ], [ %153, %152 ]
  %145 = shl i32 %storemerge28101, 3
  %invariant.op45 = add i32 %145, %storemerge11102
  br label %146

146:                                              ; preds = %.preheader8, %146
  %storemerge29100 = phi i32 [ 0, %.preheader8 ], [ %150, %146 ]
  %147 = shl i32 %storemerge29100, 6
  %.reass46 = add i32 %147, %invariant.op45
  %148 = sext i32 %.reass46 to i64
  %149 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %148
  store i32 1, ptr %149, align 4
  %150 = add nsw i32 %storemerge29100, 1
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %146, label %152, !llvm.loop !43

152:                                              ; preds = %146
  %storemerge29.lcssa = phi i32 [ %150, %146 ]
  %153 = add nsw i32 %storemerge28101, 1
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %.preheader8, label %155, !llvm.loop !44

155:                                              ; preds = %152
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa, %152 ]
  %storemerge28.lcssa = phi i32 [ %153, %152 ]
  %156 = add nsw i32 %storemerge11102, 1
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %.preheader9, label %158, !llvm.loop !45

158:                                              ; preds = %155
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa, %155 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa, %155 ]
  %storemerge11.lcssa = phi i32 [ %156, %155 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7

.preheader7:                                      ; preds = %158, %169
  %storemerge12105 = phi i32 [ 0, %158 ], [ %170, %169 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %166
  %storemerge26104 = phi i32 [ 0, %.preheader7 ], [ %167, %166 ]
  %159 = shl i32 %storemerge26104, 3
  %invariant.op50 = add i32 %159, %storemerge12105
  br label %160

160:                                              ; preds = %.preheader6, %160
  %storemerge27103 = phi i32 [ 0, %.preheader6 ], [ %164, %160 ]
  %161 = shl i32 %storemerge27103, 6
  %.reass51 = add i32 %161, %invariant.op50
  %162 = sext i32 %.reass51 to i64
  %163 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %162
  store i32 1, ptr %163, align 4
  %164 = add nsw i32 %storemerge27103, 1
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %160, label %166, !llvm.loop !46

166:                                              ; preds = %160
  %storemerge27.lcssa = phi i32 [ %164, %160 ]
  %167 = add nsw i32 %storemerge26104, 1
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %.preheader6, label %169, !llvm.loop !47

169:                                              ; preds = %166
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa, %166 ]
  %storemerge26.lcssa = phi i32 [ %167, %166 ]
  %170 = add nsw i32 %storemerge12105, 1
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %.preheader7, label %172, !llvm.loop !48

172:                                              ; preds = %169
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa, %169 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa, %169 ]
  %storemerge12.lcssa = phi i32 [ %170, %169 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5

.preheader5:                                      ; preds = %172, %183
  %storemerge13108 = phi i32 [ 0, %172 ], [ %184, %183 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %180
  %storemerge24107 = phi i32 [ 0, %.preheader5 ], [ %181, %180 ]
  %173 = shl i32 %storemerge24107, 3
  %invariant.op55 = add i32 %173, %storemerge13108
  br label %174

174:                                              ; preds = %.preheader4, %174
  %storemerge25106 = phi i32 [ 0, %.preheader4 ], [ %178, %174 ]
  %175 = shl i32 %storemerge25106, 6
  %.reass56 = add i32 %175, %invariant.op55
  %176 = sext i32 %.reass56 to i64
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %176
  store i32 1, ptr %177, align 4
  %178 = add nsw i32 %storemerge25106, 1
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %174, label %180, !llvm.loop !49

180:                                              ; preds = %174
  %storemerge25.lcssa = phi i32 [ %178, %174 ]
  %181 = add nsw i32 %storemerge24107, 1
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %.preheader4, label %183, !llvm.loop !50

183:                                              ; preds = %180
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa, %180 ]
  %storemerge24.lcssa = phi i32 [ %181, %180 ]
  %184 = add nsw i32 %storemerge13108, 1
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %.preheader5, label %186, !llvm.loop !51

186:                                              ; preds = %183
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa, %183 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa, %183 ]
  %storemerge13.lcssa = phi i32 [ %184, %183 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3

.preheader3:                                      ; preds = %186, %197
  %storemerge14111 = phi i32 [ 0, %186 ], [ %198, %197 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %194
  %storemerge22110 = phi i32 [ 0, %.preheader3 ], [ %195, %194 ]
  %187 = shl i32 %storemerge22110, 3
  %invariant.op60 = add i32 %187, %storemerge14111
  br label %188

188:                                              ; preds = %.preheader2, %188
  %storemerge23109 = phi i32 [ 0, %.preheader2 ], [ %192, %188 ]
  %189 = shl i32 %storemerge23109, 6
  %.reass61 = add i32 %189, %invariant.op60
  %190 = sext i32 %.reass61 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nsw i32 %storemerge23109, 1
  %193 = icmp slt i32 %192, 2
  br i1 %193, label %188, label %194, !llvm.loop !52

194:                                              ; preds = %188
  %storemerge23.lcssa = phi i32 [ %192, %188 ]
  %195 = add nsw i32 %storemerge22110, 1
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %.preheader2, label %197, !llvm.loop !53

197:                                              ; preds = %194
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa, %194 ]
  %storemerge22.lcssa = phi i32 [ %195, %194 ]
  %198 = add nsw i32 %storemerge14111, 1
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %.preheader3, label %200, !llvm.loop !54

200:                                              ; preds = %197
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa, %197 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa, %197 ]
  %storemerge14.lcssa = phi i32 [ %198, %197 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1

.preheader1:                                      ; preds = %200, %211
  %storemerge15114 = phi i32 [ 0, %200 ], [ %212, %211 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %208
  %storemerge20113 = phi i32 [ 0, %.preheader1 ], [ %209, %208 ]
  %201 = shl i32 %storemerge20113, 3
  %invariant.op65 = add i32 %201, %storemerge15114
  br label %202

202:                                              ; preds = %.preheader, %202
  %storemerge21112 = phi i32 [ 0, %.preheader ], [ %206, %202 ]
  %203 = shl i32 %storemerge21112, 6
  %.reass66 = add i32 %203, %invariant.op65
  %204 = sext i32 %.reass66 to i64
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %204
  store i32 1, ptr %205, align 4
  %206 = add nsw i32 %storemerge21112, 1
  %207 = icmp slt i32 %206, 2
  br i1 %207, label %202, label %208, !llvm.loop !55

208:                                              ; preds = %202
  %storemerge21.lcssa = phi i32 [ %206, %202 ]
  %209 = add nsw i32 %storemerge20113, 1
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %.preheader, label %211, !llvm.loop !56

211:                                              ; preds = %208
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa, %208 ]
  %storemerge20.lcssa = phi i32 [ %209, %208 ]
  %212 = add nsw i32 %storemerge15114, 1
  %213 = icmp slt i32 %212, 2
  br i1 %213, label %.preheader1, label %214, !llvm.loop !57

214:                                              ; preds = %211
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa, %211 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa, %211 ]
  %storemerge15.lcssa = phi i32 [ %212, %211 ]
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
  %215 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %215, 0
  br i1 %.not, label %219, label %216

216:                                              ; preds = %214
  %217 = load i32, ptr %4, align 4
  %218 = call i32 @Place(i32 noundef 0, i32 noundef %217)
  store i32 %218, ptr @n, align 4
  br label %220

219:                                              ; preds = %214
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %220

220:                                              ; preds = %219, %216
  %221 = load i32, ptr @n, align 4
  %222 = call i32 @Trial(i32 noundef %221)
  %.not16 = icmp eq i32 %222, 0
  br i1 %.not16, label %223, label %224

223:                                              ; preds = %220
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %227

224:                                              ; preds = %220
  %225 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %225, 2005
  br i1 %.not18, label %227, label %226

226:                                              ; preds = %224
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %227

227:                                              ; preds = %226, %224, %223
  %228 = load i32, ptr @n, align 4
  %229 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %228) #4
  %230 = load i32, ptr @kount, align 4
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %230) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %2
  %storemerge1 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Puzzle()
  %3 = add nsw i32 %storemerge1, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %2, label %5, !llvm.loop !58

5:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %3, %2 ]
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
