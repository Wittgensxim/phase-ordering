; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_005\output.ll'
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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = zext nneg i32 %.pre to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %invariant.gep = getelementptr [4 x i8], ptr @puzzl, i64 %3
  br label %6

6:                                                ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %11, label %9

9:                                                ; preds = %6
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %10 = load i32, ptr %gep, align 4
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %._crit_edge

11:                                               ; preds = %9, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %6, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %11, %9
  %12 = phi i32 [ 0, %9 ], [ 1, %11 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

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

._crit_edge:                                      ; preds = %10, %2
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr %14, align 4
  %17 = icmp slt i32 %1, 512
  br i1 %17, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %._crit_edge
  %18 = sext i32 %1 to i64
  br label %19

19:                                               ; preds = %24, %.lr.ph6
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %24 ], [ %18, %.lr.ph6 ]
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %21 = load i32, ptr %20, align 4
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %22, label %24

22:                                               ; preds = %19
  %23 = trunc nsw i64 %indvars.iv3 to i32
  br label %._crit_edge7

24:                                               ; preds = %19
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %25 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %25, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %19, !llvm.loop !10

._crit_edge7:                                     ; preds = %._crit_edge, %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ], [ 0, %._crit_edge ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

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

._crit_edge:                                      ; preds = %10, %2
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %18, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %18, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %18, label %13

13:                                               ; preds = %10
  %14 = call i32 @Place(i32 noundef %11, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not2 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not2, %16
  br i1 %or.cond, label %19, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %11, i32 noundef %0)
  br label %18

18:                                               ; preds = %10, %17, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %19, label %4, !llvm.loop !12

19:                                               ; preds = %18, %13
  %20 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %20
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

3:                                                ; preds = %1, %8
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %8 ], [ 1, %1 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  br label %5

5:                                                ; preds = %7, %3
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %7 ], [ 1, %3 ]
  %.idx75 = shl nuw nsw i64 %indvars.iv6, 5
  %invariant.gep = getelementptr inbounds i8, ptr %4, i64 %.idx75
  br label %6

6:                                                ; preds = %6, %5
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %6 ], [ 1, %5 ]
  %.idx = shl nuw nsw i64 %indvars.iv2, 8
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %.idx
  store i32 0, ptr %gep, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5.not = icmp eq i64 %indvars.iv.next3, 6
  br i1 %exitcond5.not, label %7, label %6, !llvm.loop !14

7:                                                ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond9.not, label %8, label %5, !llvm.loop !15

8:                                                ; preds = %7
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %9, label %3, !llvm.loop !16

9:                                                ; preds = %8, %13
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %13 ], [ 0, %8 ]
  %10 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %11

11:                                               ; preds = %11, %9
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %11 ], [ 0, %9 ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv14
  store i32 0, ptr %12, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 512
  br i1 %exitcond17.not, label %13, label %11, !llvm.loop !17

13:                                               ; preds = %11
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %14, label %9, !llvm.loop !18

14:                                               ; preds = %13, %22
  %15 = phi i32 [ %23, %22 ], [ 0, %13 ]
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i1 [ true, %14 ], [ false, %16 ]
  %18 = phi i32 [ 0, %14 ], [ 8, %16 ]
  %19 = or disjoint i32 %15, %18
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %20
  store i32 1, ptr %21, align 4
  br i1 %17, label %16, label %22, !llvm.loop !19

22:                                               ; preds = %16
  %23 = add nuw nsw i32 %15, 1
  %exitcond22.not = icmp eq i32 %23, 4
  br i1 %exitcond22.not, label %24, label %14, !llvm.loop !20

24:                                               ; preds = %22
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %25

25:                                               ; preds = %29, %24
  %26 = phi i1 [ true, %24 ], [ false, %29 ]
  %27 = phi i64 [ 0, %24 ], [ 1, %29 ]
  %invariant.gep1 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %27
  br label %28

28:                                               ; preds = %28, %25
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %28 ], [ 0, %25 ]
  %.idx76 = shl nuw nsw i64 %indvars.iv23, 8
  %gep2 = getelementptr inbounds i8, ptr %invariant.gep1, i64 %.idx76
  store i32 1, ptr %gep2, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 4
  br i1 %exitcond26.not, label %29, label %28, !llvm.loop !21

