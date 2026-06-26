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
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %13 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %12, %4
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %12 ], [ 1, %4 ]
  br label %6

6:                                                ; preds = %6, %5
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %6 ], [ 1, %5 ]
  %7 = shl nuw nsw i64 %indvars.iv16, 6
  %8 = shl nuw nsw i64 %indvars.iv20, 3
  %9 = or disjoint i64 %7, %8
  %10 = or disjoint i64 %indvars.iv24, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19 = icmp ne i64 %indvars.iv.next17, 6
  br i1 %exitcond19, label %6, label %12, !llvm.loop !14

12:                                               ; preds = %6
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp ne i64 %indvars.iv.next21, 6
  br i1 %exitcond23, label %5, label %13, !llvm.loop !15

13:                                               ; preds = %12
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond27 = icmp ne i64 %indvars.iv.next25, 6
  br i1 %exitcond27, label %4, label %14, !llvm.loop !16

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %19, %14
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %19 ], [ 0, %14 ]
  br label %16

16:                                               ; preds = %16, %15
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %16 ], [ 0, %15 ]
  %17 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv32
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv28
  store i32 0, ptr %18, align 4
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond31 = icmp ne i64 %indvars.iv.next29, 512
  br i1 %exitcond31, label %16, label %19, !llvm.loop !17

19:                                               ; preds = %16
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond35 = icmp ne i64 %indvars.iv.next33, 13
  br i1 %exitcond35, label %15, label %20, !llvm.loop !18

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %28, %20
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %28 ], [ 0, %20 ]
  br label %22

22:                                               ; preds = %27, %21
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %27 ], [ 0, %21 ]
  br label %23

23:                                               ; preds = %._crit_edge, %22
  %24 = shl nuw nsw i64 %indvars.iv36, 3
  %25 = or disjoint i64 %indvars.iv40, %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %25
  store i32 1, ptr %26, align 4
  br i1 false, label %._crit_edge, label %27, !llvm.loop !19

._crit_edge:                                      ; preds = %23
  br label %23, !llvm.loop !19

27:                                               ; preds = %23
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39 = icmp ne i64 %indvars.iv.next37, 2
  br i1 %exitcond39, label %22, label %28, !llvm.loop !20

28:                                               ; preds = %27
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43 = icmp ne i64 %indvars.iv.next41, 4
  br i1 %exitcond43, label %21, label %29, !llvm.loop !21

29:                                               ; preds = %28
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %30

30:                                               ; preds = %37, %29
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %37 ], [ 0, %29 ]
  br label %31

31:                                               ; preds = %._crit_edge1, %30
  br label %32

32:                                               ; preds = %32, %31
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %32 ], [ 0, %31 ]
  %33 = shl nuw nsw i64 %indvars.iv44, 6
  %34 = or disjoint i64 %indvars.iv48, %33
  %35 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %34
  store i32 1, ptr %35, align 4
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond47 = icmp ne i64 %indvars.iv.next45, 4
  br i1 %exitcond47, label %32, label %36, !llvm.loop !22

36:                                               ; preds = %32
  br i1 false, label %._crit_edge1, label %37, !llvm.loop !23

._crit_edge1:                                     ; preds = %36
  br label %31, !llvm.loop !23

37:                                               ; preds = %36
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond51 = icmp ne i64 %indvars.iv.next49, 2
  br i1 %exitcond51, label %30, label %38, !llvm.loop !24

38:                                               ; preds = %37
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %39

39:                                               ; preds = %._crit_edge2, %38
  br label %40

40:                                               ; preds = %46, %39
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %46 ], [ 0, %39 ]
  br label %41

41:                                               ; preds = %41, %40
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %41 ], [ 0, %40 ]
  %42 = shl nuw nsw i64 %indvars.iv52, 6
  %43 = shl nuw nsw i64 %indvars.iv56, 3
  %44 = or disjoint i64 %42, %43
  %45 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %44
  store i32 1, ptr %45, align 4
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond55 = icmp ne i64 %indvars.iv.next53, 2
  br i1 %exitcond55, label %41, label %46, !llvm.loop !25

46:                                               ; preds = %41
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond59 = icmp ne i64 %indvars.iv.next57, 4
  br i1 %exitcond59, label %40, label %47, !llvm.loop !26

47:                                               ; preds = %46
  br i1 false, label %._crit_edge2, label %48, !llvm.loop !27

._crit_edge2:                                     ; preds = %47
  br label %39, !llvm.loop !27

48:                                               ; preds = %47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %49

49:                                               ; preds = %56, %48
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %56 ], [ 0, %48 ]
  br label %50

50:                                               ; preds = %55, %49
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %55 ], [ 0, %49 ]
  br label %51

51:                                               ; preds = %._crit_edge3, %50
  %52 = shl nuw nsw i64 %indvars.iv60, 3
  %53 = or disjoint i64 %indvars.iv64, %52
  %54 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %53
  store i32 1, ptr %54, align 4
  br i1 false, label %._crit_edge3, label %55, !llvm.loop !28

._crit_edge3:                                     ; preds = %51
  br label %51, !llvm.loop !28

