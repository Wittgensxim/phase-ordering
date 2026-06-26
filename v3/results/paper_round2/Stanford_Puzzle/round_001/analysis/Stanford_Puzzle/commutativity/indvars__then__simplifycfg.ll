; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_000\output.ll'
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

5:                                                ; preds = %14, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %15, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %15

14:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !7

15:                                               ; preds = %5, %10
  %16 = phi i32 [ 0, %10 ], [ 1, %5 ]
  ret i32 %16
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
  br label %28

27:                                               ; preds = %22
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %21 ]
  ret i32 %29
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
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %22

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %21, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not2 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not2, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %14
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %20, i32 noundef %0)
  br label %21

21:                                               ; preds = %11, %19, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %4, %14
  %23 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %23
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

4:                                                ; preds = %1, %14
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %14 ], [ 1, %1 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %5, label %15

5:                                                ; preds = %4, %13
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %13 ], [ 1, %4 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %6, label %14

6:                                                ; preds = %5, %7
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %7 ], [ 1, %5 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 6
  br i1 %exitcond5, label %7, label %13

7:                                                ; preds = %6
  %8 = shl nuw nsw i64 %indvars.iv2, 6
  %9 = shl nuw nsw i64 %indvars.iv6, 3
  %10 = or disjoint i64 %8, %9
  %11 = or disjoint i64 %indvars.iv10, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %6, !llvm.loop !14

13:                                               ; preds = %6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %5, !llvm.loop !15

14:                                               ; preds = %5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %4, !llvm.loop !16

15:                                               ; preds = %4, %20
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %20 ], [ 0, %4 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %16, label %21

16:                                               ; preds = %15, %17
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %17 ], [ 0, %15 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 512
  br i1 %exitcond17, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %19 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv14
  store i32 0, ptr %19, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %16, !llvm.loop !17

20:                                               ; preds = %16
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %15, !llvm.loop !18

21:                                               ; preds = %15, %30
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %30 ], [ 0, %15 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 4
  br i1 %exitcond29, label %22, label %31

22:                                               ; preds = %21, %29
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %29 ], [ 0, %21 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 2
  br i1 %exitcond25, label %23, label %30

23:                                               ; preds = %22, %25
  %24 = phi i1 [ false, %25 ], [ true, %22 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = shl nuw nsw i64 %indvars.iv22, 3
  %27 = or disjoint i64 %indvars.iv26, %26
  %28 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %27
  store i32 1, ptr %28, align 4
  br label %23, !llvm.loop !19

29:                                               ; preds = %23
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %22, !llvm.loop !20

30:                                               ; preds = %22
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %21, !llvm.loop !21

31:                                               ; preds = %21
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %32

32:                                               ; preds = %40, %31
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %40 ], [ 0, %31 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 2
  br i1 %exitcond37, label %33, label %41

33:                                               ; preds = %35, %32
  %34 = phi i1 [ true, %32 ], [ false, %35 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33, %36
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %36 ], [ 0, %33 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %36, label %33, !llvm.loop !22

36:                                               ; preds = %35
  %37 = shl nuw nsw i64 %indvars.iv30, 6
  %38 = or disjoint i64 %indvars.iv34, %37
  %39 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %38
  store i32 1, ptr %39, align 4
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %35, !llvm.loop !23

40:                                               ; preds = %33
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %32, !llvm.loop !24

41:                                               ; preds = %32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %42

42:                                               ; preds = %44, %41
  %43 = phi i1 [ true, %41 ], [ false, %44 ]
  br i1 %43, label %44, label %52

44:                                               ; preds = %42, %51
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %51 ], [ 0, %42 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 4
  br i1 %exitcond45, label %45, label %42, !llvm.loop !25

45:                                               ; preds = %44, %46
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %46 ], [ 0, %44 ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 2
  br i1 %exitcond41, label %46, label %51

46:                                               ; preds = %45
  %47 = shl nuw nsw i64 %indvars.iv38, 6
  %48 = shl nuw nsw i64 %indvars.iv42, 3
  %49 = or disjoint i64 %47, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %49
  store i32 1, ptr %50, align 4
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %45, !llvm.loop !26

51:                                               ; preds = %45
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %44, !llvm.loop !27

52:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %53

53:                                               ; preds = %62, %52
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %62 ], [ 0, %52 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 2
  br i1 %exitcond53, label %54, label %63

54:                                               ; preds = %53, %61
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %61 ], [ 0, %53 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %55, label %62

55:                                               ; preds = %54, %57
  %56 = phi i1 [ false, %57 ], [ true, %54 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = shl nuw nsw i64 %indvars.iv46, 3
  %59 = or disjoint i64 %indvars.iv50, %58
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %59
  store i32 1, ptr %60, align 4
  br label %55, !llvm.loop !28

61:                                               ; preds = %55
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %54, !llvm.loop !29

62:                                               ; preds = %54
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %53, !llvm.loop !30

63:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %64

64:                                               ; preds = %72, %63
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %72 ], [ 0, %63 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 4
  br i1 %exitcond61, label %65, label %73

65:                                               ; preds = %67, %64
  %66 = phi i1 [ true, %64 ], [ false, %67 ]
  br i1 %66, label %67, label %72

67:                                               ; preds = %65, %68
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %68 ], [ 0, %65 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %68, label %65, !llvm.loop !31

68:                                               ; preds = %67
  %69 = shl nuw nsw i64 %indvars.iv54, 6
  %70 = or disjoint i64 %indvars.iv58, %69
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %70
  store i32 1, ptr %71, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %67, !llvm.loop !32

72:                                               ; preds = %65
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %64, !llvm.loop !33

73:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %74

74:                                               ; preds = %76, %73
  %75 = phi i1 [ true, %73 ], [ false, %76 ]
  br i1 %75, label %76, label %84

76:                                               ; preds = %74, %83
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %83 ], [ 0, %74 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 2
  br i1 %exitcond69, label %77, label %74, !llvm.loop !34

77:                                               ; preds = %76, %78
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %78 ], [ 0, %76 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %78, label %83

78:                                               ; preds = %77
  %79 = shl nuw nsw i64 %indvars.iv62, 6
  %80 = shl nuw nsw i64 %indvars.iv66, 3
  %81 = or disjoint i64 %79, %80
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %81
  store i32 1, ptr %82, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %77, !llvm.loop !35

83:                                               ; preds = %77
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %76, !llvm.loop !36

84:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %85

85:                                               ; preds = %92, %84
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %92 ], [ 0, %84 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 3
  br i1 %exitcond73, label %86, label %93

86:                                               ; preds = %88, %85
  %87 = phi i1 [ true, %85 ], [ false, %88 ]
  br i1 %87, label %88, label %92

88:                                               ; preds = %86, %90
  %89 = phi i1 [ false, %90 ], [ true, %86 ]
  br i1 %89, label %90, label %86, !llvm.loop !37

90:                                               ; preds = %88
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70
  store i32 1, ptr %91, align 4
  br label %88, !llvm.loop !38

92:                                               ; preds = %86
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %85, !llvm.loop !39

93:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %94

94:                                               ; preds = %96, %93
  %95 = phi i1 [ true, %93 ], [ false, %96 ]
  br i1 %95, label %96, label %103

96:                                               ; preds = %94, %102
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %102 ], [ 0, %94 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %97, label %94, !llvm.loop !40

97:                                               ; preds = %96, %99
  %98 = phi i1 [ false, %99 ], [ true, %96 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = shl nuw nsw i64 %indvars.iv74, 3
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %100
  store i32 1, ptr %101, align 4
  br label %97, !llvm.loop !41

102:                                              ; preds = %97
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %96, !llvm.loop !42

103:                                              ; preds = %94
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %104

104:                                              ; preds = %106, %103
  %105 = phi i1 [ true, %103 ], [ false, %106 ]
  br i1 %105, label %106, label %112

106:                                              ; preds = %108, %104
  %107 = phi i1 [ true, %104 ], [ false, %108 ]
  br i1 %107, label %108, label %104, !llvm.loop !43

108:                                              ; preds = %106, %109
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %109 ], [ 0, %106 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %109, label %106, !llvm.loop !44

109:                                              ; preds = %108
  %110 = shl nuw nsw i64 %indvars.iv78, 6
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %110
  store i32 1, ptr %111, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %108, !llvm.loop !45

112:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %113

113:                                              ; preds = %122, %112
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %122 ], [ 0, %112 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %114, label %123

114:                                              ; preds = %113, %121
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %121 ], [ 0, %113 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 2
  br i1 %exitcond85, label %115, label %122

115:                                              ; preds = %114, %117
  %116 = phi i1 [ false, %117 ], [ true, %114 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = shl nuw nsw i64 %indvars.iv82, 3
  %119 = or disjoint i64 %indvars.iv86, %118
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %119
  store i32 1, ptr %120, align 4
  br label %115, !llvm.loop !46

121:                                              ; preds = %115
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %114, !llvm.loop !47

122:                                              ; preds = %114
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %113, !llvm.loop !48

123:                                              ; preds = %113
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %124

124:                                              ; preds = %132, %123
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %132 ], [ 0, %123 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %125, label %133

125:                                              ; preds = %127, %124
  %126 = phi i1 [ true, %124 ], [ false, %127 ]
  br i1 %126, label %127, label %132

127:                                              ; preds = %125, %128
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %128 ], [ 0, %125 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %128, label %125, !llvm.loop !49

128:                                              ; preds = %127
  %129 = shl nuw nsw i64 %indvars.iv90, 6
  %130 = or disjoint i64 %indvars.iv94, %129
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %130
  store i32 1, ptr %131, align 4
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %127, !llvm.loop !50

132:                                              ; preds = %125
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %124, !llvm.loop !51

133:                                              ; preds = %124
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %134

134:                                              ; preds = %136, %133
  %135 = phi i1 [ true, %133 ], [ false, %136 ]
  br i1 %135, label %136, label %144

136:                                              ; preds = %134, %143
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %143 ], [ 0, %134 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %137, label %134, !llvm.loop !52

137:                                              ; preds = %136, %138
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %138 ], [ 0, %136 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %138, label %143

138:                                              ; preds = %137
  %139 = shl nuw nsw i64 %indvars.iv98, 6
  %140 = shl nuw nsw i64 %indvars.iv102, 3
  %141 = or disjoint i64 %139, %140
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %141
  store i32 1, ptr %142, align 4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %137, !llvm.loop !53

143:                                              ; preds = %137
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %136, !llvm.loop !54

144:                                              ; preds = %134
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %145

145:                                              ; preds = %155, %144
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %155 ], [ 0, %144 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %146, label %156

146:                                              ; preds = %145, %154
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %154 ], [ 0, %145 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %147, label %155

147:                                              ; preds = %146, %148
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %148 ], [ 0, %146 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %148, label %154

148:                                              ; preds = %147
  %149 = shl nuw nsw i64 %indvars.iv106, 6
  %150 = shl nuw nsw i64 %indvars.iv110, 3
  %151 = or disjoint i64 %149, %150
  %152 = or disjoint i64 %indvars.iv114, %151
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %152
  store i32 1, ptr %153, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %147, !llvm.loop !55

154:                                              ; preds = %147
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %146, !llvm.loop !56

155:                                              ; preds = %146
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %145, !llvm.loop !57

156:                                              ; preds = %145
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %157 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %157, 0
  br i1 %.not, label %160, label %158

158:                                              ; preds = %156
  %159 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %159, ptr @n, align 4
  br label %161

160:                                              ; preds = %156
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %.pre, %160 ], [ %159, %158 ]
  %163 = call i32 @Trial(i32 noundef %162)
  %.not1 = icmp eq i32 %163, 0
  br i1 %.not1, label %164, label %165

164:                                              ; preds = %161
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %168

165:                                              ; preds = %161
  %166 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %166, 2005
  br i1 %.not3, label %168, label %167

167:                                              ; preds = %165
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %168

168:                                              ; preds = %165, %167, %164
  %169 = load i32, ptr @n, align 4
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %169) #4
  %171 = load i32, ptr @kount, align 4
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %171) #4
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
