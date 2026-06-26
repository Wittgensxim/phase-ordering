; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_001\output.ll'
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
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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
define dso_local i32 @Trial(i32 noundef %0) #0 {
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

18:                                               ; preds = %17, %23
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %23 ], [ 0, %17 ]
  br label %19

19:                                               ; preds = %19, %18
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %19 ], [ 0, %18 ]
  %20 = shl nuw nsw i64 %indvars.iv22, 3
  %21 = or disjoint i64 %indvars.iv26, %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %21
  store i32 1, ptr %22, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25 = icmp ne i64 %indvars.iv.next23, 2
  br i1 %exitcond25, label %19, label %23, !llvm.loop !19

23:                                               ; preds = %19
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond29 = icmp ne i64 %indvars.iv.next27, 4
  br i1 %exitcond29, label %18, label %24, !llvm.loop !20

24:                                               ; preds = %23
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %25

25:                                               ; preds = %30, %24
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %30 ], [ 0, %24 ]
  br label %26

26:                                               ; preds = %26, %25
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %26 ], [ 0, %25 ]
  %27 = shl nuw nsw i64 %indvars.iv30, 6
  %28 = or disjoint i64 %indvars.iv34, %27
  %29 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %28
  store i32 1, ptr %29, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33 = icmp ne i64 %indvars.iv.next31, 4
  br i1 %exitcond33, label %26, label %30, !llvm.loop !21

30:                                               ; preds = %26
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond37 = icmp ne i64 %indvars.iv.next35, 2
  br i1 %exitcond37, label %25, label %31, !llvm.loop !22

31:                                               ; preds = %30
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %32

32:                                               ; preds = %38, %31
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %38 ], [ 0, %31 ]
  br label %33

33:                                               ; preds = %33, %32
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %33 ], [ 0, %32 ]
  %34 = shl nuw nsw i64 %indvars.iv38, 6
  %35 = shl nuw nsw i64 %indvars.iv42, 3
  %36 = or disjoint i64 %34, %35
  %37 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %36
  store i32 1, ptr %37, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41 = icmp ne i64 %indvars.iv.next39, 2
  br i1 %exitcond41, label %33, label %38, !llvm.loop !23

38:                                               ; preds = %33
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond45 = icmp ne i64 %indvars.iv.next43, 4
  br i1 %exitcond45, label %32, label %39, !llvm.loop !24

39:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %40

40:                                               ; preds = %45, %39
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %45 ], [ 0, %39 ]
  br label %41

41:                                               ; preds = %41, %40
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %41 ], [ 0, %40 ]
  %42 = shl nuw nsw i64 %indvars.iv46, 3
  %43 = or disjoint i64 %indvars.iv50, %42
  %44 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %43
  store i32 1, ptr %44, align 4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49 = icmp ne i64 %indvars.iv.next47, 4
  br i1 %exitcond49, label %41, label %45, !llvm.loop !25

45:                                               ; preds = %41
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53 = icmp ne i64 %indvars.iv.next51, 2
  br i1 %exitcond53, label %40, label %46, !llvm.loop !26

46:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %47

47:                                               ; preds = %52, %46
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %52 ], [ 0, %46 ]
  br label %48

48:                                               ; preds = %48, %47
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %48 ], [ 0, %47 ]
  %49 = shl nuw nsw i64 %indvars.iv54, 6
  %50 = or disjoint i64 %indvars.iv58, %49
  %51 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %50
  store i32 1, ptr %51, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57 = icmp ne i64 %indvars.iv.next55, 2
  br i1 %exitcond57, label %48, label %52, !llvm.loop !27

52:                                               ; preds = %48
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond61 = icmp ne i64 %indvars.iv.next59, 4
  br i1 %exitcond61, label %47, label %53, !llvm.loop !28

53:                                               ; preds = %52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %54

54:                                               ; preds = %60, %53
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %60 ], [ 0, %53 ]
  br label %55

55:                                               ; preds = %55, %54
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %55 ], [ 0, %54 ]
  %56 = shl nuw nsw i64 %indvars.iv62, 6
  %57 = shl nuw nsw i64 %indvars.iv66, 3
  %58 = or disjoint i64 %56, %57
  %59 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %58
  store i32 1, ptr %59, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond65 = icmp ne i64 %indvars.iv.next63, 4
  br i1 %exitcond65, label %55, label %60, !llvm.loop !29

60:                                               ; preds = %55
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69 = icmp ne i64 %indvars.iv.next67, 2
  br i1 %exitcond69, label %54, label %61, !llvm.loop !30

61:                                               ; preds = %60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %62

62:                                               ; preds = %62, %61
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %62 ], [ 0, %61 ]
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  store i32 1, ptr %63, align 4
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond73 = icmp ne i64 %indvars.iv.next71, 3
  br i1 %exitcond73, label %62, label %64, !llvm.loop !31

64:                                               ; preds = %62
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %65

