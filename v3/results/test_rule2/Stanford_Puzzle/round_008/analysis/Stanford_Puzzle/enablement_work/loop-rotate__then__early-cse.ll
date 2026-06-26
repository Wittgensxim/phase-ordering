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
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge3, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  br label %19

._crit_edge3:                                     ; preds = %16
  br label %19

19:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge3 ], [ 1, %2 ]
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
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %3, %._crit_edge ], [ %3, %2 ]
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
  %30 = trunc nsw i64 %indvars.iv5 to i32
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
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %3, %._crit_edge ], [ %3, %2 ]
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
  %storemerge324 = phi i32 [ 0, %.preheader26.preheader ], [ %35, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4423 = phi i32 [ 0, %.preheader25.preheader ], [ %33, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %storemerge4522 = phi i32 [ 0, %.preheader24.preheader ], [ %32, %.preheader24 ]
  %26 = shl i32 %storemerge4522, 6
  %27 = shl i32 %storemerge4423, 3
  %28 = add i32 %26, %27
  %29 = add nsw i32 %storemerge324, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @p, i64 %30
  store i32 1, ptr %31, align 4
  %32 = add nsw i32 %storemerge4522, 1
  br i1 false, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %33 = add nsw i32 %storemerge4423, 1
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %35 = add nsw i32 %storemerge324, 1
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %.preheader25.preheader, label %37, !llvm.loop !21

37:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %37, %47
  %storemerge427 = phi i32 [ 0, %37 ], [ %48, %47 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %storemerge4226 = phi i32 [ 0, %.preheader23.preheader ], [ %46, %.preheader23 ]
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4325 = phi i32 [ 0, %.preheader22.preheader ], [ %44, %.preheader22 ]
  %38 = shl i32 %storemerge4325, 6
  %39 = shl i32 %storemerge4226, 3
  %40 = add i32 %38, %39
  %41 = add nsw i32 %storemerge427, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %42
  store i32 1, ptr %43, align 4
  %44 = add nsw i32 %storemerge4325, 1
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %46 = add nsw i32 %storemerge4226, 1
  br i1 false, label %.preheader22.preheader, label %47, !llvm.loop !23

47:                                               ; preds = %.preheader23
  %48 = add nsw i32 %storemerge427, 1
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %.preheader23.preheader, label %50, !llvm.loop !24

50:                                               ; preds = %47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %50, %61
  %storemerge530 = phi i32 [ 0, %50 ], [ %62, %61 ]
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4029 = phi i32 [ 0, %.preheader21.preheader ], [ %59, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4128 = phi i32 [ 0, %.preheader20.preheader ], [ %57, %.preheader20 ]
  %51 = shl i32 %storemerge4128, 6
  %52 = shl i32 %storemerge4029, 3
  %53 = add i32 %51, %52
  %54 = add nsw i32 %storemerge530, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %55
  store i32 1, ptr %56, align 4
  %57 = add nsw i32 %storemerge4128, 1
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %59 = add nsw i32 %storemerge4029, 1
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %.preheader20.preheader, label %61, !llvm.loop !26

61:                                               ; preds = %.preheader21
  %62 = add nsw i32 %storemerge530, 1
  br i1 false, label %.preheader21.preheader, label %63, !llvm.loop !27

63:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %63, %73
  %storemerge633 = phi i32 [ 0, %63 ], [ %74, %73 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3832 = phi i32 [ 0, %.preheader19.preheader ], [ %71, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %storemerge3931 = phi i32 [ 0, %.preheader18.preheader ], [ %70, %.preheader18 ]
  %64 = shl i32 %storemerge3931, 6
  %65 = shl i32 %storemerge3832, 3
  %66 = add i32 %64, %65
  %67 = add nsw i32 %storemerge633, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %storemerge3931, 1
  br i1 false, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %71 = add nsw i32 %storemerge3832, 1
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %.preheader18.preheader, label %73, !llvm.loop !29

73:                                               ; preds = %.preheader19
  %74 = add nsw i32 %storemerge633, 1
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %.preheader19.preheader, label %76, !llvm.loop !30

76:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %76, %86
  %storemerge736 = phi i32 [ 0, %76 ], [ %87, %86 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %storemerge3635 = phi i32 [ 0, %.preheader17.preheader ], [ %85, %.preheader17 ]
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3734 = phi i32 [ 0, %.preheader16.preheader ], [ %83, %.preheader16 ]
  %77 = shl i32 %storemerge3734, 6
  %78 = shl i32 %storemerge3635, 3
  %79 = add i32 %77, %78
  %80 = add nsw i32 %storemerge736, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nsw i32 %storemerge3734, 1
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %85 = add nsw i32 %storemerge3635, 1
  br i1 false, label %.preheader16.preheader, label %86, !llvm.loop !32

86:                                               ; preds = %.preheader17
  %87 = add nsw i32 %storemerge736, 1
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %.preheader17.preheader, label %89, !llvm.loop !33

89:                                               ; preds = %86
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %89, %100
  %storemerge839 = phi i32 [ 0, %89 ], [ %101, %100 ]
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3438 = phi i32 [ 0, %.preheader15.preheader ], [ %98, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3537 = phi i32 [ 0, %.preheader14.preheader ], [ %96, %.preheader14 ]
  %90 = shl i32 %storemerge3537, 6
  %91 = shl i32 %storemerge3438, 3
  %92 = add i32 %90, %91
  %93 = add nsw i32 %storemerge839, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %94
  store i32 1, ptr %95, align 4
  %96 = add nsw i32 %storemerge3537, 1
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %98 = add nsw i32 %storemerge3438, 1
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %.preheader14.preheader, label %100, !llvm.loop !35

100:                                              ; preds = %.preheader15
  %101 = add nsw i32 %storemerge839, 1
  br i1 false, label %.preheader15.preheader, label %102, !llvm.loop !36

102:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %102, %111
  %storemerge942 = phi i32 [ 0, %102 ], [ %112, %111 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %storemerge3241 = phi i32 [ 0, %.preheader13.preheader ], [ %110, %.preheader13 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %storemerge3340 = phi i32 [ 0, %.preheader12.preheader ], [ %109, %.preheader12 ]
  %103 = shl i32 %storemerge3340, 6
  %104 = shl i32 %storemerge3241, 3
  %105 = add i32 %103, %104
  %106 = add nsw i32 %storemerge942, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %107
  store i32 1, ptr %108, align 4
  %109 = add nsw i32 %storemerge3340, 1
  br i1 false, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %110 = add nsw i32 %storemerge3241, 1
  br i1 false, label %.preheader12.preheader, label %111, !llvm.loop !38

111:                                              ; preds = %.preheader13
  %112 = add nsw i32 %storemerge942, 1
  %113 = icmp slt i32 %112, 3
  br i1 %113, label %.preheader13.preheader, label %114, !llvm.loop !39

114:                                              ; preds = %111
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %114, %124
  %storemerge1045 = phi i32 [ 0, %114 ], [ %125, %124 ]
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3044 = phi i32 [ 0, %.preheader11.preheader ], [ %122, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %storemerge3143 = phi i32 [ 0, %.preheader10.preheader ], [ %121, %.preheader10 ]
  %115 = shl i32 %storemerge3143, 6
  %116 = shl i32 %storemerge3044, 3
  %117 = add i32 %115, %116
  %118 = add nsw i32 %storemerge1045, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %119
  store i32 1, ptr %120, align 4
  %121 = add nsw i32 %storemerge3143, 1
  br i1 false, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %122 = add nsw i32 %storemerge3044, 1
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %.preheader10.preheader, label %124, !llvm.loop !41

124:                                              ; preds = %.preheader11
  %125 = add nsw i32 %storemerge1045, 1
  br i1 false, label %.preheader11.preheader, label %126, !llvm.loop !42

126:                                              ; preds = %124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %126, %136
  %storemerge1148 = phi i32 [ 0, %126 ], [ %137, %136 ]
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %storemerge2847 = phi i32 [ 0, %.preheader9.preheader ], [ %135, %.preheader9 ]
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2946 = phi i32 [ 0, %.preheader8.preheader ], [ %133, %.preheader8 ]
  %127 = shl i32 %storemerge2946, 6
  %128 = shl i32 %storemerge2847, 3
  %129 = add i32 %127, %128
  %130 = add nsw i32 %storemerge1148, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nsw i32 %storemerge2946, 1
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %135 = add nsw i32 %storemerge2847, 1
  br i1 false, label %.preheader8.preheader, label %136, !llvm.loop !44

136:                                              ; preds = %.preheader9
  %137 = add nsw i32 %storemerge1148, 1
  br i1 false, label %.preheader9.preheader, label %138, !llvm.loop !45

138:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %138, %148
  %storemerge1251 = phi i32 [ 0, %138 ], [ %149, %148 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2650 = phi i32 [ 0, %.preheader7.preheader ], [ %146, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %storemerge2749 = phi i32 [ 0, %.preheader6.preheader ], [ %145, %.preheader6 ]
  %139 = shl i32 %storemerge2749, 6
  %140 = shl i32 %storemerge2650, 3
  %141 = add i32 %139, %140
  %142 = add nsw i32 %storemerge1251, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %143
  store i32 1, ptr %144, align 4
  %145 = add nsw i32 %storemerge2749, 1
  br i1 false, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %146 = add nsw i32 %storemerge2650, 1
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %.preheader6.preheader, label %148, !llvm.loop !47

148:                                              ; preds = %.preheader7
  %149 = add nsw i32 %storemerge1251, 1
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %.preheader7.preheader, label %151, !llvm.loop !48

151:                                              ; preds = %148
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %151, %161
  %storemerge1354 = phi i32 [ 0, %151 ], [ %162, %161 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %storemerge2453 = phi i32 [ 0, %.preheader5.preheader ], [ %160, %.preheader5 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2552 = phi i32 [ 0, %.preheader4.preheader ], [ %158, %.preheader4 ]
  %152 = shl i32 %storemerge2552, 6
  %153 = shl i32 %storemerge2453, 3
  %154 = add i32 %152, %153
  %155 = add nsw i32 %storemerge1354, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %156
  store i32 1, ptr %157, align 4
  %158 = add nsw i32 %storemerge2552, 1
  %159 = icmp slt i32 %158, 2
  br i1 %159, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %160 = add nsw i32 %storemerge2453, 1
  br i1 false, label %.preheader4.preheader, label %161, !llvm.loop !50

161:                                              ; preds = %.preheader5
  %162 = add nsw i32 %storemerge1354, 1
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %.preheader5.preheader, label %164, !llvm.loop !51

164:                                              ; preds = %161
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %164, %175
  %storemerge1457 = phi i32 [ 0, %164 ], [ %176, %175 ]
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2256 = phi i32 [ 0, %.preheader3.preheader ], [ %173, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2355 = phi i32 [ 0, %.preheader2.preheader ], [ %171, %.preheader2 ]
  %165 = shl i32 %storemerge2355, 6
  %166 = shl i32 %storemerge2256, 3
  %167 = add i32 %165, %166
  %168 = add nsw i32 %storemerge1457, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nsw i32 %storemerge2355, 1
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %173 = add nsw i32 %storemerge2256, 1
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %.preheader2.preheader, label %175, !llvm.loop !53

175:                                              ; preds = %.preheader3
  %176 = add nsw i32 %storemerge1457, 1
  br i1 false, label %.preheader3.preheader, label %177, !llvm.loop !54

177:                                              ; preds = %175
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %177, %188
  %storemerge1560 = phi i32 [ 0, %177 ], [ %189, %188 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2059 = phi i32 [ 0, %.preheader1.preheader ], [ %186, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2158 = phi i32 [ 0, %.preheader.preheader ], [ %184, %.preheader ]
  %178 = shl i32 %storemerge2158, 6
  %179 = shl i32 %storemerge2059, 3
  %180 = add i32 %178, %179
  %181 = add nsw i32 %storemerge1560, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %182
  store i32 1, ptr %183, align 4
  %184 = add nsw i32 %storemerge2158, 1
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %186 = add nsw i32 %storemerge2059, 1
  %187 = icmp slt i32 %186, 2
  br i1 %187, label %.preheader.preheader, label %188, !llvm.loop !56

188:                                              ; preds = %.preheader1
  %189 = add nsw i32 %storemerge1560, 1
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %.preheader1.preheader, label %191, !llvm.loop !57

191:                                              ; preds = %188
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %192 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %192, 0
  br i1 %.not, label %195, label %193

193:                                              ; preds = %191
  %194 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %194, ptr @n, align 4
  br label %196

195:                                              ; preds = %191
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %196

196:                                              ; preds = %195, %193
  %197 = load i32, ptr @n, align 4
  %198 = call i32 @Trial(i32 noundef %197)
  %.not16 = icmp eq i32 %198, 0
  br i1 %.not16, label %199, label %200

199:                                              ; preds = %196
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %203

200:                                              ; preds = %196
  %201 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %201, 2005
  br i1 %.not18, label %203, label %202

202:                                              ; preds = %200
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %203

203:                                              ; preds = %202, %200, %199
  %204 = load i32, ptr @n, align 4
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %204) #4
  %206 = load i32, ptr @kount, align 4
  %207 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %206) #4
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
