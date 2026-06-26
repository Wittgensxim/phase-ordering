; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_002\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = sext i32 %.pre to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %12
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %12 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %12, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i64 %3, %indvars.iv
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not3 = icmp eq i32 %11, 0
  br i1 %.not3, label %12, label %._crit_edge.loopexit

12:                                               ; preds = %8, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %8, %12
  %.ph = phi i32 [ 1, %12 ], [ 0, %8 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %13 = phi i32 [ 1, %2 ], [ %.ph, %._crit_edge.loopexit ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %11 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %.not3 = icmp eq i32 %7, 0
  br i1 %.not3, label %11, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i64 %3, %indvars.iv
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp slt i32 %1, 512
  br i1 %18, label %.lr.ph6.preheader, label %._crit_edge7

.lr.ph6.preheader:                                ; preds = %._crit_edge
  %19 = sext i32 %1 to i64
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.lr.ph6.preheader, %23
  %indvars.iv2 = phi i64 [ %19, %.lr.ph6.preheader ], [ %indvars.iv.next3, %23 ]
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv2
  %21 = load i32, ptr %20, align 4
  %.not2 = icmp eq i32 %21, 0
  %22 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %.not2, label %._crit_edge7.loopexit, label %23

23:                                               ; preds = %.lr.ph6
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next3 to i32
  %exitcond5 = icmp ne i32 %lftr.wideiv, 512
  br i1 %exitcond5, label %.lr.ph6, label %._crit_edge7.loopexit, !llvm.loop !10

._crit_edge7.loopexit:                            ; preds = %.lr.ph6, %23
  %.ph = phi i32 [ 0, %23 ], [ %22, %.lr.ph6 ]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %._crit_edge7.loopexit, %._crit_edge
  %24 = phi i32 [ 0, %._crit_edge ], [ %.ph, %._crit_edge7.loopexit ]
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %11 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %11, label %8

8:                                                ; preds = %.lr.ph
  %9 = add nsw i64 %3, %indvars.iv
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %20, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %20, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %20, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not2, %17
  br i1 %or.cond, label %21, label %18

18:                                               ; preds = %13
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %19, i32 noundef %0)
  br label %20

20:                                               ; preds = %10, %18, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 13
  br i1 %exitcond, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %20, %13
  %22 = phi i32 [ 1, %13 ], [ 0, %20 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %1 ], [ 0, %0 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %1, label %.preheader2, !llvm.loop !13

.preheader2:                                      ; preds = %1
  br label %3

3:                                                ; preds = %.preheader2, %12
  %indvars.iv12 = phi i64 [ 1, %.preheader2 ], [ %indvars.iv.next13, %12 ]
  br label %4

4:                                                ; preds = %11, %3
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %11 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %5, %4
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %5 ], [ 1, %4 ]
  %6 = shl nuw nsw i64 %indvars.iv4, 6
  %7 = shl nuw nsw i64 %indvars.iv8, 3
  %8 = or disjoint i64 %6, %7
  %9 = or disjoint i64 %indvars.iv12, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %9
  store i32 0, ptr %10, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 6
  br i1 %exitcond7, label %5, label %11, !llvm.loop !14

11:                                               ; preds = %5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next9, 6
  br i1 %exitcond11, label %4, label %12, !llvm.loop !15

12:                                               ; preds = %11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, 6
  br i1 %exitcond15, label %3, label %.preheader1, !llvm.loop !16

.preheader1:                                      ; preds = %12
  br label %13

13:                                               ; preds = %.preheader1, %17
  %indvars.iv20 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next21, %17 ]
  br label %14

14:                                               ; preds = %14, %13
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %14 ], [ 0, %13 ]
  %15 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv20
  %16 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv16
  store i32 0, ptr %16, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19 = icmp ne i64 %indvars.iv.next17, 512
  br i1 %exitcond19, label %14, label %17, !llvm.loop !17

17:                                               ; preds = %14
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp ne i64 %indvars.iv.next21, 13
  br i1 %exitcond23, label %13, label %.preheader, !llvm.loop !18

.preheader:                                       ; preds = %17
  br label %18

18:                                               ; preds = %.preheader, %28
  %19 = phi i32 [ %29, %28 ], [ 0, %.preheader ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ 1, %20 ]
  %22 = shl nuw nsw i32 %21, 3
  %23 = or disjoint i32 %19, %22
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %24
  store i32 1, ptr %25, align 4
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp samesign ult i32 %26, 2
  br i1 %27, label %20, label %28, !llvm.loop !19

28:                                               ; preds = %20
  %29 = add nuw nsw i32 %19, 1
  %exitcond24 = icmp ne i32 %29, 4
  br i1 %exitcond24, label %18, label %30, !llvm.loop !20

30:                                               ; preds = %28
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %31

