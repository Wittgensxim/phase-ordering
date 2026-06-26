; ModuleID = 'results\paper_full\Stanford_Puzzle\round_003\output.ll'
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
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  %22 = phi i32 [ 0, %20 ], [ %30, %29 ]
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i1 [ true, %21 ], [ false, %23 ]
  %25 = phi i32 [ 0, %21 ], [ 8, %23 ]
  %26 = or disjoint i32 %22, %25
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %27
  store i32 1, ptr %28, align 4
  br i1 %24, label %23, label %29, !llvm.loop !19

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %22, 1
  %exitcond22 = icmp ne i32 %30, 4
  br i1 %exitcond22, label %21, label %31, !llvm.loop !20

31:                                               ; preds = %29
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %32

32:                                               ; preds = %40, %31
  %33 = phi i1 [ true, %31 ], [ false, %40 ]
  %34 = phi i32 [ 0, %31 ], [ 1, %40 ]
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %36, %32
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %36 ], [ 0, %32 ]
  %37 = shl nuw nsw i64 %indvars.iv23, 6
  %38 = or disjoint i64 %35, %37
  %39 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %38
  store i32 1, ptr %39, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26 = icmp ne i64 %indvars.iv.next24, 4
  br i1 %exitcond26, label %36, label %40, !llvm.loop !21

40:                                               ; preds = %36
  br i1 %33, label %32, label %41, !llvm.loop !22

41:                                               ; preds = %40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %42

42:                                               ; preds = %49, %41
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %49 ], [ 0, %41 ]
  br label %43

43:                                               ; preds = %43, %42
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %43 ], [ 0, %42 ]
  %44 = shl nuw nsw i64 %indvars.iv27, 6
  %45 = shl nuw nsw i64 %indvars.iv30, 3
  %46 = or disjoint i64 %44, %45
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %48 = icmp eq i64 %indvars.iv27, 0
  br i1 %48, label %43, label %49, !llvm.loop !23

49:                                               ; preds = %43
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33 = icmp ne i64 %indvars.iv.next31, 4
  br i1 %exitcond33, label %42, label %50, !llvm.loop !24

50:                                               ; preds = %49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %51

51:                                               ; preds = %59, %50
  %52 = phi i1 [ true, %50 ], [ false, %59 ]
  %53 = phi i32 [ 0, %50 ], [ 1, %59 ]
  %54 = zext i32 %53 to i64
  br label %55

55:                                               ; preds = %55, %51
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %55 ], [ 0, %51 ]
  %56 = shl nuw nsw i64 %indvars.iv34, 3
  %57 = or disjoint i64 %54, %56
  %58 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %57
  store i32 1, ptr %58, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond37 = icmp ne i64 %indvars.iv.next35, 4
  br i1 %exitcond37, label %55, label %59, !llvm.loop !25

59:                                               ; preds = %55
  br i1 %52, label %51, label %60, !llvm.loop !26

60:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %61

61:                                               ; preds = %67, %60
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %67 ], [ 0, %60 ]
  br label %62

62:                                               ; preds = %62, %61
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %62 ], [ 0, %61 ]
  %63 = shl nuw nsw i64 %indvars.iv38, 6
  %64 = or disjoint i64 %indvars.iv41, %63
  %65 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %64
  store i32 1, ptr %65, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %66 = icmp eq i64 %indvars.iv38, 0
  br i1 %66, label %62, label %67, !llvm.loop !27

67:                                               ; preds = %62
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44 = icmp ne i64 %indvars.iv.next42, 4
  br i1 %exitcond44, label %61, label %68, !llvm.loop !28

68:                                               ; preds = %67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %69

69:                                               ; preds = %77, %68
  %70 = phi i1 [ true, %68 ], [ false, %77 ]
  %71 = phi i32 [ 0, %68 ], [ 8, %77 ]
  %72 = zext i32 %71 to i64
  br label %73

73:                                               ; preds = %73, %69
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %73 ], [ 0, %69 ]
  %74 = shl nuw nsw i64 %indvars.iv45, 6
  %75 = or disjoint i64 %74, %72
  %76 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %75
  store i32 1, ptr %76, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48 = icmp ne i64 %indvars.iv.next46, 4
  br i1 %exitcond48, label %73, label %77, !llvm.loop !29

77:                                               ; preds = %73
  br i1 %70, label %69, label %78, !llvm.loop !30

78:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %79

79:                                               ; preds = %79, %78
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %79 ], [ 0, %78 ]
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv49
  store i32 1, ptr %80, align 4
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52 = icmp ne i64 %indvars.iv.next50, 3
  br i1 %exitcond52, label %79, label %81, !llvm.loop !31

81:                                               ; preds = %79
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %82

