; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %20, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %5, align 4
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %20, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !7

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21, %18
  %storemerge1 = phi i32 [ 1, %21 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax6 = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax6, 1
  %wide.trip.count7 = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %17, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %17 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv3 to i32
  store i32 %9, ptr %5, align 4
  %exitcond8 = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8, label %18, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv3
  %13 = load i32, ptr %12, align 4
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %17, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv3
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %10
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %8, !llvm.loop !9

18:                                               ; preds = %8
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  store i32 %27, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %28, label %33

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %32

31:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %27, %28 ]
  br label %34

32:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %31
  %storemerge2 = phi i32 [ 0, %33 ], [ %.lcssa2, %31 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %5, align 4
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %18, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %17, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !11

18:                                               ; preds = %8
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  br label %7

7:                                                ; preds = %30, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %1 ]
  %8 = phi i32 [ %0, %1 ], [ %31, %30 ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %3, align 4
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %10, label %32

10:                                               ; preds = %7
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %30, label %16

16:                                               ; preds = %10
  %17 = trunc nuw nsw i64 %indvars.iv to i32
  %18 = call i32 @Fit(i32 noundef %17, i32 noundef %8)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %28, label %19

19:                                               ; preds = %16
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  %21 = call i32 @Place(i32 noundef %20, i32 noundef %8)
  store i32 %21, ptr %4, align 4
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %25

23:                                               ; preds = %19
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %19
  br label %33

26:                                               ; preds = %23
  %27 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %27, i32 noundef %0)
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ %0, %26 ], [ %8, %16 ]
  br label %30

30:                                               ; preds = %28, %10
  %31 = phi i32 [ %29, %28 ], [ %8, %10 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %7, !llvm.loop !12

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %32, %25
  %storemerge1 = phi i32 [ 0, %32 ], [ 1, %25 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %7, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %6, ptr %4, align 4
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %7, label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %25, %9
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %25 ], [ 1, %9 ]
  %11 = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %11, ptr %1, align 4
  %exitcond44 = icmp ne i64 %indvars.iv39, 6
  br i1 %exitcond44, label %12, label %26

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %24, %12
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %24 ], [ 1, %12 ]
  %14 = trunc nuw nsw i64 %indvars.iv33 to i32
  store i32 %14, ptr %2, align 4
  %exitcond38 = icmp ne i64 %indvars.iv33, 6
  br i1 %exitcond38, label %15, label %25

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %18, %15
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %18 ], [ 1, %15 ]
  %17 = trunc nuw nsw i64 %indvars.iv29 to i32
  store i32 %17, ptr %3, align 4
  %exitcond32 = icmp ne i64 %indvars.iv29, 6
  br i1 %exitcond32, label %18, label %24

18:                                               ; preds = %16
  %19 = shl i64 %indvars.iv29, 6
  %20 = shl i64 %indvars.iv33, 3
  %21 = add nuw nsw i64 %19, %20
  %22 = add nuw nsw i64 %indvars.iv39, %21
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %16, !llvm.loop !14

24:                                               ; preds = %16
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %13, !llvm.loop !15

25:                                               ; preds = %13
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %10, !llvm.loop !16

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %35, %26
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %35 ], [ 0, %26 ]
  %28 = trunc nuw nsw i64 %indvars.iv49 to i32
  store i32 %28, ptr %1, align 4
  %exitcond52 = icmp ne i64 %indvars.iv49, 13
  br i1 %exitcond52, label %29, label %36

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %32, %29
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %32 ], [ 0, %29 ]
  %31 = trunc nuw nsw i64 %indvars.iv45 to i32
  store i32 %31, ptr %4, align 4
  %exitcond48 = icmp ne i64 %indvars.iv45, 512
  br i1 %exitcond48, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv49
  %34 = getelementptr inbounds [4 x i8], ptr %33, i64 %indvars.iv45
  store i32 0, ptr %34, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %30, !llvm.loop !17

