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
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

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
  br label %.loopexit

43:                                               ; preds = %37
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %44 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %37, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %43
  %.lcssa11 = phi i32 [ %44, %43 ]
  store i32 %.lcssa11, ptr %5, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %41
  %storemerge2 = phi i32 [ %42, %41 ], [ 0, %.loopexit.loopexit ]
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

.preheader31.preheader:                           ; preds = %5
  %.lcssa = phi i32 [ %9, %5 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  br label %.preheader30.preheader

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %.promoted, %0 ], [ %9, %5 ]
  %storemerge16 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = sext i32 %storemerge16 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %11 = phi i32 [ %.promoted38, %.preheader31.preheader ], [ %22, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  %.lcssa33.lcssa.lcssa = phi i32 [ %.lcssa33.lcssa, %.preheader31 ]
  %.lcssa39 = phi i32 [ %22, %.preheader31 ]
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %.preheader31 ]
  store i32 %.lcssa36.lcssa, ptr %2, align 4
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa33.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted43 = load i32, ptr %1, align 4
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %12 = phi i32 [ 1, %.preheader30.preheader ], [ %20, %.preheader30 ]
  %13 = shl i32 %12, 3
  %invariant.op = add i32 %13, %11
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %14 = phi i32 [ 1, %.preheader29.preheader ], [ %18, %.preheader29 ]
  %storemerge4817 = phi i32 [ 1, %.preheader29.preheader ], [ %18, %.preheader29 ]
  %15 = shl i32 %storemerge4817, 6
  %.reass = add i32 %15, %invariant.op
  %16 = sext i32 %.reass to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  %18 = add nsw i32 %14, 1
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %.lcssa33 = phi i32 [ %18, %.preheader29 ]
  %20 = add nsw i32 %12, 1
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %.lcssa36 = phi i32 [ %20, %.preheader30 ]
  %.lcssa33.lcssa = phi i32 [ %.lcssa33, %.preheader30 ]
  %22 = add nsw i32 %11, 1
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %24 = phi i32 [ %.promoted43, %.preheader28.preheader ], [ %32, %.preheader28 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %25
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %.lcssa44 = phi i32 [ %32, %.preheader28 ]
  %.lcssa41.lcssa = phi i32 [ %.lcssa41, %.preheader28 ]
  store i32 %.lcssa41.lcssa, ptr %4, align 4
  store i32 %.lcssa44, ptr %1, align 4
  store i32 0, ptr %1, align 4
  %.promoted53 = load i32, ptr %1, align 4
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %27 = phi i32 [ 0, %.preheader27.preheader ], [ %30, %.preheader27 ]
  %storemerge4618 = phi i32 [ 0, %.preheader27.preheader ], [ %30, %.preheader27 ]
  %28 = sext i32 %storemerge4618 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %26, i64 %28
  store i32 0, ptr %29, align 4
  %30 = add nsw i32 %27, 1
  %31 = icmp slt i32 %30, 512
  br i1 %31, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %.lcssa41 = phi i32 [ %30, %.preheader27 ]
  %32 = add nsw i32 %24, 1
  %33 = icmp slt i32 %32, 13
  br i1 %33, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %34 = phi i32 [ %.promoted53, %.preheader26.preheader ], [ %45, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %35 = phi i32 [ 0, %.preheader25.preheader ], [ %43, %.preheader25 ]
  %36 = shl i32 %35, 3
  %invariant.op45 = add i32 %36, %34
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %37 = phi i32 [ 0, %.preheader24.preheader ], [ %41, %.preheader24 ]
  %storemerge4519 = phi i32 [ 0, %.preheader24.preheader ], [ %41, %.preheader24 ]
  %38 = shl i32 %storemerge4519, 6
  %.reass46 = add i32 %38, %invariant.op45
  %39 = sext i32 %.reass46 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @p, i64 %39
  store i32 1, ptr %40, align 4
  %41 = add nsw i32 %37, 1
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %.lcssa48 = phi i32 [ %41, %.preheader24 ]
  %43 = add nsw i32 %35, 1
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %.lcssa51 = phi i32 [ %43, %.preheader25 ]
  %.lcssa48.lcssa = phi i32 [ %.lcssa48, %.preheader25 ]
  %45 = add nsw i32 %34, 1
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %.preheader25.preheader, label %47, !llvm.loop !21

47:                                               ; preds = %.preheader26
  %.lcssa48.lcssa.lcssa = phi i32 [ %.lcssa48.lcssa, %.preheader26 ]
  %.lcssa54 = phi i32 [ %45, %.preheader26 ]
  %.lcssa51.lcssa = phi i32 [ %.lcssa51, %.preheader26 ]
  store i32 %.lcssa51.lcssa, ptr %2, align 4
  store i32 %.lcssa54, ptr %1, align 4
  store i32 %.lcssa48.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted63 = load i32, ptr %1, align 4
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %47, %59
  %48 = phi i32 [ %.promoted63, %47 ], [ %60, %59 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %49 = phi i32 [ 0, %.preheader23.preheader ], [ %57, %.preheader23 ]
  %50 = shl i32 %49, 3
  %invariant.op55 = add i32 %50, %48
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %51 = phi i32 [ 0, %.preheader22.preheader ], [ %55, %.preheader22 ]
  %storemerge4320 = phi i32 [ 0, %.preheader22.preheader ], [ %55, %.preheader22 ]
  %52 = shl i32 %storemerge4320, 6
  %.reass56 = add i32 %52, %invariant.op55
  %53 = sext i32 %.reass56 to i64
  %54 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %53
  store i32 1, ptr %54, align 4
  %55 = add nsw i32 %51, 1
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %.lcssa58 = phi i32 [ %55, %.preheader22 ]
  %57 = add nsw i32 %49, 1
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %.preheader22.preheader, label %59, !llvm.loop !23

59:                                               ; preds = %.preheader23
  %.lcssa61 = phi i32 [ %57, %.preheader23 ]
  %.lcssa58.lcssa = phi i32 [ %.lcssa58, %.preheader23 ]
  %60 = add nsw i32 %48, 1
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %.preheader23.preheader, label %62, !llvm.loop !24

62:                                               ; preds = %59
  %.lcssa58.lcssa.lcssa = phi i32 [ %.lcssa58.lcssa, %59 ]
  %.lcssa64 = phi i32 [ %60, %59 ]
  %.lcssa61.lcssa = phi i32 [ %.lcssa61, %59 ]
  store i32 %.lcssa61.lcssa, ptr %2, align 4
  store i32 %.lcssa64, ptr %1, align 4
  store i32 %.lcssa58.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted73 = load i32, ptr %1, align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %62, %74
  %63 = phi i32 [ %.promoted73, %62 ], [ %75, %74 ]
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %64 = phi i32 [ 0, %.preheader21.preheader ], [ %72, %.preheader21 ]
  %65 = shl i32 %64, 3
  %invariant.op65 = add i32 %65, %63
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %66 = phi i32 [ 0, %.preheader20.preheader ], [ %70, %.preheader20 ]
  %storemerge4121 = phi i32 [ 0, %.preheader20.preheader ], [ %70, %.preheader20 ]
  %67 = shl i32 %storemerge4121, 6
  %.reass66 = add i32 %67, %invariant.op65
  %68 = sext i32 %.reass66 to i64
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %66, 1
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %.lcssa68 = phi i32 [ %70, %.preheader20 ]
  %72 = add nsw i32 %64, 1
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %.preheader20.preheader, label %74, !llvm.loop !26

74:                                               ; preds = %.preheader21
  %.lcssa71 = phi i32 [ %72, %.preheader21 ]
  %.lcssa68.lcssa = phi i32 [ %.lcssa68, %.preheader21 ]
  %75 = add nsw i32 %63, 1
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %.preheader21.preheader, label %77, !llvm.loop !27

77:                                               ; preds = %74
  %.lcssa68.lcssa.lcssa = phi i32 [ %.lcssa68.lcssa, %74 ]
  %.lcssa74 = phi i32 [ %75, %74 ]
  %.lcssa71.lcssa = phi i32 [ %.lcssa71, %74 ]
  store i32 %.lcssa71.lcssa, ptr %2, align 4
  store i32 %.lcssa74, ptr %1, align 4
  store i32 %.lcssa68.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted83 = load i32, ptr %1, align 4
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %77, %89
  %78 = phi i32 [ %.promoted83, %77 ], [ %90, %89 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %79 = phi i32 [ 0, %.preheader19.preheader ], [ %87, %.preheader19 ]
  %80 = shl i32 %79, 3
  %invariant.op75 = add i32 %80, %78
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %81 = phi i32 [ 0, %.preheader18.preheader ], [ %85, %.preheader18 ]
  %storemerge3922 = phi i32 [ 0, %.preheader18.preheader ], [ %85, %.preheader18 ]
  %82 = shl i32 %storemerge3922, 6
  %.reass76 = add i32 %82, %invariant.op75
  %83 = sext i32 %.reass76 to i64
  %84 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %83
  store i32 1, ptr %84, align 4
  %85 = add nsw i32 %81, 1
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %.lcssa78 = phi i32 [ %85, %.preheader18 ]
  %87 = add nsw i32 %79, 1
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %.preheader18.preheader, label %89, !llvm.loop !29

89:                                               ; preds = %.preheader19
  %.lcssa81 = phi i32 [ %87, %.preheader19 ]
  %.lcssa78.lcssa = phi i32 [ %.lcssa78, %.preheader19 ]
  %90 = add nsw i32 %78, 1
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %.preheader19.preheader, label %92, !llvm.loop !30

92:                                               ; preds = %89
  %.lcssa78.lcssa.lcssa = phi i32 [ %.lcssa78.lcssa, %89 ]
  %.lcssa84 = phi i32 [ %90, %89 ]
  %.lcssa81.lcssa = phi i32 [ %.lcssa81, %89 ]
  store i32 %.lcssa81.lcssa, ptr %2, align 4
  store i32 %.lcssa84, ptr %1, align 4
  store i32 %.lcssa78.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted93 = load i32, ptr %1, align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %92, %104
  %93 = phi i32 [ %.promoted93, %92 ], [ %105, %104 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %94 = phi i32 [ 0, %.preheader17.preheader ], [ %102, %.preheader17 ]
  %95 = shl i32 %94, 3
  %invariant.op85 = add i32 %95, %93
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %96 = phi i32 [ 0, %.preheader16.preheader ], [ %100, %.preheader16 ]
  %storemerge3723 = phi i32 [ 0, %.preheader16.preheader ], [ %100, %.preheader16 ]
  %97 = shl i32 %storemerge3723, 6
  %.reass86 = add i32 %97, %invariant.op85
  %98 = sext i32 %.reass86 to i64
  %99 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %98
  store i32 1, ptr %99, align 4
  %100 = add nsw i32 %96, 1
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %.lcssa88 = phi i32 [ %100, %.preheader16 ]
  %102 = add nsw i32 %94, 1
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %.preheader16.preheader, label %104, !llvm.loop !32

104:                                              ; preds = %.preheader17
  %.lcssa91 = phi i32 [ %102, %.preheader17 ]
  %.lcssa88.lcssa = phi i32 [ %.lcssa88, %.preheader17 ]
  %105 = add nsw i32 %93, 1
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %.preheader17.preheader, label %107, !llvm.loop !33

107:                                              ; preds = %104
  %.lcssa88.lcssa.lcssa = phi i32 [ %.lcssa88.lcssa, %104 ]
  %.lcssa94 = phi i32 [ %105, %104 ]
  %.lcssa91.lcssa = phi i32 [ %.lcssa91, %104 ]
  store i32 %.lcssa91.lcssa, ptr %2, align 4
  store i32 %.lcssa94, ptr %1, align 4
  store i32 %.lcssa88.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted103 = load i32, ptr %1, align 4
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %107, %119
  %108 = phi i32 [ %.promoted103, %107 ], [ %120, %119 ]
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %109 = phi i32 [ 0, %.preheader15.preheader ], [ %117, %.preheader15 ]
  %110 = shl i32 %109, 3
  %invariant.op95 = add i32 %110, %108
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %111 = phi i32 [ 0, %.preheader14.preheader ], [ %115, %.preheader14 ]
  %storemerge3524 = phi i32 [ 0, %.preheader14.preheader ], [ %115, %.preheader14 ]
  %112 = shl i32 %storemerge3524, 6
  %.reass96 = add i32 %112, %invariant.op95
  %113 = sext i32 %.reass96 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %111, 1
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %.lcssa98 = phi i32 [ %115, %.preheader14 ]
  %117 = add nsw i32 %109, 1
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %.preheader14.preheader, label %119, !llvm.loop !35

119:                                              ; preds = %.preheader15
  %.lcssa101 = phi i32 [ %117, %.preheader15 ]
  %.lcssa98.lcssa = phi i32 [ %.lcssa98, %.preheader15 ]
  %120 = add nsw i32 %108, 1
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %.preheader15.preheader, label %122, !llvm.loop !36

122:                                              ; preds = %119
  %.lcssa98.lcssa.lcssa = phi i32 [ %.lcssa98.lcssa, %119 ]
  %.lcssa104 = phi i32 [ %120, %119 ]
  %.lcssa101.lcssa = phi i32 [ %.lcssa101, %119 ]
  store i32 %.lcssa101.lcssa, ptr %2, align 4
  store i32 %.lcssa104, ptr %1, align 4
  store i32 %.lcssa98.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted113 = load i32, ptr %1, align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %122, %134
  %123 = phi i32 [ %.promoted113, %122 ], [ %135, %134 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %124 = phi i32 [ 0, %.preheader13.preheader ], [ %132, %.preheader13 ]
  %125 = shl i32 %124, 3
  %invariant.op105 = add i32 %125, %123
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %126 = phi i32 [ 0, %.preheader12.preheader ], [ %130, %.preheader12 ]
  %storemerge3325 = phi i32 [ 0, %.preheader12.preheader ], [ %130, %.preheader12 ]
  %127 = shl i32 %storemerge3325, 6
  %.reass106 = add i32 %127, %invariant.op105
  %128 = sext i32 %.reass106 to i64
  %129 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %128
  store i32 1, ptr %129, align 4
  %130 = add nsw i32 %126, 1
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %.lcssa108 = phi i32 [ %130, %.preheader12 ]
  %132 = add nsw i32 %124, 1
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %.preheader12.preheader, label %134, !llvm.loop !38

134:                                              ; preds = %.preheader13
  %.lcssa111 = phi i32 [ %132, %.preheader13 ]
  %.lcssa108.lcssa = phi i32 [ %.lcssa108, %.preheader13 ]
  %135 = add nsw i32 %123, 1
  %136 = icmp slt i32 %135, 3
  br i1 %136, label %.preheader13.preheader, label %137, !llvm.loop !39

137:                                              ; preds = %134
  %.lcssa108.lcssa.lcssa = phi i32 [ %.lcssa108.lcssa, %134 ]
  %.lcssa114 = phi i32 [ %135, %134 ]
  %.lcssa111.lcssa = phi i32 [ %.lcssa111, %134 ]
  store i32 %.lcssa111.lcssa, ptr %2, align 4
  store i32 %.lcssa114, ptr %1, align 4
  store i32 %.lcssa108.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted123 = load i32, ptr %1, align 4
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %137, %149
  %138 = phi i32 [ %.promoted123, %137 ], [ %150, %149 ]
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %139 = phi i32 [ 0, %.preheader11.preheader ], [ %147, %.preheader11 ]
  %140 = shl i32 %139, 3
  %invariant.op115 = add i32 %140, %138
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %141 = phi i32 [ 0, %.preheader10.preheader ], [ %145, %.preheader10 ]
  %storemerge3126 = phi i32 [ 0, %.preheader10.preheader ], [ %145, %.preheader10 ]
  %142 = shl i32 %storemerge3126, 6
  %.reass116 = add i32 %142, %invariant.op115
  %143 = sext i32 %.reass116 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %143
  store i32 1, ptr %144, align 4
  %145 = add nsw i32 %141, 1
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %.lcssa118 = phi i32 [ %145, %.preheader10 ]
  %147 = add nsw i32 %139, 1
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %.preheader10.preheader, label %149, !llvm.loop !41

149:                                              ; preds = %.preheader11
  %.lcssa121 = phi i32 [ %147, %.preheader11 ]
  %.lcssa118.lcssa = phi i32 [ %.lcssa118, %.preheader11 ]
  %150 = add nsw i32 %138, 1
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %.preheader11.preheader, label %152, !llvm.loop !42

152:                                              ; preds = %149
  %.lcssa118.lcssa.lcssa = phi i32 [ %.lcssa118.lcssa, %149 ]
  %.lcssa124 = phi i32 [ %150, %149 ]
  %.lcssa121.lcssa = phi i32 [ %.lcssa121, %149 ]
  store i32 %.lcssa121.lcssa, ptr %2, align 4
  store i32 %.lcssa124, ptr %1, align 4
  store i32 %.lcssa118.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted133 = load i32, ptr %1, align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %152, %164
  %153 = phi i32 [ %.promoted133, %152 ], [ %165, %164 ]
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %154 = phi i32 [ 0, %.preheader9.preheader ], [ %162, %.preheader9 ]
  %155 = shl i32 %154, 3
  %invariant.op125 = add i32 %155, %153
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %156 = phi i32 [ 0, %.preheader8.preheader ], [ %160, %.preheader8 ]
  %storemerge2927 = phi i32 [ 0, %.preheader8.preheader ], [ %160, %.preheader8 ]
  %157 = shl i32 %storemerge2927, 6
  %.reass126 = add i32 %157, %invariant.op125
  %158 = sext i32 %.reass126 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %158
  store i32 1, ptr %159, align 4
  %160 = add nsw i32 %156, 1
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %.lcssa128 = phi i32 [ %160, %.preheader8 ]
  %162 = add nsw i32 %154, 1
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %.preheader8.preheader, label %164, !llvm.loop !44

164:                                              ; preds = %.preheader9
  %.lcssa131 = phi i32 [ %162, %.preheader9 ]
  %.lcssa128.lcssa = phi i32 [ %.lcssa128, %.preheader9 ]
  %165 = add nsw i32 %153, 1
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %.preheader9.preheader, label %167, !llvm.loop !45

167:                                              ; preds = %164
  %.lcssa128.lcssa.lcssa = phi i32 [ %.lcssa128.lcssa, %164 ]
  %.lcssa134 = phi i32 [ %165, %164 ]
  %.lcssa131.lcssa = phi i32 [ %.lcssa131, %164 ]
  store i32 %.lcssa131.lcssa, ptr %2, align 4
  store i32 %.lcssa134, ptr %1, align 4
  store i32 %.lcssa128.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted143 = load i32, ptr %1, align 4
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %167, %179
  %168 = phi i32 [ %.promoted143, %167 ], [ %180, %179 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %169 = phi i32 [ 0, %.preheader7.preheader ], [ %177, %.preheader7 ]
  %170 = shl i32 %169, 3
  %invariant.op135 = add i32 %170, %168
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %171 = phi i32 [ 0, %.preheader6.preheader ], [ %175, %.preheader6 ]
  %storemerge2728 = phi i32 [ 0, %.preheader6.preheader ], [ %175, %.preheader6 ]
  %172 = shl i32 %storemerge2728, 6
  %.reass136 = add i32 %172, %invariant.op135
  %173 = sext i32 %.reass136 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %171, 1
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %.lcssa138 = phi i32 [ %175, %.preheader6 ]
  %177 = add nsw i32 %169, 1
  %178 = icmp slt i32 %177, 2
  br i1 %178, label %.preheader6.preheader, label %179, !llvm.loop !47

179:                                              ; preds = %.preheader7
  %.lcssa141 = phi i32 [ %177, %.preheader7 ]
  %.lcssa138.lcssa = phi i32 [ %.lcssa138, %.preheader7 ]
  %180 = add nsw i32 %168, 1
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %.preheader7.preheader, label %182, !llvm.loop !48

182:                                              ; preds = %179
  %.lcssa138.lcssa.lcssa = phi i32 [ %.lcssa138.lcssa, %179 ]
  %.lcssa144 = phi i32 [ %180, %179 ]
  %.lcssa141.lcssa = phi i32 [ %.lcssa141, %179 ]
  store i32 %.lcssa141.lcssa, ptr %2, align 4
  store i32 %.lcssa144, ptr %1, align 4
  store i32 %.lcssa138.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted153 = load i32, ptr %1, align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %182, %194
  %183 = phi i32 [ %.promoted153, %182 ], [ %195, %194 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %184 = phi i32 [ 0, %.preheader5.preheader ], [ %192, %.preheader5 ]
  %185 = shl i32 %184, 3
  %invariant.op145 = add i32 %185, %183
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %186 = phi i32 [ 0, %.preheader4.preheader ], [ %190, %.preheader4 ]
  %storemerge2529 = phi i32 [ 0, %.preheader4.preheader ], [ %190, %.preheader4 ]
  %187 = shl i32 %storemerge2529, 6
  %.reass146 = add i32 %187, %invariant.op145
  %188 = sext i32 %.reass146 to i64
  %189 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %188
  store i32 1, ptr %189, align 4
  %190 = add nsw i32 %186, 1
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %.lcssa148 = phi i32 [ %190, %.preheader4 ]
  %192 = add nsw i32 %184, 1
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %.preheader4.preheader, label %194, !llvm.loop !50

194:                                              ; preds = %.preheader5
  %.lcssa151 = phi i32 [ %192, %.preheader5 ]
  %.lcssa148.lcssa = phi i32 [ %.lcssa148, %.preheader5 ]
  %195 = add nsw i32 %183, 1
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %.preheader5.preheader, label %197, !llvm.loop !51

197:                                              ; preds = %194
  %.lcssa148.lcssa.lcssa = phi i32 [ %.lcssa148.lcssa, %194 ]
  %.lcssa154 = phi i32 [ %195, %194 ]
  %.lcssa151.lcssa = phi i32 [ %.lcssa151, %194 ]
  store i32 %.lcssa151.lcssa, ptr %2, align 4
  store i32 %.lcssa154, ptr %1, align 4
  store i32 %.lcssa148.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted163 = load i32, ptr %1, align 4
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %197, %209
  %198 = phi i32 [ %.promoted163, %197 ], [ %210, %209 ]
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %199 = phi i32 [ 0, %.preheader3.preheader ], [ %207, %.preheader3 ]
  %200 = shl i32 %199, 3
  %invariant.op155 = add i32 %200, %198
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %201 = phi i32 [ 0, %.preheader2.preheader ], [ %205, %.preheader2 ]
  %storemerge2330 = phi i32 [ 0, %.preheader2.preheader ], [ %205, %.preheader2 ]
  %202 = shl i32 %storemerge2330, 6
  %.reass156 = add i32 %202, %invariant.op155
  %203 = sext i32 %.reass156 to i64
  %204 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %203
  store i32 1, ptr %204, align 4
  %205 = add nsw i32 %201, 1
  %206 = icmp slt i32 %205, 2
  br i1 %206, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %.lcssa158 = phi i32 [ %205, %.preheader2 ]
  %207 = add nsw i32 %199, 1
  %208 = icmp slt i32 %207, 2
  br i1 %208, label %.preheader2.preheader, label %209, !llvm.loop !53

209:                                              ; preds = %.preheader3
  %.lcssa161 = phi i32 [ %207, %.preheader3 ]
  %.lcssa158.lcssa = phi i32 [ %.lcssa158, %.preheader3 ]
  %210 = add nsw i32 %198, 1
  %211 = icmp slt i32 %210, 1
  br i1 %211, label %.preheader3.preheader, label %212, !llvm.loop !54

212:                                              ; preds = %209
  %.lcssa158.lcssa.lcssa = phi i32 [ %.lcssa158.lcssa, %209 ]
  %.lcssa164 = phi i32 [ %210, %209 ]
  %.lcssa161.lcssa = phi i32 [ %.lcssa161, %209 ]
  store i32 %.lcssa161.lcssa, ptr %2, align 4
  store i32 %.lcssa164, ptr %1, align 4
  store i32 %.lcssa158.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted173 = load i32, ptr %1, align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %212, %224
  %213 = phi i32 [ %.promoted173, %212 ], [ %225, %224 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %214 = phi i32 [ 0, %.preheader1.preheader ], [ %222, %.preheader1 ]
  %215 = shl i32 %214, 3
  %invariant.op165 = add i32 %215, %213
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %216 = phi i32 [ 0, %.preheader.preheader ], [ %220, %.preheader ]
  %storemerge2131 = phi i32 [ 0, %.preheader.preheader ], [ %220, %.preheader ]
  %217 = shl i32 %storemerge2131, 6
  %.reass166 = add i32 %217, %invariant.op165
  %218 = sext i32 %.reass166 to i64
  %219 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %218
  store i32 1, ptr %219, align 4
  %220 = add nsw i32 %216, 1
  %221 = icmp slt i32 %220, 2
  br i1 %221, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %.lcssa168 = phi i32 [ %220, %.preheader ]
  %222 = add nsw i32 %214, 1
  %223 = icmp slt i32 %222, 2
  br i1 %223, label %.preheader.preheader, label %224, !llvm.loop !56

224:                                              ; preds = %.preheader1
  %.lcssa171 = phi i32 [ %222, %.preheader1 ]
  %.lcssa168.lcssa = phi i32 [ %.lcssa168, %.preheader1 ]
  %225 = add nsw i32 %213, 1
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %.preheader1.preheader, label %227, !llvm.loop !57

227:                                              ; preds = %224
  %.lcssa168.lcssa.lcssa = phi i32 [ %.lcssa168.lcssa, %224 ]
  %.lcssa174 = phi i32 [ %225, %224 ]
  %.lcssa171.lcssa = phi i32 [ %.lcssa171, %224 ]
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
