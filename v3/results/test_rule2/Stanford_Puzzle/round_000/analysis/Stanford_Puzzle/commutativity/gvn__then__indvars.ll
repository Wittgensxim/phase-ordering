; ModuleID = 'results\test_rule2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %7 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %8 = add i32 %smax, 1
  %wide.trip.count = zext i32 %8 to i64
  br label %9

9:                                                ; preds = %22, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %10, label %24

10:                                               ; preds = %9
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = add nsw i64 %7, %indvars.iv
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, ptr %3, align 4
  br label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %23 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %23, ptr %6, align 4
  br label %9, !llvm.loop !7

24:                                               ; preds = %9
  store i32 1, ptr %3, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1, %24 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %7 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %8 = add i32 %smax, 1
  %wide.trip.count = zext i32 %8 to i64
  br label %9

9:                                                ; preds = %19, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %20, %19 ], [ %1, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %11, label %22

11:                                               ; preds = %9
  %12 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %13 = getelementptr inbounds [512 x i32], ptr %12, i64 0, i64 %indvars.iv
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = add nsw i64 %7, %indvars.iv
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %1, %16 ], [ %10, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %21, ptr %6, align 4
  br label %9, !llvm.loop !9

22:                                               ; preds = %9
  %.lcssa4 = phi i32 [ %10, %9 ]
  %.lcssa = phi i32 [ %10, %9 ]
  %23 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
  store i32 %.lcssa, ptr %6, align 4
  %29 = sext i32 %.lcssa4 to i64
  %smax8 = call i32 @llvm.smax.i32(i32 %.lcssa4, i32 512)
  %wide.trip.count9 = sext i32 %smax8 to i64
  br label %30

30:                                               ; preds = %37, %22
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %37 ], [ %29, %22 ]
  %exitcond10 = icmp ne i64 %indvars.iv5, %wide.trip.count9
  br i1 %exitcond10, label %31, label %39

31:                                               ; preds = %30
  %32 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %indvars.iv5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %.lcssa2.wide = phi i64 [ %indvars.iv5, %31 ]
  %36 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %36, ptr %3, align 4
  br label %40

37:                                               ; preds = %31
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %38 = trunc nsw i64 %indvars.iv.next6 to i32
  store i32 %38, ptr %6, align 4
  br label %30, !llvm.loop !10

39:                                               ; preds = %30
  store i32 0, ptr %3, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ 0, %39 ], [ %36, %35 ]
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %9, label %19

9:                                                ; preds = %8
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %11 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = add nsw i64 %6, %indvars.iv
  %16 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %18, ptr %5, align 4
  br label %8, !llvm.loop !11

