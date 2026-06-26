; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_003\output.ll'
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = sext i32 %.pre to i64
  br label %5

5:                                                ; preds = %13, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %._crit_edge

13:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge, label %5, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %13, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %13 ], [ 1, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %._crit_edge, label %.lr.ph

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
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %5, !llvm.loop !9

._crit_edge:                                      ; preds = %12, %2
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp slt i32 %1, 512
  br i1 %19, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge
  %20 = sext i32 %1 to i64
  br label %21

21:                                               ; preds = %26, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %26 ], [ %20, %.lr.ph6 ]
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %23 = load i32, ptr %22, align 4
  %.not2 = icmp eq i32 %23, 0
  br i1 %.not2, label %24, label %26

24:                                               ; preds = %21
  %.lcssa.wide = phi i64 [ %indvars.iv3, %21 ]
  %25 = trunc nsw i64 %.lcssa.wide to i32
  br label %._crit_edge7

26:                                               ; preds = %21
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond6 = icmp ne i32 %lftr.wideiv, 512
  br i1 %exitcond6, label %21, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %._crit_edge, %26, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %26 ], [ 0, %._crit_edge ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %._crit_edge, label %.lr.ph

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
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %5, !llvm.loop !11

._crit_edge:                                      ; preds = %12, %2
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4
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
  br i1 %exitcond, label %1, label %3, !llvm.loop !13

3:                                                ; preds = %1, %12
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %12 ], [ 1, %1 ]
  br label %4

4:                                                ; preds = %11, %3
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %11 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %5, %4
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %5 ], [ 1, %4 ]
  %6 = shl nuw nsw i64 %indvars.iv2, 6
  %7 = shl nuw nsw i64 %indvars.iv6, 3
  %8 = or disjoint i64 %6, %7
  %9 = or disjoint i64 %indvars.iv10, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %9
  store i32 0, ptr %10, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 6
  br i1 %exitcond5, label %5, label %11, !llvm.loop !14

11:                                               ; preds = %5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 6
  br i1 %exitcond9, label %4, label %12, !llvm.loop !15

12:                                               ; preds = %11
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 6
  br i1 %exitcond13, label %3, label %13, !llvm.loop !16

13:                                               ; preds = %12, %17
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %17 ], [ 0, %12 ]
  br label %14

14:                                               ; preds = %14, %13
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %14 ], [ 0, %13 ]
  %15 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %16 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv14
  store i32 0, ptr %16, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 512
  br i1 %exitcond17, label %14, label %17, !llvm.loop !17

17:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 13
  br i1 %exitcond21, label %13, label %18, !llvm.loop !18

18:                                               ; preds = %17, %27
  %19 = phi i32 [ %28, %27 ], [ 0, %17 ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ 1, %20 ]
  %22 = shl nuw nsw i32 %21, 3
  %23 = or disjoint i32 %19, %22
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %24
  store i32 1, ptr %25, align 4
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %20, label %27, !llvm.loop !19

27:                                               ; preds = %20
  %28 = add nuw nsw i32 %19, 1
  %exitcond22 = icmp ne i32 %28, 4
  br i1 %exitcond22, label %18, label %29, !llvm.loop !20

29:                                               ; preds = %27
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %30

30:                                               ; preds = %37, %29
  %31 = phi i32 [ 0, %29 ], [ 1, %37 ]
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %33, %30
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %33 ], [ 0, %30 ]
  %34 = shl nuw nsw i64 %indvars.iv23, 6
  %35 = or disjoint i64 %32, %34
  %36 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %35
  store i32 1, ptr %36, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26 = icmp ne i64 %indvars.iv.next24, 4
  br i1 %exitcond26, label %33, label %37, !llvm.loop !21

37:                                               ; preds = %33
  %38 = icmp eq i32 %31, 0
  br i1 %38, label %30, label %39, !llvm.loop !22

39:                                               ; preds = %37
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %40

