; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_001\output.ll'
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
  %4 = zext nneg i32 %.pre to i64
  br label %5

5:                                                ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %11 = getelementptr [4 x i8], ptr %10, i64 %3
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %5, label %._crit_edge, !llvm.loop !7

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
  %4 = add nuw i32 %.pre, 1
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
  %10 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %11 = getelementptr [4 x i8], ptr %10, i64 %3
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
  br i1 %20, label %.lr.ph6, label %29

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
  %26 = trunc nsw i64 %indvars.iv3 to i32
  br label %30

27:                                               ; preds = %22
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %28 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %28, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %22, !llvm.loop !10

._crit_edge7:                                     ; preds = %27
  br label %29

29:                                               ; preds = %._crit_edge7, %13
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ 0, %29 ], [ %26, %25 ]
  ret i32 %31
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
  %4 = add nuw i32 %.pre, 1
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
  %10 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %11 = getelementptr [4 x i8], ptr %10, i64 %3
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %24, label %4, !llvm.loop !12

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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %3, label %1, !llvm.loop !13

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %11, %3
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %11 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %10, %4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %10 ], [ 1, %4 ]
  br label %6

6:                                                ; preds = %6, %5
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %6 ], [ 1, %5 ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %.idx = shl nuw nsw i64 %indvars.iv2, 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %.idx118 = shl nuw nsw i64 %indvars.iv6, 5
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx118
  store i32 0, ptr %9, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5.not = icmp eq i64 %indvars.iv.next3, 6
  br i1 %exitcond5.not, label %10, label %6, !llvm.loop !14

10:                                               ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond9.not, label %11, label %5, !llvm.loop !15

11:                                               ; preds = %10
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %12, label %4, !llvm.loop !16

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %17, %12
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %17 ], [ 0, %12 ]
  br label %14

14:                                               ; preds = %14, %13
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %14 ], [ 0, %13 ]
  %15 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %16 = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv14
  store i32 0, ptr %16, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 512
  br i1 %exitcond17.not, label %17, label %14, !llvm.loop !17

17:                                               ; preds = %14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %18, label %13, !llvm.loop !18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %25, %18
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %25 ], [ 0, %18 ]
  br label %20

20:                                               ; preds = %24, %19
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %24 ], [ 0, %19 ]
  br label %21

21:                                               ; preds = %21, %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %indvars.iv26
  %.idx119 = shl nuw nsw i64 %indvars.iv22, 5
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 %.idx119
  store i32 1, ptr %23, align 4
  br i1 false, label %21, label %24, !llvm.loop !19

24:                                               ; preds = %21
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 2
  br i1 %exitcond25.not, label %25, label %20, !llvm.loop !20

25:                                               ; preds = %24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 4
  br i1 %exitcond29.not, label %26, label %19, !llvm.loop !21

26:                                               ; preds = %25
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %27

27:                                               ; preds = %33, %26
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %33 ], [ 0, %26 ]
  br label %28

28:                                               ; preds = %32, %27
  br label %29

29:                                               ; preds = %29, %28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %29 ], [ 0, %28 ]
  %30 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %indvars.iv34
  %.idx120 = shl nuw nsw i64 %indvars.iv30, 8
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 %.idx120
  store i32 1, ptr %31, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 4
  br i1 %exitcond33.not, label %32, label %29, !llvm.loop !22

32:                                               ; preds = %29
  br i1 false, label %28, label %33, !llvm.loop !23

33:                                               ; preds = %32
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 2
  br i1 %exitcond37.not, label %34, label %27, !llvm.loop !24

34:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %35

35:                                               ; preds = %41, %34
  br label %36

36:                                               ; preds = %40, %35
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %40 ], [ 0, %35 ]
  br label %37

37:                                               ; preds = %37, %36
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %37 ], [ 0, %36 ]
  %.idx121 = shl nuw nsw i64 %indvars.iv38, 8
  %38 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx121
  %.idx122 = shl nuw nsw i64 %indvars.iv42, 5
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 %.idx122
  store i32 1, ptr %39, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next39, 2
  br i1 %exitcond41.not, label %40, label %37, !llvm.loop !25

40:                                               ; preds = %37
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 4
  br i1 %exitcond45.not, label %41, label %36, !llvm.loop !26