19:                                               ; preds = %8
  %20 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr @kount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @kount, align 4
  store i32 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %33, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ 0, %1 ]
  %9 = phi i32 [ %34, %33 ], [ %0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %10, label %36

10:                                               ; preds = %8
  %11 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  %19 = call i32 @Fit(i32 noundef %18, i32 noundef %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = trunc nuw nsw i64 %indvars.iv to i32
  %23 = call i32 @Place(i32 noundef %22, i32 noundef %9)
  store i32 %23, ptr %5, align 4
  %24 = call i32 @Trial(i32 noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %21
  store i32 1, ptr %2, align 4
  br label %37

29:                                               ; preds = %26
  %30 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %30, i32 noundef %0)
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i32 [ %0, %29 ], [ %9, %17 ]
  br label %33

33:                                               ; preds = %31, %10
  %34 = phi i32 [ %32, %31 ], [ %9, %10 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %35 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %35, ptr %4, align 4
  br label %8, !llvm.loop !12

36:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i32 [ 0, %36 ], [ 1, %28 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %6, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %6, label %9

6:                                                ; preds = %5
  %7 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %indvars.iv
  store i32 1, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %8, ptr %4, align 4
  br label %5, !llvm.loop !13

9:                                                ; preds = %5
  store i32 1, ptr %1, align 4
  br label %10

10:                                               ; preds = %24, %9
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %24 ], [ 1, %9 ]
  %exitcond44 = icmp ne i64 %indvars.iv39, 6
  br i1 %exitcond44, label %11, label %26

11:                                               ; preds = %10
  store i32 1, ptr %2, align 4
  br label %12

12:                                               ; preds = %22, %11
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %22 ], [ 1, %11 ]
  %exitcond38 = icmp ne i64 %indvars.iv33, 6
  br i1 %exitcond38, label %13, label %24

13:                                               ; preds = %12
  store i32 1, ptr %3, align 4
  br label %14

14:                                               ; preds = %15, %13
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %15 ], [ 1, %13 ]
  %exitcond32 = icmp ne i64 %indvars.iv29, 6
  br i1 %exitcond32, label %15, label %22

15:                                               ; preds = %14
  %16 = mul nuw nsw i64 8, %indvars.iv29
  %17 = add nuw nsw i64 %indvars.iv33, %16
  %18 = mul nuw nsw i64 8, %17
  %19 = add nuw nsw i64 %indvars.iv39, %18
  %20 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %19
  store i32 0, ptr %20, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %21 = trunc nuw nsw i64 %indvars.iv.next30 to i32
  store i32 %21, ptr %3, align 4
  br label %14, !llvm.loop !14

22:                                               ; preds = %14
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %23 = trunc nuw nsw i64 %indvars.iv.next34 to i32
  store i32 %23, ptr %2, align 4
  br label %12, !llvm.loop !15

24:                                               ; preds = %12
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %25 = trunc nuw nsw i64 %indvars.iv.next40 to i32
  store i32 %25, ptr %1, align 4
  br label %10, !llvm.loop !16

26:                                               ; preds = %10
  store i32 0, ptr %1, align 4
  br label %27

27:                                               ; preds = %34, %26
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %34 ], [ 0, %26 ]
  %exitcond52 = icmp ne i64 %indvars.iv49, 13
  br i1 %exitcond52, label %28, label %36

28:                                               ; preds = %27
  store i32 0, ptr %4, align 4
  br label %29

29:                                               ; preds = %30, %28
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %30 ], [ 0, %28 ]
  %exitcond48 = icmp ne i64 %indvars.iv45, 512
  br i1 %exitcond48, label %30, label %34

30:                                               ; preds = %29
  %31 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %indvars.iv49
  %32 = getelementptr inbounds [512 x i32], ptr %31, i64 0, i64 %indvars.iv45
  store i32 0, ptr %32, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %33 = trunc nuw nsw i64 %indvars.iv.next46 to i32
  store i32 %33, ptr %4, align 4
  br label %29, !llvm.loop !17

34:                                               ; preds = %29
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %35 = trunc nuw nsw i64 %indvars.iv.next50 to i32
  store i32 %35, ptr %1, align 4
  br label %27, !llvm.loop !18

36:                                               ; preds = %27
  store i32 0, ptr %1, align 4
  br label %37

37:                                               ; preds = %51, %36
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %51 ], [ 0, %36 ]
  %exitcond68 = icmp ne i64 %indvars.iv63, 4
  br i1 %exitcond68, label %38, label %53

38:                                               ; preds = %37
  store i32 0, ptr %2, align 4
  br label %39

39:                                               ; preds = %49, %38
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %49 ], [ 0, %38 ]
  %exitcond62 = icmp ne i64 %indvars.iv57, 2
  br i1 %exitcond62, label %40, label %51

40:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  br label %41

41:                                               ; preds = %42, %40
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %42 ], [ 0, %40 ]
  %exitcond56 = icmp ne i64 %indvars.iv53, 1
  br i1 %exitcond56, label %42, label %49

42:                                               ; preds = %41
  %43 = mul nuw nsw i64 8, %indvars.iv53
  %44 = add nuw nsw i64 %indvars.iv57, %43
  %45 = mul nuw nsw i64 8, %44
  %46 = add nuw nsw i64 %indvars.iv63, %45
  %47 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %48 = trunc nuw nsw i64 %indvars.iv.next54 to i32
  store i32 %48, ptr %3, align 4
  br label %41, !llvm.loop !19

49:                                               ; preds = %41
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %50 = trunc nuw nsw i64 %indvars.iv.next58 to i32
  store i32 %50, ptr %2, align 4
  br label %39, !llvm.loop !20

51:                                               ; preds = %39
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %52 = trunc nuw nsw i64 %indvars.iv.next64 to i32
  store i32 %52, ptr %1, align 4
  br label %37, !llvm.loop !21

53:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %54

