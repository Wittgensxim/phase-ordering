; ModuleID = 'results\paper_full\Stanford_Puzzle\round_002\output.ll'
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
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge, label %5, !llvm.loop !7

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

21:                                               ; preds = %31, %20
  %22 = phi i32 [ 0, %20 ], [ %32, %31 ]
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %23 ]
  %25 = shl nuw nsw i32 %24, 3
  %26 = or disjoint i32 %22, %25
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %27
  store i32 1, ptr %28, align 4
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp samesign ult i32 %29, 2
  br i1 %30, label %23, label %31, !llvm.loop !19

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %22, 1
  %exitcond22 = icmp ne i32 %32, 4
  br i1 %exitcond22, label %21, label %33, !llvm.loop !20

33:                                               ; preds = %31
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %34

34:                                               ; preds = %41, %33
  %35 = phi i32 [ 0, %33 ], [ 1, %41 ]
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %37, %34
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %37 ], [ 0, %34 ]
  %38 = shl nuw nsw i64 %indvars.iv23, 6
  %39 = or disjoint i64 %36, %38
  %40 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %39
  store i32 1, ptr %40, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26 = icmp ne i64 %indvars.iv.next24, 4
  br i1 %exitcond26, label %37, label %41, !llvm.loop !21

41:                                               ; preds = %37
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp samesign ult i32 %42, 2
  br i1 %43, label %34, label %44, !llvm.loop !22

44:                                               ; preds = %41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %45

45:                                               ; preds = %51, %44
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %51 ], [ 0, %44 ]
  br label %46

46:                                               ; preds = %46, %45
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %46 ], [ 0, %45 ]
  %47 = shl nuw nsw i64 %indvars.iv27, 6
  %48 = shl nuw nsw i64 %indvars.iv31, 3
  %49 = or disjoint i64 %47, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %49
  store i32 1, ptr %50, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30 = icmp ne i64 %indvars.iv.next28, 2
  br i1 %exitcond30, label %46, label %51, !llvm.loop !23

51:                                               ; preds = %46
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34 = icmp ne i64 %indvars.iv.next32, 4
  br i1 %exitcond34, label %45, label %52, !llvm.loop !24

52:                                               ; preds = %51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %53

53:                                               ; preds = %60, %52
  %54 = phi i32 [ 0, %52 ], [ 1, %60 ]
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %56, %53
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %56 ], [ 0, %53 ]
  %57 = shl nuw nsw i64 %indvars.iv35, 3
  %58 = or disjoint i64 %55, %57
  %59 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %58
  store i32 1, ptr %59, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38 = icmp ne i64 %indvars.iv.next36, 4
  br i1 %exitcond38, label %56, label %60, !llvm.loop !25

60:                                               ; preds = %56
  %61 = add nuw nsw i32 %54, 1
  %62 = icmp samesign ult i32 %61, 2
  br i1 %62, label %53, label %63, !llvm.loop !26

63:                                               ; preds = %60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %64

64:                                               ; preds = %69, %63
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %69 ], [ 0, %63 ]
  br label %65

65:                                               ; preds = %65, %64
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %65 ], [ 0, %64 ]
  %66 = shl nuw nsw i64 %indvars.iv39, 6
  %67 = or disjoint i64 %indvars.iv43, %66
  %68 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %67
  store i32 1, ptr %68, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42 = icmp ne i64 %indvars.iv.next40, 2
  br i1 %exitcond42, label %65, label %69, !llvm.loop !27

69:                                               ; preds = %65
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46 = icmp ne i64 %indvars.iv.next44, 4
  br i1 %exitcond46, label %64, label %70, !llvm.loop !28

70:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %71

71:                                               ; preds = %79, %70
  %72 = phi i32 [ 0, %70 ], [ 1, %79 ]
  br label %73

73:                                               ; preds = %73, %71
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %73 ], [ 0, %71 ]
  %74 = shl nuw nsw i64 %indvars.iv47, 6
  %75 = shl nuw nsw i32 %72, 3
  %76 = zext i32 %75 to i64
  %77 = or disjoint i64 %74, %76
  %78 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %77
  store i32 1, ptr %78, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50 = icmp ne i64 %indvars.iv.next48, 4
  br i1 %exitcond50, label %73, label %79, !llvm.loop !29

79:                                               ; preds = %73
  %80 = add nuw nsw i32 %72, 1
  %81 = icmp samesign ult i32 %80, 2
  br i1 %81, label %71, label %82, !llvm.loop !30

82:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %83

83:                                               ; preds = %83, %82
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %83 ], [ 0, %82 ]
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %84, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54 = icmp ne i64 %indvars.iv.next52, 3
  br i1 %exitcond54, label %83, label %85, !llvm.loop !31

85:                                               ; preds = %83
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %86

86:                                               ; preds = %86, %85
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %86 ], [ 0, %85 ]
  %87 = shl nuw nsw i64 %indvars.iv55, 3
  %88 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %87
  store i32 1, ptr %88, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58 = icmp ne i64 %indvars.iv.next56, 3
  br i1 %exitcond58, label %86, label %89, !llvm.loop !32