41:                                               ; preds = %40
  br i1 false, label %35, label %42, !llvm.loop !27

42:                                               ; preds = %41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %43

43:                                               ; preds = %49, %42
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %49 ], [ 0, %42 ]
  br label %44

44:                                               ; preds = %48, %43
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %48 ], [ 0, %43 ]
  br label %45

45:                                               ; preds = %45, %44
  %46 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %indvars.iv50
  %.idx123 = shl nuw nsw i64 %indvars.iv46, 5
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %.idx123
  store i32 1, ptr %47, align 4
  br i1 false, label %45, label %48, !llvm.loop !28

48:                                               ; preds = %45
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 4
  br i1 %exitcond49.not, label %49, label %44, !llvm.loop !29

49:                                               ; preds = %48
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 2
  br i1 %exitcond53.not, label %50, label %43, !llvm.loop !30

50:                                               ; preds = %49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %51

51:                                               ; preds = %57, %50
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %57 ], [ 0, %50 ]
  br label %52

52:                                               ; preds = %56, %51
  br label %53

53:                                               ; preds = %53, %52
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %53 ], [ 0, %52 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv58
  %.idx124 = shl nuw nsw i64 %indvars.iv54, 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %.idx124
  store i32 1, ptr %55, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 2
  br i1 %exitcond57.not, label %56, label %53, !llvm.loop !31

56:                                               ; preds = %53
  br i1 false, label %52, label %57, !llvm.loop !32

57:                                               ; preds = %56
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 4
  br i1 %exitcond61.not, label %58, label %51, !llvm.loop !33

58:                                               ; preds = %57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %59

59:                                               ; preds = %65, %58
  br label %60

60:                                               ; preds = %64, %59
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %64 ], [ 0, %59 ]
  br label %61

61:                                               ; preds = %61, %60
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %61 ], [ 0, %60 ]
  %.idx125 = shl nuw nsw i64 %indvars.iv62, 8
  %62 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %.idx125
  %.idx126 = shl nuw nsw i64 %indvars.iv66, 5
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 %.idx126
  store i32 1, ptr %63, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, 4
  br i1 %exitcond65.not, label %64, label %61, !llvm.loop !34

64:                                               ; preds = %61
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next67, 2
  br i1 %exitcond69.not, label %65, label %60, !llvm.loop !35

65:                                               ; preds = %64
  br i1 false, label %59, label %66, !llvm.loop !36

66:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %67

67:                                               ; preds = %72, %66
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %72 ], [ 0, %66 ]
  br label %68

68:                                               ; preds = %71, %67
  br label %69

69:                                               ; preds = %69, %68
  %70 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  store i32 1, ptr %70, align 4
  br i1 false, label %69, label %71, !llvm.loop !37

71:                                               ; preds = %69
  br i1 false, label %68, label %72, !llvm.loop !38

72:                                               ; preds = %71
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next71, 3
  br i1 %exitcond73.not, label %73, label %67, !llvm.loop !39

73:                                               ; preds = %72
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %74

74:                                               ; preds = %79, %73
  br label %75

75:                                               ; preds = %78, %74
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %78 ], [ 0, %74 ]
  br label %76

76:                                               ; preds = %76, %75
  %.idx127 = shl nuw nsw i64 %indvars.iv74, 5
  %77 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx127
  store i32 1, ptr %77, align 4
  br i1 false, label %76, label %78, !llvm.loop !40

78:                                               ; preds = %76
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next75, 3
  br i1 %exitcond77.not, label %79, label %75, !llvm.loop !41

79:                                               ; preds = %78
  br i1 false, label %74, label %80, !llvm.loop !42

80:                                               ; preds = %79
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %81

81:                                               ; preds = %86, %80
  br label %82

82:                                               ; preds = %85, %81
  br label %83

83:                                               ; preds = %83, %82
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %83 ], [ 0, %82 ]
  %.idx128 = shl nuw nsw i64 %indvars.iv78, 8
  %84 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx128
  store i32 1, ptr %84, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 3
  br i1 %exitcond81.not, label %85, label %83, !llvm.loop !43

85:                                               ; preds = %83
  br i1 false, label %82, label %86, !llvm.loop !44

86:                                               ; preds = %85
  br i1 false, label %81, label %87, !llvm.loop !45

