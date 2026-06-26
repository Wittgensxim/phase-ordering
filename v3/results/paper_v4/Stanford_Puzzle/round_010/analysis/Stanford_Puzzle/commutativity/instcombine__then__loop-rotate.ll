; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_009\output.ll'
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
  br i1 %.not1, label %14, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = zext nneg i32 %.pre to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  br label %6

6:                                                ; preds = %13, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %6
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %10 = load i32, ptr %gep, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  br label %15

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %6, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  br label %14

14:                                               ; preds = %._crit_edge, %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 1, %14 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  br label %6

6:                                                ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %6
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 1, ptr %gep, align 4
  br label %10

10:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %10
  br label %11

11:                                               ; preds = %._crit_edge, %2
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp slt i32 %1, 512
  br i1 %18, label %.lr.ph6, label %27

.lr.ph6:                                          ; preds = %11
  %19 = sext i32 %1 to i64
  br label %20

20:                                               ; preds = %25, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %25 ], [ %19, %.lr.ph6 ]
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %22 = load i32, ptr %21, align 4
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %23, label %25

23:                                               ; preds = %20
  %indvars.iv3.lcssa = phi i64 [ %indvars.iv3, %20 ]
  %24 = trunc nsw i64 %indvars.iv3.lcssa to i32
  br label %28

25:                                               ; preds = %20
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %26 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %26, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %20, !llvm.loop !10

._crit_edge7:                                     ; preds = %25
  br label %27

27:                                               ; preds = %._crit_edge7, %11
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 0, %27 ], [ %24, %23 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %11, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add nuw i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  br label %6

6:                                                ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %6
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 0, ptr %gep, align 4
  br label %10

10:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %10
  br label %11

11:                                               ; preds = %._crit_edge, %2
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

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %21, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %20, label %13

13:                                               ; preds = %10
  %14 = call i32 @Place(i32 noundef %11, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %16, label %18

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16, %13
  br label %23

19:                                               ; preds = %16
  call void @Remove(i32 noundef %11, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %22, label %4, !llvm.loop !12

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 0, %22 ], [ 1, %18 ]
  ret i32 %24
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

4:                                                ; preds = %9, %3
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %9 ], [ 1, %3 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  br label %6

6:                                                ; preds = %8, %4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %8 ], [ 1, %4 ]
  %.idx75 = shl nuw nsw i64 %indvars.iv6, 5
  %invariant.gep = getelementptr inbounds nuw i8, ptr %5, i64 %.idx75
  br label %7

7:                                                ; preds = %7, %6
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %7 ], [ 1, %6 ]
  %.idx = shl nuw nsw i64 %indvars.iv2, 8
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  store i32 0, ptr %gep, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5.not = icmp eq i64 %indvars.iv.next3, 6
  br i1 %exitcond5.not, label %8, label %7, !llvm.loop !14

8:                                                ; preds = %7
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond9.not, label %9, label %6, !llvm.loop !15

9:                                                ; preds = %8
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %10, label %4, !llvm.loop !16

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %15, %10
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %15 ], [ 0, %10 ]
  %12 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %13

13:                                               ; preds = %13, %11
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %13 ], [ 0, %11 ]
  %14 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv14
  store i32 0, ptr %14, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 512
  br i1 %exitcond17.not, label %15, label %13, !llvm.loop !17

15:                                               ; preds = %13
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %16, label %11, !llvm.loop !18

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %25, %16
  %18 = phi i32 [ 0, %16 ], [ %26, %25 ]
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i1 [ true, %17 ], [ false, %19 ]
  %21 = phi i32 [ 0, %17 ], [ 8, %19 ]
  %22 = or disjoint i32 %18, %21
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %23
  store i32 1, ptr %24, align 4
  br i1 %20, label %19, label %25, !llvm.loop !19

25:                                               ; preds = %19
  %26 = add nuw nsw i32 %18, 1
  %exitcond22.not = icmp eq i32 %26, 4
  br i1 %exitcond22.not, label %27, label %17, !llvm.loop !20

27:                                               ; preds = %25
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %28

28:                                               ; preds = %32, %27
  %29 = phi i1 [ true, %27 ], [ false, %32 ]
  %30 = phi i64 [ 0, %27 ], [ 1, %32 ]
  %invariant.gep1 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %30
  br label %31