54:                                               ; preds = %68, %53
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %68 ], [ 0, %53 ]
  %exitcond84 = icmp ne i64 %indvars.iv79, 2
  br i1 %exitcond84, label %55, label %70

55:                                               ; preds = %54
  store i32 0, ptr %2, align 4
  br label %56

56:                                               ; preds = %66, %55
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %66 ], [ 0, %55 ]
  %exitcond78 = icmp ne i64 %indvars.iv73, 1
  br i1 %exitcond78, label %57, label %68

57:                                               ; preds = %56
  store i32 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %59, %57
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %59 ], [ 0, %57 ]
  %exitcond72 = icmp ne i64 %indvars.iv69, 4
  br i1 %exitcond72, label %59, label %66

59:                                               ; preds = %58
  %60 = mul nuw nsw i64 8, %indvars.iv69
  %61 = add nuw nsw i64 %indvars.iv73, %60
  %62 = mul nuw nsw i64 8, %61
  %63 = add nuw nsw i64 %indvars.iv79, %62
  %64 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %63
  store i32 1, ptr %64, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %65 = trunc nuw nsw i64 %indvars.iv.next70 to i32
  store i32 %65, ptr %3, align 4
  br label %58, !llvm.loop !22

66:                                               ; preds = %58
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %67 = trunc nuw nsw i64 %indvars.iv.next74 to i32
  store i32 %67, ptr %2, align 4
  br label %56, !llvm.loop !23

68:                                               ; preds = %56
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %69 = trunc nuw nsw i64 %indvars.iv.next80 to i32
  store i32 %69, ptr %1, align 4
  br label %54, !llvm.loop !24

70:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %71

71:                                               ; preds = %85, %70
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %85 ], [ 0, %70 ]
  %exitcond100 = icmp ne i64 %indvars.iv95, 1
  br i1 %exitcond100, label %72, label %87

72:                                               ; preds = %71
  store i32 0, ptr %2, align 4
  br label %73

73:                                               ; preds = %83, %72
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %83 ], [ 0, %72 ]
  %exitcond94 = icmp ne i64 %indvars.iv89, 4
  br i1 %exitcond94, label %74, label %85

74:                                               ; preds = %73
  store i32 0, ptr %3, align 4
  br label %75

75:                                               ; preds = %76, %74
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %76 ], [ 0, %74 ]
  %exitcond88 = icmp ne i64 %indvars.iv85, 2
  br i1 %exitcond88, label %76, label %83

76:                                               ; preds = %75
  %77 = mul nuw nsw i64 8, %indvars.iv85
  %78 = add nuw nsw i64 %indvars.iv89, %77
  %79 = mul nuw nsw i64 8, %78
  %80 = add nuw nsw i64 %indvars.iv95, %79
  %81 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %80
  store i32 1, ptr %81, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %82 = trunc nuw nsw i64 %indvars.iv.next86 to i32
  store i32 %82, ptr %3, align 4
  br label %75, !llvm.loop !25

83:                                               ; preds = %75
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %84 = trunc nuw nsw i64 %indvars.iv.next90 to i32
  store i32 %84, ptr %2, align 4
  br label %73, !llvm.loop !26

85:                                               ; preds = %73
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %86 = trunc nuw nsw i64 %indvars.iv.next96 to i32
  store i32 %86, ptr %1, align 4
  br label %71, !llvm.loop !27

87:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %88

88:                                               ; preds = %102, %87
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %102 ], [ 0, %87 ]
  %exitcond116 = icmp ne i64 %indvars.iv111, 2
  br i1 %exitcond116, label %89, label %104

89:                                               ; preds = %88
  store i32 0, ptr %2, align 4
  br label %90

90:                                               ; preds = %100, %89
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %100 ], [ 0, %89 ]
  %exitcond110 = icmp ne i64 %indvars.iv105, 4
  br i1 %exitcond110, label %91, label %102

91:                                               ; preds = %90
  store i32 0, ptr %3, align 4
  br label %92

92:                                               ; preds = %93, %91
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %93 ], [ 0, %91 ]
  %exitcond104 = icmp ne i64 %indvars.iv101, 1
  br i1 %exitcond104, label %93, label %100

