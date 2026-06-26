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
  br label %5

5:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %6

6:                                                ; preds = %5
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
  br label %5, !llvm.loop !7

17:                                               ; preds = %5
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
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %12 = getelementptr [4 x i8], ptr %11, i64 %3
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !9

14:                                               ; preds = %5
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %smax6 = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count7 = zext nneg i32 %smax6 to i64
  br label %21

21:                                               ; preds = %27, %14
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %27 ], [ %3, %14 ]
  %exitcond8.not = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8.not, label %28, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %27

25:                                               ; preds = %22
  %26 = trunc nsw i64 %indvars.iv3 to i32
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
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr [4 x i8], ptr @puzzl, i64 %indvars.iv
  %12 = getelementptr [4 x i8], ptr %11, i64 %3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

14:                                               ; preds = %5
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
  %exitcond.not = icmp eq i64 %indvars.iv, 13
  br i1 %exitcond.not, label %25, label %5

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
  %exitcond.not = icmp eq i64 %indvars.iv, 512
  br i1 %exitcond.not, label %4, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %15 ], [ 1, %4 ]
  %exitcond13.not = icmp eq i64 %indvars.iv10, 6
  br i1 %exitcond13.not, label %16, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %14, %6
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %14 ], [ 1, %6 ]
  %exitcond9.not = icmp eq i64 %indvars.iv6, 6
  br i1 %exitcond9.not, label %15, label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %10, %8
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %10 ], [ 1, %8 ]
  %exitcond5.not = icmp eq i64 %indvars.iv2, 6
  br i1 %exitcond5.not, label %14, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv10
  %.idx133 = shl nuw nsw i64 %indvars.iv2, 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 %.idx133
  %.idx134 = shl nuw nsw i64 %indvars.iv6, 5
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 %.idx134
  store i32 0, ptr %13, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %9, !llvm.loop !14

14:                                               ; preds = %9
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %7, !llvm.loop !15

15:                                               ; preds = %7
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %5, !llvm.loop !16

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %23, %16
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %23 ], [ 0, %16 ]
  %exitcond21.not = icmp eq i64 %indvars.iv18, 13
  br i1 %exitcond21.not, label %24, label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %20, %18
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %20 ], [ 0, %18 ]
  %exitcond17.not = icmp eq i64 %indvars.iv14, 512
  br i1 %exitcond17.not, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %22 = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv14
  store i32 0, ptr %22, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %19, !llvm.loop !17

23:                                               ; preds = %19
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %17, !llvm.loop !18

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %35, %24
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %35 ], [ 0, %24 ]
  %exitcond29.not = icmp eq i64 %indvars.iv26, 4
  br i1 %exitcond29.not, label %36, label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %34, %26
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %34 ], [ 0, %26 ]
  %exitcond25.not = icmp eq i64 %indvars.iv22, 2
  br i1 %exitcond25.not, label %35, label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %31, %28
  %30 = phi i1 [ false, %31 ], [ true, %28 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %indvars.iv26
  %.idx132 = shl nuw nsw i64 %indvars.iv22, 5
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %.idx132
  store i32 1, ptr %33, align 4
  br label %29, !llvm.loop !19

34:                                               ; preds = %29
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %27, !llvm.loop !20

35:                                               ; preds = %27
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %25, !llvm.loop !21

36:                                               ; preds = %25
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %37

37:                                               ; preds = %47, %36
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %47 ], [ 0, %36 ]
  %exitcond37.not = icmp eq i64 %indvars.iv34, 2
  br i1 %exitcond37.not, label %48, label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %46, %38
  %40 = phi i1 [ false, %46 ], [ true, %38 ]
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %43, %41
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %43 ], [ 0, %41 ]
  %exitcond33.not = icmp eq i64 %indvars.iv30, 4
  br i1 %exitcond33.not, label %46, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %indvars.iv34
  %.idx131 = shl nuw nsw i64 %indvars.iv30, 8
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 %.idx131
  store i32 1, ptr %45, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %42, !llvm.loop !22

46:                                               ; preds = %42
  br label %39, !llvm.loop !23

47:                                               ; preds = %39
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %37, !llvm.loop !24

48:                                               ; preds = %37
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = phi i1 [ false, %59 ], [ true, %48 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %58, %51
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %58 ], [ 0, %51 ]
  %exitcond45.not = icmp eq i64 %indvars.iv42, 4
  br i1 %exitcond45.not, label %59, label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %55, %53
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %55 ], [ 0, %53 ]
  %exitcond41.not = icmp eq i64 %indvars.iv38, 2
  br i1 %exitcond41.not, label %58, label %55

55:                                               ; preds = %54
  %.idx129 = shl nuw nsw i64 %indvars.iv38, 8
  %56 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.idx129
  %.idx130 = shl nuw nsw i64 %indvars.iv42, 5
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %.idx130
  store i32 1, ptr %57, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %54, !llvm.loop !25

58:                                               ; preds = %54
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %52, !llvm.loop !26

