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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %25, %2
  %storemerge = phi i32 [ 0, %2 ], [ %26, %25 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %27, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %24, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %17
  %storemerge.lcssa1 = phi i32 [ %storemerge, %17 ]
  store i32 %storemerge.lcssa1, ptr %5, align 4
  br label %28

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %13
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !7

27:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %22
  %storemerge1 = phi i32 [ 1, %27 ], [ 0, %22 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %22 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %24, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !9

24:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %25 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %smax = call i32 @llvm.smax.i32(i32 %31, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %33

33:                                               ; preds = %41, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ %32, %24 ]
  %34 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %42, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %37 = load i32, ptr %36, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %40

38:                                               ; preds = %35
  %.lcssa3 = phi i32 [ %34, %35 ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %35 ]
  store i32 %.lcssa3, ptr %5, align 4
  %39 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !10

42:                                               ; preds = %33
  %.lcssa2 = phi i32 [ %34, %33 ]
  store i32 %.lcssa2, ptr %5, align 4
  br label %43

43:                                               ; preds = %42, %38
  %storemerge2 = phi i32 [ 0, %42 ], [ %39, %38 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %22 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %24, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !11

24:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %25 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
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
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = phi i32 [ %.promoted, %1 ], [ %33, %34 ]
  %storemerge = phi i32 [ 0, %1 ], [ %35, %34 ]
  %12 = icmp slt i32 %storemerge, 13
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %32, label %20

20:                                               ; preds = %13
  %21 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %7)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %30, label %22

22:                                               ; preds = %20
  %23 = call i32 @Place(i32 noundef %storemerge, i32 noundef %8)
  %24 = call i32 @Trial(i32 noundef %23)
  %.not3 = icmp eq i32 %24, 0
  br i1 %.not3, label %25, label %27

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %22
  %.lcssa2 = phi i32 [ %23, %25 ], [ %23, %22 ]
  %storemerge.lcssa1 = phi i32 [ %storemerge, %25 ], [ %storemerge, %22 ]
  store i32 %storemerge.lcssa1, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %37

28:                                               ; preds = %25
  call void @Remove(i32 noundef %storemerge, i32 noundef %9)
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %20
  %31 = phi i32 [ %23, %29 ], [ %11, %20 ]
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi i32 [ %31, %30 ], [ %11, %13 ]
  br label %34

34:                                               ; preds = %32
  %35 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !12

36:                                               ; preds = %10
  %.lcssa = phi i32 [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %10 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa, ptr %4, align 4
  br label %37

37:                                               ; preds = %36, %27
  %storemerge1 = phi i32 [ 0, %36 ], [ 1, %27 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %10, %0
  %storemerge = phi i32 [ 0, %0 ], [ %11, %10 ]
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  %storemerge.lcssa = phi i32 [ %storemerge, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %13

13:                                               ; preds = %32, %12
  %storemerge48.lcssa1.lcssa3 = phi i32 [ poison, %12 ], [ %storemerge48.lcssa1.lcssa, %32 ]
  %storemerge47.lcssa2 = phi i32 [ poison, %12 ], [ %storemerge47.lcssa, %32 ]
  %storemerge1 = phi i32 [ 1, %12 ], [ %33, %32 ]
  %14 = icmp slt i32 %storemerge1, 6
  br i1 %14, label %15, label %34

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %29, %15
  %storemerge48.lcssa1 = phi i32 [ poison, %15 ], [ %storemerge48.lcssa, %29 ]
  %storemerge47 = phi i32 [ 1, %15 ], [ %30, %29 ]
  %17 = icmp slt i32 %storemerge47, 6
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %19, %storemerge1
  br label %20

20:                                               ; preds = %26, %18
  %storemerge48 = phi i32 [ 1, %18 ], [ %27, %26 ]
  %21 = icmp slt i32 %storemerge48, 6
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = shl i32 %storemerge48, 6
  %.reass = add i32 %23, %invariant.op
  %24 = sext i32 %.reass to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = add nsw i32 %storemerge48, 1
  br label %20, !llvm.loop !14

28:                                               ; preds = %20
  %storemerge48.lcssa = phi i32 [ %storemerge48, %20 ]
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %storemerge47, 1
  br label %16, !llvm.loop !15

31:                                               ; preds = %16
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %16 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %16 ]
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %storemerge1, 1
  br label %13, !llvm.loop !16

34:                                               ; preds = %13
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %13 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %13 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %13 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %35

35:                                               ; preds = %48, %34
  %storemerge46.lcssa4 = phi i32 [ poison, %34 ], [ %storemerge46.lcssa, %48 ]
  %storemerge2 = phi i32 [ 0, %34 ], [ %49, %48 ]
  %36 = icmp slt i32 %storemerge2, 13
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = sext i32 %storemerge2 to i64
  %39 = getelementptr inbounds [2048 x i8], ptr @p, i64 %38
  br label %40

40:                                               ; preds = %45, %37
  %storemerge46 = phi i32 [ 0, %37 ], [ %46, %45 ]
  %41 = icmp slt i32 %storemerge46, 512
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = sext i32 %storemerge46 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %39, i64 %43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %storemerge46, 1
  br label %40, !llvm.loop !17

47:                                               ; preds = %40
  %storemerge46.lcssa = phi i32 [ %storemerge46, %40 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %storemerge2, 1
  br label %35, !llvm.loop !18

50:                                               ; preds = %35
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %35 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %35 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %51

51:                                               ; preds = %70, %50
  %storemerge45.lcssa7.lcssa9 = phi i32 [ poison, %50 ], [ %storemerge45.lcssa7.lcssa, %70 ]
  %storemerge44.lcssa8 = phi i32 [ poison, %50 ], [ %storemerge44.lcssa, %70 ]
  %storemerge3 = phi i32 [ 0, %50 ], [ %71, %70 ]
  %52 = icmp slt i32 %storemerge3, 4
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %67, %53
  %storemerge45.lcssa7 = phi i32 [ poison, %53 ], [ %storemerge45.lcssa, %67 ]
  %storemerge44 = phi i32 [ 0, %53 ], [ %68, %67 ]
  %55 = icmp slt i32 %storemerge44, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %54
  %57 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %57, %storemerge3
  br label %58

58:                                               ; preds = %64, %56
  %storemerge45 = phi i32 [ 0, %56 ], [ %65, %64 ]
  %59 = icmp slt i32 %storemerge45, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %61, %invariant.op5
  %62 = sext i32 %.reass6 to i64
  %63 = getelementptr inbounds [4 x i8], ptr @p, i64 %62
  store i32 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = add nsw i32 %storemerge45, 1
  br label %58, !llvm.loop !19

66:                                               ; preds = %58
  %storemerge45.lcssa = phi i32 [ %storemerge45, %58 ]
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %storemerge44, 1
  br label %54, !llvm.loop !20

69:                                               ; preds = %54
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %54 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %54 ]
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %storemerge3, 1
  br label %51, !llvm.loop !21

72:                                               ; preds = %51
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %51 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %51 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %51 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %73

73:                                               ; preds = %92, %72
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %72 ], [ %storemerge43.lcssa12.lcssa, %92 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %72 ], [ %storemerge42.lcssa, %92 ]
  %storemerge4 = phi i32 [ 0, %72 ], [ %93, %92 ]
  %74 = icmp slt i32 %storemerge4, 2
  br i1 %74, label %75, label %94

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %89, %75
  %storemerge43.lcssa12 = phi i32 [ poison, %75 ], [ %storemerge43.lcssa, %89 ]
  %storemerge42 = phi i32 [ 0, %75 ], [ %90, %89 ]
  %77 = icmp slt i32 %storemerge42, 1
  br i1 %77, label %78, label %91

78:                                               ; preds = %76
  %79 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %79, %storemerge4
  br label %80

80:                                               ; preds = %86, %78
  %storemerge43 = phi i32 [ 0, %78 ], [ %87, %86 ]
  %81 = icmp slt i32 %storemerge43, 4
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %83, %invariant.op10
  %84 = sext i32 %.reass11 to i64
  %85 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %84
  store i32 1, ptr %85, align 4
  br label %86

86:                                               ; preds = %82
  %87 = add nsw i32 %storemerge43, 1
  br label %80, !llvm.loop !22

88:                                               ; preds = %80
  %storemerge43.lcssa = phi i32 [ %storemerge43, %80 ]
  br label %89

89:                                               ; preds = %88
  %90 = add nsw i32 %storemerge42, 1
  br label %76, !llvm.loop !23

91:                                               ; preds = %76
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %76 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %76 ]
  br label %92

92:                                               ; preds = %91
  %93 = add nsw i32 %storemerge4, 1
  br label %73, !llvm.loop !24

94:                                               ; preds = %73
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %73 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %73 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %73 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %95

95:                                               ; preds = %114, %94
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %94 ], [ %storemerge41.lcssa17.lcssa, %114 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %94 ], [ %storemerge40.lcssa, %114 ]
  %storemerge5 = phi i32 [ 0, %94 ], [ %115, %114 ]
  %96 = icmp slt i32 %storemerge5, 1
  br i1 %96, label %97, label %116

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %111, %97
  %storemerge41.lcssa17 = phi i32 [ poison, %97 ], [ %storemerge41.lcssa, %111 ]
  %storemerge40 = phi i32 [ 0, %97 ], [ %112, %111 ]
  %99 = icmp slt i32 %storemerge40, 4
  br i1 %99, label %100, label %113

100:                                              ; preds = %98
  %101 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %101, %storemerge5
  br label %102

102:                                              ; preds = %108, %100
  %storemerge41 = phi i32 [ 0, %100 ], [ %109, %108 ]
  %103 = icmp slt i32 %storemerge41, 2
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %105, %invariant.op15
  %106 = sext i32 %.reass16 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %106
  store i32 1, ptr %107, align 4
  br label %108

108:                                              ; preds = %104
  %109 = add nsw i32 %storemerge41, 1
  br label %102, !llvm.loop !25

110:                                              ; preds = %102
  %storemerge41.lcssa = phi i32 [ %storemerge41, %102 ]
  br label %111

111:                                              ; preds = %110
  %112 = add nsw i32 %storemerge40, 1
  br label %98, !llvm.loop !26

113:                                              ; preds = %98
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %98 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %98 ]
  br label %114