93:                                               ; preds = %92
  %94 = mul nuw nsw i64 8, %indvars.iv101
  %95 = add nuw nsw i64 %indvars.iv105, %94
  %96 = mul nuw nsw i64 8, %95
  %97 = add nuw nsw i64 %indvars.iv111, %96
  %98 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %97
  store i32 1, ptr %98, align 4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %99 = trunc nuw nsw i64 %indvars.iv.next102 to i32
  store i32 %99, ptr %3, align 4
  br label %92, !llvm.loop !28

100:                                              ; preds = %92
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %101 = trunc nuw nsw i64 %indvars.iv.next106 to i32
  store i32 %101, ptr %2, align 4
  br label %90, !llvm.loop !29

102:                                              ; preds = %90
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %103 = trunc nuw nsw i64 %indvars.iv.next112 to i32
  store i32 %103, ptr %1, align 4
  br label %88, !llvm.loop !30

104:                                              ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %105

105:                                              ; preds = %119, %104
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %119 ], [ 0, %104 ]
  %exitcond132 = icmp ne i64 %indvars.iv127, 4
  br i1 %exitcond132, label %106, label %121

106:                                              ; preds = %105
  store i32 0, ptr %2, align 4
  br label %107

107:                                              ; preds = %117, %106
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %117 ], [ 0, %106 ]
  %exitcond126 = icmp ne i64 %indvars.iv121, 1
  br i1 %exitcond126, label %108, label %119

108:                                              ; preds = %107
  store i32 0, ptr %3, align 4
  br label %109

109:                                              ; preds = %110, %108
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %110 ], [ 0, %108 ]
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %110, label %117

110:                                              ; preds = %109
  %111 = mul nuw nsw i64 8, %indvars.iv117
  %112 = add nuw nsw i64 %indvars.iv121, %111
  %113 = mul nuw nsw i64 8, %112
  %114 = add nuw nsw i64 %indvars.iv127, %113
  %115 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %114
  store i32 1, ptr %115, align 4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %116 = trunc nuw nsw i64 %indvars.iv.next118 to i32
  store i32 %116, ptr %3, align 4
  br label %109, !llvm.loop !31

117:                                              ; preds = %109
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %118 = trunc nuw nsw i64 %indvars.iv.next122 to i32
  store i32 %118, ptr %2, align 4
  br label %107, !llvm.loop !32

119:                                              ; preds = %107
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %120 = trunc nuw nsw i64 %indvars.iv.next128 to i32
  store i32 %120, ptr %1, align 4
  br label %105, !llvm.loop !33

121:                                              ; preds = %105
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %122

122:                                              ; preds = %136, %121
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %136 ], [ 0, %121 ]
  %exitcond148 = icmp ne i64 %indvars.iv143, 1
  br i1 %exitcond148, label %123, label %138

123:                                              ; preds = %122
  store i32 0, ptr %2, align 4
  br label %124

124:                                              ; preds = %134, %123
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %134 ], [ 0, %123 ]
  %exitcond142 = icmp ne i64 %indvars.iv137, 2
  br i1 %exitcond142, label %125, label %136

125:                                              ; preds = %124
  store i32 0, ptr %3, align 4
  br label %126

126:                                              ; preds = %127, %125
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %127 ], [ 0, %125 ]
  %exitcond136 = icmp ne i64 %indvars.iv133, 4
  br i1 %exitcond136, label %127, label %134

127:                                              ; preds = %126
  %128 = mul nuw nsw i64 8, %indvars.iv133
  %129 = add nuw nsw i64 %indvars.iv137, %128
  %130 = mul nuw nsw i64 8, %129
  %131 = add nuw nsw i64 %indvars.iv143, %130
  %132 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %131
  store i32 1, ptr %132, align 4
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %133 = trunc nuw nsw i64 %indvars.iv.next134 to i32
  store i32 %133, ptr %3, align 4
  br label %126, !llvm.loop !34

134:                                              ; preds = %126
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %135 = trunc nuw nsw i64 %indvars.iv.next138 to i32
  store i32 %135, ptr %2, align 4
  br label %124, !llvm.loop !35

136:                                              ; preds = %124
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %137 = trunc nuw nsw i64 %indvars.iv.next144 to i32
  store i32 %137, ptr %1, align 4
  br label %122, !llvm.loop !36

138:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %139

139:                                              ; preds = %153, %138
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %153 ], [ 0, %138 ]
  %exitcond164 = icmp ne i64 %indvars.iv159, 3
  br i1 %exitcond164, label %140, label %155