31:                                               ; preds = %38, %30
  %32 = phi i32 [ 0, %30 ], [ 1, %38 ]
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %34, %31
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %34 ], [ 0, %31 ]
  %35 = shl nuw nsw i64 %indvars.iv25, 6
  %36 = or disjoint i64 %33, %35
  %37 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %36
  store i32 1, ptr %37, align 4
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond28 = icmp ne i64 %indvars.iv.next26, 4
  br i1 %exitcond28, label %34, label %38, !llvm.loop !21

38:                                               ; preds = %34
  %39 = add nuw nsw i32 %32, 1
  %40 = icmp samesign ult i32 %39, 2
  br i1 %40, label %31, label %41, !llvm.loop !22

41:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %42

42:                                               ; preds = %48, %41
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %48 ], [ 0, %41 ]
  br label %43

43:                                               ; preds = %43, %42
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %43 ], [ 0, %42 ]
  %44 = shl nuw nsw i64 %indvars.iv29, 6
  %45 = shl nuw nsw i64 %indvars.iv33, 3
  %46 = or disjoint i64 %44, %45
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32 = icmp ne i64 %indvars.iv.next30, 2
  br i1 %exitcond32, label %43, label %48, !llvm.loop !23

48:                                               ; preds = %43
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond36 = icmp ne i64 %indvars.iv.next34, 4
  br i1 %exitcond36, label %42, label %49, !llvm.loop !24

49:                                               ; preds = %48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %50

50:                                               ; preds = %57, %49
  %51 = phi i32 [ 0, %49 ], [ 1, %57 ]
  %52 = zext i32 %51 to i64
  br label %53

53:                                               ; preds = %53, %50
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %53 ], [ 0, %50 ]
  %54 = shl nuw nsw i64 %indvars.iv37, 3
  %55 = or disjoint i64 %52, %54
  %56 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %55
  store i32 1, ptr %56, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40 = icmp ne i64 %indvars.iv.next38, 4
  br i1 %exitcond40, label %53, label %57, !llvm.loop !25

57:                                               ; preds = %53
  %58 = add nuw nsw i32 %51, 1
  %59 = icmp samesign ult i32 %58, 2
  br i1 %59, label %50, label %60, !llvm.loop !26

60:                                               ; preds = %57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %61

61:                                               ; preds = %66, %60
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %66 ], [ 0, %60 ]
  br label %62

62:                                               ; preds = %62, %61
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %62 ], [ 0, %61 ]
  %63 = shl nuw nsw i64 %indvars.iv41, 6
  %64 = or disjoint i64 %indvars.iv45, %63
  %65 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %64
  store i32 1, ptr %65, align 4
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44 = icmp ne i64 %indvars.iv.next42, 2
  br i1 %exitcond44, label %62, label %66, !llvm.loop !27

66:                                               ; preds = %62
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48 = icmp ne i64 %indvars.iv.next46, 4
  br i1 %exitcond48, label %61, label %67, !llvm.loop !28

67:                                               ; preds = %66
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %68

68:                                               ; preds = %76, %67
  %69 = phi i32 [ 0, %67 ], [ 1, %76 ]
  br label %70

70:                                               ; preds = %70, %68
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %70 ], [ 0, %68 ]
  %71 = shl nuw nsw i64 %indvars.iv49, 6
  %72 = shl nuw nsw i32 %69, 3
  %73 = zext i32 %72 to i64
  %74 = or disjoint i64 %71, %73
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %74
  store i32 1, ptr %75, align 4
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52 = icmp ne i64 %indvars.iv.next50, 4
  br i1 %exitcond52, label %70, label %76, !llvm.loop !29

76:                                               ; preds = %70
  %77 = add nuw nsw i32 %69, 1
  %78 = icmp samesign ult i32 %77, 2
  br i1 %78, label %68, label %79, !llvm.loop !30

79:                                               ; preds = %76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %80

80:                                               ; preds = %80, %79
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %80 ], [ 0, %79 ]
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv53
  store i32 1, ptr %81, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56 = icmp ne i64 %indvars.iv.next54, 3
  br i1 %exitcond56, label %80, label %82, !llvm.loop !31

82:                                               ; preds = %80
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %83

83:                                               ; preds = %83, %82
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %83 ], [ 0, %82 ]
  %84 = shl nuw nsw i64 %indvars.iv57, 3
  %85 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %84
  store i32 1, ptr %85, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond60 = icmp ne i64 %indvars.iv.next58, 3
  br i1 %exitcond60, label %83, label %86, !llvm.loop !32

86:                                               ; preds = %83
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %87

87:                                               ; preds = %87, %86
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %87 ], [ 0, %86 ]
  %88 = shl nuw nsw i64 %indvars.iv61, 6
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %88
  store i32 1, ptr %89, align 4
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond64 = icmp ne i64 %indvars.iv.next62, 3
  br i1 %exitcond64, label %87, label %90, !llvm.loop !33