114:                                              ; preds = %113
  %115 = add nsw i32 %storemerge5, 1
  br label %95, !llvm.loop !27

116:                                              ; preds = %95
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %95 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %95 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %95 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %117

117:                                              ; preds = %136, %116
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %116 ], [ %storemerge39.lcssa22.lcssa, %136 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %116 ], [ %storemerge38.lcssa, %136 ]
  %storemerge6 = phi i32 [ 0, %116 ], [ %137, %136 ]
  %118 = icmp slt i32 %storemerge6, 2
  br i1 %118, label %119, label %138

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %133, %119
  %storemerge39.lcssa22 = phi i32 [ poison, %119 ], [ %storemerge39.lcssa, %133 ]
  %storemerge38 = phi i32 [ 0, %119 ], [ %134, %133 ]
  %121 = icmp slt i32 %storemerge38, 4
  br i1 %121, label %122, label %135

122:                                              ; preds = %120
  %123 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %123, %storemerge6
  br label %124

124:                                              ; preds = %130, %122
  %storemerge39 = phi i32 [ 0, %122 ], [ %131, %130 ]
  %125 = icmp slt i32 %storemerge39, 1
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %127, %invariant.op20
  %128 = sext i32 %.reass21 to i64
  %129 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %128
  store i32 1, ptr %129, align 4
  br label %130