140:                                              ; preds = %139
  store i32 0, ptr %2, align 4
  br label %141

141:                                              ; preds = %151, %140
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %151 ], [ 0, %140 ]
  %exitcond158 = icmp ne i64 %indvars.iv153, 1
  br i1 %exitcond158, label %142, label %153

142:                                              ; preds = %141
  store i32 0, ptr %3, align 4
  br label %143

143:                                              ; preds = %144, %142
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %144 ], [ 0, %142 ]
  %exitcond152 = icmp ne i64 %indvars.iv149, 1
  br i1 %exitcond152, label %144, label %151

144:                                              ; preds = %143
  %145 = mul nuw nsw i64 8, %indvars.iv149
  %146 = add nuw nsw i64 %indvars.iv153, %145
  %147 = mul nuw nsw i64 8, %146
  %148 = add nuw nsw i64 %indvars.iv159, %147
  %149 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %148
  store i32 1, ptr %149, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %150 = trunc nuw nsw i64 %indvars.iv.next150 to i32
  store i32 %150, ptr %3, align 4
  br label %143, !llvm.loop !37

151:                                              ; preds = %143
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %152 = trunc nuw nsw i64 %indvars.iv.next154 to i32
  store i32 %152, ptr %2, align 4
  br label %141, !llvm.loop !38

153:                                              ; preds = %141
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %154 = trunc nuw nsw i64 %indvars.iv.next160 to i32
  store i32 %154, ptr %1, align 4
  br label %139, !llvm.loop !39

155:                                              ; preds = %139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %156

156:                                              ; preds = %170, %155
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %170 ], [ 0, %155 ]
  %exitcond180 = icmp ne i64 %indvars.iv175, 1
  br i1 %exitcond180, label %157, label %172

157:                                              ; preds = %156
  store i32 0, ptr %2, align 4
  br label %158

158:                                              ; preds = %168, %157
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %168 ], [ 0, %157 ]
  %exitcond174 = icmp ne i64 %indvars.iv169, 3
  br i1 %exitcond174, label %159, label %170

159:                                              ; preds = %158
  store i32 0, ptr %3, align 4
  br label %160

160:                                              ; preds = %161, %159
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %161 ], [ 0, %159 ]
  %exitcond168 = icmp ne i64 %indvars.iv165, 1
  br i1 %exitcond168, label %161, label %168

161:                                              ; preds = %160
  %162 = mul nuw nsw i64 8, %indvars.iv165
  %163 = add nuw nsw i64 %indvars.iv169, %162
  %164 = mul nuw nsw i64 8, %163
  %165 = add nuw nsw i64 %indvars.iv175, %164
  %166 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %165
  store i32 1, ptr %166, align 4
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %167 = trunc nuw nsw i64 %indvars.iv.next166 to i32
  store i32 %167, ptr %3, align 4
  br label %160, !llvm.loop !40

168:                                              ; preds = %160
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  %169 = trunc nuw nsw i64 %indvars.iv.next170 to i32
  store i32 %169, ptr %2, align 4
  br label %158, !llvm.loop !41

170:                                              ; preds = %158
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  %171 = trunc nuw nsw i64 %indvars.iv.next176 to i32
  store i32 %171, ptr %1, align 4
  br label %156, !llvm.loop !42

172:                                              ; preds = %156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %173

173:                                              ; preds = %187, %172
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %187 ], [ 0, %172 ]
  %exitcond196 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond196, label %174, label %189

174:                                              ; preds = %173
  store i32 0, ptr %2, align 4
  br label %175

175:                                              ; preds = %185, %174
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %185 ], [ 0, %174 ]
  %exitcond190 = icmp ne i64 %indvars.iv185, 1
  br i1 %exitcond190, label %176, label %187

176:                                              ; preds = %175
  store i32 0, ptr %3, align 4
  br label %177

177:                                              ; preds = %178, %176
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %178 ], [ 0, %176 ]
  %exitcond184 = icmp ne i64 %indvars.iv181, 3
  br i1 %exitcond184, label %178, label %185

