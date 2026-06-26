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
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge2 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %6
  %17 = add nsw i32 %storemerge2, 1
  %.not = icmp sgt i32 %17, %5
  br i1 %.not, label %._crit_edge3, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %18

._crit_edge3:                                     ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge3 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %16, %5
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %24, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %17
  br label %25

25:                                               ; preds = %.lr.ph7, %30
  %indvars.iv5 = phi i64 [ %24, %.lr.ph7 ], [ %indvars.iv.next, %30 ]
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %30

28:                                               ; preds = %25
  %29 = trunc nsw i64 %indvars.iv5 to i32
  br label %.loopexit

30:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %25, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %30
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge3 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %16, %5
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4
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
  %storemerge119 = phi i32 [ 1, %.preheader31.preheader ], [ %16, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge4718 = phi i32 [ 1, %.preheader30.preheader ], [ %14, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge4817 = phi i32 [ 1, %.preheader29.preheader ], [ %12, %.preheader29 ]
  %6 = shl i32 %storemerge4817, 6
  %7 = shl i32 %storemerge4718, 3
  %8 = add i32 %6, %7
  %9 = add nsw i32 %storemerge119, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  %12 = add nsw i32 %storemerge4817, 1
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %14 = add nsw i32 %storemerge4718, 1
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %16 = add nsw i32 %storemerge119, 1
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge221 = phi i32 [ 0, %.preheader28.preheader ], [ %24, %.preheader28 ]
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge4620 = phi i32 [ 0, %.preheader27.preheader ], [ %22, %.preheader27 ]
  %18 = sext i32 %storemerge221 to i64
  %19 = getelementptr inbounds [2048 x i8], ptr @p, i64 %18
  %20 = sext i32 %storemerge4620 to i64
  %21 = getelementptr inbounds [4 x i8], ptr %19, i64 %20
  store i32 0, ptr %21, align 4
  %22 = add nsw i32 %storemerge4620, 1
  %23 = icmp slt i32 %22, 512
  br i1 %23, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %24 = add nsw i32 %storemerge221, 1
  %25 = icmp slt i32 %24, 13
  br i1 %25, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %storemerge324 = phi i32 [ 0, %.preheader26.preheader ], [ %32, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4423 = phi i32 [ 0, %.preheader25.preheader ], [ %30, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24..preheader24_crit_edge, %.preheader24.preheader
  %26 = shl i32 %storemerge4423, 3
  %27 = add nsw i32 %storemerge324, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @p, i64 %28
  store i32 1, ptr %29, align 4
  br i1 false, label %.preheader24..preheader24_crit_edge, label %.preheader25, !llvm.loop !19

.preheader24..preheader24_crit_edge:              ; preds = %.preheader24
  br label %.preheader24, !llvm.loop !19

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

.preheader23.preheader:                           ; preds = %34, %41
  %storemerge427 = phi i32 [ 0, %34 ], [ %42, %41 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23..preheader22.preheader_crit_edge, %.preheader23.preheader
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4325 = phi i32 [ 0, %.preheader22.preheader ], [ %39, %.preheader22 ]
  %35 = shl i32 %storemerge4325, 6
  %36 = add nsw i32 %storemerge427, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %37
  store i32 1, ptr %38, align 4
  %39 = add nsw i32 %storemerge4325, 1
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  br i1 false, label %.preheader23..preheader22.preheader_crit_edge, label %41, !llvm.loop !23

.preheader23..preheader22.preheader_crit_edge:    ; preds = %.preheader23
  br label %.preheader22.preheader, !llvm.loop !23

41:                                               ; preds = %.preheader23
  %42 = add nsw i32 %storemerge427, 1
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %.preheader23.preheader, label %44, !llvm.loop !24

44:                                               ; preds = %41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %..preheader21.preheader_crit_edge, %44
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4029 = phi i32 [ 0, %.preheader21.preheader ], [ %52, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4128 = phi i32 [ 0, %.preheader20.preheader ], [ %50, %.preheader20 ]
  %45 = shl i32 %storemerge4128, 6
  %46 = shl i32 %storemerge4029, 3
  %47 = add i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nsw i32 %storemerge4128, 1
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %52 = add nsw i32 %storemerge4029, 1
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %.preheader20.preheader, label %54, !llvm.loop !26

54:                                               ; preds = %.preheader21
  br i1 false, label %..preheader21.preheader_crit_edge, label %55, !llvm.loop !27

..preheader21.preheader_crit_edge:                ; preds = %54
  br label %.preheader21.preheader, !llvm.loop !27

55:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %55, %62
  %storemerge633 = phi i32 [ 0, %55 ], [ %63, %62 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3832 = phi i32 [ 0, %.preheader19.preheader ], [ %60, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18..preheader18_crit_edge, %.preheader18.preheader
  %56 = shl i32 %storemerge3832, 3
  %57 = add nsw i32 %storemerge633, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %58
  store i32 1, ptr %59, align 4
  br i1 false, label %.preheader18..preheader18_crit_edge, label %.preheader19, !llvm.loop !28

.preheader18..preheader18_crit_edge:              ; preds = %.preheader18
  br label %.preheader18, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %60 = add nsw i32 %storemerge3832, 1
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %.preheader18.preheader, label %62, !llvm.loop !29

62:                                               ; preds = %.preheader19
  %63 = add nsw i32 %storemerge633, 1
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %.preheader19.preheader, label %65, !llvm.loop !30

65:                                               ; preds = %62
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %65, %72
  %storemerge736 = phi i32 [ 0, %65 ], [ %73, %72 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17..preheader16.preheader_crit_edge, %.preheader17.preheader
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3734 = phi i32 [ 0, %.preheader16.preheader ], [ %70, %.preheader16 ]
  %66 = shl i32 %storemerge3734, 6
  %67 = add nsw i32 %storemerge736, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %storemerge3734, 1
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  br i1 false, label %.preheader17..preheader16.preheader_crit_edge, label %72, !llvm.loop !32

.preheader17..preheader16.preheader_crit_edge:    ; preds = %.preheader17
  br label %.preheader16.preheader, !llvm.loop !32

72:                                               ; preds = %.preheader17
  %73 = add nsw i32 %storemerge736, 1
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %.preheader17.preheader, label %75, !llvm.loop !33

75:                                               ; preds = %72
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %..preheader15.preheader_crit_edge, %75
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3438 = phi i32 [ 0, %.preheader15.preheader ], [ %83, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3537 = phi i32 [ 0, %.preheader14.preheader ], [ %81, %.preheader14 ]
  %76 = shl i32 %storemerge3537, 6
  %77 = shl i32 %storemerge3438, 3
  %78 = add i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nsw i32 %storemerge3537, 1
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %83 = add nsw i32 %storemerge3438, 1
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %.preheader14.preheader, label %85, !llvm.loop !35

85:                                               ; preds = %.preheader15
  br i1 false, label %..preheader15.preheader_crit_edge, label %86, !llvm.loop !36

..preheader15.preheader_crit_edge:                ; preds = %85
  br label %.preheader15.preheader, !llvm.loop !36

86:                                               ; preds = %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %86, %89
  %storemerge942 = phi i32 [ 0, %86 ], [ %90, %89 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13..preheader12.preheader_crit_edge, %.preheader13.preheader
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12..preheader12_crit_edge, %.preheader12.preheader
  %87 = sext i32 %storemerge942 to i64
  %88 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %87
  store i32 1, ptr %88, align 4
  br i1 false, label %.preheader12..preheader12_crit_edge, label %.preheader13, !llvm.loop !37

.preheader12..preheader12_crit_edge:              ; preds = %.preheader12
  br label %.preheader12, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  br i1 false, label %.preheader13..preheader12.preheader_crit_edge, label %89, !llvm.loop !38

.preheader13..preheader12.preheader_crit_edge:    ; preds = %.preheader13
  br label %.preheader12.preheader, !llvm.loop !38

89:                                               ; preds = %.preheader13
  %90 = add nsw i32 %storemerge942, 1
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %.preheader13.preheader, label %92, !llvm.loop !39

92:                                               ; preds = %89
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %..preheader11.preheader_crit_edge, %92
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3044 = phi i32 [ 0, %.preheader11.preheader ], [ %96, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10..preheader10_crit_edge, %.preheader10.preheader
  %93 = shl i32 %storemerge3044, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %94
  store i32 1, ptr %95, align 4
  br i1 false, label %.preheader10..preheader10_crit_edge, label %.preheader11, !llvm.loop !40

.preheader10..preheader10_crit_edge:              ; preds = %.preheader10
  br label %.preheader10, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %96 = add nsw i32 %storemerge3044, 1
  %97 = icmp slt i32 %96, 3
  br i1 %97, label %.preheader10.preheader, label %98, !llvm.loop !41

98:                                               ; preds = %.preheader11
  br i1 false, label %..preheader11.preheader_crit_edge, label %99, !llvm.loop !42

..preheader11.preheader_crit_edge:                ; preds = %98
  br label %.preheader11.preheader, !llvm.loop !42

99:                                               ; preds = %98
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %..preheader9.preheader_crit_edge, %99
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9..preheader8.preheader_crit_edge, %.preheader9.preheader
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2946 = phi i32 [ 0, %.preheader8.preheader ], [ %103, %.preheader8 ]
  %100 = shl i32 %storemerge2946, 6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nsw i32 %storemerge2946, 1
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  br i1 false, label %.preheader9..preheader8.preheader_crit_edge, label %105, !llvm.loop !44

.preheader9..preheader8.preheader_crit_edge:      ; preds = %.preheader9
  br label %.preheader8.preheader, !llvm.loop !44

105:                                              ; preds = %.preheader9
  br i1 false, label %..preheader9.preheader_crit_edge, label %106, !llvm.loop !45

..preheader9.preheader_crit_edge:                 ; preds = %105
  br label %.preheader9.preheader, !llvm.loop !45

106:                                              ; preds = %105
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %106, %113
  %storemerge1251 = phi i32 [ 0, %106 ], [ %114, %113 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2650 = phi i32 [ 0, %.preheader7.preheader ], [ %111, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6..preheader6_crit_edge, %.preheader6.preheader
  %107 = shl i32 %storemerge2650, 3
  %108 = add nsw i32 %storemerge1251, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %109
  store i32 1, ptr %110, align 4
  br i1 false, label %.preheader6..preheader6_crit_edge, label %.preheader7, !llvm.loop !46

.preheader6..preheader6_crit_edge:                ; preds = %.preheader6
  br label %.preheader6, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %111 = add nsw i32 %storemerge2650, 1
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %.preheader6.preheader, label %113, !llvm.loop !47

113:                                              ; preds = %.preheader7
  %114 = add nsw i32 %storemerge1251, 1
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %.preheader7.preheader, label %116, !llvm.loop !48

116:                                              ; preds = %113
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %116, %123
  %storemerge1354 = phi i32 [ 0, %116 ], [ %124, %123 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5..preheader4.preheader_crit_edge, %.preheader5.preheader
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2552 = phi i32 [ 0, %.preheader4.preheader ], [ %121, %.preheader4 ]
  %117 = shl i32 %storemerge2552, 6
  %118 = add nsw i32 %storemerge1354, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %119
  store i32 1, ptr %120, align 4
  %121 = add nsw i32 %storemerge2552, 1
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  br i1 false, label %.preheader5..preheader4.preheader_crit_edge, label %123, !llvm.loop !50

.preheader5..preheader4.preheader_crit_edge:      ; preds = %.preheader5
  br label %.preheader4.preheader, !llvm.loop !50

123:                                              ; preds = %.preheader5
  %124 = add nsw i32 %storemerge1354, 1
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %.preheader5.preheader, label %126, !llvm.loop !51

126:                                              ; preds = %123
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %..preheader3.preheader_crit_edge, %126
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2256 = phi i32 [ 0, %.preheader3.preheader ], [ %134, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2355 = phi i32 [ 0, %.preheader2.preheader ], [ %132, %.preheader2 ]
  %127 = shl i32 %storemerge2355, 6
  %128 = shl i32 %storemerge2256, 3
  %129 = add i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nsw i32 %storemerge2355, 1
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %134 = add nsw i32 %storemerge2256, 1
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %.preheader2.preheader, label %136, !llvm.loop !53

136:                                              ; preds = %.preheader3
  br i1 false, label %..preheader3.preheader_crit_edge, label %137, !llvm.loop !54

..preheader3.preheader_crit_edge:                 ; preds = %136
  br label %.preheader3.preheader, !llvm.loop !54

137:                                              ; preds = %136
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %137, %148
  %storemerge1560 = phi i32 [ 0, %137 ], [ %149, %148 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2059 = phi i32 [ 0, %.preheader1.preheader ], [ %146, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2158 = phi i32 [ 0, %.preheader.preheader ], [ %144, %.preheader ]
  %138 = shl i32 %storemerge2158, 6
  %139 = shl i32 %storemerge2059, 3
  %140 = add i32 %138, %139
  %141 = add nsw i32 %storemerge1560, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nsw i32 %storemerge2158, 1
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %146 = add nsw i32 %storemerge2059, 1
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %.preheader.preheader, label %148, !llvm.loop !56

148:                                              ; preds = %.preheader1
  %149 = add nsw i32 %storemerge1560, 1
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %.preheader1.preheader, label %151, !llvm.loop !57

151:                                              ; preds = %148
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %152 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %152, 0
  br i1 %.not, label %155, label %153

153:                                              ; preds = %151
  %154 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %154, ptr @n, align 4
  br label %156

155:                                              ; preds = %151
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %.pre, %155 ], [ %154, %153 ]
  %158 = call i32 @Trial(i32 noundef %157)
  %.not16 = icmp eq i32 %158, 0
  br i1 %.not16, label %159, label %160

159:                                              ; preds = %156
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %163

160:                                              ; preds = %156
  %161 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %161, 2005
  br i1 %.not18, label %163, label %162

162:                                              ; preds = %160
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %163

163:                                              ; preds = %162, %160, %159
  %164 = load i32, ptr @n, align 4
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %164) #4
  %166 = load i32, ptr @kount, align 4
  %167 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %166) #4
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