130:                                              ; preds = %126
  %131 = add nsw i32 %storemerge39, 1
  br label %124, !llvm.loop !28

132:                                              ; preds = %124
  %storemerge39.lcssa = phi i32 [ %storemerge39, %124 ]
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %storemerge38, 1
  br label %120, !llvm.loop !29

135:                                              ; preds = %120
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %120 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %120 ]
  br label %136

136:                                              ; preds = %135
  %137 = add nsw i32 %storemerge6, 1
  br label %117, !llvm.loop !30

138:                                              ; preds = %117
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %117 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %117 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %117 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %139

139:                                              ; preds = %158, %138
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %138 ], [ %storemerge37.lcssa27.lcssa, %158 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %138 ], [ %storemerge36.lcssa, %158 ]
  %storemerge7 = phi i32 [ 0, %138 ], [ %159, %158 ]
  %140 = icmp slt i32 %storemerge7, 4
  br i1 %140, label %141, label %160

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %155, %141
  %storemerge37.lcssa27 = phi i32 [ poison, %141 ], [ %storemerge37.lcssa, %155 ]
  %storemerge36 = phi i32 [ 0, %141 ], [ %156, %155 ]
  %143 = icmp slt i32 %storemerge36, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %142
  %145 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %145, %storemerge7
  br label %146

