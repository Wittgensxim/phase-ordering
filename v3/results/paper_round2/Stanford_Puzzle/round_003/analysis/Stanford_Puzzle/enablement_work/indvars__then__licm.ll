; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_002\output.ll'
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
  br i1 %.not1, label %16, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = sext i32 %.pre to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %15, label %9

9:                                                ; preds = %6
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !7

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
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %12, label %9

9:                                                ; preds = %6
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %6, !llvm.loop !9

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
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %12, label %9

9:                                                ; preds = %6
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %6, !llvm.loop !11

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

4:                                                ; preds = %11, %3
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %11 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %10, %4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %10 ], [ 1, %4 ]
  %6 = shl nuw nsw i64 %indvars.iv6, 3
  %invariant.op = or disjoint i64 %6, %indvars.iv10
  br label %7

7:                                                ; preds = %7, %5
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %7 ], [ 1, %5 ]
  %8 = shl nuw nsw i64 %indvars.iv2, 6
  %.reass = or disjoint i64 %8, %invariant.op
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %.reass
  store i32 0, ptr %9, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 6
  br i1 %exitcond5, label %7, label %10, !llvm.loop !14

10:                                               ; preds = %7
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 6
  br i1 %exitcond9, label %5, label %11, !llvm.loop !15

11:                                               ; preds = %10
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 6
  br i1 %exitcond13, label %4, label %12, !llvm.loop !16

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %17, %12
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %17 ], [ 0, %12 ]
  %14 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %15

15:                                               ; preds = %15, %13
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %15 ], [ 0, %13 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %indvars.iv14
  store i32 0, ptr %16, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 512
  br i1 %exitcond17, label %15, label %17, !llvm.loop !17

17:                                               ; preds = %15
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 13
  br i1 %exitcond21, label %13, label %18, !llvm.loop !18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %28, %18
  %20 = phi i32 [ 0, %18 ], [ %29, %28 ]
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ 1, %21 ]
  %23 = shl nuw nsw i32 %22, 3
  %24 = or disjoint i32 %20, %23
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %25
  store i32 1, ptr %26, align 4
  %27 = icmp samesign ult i32 %22, 1
  br i1 %27, label %21, label %28, !llvm.loop !19

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %20, 1
  %exitcond22 = icmp ne i32 %29, 4
  br i1 %exitcond22, label %19, label %30, !llvm.loop !20

30:                                               ; preds = %28
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %31

31:                                               ; preds = %38, %30
  %32 = phi i32 [ 0, %30 ], [ 1, %38 ]
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %34, %31
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %34 ], [ 0, %31 ]
  %35 = shl nuw nsw i64 %indvars.iv23, 6
  %36 = or disjoint i64 %33, %35
  %37 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %36
  store i32 1, ptr %37, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26 = icmp ne i64 %indvars.iv.next24, 4
  br i1 %exitcond26, label %34, label %38, !llvm.loop !21

38:                                               ; preds = %34
  %39 = icmp samesign ult i32 %32, 1
  br i1 %39, label %31, label %40, !llvm.loop !22

40:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %41

41:                                               ; preds = %47, %40
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %47 ], [ 0, %40 ]
  %42 = shl nuw nsw i64 %indvars.iv31, 3
  br label %43

43:                                               ; preds = %43, %41
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %43 ], [ 0, %41 ]
  %44 = shl nuw nsw i64 %indvars.iv27, 6
  %45 = or disjoint i64 %44, %42
  %46 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %45
  store i32 1, ptr %46, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30 = icmp ne i64 %indvars.iv.next28, 2
  br i1 %exitcond30, label %43, label %47, !llvm.loop !23

47:                                               ; preds = %43
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34 = icmp ne i64 %indvars.iv.next32, 4
  br i1 %exitcond34, label %41, label %48, !llvm.loop !24

48:                                               ; preds = %47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %49

49:                                               ; preds = %56, %48
  %50 = phi i32 [ 0, %48 ], [ 1, %56 ]
  %51 = zext i32 %50 to i64
  br label %52

52:                                               ; preds = %52, %49
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %52 ], [ 0, %49 ]
  %53 = shl nuw nsw i64 %indvars.iv35, 3
  %54 = or disjoint i64 %51, %53
  %55 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %54
  store i32 1, ptr %55, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38 = icmp ne i64 %indvars.iv.next36, 4
  br i1 %exitcond38, label %52, label %56, !llvm.loop !25

56:                                               ; preds = %52
  %57 = icmp samesign ult i32 %50, 1
  br i1 %57, label %49, label %58, !llvm.loop !26

58:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %59

59:                                               ; preds = %64, %58
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %64 ], [ 0, %58 ]
  br label %60

60:                                               ; preds = %60, %59
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %60 ], [ 0, %59 ]
  %61 = shl nuw nsw i64 %indvars.iv39, 6
  %62 = or disjoint i64 %indvars.iv43, %61
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %62
  store i32 1, ptr %63, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42 = icmp ne i64 %indvars.iv.next40, 2
  br i1 %exitcond42, label %60, label %64, !llvm.loop !27

64:                                               ; preds = %60
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46 = icmp ne i64 %indvars.iv.next44, 4
  br i1 %exitcond46, label %59, label %65, !llvm.loop !28

65:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %66

66:                                               ; preds = %74, %65
  %67 = phi i32 [ 0, %65 ], [ 1, %74 ]
  %68 = shl nuw nsw i32 %67, 3
  %69 = zext i32 %68 to i64
  br label %70

70:                                               ; preds = %70, %66
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %70 ], [ 0, %66 ]
  %71 = shl nuw nsw i64 %indvars.iv47, 6
  %72 = or disjoint i64 %71, %69
  %73 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %72
  store i32 1, ptr %73, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50 = icmp ne i64 %indvars.iv.next48, 4
  br i1 %exitcond50, label %70, label %74, !llvm.loop !29

