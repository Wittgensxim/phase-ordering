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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  %.lcssa2 = phi i32 [ 0, %25 ], [ %23, %22 ]
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

51:                                               ; preds = %68, %50
  %storemerge45.lcssa7.lcssa9 = phi i32 [ poison, %50 ], [ %storemerge45.lcssa7.lcssa, %68 ]
  %storemerge44.lcssa8 = phi i32 [ poison, %50 ], [ %storemerge44.lcssa, %68 ]
  %storemerge3 = phi i32 [ 0, %50 ], [ %69, %68 ]
  %52 = icmp slt i32 %storemerge3, 4
  br i1 %52, label %53, label %70

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %65, %53
  %storemerge45.lcssa7 = phi i32 [ poison, %53 ], [ %storemerge45.lcssa, %65 ]
  %storemerge44 = phi i32 [ 0, %53 ], [ %66, %65 ]
  %55 = icmp slt i32 %storemerge44, 2
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = add nsw i32 %57, %storemerge3
  br label %58

58:                                               ; preds = %63, %56
  %storemerge45 = phi i32 [ 0, %56 ], [ 1, %63 ]
  %59 = icmp slt i32 %storemerge45, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %.reass6 = add nuw nsw i32 0, %invariant.op5
  %61 = sext i32 %.reass6 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @p, i64 %61
  store i32 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %60
  br label %58, !llvm.loop !19

64:                                               ; preds = %58
  %storemerge45.lcssa = phi i32 [ %storemerge45, %58 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nuw nsw i32 %storemerge44, 1
  br label %54, !llvm.loop !20

67:                                               ; preds = %54
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %54 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %54 ]
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %storemerge3, 1
  br label %51, !llvm.loop !21

70:                                               ; preds = %51
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %51 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %51 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %51 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %71

71:                                               ; preds = %88, %70
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %70 ], [ %storemerge43.lcssa12.lcssa, %88 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %70 ], [ %storemerge42.lcssa, %88 ]
  %storemerge4 = phi i32 [ 0, %70 ], [ %89, %88 ]
  %72 = icmp slt i32 %storemerge4, 2
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %86, %73
  %storemerge43.lcssa12 = phi i32 [ poison, %73 ], [ %storemerge43.lcssa, %86 ]
  %storemerge42 = phi i32 [ 0, %73 ], [ 1, %86 ]
  %75 = icmp slt i32 %storemerge42, 1
  br i1 %75, label %76, label %87

76:                                               ; preds = %74
  %invariant.op10 = add nuw nsw i32 0, %storemerge4
  br label %77

77:                                               ; preds = %83, %76
  %storemerge43 = phi i32 [ 0, %76 ], [ %84, %83 ]
  %78 = icmp slt i32 %storemerge43, 4
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = shl i32 %storemerge43, 6
  %.reass11 = add nuw i32 %80, %invariant.op10
  %81 = sext i32 %.reass11 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %81
  store i32 1, ptr %82, align 4
  br label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %storemerge43, 1
  br label %77, !llvm.loop !22

85:                                               ; preds = %77
  %storemerge43.lcssa = phi i32 [ %storemerge43, %77 ]
  br label %86

86:                                               ; preds = %85
  br label %74, !llvm.loop !23

87:                                               ; preds = %74
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %74 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %74 ]
  br label %88

88:                                               ; preds = %87
  %89 = add nuw nsw i32 %storemerge4, 1
  br label %71, !llvm.loop !24

90:                                               ; preds = %71
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %71 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %71 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %71 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %91

91:                                               ; preds = %110, %90
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %90 ], [ %storemerge41.lcssa17.lcssa, %110 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %90 ], [ %storemerge40.lcssa, %110 ]
  %storemerge5 = phi i32 [ 0, %90 ], [ 1, %110 ]
  %92 = icmp slt i32 %storemerge5, 1
  br i1 %92, label %93, label %111

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %107, %93
  %storemerge41.lcssa17 = phi i32 [ poison, %93 ], [ %storemerge41.lcssa, %107 ]
  %storemerge40 = phi i32 [ 0, %93 ], [ %108, %107 ]
  %95 = icmp slt i32 %storemerge40, 4
  br i1 %95, label %96, label %109

