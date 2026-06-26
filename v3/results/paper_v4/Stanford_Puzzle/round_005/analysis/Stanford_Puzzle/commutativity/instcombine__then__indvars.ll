; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_004\output.ll'
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
  br i1 %.not1, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = zext nneg i32 %.pre to i64
  %5 = add nuw nsw i64 %4, 1
  br label %6

6:                                                ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %.lr.ph ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %12 = getelementptr [4 x i8], ptr %11, i64 %3
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %5
  br i1 %exitcond, label %6, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %17

17:                                               ; preds = %._crit_edge, %2
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ 1, %17 ], [ 0, %14 ]
  ret i32 %19
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
  %indvars.iv3.lcssa = phi i64 [ %indvars.iv3, %22 ]
  %26 = trunc nsw i64 %indvars.iv3.lcssa to i32
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
  %.idx75 = shl nuw nsw i64 %indvars.iv6, 5
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx75
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

19:                                               ; preds = %27, %18
  %20 = phi i32 [ 0, %18 ], [ %28, %27 ]
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i1 [ true, %19 ], [ false, %21 ]
  %23 = phi i32 [ 0, %19 ], [ 8, %21 ]
  %24 = or disjoint i32 %20, %23
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %25
  store i32 1, ptr %26, align 4
  br i1 %22, label %21, label %27, !llvm.loop !19

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %20, 1
  %exitcond22.not = icmp eq i32 %28, 4
  br i1 %exitcond22.not, label %29, label %19, !llvm.loop !20

29:                                               ; preds = %27
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %30

30:                                               ; preds = %36, %29
  %31 = phi i1 [ true, %29 ], [ false, %36 ]
  %32 = phi i64 [ 0, %29 ], [ 1, %36 ]
  br label %33

33:                                               ; preds = %33, %30
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %33 ], [ 0, %30 ]
  %.idx76 = shl nuw nsw i64 %indvars.iv23, 8
  %34 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %.idx76
  %35 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %32
  store i32 1, ptr %35, align 4
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 4
  br i1 %exitcond26.not, label %36, label %33, !llvm.loop !21

36:                                               ; preds = %33
  br i1 %31, label %30, label %37, !llvm.loop !22

37:                                               ; preds = %36
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %38

38:                                               ; preds = %42, %37
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %42 ], [ 0, %37 ]
  br label %39

39:                                               ; preds = %39, %38
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %39 ], [ 0, %38 ]
  %.idx77 = shl nuw nsw i64 %indvars.iv27, 8
  %40 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx77
  %.idx78 = shl nuw nsw i64 %indvars.iv31, 5
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 %.idx78
  store i32 1, ptr %41, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 2
  br i1 %exitcond30.not, label %42, label %39, !llvm.loop !23

42:                                               ; preds = %39
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond34.not, label %43, label %38, !llvm.loop !24

43:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %44

44:                                               ; preds = %50, %43
  %45 = phi i1 [ true, %43 ], [ false, %50 ]
  %46 = phi i64 [ 0, %43 ], [ 1, %50 ]
  br label %47

47:                                               ; preds = %47, %44
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %47 ], [ 0, %44 ]
  %.idx79 = shl nuw nsw i64 %indvars.iv35, 5
  %48 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %.idx79
  %49 = getelementptr inbounds nuw [4 x i8], ptr %48, i64 %46
  store i32 1, ptr %49, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4
  br i1 %exitcond38.not, label %50, label %47, !llvm.loop !25

50:                                               ; preds = %47
  br i1 %45, label %44, label %51, !llvm.loop !26

51:                                               ; preds = %50
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %52

52:                                               ; preds = %56, %51
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %56 ], [ 0, %51 ]
  br label %53

53:                                               ; preds = %53, %52
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %53 ], [ 0, %52 ]
  %54 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv43
  %.idx80 = shl nuw nsw i64 %indvars.iv39, 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 %.idx80
  store i32 1, ptr %55, align 4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, 2
  br i1 %exitcond42.not, label %56, label %53, !llvm.loop !27

56:                                               ; preds = %53
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next44, 4
  br i1 %exitcond46.not, label %57, label %52, !llvm.loop !28

57:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %58

58:                                               ; preds = %64, %57
  %59 = phi i1 [ true, %57 ], [ false, %64 ]
  %60 = phi i64 [ 0, %57 ], [ 8, %64 ]
  br label %61

61:                                               ; preds = %61, %58
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %61 ], [ 0, %58 ]
  %.idx81 = shl nuw nsw i64 %indvars.iv47, 8
  %62 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %.idx81
  %63 = getelementptr inbounds nuw [4 x i8], ptr %62, i64 %60
  store i32 1, ptr %63, align 4
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 4
  br i1 %exitcond50.not, label %64, label %61, !llvm.loop !29

64:                                               ; preds = %61
  br i1 %59, label %58, label %65, !llvm.loop !30

65:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %66

66:                                               ; preds = %66, %65
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %66 ], [ 0, %65 ]
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv51
  store i32 1, ptr %67, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond54.not, label %68, label %66, !llvm.loop !31