35:                                               ; preds = %30
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %27, !llvm.loop !18

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %52, %36
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %52 ], [ 0, %36 ]
  %38 = trunc nuw nsw i64 %indvars.iv63 to i32
  store i32 %38, ptr %1, align 4
  %exitcond68 = icmp ne i64 %indvars.iv63, 4
  br i1 %exitcond68, label %39, label %53

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %51, %39
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %51 ], [ 0, %39 ]
  %41 = trunc nuw nsw i64 %indvars.iv57 to i32
  store i32 %41, ptr %2, align 4
  %exitcond62 = icmp ne i64 %indvars.iv57, 2
  br i1 %exitcond62, label %42, label %52

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %45, %42
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %45 ], [ 0, %42 ]
  %44 = trunc nuw nsw i64 %indvars.iv53 to i32
  store i32 %44, ptr %3, align 4
  %exitcond56 = icmp ne i64 %indvars.iv53, 1
  br i1 %exitcond56, label %45, label %51

45:                                               ; preds = %43
  %46 = shl i64 %indvars.iv53, 6
  %47 = shl i64 %indvars.iv57, 3
  %48 = add nuw nsw i64 %46, %47
  %49 = add nuw nsw i64 %indvars.iv63, %48
  %50 = getelementptr inbounds [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %43, !llvm.loop !19

51:                                               ; preds = %43
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %40, !llvm.loop !20

52:                                               ; preds = %40
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %37, !llvm.loop !21

53:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %69, %53
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %69 ], [ 0, %53 ]
  %55 = trunc nuw nsw i64 %indvars.iv79 to i32
  store i32 %55, ptr %1, align 4
  %exitcond84 = icmp ne i64 %indvars.iv79, 2
  br i1 %exitcond84, label %56, label %70

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %68, %56
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %68 ], [ 0, %56 ]
  %58 = trunc nuw nsw i64 %indvars.iv73 to i32
  store i32 %58, ptr %2, align 4
  %exitcond78 = icmp ne i64 %indvars.iv73, 1
  br i1 %exitcond78, label %59, label %69

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %62, %59
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %62 ], [ 0, %59 ]
  %61 = trunc nuw nsw i64 %indvars.iv69 to i32
  store i32 %61, ptr %3, align 4
  %exitcond72 = icmp ne i64 %indvars.iv69, 4
  br i1 %exitcond72, label %62, label %68

62:                                               ; preds = %60
  %63 = shl i64 %indvars.iv69, 6
  %64 = shl i64 %indvars.iv73, 3
  %65 = add nuw nsw i64 %63, %64
  %66 = add nuw nsw i64 %indvars.iv79, %65
  %67 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %66
  store i32 1, ptr %67, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %60, !llvm.loop !22

68:                                               ; preds = %60
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %57, !llvm.loop !23

69:                                               ; preds = %57
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %54, !llvm.loop !24

70:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %71

71:                                               ; preds = %86, %70
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %86 ], [ 0, %70 ]
  %72 = trunc nuw nsw i64 %indvars.iv95 to i32
  store i32 %72, ptr %1, align 4
  %exitcond100 = icmp ne i64 %indvars.iv95, 1
  br i1 %exitcond100, label %73, label %87

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %85, %73
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %85 ], [ 0, %73 ]
  %75 = trunc nuw nsw i64 %indvars.iv89 to i32
  store i32 %75, ptr %2, align 4
  %exitcond94 = icmp ne i64 %indvars.iv89, 4
  br i1 %exitcond94, label %76, label %86

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %79, %76
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %79 ], [ 0, %76 ]
  %78 = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %78, ptr %3, align 4
  %exitcond88 = icmp ne i64 %indvars.iv85, 2
  br i1 %exitcond88, label %79, label %85

79:                                               ; preds = %77
  %80 = shl i64 %indvars.iv85, 6
  %81 = shl i64 %indvars.iv89, 3
  %82 = add nuw nsw i64 %80, %81
  %83 = add nuw nsw i64 %indvars.iv95, %82
  %84 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %83
  store i32 1, ptr %84, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %77, !llvm.loop !25