31:                                               ; preds = %31, %28
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %31 ], [ 0, %28 ]
  %.idx76 = shl nuw nsw i64 %indvars.iv23, 8
  %gep2 = getelementptr inbounds nuw i8, ptr %invariant.gep1, i64 %.idx76
  store i32 1, ptr %gep2, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 4
  br i1 %exitcond26.not, label %32, label %31, !llvm.loop !21

32:                                               ; preds = %31
  br i1 %29, label %28, label %33, !llvm.loop !22

33:                                               ; preds = %32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %34

34:                                               ; preds = %36, %33
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %36 ], [ 0, %33 ]
  %.idx78 = shl nuw nsw i64 %indvars.iv31, 5
  %invariant.gep3 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx78
  br label %35

35:                                               ; preds = %35, %34
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %35 ], [ 0, %34 ]
  %.idx77 = shl nuw nsw i64 %indvars.iv27, 8
  %gep4 = getelementptr inbounds nuw i8, ptr %invariant.gep3, i64 %.idx77
  store i32 1, ptr %gep4, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 2
  br i1 %exitcond30.not, label %36, label %35, !llvm.loop !23

36:                                               ; preds = %35
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond34.not, label %37, label %34, !llvm.loop !24

37:                                               ; preds = %36
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %38

38:                                               ; preds = %42, %37
  %39 = phi i1 [ true, %37 ], [ false, %42 ]
  %40 = phi i64 [ 0, %37 ], [ 1, %42 ]
  %invariant.gep5 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %40
  br label %41

41:                                               ; preds = %41, %38
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %41 ], [ 0, %38 ]
  %.idx79 = shl nuw nsw i64 %indvars.iv35, 5
  %gep6 = getelementptr inbounds nuw i8, ptr %invariant.gep5, i64 %.idx79
  store i32 1, ptr %gep6, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4
  br i1 %exitcond38.not, label %42, label %41, !llvm.loop !25

42:                                               ; preds = %41
  br i1 %39, label %38, label %43, !llvm.loop !26

43:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %44

44:                                               ; preds = %48, %43
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %48 ], [ 0, %43 ]
  %45 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv43
  br label %46

46:                                               ; preds = %46, %44
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %46 ], [ 0, %44 ]
  %.idx80 = shl nuw nsw i64 %indvars.iv39, 8
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %.idx80
  store i32 1, ptr %47, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 2
  br i1 %exitcond42.not, label %48, label %46, !llvm.loop !27

48:                                               ; preds = %46
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 4
  br i1 %exitcond46.not, label %49, label %44, !llvm.loop !28

49:                                               ; preds = %48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %50

50:                                               ; preds = %54, %49
  %51 = phi i1 [ true, %49 ], [ false, %54 ]
  %52 = phi i64 [ 0, %49 ], [ 8, %54 ]
  %invariant.gep7 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %52
  br label %53

53:                                               ; preds = %53, %50
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %53 ], [ 0, %50 ]
  %.idx81 = shl nuw nsw i64 %indvars.iv47, 8
  %gep8 = getelementptr inbounds nuw i8, ptr %invariant.gep7, i64 %.idx81
  store i32 1, ptr %gep8, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 4
  br i1 %exitcond50.not, label %54, label %53, !llvm.loop !29

54:                                               ; preds = %53
  br i1 %51, label %50, label %55, !llvm.loop !30

55:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %56

56:                                               ; preds = %56, %55
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %56 ], [ 0, %55 ]
  %57 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %57, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond54.not, label %58, label %56, !llvm.loop !31

58:                                               ; preds = %56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %59

59:                                               ; preds = %59, %58
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %59 ], [ 0, %58 ]
  %.idx82 = shl nuw nsw i64 %indvars.iv55, 5
  %60 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx82
  store i32 1, ptr %60, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 3
  br i1 %exitcond58.not, label %61, label %59, !llvm.loop !32

61:                                               ; preds = %59
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %62

62:                                               ; preds = %62, %61
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %62 ], [ 0, %61 ]
  %.idx83 = shl nuw nsw i64 %indvars.iv59, 8
  %63 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx83
  store i32 1, ptr %63, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 3
  br i1 %exitcond62.not, label %64, label %62, !llvm.loop !33

64:                                               ; preds = %62
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %65