96:                                               ; preds = %94
  %97 = shl i32 %storemerge40, 3
  %invariant.op15 = add nuw nsw i32 %97, 0
  br label %98

98:                                               ; preds = %104, %96
  %storemerge41 = phi i32 [ 0, %96 ], [ %105, %104 ]
  %99 = icmp slt i32 %storemerge41, 2
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = add i32 %101, %invariant.op15
  %102 = sext i32 %.reass16 to i64
  %103 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %102
  store i32 1, ptr %103, align 4
  br label %104

104:                                              ; preds = %100
  %105 = add nuw nsw i32 %storemerge41, 1
  br label %98, !llvm.loop !25

106:                                              ; preds = %98
  %storemerge41.lcssa = phi i32 [ %storemerge41, %98 ]
  br label %107

107:                                              ; preds = %106
  %108 = add nsw i32 %storemerge40, 1
  br label %94, !llvm.loop !26

109:                                              ; preds = %94
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %94 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %94 ]
  br label %110

110:                                              ; preds = %109
  br label %91, !llvm.loop !27

111:                                              ; preds = %91
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %91 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %91 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %91 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %112

112:                                              ; preds = %129, %111
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %111 ], [ %storemerge39.lcssa22.lcssa, %129 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %111 ], [ %storemerge38.lcssa, %129 ]
  %storemerge6 = phi i32 [ 0, %111 ], [ %130, %129 ]
  %113 = icmp slt i32 %storemerge6, 2
  br i1 %113, label %114, label %131

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %126, %114
  %storemerge39.lcssa22 = phi i32 [ poison, %114 ], [ %storemerge39.lcssa, %126 ]
  %storemerge38 = phi i32 [ 0, %114 ], [ %127, %126 ]
  %116 = icmp slt i32 %storemerge38, 4
  br i1 %116, label %117, label %128

117:                                              ; preds = %115
  %118 = shl i32 %storemerge38, 3
  %invariant.op20 = add nuw i32 %118, %storemerge6
  br label %119

119:                                              ; preds = %124, %117
  %storemerge39 = phi i32 [ 0, %117 ], [ 1, %124 ]
  %120 = icmp slt i32 %storemerge39, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %.reass21 = add nuw nsw i32 0, %invariant.op20
  %122 = sext i32 %.reass21 to i64
  %123 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %122
  store i32 1, ptr %123, align 4
  br label %124

124:                                              ; preds = %121
  br label %119, !llvm.loop !28

125:                                              ; preds = %119
  %storemerge39.lcssa = phi i32 [ %storemerge39, %119 ]
  br label %126

126:                                              ; preds = %125
  %127 = add nsw i32 %storemerge38, 1
  br label %115, !llvm.loop !29

128:                                              ; preds = %115
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %115 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %115 ]
  br label %129

129:                                              ; preds = %128
  %130 = add nuw nsw i32 %storemerge6, 1
  br label %112, !llvm.loop !30

131:                                              ; preds = %112
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %112 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %112 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %112 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %132

132:                                              ; preds = %149, %131
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %131 ], [ %storemerge37.lcssa27.lcssa, %149 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %131 ], [ %storemerge36.lcssa, %149 ]
  %storemerge7 = phi i32 [ 0, %131 ], [ %150, %149 ]
  %133 = icmp slt i32 %storemerge7, 4
  br i1 %133, label %134, label %151

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %147, %134
  %storemerge37.lcssa27 = phi i32 [ poison, %134 ], [ %storemerge37.lcssa, %147 ]
  %storemerge36 = phi i32 [ 0, %134 ], [ 1, %147 ]
  %136 = icmp slt i32 %storemerge36, 1
  br i1 %136, label %137, label %148

137:                                              ; preds = %135
  %invariant.op25 = add nuw nsw i32 0, %storemerge7
  br label %138

138:                                              ; preds = %144, %137
  %storemerge37 = phi i32 [ 0, %137 ], [ %145, %144 ]
  %139 = icmp slt i32 %storemerge37, 2
  br i1 %139, label %140, label %146

140:                                              ; preds = %138
  %141 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = add nsw i32 %141, %invariant.op25
  %142 = sext i32 %.reass26 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %142
  store i32 1, ptr %143, align 4
  br label %144