59:                                               ; preds = %52
  br label %49, !llvm.loop !27

60:                                               ; preds = %49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %61

61:                                               ; preds = %71, %60
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %71 ], [ 0, %60 ]
  %exitcond53.not = icmp eq i64 %indvars.iv50, 2
  br i1 %exitcond53.not, label %72, label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %70, %62
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %70 ], [ 0, %62 ]
  %exitcond49.not = icmp eq i64 %indvars.iv46, 4
  br i1 %exitcond49.not, label %71, label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %67, %64
  %66 = phi i1 [ false, %67 ], [ true, %64 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %indvars.iv50
  %.idx128 = shl nuw nsw i64 %indvars.iv46, 5
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 %.idx128
  store i32 1, ptr %69, align 4
  br label %65, !llvm.loop !28

70:                                               ; preds = %65
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %63, !llvm.loop !29

71:                                               ; preds = %63
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %61, !llvm.loop !30

72:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %73

73:                                               ; preds = %83, %72
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %83 ], [ 0, %72 ]
  %exitcond61.not = icmp eq i64 %indvars.iv58, 4
  br i1 %exitcond61.not, label %84, label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %82, %74
  %76 = phi i1 [ false, %82 ], [ true, %74 ]
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %79, %77
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %79 ], [ 0, %77 ]
  %exitcond57.not = icmp eq i64 %indvars.iv54, 2
  br i1 %exitcond57.not, label %82, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv58
  %.idx127 = shl nuw nsw i64 %indvars.iv54, 8
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 %.idx127
  store i32 1, ptr %81, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %78, !llvm.loop !31

82:                                               ; preds = %78
  br label %75, !llvm.loop !32

83:                                               ; preds = %75
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %73, !llvm.loop !33

84:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %85

85:                                               ; preds = %95, %84
  %86 = phi i1 [ false, %95 ], [ true, %84 ]
  br i1 %86, label %87, label %96

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %94, %87
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %94 ], [ 0, %87 ]
  %exitcond69.not = icmp eq i64 %indvars.iv66, 2
  br i1 %exitcond69.not, label %95, label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %91, %89
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %91 ], [ 0, %89 ]
  %exitcond65.not = icmp eq i64 %indvars.iv62, 4
  br i1 %exitcond65.not, label %94, label %91

91:                                               ; preds = %90
  %.idx125 = shl nuw nsw i64 %indvars.iv62, 8
  %92 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %.idx125
  %.idx126 = shl nuw nsw i64 %indvars.iv66, 5
  %93 = getelementptr inbounds nuw i8, ptr %92, i64 %.idx126
  store i32 1, ptr %93, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %90, !llvm.loop !34

94:                                               ; preds = %90
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %88, !llvm.loop !35

95:                                               ; preds = %88
  br label %85, !llvm.loop !36

96:                                               ; preds = %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %97

97:                                               ; preds = %107, %96
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %107 ], [ 0, %96 ]
  %exitcond73.not = icmp eq i64 %indvars.iv70, 3
  br i1 %exitcond73.not, label %108, label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %106, %98
  %100 = phi i1 [ false, %106 ], [ true, %98 ]
  br i1 %100, label %101, label %107

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %104, %101
  %103 = phi i1 [ false, %104 ], [ true, %101 ]
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  store i32 1, ptr %105, align 4
  br label %102, !llvm.loop !37

106:                                              ; preds = %102
  br label %99, !llvm.loop !38

107:                                              ; preds = %99
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %97, !llvm.loop !39

108:                                              ; preds = %97
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %109

109:                                              ; preds = %119, %108
  %110 = phi i1 [ false, %119 ], [ true, %108 ]
  br i1 %110, label %111, label %120

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %118, %111
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %118 ], [ 0, %111 ]
  %exitcond77.not = icmp eq i64 %indvars.iv74, 3
  br i1 %exitcond77.not, label %119, label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %116, %113
  %115 = phi i1 [ false, %116 ], [ true, %113 ]
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %.idx124 = shl nuw nsw i64 %indvars.iv74, 5
  %117 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.idx124
  store i32 1, ptr %117, align 4
  br label %114, !llvm.loop !40

118:                                              ; preds = %114
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %112, !llvm.loop !41

119:                                              ; preds = %112
  br label %109, !llvm.loop !42

120:                                              ; preds = %109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %121

121:                                              ; preds = %131, %120
  %122 = phi i1 [ false, %131 ], [ true, %120 ]
  br i1 %122, label %123, label %132

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %130, %123
  %125 = phi i1 [ false, %130 ], [ true, %123 ]
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %128, %126
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %128 ], [ 0, %126 ]
  %exitcond81.not = icmp eq i64 %indvars.iv78, 3
  br i1 %exitcond81.not, label %130, label %128

128:                                              ; preds = %127
  %.idx123 = shl nuw nsw i64 %indvars.iv78, 8
  %129 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.idx123
  store i32 1, ptr %129, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %127, !llvm.loop !43