85:                                               ; preds = %77
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %74, !llvm.loop !26

86:                                               ; preds = %74
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %71, !llvm.loop !27

87:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %88

88:                                               ; preds = %103, %87
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %103 ], [ 0, %87 ]
  %89 = trunc nuw nsw i64 %indvars.iv111 to i32
  store i32 %89, ptr %1, align 4
  %exitcond116 = icmp ne i64 %indvars.iv111, 2
  br i1 %exitcond116, label %90, label %104

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %102, %90
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %102 ], [ 0, %90 ]
  %92 = trunc nuw nsw i64 %indvars.iv105 to i32
  store i32 %92, ptr %2, align 4
  %exitcond110 = icmp ne i64 %indvars.iv105, 4
  br i1 %exitcond110, label %93, label %103

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %96, %93
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %96 ], [ 0, %93 ]
  %95 = trunc nuw nsw i64 %indvars.iv101 to i32
  store i32 %95, ptr %3, align 4
  %exitcond104 = icmp ne i64 %indvars.iv101, 1
  br i1 %exitcond104, label %96, label %102

96:                                               ; preds = %94
  %97 = shl i64 %indvars.iv101, 6
  %98 = shl i64 %indvars.iv105, 3
  %99 = add nuw nsw i64 %97, %98
  %100 = add nuw nsw i64 %indvars.iv111, %99
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %100
  store i32 1, ptr %101, align 4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %94, !llvm.loop !28

102:                                              ; preds = %94
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %91, !llvm.loop !29

103:                                              ; preds = %91
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %88, !llvm.loop !30

104:                                              ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %105

105:                                              ; preds = %120, %104
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %120 ], [ 0, %104 ]
  %106 = trunc nuw nsw i64 %indvars.iv127 to i32
  store i32 %106, ptr %1, align 4
  %exitcond132 = icmp ne i64 %indvars.iv127, 4
  br i1 %exitcond132, label %107, label %121

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %119, %107
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %119 ], [ 0, %107 ]
  %109 = trunc nuw nsw i64 %indvars.iv121 to i32
  store i32 %109, ptr %2, align 4
  %exitcond126 = icmp ne i64 %indvars.iv121, 1
  br i1 %exitcond126, label %110, label %120

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %113, %110
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %113 ], [ 0, %110 ]
  %112 = trunc nuw nsw i64 %indvars.iv117 to i32
  store i32 %112, ptr %3, align 4
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %113, label %119

113:                                              ; preds = %111
  %114 = shl i64 %indvars.iv117, 6
  %115 = shl i64 %indvars.iv121, 3
  %116 = add nuw nsw i64 %114, %115
  %117 = add nuw nsw i64 %indvars.iv127, %116
  %118 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %117
  store i32 1, ptr %118, align 4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %111, !llvm.loop !31

119:                                              ; preds = %111
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %108, !llvm.loop !32

120:                                              ; preds = %108
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %105, !llvm.loop !33

121:                                              ; preds = %105
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %122

122:                                              ; preds = %137, %121
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %137 ], [ 0, %121 ]
  %123 = trunc nuw nsw i64 %indvars.iv143 to i32
  store i32 %123, ptr %1, align 4
  %exitcond148 = icmp ne i64 %indvars.iv143, 1
  br i1 %exitcond148, label %124, label %138

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %136, %124
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %136 ], [ 0, %124 ]
  %126 = trunc nuw nsw i64 %indvars.iv137 to i32
  store i32 %126, ptr %2, align 4
  %exitcond142 = icmp ne i64 %indvars.iv137, 2
  br i1 %exitcond142, label %127, label %137

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %130, %127
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %130 ], [ 0, %127 ]
  %129 = trunc nuw nsw i64 %indvars.iv133 to i32
  store i32 %129, ptr %3, align 4
  %exitcond136 = icmp ne i64 %indvars.iv133, 4
  br i1 %exitcond136, label %130, label %136