40:                                               ; preds = %46, %39
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %46 ], [ 0, %39 ]
  br label %41

41:                                               ; preds = %41, %40
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %41 ], [ 0, %40 ]
  %42 = shl nuw nsw i64 %indvars.iv27, 6
  %43 = shl nuw nsw i64 %indvars.iv31, 3
  %44 = or disjoint i64 %42, %43
  %45 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %44
  store i32 1, ptr %45, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30 = icmp ne i64 %indvars.iv.next28, 2
  br i1 %exitcond30, label %41, label %46, !llvm.loop !23

46:                                               ; preds = %41
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34 = icmp ne i64 %indvars.iv.next32, 4
  br i1 %exitcond34, label %40, label %47, !llvm.loop !24

47:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %48

48:                                               ; preds = %55, %47
  %49 = phi i32 [ 0, %47 ], [ 1, %55 ]
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %51, %48
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %51 ], [ 0, %48 ]
  %52 = shl nuw nsw i64 %indvars.iv35, 3
  %53 = or disjoint i64 %50, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %53
  store i32 1, ptr %54, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38 = icmp ne i64 %indvars.iv.next36, 4
  br i1 %exitcond38, label %51, label %55, !llvm.loop !25

55:                                               ; preds = %51
  %56 = icmp eq i32 %49, 0
  br i1 %56, label %48, label %57, !llvm.loop !26

57:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %58

58:                                               ; preds = %63, %57
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %63 ], [ 0, %57 ]
  br label %59

59:                                               ; preds = %59, %58
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %59 ], [ 0, %58 ]
  %60 = shl nuw nsw i64 %indvars.iv39, 6
  %61 = or disjoint i64 %indvars.iv43, %60
  %62 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %61
  store i32 1, ptr %62, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42 = icmp ne i64 %indvars.iv.next40, 2
  br i1 %exitcond42, label %59, label %63, !llvm.loop !27

63:                                               ; preds = %59
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46 = icmp ne i64 %indvars.iv.next44, 4
  br i1 %exitcond46, label %58, label %64, !llvm.loop !28

64:                                               ; preds = %63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %65

65:                                               ; preds = %73, %64
  %66 = phi i32 [ 0, %64 ], [ 1, %73 ]
  br label %67

67:                                               ; preds = %67, %65
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %67 ], [ 0, %65 ]
  %68 = shl nuw nsw i64 %indvars.iv47, 6
  %69 = shl nuw nsw i32 %66, 3
  %70 = zext i32 %69 to i64
  %71 = or disjoint i64 %68, %70
  %72 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %71
  store i32 1, ptr %72, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50 = icmp ne i64 %indvars.iv.next48, 4
  br i1 %exitcond50, label %67, label %73, !llvm.loop !29

73:                                               ; preds = %67
  %74 = icmp eq i32 %66, 0
  br i1 %74, label %65, label %75, !llvm.loop !30

75:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %76

76:                                               ; preds = %76, %75
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %76 ], [ 0, %75 ]
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %77, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54 = icmp ne i64 %indvars.iv.next52, 3
  br i1 %exitcond54, label %76, label %78, !llvm.loop !31

78:                                               ; preds = %76
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %79

79:                                               ; preds = %79, %78
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %79 ], [ 0, %78 ]
  %80 = shl nuw nsw i64 %indvars.iv55, 3
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %80
  store i32 1, ptr %81, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58 = icmp ne i64 %indvars.iv.next56, 3
  br i1 %exitcond58, label %79, label %82, !llvm.loop !32

82:                                               ; preds = %79
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %83

83:                                               ; preds = %83, %82
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %83 ], [ 0, %82 ]
  %84 = shl nuw nsw i64 %indvars.iv59, 6
  %85 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %84
  store i32 1, ptr %85, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62 = icmp ne i64 %indvars.iv.next60, 3
  br i1 %exitcond62, label %83, label %86, !llvm.loop !33

86:                                               ; preds = %83
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %87