68:                                               ; preds = %66
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %69

69:                                               ; preds = %69, %68
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %69 ], [ 0, %68 ]
  %.idx82 = shl nuw nsw i64 %indvars.iv55, 5
  %70 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx82
  store i32 1, ptr %70, align 4
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 3
  br i1 %exitcond58.not, label %71, label %69, !llvm.loop !32

71:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %72

72:                                               ; preds = %72, %71
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %72 ], [ 0, %71 ]
  %.idx83 = shl nuw nsw i64 %indvars.iv59, 8
  %73 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx83
  store i32 1, ptr %73, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 3
  br i1 %exitcond62.not, label %74, label %72, !llvm.loop !33

74:                                               ; preds = %72
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %75

75:                                               ; preds = %83, %74
  %76 = phi i1 [ true, %74 ], [ false, %83 ]
  %77 = phi i64 [ 0, %74 ], [ 1, %83 ]
  br label %78

78:                                               ; preds = %78, %75
  %79 = phi i1 [ true, %75 ], [ false, %78 ]
  %80 = phi i64 [ 0, %75 ], [ 8, %78 ]
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %77
  %82 = getelementptr inbounds nuw [4 x i8], ptr %81, i64 %80
  store i32 1, ptr %82, align 4
  br i1 %79, label %78, label %83, !llvm.loop !34

83:                                               ; preds = %78
  br i1 %76, label %75, label %84, !llvm.loop !35

84:                                               ; preds = %83
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %85

85:                                               ; preds = %91, %84
  %86 = phi i1 [ true, %84 ], [ false, %91 ]
  %87 = phi i64 [ 0, %84 ], [ 1, %91 ]
  br label %88

88:                                               ; preds = %88, %85
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %88 ], [ 0, %85 ]
  %.idx84 = shl nuw nsw i64 %indvars.iv63, 8
  %89 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %.idx84
  %90 = getelementptr inbounds nuw [4 x i8], ptr %89, i64 %87
  store i32 1, ptr %90, align 4
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 2
  br i1 %exitcond66.not, label %91, label %88, !llvm.loop !36

91:                                               ; preds = %88
  br i1 %86, label %85, label %92, !llvm.loop !37

92:                                               ; preds = %91
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %93

93:                                               ; preds = %99, %92
  %94 = phi i1 [ true, %92 ], [ false, %99 ]
  %95 = phi i64 [ 0, %92 ], [ 8, %99 ]
  br label %96

96:                                               ; preds = %96, %93
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %96 ], [ 0, %93 ]
  %.idx85 = shl nuw nsw i64 %indvars.iv67, 8
  %97 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %.idx85
  %98 = getelementptr inbounds nuw [4 x i8], ptr %97, i64 %95
  store i32 1, ptr %98, align 4
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, 2
  br i1 %exitcond70.not, label %99, label %96, !llvm.loop !38

99:                                               ; preds = %96
  br i1 %94, label %93, label %100, !llvm.loop !39

100:                                              ; preds = %99
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %101

101:                                              ; preds = %112, %100
  %102 = phi i1 [ true, %100 ], [ false, %112 ]
  %103 = phi i64 [ 0, %100 ], [ 1, %112 ]
  br label %104

104:                                              ; preds = %111, %101
  %105 = phi i1 [ true, %101 ], [ false, %111 ]
  %106 = phi i64 [ 0, %101 ], [ 8, %111 ]
  br label %107

107:                                              ; preds = %107, %104
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %107 ], [ 0, %104 ]
  %.idx86 = shl nuw nsw i64 %indvars.iv71, 8
  %108 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.idx86
  %109 = getelementptr inbounds nuw [4 x i8], ptr %108, i64 %106
  %110 = getelementptr inbounds nuw [4 x i8], ptr %109, i64 %103
  store i32 1, ptr %110, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 2
  br i1 %exitcond74.not, label %111, label %107, !llvm.loop !40

111:                                              ; preds = %107
  br i1 %105, label %104, label %112, !llvm.loop !41

112:                                              ; preds = %111
  br i1 %102, label %101, label %113, !llvm.loop !42

113:                                              ; preds = %112
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %114 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %114, 0
  br i1 %.not, label %117, label %115

115:                                              ; preds = %113
  %116 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %116, ptr @n, align 4
  br label %118

117:                                              ; preds = %113
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %.pre, %117 ], [ %116, %115 ]
  %120 = call i32 @Trial(i32 noundef %119)
  %.not1 = icmp eq i32 %120, 0
  br i1 %.not1, label %121, label %122

121:                                              ; preds = %118
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %126

122:                                              ; preds = %118
  %123 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %123, 2005
  br i1 %.not3, label %125, label %124

124:                                              ; preds = %122
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %125

125:                                              ; preds = %124, %122
  br label %126

126:                                              ; preds = %125, %121
  %127 = load i32, ptr @n, align 4
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %127) #3
  %129 = load i32, ptr @kount, align 4
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %129) #3
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