130:                                              ; preds = %128
  %131 = shl i64 %indvars.iv133, 6
  %132 = shl i64 %indvars.iv137, 3
  %133 = add nuw nsw i64 %131, %132
  %134 = add nuw nsw i64 %indvars.iv143, %133
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %134
  store i32 1, ptr %135, align 4
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %128, !llvm.loop !34

136:                                              ; preds = %128
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br label %125, !llvm.loop !35

137:                                              ; preds = %125
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  br label %122, !llvm.loop !36

138:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %139

139:                                              ; preds = %154, %138
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %154 ], [ 0, %138 ]
  %140 = trunc nuw nsw i64 %indvars.iv159 to i32
  store i32 %140, ptr %1, align 4
  %exitcond164 = icmp ne i64 %indvars.iv159, 3
  br i1 %exitcond164, label %141, label %155

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %153, %141
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %153 ], [ 0, %141 ]
  %143 = trunc nuw nsw i64 %indvars.iv153 to i32
  store i32 %143, ptr %2, align 4
  %exitcond158 = icmp ne i64 %indvars.iv153, 1
  br i1 %exitcond158, label %144, label %154

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %147, %144
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %147 ], [ 0, %144 ]
  %146 = trunc nuw nsw i64 %indvars.iv149 to i32
  store i32 %146, ptr %3, align 4
  %exitcond152 = icmp ne i64 %indvars.iv149, 1
  br i1 %exitcond152, label %147, label %153

147:                                              ; preds = %145
  %148 = shl i64 %indvars.iv149, 6
  %149 = shl i64 %indvars.iv153, 3
  %150 = add nuw nsw i64 %148, %149
  %151 = add nuw nsw i64 %indvars.iv159, %150
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %151
  store i32 1, ptr %152, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %145, !llvm.loop !37

153:                                              ; preds = %145
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br label %142, !llvm.loop !38

154:                                              ; preds = %142
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %139, !llvm.loop !39

155:                                              ; preds = %139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %156

156:                                              ; preds = %171, %155
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %171 ], [ 0, %155 ]
  %157 = trunc nuw nsw i64 %indvars.iv175 to i32
  store i32 %157, ptr %1, align 4
  %exitcond180 = icmp ne i64 %indvars.iv175, 1
  br i1 %exitcond180, label %158, label %172

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %170, %158
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %170 ], [ 0, %158 ]
  %160 = trunc nuw nsw i64 %indvars.iv169 to i32
  store i32 %160, ptr %2, align 4
  %exitcond174 = icmp ne i64 %indvars.iv169, 3
  br i1 %exitcond174, label %161, label %171

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %164, %161
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %164 ], [ 0, %161 ]
  %163 = trunc nuw nsw i64 %indvars.iv165 to i32
  store i32 %163, ptr %3, align 4
  %exitcond168 = icmp ne i64 %indvars.iv165, 1
  br i1 %exitcond168, label %164, label %170

164:                                              ; preds = %162
  %165 = shl i64 %indvars.iv165, 6
  %166 = shl i64 %indvars.iv169, 3
  %167 = add nuw nsw i64 %165, %166
  %168 = add nuw nsw i64 %indvars.iv175, %167
  %169 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %168
  store i32 1, ptr %169, align 4
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  br label %162, !llvm.loop !40

170:                                              ; preds = %162
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br label %159, !llvm.loop !41

171:                                              ; preds = %159
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  br label %156, !llvm.loop !42

172:                                              ; preds = %156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %173

173:                                              ; preds = %188, %172
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %188 ], [ 0, %172 ]
  %174 = trunc nuw nsw i64 %indvars.iv191 to i32
  store i32 %174, ptr %1, align 4
  %exitcond196 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond196, label %175, label %189

175:                                              ; preds = %173
  br label %176