65:                                               ; preds = %73, %64
  %66 = phi i1 [ true, %64 ], [ false, %73 ]
  %67 = phi i64 [ 0, %64 ], [ 1, %73 ]
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i1 [ true, %65 ], [ false, %68 ]
  %70 = phi i64 [ 0, %65 ], [ 8, %68 ]
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %67
  %72 = getelementptr inbounds nuw [4 x i8], ptr %71, i64 %70
  store i32 1, ptr %72, align 4
  br i1 %69, label %68, label %73, !llvm.loop !34

73:                                               ; preds = %68
  br i1 %66, label %65, label %74, !llvm.loop !35

74:                                               ; preds = %73
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %75

75:                                               ; preds = %79, %74
  %76 = phi i1 [ true, %74 ], [ false, %79 ]
  %77 = phi i64 [ 0, %74 ], [ 1, %79 ]
  %invariant.gep9 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %77
  br label %78

78:                                               ; preds = %78, %75
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %78 ], [ 0, %75 ]
  %.idx84 = shl nuw nsw i64 %indvars.iv63, 8
  %gep10 = getelementptr inbounds nuw i8, ptr %invariant.gep9, i64 %.idx84
  store i32 1, ptr %gep10, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 2
  br i1 %exitcond66.not, label %79, label %78, !llvm.loop !36

79:                                               ; preds = %78
  br i1 %76, label %75, label %80, !llvm.loop !37

80:                                               ; preds = %79
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %81

81:                                               ; preds = %85, %80
  %82 = phi i1 [ true, %80 ], [ false, %85 ]
  %83 = phi i64 [ 0, %80 ], [ 8, %85 ]
  %invariant.gep11 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %83
  br label %84

84:                                               ; preds = %84, %81
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %84 ], [ 0, %81 ]
  %.idx85 = shl nuw nsw i64 %indvars.iv67, 8
  %gep12 = getelementptr inbounds nuw i8, ptr %invariant.gep11, i64 %.idx85
  store i32 1, ptr %gep12, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 2
  br i1 %exitcond70.not, label %85, label %84, !llvm.loop !38

85:                                               ; preds = %84
  br i1 %82, label %81, label %86, !llvm.loop !39

86:                                               ; preds = %85
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %87

87:                                               ; preds = %95, %86
  %88 = phi i1 [ true, %86 ], [ false, %95 ]
  %89 = phi i64 [ 0, %86 ], [ 1, %95 ]
  %invariant.gep17 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %89
  br label %90

90:                                               ; preds = %94, %87
  %91 = phi i1 [ true, %87 ], [ false, %94 ]
  %92 = phi i64 [ 0, %87 ], [ 8, %94 ]
  %gep18 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep17, i64 %92
  br label %93

93:                                               ; preds = %93, %90
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %93 ], [ 0, %90 ]
  %.idx86 = shl nuw nsw i64 %indvars.iv71, 8
  %gep16 = getelementptr inbounds nuw i8, ptr %gep18, i64 %.idx86
  store i32 1, ptr %gep16, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 2
  br i1 %exitcond74.not, label %94, label %93, !llvm.loop !40

94:                                               ; preds = %93
  br i1 %91, label %90, label %95, !llvm.loop !41

95:                                               ; preds = %94
  br i1 %88, label %87, label %96, !llvm.loop !42

96:                                               ; preds = %95
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %97 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %97, 0
  br i1 %.not, label %100, label %98

98:                                               ; preds = %96
  %99 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %99, ptr @n, align 4
  br label %101

100:                                              ; preds = %96
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %.pre, %100 ], [ %99, %98 ]
  %103 = call i32 @Trial(i32 noundef %102)
  %.not1 = icmp eq i32 %103, 0
  br i1 %.not1, label %104, label %105

104:                                              ; preds = %101
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %109

105:                                              ; preds = %101
  %106 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %106, 2005
  br i1 %.not3, label %108, label %107

107:                                              ; preds = %105
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %108

108:                                              ; preds = %107, %105
  br label %109

109:                                              ; preds = %108, %104
  %110 = load i32, ptr @n, align 4
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %110) #3
  %112 = load i32, ptr @kount, align 4
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %112) #3
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
  br i1 %exitcond.not, label %4, label %1, !llvm.loop !43

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
