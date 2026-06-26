; ModuleID = 'results\paper_full\Stanford_Puzzle\round_001\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %16, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %15, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %16

16:                                               ; preds = %._crit_edge, %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 1, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %12, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %12
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = icmp slt i32 %1, 512
  br i1 %20, label %.lr.ph6, label %28

.lr.ph6:                                          ; preds = %13
  %21 = sext i32 %1 to i64
  br label %22

22:                                               ; preds = %27, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %27 ], [ %21, %.lr.ph6 ]
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %27

25:                                               ; preds = %22
  %.lcssa.wide = phi i64 [ %indvars.iv3, %22 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  br label %29

27:                                               ; preds = %22
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond6 = icmp ne i32 %lftr.wideiv, 512
  br i1 %exitcond6, label %22, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %27
  br label %28

28:                                               ; preds = %._crit_edge7, %13
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 0, %28 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %12, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %5, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %12
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %23, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %23, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %22, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %13
  br label %25

20:                                               ; preds = %17
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %21, i32 noundef %0)
  br label %22

22:                                               ; preds = %20, %10
  br label %23

23:                                               ; preds = %22, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 13
  br i1 %exitcond, label %4, label %24, !llvm.loop !12

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ 0, %24 ], [ 1, %19 ]
  ret i32 %26
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
  br i1 %exitcond, label %1, label %3, !llvm.loop !13

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %13, %3
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %13 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %12, %4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %12 ], [ 1, %4 ]
  br label %6

6:                                                ; preds = %6, %5
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %6 ], [ 1, %5 ]
  %7 = shl nuw nsw i64 %indvars.iv2, 6
  %8 = shl nuw nsw i64 %indvars.iv6, 3
  %9 = or disjoint i64 %7, %8
  %10 = or disjoint i64 %indvars.iv10, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 6
  br i1 %exitcond5, label %6, label %12, !llvm.loop !14

12:                                               ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 6
  br i1 %exitcond9, label %5, label %13, !llvm.loop !15

13:                                               ; preds = %12
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 6
  br i1 %exitcond13, label %4, label %14, !llvm.loop !16

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %19, %14
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %19 ], [ 0, %14 ]
  br label %16

16:                                               ; preds = %16, %15
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %16 ], [ 0, %15 ]
  %17 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv14
  store i32 0, ptr %18, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 512
  br i1 %exitcond17, label %16, label %19, !llvm.loop !17

19:                                               ; preds = %16
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 13
  br i1 %exitcond21, label %15, label %20, !llvm.loop !18

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %29, %20
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %29 ], [ 0, %20 ]
  br label %22

22:                                               ; preds = %27, %21
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %27 ], [ 0, %21 ]
  br label %23

23:                                               ; preds = %23, %22
  %24 = shl nuw nsw i64 %indvars.iv22, 3
  %25 = or disjoint i64 %indvars.iv25, %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %25
  store i32 1, ptr %26, align 4
  br i1 false, label %23, label %27, !llvm.loop !19

27:                                               ; preds = %23
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %28 = icmp eq i64 %indvars.iv22, 0
  br i1 %28, label %22, label %29, !llvm.loop !20

29:                                               ; preds = %27
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond28 = icmp ne i64 %indvars.iv.next26, 4
  br i1 %exitcond28, label %21, label %30, !llvm.loop !21

30:                                               ; preds = %29
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %31

31:                                               ; preds = %38, %30
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %38 ], [ 0, %30 ]
  br label %32

32:                                               ; preds = %37, %31
  br label %33

33:                                               ; preds = %33, %32
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %33 ], [ 0, %32 ]
  %34 = shl nuw nsw i64 %indvars.iv29, 6
  %35 = or disjoint i64 %indvars.iv33, %34
  %36 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %35
  store i32 1, ptr %36, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32 = icmp ne i64 %indvars.iv.next30, 4
  br i1 %exitcond32, label %33, label %37, !llvm.loop !22

37:                                               ; preds = %33
  br i1 false, label %32, label %38, !llvm.loop !23

38:                                               ; preds = %37
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %39 = icmp eq i64 %indvars.iv33, 0
  br i1 %39, label %31, label %40, !llvm.loop !24

40:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %41

41:                                               ; preds = %50, %40
  br label %42

42:                                               ; preds = %49, %41
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %49 ], [ 0, %41 ]
  br label %43

43:                                               ; preds = %43, %42
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %43 ], [ 0, %42 ]
  %44 = shl nuw nsw i64 %indvars.iv36, 6
  %45 = shl nuw nsw i64 %indvars.iv39, 3
  %46 = or disjoint i64 %44, %45
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %48 = icmp eq i64 %indvars.iv36, 0
  br i1 %48, label %43, label %49, !llvm.loop !25