87:                                               ; preds = %96, %86
  %88 = phi i32 [ 0, %86 ], [ 1, %96 ]
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ 0, %87 ], [ 1, %89 ]
  %91 = shl nuw nsw i32 %90, 3
  %92 = or disjoint i32 %88, %91
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %93
  store i32 1, ptr %94, align 4
  %95 = icmp eq i32 %90, 0
  br i1 %95, label %89, label %96, !llvm.loop !34

96:                                               ; preds = %89
  %97 = icmp eq i32 %88, 0
  br i1 %97, label %87, label %98, !llvm.loop !35

98:                                               ; preds = %96
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %99

99:                                               ; preds = %106, %98
  %100 = phi i32 [ 0, %98 ], [ 1, %106 ]
  %101 = zext i32 %100 to i64
  br label %102

102:                                              ; preds = %102, %99
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %102 ], [ 0, %99 ]
  %103 = shl nuw nsw i64 %indvars.iv63, 6
  %104 = or disjoint i64 %101, %103
  %105 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %104
  store i32 1, ptr %105, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66 = icmp ne i64 %indvars.iv.next64, 2
  br i1 %exitcond66, label %102, label %106, !llvm.loop !36

106:                                              ; preds = %102
  %107 = icmp eq i32 %100, 0
  br i1 %107, label %99, label %108, !llvm.loop !37

108:                                              ; preds = %106
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %109

109:                                              ; preds = %117, %108
  %110 = phi i32 [ 0, %108 ], [ 1, %117 ]
  br label %111

111:                                              ; preds = %111, %109
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %111 ], [ 0, %109 ]
  %112 = shl nuw nsw i64 %indvars.iv67, 6
  %113 = shl nuw nsw i32 %110, 3
  %114 = zext i32 %113 to i64
  %115 = or disjoint i64 %112, %114
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %115
  store i32 1, ptr %116, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70 = icmp ne i64 %indvars.iv.next68, 2
  br i1 %exitcond70, label %111, label %117, !llvm.loop !38

117:                                              ; preds = %111
  %118 = icmp eq i32 %110, 0
  br i1 %118, label %109, label %119, !llvm.loop !39

119:                                              ; preds = %117
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %120

120:                                              ; preds = %134, %119
  %121 = phi i32 [ 0, %119 ], [ 1, %134 ]
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %132, %120
  %124 = phi i32 [ 0, %120 ], [ 1, %132 ]
  br label %125

125:                                              ; preds = %125, %123
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %125 ], [ 0, %123 ]
  %126 = shl nuw nsw i64 %indvars.iv71, 6
  %127 = shl nuw nsw i32 %124, 3
  %128 = zext i32 %127 to i64
  %129 = or disjoint i64 %126, %128
  %130 = or disjoint i64 %122, %129
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %130
  store i32 1, ptr %131, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74 = icmp ne i64 %indvars.iv.next72, 2
  br i1 %exitcond74, label %125, label %132, !llvm.loop !40

132:                                              ; preds = %125
  %133 = icmp eq i32 %124, 0
  br i1 %133, label %123, label %134, !llvm.loop !41

134:                                              ; preds = %132
  %135 = icmp eq i32 %121, 0
  br i1 %135, label %120, label %136, !llvm.loop !42

136:                                              ; preds = %134
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %137 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %137, 0
  br i1 %.not, label %140, label %138

138:                                              ; preds = %136
  %139 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %139, ptr @n, align 4
  br label %141

140:                                              ; preds = %136
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %.pre, %140 ], [ %139, %138 ]
  %143 = call i32 @Trial(i32 noundef %142)
  %.not1 = icmp eq i32 %143, 0
  br i1 %.not1, label %144, label %145

144:                                              ; preds = %141
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %148

145:                                              ; preds = %141
  %146 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %146, 2005
  br i1 %.not3, label %148, label %147

147:                                              ; preds = %145
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %148

148:                                              ; preds = %145, %147, %144
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