144:                                              ; preds = %140
  %145 = add nuw nsw i32 %storemerge37, 1
  br label %138, !llvm.loop !31

146:                                              ; preds = %138
  %storemerge37.lcssa = phi i32 [ %storemerge37, %138 ]
  br label %147

147:                                              ; preds = %146
  br label %135, !llvm.loop !32

148:                                              ; preds = %135
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %135 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %135 ]
  br label %149

149:                                              ; preds = %148
  %150 = add nsw i32 %storemerge7, 1
  br label %132, !llvm.loop !33

151:                                              ; preds = %132
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %132 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %132 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %132 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %152

152:                                              ; preds = %171, %151
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %151 ], [ %storemerge35.lcssa32.lcssa, %171 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %151 ], [ %storemerge34.lcssa, %171 ]
  %storemerge8 = phi i32 [ 0, %151 ], [ 1, %171 ]
  %153 = icmp slt i32 %storemerge8, 1
  br i1 %153, label %154, label %172

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %168, %154
  %storemerge35.lcssa32 = phi i32 [ poison, %154 ], [ %storemerge35.lcssa, %168 ]
  %storemerge34 = phi i32 [ 0, %154 ], [ %169, %168 ]
  %156 = icmp slt i32 %storemerge34, 2
  br i1 %156, label %157, label %170

157:                                              ; preds = %155
  %158 = shl nuw nsw i32 %storemerge34, 3
  %invariant.op30 = add nuw nsw i32 %158, 0
  br label %159

159:                                              ; preds = %165, %157
  %storemerge35 = phi i32 [ 0, %157 ], [ %166, %165 ]
  %160 = icmp slt i32 %storemerge35, 4
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = shl i32 %storemerge35, 6
  %.reass31 = add nuw i32 %162, %invariant.op30
  %163 = sext i32 %.reass31 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %163
  store i32 1, ptr %164, align 4
  br label %165

165:                                              ; preds = %161
  %166 = add nsw i32 %storemerge35, 1
  br label %159, !llvm.loop !34

167:                                              ; preds = %159
  %storemerge35.lcssa = phi i32 [ %storemerge35, %159 ]
  br label %168

168:                                              ; preds = %167
  %169 = add nuw nsw i32 %storemerge34, 1
  br label %155, !llvm.loop !35

170:                                              ; preds = %155
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %155 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %155 ]
  br label %171

171:                                              ; preds = %170
  br label %152, !llvm.loop !36

172:                                              ; preds = %152
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %152 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %152 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %152 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %173

173:                                              ; preds = %188, %172
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %172 ], [ %storemerge33.lcssa37.lcssa, %188 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %172 ], [ %storemerge32.lcssa, %188 ]
  %storemerge9 = phi i32 [ 0, %172 ], [ %189, %188 ]
  %174 = icmp slt i32 %storemerge9, 3
  br i1 %174, label %175, label %190

175:                                              ; preds = %173
  br label %176

176:                                              ; preds = %186, %175
  %storemerge33.lcssa37 = phi i32 [ poison, %175 ], [ %storemerge33.lcssa, %186 ]
  %storemerge32 = phi i32 [ 0, %175 ], [ 1, %186 ]
  %177 = icmp slt i32 %storemerge32, 1
  br i1 %177, label %178, label %187

178:                                              ; preds = %176
  %invariant.op35 = add nuw nsw i32 0, %storemerge9
  br label %179

179:                                              ; preds = %184, %178
  %storemerge33 = phi i32 [ 0, %178 ], [ 1, %184 ]
  %180 = icmp slt i32 %storemerge33, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %179
  %.reass36 = add nuw nsw i32 0, %invariant.op35
  %182 = sext i32 %.reass36 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %182
  store i32 1, ptr %183, align 4
  br label %184

184:                                              ; preds = %181
  br label %179, !llvm.loop !37

185:                                              ; preds = %179
  %storemerge33.lcssa = phi i32 [ %storemerge33, %179 ]
  br label %186

186:                                              ; preds = %185
  br label %176, !llvm.loop !38

187:                                              ; preds = %176
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %176 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %176 ]
  br label %188