49:                                               ; preds = %43
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42 = icmp ne i64 %indvars.iv.next40, 4
  br i1 %exitcond42, label %42, label %50, !llvm.loop !26

50:                                               ; preds = %49
  br i1 false, label %41, label %51, !llvm.loop !27

51:                                               ; preds = %50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %52

52:                                               ; preds = %59, %51
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %59 ], [ 0, %51 ]
  br label %53

53:                                               ; preds = %58, %52
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %58 ], [ 0, %52 ]
  br label %54

54:                                               ; preds = %54, %53
  %55 = shl nuw nsw i64 %indvars.iv43, 3
  %56 = or disjoint i64 %indvars.iv47, %55
  %57 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %56
  store i32 1, ptr %57, align 4
  br i1 false, label %54, label %58, !llvm.loop !28

58:                                               ; preds = %54
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46 = icmp ne i64 %indvars.iv.next44, 4
  br i1 %exitcond46, label %53, label %59, !llvm.loop !29

59:                                               ; preds = %58
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %60 = icmp eq i64 %indvars.iv47, 0
  br i1 %60, label %52, label %61, !llvm.loop !30

61:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %62

62:                                               ; preds = %70, %61
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %70 ], [ 0, %61 ]
  br label %63

63:                                               ; preds = %69, %62
  br label %64

64:                                               ; preds = %64, %63
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %64 ], [ 0, %63 ]
  %65 = shl nuw nsw i64 %indvars.iv50, 6
  %66 = or disjoint i64 %indvars.iv53, %65
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %66
  store i32 1, ptr %67, align 4
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %68 = icmp eq i64 %indvars.iv50, 0
  br i1 %68, label %64, label %69, !llvm.loop !31

69:                                               ; preds = %64
  br i1 false, label %63, label %70, !llvm.loop !32

70:                                               ; preds = %69
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56 = icmp ne i64 %indvars.iv.next54, 4
  br i1 %exitcond56, label %62, label %71, !llvm.loop !33

71:                                               ; preds = %70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %72

72:                                               ; preds = %81, %71
  br label %73

73:                                               ; preds = %79, %72
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %79 ], [ 0, %72 ]
  br label %74

74:                                               ; preds = %74, %73
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %74 ], [ 0, %73 ]
  %75 = shl nuw nsw i64 %indvars.iv57, 6
  %76 = shl nuw nsw i64 %indvars.iv61, 3
  %77 = or disjoint i64 %75, %76
  %78 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %77
  store i32 1, ptr %78, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond60 = icmp ne i64 %indvars.iv.next58, 4
  br i1 %exitcond60, label %74, label %79, !llvm.loop !34

79:                                               ; preds = %74
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %80 = icmp eq i64 %indvars.iv61, 0
  br i1 %80, label %73, label %81, !llvm.loop !35

81:                                               ; preds = %79
  br i1 false, label %72, label %82, !llvm.loop !36

82:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %83

83:                                               ; preds = %88, %82
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %88 ], [ 0, %82 ]
  br label %84

84:                                               ; preds = %87, %83
  br label %85

85:                                               ; preds = %85, %84
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv64
  store i32 1, ptr %86, align 4
  br i1 false, label %85, label %87, !llvm.loop !37

87:                                               ; preds = %85
  br i1 false, label %84, label %88, !llvm.loop !38

88:                                               ; preds = %87
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67 = icmp ne i64 %indvars.iv.next65, 3
  br i1 %exitcond67, label %83, label %89, !llvm.loop !39

89:                                               ; preds = %88
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %90

90:                                               ; preds = %96, %89
  br label %91

91:                                               ; preds = %95, %90
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %95 ], [ 0, %90 ]
  br label %92

92:                                               ; preds = %92, %91
  %93 = shl nuw nsw i64 %indvars.iv68, 3
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %93
  store i32 1, ptr %94, align 4
  br i1 false, label %92, label %95, !llvm.loop !40

95:                                               ; preds = %92
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond71 = icmp ne i64 %indvars.iv.next69, 3
  br i1 %exitcond71, label %91, label %96, !llvm.loop !41

96:                                               ; preds = %95
  br i1 false, label %90, label %97, !llvm.loop !42

97:                                               ; preds = %96
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %98

98:                                               ; preds = %104, %97
  br label %99

99:                                               ; preds = %103, %98
  br label %100

100:                                              ; preds = %100, %99
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %100 ], [ 0, %99 ]
  %101 = shl nuw nsw i64 %indvars.iv72, 6
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %101
  store i32 1, ptr %102, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond75 = icmp ne i64 %indvars.iv.next73, 3
  br i1 %exitcond75, label %100, label %103, !llvm.loop !43

103:                                              ; preds = %100
  br i1 false, label %99, label %104, !llvm.loop !44