65:                                               ; preds = %65, %64
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %65 ], [ 0, %64 ]
  %66 = shl nuw nsw i64 %indvars.iv74, 3
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %66
  store i32 1, ptr %67, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond77 = icmp ne i64 %indvars.iv.next75, 3
  br i1 %exitcond77, label %65, label %68, !llvm.loop !32

68:                                               ; preds = %65
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %69

69:                                               ; preds = %69, %68
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %69 ], [ 0, %68 ]
  %70 = shl nuw nsw i64 %indvars.iv78, 6
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %70
  store i32 1, ptr %71, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond81 = icmp ne i64 %indvars.iv.next79, 3
  br i1 %exitcond81, label %69, label %72, !llvm.loop !33

72:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %73

73:                                               ; preds = %78, %72
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %78 ], [ 0, %72 ]
  br label %74

74:                                               ; preds = %74, %73
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %74 ], [ 0, %73 ]
  %75 = shl nuw nsw i64 %indvars.iv82, 3
  %76 = or disjoint i64 %indvars.iv86, %75
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %76
  store i32 1, ptr %77, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond85 = icmp ne i64 %indvars.iv.next83, 2
  br i1 %exitcond85, label %74, label %78, !llvm.loop !34

78:                                               ; preds = %74
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond89 = icmp ne i64 %indvars.iv.next87, 2
  br i1 %exitcond89, label %73, label %79, !llvm.loop !35

79:                                               ; preds = %78
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %80

80:                                               ; preds = %85, %79
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %85 ], [ 0, %79 ]
  br label %81

81:                                               ; preds = %81, %80
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %81 ], [ 0, %80 ]
  %82 = shl nuw nsw i64 %indvars.iv90, 6
  %83 = or disjoint i64 %indvars.iv94, %82
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %83
  store i32 1, ptr %84, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93 = icmp ne i64 %indvars.iv.next91, 2
  br i1 %exitcond93, label %81, label %85, !llvm.loop !36

85:                                               ; preds = %81
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond97 = icmp ne i64 %indvars.iv.next95, 2
  br i1 %exitcond97, label %80, label %86, !llvm.loop !37

86:                                               ; preds = %85
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %87

87:                                               ; preds = %93, %86
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %93 ], [ 0, %86 ]
  br label %88

88:                                               ; preds = %88, %87
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %88 ], [ 0, %87 ]
  %89 = shl nuw nsw i64 %indvars.iv98, 6
  %90 = shl nuw nsw i64 %indvars.iv102, 3
  %91 = or disjoint i64 %89, %90
  %92 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %91
  store i32 1, ptr %92, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond101 = icmp ne i64 %indvars.iv.next99, 2
  br i1 %exitcond101, label %88, label %93, !llvm.loop !38

93:                                               ; preds = %88
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond105 = icmp ne i64 %indvars.iv.next103, 2
  br i1 %exitcond105, label %87, label %94, !llvm.loop !39

94:                                               ; preds = %93
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %95

95:                                               ; preds = %104, %94
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %104 ], [ 0, %94 ]
  br label %96

96:                                               ; preds = %103, %95
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %103 ], [ 0, %95 ]
  br label %97

97:                                               ; preds = %97, %96
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %97 ], [ 0, %96 ]
  %98 = shl nuw nsw i64 %indvars.iv106, 6
  %99 = shl nuw nsw i64 %indvars.iv110, 3
  %100 = or disjoint i64 %98, %99
  %101 = or disjoint i64 %indvars.iv114, %100
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %101
  store i32 1, ptr %102, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond109 = icmp ne i64 %indvars.iv.next107, 2
  br i1 %exitcond109, label %97, label %103, !llvm.loop !40

103:                                              ; preds = %97
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond113 = icmp ne i64 %indvars.iv.next111, 2
  br i1 %exitcond113, label %96, label %104, !llvm.loop !41

104:                                              ; preds = %103
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond117 = icmp ne i64 %indvars.iv.next115, 2
  br i1 %exitcond117, label %95, label %105, !llvm.loop !42

105:                                              ; preds = %104
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %106 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %106, 0
  br i1 %.not, label %109, label %107

107:                                              ; preds = %105
  %108 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %108, ptr @n, align 4
  br label %110

109:                                              ; preds = %105
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %.pre, %109 ], [ %108, %107 ]
  %112 = call i32 @Trial(i32 noundef %111)
  %.not1 = icmp eq i32 %112, 0
  br i1 %.not1, label %113, label %114

113:                                              ; preds = %110
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %117

114:                                              ; preds = %110
  %115 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %115, 2005
  br i1 %.not3, label %117, label %116

116:                                              ; preds = %114
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %117

117:                                              ; preds = %114, %116, %113
  %118 = load i32, ptr @n, align 4
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %118) #3
  %120 = load i32, ptr @kount, align 4
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %120) #3
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
