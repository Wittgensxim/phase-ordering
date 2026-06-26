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
  %wide.trip.count = sext i32 %smax to i64
  br label %33

33:                                               ; preds = %41, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ %32, %24 ]
  %34 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %35, label %42

35:                                               ; preds = %33
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %37 = load i32, ptr %36, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %40

38:                                               ; preds = %35
  %.lcssa2 = phi i32 [ %34, %35 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %35 ]
  store i32 %.lcssa2, ptr %5, align 4
  %39 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !10

42:                                               ; preds = %33
  %.lcssa1 = phi i32 [ %34, %33 ]
  store i32 %.lcssa1, ptr %5, align 4
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

5:                                                ; preds = %20, %0
  %storemerge = phi i32 [ 0, %0 ], [ %21, %20 ]
  br label %6

6:                                                ; preds = %5
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %6
  %10 = add nuw nsw i32 %storemerge, 1
  br label %11

11:                                               ; preds = %9
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %storemerge, 2
  %16 = icmp samesign ult i32 %15, 512
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %storemerge, 3
  br label %5, !llvm.loop !13

22:                                               ; preds = %14
  %storemerge.lcssa = phi i32 [ %15, %14 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %23

23:                                               ; preds = %59, %22
  %storemerge48.lcssa1.lcssa3 = phi i32 [ poison, %22 ], [ %storemerge48.lcssa1.lcssa, %59 ]
  %storemerge47.lcssa2 = phi i32 [ poison, %22 ], [ %storemerge47.lcssa, %59 ]
  %storemerge1 = phi i32 [ 1, %22 ], [ %60, %59 ]
  %24 = icmp slt i32 %storemerge1, 6
  br i1 %24, label %25, label %61

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %56, %25
  %storemerge48.lcssa1 = phi i32 [ poison, %25 ], [ %storemerge48.lcssa, %56 ]
  %storemerge47 = phi i32 [ 1, %25 ], [ %57, %56 ]
  %27 = icmp slt i32 %storemerge47, 6
  br i1 %27, label %28, label %58

28:                                               ; preds = %26
  %29 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %29, %storemerge1
  br label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %.reass = add i32 64, %invariant.op
  %32 = sext i32 %.reass to i64
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %.reass.1 = add i32 128, %invariant.op
  %36 = sext i32 %.reass.1 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  %.reass.2 = add i32 192, %invariant.op
  %40 = sext i32 %.reass.2 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42
  %.reass.3 = add i32 256, %invariant.op
  %44 = sext i32 %.reass.3 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46
  %.reass.4 = add i32 320, %invariant.op
  %48 = sext i32 %.reass.4 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %47
  br i1 false, label %51, label %55

51:                                               ; preds = %50
  %invariant.op.lcssa = phi i32 [ %invariant.op, %50 ]
  %.reass.5 = add i32 384, %invariant.op.lcssa
  %52 = sext i32 %.reass.5 to i64
  %53 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %52
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %51
  unreachable

55:                                               ; preds = %50
  %storemerge48.lcssa = phi i32 [ 6, %50 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %storemerge47, 1
  br label %26, !llvm.loop !14

58:                                               ; preds = %26
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %26 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %26 ]
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %storemerge1, 1
  br label %23, !llvm.loop !15

61:                                               ; preds = %23
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %23 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %23 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %23 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %62

62:                                               ; preds = %85, %61
  %storemerge46.lcssa4 = phi i32 [ poison, %61 ], [ %storemerge46.lcssa, %85 ]
  %storemerge2 = phi i32 [ 0, %61 ], [ %86, %85 ]
  %63 = icmp slt i32 %storemerge2, 13
  br i1 %63, label %64, label %87

64:                                               ; preds = %62
  %65 = sext i32 %storemerge2 to i64
  %66 = getelementptr inbounds [2048 x i8], ptr @p, i64 %65
  br label %67

67:                                               ; preds = %82, %64
  %storemerge46 = phi i32 [ 0, %64 ], [ %83, %82 ]
  br label %68

68:                                               ; preds = %67
  %69 = sext i32 %storemerge46 to i64
  %70 = getelementptr inbounds [4 x i8], ptr %66, i64 %69
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %storemerge46, 1
  br label %73

73:                                               ; preds = %71
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [4 x i8], ptr %66, i64 %74
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %73
  %77 = add nuw nsw i32 %storemerge46, 2
  %78 = icmp samesign ult i32 %77, 512
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds [4 x i8], ptr %66, i64 %80
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %79
  %83 = add nuw nsw i32 %storemerge46, 3
  br label %67, !llvm.loop !16

84:                                               ; preds = %76
  %storemerge46.lcssa = phi i32 [ %77, %76 ]
  br label %85

85:                                               ; preds = %84
  %86 = add nsw i32 %storemerge2, 1
  br label %62, !llvm.loop !17

87:                                               ; preds = %62
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %62 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %62 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  store i32 1, ptr @p, align 4
  br label %94

94:                                               ; preds = %93
  br i1 false, label %.loopexit, label %99

.loopexit:                                        ; preds = %176, %170, %160, %154, %144, %138, %128, %122, %94, %104
  %invariant.op5.lcssa.ph = phi i32 [ 8, %104 ], [ 0, %94 ], [ 1, %122 ], [ 9, %128 ], [ 2, %138 ], [ 10, %144 ], [ 3, %154 ], [ 11, %160 ], [ 4, %170 ], [ 12, %176 ]
  br label %95

95:                                               ; preds = %.loopexit, %112
  %invariant.op5.lcssa = phi i32 [ %invariant.op5.2, %112 ], [ %invariant.op5.lcssa.ph, %.loopexit ]
  %.reass6.1 = add i32 64, %invariant.op5.lcssa
  %96 = sext i32 %.reass6.1 to i64
  %97 = getelementptr inbounds [4 x i8], ptr @p, i64 %96
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %95
  unreachable

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %104

104:                                              ; preds = %103
  br i1 false, label %.loopexit, label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105
  br i1 false, label %107, label %115

107:                                              ; preds = %178, %162, %146, %130, %106
  %storemerge3.lcssa72 = phi i32 [ 0, %106 ], [ 1, %130 ], [ 2, %146 ], [ 3, %162 ], [ 4, %178 ]
  %invariant.op5.2 = add i32 16, %storemerge3.lcssa72
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = sext i32 %invariant.op5.2 to i64
  %111 = getelementptr inbounds [4 x i8], ptr @p, i64 %110
  store i32 1, ptr %111, align 4
  br label %112

112:                                              ; preds = %109
  br i1 false, label %95, label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  unreachable

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br label %122

122:                                              ; preds = %121
  br i1 false, label %.loopexit, label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %128

128:                                              ; preds = %127
  br i1 false, label %.loopexit, label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br i1 false, label %107, label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br label %138

138:                                              ; preds = %137
  br i1 false, label %.loopexit, label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %144

144:                                              ; preds = %143
  br i1 false, label %.loopexit, label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  br i1 false, label %107, label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br label %154

154:                                              ; preds = %153
  br i1 false, label %.loopexit, label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br label %160

160:                                              ; preds = %159
  br i1 false, label %.loopexit, label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  br i1 false, label %107, label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br i1 false, label %165, label %181

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br label %170

170:                                              ; preds = %169
  br i1 false, label %.loopexit, label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br label %176

176:                                              ; preds = %175
  br i1 false, label %.loopexit, label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br i1 false, label %107, label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  unreachable

181:                                              ; preds = %164
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ 1, %164 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ 2, %164 ]
  %storemerge3.lcssa = phi i32 [ 4, %164 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %194

194:                                              ; preds = %193
  br i1 false, label %.loopexit76, label %199

.loopexit76:                                      ; preds = %250, %234, %194
  %invariant.op10.lcssa.ph = phi i32 [ 0, %194 ], [ 1, %234 ], [ 2, %250 ]
  br label %195

195:                                              ; preds = %.loopexit76, %218
  %invariant.op10.lcssa = phi i32 [ %invariant.op10.1, %218 ], [ %invariant.op10.lcssa.ph, %.loopexit76 ]
  %.reass11.4 = add i32 256, %invariant.op10.lcssa
  %196 = sext i32 %.reass11.4 to i64
  %197 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %196
  store i32 1, ptr %197, align 4
  br label %198

198:                                              ; preds = %195
  unreachable

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %199
  br i1 false, label %201, label %221

201:                                              ; preds = %252, %236, %200
  %storemerge4.lcssa74 = phi i32 [ 0, %200 ], [ 1, %236 ], [ 2, %252 ]
  %invariant.op10.1 = add i32 8, %storemerge4.lcssa74
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  %204 = sext i32 %invariant.op10.1 to i64
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %204
  store i32 1, ptr %205, align 4
  br label %206

206:                                              ; preds = %203
  br label %207

207:                                              ; preds = %206
  %.reass11.1.1 = add i32 64, %invariant.op10.1
  %208 = sext i32 %.reass11.1.1 to i64
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %208
  store i32 1, ptr %209, align 4
  br label %210

210:                                              ; preds = %207
  br label %211

211:                                              ; preds = %210
  %.reass11.2.1 = add i32 128, %invariant.op10.1
  %212 = sext i32 %.reass11.2.1 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %212
  store i32 1, ptr %213, align 4
  br label %214

214:                                              ; preds = %211
  br label %215

215:                                              ; preds = %214
  %.reass11.3.1 = add i32 192, %invariant.op10.1
  %216 = sext i32 %.reass11.3.1 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %216
  store i32 1, ptr %217, align 4
  br label %218

218:                                              ; preds = %215
  br i1 false, label %195, label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  unreachable

221:                                              ; preds = %200
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br label %234

234:                                              ; preds = %233
  br i1 false, label %.loopexit76, label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  br i1 false, label %201, label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br i1 false, label %239, label %255

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br label %250

250:                                              ; preds = %249
  br i1 false, label %.loopexit76, label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br i1 false, label %201, label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  unreachable

255:                                              ; preds = %238
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ 4, %238 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ 1, %238 ]
  %storemerge4.lcssa = phi i32 [ 2, %238 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %264

264:                                              ; preds = %263
  br i1 false, label %.loopexit83, label %269

.loopexit83:                                      ; preds = %340, %332, %324, %316, %264, %276, %284, %292
  %invariant.op15.lcssa.ph = phi i32 [ 24, %292 ], [ 16, %284 ], [ 8, %276 ], [ 0, %264 ], [ 1, %316 ], [ 9, %324 ], [ 17, %332 ], [ 25, %340 ]
  br label %265

265:                                              ; preds = %.loopexit83, %304
  %invariant.op15.lcssa = phi i32 [ %invariant.op15.4, %304 ], [ %invariant.op15.lcssa.ph, %.loopexit83 ]
  %.reass16.2 = add i32 128, %invariant.op15.lcssa
  %266 = sext i32 %.reass16.2 to i64
  %267 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %266
  store i32 1, ptr %267, align 4
  br label %268

268:                                              ; preds = %265
  unreachable

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %276

276:                                              ; preds = %275
  br i1 false, label %.loopexit83, label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %284

284:                                              ; preds = %283
  br i1 false, label %.loopexit83, label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br label %292

292:                                              ; preds = %291
  br i1 false, label %.loopexit83, label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  br i1 false, label %295, label %307

295:                                              ; preds = %342, %294
  %storemerge5.lcssa82 = phi i32 [ 0, %294 ], [ 1, %342 ]
  %invariant.op15.4 = add i32 32, %storemerge5.lcssa82
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  %298 = sext i32 %invariant.op15.4 to i64
  %299 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %298
  store i32 1, ptr %299, align 4
  br label %300

300:                                              ; preds = %297
  br label %301

301:                                              ; preds = %300
  %.reass16.1.4 = add i32 64, %invariant.op15.4
  %302 = sext i32 %.reass16.1.4 to i64
  %303 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %302
  store i32 1, ptr %303, align 4
  br label %304

304:                                              ; preds = %301
  br i1 false, label %265, label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  unreachable

307:                                              ; preds = %294
  br label %308

308:                                              ; preds = %307
  br i1 false, label %309, label %345

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br label %316

316:                                              ; preds = %315
  br i1 false, label %.loopexit83, label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br label %324

324:                                              ; preds = %323
  br i1 false, label %.loopexit83, label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br label %332

332:                                              ; preds = %331
  br i1 false, label %.loopexit83, label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br label %340

340:                                              ; preds = %339
  br i1 false, label %.loopexit83, label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  br i1 false, label %295, label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343
  unreachable

345:                                              ; preds = %308
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ 2, %308 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ 4, %308 ]
  %storemerge5.lcssa = phi i32 [ 1, %308 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br label %352

352:                                              ; preds = %351
  br i1 false, label %.loopexit88, label %357

.loopexit88:                                      ; preds = %438, %432, %426, %420, %410, %404, %398, %392, %352, %362, %368, %374
  %invariant.op20.lcssa.ph = phi i32 [ 24, %374 ], [ 16, %368 ], [ 8, %362 ], [ 0, %352 ], [ 1, %392 ], [ 9, %398 ], [ 17, %404 ], [ 25, %410 ], [ 2, %420 ], [ 10, %426 ], [ 18, %432 ], [ 26, %438 ]
  br label %353

353:                                              ; preds = %.loopexit88, %382
  %invariant.op20.lcssa = phi i32 [ %invariant.op20.4, %382 ], [ %invariant.op20.lcssa.ph, %.loopexit88 ]
  %.reass21.1 = add i32 64, %invariant.op20.lcssa
  %354 = sext i32 %.reass21.1 to i64
  %355 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %354
  store i32 1, ptr %355, align 4
  br label %356

356:                                              ; preds = %353
  unreachable

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359
  br label %361

361:                                              ; preds = %360
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br label %362

362:                                              ; preds = %361
  br i1 false, label %.loopexit88, label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br label %368

368:                                              ; preds = %367
  br i1 false, label %.loopexit88, label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %374

374:                                              ; preds = %373
  br i1 false, label %.loopexit88, label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %375
  br i1 false, label %377, label %385

377:                                              ; preds = %440, %412, %376
  %storemerge6.lcssa87 = phi i32 [ 0, %376 ], [ 1, %412 ], [ 2, %440 ]
  %invariant.op20.4 = add i32 32, %storemerge6.lcssa87
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  %380 = sext i32 %invariant.op20.4 to i64
  %381 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %380
  store i32 1, ptr %381, align 4
  br label %382

382:                                              ; preds = %379
  br i1 false, label %353, label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  unreachable

385:                                              ; preds = %376
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br label %392

392:                                              ; preds = %391
  br i1 false, label %.loopexit88, label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br label %398

398:                                              ; preds = %397
  br i1 false, label %.loopexit88, label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  br label %403

403:                                              ; preds = %402
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br label %404

404:                                              ; preds = %403
  br i1 false, label %.loopexit88, label %405

405:                                              ; preds = %404
  br label %406

406:                                              ; preds = %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br label %410

410:                                              ; preds = %409
  br i1 false, label %.loopexit88, label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br i1 false, label %377, label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  br i1 false, label %415, label %443

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br label %420

420:                                              ; preds = %419
  br i1 false, label %.loopexit88, label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  br label %425

425:                                              ; preds = %424
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br label %426

426:                                              ; preds = %425
  br i1 false, label %.loopexit88, label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br label %432

432:                                              ; preds = %431
  br i1 false, label %.loopexit88, label %433

433:                                              ; preds = %432
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br label %438

438:                                              ; preds = %437
  br i1 false, label %.loopexit88, label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439
  br i1 false, label %377, label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  unreachable

443:                                              ; preds = %414
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ 1, %414 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ 4, %414 ]
  %storemerge6.lcssa = phi i32 [ 2, %414 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %452

452:                                              ; preds = %451
  br i1 false, label %.loopexit92, label %457

.loopexit92:                                      ; preds = %516, %504, %492, %480, %452
  %invariant.op25.lcssa.ph = phi i32 [ 0, %452 ], [ 1, %480 ], [ 2, %492 ], [ 3, %504 ], [ 4, %516 ]
  br label %453

453:                                              ; preds = %.loopexit92, %468
  %invariant.op25.lcssa = phi i32 [ %invariant.op25.1, %468 ], [ %invariant.op25.lcssa.ph, %.loopexit92 ]
  %.reass26.2 = add i32 128, %invariant.op25.lcssa
  %454 = sext i32 %.reass26.2 to i64
  %455 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %454
  store i32 1, ptr %455, align 4
  br label %456

456:                                              ; preds = %453
  unreachable

457:                                              ; preds = %452
  br label %458

458:                                              ; preds = %457
  br i1 false, label %459, label %471

459:                                              ; preds = %518, %506, %494, %482, %458
  %storemerge7.lcssa90 = phi i32 [ 0, %458 ], [ 1, %482 ], [ 2, %494 ], [ 3, %506 ], [ 4, %518 ]
  %invariant.op25.1 = add i32 8, %storemerge7.lcssa90
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  %462 = sext i32 %invariant.op25.1 to i64
  %463 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %462
  store i32 1, ptr %463, align 4
  br label %464

464:                                              ; preds = %461
  br label %465

465:                                              ; preds = %464
  %.reass26.1.1 = add i32 64, %invariant.op25.1
  %466 = sext i32 %.reass26.1.1 to i64
  %467 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %466
  store i32 1, ptr %467, align 4
  br label %468

468:                                              ; preds = %465
  br i1 false, label %453, label %469

469:                                              ; preds = %468
  br label %470

470:                                              ; preds = %469
  unreachable

471:                                              ; preds = %458
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %480

480:                                              ; preds = %479
  br i1 false, label %.loopexit92, label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %481
  br i1 false, label %459, label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  br label %485

485:                                              ; preds = %484
  br label %486

486:                                              ; preds = %485
  br label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %490

490:                                              ; preds = %489
  br label %491

491:                                              ; preds = %490
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %492

492:                                              ; preds = %491
  br i1 false, label %.loopexit92, label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  br i1 false, label %459, label %495

495:                                              ; preds = %494
  br label %496

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %496
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  br label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br label %504

504:                                              ; preds = %503
  br i1 false, label %.loopexit92, label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505
  br i1 false, label %459, label %507

507:                                              ; preds = %506
  br label %508

508:                                              ; preds = %507
  br i1 false, label %509, label %521

509:                                              ; preds = %508
  br label %510

510:                                              ; preds = %509
  br label %511

511:                                              ; preds = %510
  br label %512

512:                                              ; preds = %511
  br label %513

513:                                              ; preds = %512
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %514

514:                                              ; preds = %513
  br label %515

515:                                              ; preds = %514
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br label %516

516:                                              ; preds = %515
  br i1 false, label %.loopexit92, label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  br i1 false, label %459, label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  unreachable

521:                                              ; preds = %508
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ 2, %508 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ 1, %508 ]
  %storemerge7.lcssa = phi i32 [ 4, %508 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  br label %526

526:                                              ; preds = %525
  br label %527

527:                                              ; preds = %526
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %534

534:                                              ; preds = %533
  br i1 false, label %.loopexit97, label %539

.loopexit97:                                      ; preds = %598, %586, %534, %550
  %invariant.op30.lcssa.ph = phi i32 [ 8, %550 ], [ 0, %534 ], [ 1, %586 ], [ 9, %598 ]
  br label %535

535:                                              ; preds = %.loopexit97, %570
  %invariant.op30.lcssa = phi i32 [ %invariant.op30.2, %570 ], [ %invariant.op30.lcssa.ph, %.loopexit97 ]
  %.reass31.4 = add i32 256, %invariant.op30.lcssa
  %536 = sext i32 %.reass31.4 to i64
  %537 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %536
  store i32 1, ptr %537, align 4
  br label %538

538:                                              ; preds = %535
  unreachable

539:                                              ; preds = %534
  br label %540

540:                                              ; preds = %539
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %546

546:                                              ; preds = %545
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %548

548:                                              ; preds = %547
  br label %549

549:                                              ; preds = %548
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br label %550

550:                                              ; preds = %549
  br i1 false, label %.loopexit97, label %551

551:                                              ; preds = %550
  br label %552

552:                                              ; preds = %551
  br i1 false, label %553, label %573

553:                                              ; preds = %600, %552
  %storemerge8.lcssa96 = phi i32 [ 0, %552 ], [ 1, %600 ]
  %invariant.op30.2 = add i32 16, %storemerge8.lcssa96
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  %556 = sext i32 %invariant.op30.2 to i64
  %557 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %556
  store i32 1, ptr %557, align 4
  br label %558

558:                                              ; preds = %555
  br label %559

559:                                              ; preds = %558
  %.reass31.1.2 = add i32 64, %invariant.op30.2
  %560 = sext i32 %.reass31.1.2 to i64
  %561 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %560
  store i32 1, ptr %561, align 4
  br label %562

562:                                              ; preds = %559
  br label %563

563:                                              ; preds = %562
  %.reass31.2.2 = add i32 128, %invariant.op30.2
  %564 = sext i32 %.reass31.2.2 to i64
  %565 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %564
  store i32 1, ptr %565, align 4
  br label %566

566:                                              ; preds = %563
  br label %567

567:                                              ; preds = %566
  %.reass31.3.2 = add i32 192, %invariant.op30.2
  %568 = sext i32 %.reass31.3.2 to i64
  %569 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %568
  store i32 1, ptr %569, align 4
  br label %570

570:                                              ; preds = %567
  br i1 false, label %535, label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  unreachable

573:                                              ; preds = %552
  br label %574

574:                                              ; preds = %573
  br i1 false, label %575, label %603

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %584

584:                                              ; preds = %583
  br label %585

585:                                              ; preds = %584
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br label %586

586:                                              ; preds = %585
  br i1 false, label %.loopexit97, label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %594

594:                                              ; preds = %593
  br label %595

595:                                              ; preds = %594
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %596

596:                                              ; preds = %595
  br label %597

597:                                              ; preds = %596
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br label %598

598:                                              ; preds = %597
  br i1 false, label %.loopexit97, label %599

599:                                              ; preds = %598
  br label %600

600:                                              ; preds = %599
  br i1 false, label %553, label %601

601:                                              ; preds = %600
  br label %602

602:                                              ; preds = %601
  unreachable

603:                                              ; preds = %574
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ 4, %574 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ 2, %574 ]
  %storemerge8.lcssa = phi i32 [ 1, %574 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %604

604:                                              ; preds = %603
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br label %610

610:                                              ; preds = %609
  br i1 false, label %.loopexit104, label %615

.loopexit104:                                     ; preds = %652, %642, %632, %610
  %invariant.op35.lcssa.ph = phi i32 [ 0, %610 ], [ 1, %632 ], [ 2, %642 ], [ 3, %652 ]
  br label %611

611:                                              ; preds = %.loopexit104, %622
  %invariant.op35.lcssa = phi i32 [ %invariant.op35.1, %622 ], [ %invariant.op35.lcssa.ph, %.loopexit104 ]
  %.reass36.1 = add i32 64, %invariant.op35.lcssa
  %612 = sext i32 %.reass36.1 to i64
  %613 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %612
  store i32 1, ptr %613, align 4
  br label %614

614:                                              ; preds = %611
  unreachable

615:                                              ; preds = %610
  br label %616

616:                                              ; preds = %615
  br i1 false, label %617, label %625

617:                                              ; preds = %654, %644, %634, %616
  %storemerge9.lcssa102 = phi i32 [ 0, %616 ], [ 1, %634 ], [ 2, %644 ], [ 3, %654 ]
  %invariant.op35.1 = add i32 8, %storemerge9.lcssa102
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  %620 = sext i32 %invariant.op35.1 to i64
  %621 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %620
  store i32 1, ptr %621, align 4
  br label %622

622:                                              ; preds = %619
  br i1 false, label %611, label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  unreachable

625:                                              ; preds = %616
  br label %626

626:                                              ; preds = %625
  br label %627

627:                                              ; preds = %626
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br label %632

632:                                              ; preds = %631
  br i1 false, label %.loopexit104, label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  br i1 false, label %617, label %635

635:                                              ; preds = %634
  br label %636

636:                                              ; preds = %635
  br label %637

637:                                              ; preds = %636
  br label %638

638:                                              ; preds = %637
  br label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639
  br label %641

641:                                              ; preds = %640
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br label %642

642:                                              ; preds = %641
  br i1 false, label %.loopexit104, label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  br i1 false, label %617, label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br i1 false, label %647, label %657

647:                                              ; preds = %646
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br label %652

652:                                              ; preds = %651
  br i1 false, label %.loopexit104, label %653

653:                                              ; preds = %652
  br label %654

654:                                              ; preds = %653
  br i1 false, label %617, label %655

655:                                              ; preds = %654
  br label %656

656:                                              ; preds = %655
  unreachable

657:                                              ; preds = %646
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ 1, %646 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ 1, %646 ]
  %storemerge9.lcssa = phi i32 [ 3, %646 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br label %664

664:                                              ; preds = %663
  br i1 false, label %.loopexit108, label %669

.loopexit108:                                     ; preds = %710, %704, %698, %664, %674, %680
  %invariant.op40.lcssa.ph = phi i32 [ 16, %680 ], [ 8, %674 ], [ 0, %664 ], [ 1, %698 ], [ 9, %704 ], [ 17, %710 ]
  br label %665

665:                                              ; preds = %.loopexit108, %688
  %invariant.op40.lcssa = phi i32 [ %invariant.op40.3, %688 ], [ %invariant.op40.lcssa.ph, %.loopexit108 ]
  %.reass41.1 = add i32 64, %invariant.op40.lcssa
  %666 = sext i32 %.reass41.1 to i64
  %667 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %666
  store i32 1, ptr %667, align 4
  br label %668

668:                                              ; preds = %665
  unreachable

669:                                              ; preds = %664
  br label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br label %674

674:                                              ; preds = %673
  br i1 false, label %.loopexit108, label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  br label %677

677:                                              ; preds = %676
  br label %678

678:                                              ; preds = %677
  br label %679

679:                                              ; preds = %678
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br label %680

680:                                              ; preds = %679
  br i1 false, label %.loopexit108, label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br i1 false, label %683, label %691

683:                                              ; preds = %712, %682
  %storemerge10.lcssa107 = phi i32 [ 0, %682 ], [ 1, %712 ]
  %invariant.op40.3 = add i32 24, %storemerge10.lcssa107
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  %686 = sext i32 %invariant.op40.3 to i64
  %687 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %686
  store i32 1, ptr %687, align 4
  br label %688

688:                                              ; preds = %685
  br i1 false, label %665, label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  unreachable

691:                                              ; preds = %682
  br label %692

692:                                              ; preds = %691
  br i1 false, label %693, label %715

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  br label %697

697:                                              ; preds = %696
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br label %698

698:                                              ; preds = %697
  br i1 false, label %.loopexit108, label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701
  br label %703

703:                                              ; preds = %702
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br label %704

704:                                              ; preds = %703
  br i1 false, label %.loopexit108, label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  br label %709

709:                                              ; preds = %708
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br label %710

710:                                              ; preds = %709
  br i1 false, label %.loopexit108, label %711

711:                                              ; preds = %710
  br label %712

712:                                              ; preds = %711
  br i1 false, label %683, label %713

713:                                              ; preds = %712
  br label %714

714:                                              ; preds = %713
  unreachable

715:                                              ; preds = %692
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ 1, %692 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ 3, %692 ]
  %storemerge10.lcssa = phi i32 [ 1, %692 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %716

716:                                              ; preds = %715
  br label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718
  br label %720

720:                                              ; preds = %719
  br label %721

721:                                              ; preds = %720
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %722

722:                                              ; preds = %721
  br label %723

723:                                              ; preds = %722
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %724

724:                                              ; preds = %723
  br label %725

725:                                              ; preds = %724
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br label %726

726:                                              ; preds = %725
  br i1 false, label %.loopexit112, label %731

.loopexit112:                                     ; preds = %760, %726
  %invariant.op45.lcssa.ph = phi i32 [ 0, %726 ], [ 1, %760 ]
  br label %727

727:                                              ; preds = %.loopexit112, %746
  %invariant.op45.lcssa = phi i32 [ %invariant.op45.1, %746 ], [ %invariant.op45.lcssa.ph, %.loopexit112 ]
  %.reass46.3 = add i32 192, %invariant.op45.lcssa
  %728 = sext i32 %.reass46.3 to i64
  %729 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %728
  store i32 1, ptr %729, align 4
  br label %730

730:                                              ; preds = %727
  unreachable

731:                                              ; preds = %726
  br label %732

732:                                              ; preds = %731
  br i1 false, label %733, label %749

733:                                              ; preds = %762, %732
  %storemerge11.lcssa110 = phi i32 [ 0, %732 ], [ 1, %762 ]
  %invariant.op45.1 = add i32 8, %storemerge11.lcssa110
  br label %734

734:                                              ; preds = %733
  br label %735

735:                                              ; preds = %734
  %736 = sext i32 %invariant.op45.1 to i64
  %737 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %736
  store i32 1, ptr %737, align 4
  br label %738

738:                                              ; preds = %735
  br label %739

739:                                              ; preds = %738
  %.reass46.1.1 = add i32 64, %invariant.op45.1
  %740 = sext i32 %.reass46.1.1 to i64
  %741 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %740
  store i32 1, ptr %741, align 4
  br label %742

742:                                              ; preds = %739
  br label %743

743:                                              ; preds = %742
  %.reass46.2.1 = add i32 128, %invariant.op45.1
  %744 = sext i32 %.reass46.2.1 to i64
  %745 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %744
  store i32 1, ptr %745, align 4
  br label %746

746:                                              ; preds = %743
  br i1 false, label %727, label %747

747:                                              ; preds = %746
  br label %748

748:                                              ; preds = %747
  unreachable

749:                                              ; preds = %732
  br label %750

750:                                              ; preds = %749
  br i1 false, label %751, label %765

751:                                              ; preds = %750
  br label %752

752:                                              ; preds = %751
  br label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  br label %755

755:                                              ; preds = %754
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %756

756:                                              ; preds = %755
  br label %757

757:                                              ; preds = %756
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %758

758:                                              ; preds = %757
  br label %759

759:                                              ; preds = %758
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br label %760

760:                                              ; preds = %759
  br i1 false, label %.loopexit112, label %761

761:                                              ; preds = %760
  br label %762

762:                                              ; preds = %761
  br i1 false, label %733, label %763

763:                                              ; preds = %762
  br label %764

764:                                              ; preds = %763
  unreachable

765:                                              ; preds = %750
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ 3, %750 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ 1, %750 ]
  %storemerge11.lcssa = phi i32 [ 1, %750 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %766

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  br label %768

768:                                              ; preds = %767
  br label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br label %772

772:                                              ; preds = %771
  br i1 false, label %.loopexit118, label %777

.loopexit118:                                     ; preds = %822, %816, %806, %800, %772, %782
  %invariant.op50.lcssa.ph = phi i32 [ 8, %782 ], [ 0, %772 ], [ 1, %800 ], [ 9, %806 ], [ 2, %816 ], [ 10, %822 ]
  br label %773

773:                                              ; preds = %.loopexit118, %790
  %invariant.op50.lcssa = phi i32 [ %invariant.op50.2, %790 ], [ %invariant.op50.lcssa.ph, %.loopexit118 ]
  %.reass51.1 = add i32 64, %invariant.op50.lcssa
  %774 = sext i32 %.reass51.1 to i64
  %775 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %774
  store i32 1, ptr %775, align 4
  br label %776

776:                                              ; preds = %773
  unreachable

777:                                              ; preds = %772
  br label %778

778:                                              ; preds = %777
  br label %779

779:                                              ; preds = %778
  br label %780

780:                                              ; preds = %779
  br label %781

781:                                              ; preds = %780
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %782

782:                                              ; preds = %781
  br i1 false, label %.loopexit118, label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783
  br i1 false, label %785, label %793

785:                                              ; preds = %824, %808, %784
  %storemerge12.lcssa117 = phi i32 [ 0, %784 ], [ 1, %808 ], [ 2, %824 ]
  %invariant.op50.2 = add i32 16, %storemerge12.lcssa117
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  %788 = sext i32 %invariant.op50.2 to i64
  %789 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %788
  store i32 1, ptr %789, align 4
  br label %790

790:                                              ; preds = %787
  br i1 false, label %773, label %791

791:                                              ; preds = %790
  br label %792

792:                                              ; preds = %791
  unreachable

793:                                              ; preds = %784
  br label %794

794:                                              ; preds = %793
  br label %795

795:                                              ; preds = %794
  br label %796

796:                                              ; preds = %795
  br label %797

797:                                              ; preds = %796
  br label %798

798:                                              ; preds = %797
  br label %799

799:                                              ; preds = %798
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br label %800

800:                                              ; preds = %799
  br i1 false, label %.loopexit118, label %801

801:                                              ; preds = %800
  br label %802

802:                                              ; preds = %801
  br label %803

803:                                              ; preds = %802
  br label %804

804:                                              ; preds = %803
  br label %805

805:                                              ; preds = %804
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br label %806

806:                                              ; preds = %805
  br i1 false, label %.loopexit118, label %807

807:                                              ; preds = %806
  br label %808

808:                                              ; preds = %807
  br i1 false, label %785, label %809

809:                                              ; preds = %808
  br label %810

810:                                              ; preds = %809
  br i1 false, label %811, label %827

811:                                              ; preds = %810
  br label %812

812:                                              ; preds = %811
  br label %813

813:                                              ; preds = %812
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br label %816

816:                                              ; preds = %815
  br i1 false, label %.loopexit118, label %817

817:                                              ; preds = %816
  br label %818

818:                                              ; preds = %817
  br label %819

819:                                              ; preds = %818
  br label %820

820:                                              ; preds = %819
  br label %821

821:                                              ; preds = %820
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br label %822

822:                                              ; preds = %821
  br i1 false, label %.loopexit118, label %823

823:                                              ; preds = %822
  br label %824

824:                                              ; preds = %823
  br i1 false, label %785, label %825

825:                                              ; preds = %824
  br label %826

826:                                              ; preds = %825
  unreachable

827:                                              ; preds = %810
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ 1, %810 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ 2, %810 ]
  %storemerge12.lcssa = phi i32 [ 2, %810 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %828

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  br label %830

830:                                              ; preds = %829
  br label %831

831:                                              ; preds = %830
  br label %832

832:                                              ; preds = %831
  br label %833

833:                                              ; preds = %832
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %834

834:                                              ; preds = %833
  br label %835

835:                                              ; preds = %834
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %836

836:                                              ; preds = %835
  br i1 false, label %.loopexit122, label %841

.loopexit122:                                     ; preds = %876, %864, %836
  %invariant.op55.lcssa.ph = phi i32 [ 0, %836 ], [ 1, %864 ], [ 2, %876 ]
  br label %837

837:                                              ; preds = %.loopexit122, %852
  %invariant.op55.lcssa = phi i32 [ %invariant.op55.1, %852 ], [ %invariant.op55.lcssa.ph, %.loopexit122 ]
  %.reass56.2 = add i32 128, %invariant.op55.lcssa
  %838 = sext i32 %.reass56.2 to i64
  %839 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %838
  store i32 1, ptr %839, align 4
  br label %840

840:                                              ; preds = %837
  unreachable

841:                                              ; preds = %836
  br label %842

842:                                              ; preds = %841
  br i1 false, label %843, label %855

843:                                              ; preds = %878, %866, %842
  %storemerge13.lcssa120 = phi i32 [ 0, %842 ], [ 1, %866 ], [ 2, %878 ]
  %invariant.op55.1 = add i32 8, %storemerge13.lcssa120
  br label %844

844:                                              ; preds = %843
  br label %845

845:                                              ; preds = %844
  %846 = sext i32 %invariant.op55.1 to i64
  %847 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %846
  store i32 1, ptr %847, align 4
  br label %848

848:                                              ; preds = %845
  br label %849

849:                                              ; preds = %848
  %.reass56.1.1 = add i32 64, %invariant.op55.1
  %850 = sext i32 %.reass56.1.1 to i64
  %851 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %850
  store i32 1, ptr %851, align 4
  br label %852

852:                                              ; preds = %849
  br i1 false, label %837, label %853

853:                                              ; preds = %852
  br label %854

854:                                              ; preds = %853
  unreachable

855:                                              ; preds = %842
  br label %856

856:                                              ; preds = %855
  br label %857

857:                                              ; preds = %856
  br label %858

858:                                              ; preds = %857
  br label %859

859:                                              ; preds = %858
  br label %860

860:                                              ; preds = %859
  br label %861

861:                                              ; preds = %860
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %862

862:                                              ; preds = %861
  br label %863

863:                                              ; preds = %862
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br label %864

864:                                              ; preds = %863
  br i1 false, label %.loopexit122, label %865

865:                                              ; preds = %864
  br label %866

866:                                              ; preds = %865
  br i1 false, label %843, label %867

867:                                              ; preds = %866
  br label %868

868:                                              ; preds = %867
  br i1 false, label %869, label %881

869:                                              ; preds = %868
  br label %870

870:                                              ; preds = %869
  br label %871

871:                                              ; preds = %870
  br label %872

872:                                              ; preds = %871
  br label %873

873:                                              ; preds = %872
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %874

874:                                              ; preds = %873
  br label %875

875:                                              ; preds = %874
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br label %876

876:                                              ; preds = %875
  br i1 false, label %.loopexit122, label %877

877:                                              ; preds = %876
  br label %878

878:                                              ; preds = %877
  br i1 false, label %843, label %879

879:                                              ; preds = %878
  br label %880

880:                                              ; preds = %879
  unreachable

881:                                              ; preds = %868
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ 2, %868 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ 1, %868 ]
  %storemerge13.lcssa = phi i32 [ 2, %868 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %882

882:                                              ; preds = %881
  br label %883

883:                                              ; preds = %882
  br label %884

884:                                              ; preds = %883
  br label %885

885:                                              ; preds = %884
  br label %886

886:                                              ; preds = %885
  br label %887

887:                                              ; preds = %886
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %888

888:                                              ; preds = %887
  br label %889

889:                                              ; preds = %888
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %890

890:                                              ; preds = %889
  br i1 false, label %.loopexit127, label %895

.loopexit127:                                     ; preds = %934, %926, %890, %902
  %invariant.op60.lcssa.ph = phi i32 [ 8, %902 ], [ 0, %890 ], [ 1, %926 ], [ 9, %934 ]
  br label %891

891:                                              ; preds = %.loopexit127, %914
  %invariant.op60.lcssa = phi i32 [ %invariant.op60.2, %914 ], [ %invariant.op60.lcssa.ph, %.loopexit127 ]
  %.reass61.2 = add i32 128, %invariant.op60.lcssa
  %892 = sext i32 %.reass61.2 to i64
  %893 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %892
  store i32 1, ptr %893, align 4
  br label %894

894:                                              ; preds = %891
  unreachable

895:                                              ; preds = %890
  br label %896

896:                                              ; preds = %895
  br label %897

897:                                              ; preds = %896
  br label %898

898:                                              ; preds = %897
  br label %899

899:                                              ; preds = %898
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %900

900:                                              ; preds = %899
  br label %901

901:                                              ; preds = %900
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br label %902

902:                                              ; preds = %901
  br i1 false, label %.loopexit127, label %903

903:                                              ; preds = %902
  br label %904

904:                                              ; preds = %903
  br i1 false, label %905, label %917

905:                                              ; preds = %936, %904
  %storemerge14.lcssa126 = phi i32 [ 0, %904 ], [ 1, %936 ]
  %invariant.op60.2 = add i32 16, %storemerge14.lcssa126
  br label %906

906:                                              ; preds = %905
  br label %907

907:                                              ; preds = %906
  %908 = sext i32 %invariant.op60.2 to i64
  %909 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %908
  store i32 1, ptr %909, align 4
  br label %910

910:                                              ; preds = %907
  br label %911

911:                                              ; preds = %910
  %.reass61.1.2 = add i32 64, %invariant.op60.2
  %912 = sext i32 %.reass61.1.2 to i64
  %913 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %912
  store i32 1, ptr %913, align 4
  br label %914

914:                                              ; preds = %911
  br i1 false, label %891, label %915

915:                                              ; preds = %914
  br label %916

916:                                              ; preds = %915
  unreachable

917:                                              ; preds = %904
  br label %918

918:                                              ; preds = %917
  br i1 false, label %919, label %939

919:                                              ; preds = %918
  br label %920

920:                                              ; preds = %919
  br label %921

921:                                              ; preds = %920
  br label %922

922:                                              ; preds = %921
  br label %923

923:                                              ; preds = %922
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %924

924:                                              ; preds = %923
  br label %925

925:                                              ; preds = %924
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br label %926

926:                                              ; preds = %925
  br i1 false, label %.loopexit127, label %927

927:                                              ; preds = %926
  br label %928

928:                                              ; preds = %927
  br label %929

929:                                              ; preds = %928
  br label %930

930:                                              ; preds = %929
  br label %931

931:                                              ; preds = %930
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %932

932:                                              ; preds = %931
  br label %933

933:                                              ; preds = %932
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br label %934

934:                                              ; preds = %933
  br i1 false, label %.loopexit127, label %935

935:                                              ; preds = %934
  br label %936

936:                                              ; preds = %935
  br i1 false, label %905, label %937

937:                                              ; preds = %936
  br label %938

938:                                              ; preds = %937
  unreachable

939:                                              ; preds = %918
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ 2, %918 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ 2, %918 ]
  %storemerge14.lcssa = phi i32 [ 1, %918 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %940

940:                                              ; preds = %939
  br label %941

941:                                              ; preds = %940
  br label %942

942:                                              ; preds = %941
  br label %943

943:                                              ; preds = %942
  br label %944

944:                                              ; preds = %943
  br label %945

945:                                              ; preds = %944
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %946

946:                                              ; preds = %945
  br label %947

947:                                              ; preds = %946
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %948

948:                                              ; preds = %947
  br i1 false, label %.loopexit132, label %953

.loopexit132:                                     ; preds = %1012, %1004, %992, %984, %948, %960
  %invariant.op65.lcssa.ph = phi i32 [ 8, %960 ], [ 0, %948 ], [ 1, %984 ], [ 9, %992 ], [ 2, %1004 ], [ 10, %1012 ]
  br label %949

949:                                              ; preds = %.loopexit132, %972
  %invariant.op65.lcssa = phi i32 [ %invariant.op65.2, %972 ], [ %invariant.op65.lcssa.ph, %.loopexit132 ]
  %.reass66.2 = add i32 128, %invariant.op65.lcssa
  %950 = sext i32 %.reass66.2 to i64
  %951 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %950
  store i32 1, ptr %951, align 4
  br label %952

952:                                              ; preds = %949
  unreachable

953:                                              ; preds = %948
  br label %954

954:                                              ; preds = %953
  br label %955

955:                                              ; preds = %954
  br label %956

956:                                              ; preds = %955
  br label %957

957:                                              ; preds = %956
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %958

958:                                              ; preds = %957
  br label %959

959:                                              ; preds = %958
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %960

960:                                              ; preds = %959
  br i1 false, label %.loopexit132, label %961

961:                                              ; preds = %960
  br label %962

962:                                              ; preds = %961
  br i1 false, label %963, label %975

963:                                              ; preds = %1014, %994, %962
  %storemerge15.lcssa131 = phi i32 [ 0, %962 ], [ 1, %994 ], [ 2, %1014 ]
  %invariant.op65.2 = add i32 16, %storemerge15.lcssa131
  br label %964

964:                                              ; preds = %963
  br label %965

965:                                              ; preds = %964
  %966 = sext i32 %invariant.op65.2 to i64
  %967 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %966
  store i32 1, ptr %967, align 4
  br label %968

968:                                              ; preds = %965
  br label %969

969:                                              ; preds = %968
  %.reass66.1.2 = add i32 64, %invariant.op65.2
  %970 = sext i32 %.reass66.1.2 to i64
  %971 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %970
  store i32 1, ptr %971, align 4
  br label %972

972:                                              ; preds = %969
  br i1 false, label %949, label %973

973:                                              ; preds = %972
  br label %974

974:                                              ; preds = %973
  unreachable

975:                                              ; preds = %962
  br label %976

976:                                              ; preds = %975
  br label %977

977:                                              ; preds = %976
  br label %978

978:                                              ; preds = %977
  br label %979

979:                                              ; preds = %978
  br label %980

980:                                              ; preds = %979
  br label %981

981:                                              ; preds = %980
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %982

982:                                              ; preds = %981
  br label %983

983:                                              ; preds = %982
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %984

984:                                              ; preds = %983
  br i1 false, label %.loopexit132, label %985

985:                                              ; preds = %984
  br label %986

986:                                              ; preds = %985
  br label %987

987:                                              ; preds = %986
  br label %988

988:                                              ; preds = %987
  br label %989

989:                                              ; preds = %988
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %990

990:                                              ; preds = %989
  br label %991

991:                                              ; preds = %990
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br label %992

992:                                              ; preds = %991
  br i1 false, label %.loopexit132, label %993

993:                                              ; preds = %992
  br label %994

994:                                              ; preds = %993
  br i1 false, label %963, label %995

995:                                              ; preds = %994
  br label %996

996:                                              ; preds = %995
  br i1 false, label %997, label %1017

997:                                              ; preds = %996
  br label %998

998:                                              ; preds = %997
  br label %999

999:                                              ; preds = %998
  br label %1000

1000:                                             ; preds = %999
  br label %1001

1001:                                             ; preds = %1000
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %1002

1002:                                             ; preds = %1001
  br label %1003

1003:                                             ; preds = %1002
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br label %1004

1004:                                             ; preds = %1003
  br i1 false, label %.loopexit132, label %1005

1005:                                             ; preds = %1004
  br label %1006

1006:                                             ; preds = %1005
  br label %1007

1007:                                             ; preds = %1006
  br label %1008

1008:                                             ; preds = %1007
  br label %1009

1009:                                             ; preds = %1008
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %1010

1010:                                             ; preds = %1009
  br label %1011

1011:                                             ; preds = %1010
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br label %1012

1012:                                             ; preds = %1011
  br i1 false, label %.loopexit132, label %1013

1013:                                             ; preds = %1012
  br label %1014

1014:                                             ; preds = %1013
  br i1 false, label %963, label %1015

1015:                                             ; preds = %1014
  br label %1016

1016:                                             ; preds = %1015
  unreachable

1017:                                             ; preds = %996
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ 2, %996 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ 2, %996 ]
  %storemerge15.lcssa = phi i32 [ 2, %996 ]
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
  %1018 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %1018, 0
  br i1 %.not, label %1022, label %1019

1019:                                             ; preds = %1017
  %1020 = load i32, ptr %4, align 4
  %1021 = call i32 @Place(i32 noundef 0, i32 noundef %1020)
  store i32 %1021, ptr @n, align 4
  br label %1023

1022:                                             ; preds = %1017
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %1023

1023:                                             ; preds = %1022, %1019
  %1024 = load i32, ptr @n, align 4
  %1025 = call i32 @Trial(i32 noundef %1024)
  %.not16 = icmp eq i32 %1025, 0
  br i1 %.not16, label %1026, label %1027

1026:                                             ; preds = %1023
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %1031

1027:                                             ; preds = %1023
  %1028 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %1028, 2005
  br i1 %.not18, label %1030, label %1029

1029:                                             ; preds = %1027
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %1030

1030:                                             ; preds = %1029, %1027
  br label %1031

1031:                                             ; preds = %1030, %1026
  %1032 = load i32, ptr @n, align 4
  %1033 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1032) #4
  %1034 = load i32, ptr @kount, align 4
  %1035 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1034) #4
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
  br label %2, !llvm.loop !18

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