104:                                              ; preds = %103
  br i1 false, label %98, label %105, !llvm.loop !45

105:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %106

106:                                              ; preds = %114, %105
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %114 ], [ 0, %105 ]
  br label %107

107:                                              ; preds = %112, %106
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %112 ], [ 0, %106 ]
  br label %108

108:                                              ; preds = %108, %107
  %109 = shl nuw nsw i64 %indvars.iv76, 3
  %110 = or disjoint i64 %indvars.iv79, %109
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %110
  store i32 1, ptr %111, align 4
  br i1 false, label %108, label %112, !llvm.loop !46

112:                                              ; preds = %108
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %113 = icmp eq i64 %indvars.iv76, 0
  br i1 %113, label %107, label %114, !llvm.loop !47

114:                                              ; preds = %112
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %115 = icmp eq i64 %indvars.iv79, 0
  br i1 %115, label %106, label %116, !llvm.loop !48

116:                                              ; preds = %114
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %117

117:                                              ; preds = %125, %116
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %125 ], [ 0, %116 ]
  br label %118

118:                                              ; preds = %124, %117
  br label %119

119:                                              ; preds = %119, %118
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %119 ], [ 0, %118 ]
  %120 = shl nuw nsw i64 %indvars.iv82, 6
  %121 = or disjoint i64 %indvars.iv85, %120
  %122 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %121
  store i32 1, ptr %122, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %123 = icmp eq i64 %indvars.iv82, 0
  br i1 %123, label %119, label %124, !llvm.loop !49

124:                                              ; preds = %119
  br i1 false, label %118, label %125, !llvm.loop !50

125:                                              ; preds = %124
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %126 = icmp eq i64 %indvars.iv85, 0
  br i1 %126, label %117, label %127, !llvm.loop !51

127:                                              ; preds = %125
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %128

128:                                              ; preds = %138, %127
  br label %129

129:                                              ; preds = %136, %128
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %136 ], [ 0, %128 ]
  br label %130

130:                                              ; preds = %130, %129
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %130 ], [ 0, %129 ]
  %131 = shl nuw nsw i64 %indvars.iv88, 6
  %132 = shl nuw nsw i64 %indvars.iv91, 3
  %133 = or disjoint i64 %131, %132
  %134 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %133
  store i32 1, ptr %134, align 4
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %135 = icmp eq i64 %indvars.iv88, 0
  br i1 %135, label %130, label %136, !llvm.loop !52

136:                                              ; preds = %130
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %137 = icmp eq i64 %indvars.iv91, 0
  br i1 %137, label %129, label %138, !llvm.loop !53

138:                                              ; preds = %136
  br i1 false, label %128, label %139, !llvm.loop !54

139:                                              ; preds = %138
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %140

140:                                              ; preds = %151, %139
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %151 ], [ 0, %139 ]
  br label %141

141:                                              ; preds = %149, %140
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %149 ], [ 0, %140 ]
  br label %142

142:                                              ; preds = %142, %141
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %142 ], [ 0, %141 ]
  %143 = shl nuw nsw i64 %indvars.iv94, 6
  %144 = shl nuw nsw i64 %indvars.iv97, 3
  %145 = or disjoint i64 %143, %144
  %146 = or disjoint i64 %indvars.iv100, %145
  %147 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %146
  store i32 1, ptr %147, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %148 = icmp eq i64 %indvars.iv94, 0
  br i1 %148, label %142, label %149, !llvm.loop !55

149:                                              ; preds = %142
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %150 = icmp eq i64 %indvars.iv97, 0
  br i1 %150, label %141, label %151, !llvm.loop !56

151:                                              ; preds = %149
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %152 = icmp eq i64 %indvars.iv100, 0
  br i1 %152, label %140, label %153, !llvm.loop !57

153:                                              ; preds = %151
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %154 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %154, 0
  br i1 %.not, label %157, label %155

155:                                              ; preds = %153
  %156 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %156, ptr @n, align 4
  br label %158

157:                                              ; preds = %153
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i32 [ %.pre, %157 ], [ %156, %155 ]
  %160 = call i32 @Trial(i32 noundef %159)
  %.not1 = icmp eq i32 %160, 0
  br i1 %.not1, label %161, label %162

161:                                              ; preds = %158
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %166

162:                                              ; preds = %158
  %163 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %163, 2005
  br i1 %.not3, label %165, label %164

164:                                              ; preds = %162
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %165

165:                                              ; preds = %164, %162
  br label %166

166:                                              ; preds = %165, %161
  %167 = load i32, ptr @n, align 4
  %168 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %167) #3
  %169 = load i32, ptr @kount, align 4
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %169) #3
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
  br i1 %exitcond, label %1, label %4, !llvm.loop !58

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