146:                                              ; preds = %152, %144
  %storemerge37 = phi i32 [ 0, %144 ], [ %153, %152 ]
  %147 = icmp slt i32 %storemerge37, 2
  br i1 %147, label %148, label %154

148:                                              ; preds = %146
  %149 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %149, %invariant.op25
  %150 = sext i32 %.reass26 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %150
  store i32 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %148
  %153 = add nsw i32 %storemerge37, 1
  br label %146, !llvm.loop !31

154:                                              ; preds = %146
  %storemerge37.lcssa = phi i32 [ %storemerge37, %146 ]
  br label %155

155:                                              ; preds = %154
  %156 = add nsw i32 %storemerge36, 1
  br label %142, !llvm.loop !32

157:                                              ; preds = %142
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %142 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %142 ]
  br label %158

158:                                              ; preds = %157
  %159 = add nsw i32 %storemerge7, 1
  br label %139, !llvm.loop !33

160:                                              ; preds = %139
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %139 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %139 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %139 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %161

161:                                              ; preds = %180, %160
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %160 ], [ %storemerge35.lcssa32.lcssa, %180 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %160 ], [ %storemerge34.lcssa, %180 ]
  %storemerge8 = phi i32 [ 0, %160 ], [ %181, %180 ]
  %162 = icmp slt i32 %storemerge8, 1
  br i1 %162, label %163, label %182

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %177, %163
  %storemerge35.lcssa32 = phi i32 [ poison, %163 ], [ %storemerge35.lcssa, %177 ]
  %storemerge34 = phi i32 [ 0, %163 ], [ %178, %177 ]
  %165 = icmp slt i32 %storemerge34, 2
  br i1 %165, label %166, label %179

166:                                              ; preds = %164
  %167 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %167, %storemerge8
  br label %168

168:                                              ; preds = %174, %166
  %storemerge35 = phi i32 [ 0, %166 ], [ %175, %174 ]
  %169 = icmp slt i32 %storemerge35, 4
  br i1 %169, label %170, label %176

170:                                              ; preds = %168
  %171 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %171, %invariant.op30
  %172 = sext i32 %.reass31 to i64
  %173 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %172
  store i32 1, ptr %173, align 4
  br label %174

174:                                              ; preds = %170
  %175 = add nsw i32 %storemerge35, 1
  br label %168, !llvm.loop !34

176:                                              ; preds = %168
  %storemerge35.lcssa = phi i32 [ %storemerge35, %168 ]
  br label %177

177:                                              ; preds = %176
  %178 = add nsw i32 %storemerge34, 1
  br label %164, !llvm.loop !35

179:                                              ; preds = %164
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %164 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %164 ]
  br label %180

180:                                              ; preds = %179
  %181 = add nsw i32 %storemerge8, 1
  br label %161, !llvm.loop !36

182:                                              ; preds = %161
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %161 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %161 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %161 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %183

183:                                              ; preds = %202, %182
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %182 ], [ %storemerge33.lcssa37.lcssa, %202 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %182 ], [ %storemerge32.lcssa, %202 ]
  %storemerge9 = phi i32 [ 0, %182 ], [ %203, %202 ]
  %184 = icmp slt i32 %storemerge9, 3
  br i1 %184, label %185, label %204

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %199, %185
  %storemerge33.lcssa37 = phi i32 [ poison, %185 ], [ %storemerge33.lcssa, %199 ]
  %storemerge32 = phi i32 [ 0, %185 ], [ %200, %199 ]
  %187 = icmp slt i32 %storemerge32, 1
  br i1 %187, label %188, label %201

188:                                              ; preds = %186
  %189 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %189, %storemerge9
  br label %190

190:                                              ; preds = %196, %188
  %storemerge33 = phi i32 [ 0, %188 ], [ %197, %196 ]
  %191 = icmp slt i32 %storemerge33, 1
  br i1 %191, label %192, label %198

192:                                              ; preds = %190
  %193 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %193, %invariant.op35
  %194 = sext i32 %.reass36 to i64
  %195 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %194
  store i32 1, ptr %195, align 4
  br label %196

196:                                              ; preds = %192
  %197 = add nsw i32 %storemerge33, 1
  br label %190, !llvm.loop !37

198:                                              ; preds = %190
  %storemerge33.lcssa = phi i32 [ %storemerge33, %190 ]
  br label %199