188:                                              ; preds = %187
  %189 = add nsw i32 %storemerge9, 1
  br label %173, !llvm.loop !39

190:                                              ; preds = %173
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %173 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %173 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %173 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %191

191:                                              ; preds = %208, %190
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %190 ], [ %storemerge31.lcssa42.lcssa, %208 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %190 ], [ %storemerge30.lcssa, %208 ]
  %storemerge10 = phi i32 [ 0, %190 ], [ 1, %208 ]
  %192 = icmp slt i32 %storemerge10, 1
  br i1 %192, label %193, label %209

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %205, %193
  %storemerge31.lcssa42 = phi i32 [ poison, %193 ], [ %storemerge31.lcssa, %205 ]
  %storemerge30 = phi i32 [ 0, %193 ], [ %206, %205 ]
  %195 = icmp slt i32 %storemerge30, 3
  br i1 %195, label %196, label %207

196:                                              ; preds = %194
  %197 = shl i32 %storemerge30, 3
  %invariant.op40 = add nuw nsw i32 %197, 0
  br label %198

198:                                              ; preds = %203, %196
  %storemerge31 = phi i32 [ 0, %196 ], [ 1, %203 ]
  %199 = icmp slt i32 %storemerge31, 1
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %.reass41 = add nuw nsw i32 0, %invariant.op40
  %201 = sext i32 %.reass41 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %201
  store i32 1, ptr %202, align 4
  br label %203

203:                                              ; preds = %200
  br label %198, !llvm.loop !40

204:                                              ; preds = %198
  %storemerge31.lcssa = phi i32 [ %storemerge31, %198 ]
  br label %205

205:                                              ; preds = %204
  %206 = add nsw i32 %storemerge30, 1
  br label %194, !llvm.loop !41

207:                                              ; preds = %194
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %194 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %194 ]
  br label %208

208:                                              ; preds = %207
  br label %191, !llvm.loop !42

209:                                              ; preds = %191
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %191 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %191 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %191 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %210

210:                                              ; preds = %227, %209
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %209 ], [ %storemerge29.lcssa47.lcssa, %227 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %209 ], [ %storemerge28.lcssa, %227 ]
  %storemerge11 = phi i32 [ 0, %209 ], [ 1, %227 ]
  %211 = icmp slt i32 %storemerge11, 1
  br i1 %211, label %212, label %228

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %225, %212
  %storemerge29.lcssa47 = phi i32 [ poison, %212 ], [ %storemerge29.lcssa, %225 ]
  %storemerge28 = phi i32 [ 0, %212 ], [ 1, %225 ]
  %214 = icmp slt i32 %storemerge28, 1
  br i1 %214, label %215, label %226

215:                                              ; preds = %213
  br label %216

216:                                              ; preds = %222, %215
  %storemerge29 = phi i32 [ 0, %215 ], [ %223, %222 ]
  %217 = icmp slt i32 %storemerge29, 3
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  %219 = shl i32 %storemerge29, 6
  %.reass46 = add nuw nsw i32 %219, 0
  %220 = sext i32 %.reass46 to i64
  %221 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %220
  store i32 1, ptr %221, align 4
  br label %222

222:                                              ; preds = %218
  %223 = add nsw i32 %storemerge29, 1
  br label %216, !llvm.loop !43

224:                                              ; preds = %216
  %storemerge29.lcssa = phi i32 [ %storemerge29, %216 ]
  br label %225

225:                                              ; preds = %224
  br label %213, !llvm.loop !44

226:                                              ; preds = %213
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %213 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %213 ]
  br label %227

227:                                              ; preds = %226
  br label %210, !llvm.loop !45

228:                                              ; preds = %210
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %210 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %210 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %210 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %229

229:                                              ; preds = %246, %228
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %228 ], [ %storemerge27.lcssa52.lcssa, %246 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %228 ], [ %storemerge26.lcssa, %246 ]
  %storemerge12 = phi i32 [ 0, %228 ], [ %247, %246 ]
  %230 = icmp slt i32 %storemerge12, 2
  br i1 %230, label %231, label %248

231:                                              ; preds = %229
  br label %232