178:                                              ; preds = %177
  %179 = mul nuw nsw i64 8, %indvars.iv181
  %180 = add nuw nsw i64 %indvars.iv185, %179
  %181 = mul nuw nsw i64 8, %180
  %182 = add nuw nsw i64 %indvars.iv191, %181
  %183 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %182
  store i32 1, ptr %183, align 4
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %184 = trunc nuw nsw i64 %indvars.iv.next182 to i32
  store i32 %184, ptr %3, align 4
  br label %177, !llvm.loop !43

185:                                              ; preds = %177
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  %186 = trunc nuw nsw i64 %indvars.iv.next186 to i32
  store i32 %186, ptr %2, align 4
  br label %175, !llvm.loop !44

187:                                              ; preds = %175
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  %188 = trunc nuw nsw i64 %indvars.iv.next192 to i32
  store i32 %188, ptr %1, align 4
  br label %173, !llvm.loop !45

189:                                              ; preds = %173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %190

190:                                              ; preds = %204, %189
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %204 ], [ 0, %189 ]
  %exitcond212 = icmp ne i64 %indvars.iv207, 2
  br i1 %exitcond212, label %191, label %206

191:                                              ; preds = %190
  store i32 0, ptr %2, align 4
  br label %192

192:                                              ; preds = %202, %191
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %202 ], [ 0, %191 ]
  %exitcond206 = icmp ne i64 %indvars.iv201, 2
  br i1 %exitcond206, label %193, label %204

193:                                              ; preds = %192
  store i32 0, ptr %3, align 4
  br label %194

194:                                              ; preds = %195, %193
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %195 ], [ 0, %193 ]
  %exitcond200 = icmp ne i64 %indvars.iv197, 1
  br i1 %exitcond200, label %195, label %202

195:                                              ; preds = %194
  %196 = mul nuw nsw i64 8, %indvars.iv197
  %197 = add nuw nsw i64 %indvars.iv201, %196
  %198 = mul nuw nsw i64 8, %197
  %199 = add nuw nsw i64 %indvars.iv207, %198
  %200 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %199
  store i32 1, ptr %200, align 4
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  %201 = trunc nuw nsw i64 %indvars.iv.next198 to i32
  store i32 %201, ptr %3, align 4
  br label %194, !llvm.loop !46

202:                                              ; preds = %194
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  %203 = trunc nuw nsw i64 %indvars.iv.next202 to i32
  store i32 %203, ptr %2, align 4
  br label %192, !llvm.loop !47

204:                                              ; preds = %192
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %205 = trunc nuw nsw i64 %indvars.iv.next208 to i32
  store i32 %205, ptr %1, align 4
  br label %190, !llvm.loop !48

206:                                              ; preds = %190
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %207

207:                                              ; preds = %221, %206
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %221 ], [ 0, %206 ]
  %exitcond228 = icmp ne i64 %indvars.iv223, 2
  br i1 %exitcond228, label %208, label %223

208:                                              ; preds = %207
  store i32 0, ptr %2, align 4
  br label %209

209:                                              ; preds = %219, %208
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %219 ], [ 0, %208 ]
  %exitcond222 = icmp ne i64 %indvars.iv217, 1
  br i1 %exitcond222, label %210, label %221

210:                                              ; preds = %209
  store i32 0, ptr %3, align 4
  br label %211

211:                                              ; preds = %212, %210
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %212 ], [ 0, %210 ]
  %exitcond216 = icmp ne i64 %indvars.iv213, 2
  br i1 %exitcond216, label %212, label %219

212:                                              ; preds = %211
  %213 = mul nuw nsw i64 8, %indvars.iv213
  %214 = add nuw nsw i64 %indvars.iv217, %213
  %215 = mul nuw nsw i64 8, %214
  %216 = add nuw nsw i64 %indvars.iv223, %215
  %217 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %216
  store i32 1, ptr %217, align 4
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  %218 = trunc nuw nsw i64 %indvars.iv.next214 to i32
  store i32 %218, ptr %3, align 4
  br label %211, !llvm.loop !49

219:                                              ; preds = %211
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %220 = trunc nuw nsw i64 %indvars.iv.next218 to i32
  store i32 %220, ptr %2, align 4
  br label %209, !llvm.loop !50

221:                                              ; preds = %209
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %222 = trunc nuw nsw i64 %indvars.iv.next224 to i32
  store i32 %222, ptr %1, align 4
  br label %207, !llvm.loop !51