199:                                              ; preds = %198
  %200 = add nsw i32 %storemerge32, 1
  br label %186, !llvm.loop !38

201:                                              ; preds = %186
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %186 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %186 ]
  br label %202

202:                                              ; preds = %201
  %203 = add nsw i32 %storemerge9, 1
  br label %183, !llvm.loop !39

204:                                              ; preds = %183
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %183 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %183 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %183 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %205

205:                                              ; preds = %224, %204
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %204 ], [ %storemerge31.lcssa42.lcssa, %224 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %204 ], [ %storemerge30.lcssa, %224 ]
  %storemerge10 = phi i32 [ 0, %204 ], [ %225, %224 ]
  %206 = icmp slt i32 %storemerge10, 1
  br i1 %206, label %207, label %226

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %221, %207
  %storemerge31.lcssa42 = phi i32 [ poison, %207 ], [ %storemerge31.lcssa, %221 ]
  %storemerge30 = phi i32 [ 0, %207 ], [ %222, %221 ]
  %209 = icmp slt i32 %storemerge30, 3
  br i1 %209, label %210, label %223

210:                                              ; preds = %208
  %211 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %211, %storemerge10
  br label %212

212:                                              ; preds = %218, %210
  %storemerge31 = phi i32 [ 0, %210 ], [ %219, %218 ]
  %213 = icmp slt i32 %storemerge31, 1
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %215, %invariant.op40
  %216 = sext i32 %.reass41 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %216
  store i32 1, ptr %217, align 4
  br label %218

218:                                              ; preds = %214
  %219 = add nsw i32 %storemerge31, 1
  br label %212, !llvm.loop !40

220:                                              ; preds = %212
  %storemerge31.lcssa = phi i32 [ %storemerge31, %212 ]
  br label %221

221:                                              ; preds = %220
  %222 = add nsw i32 %storemerge30, 1
  br label %208, !llvm.loop !41

223:                                              ; preds = %208
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %208 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %208 ]
  br label %224

224:                                              ; preds = %223
  %225 = add nsw i32 %storemerge10, 1
  br label %205, !llvm.loop !42

226:                                              ; preds = %205
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %205 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %205 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %205 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %227

227:                                              ; preds = %246, %226
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %226 ], [ %storemerge29.lcssa47.lcssa, %246 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %226 ], [ %storemerge28.lcssa, %246 ]
  %storemerge11 = phi i32 [ 0, %226 ], [ %247, %246 ]
  %228 = icmp slt i32 %storemerge11, 1
  br i1 %228, label %229, label %248

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %243, %229
  %storemerge29.lcssa47 = phi i32 [ poison, %229 ], [ %storemerge29.lcssa, %243 ]
  %storemerge28 = phi i32 [ 0, %229 ], [ %244, %243 ]
  %231 = icmp slt i32 %storemerge28, 1
  br i1 %231, label %232, label %245

232:                                              ; preds = %230
  %233 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %233, %storemerge11
  br label %234

234:                                              ; preds = %240, %232
  %storemerge29 = phi i32 [ 0, %232 ], [ %241, %240 ]
  %235 = icmp slt i32 %storemerge29, 3
  br i1 %235, label %236, label %242

236:                                              ; preds = %234
  %237 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %237, %invariant.op45
  %238 = sext i32 %.reass46 to i64
  %239 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %238
  store i32 1, ptr %239, align 4
  br label %240

240:                                              ; preds = %236
  %241 = add nsw i32 %storemerge29, 1
  br label %234, !llvm.loop !43

242:                                              ; preds = %234
  %storemerge29.lcssa = phi i32 [ %storemerge29, %234 ]
  br label %243

243:                                              ; preds = %242
  %244 = add nsw i32 %storemerge28, 1
  br label %230, !llvm.loop !44

245:                                              ; preds = %230
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %230 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %230 ]
  br label %246

246:                                              ; preds = %245
  %247 = add nsw i32 %storemerge11, 1
  br label %227, !llvm.loop !45

248:                                              ; preds = %227
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %227 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %227 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %227 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %249