29:                                               ; preds = %28
  br i1 %26, label %25, label %30, !llvm.loop !22

30:                                               ; preds = %29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %31

31:                                               ; preds = %33, %30
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %33 ], [ 0, %30 ]
  %.idx78 = shl nuw nsw i64 %indvars.iv31, 5
  %invariant.gep3 = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx78
  br label %32

32:                                               ; preds = %32, %31
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %32 ], [ 0, %31 ]
  %.idx77 = shl nuw nsw i64 %indvars.iv27, 8
  %gep4 = getelementptr inbounds i8, ptr %invariant.gep3, i64 %.idx77
  store i32 1, ptr %gep4, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 2
  br i1 %exitcond30.not, label %33, label %32, !llvm.loop !23

33:                                               ; preds = %32
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond34.not, label %34, label %31, !llvm.loop !24

34:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %35

35:                                               ; preds = %39, %34
  %36 = phi i1 [ true, %34 ], [ false, %39 ]
  %37 = phi i64 [ 0, %34 ], [ 1, %39 ]
  %invariant.gep5 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %37
  br label %38

38:                                               ; preds = %38, %35
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %38 ], [ 0, %35 ]
  %.idx79 = shl nuw nsw i64 %indvars.iv35, 5
  %gep6 = getelementptr inbounds i8, ptr %invariant.gep5, i64 %.idx79
  store i32 1, ptr %gep6, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4
  br i1 %exitcond38.not, label %39, label %38, !llvm.loop !25

39:                                               ; preds = %38
  br i1 %36, label %35, label %40, !llvm.loop !26

40:                                               ; preds = %39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %41

41:                                               ; preds = %45, %40
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %45 ], [ 0, %40 ]
  %42 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv43
  br label %43

43:                                               ; preds = %43, %41
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %43 ], [ 0, %41 ]
  %.idx80 = shl nuw nsw i64 %indvars.iv39, 8
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 %.idx80
  store i32 1, ptr %44, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 2
  br i1 %exitcond42.not, label %45, label %43, !llvm.loop !27

45:                                               ; preds = %43
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 4
  br i1 %exitcond46.not, label %46, label %41, !llvm.loop !28

46:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %47

47:                                               ; preds = %51, %46
  %48 = phi i1 [ true, %46 ], [ false, %51 ]
  %49 = phi i64 [ 0, %46 ], [ 8, %51 ]
  %invariant.gep7 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %49
  br label %50

50:                                               ; preds = %50, %47
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %50 ], [ 0, %47 ]
  %.idx81 = shl nuw nsw i64 %indvars.iv47, 8
  %gep8 = getelementptr inbounds i8, ptr %invariant.gep7, i64 %.idx81
  store i32 1, ptr %gep8, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 4
  br i1 %exitcond50.not, label %51, label %50, !llvm.loop !29

51:                                               ; preds = %50
  br i1 %48, label %47, label %52, !llvm.loop !30

52:                                               ; preds = %51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %53

53:                                               ; preds = %53, %52
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %53 ], [ 0, %52 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %54, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond54.not, label %55, label %53, !llvm.loop !31

55:                                               ; preds = %53
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %56

56:                                               ; preds = %56, %55
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %56 ], [ 0, %55 ]
  %.idx82 = shl nuw nsw i64 %indvars.iv55, 5
  %57 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx82
  store i32 1, ptr %57, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 3
  br i1 %exitcond58.not, label %58, label %56, !llvm.loop !32

58:                                               ; preds = %56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %59

59:                                               ; preds = %59, %58
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %59 ], [ 0, %58 ]
  %.idx83 = shl nuw nsw i64 %indvars.iv59, 8
  %60 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx83
  store i32 1, ptr %60, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 3
  br i1 %exitcond62.not, label %61, label %59, !llvm.loop !33

61:                                               ; preds = %59
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %62