232:                                              ; preds = %243, %231
  %storemerge27.lcssa52 = phi i32 [ poison, %231 ], [ %storemerge27.lcssa, %243 ]
  %storemerge26 = phi i32 [ 0, %231 ], [ %244, %243 ]
  %233 = icmp slt i32 %storemerge26, 2
  br i1 %233, label %234, label %245

234:                                              ; preds = %232
  %235 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = add nuw nsw i32 %235, %storemerge12
  br label %236

236:                                              ; preds = %241, %234
  %storemerge27 = phi i32 [ 0, %234 ], [ 1, %241 ]
  %237 = icmp slt i32 %storemerge27, 1
  br i1 %237, label %238, label %242

238:                                              ; preds = %236
  %.reass51 = add nuw nsw i32 0, %invariant.op50
  %239 = zext nneg i32 %.reass51 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %239
  store i32 1, ptr %240, align 4
  br label %241

241:                                              ; preds = %238
  br label %236, !llvm.loop !46

242:                                              ; preds = %236
  %storemerge27.lcssa = phi i32 [ %storemerge27, %236 ]
  br label %243

243:                                              ; preds = %242
  %244 = add nuw nsw i32 %storemerge26, 1
  br label %232, !llvm.loop !47

245:                                              ; preds = %232
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %232 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %232 ]
  br label %246

246:                                              ; preds = %245
  %247 = add nuw nsw i32 %storemerge12, 1
  br label %229, !llvm.loop !48

248:                                              ; preds = %229
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %229 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %229 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %229 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %249

249:                                              ; preds = %266, %248
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %248 ], [ %storemerge25.lcssa57.lcssa, %266 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %248 ], [ %storemerge24.lcssa, %266 ]
  %storemerge13 = phi i32 [ 0, %248 ], [ %267, %266 ]
  %250 = icmp slt i32 %storemerge13, 2
  br i1 %250, label %251, label %268

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %264, %251
  %storemerge25.lcssa57 = phi i32 [ poison, %251 ], [ %storemerge25.lcssa, %264 ]
  %storemerge24 = phi i32 [ 0, %251 ], [ 1, %264 ]
  %253 = icmp slt i32 %storemerge24, 1
  br i1 %253, label %254, label %265

254:                                              ; preds = %252
  %invariant.op55 = add nuw nsw i32 0, %storemerge13
  br label %255

255:                                              ; preds = %261, %254
  %storemerge25 = phi i32 [ 0, %254 ], [ %262, %261 ]
  %256 = icmp slt i32 %storemerge25, 2
  br i1 %256, label %257, label %263

257:                                              ; preds = %255
  %258 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = add nuw nsw i32 %258, %invariant.op55
  %259 = zext nneg i32 %.reass56 to i64
  %260 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %259
  store i32 1, ptr %260, align 4
  br label %261

261:                                              ; preds = %257
  %262 = add nuw nsw i32 %storemerge25, 1
  br label %255, !llvm.loop !49

263:                                              ; preds = %255
  %storemerge25.lcssa = phi i32 [ %storemerge25, %255 ]
  br label %264

264:                                              ; preds = %263
  br label %252, !llvm.loop !50

265:                                              ; preds = %252
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %252 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %252 ]
  br label %266

266:                                              ; preds = %265
  %267 = add nuw nsw i32 %storemerge13, 1
  br label %249, !llvm.loop !51

268:                                              ; preds = %249
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %249 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %249 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %249 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %269

269:                                              ; preds = %288, %268
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %268 ], [ %storemerge23.lcssa62.lcssa, %288 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %268 ], [ %storemerge22.lcssa, %288 ]
  %storemerge14 = phi i32 [ 0, %268 ], [ 1, %288 ]
  %270 = icmp slt i32 %storemerge14, 1
  br i1 %270, label %271, label %289

271:                                              ; preds = %269
  br label %272

272:                                              ; preds = %285, %271
  %storemerge23.lcssa62 = phi i32 [ poison, %271 ], [ %storemerge23.lcssa, %285 ]
  %storemerge22 = phi i32 [ 0, %271 ], [ %286, %285 ]
  %273 = icmp slt i32 %storemerge22, 2
  br i1 %273, label %274, label %287

274:                                              ; preds = %272
  %275 = shl nuw nsw i32 %storemerge22, 3
  %invariant.op60 = add nuw nsw i32 %275, 0
  br label %276