249:                                              ; preds = %268, %248
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %248 ], [ %storemerge27.lcssa52.lcssa, %268 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %248 ], [ %storemerge26.lcssa, %268 ]
  %storemerge12 = phi i32 [ 0, %248 ], [ %269, %268 ]
  %250 = icmp slt i32 %storemerge12, 2
  br i1 %250, label %251, label %270

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %265, %251
  %storemerge27.lcssa52 = phi i32 [ poison, %251 ], [ %storemerge27.lcssa, %265 ]
  %storemerge26 = phi i32 [ 0, %251 ], [ %266, %265 ]
  %253 = icmp slt i32 %storemerge26, 2
  br i1 %253, label %254, label %267

254:                                              ; preds = %252
  %255 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %255, %storemerge12
  br label %256

256:                                              ; preds = %262, %254
  %storemerge27 = phi i32 [ 0, %254 ], [ %263, %262 ]
  %257 = icmp slt i32 %storemerge27, 1
  br i1 %257, label %258, label %264

258:                                              ; preds = %256
  %259 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %259, %invariant.op50
  %260 = sext i32 %.reass51 to i64
  %261 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %260
  store i32 1, ptr %261, align 4
  br label %262

262:                                              ; preds = %258
  %263 = add nsw i32 %storemerge27, 1
  br label %256, !llvm.loop !46

264:                                              ; preds = %256
  %storemerge27.lcssa = phi i32 [ %storemerge27, %256 ]
  br label %265

265:                                              ; preds = %264
  %266 = add nsw i32 %storemerge26, 1
  br label %252, !llvm.loop !47

267:                                              ; preds = %252
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %252 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %252 ]
  br label %268

268:                                              ; preds = %267
  %269 = add nsw i32 %storemerge12, 1
  br label %249, !llvm.loop !48

270:                                              ; preds = %249
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %249 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %249 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %249 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %271

271:                                              ; preds = %290, %270
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %270 ], [ %storemerge25.lcssa57.lcssa, %290 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %270 ], [ %storemerge24.lcssa, %290 ]
  %storemerge13 = phi i32 [ 0, %270 ], [ %291, %290 ]
  %272 = icmp slt i32 %storemerge13, 2
  br i1 %272, label %273, label %292

273:                                              ; preds = %271
  br label %274

274:                                              ; preds = %287, %273
  %storemerge25.lcssa57 = phi i32 [ poison, %273 ], [ %storemerge25.lcssa, %287 ]
  %storemerge24 = phi i32 [ 0, %273 ], [ %288, %287 ]
  %275 = icmp slt i32 %storemerge24, 1
  br i1 %275, label %276, label %289

276:                                              ; preds = %274
  %277 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %277, %storemerge13
  br label %278

278:                                              ; preds = %284, %276
  %storemerge25 = phi i32 [ 0, %276 ], [ %285, %284 ]
  %279 = icmp slt i32 %storemerge25, 2
  br i1 %279, label %280, label %286

280:                                              ; preds = %278
  %281 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %281, %invariant.op55
  %282 = sext i32 %.reass56 to i64
  %283 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %282
  store i32 1, ptr %283, align 4
  br label %284

284:                                              ; preds = %280
  %285 = add nsw i32 %storemerge25, 1
  br label %278, !llvm.loop !49

286:                                              ; preds = %278
  %storemerge25.lcssa = phi i32 [ %storemerge25, %278 ]
  br label %287

287:                                              ; preds = %286
  %288 = add nsw i32 %storemerge24, 1
  br label %274, !llvm.loop !50

289:                                              ; preds = %274
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %274 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %274 ]
  br label %290

290:                                              ; preds = %289
  %291 = add nsw i32 %storemerge13, 1
  br label %271, !llvm.loop !51

292:                                              ; preds = %271
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %271 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %271 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %271 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %293

293:                                              ; preds = %312, %292
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %292 ], [ %storemerge23.lcssa62.lcssa, %312 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %292 ], [ %storemerge22.lcssa, %312 ]
  %storemerge14 = phi i32 [ 0, %292 ], [ %313, %312 ]
  %294 = icmp slt i32 %storemerge14, 1
  br i1 %294, label %295, label %314

295:                                              ; preds = %293
  br label %296

296:                                              ; preds = %309, %295
  %storemerge23.lcssa62 = phi i32 [ poison, %295 ], [ %storemerge23.lcssa, %309 ]
  %storemerge22 = phi i32 [ 0, %295 ], [ %310, %309 ]
  %297 = icmp slt i32 %storemerge22, 2
  br i1 %297, label %298, label %311

