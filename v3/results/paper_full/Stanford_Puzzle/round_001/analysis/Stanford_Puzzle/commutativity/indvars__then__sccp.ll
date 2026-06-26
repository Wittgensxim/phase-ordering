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
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
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
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
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
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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

5:                                                ; preds = %17, %4
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %17 ], [ 1, %4 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %6, label %18

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %16, %6
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %16 ], [ 1, %6 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %8, label %17

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %10, %8
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %10 ], [ 1, %8 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 6
  br i1 %exitcond5, label %10, label %16

10:                                               ; preds = %9
  %11 = shl nuw nsw i64 %indvars.iv2, 6
  %12 = shl nuw nsw i64 %indvars.iv6, 3
  %13 = or disjoint i64 %11, %12
  %14 = or disjoint i64 %indvars.iv10, %13
  %15 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %9, !llvm.loop !14

16:                                               ; preds = %9
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %7, !llvm.loop !15

17:                                               ; preds = %7
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %5, !llvm.loop !16

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %25, %18
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %25 ], [ 0, %18 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %20, label %26

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %22, %20
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %22 ], [ 0, %20 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 512
  br i1 %exitcond17, label %22, label %25

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %24 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %indvars.iv14
  store i32 0, ptr %24, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %21, !llvm.loop !17

25:                                               ; preds = %21
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %19, !llvm.loop !18

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %38, %26
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %38 ], [ 0, %26 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 4
  br i1 %exitcond29, label %28, label %39

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %37, %28
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %37 ], [ 0, %28 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 2
  br i1 %exitcond25, label %30, label %38

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %33, %30
  %32 = phi i1 [ false, %33 ], [ true, %30 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = shl nuw nsw i64 %indvars.iv22, 3
  %35 = or disjoint i64 %indvars.iv26, %34
  %36 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %35
  store i32 1, ptr %36, align 4
  br label %31, !llvm.loop !19

37:                                               ; preds = %31
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %29, !llvm.loop !20

38:                                               ; preds = %29
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %27, !llvm.loop !21

39:                                               ; preds = %27
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %40

40:                                               ; preds = %51, %39
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %51 ], [ 0, %39 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 2
  br i1 %exitcond37, label %41, label %52

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %50, %41
  %43 = phi i1 [ false, %50 ], [ true, %41 ]
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %46, %44
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %46 ], [ 0, %44 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %46, label %50

46:                                               ; preds = %45
  %47 = shl nuw nsw i64 %indvars.iv30, 6
  %48 = or disjoint i64 %indvars.iv34, %47
  %49 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %48
  store i32 1, ptr %49, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %45, !llvm.loop !22

50:                                               ; preds = %45
  br label %42, !llvm.loop !23

51:                                               ; preds = %42
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %40, !llvm.loop !24

52:                                               ; preds = %40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = phi i1 [ false, %65 ], [ true, %52 ]
  br i1 %54, label %55, label %66

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %64, %55
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %64 ], [ 0, %55 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 4
  br i1 %exitcond45, label %57, label %65

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %59, %57
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %59 ], [ 0, %57 ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 2
  br i1 %exitcond41, label %59, label %64

59:                                               ; preds = %58
  %60 = shl nuw nsw i64 %indvars.iv38, 6
  %61 = shl nuw nsw i64 %indvars.iv42, 3
  %62 = or disjoint i64 %60, %61
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %62
  store i32 1, ptr %63, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %58, !llvm.loop !25

64:                                               ; preds = %58
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %56, !llvm.loop !26

65:                                               ; preds = %56
  br label %53, !llvm.loop !27

66:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %67

67:                                               ; preds = %78, %66
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %78 ], [ 0, %66 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 2
  br i1 %exitcond53, label %68, label %79

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %77, %68
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %77 ], [ 0, %68 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %70, label %78

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %73, %70
  %72 = phi i1 [ false, %73 ], [ true, %70 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = shl nuw nsw i64 %indvars.iv46, 3
  %75 = or disjoint i64 %indvars.iv50, %74
  %76 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %75
  store i32 1, ptr %76, align 4
  br label %71, !llvm.loop !28

77:                                               ; preds = %71
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %69, !llvm.loop !29

78:                                               ; preds = %69
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %67, !llvm.loop !30

79:                                               ; preds = %67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %80

80:                                               ; preds = %91, %79
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %91 ], [ 0, %79 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 4
  br i1 %exitcond61, label %81, label %92

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %90, %81
  %83 = phi i1 [ false, %90 ], [ true, %81 ]
  br i1 %83, label %84, label %91

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %86, %84
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %86 ], [ 0, %84 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %86, label %90

86:                                               ; preds = %85
  %87 = shl nuw nsw i64 %indvars.iv54, 6
  %88 = or disjoint i64 %indvars.iv58, %87
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %88
  store i32 1, ptr %89, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %85, !llvm.loop !31

90:                                               ; preds = %85
  br label %82, !llvm.loop !32

91:                                               ; preds = %82
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %80, !llvm.loop !33

92:                                               ; preds = %80
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %93

93:                                               ; preds = %105, %92
  %94 = phi i1 [ false, %105 ], [ true, %92 ]
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %104, %95
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %104 ], [ 0, %95 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 2
  br i1 %exitcond69, label %97, label %105

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %99, %97
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %99 ], [ 0, %97 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %99, label %104

99:                                               ; preds = %98
  %100 = shl nuw nsw i64 %indvars.iv62, 6
  %101 = shl nuw nsw i64 %indvars.iv66, 3
  %102 = or disjoint i64 %100, %101
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %102
  store i32 1, ptr %103, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %98, !llvm.loop !34

104:                                              ; preds = %98
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %96, !llvm.loop !35

105:                                              ; preds = %96
  br label %93, !llvm.loop !36

106:                                              ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %107

107:                                              ; preds = %117, %106
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %117 ], [ 0, %106 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 3
  br i1 %exitcond73, label %108, label %118

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %116, %108
  %110 = phi i1 [ false, %116 ], [ true, %108 ]
  br i1 %110, label %111, label %117

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %114, %111
  %113 = phi i1 [ false, %114 ], [ true, %111 ]
  br i1 %113, label %114, label %116

114:                                              ; preds = %112
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  store i32 1, ptr %115, align 4
  br label %112, !llvm.loop !37

116:                                              ; preds = %112
  br label %109, !llvm.loop !38

117:                                              ; preds = %109
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %107, !llvm.loop !39

118:                                              ; preds = %107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %119

119:                                              ; preds = %130, %118
  %120 = phi i1 [ false, %130 ], [ true, %118 ]
  br i1 %120, label %121, label %131

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %129, %121
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %129 ], [ 0, %121 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %123, label %130

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %126, %123
  %125 = phi i1 [ false, %126 ], [ true, %123 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = shl nuw nsw i64 %indvars.iv74, 3
  %128 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %127
  store i32 1, ptr %128, align 4
  br label %124, !llvm.loop !40

129:                                              ; preds = %124
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %122, !llvm.loop !41

130:                                              ; preds = %122
  br label %119, !llvm.loop !42

131:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %132

132:                                              ; preds = %143, %131
  %133 = phi i1 [ false, %143 ], [ true, %131 ]
  br i1 %133, label %134, label %144

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %142, %134
  %136 = phi i1 [ false, %142 ], [ true, %134 ]
  br i1 %136, label %137, label %143

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %139, %137
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %139 ], [ 0, %137 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %139, label %142

139:                                              ; preds = %138
  %140 = shl nuw nsw i64 %indvars.iv78, 6
  %141 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %140
  store i32 1, ptr %141, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %138, !llvm.loop !43

142:                                              ; preds = %138
  br label %135, !llvm.loop !44

143:                                              ; preds = %135
  br label %132, !llvm.loop !45

144:                                              ; preds = %132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %145

145:                                              ; preds = %156, %144
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %156 ], [ 0, %144 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %146, label %157

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %155, %146
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %155 ], [ 0, %146 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 2
  br i1 %exitcond85, label %148, label %156

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %151, %148
  %150 = phi i1 [ false, %151 ], [ true, %148 ]
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = shl nuw nsw i64 %indvars.iv82, 3
  %153 = or disjoint i64 %indvars.iv86, %152
  %154 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %153
  store i32 1, ptr %154, align 4
  br label %149, !llvm.loop !46

155:                                              ; preds = %149
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %147, !llvm.loop !47

156:                                              ; preds = %147
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %145, !llvm.loop !48

157:                                              ; preds = %145
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %158

158:                                              ; preds = %169, %157
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %169 ], [ 0, %157 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %159, label %170

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %168, %159
  %161 = phi i1 [ false, %168 ], [ true, %159 ]
  br i1 %161, label %162, label %169

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %164, %162
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %164 ], [ 0, %162 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %164, label %168

164:                                              ; preds = %163
  %165 = shl nuw nsw i64 %indvars.iv90, 6
  %166 = or disjoint i64 %indvars.iv94, %165
  %167 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %166
  store i32 1, ptr %167, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %163, !llvm.loop !49

168:                                              ; preds = %163
  br label %160, !llvm.loop !50

169:                                              ; preds = %160
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %158, !llvm.loop !51

170:                                              ; preds = %158
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %171

171:                                              ; preds = %183, %170
  %172 = phi i1 [ false, %183 ], [ true, %170 ]
  br i1 %172, label %173, label %184

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %182, %173
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %182 ], [ 0, %173 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %175, label %183

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %177, %175
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %177 ], [ 0, %175 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %177, label %182

177:                                              ; preds = %176
  %178 = shl nuw nsw i64 %indvars.iv98, 6
  %179 = shl nuw nsw i64 %indvars.iv102, 3
  %180 = or disjoint i64 %178, %179
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %180
  store i32 1, ptr %181, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %176, !llvm.loop !52

182:                                              ; preds = %176
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %174, !llvm.loop !53

183:                                              ; preds = %174
  br label %171, !llvm.loop !54

184:                                              ; preds = %171
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %185

185:                                              ; preds = %197, %184
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %197 ], [ 0, %184 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %186, label %198

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %196, %186
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %196 ], [ 0, %186 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %188, label %197

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %190, %188
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %190 ], [ 0, %188 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %190, label %196

190:                                              ; preds = %189
  %191 = shl nuw nsw i64 %indvars.iv106, 6
  %192 = shl nuw nsw i64 %indvars.iv110, 3
  %193 = or disjoint i64 %191, %192
  %194 = or disjoint i64 %indvars.iv114, %193
  %195 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %194
  store i32 1, ptr %195, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %189, !llvm.loop !55

196:                                              ; preds = %189
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %187, !llvm.loop !56

197:                                              ; preds = %187
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %185, !llvm.loop !57

198:                                              ; preds = %185
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %199 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %199, 0
  br i1 %.not, label %202, label %200

200:                                              ; preds = %198
  %201 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %201, ptr @n, align 4
  br label %203

202:                                              ; preds = %198
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %.pre, %202 ], [ %201, %200 ]
  %205 = call i32 @Trial(i32 noundef %204)
  %.not1 = icmp eq i32 %205, 0
  br i1 %.not1, label %206, label %207

206:                                              ; preds = %203
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %211

207:                                              ; preds = %203
  %208 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %208, 2005
  br i1 %.not3, label %210, label %209

209:                                              ; preds = %207
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %210

210:                                              ; preds = %209, %207
  br label %211

211:                                              ; preds = %210, %206
  %212 = load i32, ptr @n, align 4
  %213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %212) #4
  %214 = load i32, ptr @kount, align 4
  %215 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %214) #4
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
