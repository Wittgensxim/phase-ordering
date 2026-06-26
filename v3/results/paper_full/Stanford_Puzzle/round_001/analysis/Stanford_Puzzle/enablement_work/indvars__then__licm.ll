; ModuleID = 'results\paper_full\Stanford_Puzzle\round_000\output.ll'
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
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %16, label %10

10:                                               ; preds = %7
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !7

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ 1, %17 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %7
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !9

14:                                               ; preds = %6
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %smax6 = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count7 = sext i32 %smax6 to i64
  br label %21

21:                                               ; preds = %27, %14
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %27 ], [ %3, %14 ]
  %exitcond8 = icmp ne i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8, label %22, label %28

22:                                               ; preds = %21
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %27

25:                                               ; preds = %22
  %.lcssa1.wide = phi i64 [ %indvars.iv3, %22 ]
  %26 = trunc nsw i64 %.lcssa1.wide to i32
  br label %29

27:                                               ; preds = %22
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21
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
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %6

6:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %7
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !11

14:                                               ; preds = %6
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %24, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %25

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %24, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %23, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %18, label %20

18:                                               ; preds = %14
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %14
  br label %26

21:                                               ; preds = %18
  %22 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %22, i32 noundef %0)
  br label %23

23:                                               ; preds = %21, %11
  br label %24