276:                                              ; preds = %282, %274
  %storemerge23 = phi i32 [ 0, %274 ], [ %283, %282 ]
  %277 = icmp slt i32 %storemerge23, 2
  br i1 %277, label %278, label %284

278:                                              ; preds = %276
  %279 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = add nuw nsw i32 %279, %invariant.op60
  %280 = zext nneg i32 %.reass61 to i64
  %281 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %280
  store i32 1, ptr %281, align 4
  br label %282

282:                                              ; preds = %278
  %283 = add nuw nsw i32 %storemerge23, 1
  br label %276, !llvm.loop !52

284:                                              ; preds = %276
  %storemerge23.lcssa = phi i32 [ %storemerge23, %276 ]
  br label %285

285:                                              ; preds = %284
  %286 = add nuw nsw i32 %storemerge22, 1
  br label %272, !llvm.loop !53

287:                                              ; preds = %272
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %272 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %272 ]
  br label %288

288:                                              ; preds = %287
  br label %269, !llvm.loop !54

289:                                              ; preds = %269
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %269 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %269 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %269 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %290

290:                                              ; preds = %309, %289
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %289 ], [ %storemerge21.lcssa67.lcssa, %309 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %289 ], [ %storemerge20.lcssa, %309 ]
  %storemerge15 = phi i32 [ 0, %289 ], [ %310, %309 ]
  %291 = icmp slt i32 %storemerge15, 2
  br i1 %291, label %292, label %311

292:                                              ; preds = %290
  br label %293

293:                                              ; preds = %306, %292
  %storemerge21.lcssa67 = phi i32 [ poison, %292 ], [ %storemerge21.lcssa, %306 ]
  %storemerge20 = phi i32 [ 0, %292 ], [ %307, %306 ]
  %294 = icmp slt i32 %storemerge20, 2
  br i1 %294, label %295, label %308

295:                                              ; preds = %293
  %296 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op65 = add nuw nsw i32 %296, %storemerge15
  br label %297

297:                                              ; preds = %303, %295
  %storemerge21 = phi i32 [ 0, %295 ], [ %304, %303 ]
  %298 = icmp slt i32 %storemerge21, 2
  br i1 %298, label %299, label %305

299:                                              ; preds = %297
  %300 = shl nuw nsw i32 %storemerge21, 6
  %.reass66 = add nuw nsw i32 %300, %invariant.op65
  %301 = zext nneg i32 %.reass66 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %301
  store i32 1, ptr %302, align 4
  br label %303

303:                                              ; preds = %299
  %304 = add nuw nsw i32 %storemerge21, 1
  br label %297, !llvm.loop !55

305:                                              ; preds = %297
  %storemerge21.lcssa = phi i32 [ %storemerge21, %297 ]
  br label %306

306:                                              ; preds = %305
  %307 = add nuw nsw i32 %storemerge20, 1
  br label %293, !llvm.loop !56

308:                                              ; preds = %293
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %293 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %293 ]
  br label %309

309:                                              ; preds = %308
  %310 = add nuw nsw i32 %storemerge15, 1
  br label %290, !llvm.loop !57

311:                                              ; preds = %290
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %290 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %290 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %290 ]
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
  %312 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %312, 0
  br i1 %.not, label %316, label %313

313:                                              ; preds = %311
  %314 = load i32, ptr %4, align 4
  %315 = call i32 @Place(i32 noundef 0, i32 noundef %314)
  store i32 %315, ptr @n, align 4
  br label %317

316:                                              ; preds = %311
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i32, ptr @n, align 4
  %319 = call i32 @Trial(i32 noundef %318)
  %.not16 = icmp eq i32 %319, 0
  br i1 %.not16, label %320, label %321

320:                                              ; preds = %317
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %325

321:                                              ; preds = %317
  %322 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %322, 2005
  br i1 %.not18, label %324, label %323

323:                                              ; preds = %321
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %324

324:                                              ; preds = %323, %321
  br label %325

325:                                              ; preds = %324, %320
  %326 = load i32, ptr @n, align 4
  %327 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %326) #4
  %328 = load i32, ptr @kount, align 4
  %329 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %328) #4
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