90:                                               ; preds = %87
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %91

91:                                               ; preds = %101, %90
  %92 = phi i32 [ 0, %90 ], [ 1, %101 ]
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ 0, %91 ], [ 1, %93 ]
  %95 = shl nuw nsw i32 %94, 3
  %96 = or disjoint i32 %92, %95
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %97
  store i32 1, ptr %98, align 4
  %99 = add nuw nsw i32 %94, 1
  %100 = icmp samesign ult i32 %99, 2
  br i1 %100, label %93, label %101, !llvm.loop !34

101:                                              ; preds = %93
  %102 = add nuw nsw i32 %92, 1
  %103 = icmp samesign ult i32 %102, 2
  br i1 %103, label %91, label %104, !llvm.loop !35

104:                                              ; preds = %101
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %105

105:                                              ; preds = %112, %104
  %106 = phi i32 [ 0, %104 ], [ 1, %112 ]
  %107 = zext i32 %106 to i64
  br label %108

108:                                              ; preds = %108, %105
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %108 ], [ 0, %105 ]
  %109 = shl nuw nsw i64 %indvars.iv65, 6
  %110 = or disjoint i64 %107, %109
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %110
  store i32 1, ptr %111, align 4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond68 = icmp ne i64 %indvars.iv.next66, 2
  br i1 %exitcond68, label %108, label %112, !llvm.loop !36

112:                                              ; preds = %108
  %113 = add nuw nsw i32 %106, 1
  %114 = icmp samesign ult i32 %113, 2
  br i1 %114, label %105, label %115, !llvm.loop !37

115:                                              ; preds = %112
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %116

116:                                              ; preds = %124, %115
  %117 = phi i32 [ 0, %115 ], [ 1, %124 ]
  br label %118

118:                                              ; preds = %118, %116
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %118 ], [ 0, %116 ]
  %119 = shl nuw nsw i64 %indvars.iv69, 6
  %120 = shl nuw nsw i32 %117, 3
  %121 = zext i32 %120 to i64
  %122 = or disjoint i64 %119, %121
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %122
  store i32 1, ptr %123, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond72 = icmp ne i64 %indvars.iv.next70, 2
  br i1 %exitcond72, label %118, label %124, !llvm.loop !38

124:                                              ; preds = %118
  %125 = add nuw nsw i32 %117, 1
  %126 = icmp samesign ult i32 %125, 2
  br i1 %126, label %116, label %127, !llvm.loop !39

127:                                              ; preds = %124
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %128

128:                                              ; preds = %143, %127
  %129 = phi i32 [ 0, %127 ], [ 1, %143 ]
  %130 = zext i32 %129 to i64
  br label %131

131:                                              ; preds = %140, %128
  %132 = phi i32 [ 0, %128 ], [ 1, %140 ]
  br label %133

133:                                              ; preds = %133, %131
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %133 ], [ 0, %131 ]
  %134 = shl nuw nsw i64 %indvars.iv73, 6
  %135 = shl nuw nsw i32 %132, 3
  %136 = zext i32 %135 to i64
  %137 = or disjoint i64 %134, %136
  %138 = or disjoint i64 %130, %137
  %139 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %138
  store i32 1, ptr %139, align 4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond76 = icmp ne i64 %indvars.iv.next74, 2
  br i1 %exitcond76, label %133, label %140, !llvm.loop !40

140:                                              ; preds = %133
  %141 = add nuw nsw i32 %132, 1
  %142 = icmp samesign ult i32 %141, 2
  br i1 %142, label %131, label %143, !llvm.loop !41

143:                                              ; preds = %140
  %144 = add nuw nsw i32 %129, 1
  %145 = icmp samesign ult i32 %144, 2
  br i1 %145, label %128, label %146, !llvm.loop !42

146:                                              ; preds = %143
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %147 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %147, 0
  br i1 %.not, label %150, label %148

148:                                              ; preds = %146
  %149 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %149, ptr @n, align 4
  br label %151

150:                                              ; preds = %146
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %.pre, %150 ], [ %149, %148 ]
  %153 = call i32 @Trial(i32 noundef %152)
  %.not1 = icmp eq i32 %153, 0
  br i1 %.not1, label %154, label %155

154:                                              ; preds = %151
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %158

155:                                              ; preds = %151
  %156 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %156, 2005
  br i1 %.not3, label %158, label %157

157:                                              ; preds = %155
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %158

158:                                              ; preds = %155, %157, %154
  %159 = load i32, ptr @n, align 4
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %159) #3
  %161 = load i32, ptr @kount, align 4
  %162 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %161) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %1, label %4, !llvm.loop !43

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