24:                                               ; preds = %23, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ 0, %25 ], [ 1, %20 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %2, label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %15 ], [ 1, %4 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %6, label %16

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %14, %6
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %14 ], [ 1, %6 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %8, label %15

8:                                                ; preds = %7
  %9 = shl nuw nsw i64 %indvars.iv6, 3
  %invariant.op = or disjoint i64 %9, %indvars.iv10
  br label %10

10:                                               ; preds = %11, %8
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %11 ], [ 1, %8 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 6
  br i1 %exitcond5, label %11, label %14

11:                                               ; preds = %10
  %12 = shl nuw nsw i64 %indvars.iv2, 6
  %.reass = or disjoint i64 %12, %invariant.op
  %13 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %.reass
  store i32 0, ptr %13, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %10, !llvm.loop !14

14:                                               ; preds = %10
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %7, !llvm.loop !15

15:                                               ; preds = %7
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %5, !llvm.loop !16

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %23, %16
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %23 ], [ 0, %16 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %18, label %24

18:                                               ; preds = %17
  %19 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %20

20:                                               ; preds = %21, %18
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %21 ], [ 0, %18 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 512
  br i1 %exitcond17, label %21, label %23

21:                                               ; preds = %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv14
  store i32 0, ptr %22, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %20, !llvm.loop !17

23:                                               ; preds = %20
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %17, !llvm.loop !18

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %36, %24
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %36 ], [ 0, %24 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 4
  br i1 %exitcond29, label %26, label %37

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %35, %26
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %35 ], [ 0, %26 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 2
  br i1 %exitcond25, label %28, label %36

28:                                               ; preds = %27
  %29 = shl nuw nsw i64 %indvars.iv22, 3
  %30 = or disjoint i64 %indvars.iv26, %29
  %31 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %30
  br label %32

32:                                               ; preds = %34, %28
  %33 = phi i1 [ false, %34 ], [ true, %28 ]
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  store i32 1, ptr %31, align 4
  br label %32, !llvm.loop !19

35:                                               ; preds = %32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %27, !llvm.loop !20

36:                                               ; preds = %27
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %25, !llvm.loop !21

37:                                               ; preds = %25
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %38

38:                                               ; preds = %49, %37
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %49 ], [ 0, %37 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 2
  br i1 %exitcond37, label %39, label %50

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %48, %39
  %41 = phi i1 [ false, %48 ], [ true, %39 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %44, %42
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %44 ], [ 0, %42 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %44, label %48

44:                                               ; preds = %43
  %45 = shl nuw nsw i64 %indvars.iv30, 6
  %46 = or disjoint i64 %indvars.iv34, %45
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %43, !llvm.loop !22

48:                                               ; preds = %43
  br label %40, !llvm.loop !23

49:                                               ; preds = %40
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %38, !llvm.loop !24

50:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %51

51:                                               ; preds = %63, %50
  %52 = phi i1 [ false, %63 ], [ true, %50 ]
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %62, %53
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %62 ], [ 0, %53 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 4
  br i1 %exitcond45, label %55, label %63

55:                                               ; preds = %54
  %56 = shl nuw nsw i64 %indvars.iv42, 3
  br label %57

57:                                               ; preds = %58, %55
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %58 ], [ 0, %55 ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 2
  br i1 %exitcond41, label %58, label %62

58:                                               ; preds = %57
  %59 = shl nuw nsw i64 %indvars.iv38, 6
  %60 = or disjoint i64 %59, %56
  %61 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %60
  store i32 1, ptr %61, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %57, !llvm.loop !25

62:                                               ; preds = %57
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %54, !llvm.loop !26

63:                                               ; preds = %54
  br label %51, !llvm.loop !27

64:                                               ; preds = %51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %65

65:                                               ; preds = %76, %64
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %76 ], [ 0, %64 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 2
  br i1 %exitcond53, label %66, label %77

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %75, %66
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %75 ], [ 0, %66 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %68, label %76

68:                                               ; preds = %67
  %69 = shl nuw nsw i64 %indvars.iv46, 3
  %70 = or disjoint i64 %indvars.iv50, %69
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %70
  br label %72

72:                                               ; preds = %74, %68
  %73 = phi i1 [ false, %74 ], [ true, %68 ]
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store i32 1, ptr %71, align 4
  br label %72, !llvm.loop !28

75:                                               ; preds = %72
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %67, !llvm.loop !29

76:                                               ; preds = %67
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %65, !llvm.loop !30

77:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %78

78:                                               ; preds = %89, %77
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %89 ], [ 0, %77 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 4
  br i1 %exitcond61, label %79, label %90

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %88, %79
  %81 = phi i1 [ false, %88 ], [ true, %79 ]
  br i1 %81, label %82, label %89

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %84, %82
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %84 ], [ 0, %82 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %84, label %88

84:                                               ; preds = %83
  %85 = shl nuw nsw i64 %indvars.iv54, 6
  %86 = or disjoint i64 %indvars.iv58, %85
  %87 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %86
  store i32 1, ptr %87, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %83, !llvm.loop !31

88:                                               ; preds = %83
  br label %80, !llvm.loop !32

89:                                               ; preds = %80
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %78, !llvm.loop !33

90:                                               ; preds = %78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %91

91:                                               ; preds = %103, %90
  %92 = phi i1 [ false, %103 ], [ true, %90 ]
  br i1 %92, label %93, label %104

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %102, %93
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %102 ], [ 0, %93 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 2
  br i1 %exitcond69, label %95, label %103

95:                                               ; preds = %94
  %96 = shl nuw nsw i64 %indvars.iv66, 3
  br label %97

97:                                               ; preds = %98, %95
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %98 ], [ 0, %95 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %98, label %102

98:                                               ; preds = %97
  %99 = shl nuw nsw i64 %indvars.iv62, 6
  %100 = or disjoint i64 %99, %96
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %100
  store i32 1, ptr %101, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %97, !llvm.loop !34

102:                                              ; preds = %97
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %94, !llvm.loop !35

103:                                              ; preds = %94
  br label %91, !llvm.loop !36

104:                                              ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %105

105:                                              ; preds = %115, %104
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %115 ], [ 0, %104 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 3
  br i1 %exitcond73, label %106, label %116

106:                                              ; preds = %105
  %107 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  br label %108

108:                                              ; preds = %114, %106
  %109 = phi i1 [ false, %114 ], [ true, %106 ]
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %113, %110
  %112 = phi i1 [ false, %113 ], [ true, %110 ]
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  store i32 1, ptr %107, align 4
  br label %111, !llvm.loop !37

114:                                              ; preds = %111
  br label %108, !llvm.loop !38

115:                                              ; preds = %108
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %105, !llvm.loop !39

116:                                              ; preds = %105
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %117

117:                                              ; preds = %128, %116
  %118 = phi i1 [ false, %128 ], [ true, %116 ]
  br i1 %118, label %119, label %129

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %127, %119
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %127 ], [ 0, %119 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %121, label %128

121:                                              ; preds = %120
  %122 = shl nuw nsw i64 %indvars.iv74, 3
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %122
  br label %124

124:                                              ; preds = %126, %121
  %125 = phi i1 [ false, %126 ], [ true, %121 ]
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  store i32 1, ptr %123, align 4
  br label %124, !llvm.loop !40

127:                                              ; preds = %124
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %120, !llvm.loop !41

128:                                              ; preds = %120
  br label %117, !llvm.loop !42

129:                                              ; preds = %117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %130

130:                                              ; preds = %141, %129
  %131 = phi i1 [ false, %141 ], [ true, %129 ]
  br i1 %131, label %132, label %142

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %140, %132
  %134 = phi i1 [ false, %140 ], [ true, %132 ]
  br i1 %134, label %135, label %141

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %137, %135
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %137 ], [ 0, %135 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %137, label %140

137:                                              ; preds = %136
  %138 = shl nuw nsw i64 %indvars.iv78, 6
  %139 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %138
  store i32 1, ptr %139, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %136, !llvm.loop !43

140:                                              ; preds = %136
  br label %133, !llvm.loop !44

141:                                              ; preds = %133
  br label %130, !llvm.loop !45

142:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %143

143:                                              ; preds = %154, %142
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %154 ], [ 0, %142 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %144, label %155

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %153, %144
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %153 ], [ 0, %144 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 2
  br i1 %exitcond85, label %146, label %154

146:                                              ; preds = %145
  %147 = shl nuw nsw i64 %indvars.iv82, 3
  %148 = or disjoint i64 %indvars.iv86, %147
  %149 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %148
  br label %150

150:                                              ; preds = %152, %146
  %151 = phi i1 [ false, %152 ], [ true, %146 ]
  br i1 %151, label %152, label %153

152:                                              ; preds = %150
  store i32 1, ptr %149, align 4
  br label %150, !llvm.loop !46

153:                                              ; preds = %150
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %145, !llvm.loop !47

154:                                              ; preds = %145
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %143, !llvm.loop !48

155:                                              ; preds = %143
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %156

156:                                              ; preds = %167, %155
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %167 ], [ 0, %155 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %157, label %168

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %166, %157
  %159 = phi i1 [ false, %166 ], [ true, %157 ]
  br i1 %159, label %160, label %167

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %162, %160
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %162 ], [ 0, %160 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %162, label %166

162:                                              ; preds = %161
  %163 = shl nuw nsw i64 %indvars.iv90, 6
  %164 = or disjoint i64 %indvars.iv94, %163
  %165 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %164
  store i32 1, ptr %165, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %161, !llvm.loop !49

166:                                              ; preds = %161
  br label %158, !llvm.loop !50

167:                                              ; preds = %158
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %156, !llvm.loop !51

168:                                              ; preds = %156
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %169

169:                                              ; preds = %181, %168
  %170 = phi i1 [ false, %181 ], [ true, %168 ]
  br i1 %170, label %171, label %182

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %180, %171
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %180 ], [ 0, %171 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %173, label %181

173:                                              ; preds = %172
  %174 = shl nuw nsw i64 %indvars.iv102, 3
  br label %175

175:                                              ; preds = %176, %173
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %176 ], [ 0, %173 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %176, label %180

176:                                              ; preds = %175
  %177 = shl nuw nsw i64 %indvars.iv98, 6
  %178 = or disjoint i64 %177, %174
  %179 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %178
  store i32 1, ptr %179, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %175, !llvm.loop !52

180:                                              ; preds = %175
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %172, !llvm.loop !53

181:                                              ; preds = %172
  br label %169, !llvm.loop !54

182:                                              ; preds = %169
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %183

183:                                              ; preds = %193, %182
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %193 ], [ 0, %182 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %184, label %194

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %192, %184
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %192 ], [ 0, %184 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %186, label %193

186:                                              ; preds = %185
  %187 = shl nuw nsw i64 %indvars.iv110, 3
  %invariant.op118 = or disjoint i64 %187, %indvars.iv114
  br label %188

188:                                              ; preds = %189, %186
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %189 ], [ 0, %186 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %189, label %192

189:                                              ; preds = %188
  %190 = shl nuw nsw i64 %indvars.iv106, 6
  %.reass119 = or disjoint i64 %190, %invariant.op118
  %191 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.reass119
  store i32 1, ptr %191, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %188, !llvm.loop !55

192:                                              ; preds = %188
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %185, !llvm.loop !56

193:                                              ; preds = %185
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %183, !llvm.loop !57

194:                                              ; preds = %183
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %195 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %195, 0
  br i1 %.not, label %198, label %196

196:                                              ; preds = %194
  %197 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %197, ptr @n, align 4
  br label %199

198:                                              ; preds = %194
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i32 [ %.pre, %198 ], [ %197, %196 ]
  %201 = call i32 @Trial(i32 noundef %200)
  %.not1 = icmp eq i32 %201, 0
  br i1 %.not1, label %202, label %203

202:                                              ; preds = %199
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %207

203:                                              ; preds = %199
  %204 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %204, 2005
  br i1 %.not3, label %206, label %205

205:                                              ; preds = %203
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %206

206:                                              ; preds = %205, %203
  br label %207

207:                                              ; preds = %206, %202
  %208 = load i32, ptr @n, align 4
  %209 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %208) #4
  %210 = load i32, ptr @kount, align 4
  %211 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %210) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %2, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