223:                                              ; preds = %207
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %224

224:                                              ; preds = %238, %223
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %238 ], [ 0, %223 ]
  %exitcond244 = icmp ne i64 %indvars.iv239, 1
  br i1 %exitcond244, label %225, label %240

225:                                              ; preds = %224
  store i32 0, ptr %2, align 4
  br label %226

226:                                              ; preds = %236, %225
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %236 ], [ 0, %225 ]
  %exitcond238 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond238, label %227, label %238

227:                                              ; preds = %226
  store i32 0, ptr %3, align 4
  br label %228

228:                                              ; preds = %229, %227
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %229 ], [ 0, %227 ]
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %229, label %236

229:                                              ; preds = %228
  %230 = mul nuw nsw i64 8, %indvars.iv229
  %231 = add nuw nsw i64 %indvars.iv233, %230
  %232 = mul nuw nsw i64 8, %231
  %233 = add nuw nsw i64 %indvars.iv239, %232
  %234 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %233
  store i32 1, ptr %234, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  %235 = trunc nuw nsw i64 %indvars.iv.next230 to i32
  store i32 %235, ptr %3, align 4
  br label %228, !llvm.loop !52

236:                                              ; preds = %228
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  %237 = trunc nuw nsw i64 %indvars.iv.next234 to i32
  store i32 %237, ptr %2, align 4
  br label %226, !llvm.loop !53

238:                                              ; preds = %226
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  %239 = trunc nuw nsw i64 %indvars.iv.next240 to i32
  store i32 %239, ptr %1, align 4
  br label %224, !llvm.loop !54

240:                                              ; preds = %224
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %241

241:                                              ; preds = %255, %240
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %255 ], [ 0, %240 ]
  %exitcond260 = icmp ne i64 %indvars.iv255, 2
  br i1 %exitcond260, label %242, label %257

242:                                              ; preds = %241
  store i32 0, ptr %2, align 4
  br label %243

243:                                              ; preds = %253, %242
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %253 ], [ 0, %242 ]
  %exitcond254 = icmp ne i64 %indvars.iv249, 2
  br i1 %exitcond254, label %244, label %255

244:                                              ; preds = %243
  store i32 0, ptr %3, align 4
  br label %245

245:                                              ; preds = %246, %244
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %246 ], [ 0, %244 ]
  %exitcond248 = icmp ne i64 %indvars.iv245, 2
  br i1 %exitcond248, label %246, label %253

246:                                              ; preds = %245
  %247 = mul nuw nsw i64 8, %indvars.iv245
  %248 = add nuw nsw i64 %indvars.iv249, %247
  %249 = mul nuw nsw i64 8, %248
  %250 = add nuw nsw i64 %indvars.iv255, %249
  %251 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %250
  store i32 1, ptr %251, align 4
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  %252 = trunc nuw nsw i64 %indvars.iv.next246 to i32
  store i32 %252, ptr %3, align 4
  br label %245, !llvm.loop !55

253:                                              ; preds = %245
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %254 = trunc nuw nsw i64 %indvars.iv.next250 to i32
  store i32 %254, ptr %2, align 4
  br label %243, !llvm.loop !56

255:                                              ; preds = %243
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  %256 = trunc nuw nsw i64 %indvars.iv.next256 to i32
  store i32 %256, ptr %1, align 4
  br label %241, !llvm.loop !57

257:                                              ; preds = %241
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %258 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %261, ptr @n, align 4
  br label %264

262:                                              ; preds = %257
  %263 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %.pre, %262 ], [ %261, %260 ]
  %266 = call i32 @Trial(i32 noundef %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %276

270:                                              ; preds = %264
  %271 = load i32, ptr @kount, align 4
  %272 = icmp ne i32 %271, 2005
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %275

275:                                              ; preds = %273, %270
  br label %276

276:                                              ; preds = %275, %268
  %277 = load i32, ptr @n, align 4
  %278 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %277)
  %279 = load i32, ptr @kount, align 4
  %280 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %279)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %5, %0
  %4 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %4, 100
  br i1 %exitcond, label %5, label %7

5:                                                ; preds = %3
  call void @Puzzle()
  %6 = add nuw nsw i32 %4, 1
  store i32 %6, ptr %2, align 4
  br label %3, !llvm.loop !58

7:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