82:                                               ; preds = %82, %81
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %82 ], [ 0, %81 ]
  %83 = shl nuw nsw i64 %indvars.iv53, 3
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %83
  store i32 1, ptr %84, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56 = icmp ne i64 %indvars.iv.next54, 3
  br i1 %exitcond56, label %82, label %85, !llvm.loop !32

85:                                               ; preds = %82
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %86

86:                                               ; preds = %86, %85
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %86 ], [ 0, %85 ]
  %87 = shl nuw nsw i64 %indvars.iv57, 6
  %88 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %87
  store i32 1, ptr %88, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond60 = icmp ne i64 %indvars.iv.next58, 3
  br i1 %exitcond60, label %86, label %89, !llvm.loop !33

89:                                               ; preds = %86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %90

90:                                               ; preds = %99, %89
  %91 = phi i1 [ true, %89 ], [ false, %99 ]
  %92 = phi i32 [ 0, %89 ], [ 1, %99 ]
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i1 [ true, %90 ], [ false, %93 ]
  %95 = phi i32 [ 0, %90 ], [ 8, %93 ]
  %96 = or disjoint i32 %92, %95
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %97
  store i32 1, ptr %98, align 4
  br i1 %94, label %93, label %99, !llvm.loop !34

99:                                               ; preds = %93
  br i1 %91, label %90, label %100, !llvm.loop !35

100:                                              ; preds = %99
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %101

101:                                              ; preds = %110, %100
  %102 = phi i1 [ true, %100 ], [ false, %110 ]
  %103 = phi i32 [ 0, %100 ], [ 1, %110 ]
  %104 = zext i32 %103 to i64
  br label %105

105:                                              ; preds = %105, %101
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %105 ], [ 0, %101 ]
  %106 = shl nuw nsw i64 %indvars.iv61, 6
  %107 = or disjoint i64 %104, %106
  %108 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %107
  store i32 1, ptr %108, align 4
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %109 = icmp eq i64 %indvars.iv61, 0
  br i1 %109, label %105, label %110, !llvm.loop !36

110:                                              ; preds = %105
  br i1 %102, label %101, label %111, !llvm.loop !37

111:                                              ; preds = %110
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %112

112:                                              ; preds = %121, %111
  %113 = phi i1 [ true, %111 ], [ false, %121 ]
  %114 = phi i32 [ 0, %111 ], [ 8, %121 ]
  %115 = zext i32 %114 to i64
  br label %116

116:                                              ; preds = %116, %112
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %116 ], [ 0, %112 ]
  %117 = shl nuw nsw i64 %indvars.iv64, 6
  %118 = or disjoint i64 %117, %115
  %119 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %118
  store i32 1, ptr %119, align 4
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %120 = icmp eq i64 %indvars.iv64, 0
  br i1 %120, label %116, label %121, !llvm.loop !38

121:                                              ; preds = %116
  br i1 %113, label %112, label %122, !llvm.loop !39

122:                                              ; preds = %121
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = phi i1 [ true, %122 ], [ false, %138 ]
  %125 = phi i32 [ 0, %122 ], [ 1, %138 ]
  %126 = zext i32 %125 to i64
  br label %127

127:                                              ; preds = %137, %123
  %128 = phi i1 [ true, %123 ], [ false, %137 ]
  %129 = phi i32 [ 0, %123 ], [ 8, %137 ]
  %130 = zext i32 %129 to i64
  br label %131

131:                                              ; preds = %131, %127
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %131 ], [ 0, %127 ]
  %132 = shl nuw nsw i64 %indvars.iv67, 6
  %133 = or disjoint i64 %132, %130
  %134 = or disjoint i64 %126, %133
  %135 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %134
  store i32 1, ptr %135, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %136 = icmp eq i64 %indvars.iv67, 0
  br i1 %136, label %131, label %137, !llvm.loop !40

137:                                              ; preds = %131
  br i1 %128, label %127, label %138, !llvm.loop !41

138:                                              ; preds = %137
  br i1 %124, label %123, label %139, !llvm.loop !42

139:                                              ; preds = %138
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %140 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %140, 0
  br i1 %.not, label %143, label %141

141:                                              ; preds = %139
  %142 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %142, ptr @n, align 4
  br label %144

143:                                              ; preds = %139
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i32 [ %.pre, %143 ], [ %142, %141 ]
  %146 = call i32 @Trial(i32 noundef %145)
  %.not1 = icmp eq i32 %146, 0
  br i1 %.not1, label %147, label %148

147:                                              ; preds = %144
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %152

148:                                              ; preds = %144
  %149 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %149, 2005
  br i1 %.not3, label %151, label %150

150:                                              ; preds = %148
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %151

151:                                              ; preds = %150, %148
  br label %152

152:                                              ; preds = %151, %147
  %153 = load i32, ptr @n, align 4
  %154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %153) #3
  %155 = load i32, ptr @kount, align 4
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %155) #3
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
