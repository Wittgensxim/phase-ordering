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
  br label %10

10:                                               ; preds = %.lr.ph, %22
  %11 = phi i64 [ %7, %.lr.ph ], [ %26, %22 ]
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %24, %22 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %._crit_edge

22:                                               ; preds = %16, %10
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not = icmp sgt i32 %24, %28
  br i1 %.not, label %._crit_edge3, label %10, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %29

._crit_edge3:                                     ; preds = %22
  br label %29

29:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge3 ], [ 1, %2 ]
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
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i64 [ %7, %.lr.ph ], [ %25, %21 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %23, %21 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not = icmp sgt i32 %23, %27
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %25, %._crit_edge ], [ %7, %2 ]
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
  br label %37

37:                                               ; preds = %.lr.ph7, %42
  %indvars.iv5 = phi i64 [ %36, %.lr.ph7 ], [ %indvars.iv.next, %42 ]
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %39 = load i32, ptr %38, align 4
  %.not3 = icmp eq i32 %39, 0
  br i1 %.not3, label %40, label %42

40:                                               ; preds = %37
  %41 = trunc nsw i64 %indvars.iv5 to i32
  br label %.loopexit

42:                                               ; preds = %37
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %43 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %43, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %37, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %42
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %40
  %storemerge2 = phi i32 [ %41, %40 ], [ 0, %.loopexit.loopexit ]
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
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i64 [ %7, %.lr.ph ], [ %25, %21 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %23, %21 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not = icmp sgt i32 %23, %27
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !11

._crit_edge:                                      ; preds = %21
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %25, %._crit_edge ], [ %7, %2 ]
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
  br label %6

6:                                                ; preds = %1, %25
  %storemerge2 = phi i32 [ 0, %1 ], [ %27, %25 ]
  %7 = sext i32 %storemerge2 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %25, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %2, align 4
  %15 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %14)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %2, align 4
  %19 = call i32 @Place(i32 noundef %17, i32 noundef %18)
  %20 = call i32 @Trial(i32 noundef %19)
  %.not3 = icmp ne i32 %20, 0
  %21 = icmp eq i32 %19, 0
  %or.cond = or i1 %.not3, %21
  br i1 %or.cond, label %29, label %22

22:                                               ; preds = %16
  %23 = load i32, ptr %3, align 4
  %24 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %22, %13, %6
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 4
  %28 = icmp slt i32 %27, 13
  br i1 %28, label %6, label %29, !llvm.loop !12

29:                                               ; preds = %16, %25
  %storemerge1 = phi i32 [ 1, %16 ], [ 0, %25 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

.preheader31.preheader:                           ; preds = %5
  store i32 1, ptr %1, align 4
  br label %.preheader30.preheader

5:                                                ; preds = %0, %5
  %storemerge16 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %6 = sext i32 %storemerge16 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  store i32 1, ptr %2, align 4
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  store i32 0, ptr %1, align 4
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  store i32 1, ptr %3, align 4
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge4817 = phi i32 [ 1, %.preheader29.preheader ], [ %20, %.preheader29 ]
  %11 = load i32, ptr %1, align 4
  %12 = load i32, ptr %2, align 4
  %13 = shl i32 %storemerge4817, 6
  %14 = shl i32 %12, 3
  %15 = add i32 %13, %14
  %16 = add nsw i32 %11, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = load i32, ptr %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %22 = load i32, ptr %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %2, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  store i32 0, ptr %4, align 4
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  store i32 0, ptr %1, align 4
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge4618 = phi i32 [ 0, %.preheader27.preheader ], [ %34, %.preheader27 ]
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2048 x i8], ptr @p, i64 %29
  %31 = sext i32 %storemerge4618 to i64
  %32 = getelementptr inbounds [4 x i8], ptr %30, i64 %31
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %4, align 4
  %35 = icmp slt i32 %34, 512
  br i1 %35, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %36 = load i32, ptr %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %1, align 4
  %38 = icmp slt i32 %37, 13
  br i1 %38, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  store i32 0, ptr %3, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %storemerge4519 = phi i32 [ 0, %.preheader24.preheader ], [ %48, %.preheader24 ]
  %39 = load i32, ptr %1, align 4
  %40 = load i32, ptr %2, align 4
  %41 = shl i32 %storemerge4519, 6
  %42 = shl i32 %40, 3
  %43 = add i32 %41, %42
  %44 = add nsw i32 %39, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @p, i64 %45
  store i32 1, ptr %46, align 4
  %47 = load i32, ptr %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %3, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %50 = load i32, ptr %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %2, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %53 = load i32, ptr %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %1, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %.preheader25.preheader, label %56, !llvm.loop !21

56:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %56, %71
  store i32 0, ptr %2, align 4
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  store i32 0, ptr %3, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4320 = phi i32 [ 0, %.preheader22.preheader ], [ %66, %.preheader22 ]
  %57 = load i32, ptr %1, align 4
  %58 = load i32, ptr %2, align 4
  %59 = shl i32 %storemerge4320, 6
  %60 = shl i32 %58, 3
  %61 = add i32 %59, %60
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %63
  store i32 1, ptr %64, align 4
  %65 = load i32, ptr %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %3, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %68 = load i32, ptr %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %2, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %.preheader22.preheader, label %71, !llvm.loop !23

71:                                               ; preds = %.preheader23
  %72 = load i32, ptr %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %1, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %.preheader23.preheader, label %75, !llvm.loop !24

75:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %75, %90
  store i32 0, ptr %2, align 4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  store i32 0, ptr %3, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4121 = phi i32 [ 0, %.preheader20.preheader ], [ %85, %.preheader20 ]
  %76 = load i32, ptr %1, align 4
  %77 = load i32, ptr %2, align 4
  %78 = shl i32 %storemerge4121, 6
  %79 = shl i32 %77, 3
  %80 = add i32 %78, %79
  %81 = add nsw i32 %76, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %82
  store i32 1, ptr %83, align 4
  %84 = load i32, ptr %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %3, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %87 = load i32, ptr %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %2, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %.preheader20.preheader, label %90, !llvm.loop !26

90:                                               ; preds = %.preheader21
  %91 = load i32, ptr %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %1, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %.preheader21.preheader, label %94, !llvm.loop !27

94:                                               ; preds = %90
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %94, %109
  store i32 0, ptr %2, align 4
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  store i32 0, ptr %3, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %storemerge3922 = phi i32 [ 0, %.preheader18.preheader ], [ %104, %.preheader18 ]
  %95 = load i32, ptr %1, align 4
  %96 = load i32, ptr %2, align 4
  %97 = shl i32 %storemerge3922, 6
  %98 = shl i32 %96, 3
  %99 = add i32 %97, %98
  %100 = add nsw i32 %95, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %101
  store i32 1, ptr %102, align 4
  %103 = load i32, ptr %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %3, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %106 = load i32, ptr %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %2, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %.preheader18.preheader, label %109, !llvm.loop !29

109:                                              ; preds = %.preheader19
  %110 = load i32, ptr %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %1, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %.preheader19.preheader, label %113, !llvm.loop !30

113:                                              ; preds = %109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %113, %128
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  store i32 0, ptr %3, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3723 = phi i32 [ 0, %.preheader16.preheader ], [ %123, %.preheader16 ]
  %114 = load i32, ptr %1, align 4
  %115 = load i32, ptr %2, align 4
  %116 = shl i32 %storemerge3723, 6
  %117 = shl i32 %115, 3
  %118 = add i32 %116, %117
  %119 = add nsw i32 %114, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %120
  store i32 1, ptr %121, align 4
  %122 = load i32, ptr %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %3, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %125 = load i32, ptr %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %2, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %.preheader16.preheader, label %128, !llvm.loop !32

128:                                              ; preds = %.preheader17
  %129 = load i32, ptr %1, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %1, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %.preheader17.preheader, label %132, !llvm.loop !33

