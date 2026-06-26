; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_004\output.ll'
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
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %.promoted = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %.lr.ph, %26
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %16 = phi i64 [ %7, %.lr.ph ], [ %12, %26 ]
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %17 = getelementptr inbounds [2048 x i8], ptr @p, i64 %16
  %18 = sext i32 %storemerge2 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %26, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %10, %storemerge2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %26, label %._crit_edge

26:                                               ; preds = %21, %14
  %27 = add nsw i32 %15, 1
  %28 = load i32, ptr %13, align 4
  %.not = icmp sgt i32 %27, %28
  br i1 %.not, label %._crit_edge3, label %14, !llvm.loop !7

._crit_edge:                                      ; preds = %21
  %.lcssa = phi i32 [ %15, %21 ]
  %split = phi i32 [ 0, %21 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %29

._crit_edge3:                                     ; preds = %26
  %.lcssa5 = phi i32 [ %27, %26 ]
  %split4 = phi i32 [ 1, %26 ]
  store i32 %.lcssa5, ptr %5, align 4
  br label %29

29:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %14 = load i32, ptr %13, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %15

15:                                               ; preds = %.lr.ph, %26
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %17 = phi i64 [ %7, %.lr.ph ], [ %12, %26 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %17
  %19 = sext i32 %storemerge3 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %26, label %22

22:                                               ; preds = %15
  %23 = add nsw i32 %10, %storemerge3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = add nsw i32 %16, 1
  %.not = icmp sgt i32 %27, %14
  br i1 %.not, label %._crit_edge, label %15, !llvm.loop !9

._crit_edge:                                      ; preds = %26
  %.lcssa8 = phi i32 [ %27, %26 ]
  %split = phi i64 [ %12, %26 ]
  store i32 %.lcssa8, ptr %5, align 4
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %4, align 4
  %36 = sext i32 %35 to i64
  %smax = call i32 @llvm.smax.i32(i32 %35, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  store i32 %35, ptr %5, align 4
  %exitcond.not4 = icmp eq i64 %36, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %28
  %.promoted9 = load i32, ptr %5, align 1
  br label %37

37:                                               ; preds = %.lr.ph7, %43
  %38 = phi i32 [ %.promoted9, %.lr.ph7 ], [ %44, %43 ]
  %indvars.iv5 = phi i64 [ %36, %.lr.ph7 ], [ %indvars.iv.next, %43 ]
  %39 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %40 = load i32, ptr %39, align 4
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %41, label %43

41:                                               ; preds = %37
  %.lcssa10 = phi i32 [ %38, %37 ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %37 ]
  store i32 %.lcssa10, ptr %5, align 1
  %42 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %45

43:                                               ; preds = %37
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %44 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %37, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %43
  %.lcssa11 = phi i32 [ %44, %43 ]
  store i32 %.lcssa11, ptr %5, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %28
  br label %45

45:                                               ; preds = %.loopexit, %41
  %storemerge2 = phi i32 [ %42, %41 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %14 = load i32, ptr %13, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %15

15:                                               ; preds = %.lr.ph, %26
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %17 = phi i64 [ %7, %.lr.ph ], [ %12, %26 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %17
  %19 = sext i32 %storemerge3 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not1 = icmp eq i32 %21, 0
  br i1 %.not1, label %26, label %22

22:                                               ; preds = %15
  %23 = add nsw i32 %10, %storemerge3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = add nsw i32 %16, 1
  %.not = icmp sgt i32 %27, %14
  br i1 %.not, label %._crit_edge, label %15, !llvm.loop !11

._crit_edge:                                      ; preds = %26
  %.lcssa4 = phi i32 [ %27, %26 ]
  %split = phi i64 [ %12, %26 ]
  store i32 %.lcssa4, ptr %5, align 4
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
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
  store i32 0, ptr %3, align 4
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %1, %24
  %10 = phi i32 [ %.promoted, %1 ], [ %25, %24 ]
  %storemerge2 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %11 = sext i32 %storemerge2 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %24, label %17

17:                                               ; preds = %9
  %18 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %6)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %10, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %19
  call void @Remove(i32 noundef %10, i32 noundef %8)
  br label %24

24:                                               ; preds = %23, %17, %9
  %25 = add nsw i32 %10, 1
  %26 = icmp slt i32 %25, 13
  br i1 %26, label %9, label %27, !llvm.loop !12

27:                                               ; preds = %19, %24
  %28 = phi i32 [ %10, %19 ], [ %25, %24 ]
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %24 ]
  store i32 %28, ptr %3, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %5

.preheader31:                                     ; preds = %5
  %.lcssa = phi i32 [ %9, %5 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  br label %.preheader30

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %.promoted, %0 ], [ %9, %5 ]
  %storemerge16 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = sext i32 %storemerge16 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31, !llvm.loop !13

.preheader30:                                     ; preds = %.preheader31, %24
  %11 = phi i32 [ %.promoted38, %.preheader31 ], [ %25, %24 ]
  br label %.preheader29

.preheader28:                                     ; preds = %24
  %.lcssa33.lcssa.lcssa = phi i32 [ %.lcssa33.lcssa, %24 ]
  %.lcssa39 = phi i32 [ %25, %24 ]
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %24 ]
  store i32 %.lcssa36.lcssa, ptr %2, align 4
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa33.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted43 = load i32, ptr %1, align 4
  br label %.preheader27

.preheader29:                                     ; preds = %.preheader30, %21
  %12 = phi i32 [ 1, %.preheader30 ], [ %22, %21 ]
  %13 = shl i32 %12, 3
  %invariant.op = add i32 %13, %11
  br label %14

14:                                               ; preds = %.preheader29, %14
  %15 = phi i32 [ 1, %.preheader29 ], [ %19, %14 ]
  %storemerge4817 = phi i32 [ 1, %.preheader29 ], [ %19, %14 ]
  %16 = shl i32 %storemerge4817, 6
  %.reass = add i32 %16, %invariant.op
  %17 = sext i32 %.reass to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nsw i32 %15, 1
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %14, label %21, !llvm.loop !14

21:                                               ; preds = %14
  %.lcssa33 = phi i32 [ %19, %14 ]
  %22 = add nsw i32 %12, 1
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %.preheader29, label %24, !llvm.loop !15

24:                                               ; preds = %21
  %.lcssa36 = phi i32 [ %22, %21 ]
  %.lcssa33.lcssa = phi i32 [ %.lcssa33, %21 ]
  %25 = add nsw i32 %11, 1
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %.preheader30, label %.preheader28, !llvm.loop !16

.preheader27:                                     ; preds = %.preheader28, %36
  %27 = phi i32 [ %.promoted43, %.preheader28 ], [ %37, %36 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2048 x i8], ptr @p, i64 %28
  br label %30

.preheader26:                                     ; preds = %36
  %.lcssa44 = phi i32 [ %37, %36 ]
  %.lcssa41.lcssa = phi i32 [ %.lcssa41, %36 ]
  store i32 %.lcssa41.lcssa, ptr %4, align 4
  store i32 %.lcssa44, ptr %1, align 4
  store i32 0, ptr %1, align 4
  %.promoted53 = load i32, ptr %1, align 4
  br label %.preheader25

30:                                               ; preds = %.preheader27, %30
  %31 = phi i32 [ 0, %.preheader27 ], [ %34, %30 ]
  %storemerge4618 = phi i32 [ 0, %.preheader27 ], [ %34, %30 ]
  %32 = sext i32 %storemerge4618 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %29, i64 %32
  store i32 0, ptr %33, align 4
  %34 = add nsw i32 %31, 1
  %35 = icmp slt i32 %34, 512
  br i1 %35, label %30, label %36, !llvm.loop !17

36:                                               ; preds = %30
  %.lcssa41 = phi i32 [ %34, %30 ]
  %37 = add nsw i32 %27, 1
  %38 = icmp slt i32 %37, 13
  br i1 %38, label %.preheader27, label %.preheader26, !llvm.loop !18

.preheader25:                                     ; preds = %.preheader26, %52
  %39 = phi i32 [ %.promoted53, %.preheader26 ], [ %53, %52 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %49
  %40 = phi i32 [ 0, %.preheader25 ], [ %50, %49 ]
  %41 = shl i32 %40, 3
  %invariant.op45 = add i32 %41, %39
  br label %42

42:                                               ; preds = %.preheader24, %42
  %43 = phi i32 [ 0, %.preheader24 ], [ %47, %42 ]
  %storemerge4519 = phi i32 [ 0, %.preheader24 ], [ %47, %42 ]
  %44 = shl i32 %storemerge4519, 6
  %.reass46 = add i32 %44, %invariant.op45
  %45 = sext i32 %.reass46 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @p, i64 %45
  store i32 1, ptr %46, align 4
  %47 = add nsw i32 %43, 1
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %42, label %49, !llvm.loop !19

49:                                               ; preds = %42
  %.lcssa48 = phi i32 [ %47, %42 ]
  %50 = add nsw i32 %40, 1
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %.preheader24, label %52, !llvm.loop !20

52:                                               ; preds = %49
  %.lcssa51 = phi i32 [ %50, %49 ]
  %.lcssa48.lcssa = phi i32 [ %.lcssa48, %49 ]
  %53 = add nsw i32 %39, 1
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %.preheader25, label %55, !llvm.loop !21

55:                                               ; preds = %52
  %.lcssa48.lcssa.lcssa = phi i32 [ %.lcssa48.lcssa, %52 ]
  %.lcssa54 = phi i32 [ %53, %52 ]
  %.lcssa51.lcssa = phi i32 [ %.lcssa51, %52 ]
  store i32 %.lcssa51.lcssa, ptr %2, align 4
  store i32 %.lcssa54, ptr %1, align 4
  store i32 %.lcssa48.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted63 = load i32, ptr %1, align 4
  br label %.preheader23

.preheader23:                                     ; preds = %55, %69
  %56 = phi i32 [ %.promoted63, %55 ], [ %70, %69 ]
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %66
  %57 = phi i32 [ 0, %.preheader23 ], [ %67, %66 ]
  %58 = shl i32 %57, 3
  %invariant.op55 = add i32 %58, %56
  br label %59

59:                                               ; preds = %.preheader22, %59
  %60 = phi i32 [ 0, %.preheader22 ], [ %64, %59 ]
  %storemerge4320 = phi i32 [ 0, %.preheader22 ], [ %64, %59 ]
  %61 = shl i32 %storemerge4320, 6
  %.reass56 = add i32 %61, %invariant.op55
  %62 = sext i32 %.reass56 to i64
  %63 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nsw i32 %60, 1
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %59, label %66, !llvm.loop !22

66:                                               ; preds = %59
  %.lcssa58 = phi i32 [ %64, %59 ]
  %67 = add nsw i32 %57, 1
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %.preheader22, label %69, !llvm.loop !23

69:                                               ; preds = %66
  %.lcssa61 = phi i32 [ %67, %66 ]
  %.lcssa58.lcssa = phi i32 [ %.lcssa58, %66 ]
  %70 = add nsw i32 %56, 1
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %.preheader23, label %72, !llvm.loop !24

72:                                               ; preds = %69
  %.lcssa58.lcssa.lcssa = phi i32 [ %.lcssa58.lcssa, %69 ]
  %.lcssa64 = phi i32 [ %70, %69 ]
  %.lcssa61.lcssa = phi i32 [ %.lcssa61, %69 ]
  store i32 %.lcssa61.lcssa, ptr %2, align 4
  store i32 %.lcssa64, ptr %1, align 4
  store i32 %.lcssa58.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted73 = load i32, ptr %1, align 4
  br label %.preheader21

.preheader21:                                     ; preds = %72, %86
  %73 = phi i32 [ %.promoted73, %72 ], [ %87, %86 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %83
  %74 = phi i32 [ 0, %.preheader21 ], [ %84, %83 ]
  %75 = shl i32 %74, 3
  %invariant.op65 = add i32 %75, %73
  br label %76

76:                                               ; preds = %.preheader20, %76
  %77 = phi i32 [ 0, %.preheader20 ], [ %81, %76 ]
  %storemerge4121 = phi i32 [ 0, %.preheader20 ], [ %81, %76 ]
  %78 = shl i32 %storemerge4121, 6
  %.reass66 = add i32 %78, %invariant.op65
  %79 = sext i32 %.reass66 to i64
  %80 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nsw i32 %77, 1
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %76, label %83, !llvm.loop !25

83:                                               ; preds = %76
  %.lcssa68 = phi i32 [ %81, %76 ]
  %84 = add nsw i32 %74, 1
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %.preheader20, label %86, !llvm.loop !26

86:                                               ; preds = %83
  %.lcssa71 = phi i32 [ %84, %83 ]
  %.lcssa68.lcssa = phi i32 [ %.lcssa68, %83 ]
  %87 = add nsw i32 %73, 1
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %.preheader21, label %89, !llvm.loop !27

89:                                               ; preds = %86
  %.lcssa68.lcssa.lcssa = phi i32 [ %.lcssa68.lcssa, %86 ]
  %.lcssa74 = phi i32 [ %87, %86 ]
  %.lcssa71.lcssa = phi i32 [ %.lcssa71, %86 ]
  store i32 %.lcssa71.lcssa, ptr %2, align 4
  store i32 %.lcssa74, ptr %1, align 4
  store i32 %.lcssa68.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted83 = load i32, ptr %1, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %89, %103
  %90 = phi i32 [ %.promoted83, %89 ], [ %104, %103 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %100
  %91 = phi i32 [ 0, %.preheader19 ], [ %101, %100 ]
  %92 = shl i32 %91, 3
  %invariant.op75 = add i32 %92, %90
  br label %93

93:                                               ; preds = %.preheader18, %93
  %94 = phi i32 [ 0, %.preheader18 ], [ %98, %93 ]
  %storemerge3922 = phi i32 [ 0, %.preheader18 ], [ %98, %93 ]
  %95 = shl i32 %storemerge3922, 6
  %.reass76 = add i32 %95, %invariant.op75
  %96 = sext i32 %.reass76 to i64
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %96
  store i32 1, ptr %97, align 4
  %98 = add nsw i32 %94, 1
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %93, label %100, !llvm.loop !28

100:                                              ; preds = %93
  %.lcssa78 = phi i32 [ %98, %93 ]
  %101 = add nsw i32 %91, 1
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %.preheader18, label %103, !llvm.loop !29

103:                                              ; preds = %100
  %.lcssa81 = phi i32 [ %101, %100 ]
  %.lcssa78.lcssa = phi i32 [ %.lcssa78, %100 ]
  %104 = add nsw i32 %90, 1
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %.preheader19, label %106, !llvm.loop !30

106:                                              ; preds = %103
  %.lcssa78.lcssa.lcssa = phi i32 [ %.lcssa78.lcssa, %103 ]
  %.lcssa84 = phi i32 [ %104, %103 ]
  %.lcssa81.lcssa = phi i32 [ %.lcssa81, %103 ]
  store i32 %.lcssa81.lcssa, ptr %2, align 4
  store i32 %.lcssa84, ptr %1, align 4
  store i32 %.lcssa78.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted93 = load i32, ptr %1, align 4
  br label %.preheader17

.preheader17:                                     ; preds = %106, %120
  %107 = phi i32 [ %.promoted93, %106 ], [ %121, %120 ]
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader17, %117
  %108 = phi i32 [ 0, %.preheader17 ], [ %118, %117 ]
  %109 = shl i32 %108, 3
  %invariant.op85 = add i32 %109, %107
  br label %110

110:                                              ; preds = %.preheader16, %110
  %111 = phi i32 [ 0, %.preheader16 ], [ %115, %110 ]
  %storemerge3723 = phi i32 [ 0, %.preheader16 ], [ %115, %110 ]
  %112 = shl i32 %storemerge3723, 6
  %.reass86 = add i32 %112, %invariant.op85
  %113 = sext i32 %.reass86 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %111, 1
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %110, label %117, !llvm.loop !31

117:                                              ; preds = %110
  %.lcssa88 = phi i32 [ %115, %110 ]
  %118 = add nsw i32 %108, 1
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %.preheader16, label %120, !llvm.loop !32

120:                                              ; preds = %117
  %.lcssa91 = phi i32 [ %118, %117 ]
  %.lcssa88.lcssa = phi i32 [ %.lcssa88, %117 ]
  %121 = add nsw i32 %107, 1
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %.preheader17, label %123, !llvm.loop !33

123:                                              ; preds = %120
  %.lcssa88.lcssa.lcssa = phi i32 [ %.lcssa88.lcssa, %120 ]
  %.lcssa94 = phi i32 [ %121, %120 ]
  %.lcssa91.lcssa = phi i32 [ %.lcssa91, %120 ]
  store i32 %.lcssa91.lcssa, ptr %2, align 4
  store i32 %.lcssa94, ptr %1, align 4
  store i32 %.lcssa88.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted103 = load i32, ptr %1, align 4
  br label %.preheader15

.preheader15:                                     ; preds = %123, %137
  %124 = phi i32 [ %.promoted103, %123 ], [ %138, %137 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %134
  %125 = phi i32 [ 0, %.preheader15 ], [ %135, %134 ]
  %126 = shl i32 %125, 3
  %invariant.op95 = add i32 %126, %124
  br label %127

127:                                              ; preds = %.preheader14, %127
  %128 = phi i32 [ 0, %.preheader14 ], [ %132, %127 ]
  %storemerge3524 = phi i32 [ 0, %.preheader14 ], [ %132, %127 ]
  %129 = shl i32 %storemerge3524, 6
  %.reass96 = add i32 %129, %invariant.op95
  %130 = sext i32 %.reass96 to i64
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nsw i32 %128, 1
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %127, label %134, !llvm.loop !34

134:                                              ; preds = %127
  %.lcssa98 = phi i32 [ %132, %127 ]
  %135 = add nsw i32 %125, 1
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %.preheader14, label %137, !llvm.loop !35

137:                                              ; preds = %134
  %.lcssa101 = phi i32 [ %135, %134 ]
  %.lcssa98.lcssa = phi i32 [ %.lcssa98, %134 ]
  %138 = add nsw i32 %124, 1
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %.preheader15, label %140, !llvm.loop !36

140:                                              ; preds = %137
  %.lcssa98.lcssa.lcssa = phi i32 [ %.lcssa98.lcssa, %137 ]
  %.lcssa104 = phi i32 [ %138, %137 ]
  %.lcssa101.lcssa = phi i32 [ %.lcssa101, %137 ]
  store i32 %.lcssa101.lcssa, ptr %2, align 4
  store i32 %.lcssa104, ptr %1, align 4
  store i32 %.lcssa98.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted113 = load i32, ptr %1, align 4
  br label %.preheader13

.preheader13:                                     ; preds = %140, %154
  %141 = phi i32 [ %.promoted113, %140 ], [ %155, %154 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader13, %151
  %142 = phi i32 [ 0, %.preheader13 ], [ %152, %151 ]
  %143 = shl i32 %142, 3
  %invariant.op105 = add i32 %143, %141
  br label %144

144:                                              ; preds = %.preheader12, %144
  %145 = phi i32 [ 0, %.preheader12 ], [ %149, %144 ]
  %storemerge3325 = phi i32 [ 0, %.preheader12 ], [ %149, %144 ]
  %146 = shl i32 %storemerge3325, 6
  %.reass106 = add i32 %146, %invariant.op105
  %147 = sext i32 %.reass106 to i64
  %148 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nsw i32 %145, 1
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %144, label %151, !llvm.loop !37

151:                                              ; preds = %144
  %.lcssa108 = phi i32 [ %149, %144 ]
  %152 = add nsw i32 %142, 1
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %.preheader12, label %154, !llvm.loop !38

154:                                              ; preds = %151
  %.lcssa111 = phi i32 [ %152, %151 ]
  %.lcssa108.lcssa = phi i32 [ %.lcssa108, %151 ]
  %155 = add nsw i32 %141, 1
  %156 = icmp slt i32 %155, 3
  br i1 %156, label %.preheader13, label %157, !llvm.loop !39

157:                                              ; preds = %154
  %.lcssa108.lcssa.lcssa = phi i32 [ %.lcssa108.lcssa, %154 ]
  %.lcssa114 = phi i32 [ %155, %154 ]
  %.lcssa111.lcssa = phi i32 [ %.lcssa111, %154 ]
  store i32 %.lcssa111.lcssa, ptr %2, align 4
  store i32 %.lcssa114, ptr %1, align 4
  store i32 %.lcssa108.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted123 = load i32, ptr %1, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %157, %171
  %158 = phi i32 [ %.promoted123, %157 ], [ %172, %171 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %168
  %159 = phi i32 [ 0, %.preheader11 ], [ %169, %168 ]
  %160 = shl i32 %159, 3
  %invariant.op115 = add i32 %160, %158
  br label %161

161:                                              ; preds = %.preheader10, %161
  %162 = phi i32 [ 0, %.preheader10 ], [ %166, %161 ]
  %storemerge3126 = phi i32 [ 0, %.preheader10 ], [ %166, %161 ]
  %163 = shl i32 %storemerge3126, 6
  %.reass116 = add i32 %163, %invariant.op115
  %164 = sext i32 %.reass116 to i64
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nsw i32 %162, 1
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %161, label %168, !llvm.loop !40

168:                                              ; preds = %161
  %.lcssa118 = phi i32 [ %166, %161 ]
  %169 = add nsw i32 %159, 1
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %.preheader10, label %171, !llvm.loop !41

171:                                              ; preds = %168
  %.lcssa121 = phi i32 [ %169, %168 ]
  %.lcssa118.lcssa = phi i32 [ %.lcssa118, %168 ]
  %172 = add nsw i32 %158, 1
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %.preheader11, label %174, !llvm.loop !42

174:                                              ; preds = %171
  %.lcssa118.lcssa.lcssa = phi i32 [ %.lcssa118.lcssa, %171 ]
  %.lcssa124 = phi i32 [ %172, %171 ]
  %.lcssa121.lcssa = phi i32 [ %.lcssa121, %171 ]
  store i32 %.lcssa121.lcssa, ptr %2, align 4
  store i32 %.lcssa124, ptr %1, align 4
  store i32 %.lcssa118.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted133 = load i32, ptr %1, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %174, %188
  %175 = phi i32 [ %.promoted133, %174 ], [ %189, %188 ]
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader9, %185
  %176 = phi i32 [ 0, %.preheader9 ], [ %186, %185 ]
  %177 = shl i32 %176, 3
  %invariant.op125 = add i32 %177, %175
  br label %178

178:                                              ; preds = %.preheader8, %178
  %179 = phi i32 [ 0, %.preheader8 ], [ %183, %178 ]
  %storemerge2927 = phi i32 [ 0, %.preheader8 ], [ %183, %178 ]
  %180 = shl i32 %storemerge2927, 6
  %.reass126 = add i32 %180, %invariant.op125
  %181 = sext i32 %.reass126 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nsw i32 %179, 1
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %178, label %185, !llvm.loop !43

185:                                              ; preds = %178
  %.lcssa128 = phi i32 [ %183, %178 ]
  %186 = add nsw i32 %176, 1
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %.preheader8, label %188, !llvm.loop !44

188:                                              ; preds = %185
  %.lcssa131 = phi i32 [ %186, %185 ]
  %.lcssa128.lcssa = phi i32 [ %.lcssa128, %185 ]
  %189 = add nsw i32 %175, 1
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %.preheader9, label %191, !llvm.loop !45

191:                                              ; preds = %188
  %.lcssa128.lcssa.lcssa = phi i32 [ %.lcssa128.lcssa, %188 ]
  %.lcssa134 = phi i32 [ %189, %188 ]
  %.lcssa131.lcssa = phi i32 [ %.lcssa131, %188 ]
  store i32 %.lcssa131.lcssa, ptr %2, align 4
  store i32 %.lcssa134, ptr %1, align 4
  store i32 %.lcssa128.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted143 = load i32, ptr %1, align 4
  br label %.preheader7

.preheader7:                                      ; preds = %191, %205
  %192 = phi i32 [ %.promoted143, %191 ], [ %206, %205 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %202
  %193 = phi i32 [ 0, %.preheader7 ], [ %203, %202 ]
  %194 = shl i32 %193, 3
  %invariant.op135 = add i32 %194, %192
  br label %195

195:                                              ; preds = %.preheader6, %195
  %196 = phi i32 [ 0, %.preheader6 ], [ %200, %195 ]
  %storemerge2728 = phi i32 [ 0, %.preheader6 ], [ %200, %195 ]
  %197 = shl i32 %storemerge2728, 6
  %.reass136 = add i32 %197, %invariant.op135
  %198 = sext i32 %.reass136 to i64
  %199 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nsw i32 %196, 1
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %195, label %202, !llvm.loop !46

202:                                              ; preds = %195
  %.lcssa138 = phi i32 [ %200, %195 ]
  %203 = add nsw i32 %193, 1
  %204 = icmp slt i32 %203, 2
  br i1 %204, label %.preheader6, label %205, !llvm.loop !47

205:                                              ; preds = %202
  %.lcssa141 = phi i32 [ %203, %202 ]
  %.lcssa138.lcssa = phi i32 [ %.lcssa138, %202 ]
  %206 = add nsw i32 %192, 1
  %207 = icmp slt i32 %206, 2
  br i1 %207, label %.preheader7, label %208, !llvm.loop !48

208:                                              ; preds = %205
  %.lcssa138.lcssa.lcssa = phi i32 [ %.lcssa138.lcssa, %205 ]
  %.lcssa144 = phi i32 [ %206, %205 ]
  %.lcssa141.lcssa = phi i32 [ %.lcssa141, %205 ]
  store i32 %.lcssa141.lcssa, ptr %2, align 4
  store i32 %.lcssa144, ptr %1, align 4
  store i32 %.lcssa138.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted153 = load i32, ptr %1, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %208, %222
  %209 = phi i32 [ %.promoted153, %208 ], [ %223, %222 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %219
  %210 = phi i32 [ 0, %.preheader5 ], [ %220, %219 ]
  %211 = shl i32 %210, 3
  %invariant.op145 = add i32 %211, %209
  br label %212

212:                                              ; preds = %.preheader4, %212
  %213 = phi i32 [ 0, %.preheader4 ], [ %217, %212 ]
  %storemerge2529 = phi i32 [ 0, %.preheader4 ], [ %217, %212 ]
  %214 = shl i32 %storemerge2529, 6
  %.reass146 = add i32 %214, %invariant.op145
  %215 = sext i32 %.reass146 to i64
  %216 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %215
  store i32 1, ptr %216, align 4
  %217 = add nsw i32 %213, 1
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %212, label %219, !llvm.loop !49

219:                                              ; preds = %212
  %.lcssa148 = phi i32 [ %217, %212 ]
  %220 = add nsw i32 %210, 1
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %.preheader4, label %222, !llvm.loop !50

222:                                              ; preds = %219
  %.lcssa151 = phi i32 [ %220, %219 ]
  %.lcssa148.lcssa = phi i32 [ %.lcssa148, %219 ]
  %223 = add nsw i32 %209, 1
  %224 = icmp slt i32 %223, 2
  br i1 %224, label %.preheader5, label %225, !llvm.loop !51

225:                                              ; preds = %222
  %.lcssa148.lcssa.lcssa = phi i32 [ %.lcssa148.lcssa, %222 ]
  %.lcssa154 = phi i32 [ %223, %222 ]
  %.lcssa151.lcssa = phi i32 [ %.lcssa151, %222 ]
  store i32 %.lcssa151.lcssa, ptr %2, align 4
  store i32 %.lcssa154, ptr %1, align 4
  store i32 %.lcssa148.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted163 = load i32, ptr %1, align 4
  br label %.preheader3

.preheader3:                                      ; preds = %225, %239
  %226 = phi i32 [ %.promoted163, %225 ], [ %240, %239 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %236
  %227 = phi i32 [ 0, %.preheader3 ], [ %237, %236 ]
  %228 = shl i32 %227, 3
  %invariant.op155 = add i32 %228, %226
  br label %229

229:                                              ; preds = %.preheader2, %229
  %230 = phi i32 [ 0, %.preheader2 ], [ %234, %229 ]
  %storemerge2330 = phi i32 [ 0, %.preheader2 ], [ %234, %229 ]
  %231 = shl i32 %storemerge2330, 6
  %.reass156 = add i32 %231, %invariant.op155
  %232 = sext i32 %.reass156 to i64
  %233 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %232
  store i32 1, ptr %233, align 4
  %234 = add nsw i32 %230, 1
  %235 = icmp slt i32 %234, 2
  br i1 %235, label %229, label %236, !llvm.loop !52

236:                                              ; preds = %229
  %.lcssa158 = phi i32 [ %234, %229 ]
  %237 = add nsw i32 %227, 1
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %.preheader2, label %239, !llvm.loop !53

239:                                              ; preds = %236
  %.lcssa161 = phi i32 [ %237, %236 ]
  %.lcssa158.lcssa = phi i32 [ %.lcssa158, %236 ]
  %240 = add nsw i32 %226, 1
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %.preheader3, label %242, !llvm.loop !54

242:                                              ; preds = %239
  %.lcssa158.lcssa.lcssa = phi i32 [ %.lcssa158.lcssa, %239 ]
  %.lcssa164 = phi i32 [ %240, %239 ]
  %.lcssa161.lcssa = phi i32 [ %.lcssa161, %239 ]
  store i32 %.lcssa161.lcssa, ptr %2, align 4
  store i32 %.lcssa164, ptr %1, align 4
  store i32 %.lcssa158.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted173 = load i32, ptr %1, align 4
  br label %.preheader1

.preheader1:                                      ; preds = %242, %256
  %243 = phi i32 [ %.promoted173, %242 ], [ %257, %256 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %253
  %244 = phi i32 [ 0, %.preheader1 ], [ %254, %253 ]
  %245 = shl i32 %244, 3
  %invariant.op165 = add i32 %245, %243
  br label %246

246:                                              ; preds = %.preheader, %246
  %247 = phi i32 [ 0, %.preheader ], [ %251, %246 ]
  %storemerge2131 = phi i32 [ 0, %.preheader ], [ %251, %246 ]
  %248 = shl i32 %storemerge2131, 6
  %.reass166 = add i32 %248, %invariant.op165
  %249 = sext i32 %.reass166 to i64
  %250 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %249
  store i32 1, ptr %250, align 4
  %251 = add nsw i32 %247, 1
  %252 = icmp slt i32 %251, 2
  br i1 %252, label %246, label %253, !llvm.loop !55

253:                                              ; preds = %246
  %.lcssa168 = phi i32 [ %251, %246 ]
  %254 = add nsw i32 %244, 1
  %255 = icmp slt i32 %254, 2
  br i1 %255, label %.preheader, label %256, !llvm.loop !56

256:                                              ; preds = %253
  %.lcssa171 = phi i32 [ %254, %253 ]
  %.lcssa168.lcssa = phi i32 [ %.lcssa168, %253 ]
  %257 = add nsw i32 %243, 1
  %258 = icmp slt i32 %257, 2
  br i1 %258, label %.preheader1, label %259, !llvm.loop !57

259:                                              ; preds = %256
  %.lcssa168.lcssa.lcssa = phi i32 [ %.lcssa168.lcssa, %256 ]
  %.lcssa174 = phi i32 [ %257, %256 ]
  %.lcssa171.lcssa = phi i32 [ %.lcssa171, %256 ]
  store i32 %.lcssa171.lcssa, ptr %2, align 4
  store i32 %.lcssa174, ptr %1, align 4
  store i32 %.lcssa168.lcssa.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %260 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %260, 0
  br i1 %.not, label %264, label %261

261:                                              ; preds = %259
  %262 = load i32, ptr %4, align 4
  %263 = call i32 @Place(i32 noundef 0, i32 noundef %262)
  store i32 %263, ptr @n, align 4
  br label %265

264:                                              ; preds = %259
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %265

265:                                              ; preds = %264, %261
  %266 = load i32, ptr @n, align 4
  %267 = call i32 @Trial(i32 noundef %266)
  %.not16 = icmp eq i32 %267, 0
  br i1 %.not16, label %268, label %269

268:                                              ; preds = %265
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %272

269:                                              ; preds = %265
  %270 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %270, 2005
  br i1 %.not18, label %272, label %271

271:                                              ; preds = %269
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %272

272:                                              ; preds = %271, %269, %268
  %273 = load i32, ptr @n, align 4
  %274 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %273) #4
  %275 = load i32, ptr @kount, align 4
  %276 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %275) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ %.promoted, %0 ], [ %4, %2 ]
  call void @Puzzle()
  %4 = add nsw i32 %3, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !58

6:                                                ; preds = %2
  %.lcssa = phi i32 [ %4, %2 ]
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