176:                                              ; preds = %187, %175
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %187 ], [ 0, %175 ]
  %177 = trunc nuw nsw i64 %indvars.iv185 to i32
  store i32 %177, ptr %2, align 4
  %exitcond190 = icmp ne i64 %indvars.iv185, 1
  br i1 %exitcond190, label %178, label %188

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %181, %178
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %181 ], [ 0, %178 ]
  %180 = trunc nuw nsw i64 %indvars.iv181 to i32
  store i32 %180, ptr %3, align 4
  %exitcond184 = icmp ne i64 %indvars.iv181, 3
  br i1 %exitcond184, label %181, label %187

181:                                              ; preds = %179
  %182 = shl i64 %indvars.iv181, 6
  %183 = shl i64 %indvars.iv185, 3
  %184 = add nuw nsw i64 %182, %183
  %185 = add nuw nsw i64 %indvars.iv191, %184
  %186 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %185
  store i32 1, ptr %186, align 4
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  br label %179, !llvm.loop !43

187:                                              ; preds = %179
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  br label %176, !llvm.loop !44

188:                                              ; preds = %176
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %173, !llvm.loop !45

189:                                              ; preds = %173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %190

190:                                              ; preds = %205, %189
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %205 ], [ 0, %189 ]
  %191 = trunc nuw nsw i64 %indvars.iv207 to i32
  store i32 %191, ptr %1, align 4
  %exitcond212 = icmp ne i64 %indvars.iv207, 2
  br i1 %exitcond212, label %192, label %206

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %204, %192
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %204 ], [ 0, %192 ]
  %194 = trunc nuw nsw i64 %indvars.iv201 to i32
  store i32 %194, ptr %2, align 4
  %exitcond206 = icmp ne i64 %indvars.iv201, 2
  br i1 %exitcond206, label %195, label %205

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %198, %195
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %198 ], [ 0, %195 ]
  %197 = trunc nuw nsw i64 %indvars.iv197 to i32
  store i32 %197, ptr %3, align 4
  %exitcond200 = icmp ne i64 %indvars.iv197, 1
  br i1 %exitcond200, label %198, label %204

198:                                              ; preds = %196
  %199 = shl i64 %indvars.iv197, 6
  %200 = shl i64 %indvars.iv201, 3
  %201 = add nuw nsw i64 %199, %200
  %202 = add nuw nsw i64 %indvars.iv207, %201
  %203 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %202
  store i32 1, ptr %203, align 4
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  br label %196, !llvm.loop !46

204:                                              ; preds = %196
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %193, !llvm.loop !47

205:                                              ; preds = %193
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br label %190, !llvm.loop !48

206:                                              ; preds = %190
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %207

207:                                              ; preds = %222, %206
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %222 ], [ 0, %206 ]
  %208 = trunc nuw nsw i64 %indvars.iv223 to i32
  store i32 %208, ptr %1, align 4
  %exitcond228 = icmp ne i64 %indvars.iv223, 2
  br i1 %exitcond228, label %209, label %223

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %221, %209
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %221 ], [ 0, %209 ]
  %211 = trunc nuw nsw i64 %indvars.iv217 to i32
  store i32 %211, ptr %2, align 4
  %exitcond222 = icmp ne i64 %indvars.iv217, 1
  br i1 %exitcond222, label %212, label %222

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %215, %212
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %215 ], [ 0, %212 ]
  %214 = trunc nuw nsw i64 %indvars.iv213 to i32
  store i32 %214, ptr %3, align 4
  %exitcond216 = icmp ne i64 %indvars.iv213, 2
  br i1 %exitcond216, label %215, label %221

215:                                              ; preds = %213
  %216 = shl i64 %indvars.iv213, 6
  %217 = shl i64 %indvars.iv217, 3
  %218 = add nuw nsw i64 %216, %217
  %219 = add nuw nsw i64 %indvars.iv223, %218
  %220 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %219
  store i32 1, ptr %220, align 4
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  br label %213, !llvm.loop !49

221:                                              ; preds = %213
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  br label %210, !llvm.loop !50

222:                                              ; preds = %210
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  br label %207, !llvm.loop !51