130:                                              ; preds = %127
  br label %124, !llvm.loop !44

131:                                              ; preds = %124
  br label %121, !llvm.loop !45

132:                                              ; preds = %121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %133

133:                                              ; preds = %143, %132
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %143 ], [ 0, %132 ]
  %exitcond89.not = icmp eq i64 %indvars.iv86, 2
  br i1 %exitcond89.not, label %144, label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %142, %134
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %142 ], [ 0, %134 ]
  %exitcond85.not = icmp eq i64 %indvars.iv82, 2
  br i1 %exitcond85.not, label %143, label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %139, %136
  %138 = phi i1 [ false, %139 ], [ true, %136 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %indvars.iv86
  %.idx122 = shl nuw nsw i64 %indvars.iv82, 5
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %.idx122
  store i32 1, ptr %141, align 4
  br label %137, !llvm.loop !46

142:                                              ; preds = %137
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %135, !llvm.loop !47

143:                                              ; preds = %135
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %133, !llvm.loop !48

144:                                              ; preds = %133
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %145

145:                                              ; preds = %155, %144
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %155 ], [ 0, %144 ]
  %exitcond97.not = icmp eq i64 %indvars.iv94, 2
  br i1 %exitcond97.not, label %156, label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %154, %146
  %148 = phi i1 [ false, %154 ], [ true, %146 ]
  br i1 %148, label %149, label %155

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %151, %149
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %151 ], [ 0, %149 ]
  %exitcond93.not = icmp eq i64 %indvars.iv90, 2
  br i1 %exitcond93.not, label %154, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %indvars.iv94
  %.idx121 = shl nuw nsw i64 %indvars.iv90, 8
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 %.idx121
  store i32 1, ptr %153, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %150, !llvm.loop !49

154:                                              ; preds = %150
  br label %147, !llvm.loop !50

155:                                              ; preds = %147
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %145, !llvm.loop !51

156:                                              ; preds = %145
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %157

157:                                              ; preds = %167, %156
  %158 = phi i1 [ false, %167 ], [ true, %156 ]
  br i1 %158, label %159, label %168

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %166, %159
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %166 ], [ 0, %159 ]
  %exitcond105.not = icmp eq i64 %indvars.iv102, 2
  br i1 %exitcond105.not, label %167, label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %163, %161
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %163 ], [ 0, %161 ]
  %exitcond101.not = icmp eq i64 %indvars.iv98, 2
  br i1 %exitcond101.not, label %166, label %163

163:                                              ; preds = %162
  %.idx119 = shl nuw nsw i64 %indvars.iv98, 8
  %164 = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %.idx119
  %.idx120 = shl nuw nsw i64 %indvars.iv102, 5
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 %.idx120
  store i32 1, ptr %165, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %162, !llvm.loop !52

166:                                              ; preds = %162
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %160, !llvm.loop !53

167:                                              ; preds = %160
  br label %157, !llvm.loop !54

168:                                              ; preds = %157
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %169

169:                                              ; preds = %179, %168
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %179 ], [ 0, %168 ]
  %exitcond117.not = icmp eq i64 %indvars.iv114, 2
  br i1 %exitcond117.not, label %180, label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %178, %170
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %178 ], [ 0, %170 ]
  %exitcond113.not = icmp eq i64 %indvars.iv110, 2
  br i1 %exitcond113.not, label %179, label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %174, %172
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %174 ], [ 0, %172 ]
  %exitcond109.not = icmp eq i64 %indvars.iv106, 2
  br i1 %exitcond109.not, label %178, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %indvars.iv114
  %.idx = shl nuw nsw i64 %indvars.iv106, 8
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %.idx
  %.idx118 = shl nuw nsw i64 %indvars.iv110, 5
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 %.idx118
  store i32 1, ptr %177, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %173, !llvm.loop !55

178:                                              ; preds = %173
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %171, !llvm.loop !56

179:                                              ; preds = %171
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %169, !llvm.loop !57

180:                                              ; preds = %169
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %181 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %181, 0
  br i1 %.not, label %184, label %182

182:                                              ; preds = %180
  %183 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %183, ptr @n, align 4
  br label %185

184:                                              ; preds = %180
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i32 [ %.pre, %184 ], [ %183, %182 ]
  %187 = call i32 @Trial(i32 noundef %186)
  %.not1 = icmp eq i32 %187, 0
  br i1 %.not1, label %188, label %189

188:                                              ; preds = %185
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %193

189:                                              ; preds = %185
  %190 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %190, 2005
  br i1 %.not3, label %192, label %191

191:                                              ; preds = %189
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %192

192:                                              ; preds = %191, %189
  br label %193

193:                                              ; preds = %192, %188
  %194 = load i32, ptr @n, align 4
  %195 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %194) #4
  %196 = load i32, ptr @kount, align 4
  %197 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %196) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %exitcond.not = icmp eq i32 %2, 100
  br i1 %exitcond.not, label %5, label %3

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