55:                                               ; preds = %51
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond63 = icmp ne i64 %indvars.iv.next61, 4
  br i1 %exitcond63, label %50, label %56, !llvm.loop !29

56:                                               ; preds = %55
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond67 = icmp ne i64 %indvars.iv.next65, 2
  br i1 %exitcond67, label %49, label %57, !llvm.loop !30

57:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %58

58:                                               ; preds = %65, %57
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %65 ], [ 0, %57 ]
  br label %59

59:                                               ; preds = %._crit_edge4, %58
  br label %60

60:                                               ; preds = %60, %59
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %60 ], [ 0, %59 ]
  %61 = shl nuw nsw i64 %indvars.iv68, 6
  %62 = or disjoint i64 %indvars.iv72, %61
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %62
  store i32 1, ptr %63, align 4
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %exitcond71 = icmp ne i64 %indvars.iv.next69, 2
  br i1 %exitcond71, label %60, label %64, !llvm.loop !31

64:                                               ; preds = %60
  br i1 false, label %._crit_edge4, label %65, !llvm.loop !32

._crit_edge4:                                     ; preds = %64
  br label %59, !llvm.loop !32

65:                                               ; preds = %64
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond75 = icmp ne i64 %indvars.iv.next73, 4
  br i1 %exitcond75, label %58, label %66, !llvm.loop !33

66:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %67

67:                                               ; preds = %._crit_edge5, %66
  br label %68

68:                                               ; preds = %74, %67
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %74 ], [ 0, %67 ]
  br label %69

69:                                               ; preds = %69, %68
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %69 ], [ 0, %68 ]
  %70 = shl nuw nsw i64 %indvars.iv76, 6
  %71 = shl nuw nsw i64 %indvars.iv80, 3
  %72 = or disjoint i64 %70, %71
  %73 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %72
  store i32 1, ptr %73, align 4
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond79 = icmp ne i64 %indvars.iv.next77, 4
  br i1 %exitcond79, label %69, label %74, !llvm.loop !34

74:                                               ; preds = %69
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond83 = icmp ne i64 %indvars.iv.next81, 2
  br i1 %exitcond83, label %68, label %75, !llvm.loop !35

75:                                               ; preds = %74
  br i1 false, label %._crit_edge5, label %76, !llvm.loop !36

._crit_edge5:                                     ; preds = %75
  br label %67, !llvm.loop !36

76:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %77

77:                                               ; preds = %82, %76
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %82 ], [ 0, %76 ]
  br label %78

78:                                               ; preds = %._crit_edge7, %77
  br label %79

79:                                               ; preds = %._crit_edge6, %78
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv84
  store i32 1, ptr %80, align 4
  br i1 false, label %._crit_edge6, label %81, !llvm.loop !37

._crit_edge6:                                     ; preds = %79
  br label %79, !llvm.loop !37

81:                                               ; preds = %79
  br i1 false, label %._crit_edge7, label %82, !llvm.loop !38

._crit_edge7:                                     ; preds = %81
  br label %78, !llvm.loop !38

82:                                               ; preds = %81
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond87 = icmp ne i64 %indvars.iv.next85, 3
  br i1 %exitcond87, label %77, label %83, !llvm.loop !39

83:                                               ; preds = %82
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %84

84:                                               ; preds = %._crit_edge9, %83
  br label %85

85:                                               ; preds = %89, %84
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %89 ], [ 0, %84 ]
  br label %86

86:                                               ; preds = %._crit_edge8, %85
  %87 = shl nuw nsw i64 %indvars.iv88, 3
  %88 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %87
  store i32 1, ptr %88, align 4
  br i1 false, label %._crit_edge8, label %89, !llvm.loop !40

._crit_edge8:                                     ; preds = %86
  br label %86, !llvm.loop !40

89:                                               ; preds = %86
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond91 = icmp ne i64 %indvars.iv.next89, 3
  br i1 %exitcond91, label %85, label %90, !llvm.loop !41

90:                                               ; preds = %89
  br i1 false, label %._crit_edge9, label %91, !llvm.loop !42

._crit_edge9:                                     ; preds = %90
  br label %84, !llvm.loop !42

91:                                               ; preds = %90
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %92

92:                                               ; preds = %._crit_edge11, %91
  br label %93

93:                                               ; preds = %._crit_edge10, %92
  br label %94

94:                                               ; preds = %94, %93
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %94 ], [ 0, %93 ]
  %95 = shl nuw nsw i64 %indvars.iv92, 6
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %95
  store i32 1, ptr %96, align 4
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond95 = icmp ne i64 %indvars.iv.next93, 3
  br i1 %exitcond95, label %94, label %97, !llvm.loop !43

97:                                               ; preds = %94
  br i1 false, label %._crit_edge10, label %98, !llvm.loop !44

._crit_edge10:                                    ; preds = %97
  br label %93, !llvm.loop !44

98:                                               ; preds = %97
  br i1 false, label %._crit_edge11, label %99, !llvm.loop !45

._crit_edge11:                                    ; preds = %98
  br label %92, !llvm.loop !45

99:                                               ; preds = %98
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %100