62:                                               ; preds = %71, %61
  %63 = phi i1 [ true, %61 ], [ false, %71 ]
  %64 = phi i32 [ 0, %61 ], [ 1, %71 ]
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i1 [ true, %62 ], [ false, %65 ]
  %67 = phi i32 [ 0, %62 ], [ 8, %65 ]
  %68 = or disjoint i32 %64, %67
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %69
  store i32 1, ptr %70, align 4
  br i1 %66, label %65, label %71, !llvm.loop !34

71:                                               ; preds = %65
  br i1 %63, label %62, label %72, !llvm.loop !35

72:                                               ; preds = %71
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %73

73:                                               ; preds = %77, %72
  %74 = phi i1 [ true, %72 ], [ false, %77 ]
  %75 = phi i64 [ 0, %72 ], [ 1, %77 ]
  %invariant.gep9 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %75
  br label %76

76:                                               ; preds = %76, %73
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %76 ], [ 0, %73 ]
  %.idx84 = shl nuw nsw i64 %indvars.iv63, 8
  %gep10 = getelementptr inbounds i8, ptr %invariant.gep9, i64 %.idx84
  store i32 1, ptr %gep10, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 2
  br i1 %exitcond66.not, label %77, label %76, !llvm.loop !36

77:                                               ; preds = %76
  br i1 %74, label %73, label %78, !llvm.loop !37

78:                                               ; preds = %77
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %79

79:                                               ; preds = %83, %78
  %80 = phi i1 [ true, %78 ], [ false, %83 ]
  %81 = phi i64 [ 0, %78 ], [ 8, %83 ]
  %invariant.gep11 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %81
  br label %82

82:                                               ; preds = %82, %79
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %82 ], [ 0, %79 ]
  %.idx85 = shl nuw nsw i64 %indvars.iv67, 8
  %gep12 = getelementptr inbounds i8, ptr %invariant.gep11, i64 %.idx85
  store i32 1, ptr %gep12, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 2
  br i1 %exitcond70.not, label %83, label %82, !llvm.loop !38

83:                                               ; preds = %82
  br i1 %80, label %79, label %84, !llvm.loop !39

84:                                               ; preds = %83
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %85

85:                                               ; preds = %93, %84
  %86 = phi i1 [ true, %84 ], [ false, %93 ]
  %87 = phi i64 [ 0, %84 ], [ 1, %93 ]
  %invariant.gep17 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %87
  br label %88

88:                                               ; preds = %92, %85
  %89 = phi i1 [ true, %85 ], [ false, %92 ]
  %90 = phi i64 [ 0, %85 ], [ 8, %92 ]
  %gep18 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep17, i64 %90
  br label %91

91:                                               ; preds = %91, %88
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %91 ], [ 0, %88 ]
  %.idx86 = shl nuw nsw i64 %indvars.iv71, 8
  %gep16 = getelementptr inbounds i8, ptr %gep18, i64 %.idx86
  store i32 1, ptr %gep16, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 2
  br i1 %exitcond74.not, label %92, label %91, !llvm.loop !40

92:                                               ; preds = %91
  br i1 %89, label %88, label %93, !llvm.loop !41

93:                                               ; preds = %92
  br i1 %86, label %85, label %94, !llvm.loop !42

94:                                               ; preds = %93
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %95 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %95, 0
  br i1 %.not, label %98, label %96

96:                                               ; preds = %94
  %97 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %97, ptr @n, align 4
  br label %99

98:                                               ; preds = %94
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %.pre, %98 ], [ %97, %96 ]
  %101 = call i32 @Trial(i32 noundef %100)
  %.not1 = icmp eq i32 %101, 0
  br i1 %.not1, label %102, label %103

102:                                              ; preds = %99
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %106

103:                                              ; preds = %99
  %104 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %104, 2005
  br i1 %.not3, label %106, label %105

105:                                              ; preds = %103
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %106

106:                                              ; preds = %103, %105, %102
  %107 = load i32, ptr @n, align 4
  %108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %107) #3
  %109 = load i32, ptr @kount, align 4
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %109) #3
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
