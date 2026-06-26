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
  %split = phi i64 [ %3, %15 ]
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
  %split = phi i64 [ %3, %15 ]
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  %storemerge323 = phi i32 [ 0, %.preheader26.preheader ], [ %34, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4422 = phi i32 [ 0, %.preheader25.preheader ], [ %32, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %26 = shl nuw nsw i32 %storemerge4422, 3
  %27 = add nuw nsw i32 0, %26
  %28 = add nsw i32 %storemerge323, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @p, i64 %29
  store i32 1, ptr %30, align 4
  %31 = icmp slt i32 1, 1
  br i1 %31, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %32 = add nuw nsw i32 %storemerge4422, 1
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %34 = add nsw i32 %storemerge323, 1
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %.preheader25.preheader, label %36, !llvm.loop !21

36:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %36, %45
  %storemerge425 = phi i32 [ 0, %36 ], [ %46, %45 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4324 = phi i32 [ 0, %.preheader22.preheader ], [ %42, %.preheader22 ]
  %37 = shl i32 %storemerge4324, 6
  %38 = add nuw nsw i32 %37, 0
  %39 = add nuw nsw i32 %storemerge425, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %40
  store i32 1, ptr %41, align 4
  %42 = add nsw i32 %storemerge4324, 1
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %44 = icmp slt i32 1, 1
  br i1 %44, label %.preheader22.preheader, label %45, !llvm.loop !23

45:                                               ; preds = %.preheader23
  %46 = add nuw nsw i32 %storemerge425, 1
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %.preheader23.preheader, label %48, !llvm.loop !24

48:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %48, %59
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4027 = phi i32 [ 0, %.preheader21.preheader ], [ %57, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4126 = phi i32 [ 0, %.preheader20.preheader ], [ %55, %.preheader20 ]
  %49 = shl nuw nsw i32 %storemerge4126, 6
  %50 = shl i32 %storemerge4027, 3
  %51 = add i32 %49, %50
  %52 = add nuw nsw i32 0, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %53
  store i32 1, ptr %54, align 4
  %55 = add nuw nsw i32 %storemerge4126, 1
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %57 = add nsw i32 %storemerge4027, 1
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %.preheader20.preheader, label %59, !llvm.loop !26

59:                                               ; preds = %.preheader21
  %60 = icmp slt i32 1, 1
  br i1 %60, label %.preheader21.preheader, label %61, !llvm.loop !27

61:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %61, %70
  %storemerge629 = phi i32 [ 0, %61 ], [ %71, %70 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3828 = phi i32 [ 0, %.preheader19.preheader ], [ %68, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %62 = shl i32 %storemerge3828, 3
  %63 = add nuw nsw i32 0, %62
  %64 = add nuw nsw i32 %storemerge629, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %65
  store i32 1, ptr %66, align 4
  %67 = icmp slt i32 1, 1
  br i1 %67, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %68 = add nsw i32 %storemerge3828, 1
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %.preheader18.preheader, label %70, !llvm.loop !29

70:                                               ; preds = %.preheader19
  %71 = add nuw nsw i32 %storemerge629, 1
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %.preheader19.preheader, label %73, !llvm.loop !30

73:                                               ; preds = %70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %73, %82
  %storemerge731 = phi i32 [ 0, %73 ], [ %83, %82 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3730 = phi i32 [ 0, %.preheader16.preheader ], [ %79, %.preheader16 ]
  %74 = shl nuw nsw i32 %storemerge3730, 6
  %75 = add nuw nsw i32 %74, 0
  %76 = add nsw i32 %storemerge731, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %77
  store i32 1, ptr %78, align 4
  %79 = add nuw nsw i32 %storemerge3730, 1
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %81 = icmp slt i32 1, 1
  br i1 %81, label %.preheader16.preheader, label %82, !llvm.loop !32

82:                                               ; preds = %.preheader17
  %83 = add nsw i32 %storemerge731, 1
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %.preheader17.preheader, label %85, !llvm.loop !33

85:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %85, %96
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3433 = phi i32 [ 0, %.preheader15.preheader ], [ %94, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3532 = phi i32 [ 0, %.preheader14.preheader ], [ %92, %.preheader14 ]
  %86 = shl i32 %storemerge3532, 6
  %87 = shl nuw nsw i32 %storemerge3433, 3
  %88 = add nuw i32 %86, %87
  %89 = add nuw nsw i32 0, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %90
  store i32 1, ptr %91, align 4
  %92 = add nsw i32 %storemerge3532, 1
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %94 = add nuw nsw i32 %storemerge3433, 1
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %.preheader14.preheader, label %96, !llvm.loop !35

96:                                               ; preds = %.preheader15
  %97 = icmp slt i32 1, 1
  br i1 %97, label %.preheader15.preheader, label %98, !llvm.loop !36

98:                                               ; preds = %96
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %98, %104
  %storemerge934 = phi i32 [ 0, %98 ], [ %105, %104 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %99 = add nuw nsw i32 %storemerge934, 0
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %100
  store i32 1, ptr %101, align 4
  %102 = icmp slt i32 1, 1
  br i1 %102, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %103 = icmp slt i32 1, 1
  br i1 %103, label %.preheader12.preheader, label %104, !llvm.loop !38

104:                                              ; preds = %.preheader13
  %105 = add nsw i32 %storemerge934, 1
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %.preheader13.preheader, label %107, !llvm.loop !39

107:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %107, %116
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3035 = phi i32 [ 0, %.preheader11.preheader ], [ %114, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %108 = shl i32 %storemerge3035, 3
  %109 = add nuw nsw i32 0, %108
  %110 = add nuw nsw i32 0, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %111
  store i32 1, ptr %112, align 4
  %113 = icmp slt i32 1, 1
  br i1 %113, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %114 = add nsw i32 %storemerge3035, 1
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %.preheader10.preheader, label %116, !llvm.loop !41

116:                                              ; preds = %.preheader11
  %117 = icmp slt i32 1, 1
  br i1 %117, label %.preheader11.preheader, label %118, !llvm.loop !42

118:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %118, %127
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2936 = phi i32 [ 0, %.preheader8.preheader ], [ %124, %.preheader8 ]
  %119 = shl i32 %storemerge2936, 6
  %120 = add nuw nsw i32 %119, 0
  %121 = add nuw nsw i32 0, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %122
  store i32 1, ptr %123, align 4
  %124 = add nsw i32 %storemerge2936, 1
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %126 = icmp slt i32 1, 1
  br i1 %126, label %.preheader8.preheader, label %127, !llvm.loop !44

127:                                              ; preds = %.preheader9
  %128 = icmp slt i32 1, 1
  br i1 %128, label %.preheader9.preheader, label %129, !llvm.loop !45

129:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %129, %138
  %storemerge1238 = phi i32 [ 0, %129 ], [ %139, %138 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2637 = phi i32 [ 0, %.preheader7.preheader ], [ %136, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %130 = shl nuw nsw i32 %storemerge2637, 3
  %131 = add nuw nsw i32 0, %130
  %132 = add nuw nsw i32 %storemerge1238, %131
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %133
  store i32 1, ptr %134, align 4
  %135 = icmp slt i32 1, 1
  br i1 %135, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %136 = add nuw nsw i32 %storemerge2637, 1
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %.preheader6.preheader, label %138, !llvm.loop !47

138:                                              ; preds = %.preheader7
  %139 = add nuw nsw i32 %storemerge1238, 1
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %.preheader7.preheader, label %141, !llvm.loop !48

141:                                              ; preds = %138
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %141, %150
  %storemerge1340 = phi i32 [ 0, %141 ], [ %151, %150 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2539 = phi i32 [ 0, %.preheader4.preheader ], [ %147, %.preheader4 ]
  %142 = shl nuw nsw i32 %storemerge2539, 6
  %143 = add nuw nsw i32 %142, 0
  %144 = add nuw nsw i32 %storemerge1340, %143
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %145
  store i32 1, ptr %146, align 4
  %147 = add nuw nsw i32 %storemerge2539, 1
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %149 = icmp slt i32 1, 1
  br i1 %149, label %.preheader4.preheader, label %150, !llvm.loop !50

150:                                              ; preds = %.preheader5
  %151 = add nuw nsw i32 %storemerge1340, 1
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %.preheader5.preheader, label %153, !llvm.loop !51

153:                                              ; preds = %150
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %153, %164
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2242 = phi i32 [ 0, %.preheader3.preheader ], [ %162, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2341 = phi i32 [ 0, %.preheader2.preheader ], [ %160, %.preheader2 ]
  %154 = shl nuw nsw i32 %storemerge2341, 6
  %155 = shl nuw nsw i32 %storemerge2242, 3
  %156 = add nuw nsw i32 %154, %155
  %157 = add nuw nsw i32 0, %156
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %158
  store i32 1, ptr %159, align 4
  %160 = add nuw nsw i32 %storemerge2341, 1
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %162 = add nuw nsw i32 %storemerge2242, 1
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %.preheader2.preheader, label %164, !llvm.loop !53

164:                                              ; preds = %.preheader3
  %165 = icmp slt i32 1, 1
  br i1 %165, label %.preheader3.preheader, label %166, !llvm.loop !54

166:                                              ; preds = %164
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %166, %177
  %storemerge1545 = phi i32 [ 0, %166 ], [ %178, %177 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2044 = phi i32 [ 0, %.preheader1.preheader ], [ %175, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2143 = phi i32 [ 0, %.preheader.preheader ], [ %173, %.preheader ]
  %167 = shl nuw nsw i32 %storemerge2143, 6
  %168 = shl nuw nsw i32 %storemerge2044, 3
  %169 = add nuw nsw i32 %167, %168
  %170 = add nuw nsw i32 %storemerge1545, %169
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %171
  store i32 1, ptr %172, align 4
  %173 = add nuw nsw i32 %storemerge2143, 1
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %175 = add nuw nsw i32 %storemerge2044, 1
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %.preheader.preheader, label %177, !llvm.loop !56

177:                                              ; preds = %.preheader1
  %178 = add nuw nsw i32 %storemerge1545, 1
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %.preheader1.preheader, label %180, !llvm.loop !57

180:                                              ; preds = %177
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %181 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %181, 0
  br i1 %.not, label %184, label %182

182:                                              ; preds = %180
  %183 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %183, ptr @n, align 4
  br label %185

184:                                              ; preds = %180
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %185

185:                                              ; preds = %184, %182
  %186 = load i32, ptr @n, align 4
  %187 = call i32 @Trial(i32 noundef %186)
  %.not16 = icmp eq i32 %187, 0
  br i1 %.not16, label %188, label %189

188:                                              ; preds = %185
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %192

189:                                              ; preds = %185
  %190 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %190, 2005
  br i1 %.not18, label %192, label %191

191:                                              ; preds = %189
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %192

192:                                              ; preds = %191, %189, %188
  %193 = load i32, ptr @n, align 4
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %193) #4
  %195 = load i32, ptr @kount, align 4
  %196 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %195) #4
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
