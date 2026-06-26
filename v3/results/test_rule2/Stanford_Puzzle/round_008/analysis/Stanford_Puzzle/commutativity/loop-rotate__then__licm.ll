; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_007\output.ll'
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %.lr.ph, %16
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %8 = sext i32 %storemerge2 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %1, %storemerge2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %7
  %17 = add nsw i32 %storemerge2, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge3, label %7, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %19

._crit_edge3:                                     ; preds = %16
  %split4 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %7 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %9 = sext i32 %storemerge3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %17, %7
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !9

._crit_edge:                                      ; preds = %16
  %split = phi i64 [ %3, %16 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %25, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %18
  br label %26

26:                                               ; preds = %.lr.ph7, %31
  %indvars.iv5 = phi i64 [ %25, %.lr.ph7 ], [ %indvars.iv.next, %31 ]
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %31

29:                                               ; preds = %26
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %26 ]
  %30 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

31:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %26, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %31
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %29
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %7 = load i32, ptr %4, align 4
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %9 = sext i32 %storemerge3 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %17, %7
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !11

._crit_edge:                                      ; preds = %16
  %split = phi i64 [ %3, %16 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %18
  %storemerge2 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = sext i32 %storemerge2 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not3, %16
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %storemerge2, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %11, %4
  %19 = add nsw i32 %storemerge2, 1
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %18
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31.preheader:                           ; preds = %1
  br label %.preheader30.preheader

1:                                                ; preds = %0, %1
  %storemerge16 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = sext i32 %storemerge16 to i64
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nsw i32 %storemerge16, 1
  %5 = icmp slt i32 %4, 512
  br i1 %5, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %storemerge119 = phi i32 [ 1, %.preheader31.preheader ], [ %14, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge4718 = phi i32 [ 1, %.preheader30.preheader ], [ %12, %.preheader30 ]
  %6 = shl i32 %storemerge4718, 3
  %invariant.op = add i32 %6, %storemerge119
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge4817 = phi i32 [ 1, %.preheader29.preheader ], [ %10, %.preheader29 ]
  %7 = shl i32 %storemerge4817, 6
  %.reass = add i32 %7, %invariant.op
  %8 = sext i32 %.reass to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  %10 = add nsw i32 %storemerge4817, 1
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %12 = add nsw i32 %storemerge4718, 1
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %14 = add nsw i32 %storemerge119, 1
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge221 = phi i32 [ 0, %.preheader28.preheader ], [ %22, %.preheader28 ]
  %16 = sext i32 %storemerge221 to i64
  %17 = getelementptr inbounds [2048 x i8], ptr @p, i64 %16
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge4620 = phi i32 [ 0, %.preheader27.preheader ], [ %20, %.preheader27 ]
  %18 = sext i32 %storemerge4620 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nsw i32 %storemerge4620, 1
  %21 = icmp slt i32 %20, 512
  br i1 %21, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %22 = add nsw i32 %storemerge221, 1
  %23 = icmp slt i32 %22, 13
  br i1 %23, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %storemerge324 = phi i32 [ 0, %.preheader26.preheader ], [ %32, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4423 = phi i32 [ 0, %.preheader25.preheader ], [ %30, %.preheader25 ]
  %24 = shl i32 %storemerge4423, 3
  %invariant.op61 = add i32 %24, %storemerge324
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %storemerge4522 = phi i32 [ 0, %.preheader24.preheader ], [ %28, %.preheader24 ]
  %25 = shl i32 %storemerge4522, 6
  %.reass62 = add i32 %25, %invariant.op61
  %26 = sext i32 %.reass62 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @p, i64 %26
  store i32 1, ptr %27, align 4
  %28 = add nsw i32 %storemerge4522, 1
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %30 = add nsw i32 %storemerge4423, 1
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %32 = add nsw i32 %storemerge324, 1
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %.preheader25.preheader, label %34, !llvm.loop !21

34:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %34, %43
  %storemerge427 = phi i32 [ 0, %34 ], [ %44, %43 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %storemerge4226 = phi i32 [ 0, %.preheader23.preheader ], [ %41, %.preheader23 ]
  %35 = shl i32 %storemerge4226, 3
  %invariant.op63 = add i32 %35, %storemerge427
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4325 = phi i32 [ 0, %.preheader22.preheader ], [ %39, %.preheader22 ]
  %36 = shl i32 %storemerge4325, 6
  %.reass64 = add i32 %36, %invariant.op63
  %37 = sext i32 %.reass64 to i64
  %38 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %37
  store i32 1, ptr %38, align 4
  %39 = add nsw i32 %storemerge4325, 1
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %41 = add nsw i32 %storemerge4226, 1
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %.preheader22.preheader, label %43, !llvm.loop !23

43:                                               ; preds = %.preheader23
  %44 = add nsw i32 %storemerge427, 1
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %.preheader23.preheader, label %46, !llvm.loop !24

46:                                               ; preds = %43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %46, %55
  %storemerge530 = phi i32 [ 0, %46 ], [ %56, %55 ]
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4029 = phi i32 [ 0, %.preheader21.preheader ], [ %53, %.preheader21 ]
  %47 = shl i32 %storemerge4029, 3
  %invariant.op65 = add i32 %47, %storemerge530
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4128 = phi i32 [ 0, %.preheader20.preheader ], [ %51, %.preheader20 ]
  %48 = shl i32 %storemerge4128, 6
  %.reass66 = add i32 %48, %invariant.op65
  %49 = sext i32 %.reass66 to i64
  %50 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nsw i32 %storemerge4128, 1
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %53 = add nsw i32 %storemerge4029, 1
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %.preheader20.preheader, label %55, !llvm.loop !26

55:                                               ; preds = %.preheader21
  %56 = add nsw i32 %storemerge530, 1
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %.preheader21.preheader, label %58, !llvm.loop !27

58:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %58, %67
  %storemerge633 = phi i32 [ 0, %58 ], [ %68, %67 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3832 = phi i32 [ 0, %.preheader19.preheader ], [ %65, %.preheader19 ]
  %59 = shl i32 %storemerge3832, 3
  %invariant.op67 = add i32 %59, %storemerge633
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %storemerge3931 = phi i32 [ 0, %.preheader18.preheader ], [ %63, %.preheader18 ]
  %60 = shl i32 %storemerge3931, 6
  %.reass68 = add i32 %60, %invariant.op67
  %61 = sext i32 %.reass68 to i64
  %62 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nsw i32 %storemerge3931, 1
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %65 = add nsw i32 %storemerge3832, 1
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %.preheader18.preheader, label %67, !llvm.loop !29

67:                                               ; preds = %.preheader19
  %68 = add nsw i32 %storemerge633, 1
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %.preheader19.preheader, label %70, !llvm.loop !30

70:                                               ; preds = %67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %70, %79
  %storemerge736 = phi i32 [ 0, %70 ], [ %80, %79 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %storemerge3635 = phi i32 [ 0, %.preheader17.preheader ], [ %77, %.preheader17 ]
  %71 = shl i32 %storemerge3635, 3
  %invariant.op69 = add i32 %71, %storemerge736
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3734 = phi i32 [ 0, %.preheader16.preheader ], [ %75, %.preheader16 ]
  %72 = shl i32 %storemerge3734, 6
  %.reass70 = add i32 %72, %invariant.op69
  %73 = sext i32 %.reass70 to i64
  %74 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nsw i32 %storemerge3734, 1
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %77 = add nsw i32 %storemerge3635, 1
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %.preheader16.preheader, label %79, !llvm.loop !32

79:                                               ; preds = %.preheader17
  %80 = add nsw i32 %storemerge736, 1
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %.preheader17.preheader, label %82, !llvm.loop !33

82:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %82, %91
  %storemerge839 = phi i32 [ 0, %82 ], [ %92, %91 ]
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3438 = phi i32 [ 0, %.preheader15.preheader ], [ %89, %.preheader15 ]
  %83 = shl i32 %storemerge3438, 3
  %invariant.op71 = add i32 %83, %storemerge839
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3537 = phi i32 [ 0, %.preheader14.preheader ], [ %87, %.preheader14 ]
  %84 = shl i32 %storemerge3537, 6
  %.reass72 = add i32 %84, %invariant.op71
  %85 = sext i32 %.reass72 to i64
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nsw i32 %storemerge3537, 1
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %89 = add nsw i32 %storemerge3438, 1
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %.preheader14.preheader, label %91, !llvm.loop !35

91:                                               ; preds = %.preheader15
  %92 = add nsw i32 %storemerge839, 1
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %.preheader15.preheader, label %94, !llvm.loop !36

94:                                               ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %94, %103
  %storemerge942 = phi i32 [ 0, %94 ], [ %104, %103 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %storemerge3241 = phi i32 [ 0, %.preheader13.preheader ], [ %101, %.preheader13 ]
  %95 = shl i32 %storemerge3241, 3
  %invariant.op73 = add i32 %95, %storemerge942
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %storemerge3340 = phi i32 [ 0, %.preheader12.preheader ], [ %99, %.preheader12 ]
  %96 = shl i32 %storemerge3340, 6
  %.reass74 = add i32 %96, %invariant.op73
  %97 = sext i32 %.reass74 to i64
  %98 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %97
  store i32 1, ptr %98, align 4
  %99 = add nsw i32 %storemerge3340, 1
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %101 = add nsw i32 %storemerge3241, 1
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %.preheader12.preheader, label %103, !llvm.loop !38

103:                                              ; preds = %.preheader13
  %104 = add nsw i32 %storemerge942, 1
  %105 = icmp slt i32 %104, 3
  br i1 %105, label %.preheader13.preheader, label %106, !llvm.loop !39

106:                                              ; preds = %103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %106, %115
  %storemerge1045 = phi i32 [ 0, %106 ], [ %116, %115 ]
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3044 = phi i32 [ 0, %.preheader11.preheader ], [ %113, %.preheader11 ]
  %107 = shl i32 %storemerge3044, 3
  %invariant.op75 = add i32 %107, %storemerge1045
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %storemerge3143 = phi i32 [ 0, %.preheader10.preheader ], [ %111, %.preheader10 ]
  %108 = shl i32 %storemerge3143, 6
  %.reass76 = add i32 %108, %invariant.op75
  %109 = sext i32 %.reass76 to i64
  %110 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %109
  store i32 1, ptr %110, align 4
  %111 = add nsw i32 %storemerge3143, 1
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %113 = add nsw i32 %storemerge3044, 1
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %.preheader10.preheader, label %115, !llvm.loop !41

115:                                              ; preds = %.preheader11
  %116 = add nsw i32 %storemerge1045, 1
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %.preheader11.preheader, label %118, !llvm.loop !42

118:                                              ; preds = %115
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %118, %127
  %storemerge1148 = phi i32 [ 0, %118 ], [ %128, %127 ]
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %storemerge2847 = phi i32 [ 0, %.preheader9.preheader ], [ %125, %.preheader9 ]
  %119 = shl i32 %storemerge2847, 3
  %invariant.op77 = add i32 %119, %storemerge1148
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2946 = phi i32 [ 0, %.preheader8.preheader ], [ %123, %.preheader8 ]
  %120 = shl i32 %storemerge2946, 6
  %.reass78 = add i32 %120, %invariant.op77
  %121 = sext i32 %.reass78 to i64
  %122 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nsw i32 %storemerge2946, 1
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %125 = add nsw i32 %storemerge2847, 1
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %.preheader8.preheader, label %127, !llvm.loop !44

127:                                              ; preds = %.preheader9
  %128 = add nsw i32 %storemerge1148, 1
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %.preheader9.preheader, label %130, !llvm.loop !45

130:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %130, %139
  %storemerge1251 = phi i32 [ 0, %130 ], [ %140, %139 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2650 = phi i32 [ 0, %.preheader7.preheader ], [ %137, %.preheader7 ]
  %131 = shl i32 %storemerge2650, 3
  %invariant.op79 = add i32 %131, %storemerge1251
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %storemerge2749 = phi i32 [ 0, %.preheader6.preheader ], [ %135, %.preheader6 ]
  %132 = shl i32 %storemerge2749, 6
  %.reass80 = add i32 %132, %invariant.op79
  %133 = sext i32 %.reass80 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nsw i32 %storemerge2749, 1
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %137 = add nsw i32 %storemerge2650, 1
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %.preheader6.preheader, label %139, !llvm.loop !47

139:                                              ; preds = %.preheader7
  %140 = add nsw i32 %storemerge1251, 1
  %141 = icmp slt i32 %140, 2
  br i1 %141, label %.preheader7.preheader, label %142, !llvm.loop !48

142:                                              ; preds = %139
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %142, %151
  %storemerge1354 = phi i32 [ 0, %142 ], [ %152, %151 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %storemerge2453 = phi i32 [ 0, %.preheader5.preheader ], [ %149, %.preheader5 ]
  %143 = shl i32 %storemerge2453, 3
  %invariant.op81 = add i32 %143, %storemerge1354
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2552 = phi i32 [ 0, %.preheader4.preheader ], [ %147, %.preheader4 ]
  %144 = shl i32 %storemerge2552, 6
  %.reass82 = add i32 %144, %invariant.op81
  %145 = sext i32 %.reass82 to i64
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %145
  store i32 1, ptr %146, align 4
  %147 = add nsw i32 %storemerge2552, 1
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %149 = add nsw i32 %storemerge2453, 1
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %.preheader4.preheader, label %151, !llvm.loop !50

151:                                              ; preds = %.preheader5
  %152 = add nsw i32 %storemerge1354, 1
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %.preheader5.preheader, label %154, !llvm.loop !51

154:                                              ; preds = %151
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %154, %163
  %storemerge1457 = phi i32 [ 0, %154 ], [ %164, %163 ]
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2256 = phi i32 [ 0, %.preheader3.preheader ], [ %161, %.preheader3 ]
  %155 = shl i32 %storemerge2256, 3
  %invariant.op83 = add i32 %155, %storemerge1457
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2355 = phi i32 [ 0, %.preheader2.preheader ], [ %159, %.preheader2 ]
  %156 = shl i32 %storemerge2355, 6
  %.reass84 = add i32 %156, %invariant.op83
  %157 = sext i32 %.reass84 to i64
  %158 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %157
  store i32 1, ptr %158, align 4
  %159 = add nsw i32 %storemerge2355, 1
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %161 = add nsw i32 %storemerge2256, 1
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %.preheader2.preheader, label %163, !llvm.loop !53

163:                                              ; preds = %.preheader3
  %164 = add nsw i32 %storemerge1457, 1
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %.preheader3.preheader, label %166, !llvm.loop !54

166:                                              ; preds = %163
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %166, %175
  %storemerge1560 = phi i32 [ 0, %166 ], [ %176, %175 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2059 = phi i32 [ 0, %.preheader1.preheader ], [ %173, %.preheader1 ]
  %167 = shl i32 %storemerge2059, 3
  %invariant.op85 = add i32 %167, %storemerge1560
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2158 = phi i32 [ 0, %.preheader.preheader ], [ %171, %.preheader ]
  %168 = shl i32 %storemerge2158, 6
  %.reass86 = add i32 %168, %invariant.op85
  %169 = sext i32 %.reass86 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nsw i32 %storemerge2158, 1
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %173 = add nsw i32 %storemerge2059, 1
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %.preheader.preheader, label %175, !llvm.loop !56

175:                                              ; preds = %.preheader1
  %176 = add nsw i32 %storemerge1560, 1
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %.preheader1.preheader, label %178, !llvm.loop !57

178:                                              ; preds = %175
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %179 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %179, 0
  br i1 %.not, label %182, label %180

180:                                              ; preds = %178
  %181 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %181, ptr @n, align 4
  br label %183

182:                                              ; preds = %178
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %183

183:                                              ; preds = %182, %180
  %184 = load i32, ptr @n, align 4
  %185 = call i32 @Trial(i32 noundef %184)
  %.not16 = icmp eq i32 %185, 0
  br i1 %.not16, label %186, label %187

186:                                              ; preds = %183
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %190

187:                                              ; preds = %183
  %188 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %188, 2005
  br i1 %.not18, label %190, label %189

189:                                              ; preds = %187
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %190

190:                                              ; preds = %189, %187, %186
  %191 = load i32, ptr @n, align 4
  %192 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %191) #4
  %193 = load i32, ptr @kount, align 4
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %193) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nsw i32 %storemerge1, 1
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !58

4:                                                ; preds = %1
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