74:                                               ; preds = %70
  %75 = icmp samesign ult i32 %67, 1
  br i1 %75, label %66, label %76, !llvm.loop !30

76:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %77

77:                                               ; preds = %77, %76
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %77 ], [ 0, %76 ]
  %78 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %78, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54 = icmp ne i64 %indvars.iv.next52, 3
  br i1 %exitcond54, label %77, label %79, !llvm.loop !31

79:                                               ; preds = %77
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %80

80:                                               ; preds = %80, %79
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %80 ], [ 0, %79 ]
  %81 = shl nuw nsw i64 %indvars.iv55, 3
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %81
  store i32 1, ptr %82, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58 = icmp ne i64 %indvars.iv.next56, 3
  br i1 %exitcond58, label %80, label %83, !llvm.loop !32

83:                                               ; preds = %80
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %84

84:                                               ; preds = %84, %83
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %84 ], [ 0, %83 ]
  %85 = shl nuw nsw i64 %indvars.iv59, 6
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %85
  store i32 1, ptr %86, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62 = icmp ne i64 %indvars.iv.next60, 3
  br i1 %exitcond62, label %84, label %87, !llvm.loop !33

87:                                               ; preds = %84
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %88

88:                                               ; preds = %97, %87
  %89 = phi i32 [ 0, %87 ], [ 1, %97 ]
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i32 [ 0, %88 ], [ 1, %90 ]
  %92 = shl nuw nsw i32 %91, 3
  %93 = or disjoint i32 %89, %92
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %94
  store i32 1, ptr %95, align 4
  %96 = icmp samesign ult i32 %91, 1
  br i1 %96, label %90, label %97, !llvm.loop !34

97:                                               ; preds = %90
  %98 = icmp samesign ult i32 %89, 1
  br i1 %98, label %88, label %99, !llvm.loop !35

99:                                               ; preds = %97
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %100

100:                                              ; preds = %107, %99
  %101 = phi i32 [ 0, %99 ], [ 1, %107 ]
  %102 = zext i32 %101 to i64
  br label %103

103:                                              ; preds = %103, %100
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %103 ], [ 0, %100 ]
  %104 = shl nuw nsw i64 %indvars.iv63, 6
  %105 = or disjoint i64 %102, %104
  %106 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %105
  store i32 1, ptr %106, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66 = icmp ne i64 %indvars.iv.next64, 2
  br i1 %exitcond66, label %103, label %107, !llvm.loop !36

107:                                              ; preds = %103
  %108 = icmp samesign ult i32 %101, 1
  br i1 %108, label %100, label %109, !llvm.loop !37

109:                                              ; preds = %107
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %110

110:                                              ; preds = %118, %109
  %111 = phi i32 [ 0, %109 ], [ 1, %118 ]
  %112 = shl nuw nsw i32 %111, 3
  %113 = zext i32 %112 to i64
  br label %114

114:                                              ; preds = %114, %110
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %114 ], [ 0, %110 ]
  %115 = shl nuw nsw i64 %indvars.iv67, 6
  %116 = or disjoint i64 %115, %113
  %117 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %116
  store i32 1, ptr %117, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70 = icmp ne i64 %indvars.iv.next68, 2
  br i1 %exitcond70, label %114, label %118, !llvm.loop !38

118:                                              ; preds = %114
  %119 = icmp samesign ult i32 %111, 1
  br i1 %119, label %110, label %120, !llvm.loop !39

120:                                              ; preds = %118
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %121

121:                                              ; preds = %133, %120
  %122 = phi i32 [ 0, %120 ], [ 1, %133 ]
  %123 = zext i32 %122 to i64
  br label %124

124:                                              ; preds = %131, %121
  %125 = phi i32 [ 0, %121 ], [ 1, %131 ]
  %126 = shl nuw nsw i32 %125, 3
  %127 = zext i32 %126 to i64
  %invariant.op75 = or disjoint i64 %127, %123
  br label %128

128:                                              ; preds = %128, %124
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %128 ], [ 0, %124 ]
  %129 = shl nuw nsw i64 %indvars.iv71, 6
  %.reass76 = or disjoint i64 %129, %invariant.op75
  %130 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.reass76
  store i32 1, ptr %130, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74 = icmp ne i64 %indvars.iv.next72, 2
  br i1 %exitcond74, label %128, label %131, !llvm.loop !40

131:                                              ; preds = %128
  %132 = icmp samesign ult i32 %125, 1
  br i1 %132, label %124, label %133, !llvm.loop !41

133:                                              ; preds = %131
  %134 = icmp samesign ult i32 %122, 1
  br i1 %134, label %121, label %135, !llvm.loop !42

135:                                              ; preds = %133
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %136 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %136, 0
  br i1 %.not, label %139, label %137

137:                                              ; preds = %135
  %138 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %138, ptr @n, align 4
  br label %140

139:                                              ; preds = %135
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %.pre, %139 ], [ %138, %137 ]
  %142 = call i32 @Trial(i32 noundef %141)
  %.not1 = icmp eq i32 %142, 0
  br i1 %.not1, label %143, label %144

143:                                              ; preds = %140
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %148

144:                                              ; preds = %140
  %145 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %145, 2005
  br i1 %.not3, label %147, label %146

146:                                              ; preds = %144
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %147

147:                                              ; preds = %146, %144
  br label %148

148:                                              ; preds = %147, %143
  %149 = load i32, ptr @n, align 4
  %150 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %149) #3
  %151 = load i32, ptr @kount, align 4
  %152 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %151) #3
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