223:                                              ; preds = %207
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %224

224:                                              ; preds = %239, %223
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %239 ], [ 0, %223 ]
  %225 = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %225, ptr %1, align 4
  %exitcond244 = icmp ne i64 %indvars.iv239, 1
  br i1 %exitcond244, label %226, label %240

226:                                              ; preds = %224
  br label %227

227:                                              ; preds = %238, %226
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %238 ], [ 0, %226 ]
  %228 = trunc nuw nsw i64 %indvars.iv233 to i32
  store i32 %228, ptr %2, align 4
  %exitcond238 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond238, label %229, label %239

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %232, %229
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %232 ], [ 0, %229 ]
  %231 = trunc nuw nsw i64 %indvars.iv229 to i32
  store i32 %231, ptr %3, align 4
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %232, label %238

232:                                              ; preds = %230
  %233 = shl i64 %indvars.iv229, 6
  %234 = shl i64 %indvars.iv233, 3
  %235 = add nuw nsw i64 %233, %234
  %236 = add nuw nsw i64 %indvars.iv239, %235
  %237 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %236
  store i32 1, ptr %237, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %230, !llvm.loop !52

238:                                              ; preds = %230
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %227, !llvm.loop !53

239:                                              ; preds = %227
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  br label %224, !llvm.loop !54

240:                                              ; preds = %224
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %241

241:                                              ; preds = %256, %240
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %256 ], [ 0, %240 ]
  %242 = trunc nuw nsw i64 %indvars.iv255 to i32
  store i32 %242, ptr %1, align 4
  %exitcond260 = icmp ne i64 %indvars.iv255, 2
  br i1 %exitcond260, label %243, label %257

243:                                              ; preds = %241
  br label %244

244:                                              ; preds = %255, %243
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %255 ], [ 0, %243 ]
  %245 = trunc nuw nsw i64 %indvars.iv249 to i32
  store i32 %245, ptr %2, align 4
  %exitcond254 = icmp ne i64 %indvars.iv249, 2
  br i1 %exitcond254, label %246, label %256

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %249, %246
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %249 ], [ 0, %246 ]
  %248 = trunc nuw nsw i64 %indvars.iv245 to i32
  store i32 %248, ptr %3, align 4
  %exitcond248 = icmp ne i64 %indvars.iv245, 2
  br i1 %exitcond248, label %249, label %255

249:                                              ; preds = %247
  %250 = shl i64 %indvars.iv245, 6
  %251 = shl i64 %indvars.iv249, 3
  %252 = add nuw nsw i64 %250, %251
  %253 = add nuw nsw i64 %indvars.iv255, %252
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %253
  store i32 1, ptr %254, align 4
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  br label %247, !llvm.loop !55

255:                                              ; preds = %247
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  br label %244, !llvm.loop !56

256:                                              ; preds = %244
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
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
  %.not = icmp eq i32 %258, 0
  br i1 %.not, label %261, label %259

259:                                              ; preds = %257
  %260 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %260, ptr @n, align 4
  br label %262

261:                                              ; preds = %257
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %262

262:                                              ; preds = %261, %259
  %263 = phi i32 [ %.pre, %261 ], [ %260, %259 ]
  %264 = call i32 @Trial(i32 noundef %263)
  %.not16 = icmp eq i32 %264, 0
  br i1 %.not16, label %265, label %266

265:                                              ; preds = %262
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %270

266:                                              ; preds = %262
  %267 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %267, 2005
  br i1 %.not18, label %269, label %268

268:                                              ; preds = %266
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %269

269:                                              ; preds = %268, %266
  br label %270

270:                                              ; preds = %269, %265
  %271 = load i32, ptr @n, align 4
  %272 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %271) #4
  %273 = load i32, ptr @kount, align 4
  %274 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %273) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %3 = phi i32 [ 0, %0 ], [ %5, %4 ]
  store i32 %3, ptr %1, align 4
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %4, label %6

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !58

6:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
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