100:                                              ; preds = %107, %99
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %107 ], [ 0, %99 ]
  br label %101

101:                                              ; preds = %106, %100
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %106 ], [ 0, %100 ]
  br label %102

102:                                              ; preds = %._crit_edge12, %101
  %103 = shl nuw nsw i64 %indvars.iv96, 3
  %104 = or disjoint i64 %indvars.iv100, %103
  %105 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %104
  store i32 1, ptr %105, align 4
  br i1 false, label %._crit_edge12, label %106, !llvm.loop !46

._crit_edge12:                                    ; preds = %102
  br label %102, !llvm.loop !46

106:                                              ; preds = %102
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond99 = icmp ne i64 %indvars.iv.next97, 2
  br i1 %exitcond99, label %101, label %107, !llvm.loop !47

107:                                              ; preds = %106
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond103 = icmp ne i64 %indvars.iv.next101, 2
  br i1 %exitcond103, label %100, label %108, !llvm.loop !48

108:                                              ; preds = %107
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %109

109:                                              ; preds = %116, %108
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %116 ], [ 0, %108 ]
  br label %110

110:                                              ; preds = %._crit_edge13, %109
  br label %111

111:                                              ; preds = %111, %110
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %111 ], [ 0, %110 ]
  %112 = shl nuw nsw i64 %indvars.iv104, 6
  %113 = or disjoint i64 %indvars.iv108, %112
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %113
  store i32 1, ptr %114, align 4
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond107 = icmp ne i64 %indvars.iv.next105, 2
  br i1 %exitcond107, label %111, label %115, !llvm.loop !49

115:                                              ; preds = %111
  br i1 false, label %._crit_edge13, label %116, !llvm.loop !50

._crit_edge13:                                    ; preds = %115
  br label %110, !llvm.loop !50

116:                                              ; preds = %115
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond111 = icmp ne i64 %indvars.iv.next109, 2
  br i1 %exitcond111, label %109, label %117, !llvm.loop !51

117:                                              ; preds = %116
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %118

118:                                              ; preds = %._crit_edge14, %117
  br label %119

119:                                              ; preds = %125, %118
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %125 ], [ 0, %118 ]
  br label %120

120:                                              ; preds = %120, %119
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %120 ], [ 0, %119 ]
  %121 = shl nuw nsw i64 %indvars.iv112, 6
  %122 = shl nuw nsw i64 %indvars.iv116, 3
  %123 = or disjoint i64 %121, %122
  %124 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %123
  store i32 1, ptr %124, align 4
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond115 = icmp ne i64 %indvars.iv.next113, 2
  br i1 %exitcond115, label %120, label %125, !llvm.loop !52

125:                                              ; preds = %120
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond119 = icmp ne i64 %indvars.iv.next117, 2
  br i1 %exitcond119, label %119, label %126, !llvm.loop !53

126:                                              ; preds = %125
  br i1 false, label %._crit_edge14, label %127, !llvm.loop !54

._crit_edge14:                                    ; preds = %126
  br label %118, !llvm.loop !54

127:                                              ; preds = %126
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %128

128:                                              ; preds = %137, %127
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %137 ], [ 0, %127 ]
  br label %129

129:                                              ; preds = %136, %128
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %136 ], [ 0, %128 ]
  br label %130

130:                                              ; preds = %130, %129
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %130 ], [ 0, %129 ]
  %131 = shl nuw nsw i64 %indvars.iv120, 6
  %132 = shl nuw nsw i64 %indvars.iv124, 3
  %133 = or disjoint i64 %131, %132
  %134 = or disjoint i64 %indvars.iv128, %133
  %135 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %134
  store i32 1, ptr %135, align 4
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond123 = icmp ne i64 %indvars.iv.next121, 2
  br i1 %exitcond123, label %130, label %136, !llvm.loop !55

136:                                              ; preds = %130
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond127 = icmp ne i64 %indvars.iv.next125, 2
  br i1 %exitcond127, label %129, label %137, !llvm.loop !56

137:                                              ; preds = %136
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %exitcond131 = icmp ne i64 %indvars.iv.next129, 2
  br i1 %exitcond131, label %128, label %138, !llvm.loop !57

138:                                              ; preds = %137
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %139 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %139, 0
  br i1 %.not, label %142, label %140

140:                                              ; preds = %138
  %141 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %141, ptr @n, align 4
  br label %143

142:                                              ; preds = %138
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %.pre, %142 ], [ %141, %140 ]
  %145 = call i32 @Trial(i32 noundef %144)
  %.not1 = icmp eq i32 %145, 0
  br i1 %.not1, label %146, label %147

146:                                              ; preds = %143
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %151

147:                                              ; preds = %143
  %148 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %148, 2005
  br i1 %.not3, label %150, label %149

149:                                              ; preds = %147
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %150

150:                                              ; preds = %149, %147
  br label %151

151:                                              ; preds = %150, %146
  %152 = load i32, ptr @n, align 4
  %153 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %152) #3
  %154 = load i32, ptr @kount, align 4
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %154) #3
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
  br i1 %exitcond, label %1, label %4, !llvm.loop !58

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