132:                                              ; preds = %128
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %132, %147
  store i32 0, ptr %2, align 4
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  store i32 0, ptr %3, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3524 = phi i32 [ 0, %.preheader14.preheader ], [ %142, %.preheader14 ]
  %133 = load i32, ptr %1, align 4
  %134 = load i32, ptr %2, align 4
  %135 = shl i32 %storemerge3524, 6
  %136 = shl i32 %134, 3
  %137 = add i32 %135, %136
  %138 = add nsw i32 %133, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %139
  store i32 1, ptr %140, align 4
  %141 = load i32, ptr %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %3, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %144 = load i32, ptr %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %2, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %.preheader14.preheader, label %147, !llvm.loop !35

147:                                              ; preds = %.preheader15
  %148 = load i32, ptr %1, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %1, align 4
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %.preheader15.preheader, label %151, !llvm.loop !36

151:                                              ; preds = %147
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %151, %166
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  store i32 0, ptr %3, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %storemerge3325 = phi i32 [ 0, %.preheader12.preheader ], [ %161, %.preheader12 ]
  %152 = load i32, ptr %1, align 4
  %153 = load i32, ptr %2, align 4
  %154 = shl i32 %storemerge3325, 6
  %155 = shl i32 %153, 3
  %156 = add i32 %154, %155
  %157 = add nsw i32 %152, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %158
  store i32 1, ptr %159, align 4
  %160 = load i32, ptr %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %3, align 4
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %163 = load i32, ptr %2, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %2, align 4
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %.preheader12.preheader, label %166, !llvm.loop !38

166:                                              ; preds = %.preheader13
  %167 = load i32, ptr %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %1, align 4
  %169 = icmp slt i32 %168, 3
  br i1 %169, label %.preheader13.preheader, label %170, !llvm.loop !39

170:                                              ; preds = %166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %170, %185
  store i32 0, ptr %2, align 4
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  store i32 0, ptr %3, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %storemerge3126 = phi i32 [ 0, %.preheader10.preheader ], [ %180, %.preheader10 ]
  %171 = load i32, ptr %1, align 4
  %172 = load i32, ptr %2, align 4
  %173 = shl i32 %storemerge3126, 6
  %174 = shl i32 %172, 3
  %175 = add i32 %173, %174
  %176 = add nsw i32 %171, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %177
  store i32 1, ptr %178, align 4
  %179 = load i32, ptr %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %3, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %182 = load i32, ptr %2, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %2, align 4
  %184 = icmp slt i32 %183, 3
  br i1 %184, label %.preheader10.preheader, label %185, !llvm.loop !41

185:                                              ; preds = %.preheader11
  %186 = load i32, ptr %1, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %1, align 4
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %.preheader11.preheader, label %189, !llvm.loop !42

189:                                              ; preds = %185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %189, %204
  store i32 0, ptr %2, align 4
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  store i32 0, ptr %3, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2927 = phi i32 [ 0, %.preheader8.preheader ], [ %199, %.preheader8 ]
  %190 = load i32, ptr %1, align 4
  %191 = load i32, ptr %2, align 4
  %192 = shl i32 %storemerge2927, 6
  %193 = shl i32 %191, 3
  %194 = add i32 %192, %193
  %195 = add nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %196
  store i32 1, ptr %197, align 4
  %198 = load i32, ptr %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %3, align 4
  %200 = icmp slt i32 %199, 3
  br i1 %200, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %201 = load i32, ptr %2, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %2, align 4
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %.preheader8.preheader, label %204, !llvm.loop !44

204:                                              ; preds = %.preheader9
  %205 = load i32, ptr %1, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %1, align 4
  %207 = icmp slt i32 %206, 1
  br i1 %207, label %.preheader9.preheader, label %208, !llvm.loop !45

208:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %208, %223
  store i32 0, ptr %2, align 4
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  store i32 0, ptr %3, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %storemerge2728 = phi i32 [ 0, %.preheader6.preheader ], [ %218, %.preheader6 ]
  %209 = load i32, ptr %1, align 4
  %210 = load i32, ptr %2, align 4
  %211 = shl i32 %storemerge2728, 6
  %212 = shl i32 %210, 3
  %213 = add i32 %211, %212
  %214 = add nsw i32 %209, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %215
  store i32 1, ptr %216, align 4
  %217 = load i32, ptr %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %3, align 4
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %220 = load i32, ptr %2, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %2, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %.preheader6.preheader, label %223, !llvm.loop !47

