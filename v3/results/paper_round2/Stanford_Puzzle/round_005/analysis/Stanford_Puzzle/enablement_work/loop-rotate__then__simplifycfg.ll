; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_004\output.ll'
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
  br label %5

5:                                                ; preds = %13, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %11 = getelementptr [4 x i8], ptr %10, i64 %3
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %._crit_edge

13:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not.not = icmp samesign ult i64 %indvars.iv, %4
  br i1 %.not.not, label %5, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %2, %13, %9
  %14 = phi i32 [ 0, %9 ], [ 1, %13 ], [ 1, %2 ]
  ret i32 %14
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
  %indvars.iv3.lcssa = phi i64 [ %indvars.iv3, %21 ]
  %25 = trunc nsw i64 %indvars.iv3.lcssa to i32
  br label %._crit_edge7

26:                                               ; preds = %21
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %27 = and i64 %indvars.iv.next4, 4294967295
  %exitcond6.not = icmp eq i64 %27, 512
  br i1 %exitcond6.not, label %._crit_edge7, label %21, !llvm.loop !10

._crit_edge7:                                     ; preds = %._crit_edge, %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ], [ 0, %._crit_edge ]
  ret i32 %28
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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %21, label %4, !llvm.loop !12

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
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %3, label %1, !llvm.loop !13

3:                                                ; preds = %1, %10
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %10 ], [ 1, %1 ]
  br label %4

4:                                                ; preds = %9, %3
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %9 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %5, %4
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %5 ], [ 1, %4 ]
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %.idx = shl nuw nsw i64 %indvars.iv2, 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %.idx75 = shl nuw nsw i64 %indvars.iv6, 5
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %.idx75
  store i32 0, ptr %8, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %exitcond5.not = icmp eq i64 %indvars.iv.next3, 6
  br i1 %exitcond5.not, label %9, label %5, !llvm.loop !14

9:                                                ; preds = %5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 6
  br i1 %exitcond9.not, label %10, label %4, !llvm.loop !15

10:                                               ; preds = %9
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 6
  br i1 %exitcond13.not, label %11, label %3, !llvm.loop !16

11:                                               ; preds = %10, %15
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %15 ], [ 0, %10 ]
  br label %12

12:                                               ; preds = %12, %11
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %12 ], [ 0, %11 ]
  %13 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv14
  store i32 0, ptr %14, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 512
  br i1 %exitcond17.not, label %15, label %12, !llvm.loop !17

15:                                               ; preds = %12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond21.not, label %16, label %11, !llvm.loop !18

16:                                               ; preds = %15, %24
  %17 = phi i32 [ %25, %24 ], [ 0, %15 ]
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i1 [ true, %16 ], [ false, %18 ]
  %20 = phi i32 [ 0, %16 ], [ 8, %18 ]
  %21 = or disjoint i32 %17, %20
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %22
  store i32 1, ptr %23, align 4
  br i1 %19, label %18, label %24, !llvm.loop !19

24:                                               ; preds = %18
  %25 = add nuw nsw i32 %17, 1
  %exitcond22.not = icmp eq i32 %25, 4
  br i1 %exitcond22.not, label %26, label %16, !llvm.loop !20

26:                                               ; preds = %24
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %27

27:                                               ; preds = %33, %26
  %28 = phi i1 [ true, %26 ], [ false, %33 ]
  %29 = phi i64 [ 0, %26 ], [ 1, %33 ]
  br label %30

30:                                               ; preds = %30, %27
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %30 ], [ 0, %27 ]
  %.idx76 = shl nuw nsw i64 %indvars.iv23, 8
  %31 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %.idx76
  %32 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %29
  store i32 1, ptr %32, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 4
  br i1 %exitcond26.not, label %33, label %30, !llvm.loop !21

33:                                               ; preds = %30
  br i1 %28, label %27, label %34, !llvm.loop !22

34:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %35

35:                                               ; preds = %39, %34
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %39 ], [ 0, %34 ]
  br label %36

36:                                               ; preds = %36, %35
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %36 ], [ 0, %35 ]
  %.idx77 = shl nuw nsw i64 %indvars.iv27, 8
  %37 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx77
  %.idx78 = shl nuw nsw i64 %indvars.iv31, 5
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 %.idx78
  store i32 1, ptr %38, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 2
  br i1 %exitcond30.not, label %39, label %36, !llvm.loop !23

39:                                               ; preds = %36
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond34.not, label %40, label %35, !llvm.loop !24

40:                                               ; preds = %39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %41

41:                                               ; preds = %47, %40
  %42 = phi i1 [ true, %40 ], [ false, %47 ]
  %43 = phi i64 [ 0, %40 ], [ 1, %47 ]
  br label %44

44:                                               ; preds = %44, %41
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %44 ], [ 0, %41 ]
  %.idx79 = shl nuw nsw i64 %indvars.iv35, 5
  %45 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %.idx79
  %46 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %43
  store i32 1, ptr %46, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4
  br i1 %exitcond38.not, label %47, label %44, !llvm.loop !25

47:                                               ; preds = %44
  br i1 %42, label %41, label %48, !llvm.loop !26

48:                                               ; preds = %47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %49

49:                                               ; preds = %53, %48
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %53 ], [ 0, %48 ]
  br label %50

50:                                               ; preds = %50, %49
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %50 ], [ 0, %49 ]
  %51 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv43
  %.idx80 = shl nuw nsw i64 %indvars.iv39, 8
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 %.idx80
  store i32 1, ptr %52, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 2
  br i1 %exitcond42.not, label %53, label %50, !llvm.loop !27

53:                                               ; preds = %50
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 4
  br i1 %exitcond46.not, label %54, label %49, !llvm.loop !28

54:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %55

55:                                               ; preds = %61, %54
  %56 = phi i1 [ true, %54 ], [ false, %61 ]
  %57 = phi i64 [ 0, %54 ], [ 8, %61 ]
  br label %58

58:                                               ; preds = %58, %55
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %58 ], [ 0, %55 ]
  %.idx81 = shl nuw nsw i64 %indvars.iv47, 8
  %59 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %.idx81
  %60 = getelementptr inbounds nuw [4 x i8], ptr %59, i64 %57
  store i32 1, ptr %60, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 4
  br i1 %exitcond50.not, label %61, label %58, !llvm.loop !29

61:                                               ; preds = %58
  br i1 %56, label %55, label %62, !llvm.loop !30

62:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %63

63:                                               ; preds = %63, %62
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %63 ], [ 0, %62 ]
  %64 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %64, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond54.not, label %65, label %63, !llvm.loop !31

65:                                               ; preds = %63
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %66

66:                                               ; preds = %66, %65
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %66 ], [ 0, %65 ]
  %.idx82 = shl nuw nsw i64 %indvars.iv55, 5
  %67 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx82
  store i32 1, ptr %67, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 3
  br i1 %exitcond58.not, label %68, label %66, !llvm.loop !32

68:                                               ; preds = %66
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %69

69:                                               ; preds = %69, %68
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %69 ], [ 0, %68 ]
  %.idx83 = shl nuw nsw i64 %indvars.iv59, 8
  %70 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx83
  store i32 1, ptr %70, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 3
  br i1 %exitcond62.not, label %71, label %69, !llvm.loop !33

71:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %72

72:                                               ; preds = %81, %71
  %73 = phi i1 [ true, %71 ], [ false, %81 ]
  %74 = phi i32 [ 0, %71 ], [ 1, %81 ]
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i1 [ true, %72 ], [ false, %75 ]
  %77 = phi i32 [ 0, %72 ], [ 8, %75 ]
  %78 = or disjoint i32 %74, %77
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %79
  store i32 1, ptr %80, align 4
  br i1 %76, label %75, label %81, !llvm.loop !34

81:                                               ; preds = %75
  br i1 %73, label %72, label %82, !llvm.loop !35

82:                                               ; preds = %81
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %83

83:                                               ; preds = %89, %82
  %84 = phi i1 [ true, %82 ], [ false, %89 ]
  %85 = phi i64 [ 0, %82 ], [ 1, %89 ]
  br label %86

86:                                               ; preds = %86, %83
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %86 ], [ 0, %83 ]
  %.idx84 = shl nuw nsw i64 %indvars.iv63, 8
  %87 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %.idx84
  %88 = getelementptr inbounds nuw [4 x i8], ptr %87, i64 %85
  store i32 1, ptr %88, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 2
  br i1 %exitcond66.not, label %89, label %86, !llvm.loop !36

89:                                               ; preds = %86
  br i1 %84, label %83, label %90, !llvm.loop !37

90:                                               ; preds = %89
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %91

91:                                               ; preds = %97, %90
  %92 = phi i1 [ true, %90 ], [ false, %97 ]
  %93 = phi i64 [ 0, %90 ], [ 8, %97 ]
  br label %94

94:                                               ; preds = %94, %91
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %94 ], [ 0, %91 ]
  %.idx85 = shl nuw nsw i64 %indvars.iv67, 8
  %95 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %.idx85
  %96 = getelementptr inbounds nuw [4 x i8], ptr %95, i64 %93
  store i32 1, ptr %96, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 2
  br i1 %exitcond70.not, label %97, label %94, !llvm.loop !38

97:                                               ; preds = %94
  br i1 %92, label %91, label %98, !llvm.loop !39

98:                                               ; preds = %97
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %99

99:                                               ; preds = %110, %98
  %100 = phi i1 [ true, %98 ], [ false, %110 ]
  %101 = phi i64 [ 0, %98 ], [ 1, %110 ]
  br label %102

102:                                              ; preds = %109, %99
  %103 = phi i1 [ true, %99 ], [ false, %109 ]
  %104 = phi i64 [ 0, %99 ], [ 8, %109 ]
  br label %105

105:                                              ; preds = %105, %102
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %105 ], [ 0, %102 ]
  %.idx86 = shl nuw nsw i64 %indvars.iv71, 8
  %106 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.idx86
  %107 = getelementptr inbounds nuw [4 x i8], ptr %106, i64 %104
  %108 = getelementptr inbounds nuw [4 x i8], ptr %107, i64 %101
  store i32 1, ptr %108, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 2
  br i1 %exitcond74.not, label %109, label %105, !llvm.loop !40

109:                                              ; preds = %105
  br i1 %103, label %102, label %110, !llvm.loop !41

110:                                              ; preds = %109
  br i1 %100, label %99, label %111, !llvm.loop !42

111:                                              ; preds = %110
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %112 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %112, 0
  br i1 %.not, label %115, label %113

113:                                              ; preds = %111
  %114 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %114, ptr @n, align 4
  br label %116

115:                                              ; preds = %111
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %.pre, %115 ], [ %114, %113 ]
  %118 = call i32 @Trial(i32 noundef %117)
  %.not1 = icmp eq i32 %118, 0
  br i1 %.not1, label %119, label %120

119:                                              ; preds = %116
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %123

120:                                              ; preds = %116
  %121 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %121, 2005
  br i1 %.not3, label %123, label %122

122:                                              ; preds = %120
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %123

123:                                              ; preds = %120, %122, %119
  %124 = load i32, ptr @n, align 4
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %124) #3
  %126 = load i32, ptr @kount, align 4
  %127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %126) #3
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