89:                                               ; preds = %86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %90

90:                                               ; preds = %90, %89
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %90 ], [ 0, %89 ]
  %91 = shl nuw nsw i64 %indvars.iv59, 6
  %92 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %91
  store i32 1, ptr %92, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62 = icmp ne i64 %indvars.iv.next60, 3
  br i1 %exitcond62, label %90, label %93, !llvm.loop !33

93:                                               ; preds = %90
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %94

94:                                               ; preds = %104, %93
  %95 = phi i32 [ 0, %93 ], [ 1, %104 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ 0, %94 ], [ 1, %96 ]
  %98 = shl nuw nsw i32 %97, 3
  %99 = or disjoint i32 %95, %98
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nuw nsw i32 %97, 1
  %103 = icmp samesign ult i32 %102, 2
  br i1 %103, label %96, label %104, !llvm.loop !34

104:                                              ; preds = %96
  %105 = add nuw nsw i32 %95, 1
  %106 = icmp samesign ult i32 %105, 2
  br i1 %106, label %94, label %107, !llvm.loop !35

107:                                              ; preds = %104
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %108

108:                                              ; preds = %115, %107
  %109 = phi i32 [ 0, %107 ], [ 1, %115 ]
  %110 = zext i32 %109 to i64
  br label %111

111:                                              ; preds = %111, %108
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %111 ], [ 0, %108 ]
  %112 = shl nuw nsw i64 %indvars.iv63, 6
  %113 = or disjoint i64 %110, %112
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %113
  store i32 1, ptr %114, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66 = icmp ne i64 %indvars.iv.next64, 2
  br i1 %exitcond66, label %111, label %115, !llvm.loop !36

115:                                              ; preds = %111
  %116 = add nuw nsw i32 %109, 1
  %117 = icmp samesign ult i32 %116, 2
  br i1 %117, label %108, label %118, !llvm.loop !37

118:                                              ; preds = %115
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %119

119:                                              ; preds = %127, %118
  %120 = phi i32 [ 0, %118 ], [ 1, %127 ]
  br label %121

121:                                              ; preds = %121, %119
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %121 ], [ 0, %119 ]
  %122 = shl nuw nsw i64 %indvars.iv67, 6
  %123 = shl nuw nsw i32 %120, 3
  %124 = zext i32 %123 to i64
  %125 = or disjoint i64 %122, %124
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %125
  store i32 1, ptr %126, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70 = icmp ne i64 %indvars.iv.next68, 2
  br i1 %exitcond70, label %121, label %127, !llvm.loop !38

127:                                              ; preds = %121
  %128 = add nuw nsw i32 %120, 1
  %129 = icmp samesign ult i32 %128, 2
  br i1 %129, label %119, label %130, !llvm.loop !39

130:                                              ; preds = %127
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %131

131:                                              ; preds = %146, %130
  %132 = phi i32 [ 0, %130 ], [ 1, %146 ]
  %133 = zext i32 %132 to i64
  br label %134

134:                                              ; preds = %143, %131
  %135 = phi i32 [ 0, %131 ], [ 1, %143 ]
  br label %136

136:                                              ; preds = %136, %134
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %136 ], [ 0, %134 ]
  %137 = shl nuw nsw i64 %indvars.iv71, 6
  %138 = shl nuw nsw i32 %135, 3
  %139 = zext i32 %138 to i64
  %140 = or disjoint i64 %137, %139
  %141 = or disjoint i64 %133, %140
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %141
  store i32 1, ptr %142, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74 = icmp ne i64 %indvars.iv.next72, 2
  br i1 %exitcond74, label %136, label %143, !llvm.loop !40

143:                                              ; preds = %136
  %144 = add nuw nsw i32 %135, 1
  %145 = icmp samesign ult i32 %144, 2
  br i1 %145, label %134, label %146, !llvm.loop !41

146:                                              ; preds = %143
  %147 = add nuw nsw i32 %132, 1
  %148 = icmp samesign ult i32 %147, 2
  br i1 %148, label %131, label %149, !llvm.loop !42

149:                                              ; preds = %146
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %150 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %150, 0
  br i1 %.not, label %153, label %151

151:                                              ; preds = %149
  %152 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %152, ptr @n, align 4
  br label %154

153:                                              ; preds = %149
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %.pre, %153 ], [ %152, %151 ]
  %156 = call i32 @Trial(i32 noundef %155)
  %.not1 = icmp eq i32 %156, 0
  br i1 %.not1, label %157, label %158

157:                                              ; preds = %154
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %162

158:                                              ; preds = %154
  %159 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %159, 2005
  br i1 %.not3, label %161, label %160

160:                                              ; preds = %158
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %161

161:                                              ; preds = %160, %158
  br label %162

162:                                              ; preds = %161, %157
  %163 = load i32, ptr @n, align 4
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %163) #3
  %165 = load i32, ptr @kount, align 4
  %166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %165) #3
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