223:                                              ; preds = %.preheader7
  %224 = load i32, ptr %1, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %1, align 4
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %.preheader7.preheader, label %227, !llvm.loop !48

227:                                              ; preds = %223
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %227, %242
  store i32 0, ptr %2, align 4
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  store i32 0, ptr %3, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2529 = phi i32 [ 0, %.preheader4.preheader ], [ %237, %.preheader4 ]
  %228 = load i32, ptr %1, align 4
  %229 = load i32, ptr %2, align 4
  %230 = shl i32 %storemerge2529, 6
  %231 = shl i32 %229, 3
  %232 = add i32 %230, %231
  %233 = add nsw i32 %228, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %234
  store i32 1, ptr %235, align 4
  %236 = load i32, ptr %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %3, align 4
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %239 = load i32, ptr %2, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %2, align 4
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %.preheader4.preheader, label %242, !llvm.loop !50

242:                                              ; preds = %.preheader5
  %243 = load i32, ptr %1, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %1, align 4
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %.preheader5.preheader, label %246, !llvm.loop !51

246:                                              ; preds = %242
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %246, %261
  store i32 0, ptr %2, align 4
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  store i32 0, ptr %3, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2330 = phi i32 [ 0, %.preheader2.preheader ], [ %256, %.preheader2 ]
  %247 = load i32, ptr %1, align 4
  %248 = load i32, ptr %2, align 4
  %249 = shl i32 %storemerge2330, 6
  %250 = shl i32 %248, 3
  %251 = add i32 %249, %250
  %252 = add nsw i32 %247, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %253
  store i32 1, ptr %254, align 4
  %255 = load i32, ptr %3, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %3, align 4
  %257 = icmp slt i32 %256, 2
  br i1 %257, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %258 = load i32, ptr %2, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %2, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %.preheader2.preheader, label %261, !llvm.loop !53

261:                                              ; preds = %.preheader3
  %262 = load i32, ptr %1, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %1, align 4
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %.preheader3.preheader, label %265, !llvm.loop !54

265:                                              ; preds = %261
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %265, %280
  store i32 0, ptr %2, align 4
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  store i32 0, ptr %3, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2131 = phi i32 [ 0, %.preheader.preheader ], [ %275, %.preheader ]
  %266 = load i32, ptr %1, align 4
  %267 = load i32, ptr %2, align 4
  %268 = shl i32 %storemerge2131, 6
  %269 = shl i32 %267, 3
  %270 = add i32 %268, %269
  %271 = add nsw i32 %266, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %272
  store i32 1, ptr %273, align 4
  %274 = load i32, ptr %3, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %3, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %277 = load i32, ptr %2, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %2, align 4
  %279 = icmp slt i32 %278, 2
  br i1 %279, label %.preheader.preheader, label %280, !llvm.loop !56

280:                                              ; preds = %.preheader1
  %281 = load i32, ptr %1, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %1, align 4
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %.preheader1.preheader, label %284, !llvm.loop !57

284:                                              ; preds = %280
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %285 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %285, 0
  br i1 %.not, label %289, label %286

286:                                              ; preds = %284
  %287 = load i32, ptr %4, align 4
  %288 = call i32 @Place(i32 noundef 0, i32 noundef %287)
  store i32 %288, ptr @n, align 4
  br label %290

289:                                              ; preds = %284
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %290

290:                                              ; preds = %289, %286
  %291 = load i32, ptr @n, align 4
  %292 = call i32 @Trial(i32 noundef %291)
  %.not16 = icmp eq i32 %292, 0
  br i1 %.not16, label %293, label %294

293:                                              ; preds = %290
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %297

294:                                              ; preds = %290
  %295 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %295, 2005
  br i1 %.not18, label %297, label %296

296:                                              ; preds = %294
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %297

297:                                              ; preds = %296, %294, %293
  %298 = load i32, ptr @n, align 4
  %299 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %298) #4
  %300 = load i32, ptr @kount, align 4
  %301 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %300) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  call void @Puzzle()
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !58

6:                                                ; preds = %2
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