87:                                               ; preds = %86
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %88

88:                                               ; preds = %94, %87
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %94 ], [ 0, %87 ]
  br label %89

89:                                               ; preds = %93, %88
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %93 ], [ 0, %88 ]
  br label %90

90:                                               ; preds = %90, %89
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %indvars.iv86
  %.idx129 = shl nuw nsw i64 %indvars.iv82, 5
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 %.idx129
  store i32 1, ptr %92, align 4
  br i1 false, label %90, label %93, !llvm.loop !46

93:                                               ; preds = %90
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, 2
  br i1 %exitcond85.not, label %94, label %89, !llvm.loop !47

94:                                               ; preds = %93
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 2
  br i1 %exitcond89.not, label %95, label %88, !llvm.loop !48

95:                                               ; preds = %94
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %96

96:                                               ; preds = %102, %95
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %102 ], [ 0, %95 ]
  br label %97

97:                                               ; preds = %101, %96
  br label %98

98:                                               ; preds = %98, %97
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %98 ], [ 0, %97 ]
  %99 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %indvars.iv94
  %.idx130 = shl nuw nsw i64 %indvars.iv90, 8
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %.idx130
  store i32 1, ptr %100, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 2
  br i1 %exitcond93.not, label %101, label %98, !llvm.loop !49

101:                                              ; preds = %98
  br i1 false, label %97, label %102, !llvm.loop !50

102:                                              ; preds = %101
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 2
  br i1 %exitcond97.not, label %103, label %96, !llvm.loop !51

103:                                              ; preds = %102
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %104

104:                                              ; preds = %110, %103
  br label %105

105:                                              ; preds = %109, %104
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %109 ], [ 0, %104 ]
  br label %106

106:                                              ; preds = %106, %105
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %106 ], [ 0, %105 ]
  %.idx131 = shl nuw nsw i64 %indvars.iv98, 8
  %107 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %.idx131
  %.idx132 = shl nuw nsw i64 %indvars.iv102, 5
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %.idx132
  store i32 1, ptr %108, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, 2
  br i1 %exitcond101.not, label %109, label %106, !llvm.loop !52

109:                                              ; preds = %106
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, 2
  br i1 %exitcond105.not, label %110, label %105, !llvm.loop !53

110:                                              ; preds = %109
  br i1 false, label %104, label %111, !llvm.loop !54

111:                                              ; preds = %110
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %112

112:                                              ; preds = %119, %111
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %119 ], [ 0, %111 ]
  br label %113

113:                                              ; preds = %118, %112
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %118 ], [ 0, %112 ]
  br label %114

114:                                              ; preds = %114, %113
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %114 ], [ 0, %113 ]
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %indvars.iv114
  %.idx133 = shl nuw nsw i64 %indvars.iv106, 8
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 %.idx133
  %.idx134 = shl nuw nsw i64 %indvars.iv110, 5
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %.idx134
  store i32 1, ptr %117, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, 2
  br i1 %exitcond109.not, label %118, label %114, !llvm.loop !55

118:                                              ; preds = %114
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 2
  br i1 %exitcond113.not, label %119, label %113, !llvm.loop !56

119:                                              ; preds = %118
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, 2
  br i1 %exitcond117.not, label %120, label %112, !llvm.loop !57

120:                                              ; preds = %119
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %121 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %121, 0
  br i1 %.not, label %124, label %122

122:                                              ; preds = %120
  %123 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %123, ptr @n, align 4
  br label %125

124:                                              ; preds = %120
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %.pre, %124 ], [ %123, %122 ]
  %127 = call i32 @Trial(i32 noundef %126)
  %.not1 = icmp eq i32 %127, 0
  br i1 %.not1, label %128, label %129

128:                                              ; preds = %125
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %133

129:                                              ; preds = %125
  %130 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %130, 2005
  br i1 %.not3, label %132, label %131

131:                                              ; preds = %129
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %132

132:                                              ; preds = %131, %129
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i32, ptr @n, align 4
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %134) #3
  %136 = load i32, ptr @kount, align 4
  %137 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %136) #3
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
  %exitcond.not = icmp eq i32 %3, 100
  br i1 %exitcond.not, label %4, label %1, !llvm.loop !58

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