298:                                              ; preds = %296
  %299 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %299, %storemerge14
  br label %300

300:                                              ; preds = %306, %298
  %storemerge23 = phi i32 [ 0, %298 ], [ %307, %306 ]
  %301 = icmp slt i32 %storemerge23, 2
  br i1 %301, label %302, label %308

302:                                              ; preds = %300
  %303 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %303, %invariant.op60
  %304 = sext i32 %.reass61 to i64
  %305 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %304
  store i32 1, ptr %305, align 4
  br label %306

306:                                              ; preds = %302
  %307 = add nsw i32 %storemerge23, 1
  br label %300, !llvm.loop !52

308:                                              ; preds = %300
  %storemerge23.lcssa = phi i32 [ %storemerge23, %300 ]
  br label %309

309:                                              ; preds = %308
  %310 = add nsw i32 %storemerge22, 1
  br label %296, !llvm.loop !53

311:                                              ; preds = %296
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %296 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %296 ]
  br label %312

312:                                              ; preds = %311
  %313 = add nsw i32 %storemerge14, 1
  br label %293, !llvm.loop !54

314:                                              ; preds = %293
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %293 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %293 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %293 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %315

315:                                              ; preds = %334, %314
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %314 ], [ %storemerge21.lcssa67.lcssa, %334 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %314 ], [ %storemerge20.lcssa, %334 ]
  %storemerge15 = phi i32 [ 0, %314 ], [ %335, %334 ]
  %316 = icmp slt i32 %storemerge15, 2
  br i1 %316, label %317, label %336

317:                                              ; preds = %315
  br label %318

318:                                              ; preds = %331, %317
  %storemerge21.lcssa67 = phi i32 [ poison, %317 ], [ %storemerge21.lcssa, %331 ]
  %storemerge20 = phi i32 [ 0, %317 ], [ %332, %331 ]
  %319 = icmp slt i32 %storemerge20, 2
  br i1 %319, label %320, label %333

320:                                              ; preds = %318
  %321 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %321, %storemerge15
  br label %322

322:                                              ; preds = %328, %320
  %storemerge21 = phi i32 [ 0, %320 ], [ %329, %328 ]
  %323 = icmp slt i32 %storemerge21, 2
  br i1 %323, label %324, label %330

324:                                              ; preds = %322
  %325 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %325, %invariant.op65
  %326 = sext i32 %.reass66 to i64
  %327 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %326
  store i32 1, ptr %327, align 4
  br label %328

328:                                              ; preds = %324
  %329 = add nsw i32 %storemerge21, 1
  br label %322, !llvm.loop !55

330:                                              ; preds = %322
  %storemerge21.lcssa = phi i32 [ %storemerge21, %322 ]
  br label %331

331:                                              ; preds = %330
  %332 = add nsw i32 %storemerge20, 1
  br label %318, !llvm.loop !56

333:                                              ; preds = %318
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %318 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %318 ]
  br label %334

334:                                              ; preds = %333
  %335 = add nsw i32 %storemerge15, 1
  br label %315, !llvm.loop !57

336:                                              ; preds = %315
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %315 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %315 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %315 ]
  store i32 %storemerge15.lcssa, ptr %1, align 4
  store i32 %storemerge20.lcssa68.lcssa, ptr %2, align 4
  store i32 %storemerge21.lcssa67.lcssa69.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %337 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %337, 0
  br i1 %.not, label %341, label %338

338:                                              ; preds = %336
  %339 = load i32, ptr %4, align 4
  %340 = call i32 @Place(i32 noundef 0, i32 noundef %339)
  store i32 %340, ptr @n, align 4
  br label %342

341:                                              ; preds = %336
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %342

342:                                              ; preds = %341, %338
  %343 = load i32, ptr @n, align 4
  %344 = call i32 @Trial(i32 noundef %343)
  %.not16 = icmp eq i32 %344, 0
  br i1 %.not16, label %345, label %346

345:                                              ; preds = %342
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %350

346:                                              ; preds = %342
  %347 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %347, 2005
  br i1 %.not18, label %349, label %348

348:                                              ; preds = %346
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %349

349:                                              ; preds = %348, %346
  br label %350

350:                                              ; preds = %349, %345
  %351 = load i32, ptr @n, align 4
  %352 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %351) #4
  %353 = load i32, ptr @kount, align 4
  %354 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %353) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %5 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Puzzle()
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
