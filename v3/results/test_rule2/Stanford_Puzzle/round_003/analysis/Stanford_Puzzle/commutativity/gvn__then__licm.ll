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
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %20, %2
  %8 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %22, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  %.lcssa2 = phi i32 [ %8, %13 ]
  store i32 %.lcssa2, ptr %5, align 4
  br label %23

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
  %21 = add nsw i32 %8, 1
  br label %7, !llvm.loop !7

22:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %23

23:                                               ; preds = %22, %18
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %18 ]
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
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %17, %2
  %8 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %19, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  %.lcssa4 = phi i32 [ %28, %29 ]
  %.lcssa2 = phi i32 [ %28, %29 ]
  store i32 %.lcssa4, ptr %5, align 4
  br label %35

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  %.lcssa3 = phi i32 [ %28, %27 ]
  store i32 %.lcssa3, ptr %5, align 4
  br label %35

35:                                               ; preds = %34, %32
  %storemerge2 = phi i32 [ 0, %34 ], [ %.lcssa2, %32 ]
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
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %7

7:                                                ; preds = %17, %2
  %8 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %8, %.pre
  br i1 %.not, label %19, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = add nsw i32 %8, 1
  br label %7, !llvm.loop !11

19:                                               ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %5, align 4
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
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
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  %.promoted = load i32, ptr %4, align 1
  br label %7

7:                                                ; preds = %31, %1
  %8 = phi i32 [ %.promoted, %1 ], [ %32, %31 ]
  %9 = phi i32 [ %0, %1 ], [ %33, %31 ]
  %10 = phi i32 [ 0, %1 ], [ %34, %31 ]
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %31, label %19

19:                                               ; preds = %12
  %20 = call i32 @Fit(i32 noundef %10, i32 noundef %9)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %28, label %21

21:                                               ; preds = %19
  %22 = call i32 @Place(i32 noundef %10, i32 noundef %9)
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp eq i32 %23, 0
  br i1 %.not3, label %24, label %26

24:                                               ; preds = %21
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %21
  %.lcssa3 = phi i32 [ %22, %24 ], [ %22, %21 ]
  %.lcssa1 = phi i32 [ %10, %24 ], [ %10, %21 ]
  store i32 %.lcssa1, ptr %3, align 4
  store i32 %.lcssa3, ptr %4, align 1
  br label %36

27:                                               ; preds = %24
  call void @Remove(i32 noundef %10, i32 noundef %0)
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %22, %27 ], [ %8, %19 ]
  %30 = phi i32 [ %0, %27 ], [ %9, %19 ]
  br label %31

31:                                               ; preds = %28, %12
  %32 = phi i32 [ %29, %28 ], [ %8, %12 ]
  %33 = phi i32 [ %30, %28 ], [ %9, %12 ]
  %34 = add nsw i32 %10, 1
  br label %7, !llvm.loop !12

35:                                               ; preds = %7
  %.lcssa2 = phi i32 [ %8, %7 ]
  %.lcssa = phi i32 [ %10, %7 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 1
  br label %36

36:                                               ; preds = %35, %26
  %storemerge1 = phi i32 [ 0, %35 ], [ 1, %26 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  %.lcssa28 = phi i32 [ %6, %5 ]
  store i32 %.lcssa28, ptr %4, align 4
  br label %13

13:                                               ; preds = %34, %12
  %.lcssa2931.lcssa34 = phi i32 [ poison, %12 ], [ %.lcssa2931.lcssa, %34 ]
  %.lcssa3033 = phi i32 [ poison, %12 ], [ %.lcssa30, %34 ]
  %14 = phi i32 [ 1, %12 ], [ %35, %34 ]
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %32, %16
  %.lcssa2931 = phi i32 [ poison, %16 ], [ %.lcssa29, %32 ]
  %18 = phi i32 [ %14, %16 ], [ %.lcssa26, %32 ]
  %19 = phi i32 [ 1, %16 ], [ %33, %32 ]
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = shl i32 %19, 3
  %invariant.op = add i32 %22, %14
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi i32 [ %18, %21 ], [ %14, %27 ]
  %25 = phi i32 [ 1, %21 ], [ %31, %27 ]
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = shl i32 %25, 6
  %.reass = add i32 %28, %invariant.op
  %29 = sext i32 %.reass to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  %31 = add nsw i32 %25, 1
  br label %23, !llvm.loop !14

32:                                               ; preds = %23
  %.lcssa29 = phi i32 [ %25, %23 ]
  %.lcssa26 = phi i32 [ %24, %23 ]
  %33 = add nsw i32 %19, 1
  br label %17, !llvm.loop !15

34:                                               ; preds = %17
  %.lcssa2931.lcssa = phi i32 [ %.lcssa2931, %17 ]
  %.lcssa30 = phi i32 [ %19, %17 ]
  %.lcssa27 = phi i32 [ %18, %17 ]
  %35 = add nsw i32 %.lcssa27, 1
  br label %13, !llvm.loop !16

36:                                               ; preds = %13
  %.lcssa2931.lcssa34.lcssa = phi i32 [ %.lcssa2931.lcssa34, %13 ]
  %.lcssa3033.lcssa = phi i32 [ %.lcssa3033, %13 ]
  %.lcssa32 = phi i32 [ %14, %13 ]
  store i32 %.lcssa32, ptr %1, align 4
  store i32 %.lcssa3033.lcssa, ptr %2, align 4
  store i32 %.lcssa2931.lcssa34.lcssa, ptr %3, align 4
  br label %37

37:                                               ; preds = %50, %36
  %.lcssa3537 = phi i32 [ poison, %36 ], [ %.lcssa35, %50 ]
  %38 = phi i32 [ 0, %36 ], [ %51, %50 ]
  %39 = icmp slt i32 %38, 13
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds [2048 x i8], ptr @p, i64 %41
  br label %43

43:                                               ; preds = %46, %40
  %44 = phi i32 [ 0, %40 ], [ %49, %46 ]
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [4 x i8], ptr %42, i64 %47
  store i32 0, ptr %48, align 4
  %49 = add nsw i32 %44, 1
  br label %43, !llvm.loop !17

50:                                               ; preds = %43
  %.lcssa35 = phi i32 [ %44, %43 ]
  %51 = add nsw i32 %38, 1
  br label %37, !llvm.loop !18

52:                                               ; preds = %37
  %.lcssa3537.lcssa = phi i32 [ %.lcssa3537, %37 ]
  %.lcssa36 = phi i32 [ %38, %37 ]
  store i32 %.lcssa36, ptr %1, align 4
  store i32 %.lcssa3537.lcssa, ptr %4, align 4
  br label %53

53:                                               ; preds = %74, %52
  %.lcssa4042.lcssa45 = phi i32 [ poison, %52 ], [ %.lcssa4042.lcssa, %74 ]
  %.lcssa4144 = phi i32 [ poison, %52 ], [ %.lcssa41, %74 ]
  %54 = phi i32 [ 0, %52 ], [ %75, %74 ]
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %72, %56
  %.lcssa4042 = phi i32 [ poison, %56 ], [ %.lcssa40, %72 ]
  %58 = phi i32 [ %54, %56 ], [ %.lcssa24, %72 ]
  %59 = phi i32 [ 0, %56 ], [ %73, %72 ]
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = shl i32 %59, 3
  %invariant.op38 = add i32 %62, %54
  br label %63

63:                                               ; preds = %67, %61
  %64 = phi i32 [ %58, %61 ], [ %54, %67 ]
  %65 = phi i32 [ 0, %61 ], [ %71, %67 ]
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = shl i32 %65, 6
  %.reass39 = add i32 %68, %invariant.op38
  %69 = sext i32 %.reass39 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @p, i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nsw i32 %65, 1
  br label %63, !llvm.loop !19

72:                                               ; preds = %63
  %.lcssa40 = phi i32 [ %65, %63 ]
  %.lcssa24 = phi i32 [ %64, %63 ]
  %73 = add nsw i32 %59, 1
  br label %57, !llvm.loop !20

74:                                               ; preds = %57
  %.lcssa4042.lcssa = phi i32 [ %.lcssa4042, %57 ]
  %.lcssa41 = phi i32 [ %59, %57 ]
  %.lcssa25 = phi i32 [ %58, %57 ]
  %75 = add nsw i32 %.lcssa25, 1
  br label %53, !llvm.loop !21

76:                                               ; preds = %53
  %.lcssa4042.lcssa45.lcssa = phi i32 [ %.lcssa4042.lcssa45, %53 ]
  %.lcssa4144.lcssa = phi i32 [ %.lcssa4144, %53 ]
  %.lcssa43 = phi i32 [ %54, %53 ]
  store i32 %.lcssa43, ptr %1, align 4
  store i32 %.lcssa4144.lcssa, ptr %2, align 4
  store i32 %.lcssa4042.lcssa45.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %77

77:                                               ; preds = %98, %76
  %.lcssa4850.lcssa53 = phi i32 [ poison, %76 ], [ %.lcssa4850.lcssa, %98 ]
  %.lcssa4952 = phi i32 [ poison, %76 ], [ %.lcssa49, %98 ]
  %78 = phi i32 [ 0, %76 ], [ %99, %98 ]
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %96, %80
  %.lcssa4850 = phi i32 [ poison, %80 ], [ %.lcssa48, %96 ]
  %82 = phi i32 [ %78, %80 ], [ %.lcssa22, %96 ]
  %83 = phi i32 [ 0, %80 ], [ %97, %96 ]
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = shl i32 %83, 3
  %invariant.op46 = add i32 %86, %78
  br label %87

87:                                               ; preds = %91, %85
  %88 = phi i32 [ %82, %85 ], [ %78, %91 ]
  %89 = phi i32 [ 0, %85 ], [ %95, %91 ]
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = shl i32 %89, 6
  %.reass47 = add i32 %92, %invariant.op46
  %93 = sext i32 %.reass47 to i64
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nsw i32 %89, 1
  br label %87, !llvm.loop !22

96:                                               ; preds = %87
  %.lcssa48 = phi i32 [ %89, %87 ]
  %.lcssa22 = phi i32 [ %88, %87 ]
  %97 = add nsw i32 %83, 1
  br label %81, !llvm.loop !23

98:                                               ; preds = %81
  %.lcssa4850.lcssa = phi i32 [ %.lcssa4850, %81 ]
  %.lcssa49 = phi i32 [ %83, %81 ]
  %.lcssa23 = phi i32 [ %82, %81 ]
  %99 = add nsw i32 %.lcssa23, 1
  br label %77, !llvm.loop !24

100:                                              ; preds = %77
  %.lcssa4850.lcssa53.lcssa = phi i32 [ %.lcssa4850.lcssa53, %77 ]
  %.lcssa4952.lcssa = phi i32 [ %.lcssa4952, %77 ]
  %.lcssa51 = phi i32 [ %78, %77 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4952.lcssa, ptr %2, align 4
  store i32 %.lcssa4850.lcssa53.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %101

101:                                              ; preds = %122, %100
  %.lcssa5658.lcssa61 = phi i32 [ poison, %100 ], [ %.lcssa5658.lcssa, %122 ]
  %.lcssa5760 = phi i32 [ poison, %100 ], [ %.lcssa57, %122 ]
  %102 = phi i32 [ 0, %100 ], [ %123, %122 ]
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %124

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %120, %104
  %.lcssa5658 = phi i32 [ poison, %104 ], [ %.lcssa56, %120 ]
  %106 = phi i32 [ %102, %104 ], [ %.lcssa20, %120 ]
  %107 = phi i32 [ 0, %104 ], [ %121, %120 ]
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = shl i32 %107, 3
  %invariant.op54 = add i32 %110, %102
  br label %111

111:                                              ; preds = %115, %109
  %112 = phi i32 [ %106, %109 ], [ %102, %115 ]
  %113 = phi i32 [ 0, %109 ], [ %119, %115 ]
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = shl i32 %113, 6
  %.reass55 = add i32 %116, %invariant.op54
  %117 = sext i32 %.reass55 to i64
  %118 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %117
  store i32 1, ptr %118, align 4
  %119 = add nsw i32 %113, 1
  br label %111, !llvm.loop !25

120:                                              ; preds = %111
  %.lcssa56 = phi i32 [ %113, %111 ]
  %.lcssa20 = phi i32 [ %112, %111 ]
  %121 = add nsw i32 %107, 1
  br label %105, !llvm.loop !26

122:                                              ; preds = %105
  %.lcssa5658.lcssa = phi i32 [ %.lcssa5658, %105 ]
  %.lcssa57 = phi i32 [ %107, %105 ]
  %.lcssa21 = phi i32 [ %106, %105 ]
  %123 = add nsw i32 %.lcssa21, 1
  br label %101, !llvm.loop !27

124:                                              ; preds = %101
  %.lcssa5658.lcssa61.lcssa = phi i32 [ %.lcssa5658.lcssa61, %101 ]
  %.lcssa5760.lcssa = phi i32 [ %.lcssa5760, %101 ]
  %.lcssa59 = phi i32 [ %102, %101 ]
  store i32 %.lcssa59, ptr %1, align 4
  store i32 %.lcssa5760.lcssa, ptr %2, align 4
  store i32 %.lcssa5658.lcssa61.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %125

125:                                              ; preds = %146, %124
  %.lcssa6466.lcssa69 = phi i32 [ poison, %124 ], [ %.lcssa6466.lcssa, %146 ]
  %.lcssa6568 = phi i32 [ poison, %124 ], [ %.lcssa65, %146 ]
  %126 = phi i32 [ 0, %124 ], [ %147, %146 ]
  %127 = icmp slt i32 %126, 2
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %144, %128
  %.lcssa6466 = phi i32 [ poison, %128 ], [ %.lcssa64, %144 ]
  %130 = phi i32 [ %126, %128 ], [ %.lcssa18, %144 ]
  %131 = phi i32 [ 0, %128 ], [ %145, %144 ]
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = shl i32 %131, 3
  %invariant.op62 = add i32 %134, %126
  br label %135

135:                                              ; preds = %139, %133
  %136 = phi i32 [ %130, %133 ], [ %126, %139 ]
  %137 = phi i32 [ 0, %133 ], [ %143, %139 ]
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = shl i32 %137, 6
  %.reass63 = add i32 %140, %invariant.op62
  %141 = sext i32 %.reass63 to i64
  %142 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nsw i32 %137, 1
  br label %135, !llvm.loop !28

144:                                              ; preds = %135
  %.lcssa64 = phi i32 [ %137, %135 ]
  %.lcssa18 = phi i32 [ %136, %135 ]
  %145 = add nsw i32 %131, 1
  br label %129, !llvm.loop !29

146:                                              ; preds = %129
  %.lcssa6466.lcssa = phi i32 [ %.lcssa6466, %129 ]
  %.lcssa65 = phi i32 [ %131, %129 ]
  %.lcssa19 = phi i32 [ %130, %129 ]
  %147 = add nsw i32 %.lcssa19, 1
  br label %125, !llvm.loop !30

148:                                              ; preds = %125
  %.lcssa6466.lcssa69.lcssa = phi i32 [ %.lcssa6466.lcssa69, %125 ]
  %.lcssa6568.lcssa = phi i32 [ %.lcssa6568, %125 ]
  %.lcssa67 = phi i32 [ %126, %125 ]
  store i32 %.lcssa67, ptr %1, align 4
  store i32 %.lcssa6568.lcssa, ptr %2, align 4
  store i32 %.lcssa6466.lcssa69.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %149

149:                                              ; preds = %170, %148
  %.lcssa7274.lcssa77 = phi i32 [ poison, %148 ], [ %.lcssa7274.lcssa, %170 ]
  %.lcssa7376 = phi i32 [ poison, %148 ], [ %.lcssa73, %170 ]
  %150 = phi i32 [ 0, %148 ], [ %171, %170 ]
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %172

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %168, %152
  %.lcssa7274 = phi i32 [ poison, %152 ], [ %.lcssa72, %168 ]
  %154 = phi i32 [ %150, %152 ], [ %.lcssa16, %168 ]
  %155 = phi i32 [ 0, %152 ], [ %169, %168 ]
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = shl i32 %155, 3
  %invariant.op70 = add i32 %158, %150
  br label %159

159:                                              ; preds = %163, %157
  %160 = phi i32 [ %154, %157 ], [ %150, %163 ]
  %161 = phi i32 [ 0, %157 ], [ %167, %163 ]
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = shl i32 %161, 6
  %.reass71 = add i32 %164, %invariant.op70
  %165 = sext i32 %.reass71 to i64
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %165
  store i32 1, ptr %166, align 4
  %167 = add nsw i32 %161, 1
  br label %159, !llvm.loop !31

168:                                              ; preds = %159
  %.lcssa72 = phi i32 [ %161, %159 ]
  %.lcssa16 = phi i32 [ %160, %159 ]
  %169 = add nsw i32 %155, 1
  br label %153, !llvm.loop !32

170:                                              ; preds = %153
  %.lcssa7274.lcssa = phi i32 [ %.lcssa7274, %153 ]
  %.lcssa73 = phi i32 [ %155, %153 ]
  %.lcssa17 = phi i32 [ %154, %153 ]
  %171 = add nsw i32 %.lcssa17, 1
  br label %149, !llvm.loop !33

172:                                              ; preds = %149
  %.lcssa7274.lcssa77.lcssa = phi i32 [ %.lcssa7274.lcssa77, %149 ]
  %.lcssa7376.lcssa = phi i32 [ %.lcssa7376, %149 ]
  %.lcssa75 = phi i32 [ %150, %149 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7376.lcssa, ptr %2, align 4
  store i32 %.lcssa7274.lcssa77.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %173

173:                                              ; preds = %194, %172
  %.lcssa8082.lcssa85 = phi i32 [ poison, %172 ], [ %.lcssa8082.lcssa, %194 ]
  %.lcssa8184 = phi i32 [ poison, %172 ], [ %.lcssa81, %194 ]
  %174 = phi i32 [ 0, %172 ], [ %195, %194 ]
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %176, label %196

176:                                              ; preds = %173
  br label %177

177:                                              ; preds = %192, %176
  %.lcssa8082 = phi i32 [ poison, %176 ], [ %.lcssa80, %192 ]
  %178 = phi i32 [ %174, %176 ], [ %.lcssa14, %192 ]
  %179 = phi i32 [ 0, %176 ], [ %193, %192 ]
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = shl i32 %179, 3
  %invariant.op78 = add i32 %182, %174
  br label %183

183:                                              ; preds = %187, %181
  %184 = phi i32 [ %178, %181 ], [ %174, %187 ]
  %185 = phi i32 [ 0, %181 ], [ %191, %187 ]
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = shl i32 %185, 6
  %.reass79 = add i32 %188, %invariant.op78
  %189 = sext i32 %.reass79 to i64
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %189
  store i32 1, ptr %190, align 4
  %191 = add nsw i32 %185, 1
  br label %183, !llvm.loop !34

192:                                              ; preds = %183
  %.lcssa80 = phi i32 [ %185, %183 ]
  %.lcssa14 = phi i32 [ %184, %183 ]
  %193 = add nsw i32 %179, 1
  br label %177, !llvm.loop !35

194:                                              ; preds = %177
  %.lcssa8082.lcssa = phi i32 [ %.lcssa8082, %177 ]
  %.lcssa81 = phi i32 [ %179, %177 ]
  %.lcssa15 = phi i32 [ %178, %177 ]
  %195 = add nsw i32 %.lcssa15, 1
  br label %173, !llvm.loop !36

196:                                              ; preds = %173
  %.lcssa8082.lcssa85.lcssa = phi i32 [ %.lcssa8082.lcssa85, %173 ]
  %.lcssa8184.lcssa = phi i32 [ %.lcssa8184, %173 ]
  %.lcssa83 = phi i32 [ %174, %173 ]
  store i32 %.lcssa83, ptr %1, align 4
  store i32 %.lcssa8184.lcssa, ptr %2, align 4
  store i32 %.lcssa8082.lcssa85.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %197

197:                                              ; preds = %218, %196
  %.lcssa8890.lcssa93 = phi i32 [ poison, %196 ], [ %.lcssa8890.lcssa, %218 ]
  %.lcssa8992 = phi i32 [ poison, %196 ], [ %.lcssa89, %218 ]
  %198 = phi i32 [ 0, %196 ], [ %219, %218 ]
  %199 = icmp slt i32 %198, 3
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %216, %200
  %.lcssa8890 = phi i32 [ poison, %200 ], [ %.lcssa88, %216 ]
  %202 = phi i32 [ %198, %200 ], [ %.lcssa12, %216 ]
  %203 = phi i32 [ 0, %200 ], [ %217, %216 ]
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %218

205:                                              ; preds = %201
  %206 = shl i32 %203, 3
  %invariant.op86 = add i32 %206, %198
  br label %207

207:                                              ; preds = %211, %205
  %208 = phi i32 [ %202, %205 ], [ %198, %211 ]
  %209 = phi i32 [ 0, %205 ], [ %215, %211 ]
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = shl i32 %209, 6
  %.reass87 = add i32 %212, %invariant.op86
  %213 = sext i32 %.reass87 to i64
  %214 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nsw i32 %209, 1
  br label %207, !llvm.loop !37

216:                                              ; preds = %207
  %.lcssa88 = phi i32 [ %209, %207 ]
  %.lcssa12 = phi i32 [ %208, %207 ]
  %217 = add nsw i32 %203, 1
  br label %201, !llvm.loop !38

218:                                              ; preds = %201
  %.lcssa8890.lcssa = phi i32 [ %.lcssa8890, %201 ]
  %.lcssa89 = phi i32 [ %203, %201 ]
  %.lcssa13 = phi i32 [ %202, %201 ]
  %219 = add nsw i32 %.lcssa13, 1
  br label %197, !llvm.loop !39

220:                                              ; preds = %197
  %.lcssa8890.lcssa93.lcssa = phi i32 [ %.lcssa8890.lcssa93, %197 ]
  %.lcssa8992.lcssa = phi i32 [ %.lcssa8992, %197 ]
  %.lcssa91 = phi i32 [ %198, %197 ]
  store i32 %.lcssa91, ptr %1, align 4
  store i32 %.lcssa8992.lcssa, ptr %2, align 4
  store i32 %.lcssa8890.lcssa93.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %221

221:                                              ; preds = %242, %220
  %.lcssa9698.lcssa101 = phi i32 [ poison, %220 ], [ %.lcssa9698.lcssa, %242 ]
  %.lcssa97100 = phi i32 [ poison, %220 ], [ %.lcssa97, %242 ]
  %222 = phi i32 [ 0, %220 ], [ %243, %242 ]
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %240, %224
  %.lcssa9698 = phi i32 [ poison, %224 ], [ %.lcssa96, %240 ]
  %226 = phi i32 [ %222, %224 ], [ %.lcssa10, %240 ]
  %227 = phi i32 [ 0, %224 ], [ %241, %240 ]
  %228 = icmp slt i32 %227, 3
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = shl i32 %227, 3
  %invariant.op94 = add i32 %230, %222
  br label %231

231:                                              ; preds = %235, %229
  %232 = phi i32 [ %226, %229 ], [ %222, %235 ]
  %233 = phi i32 [ 0, %229 ], [ %239, %235 ]
  %234 = icmp slt i32 %233, 1
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = shl i32 %233, 6
  %.reass95 = add i32 %236, %invariant.op94
  %237 = sext i32 %.reass95 to i64
  %238 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %237
  store i32 1, ptr %238, align 4
  %239 = add nsw i32 %233, 1
  br label %231, !llvm.loop !40

240:                                              ; preds = %231
  %.lcssa96 = phi i32 [ %233, %231 ]
  %.lcssa10 = phi i32 [ %232, %231 ]
  %241 = add nsw i32 %227, 1
  br label %225, !llvm.loop !41

242:                                              ; preds = %225
  %.lcssa9698.lcssa = phi i32 [ %.lcssa9698, %225 ]
  %.lcssa97 = phi i32 [ %227, %225 ]
  %.lcssa11 = phi i32 [ %226, %225 ]
  %243 = add nsw i32 %.lcssa11, 1
  br label %221, !llvm.loop !42

244:                                              ; preds = %221
  %.lcssa9698.lcssa101.lcssa = phi i32 [ %.lcssa9698.lcssa101, %221 ]
  %.lcssa97100.lcssa = phi i32 [ %.lcssa97100, %221 ]
  %.lcssa99 = phi i32 [ %222, %221 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa97100.lcssa, ptr %2, align 4
  store i32 %.lcssa9698.lcssa101.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %245

245:                                              ; preds = %266, %244
  %.lcssa104106.lcssa109 = phi i32 [ poison, %244 ], [ %.lcssa104106.lcssa, %266 ]
  %.lcssa105108 = phi i32 [ poison, %244 ], [ %.lcssa105, %266 ]
  %246 = phi i32 [ 0, %244 ], [ %267, %266 ]
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %248, label %268

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %264, %248
  %.lcssa104106 = phi i32 [ poison, %248 ], [ %.lcssa104, %264 ]
  %250 = phi i32 [ %246, %248 ], [ %.lcssa8, %264 ]
  %251 = phi i32 [ 0, %248 ], [ %265, %264 ]
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %253, label %266

253:                                              ; preds = %249
  %254 = shl i32 %251, 3
  %invariant.op102 = add i32 %254, %246
  br label %255

255:                                              ; preds = %259, %253
  %256 = phi i32 [ %250, %253 ], [ %246, %259 ]
  %257 = phi i32 [ 0, %253 ], [ %263, %259 ]
  %258 = icmp slt i32 %257, 3
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = shl i32 %257, 6
  %.reass103 = add i32 %260, %invariant.op102
  %261 = sext i32 %.reass103 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %261
  store i32 1, ptr %262, align 4
  %263 = add nsw i32 %257, 1
  br label %255, !llvm.loop !43

264:                                              ; preds = %255
  %.lcssa104 = phi i32 [ %257, %255 ]
  %.lcssa8 = phi i32 [ %256, %255 ]
  %265 = add nsw i32 %251, 1
  br label %249, !llvm.loop !44

266:                                              ; preds = %249
  %.lcssa104106.lcssa = phi i32 [ %.lcssa104106, %249 ]
  %.lcssa105 = phi i32 [ %251, %249 ]
  %.lcssa9 = phi i32 [ %250, %249 ]
  %267 = add nsw i32 %.lcssa9, 1
  br label %245, !llvm.loop !45

268:                                              ; preds = %245
  %.lcssa104106.lcssa109.lcssa = phi i32 [ %.lcssa104106.lcssa109, %245 ]
  %.lcssa105108.lcssa = phi i32 [ %.lcssa105108, %245 ]
  %.lcssa107 = phi i32 [ %246, %245 ]
  store i32 %.lcssa107, ptr %1, align 4
  store i32 %.lcssa105108.lcssa, ptr %2, align 4
  store i32 %.lcssa104106.lcssa109.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %269

269:                                              ; preds = %290, %268
  %.lcssa112114.lcssa117 = phi i32 [ poison, %268 ], [ %.lcssa112114.lcssa, %290 ]
  %.lcssa113116 = phi i32 [ poison, %268 ], [ %.lcssa113, %290 ]
  %270 = phi i32 [ 0, %268 ], [ %291, %290 ]
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %292

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %288, %272
  %.lcssa112114 = phi i32 [ poison, %272 ], [ %.lcssa112, %288 ]
  %274 = phi i32 [ %270, %272 ], [ %.lcssa6, %288 ]
  %275 = phi i32 [ 0, %272 ], [ %289, %288 ]
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %277, label %290

277:                                              ; preds = %273
  %278 = shl i32 %275, 3
  %invariant.op110 = add i32 %278, %270
  br label %279

279:                                              ; preds = %283, %277
  %280 = phi i32 [ %274, %277 ], [ %270, %283 ]
  %281 = phi i32 [ 0, %277 ], [ %287, %283 ]
  %282 = icmp slt i32 %281, 1
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = shl i32 %281, 6
  %.reass111 = add i32 %284, %invariant.op110
  %285 = sext i32 %.reass111 to i64
  %286 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nsw i32 %281, 1
  br label %279, !llvm.loop !46

288:                                              ; preds = %279
  %.lcssa112 = phi i32 [ %281, %279 ]
  %.lcssa6 = phi i32 [ %280, %279 ]
  %289 = add nsw i32 %275, 1
  br label %273, !llvm.loop !47

290:                                              ; preds = %273
  %.lcssa112114.lcssa = phi i32 [ %.lcssa112114, %273 ]
  %.lcssa113 = phi i32 [ %275, %273 ]
  %.lcssa7 = phi i32 [ %274, %273 ]
  %291 = add nsw i32 %.lcssa7, 1
  br label %269, !llvm.loop !48

292:                                              ; preds = %269
  %.lcssa112114.lcssa117.lcssa = phi i32 [ %.lcssa112114.lcssa117, %269 ]
  %.lcssa113116.lcssa = phi i32 [ %.lcssa113116, %269 ]
  %.lcssa115 = phi i32 [ %270, %269 ]
  store i32 %.lcssa115, ptr %1, align 4
  store i32 %.lcssa113116.lcssa, ptr %2, align 4
  store i32 %.lcssa112114.lcssa117.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %293

293:                                              ; preds = %314, %292
  %.lcssa120122.lcssa125 = phi i32 [ poison, %292 ], [ %.lcssa120122.lcssa, %314 ]
  %.lcssa121124 = phi i32 [ poison, %292 ], [ %.lcssa121, %314 ]
  %294 = phi i32 [ 0, %292 ], [ %315, %314 ]
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %316

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %312, %296
  %.lcssa120122 = phi i32 [ poison, %296 ], [ %.lcssa120, %312 ]
  %298 = phi i32 [ %294, %296 ], [ %.lcssa4, %312 ]
  %299 = phi i32 [ 0, %296 ], [ %313, %312 ]
  %300 = icmp slt i32 %299, 1
  br i1 %300, label %301, label %314

301:                                              ; preds = %297
  %302 = shl i32 %299, 3
  %invariant.op118 = add i32 %302, %294
  br label %303

303:                                              ; preds = %307, %301
  %304 = phi i32 [ %298, %301 ], [ %294, %307 ]
  %305 = phi i32 [ 0, %301 ], [ %311, %307 ]
  %306 = icmp slt i32 %305, 2
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = shl i32 %305, 6
  %.reass119 = add i32 %308, %invariant.op118
  %309 = sext i32 %.reass119 to i64
  %310 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %309
  store i32 1, ptr %310, align 4
  %311 = add nsw i32 %305, 1
  br label %303, !llvm.loop !49

312:                                              ; preds = %303
  %.lcssa120 = phi i32 [ %305, %303 ]
  %.lcssa4 = phi i32 [ %304, %303 ]
  %313 = add nsw i32 %299, 1
  br label %297, !llvm.loop !50

314:                                              ; preds = %297
  %.lcssa120122.lcssa = phi i32 [ %.lcssa120122, %297 ]
  %.lcssa121 = phi i32 [ %299, %297 ]
  %.lcssa5 = phi i32 [ %298, %297 ]
  %315 = add nsw i32 %.lcssa5, 1
  br label %293, !llvm.loop !51

316:                                              ; preds = %293
  %.lcssa120122.lcssa125.lcssa = phi i32 [ %.lcssa120122.lcssa125, %293 ]
  %.lcssa121124.lcssa = phi i32 [ %.lcssa121124, %293 ]
  %.lcssa123 = phi i32 [ %294, %293 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa121124.lcssa, ptr %2, align 4
  store i32 %.lcssa120122.lcssa125.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %317

317:                                              ; preds = %338, %316
  %.lcssa128130.lcssa133 = phi i32 [ poison, %316 ], [ %.lcssa128130.lcssa, %338 ]
  %.lcssa129132 = phi i32 [ poison, %316 ], [ %.lcssa129, %338 ]
  %318 = phi i32 [ 0, %316 ], [ %339, %338 ]
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %340

320:                                              ; preds = %317
  br label %321

321:                                              ; preds = %336, %320
  %.lcssa128130 = phi i32 [ poison, %320 ], [ %.lcssa128, %336 ]
  %322 = phi i32 [ %318, %320 ], [ %.lcssa2, %336 ]
  %323 = phi i32 [ 0, %320 ], [ %337, %336 ]
  %324 = icmp slt i32 %323, 2
  br i1 %324, label %325, label %338

325:                                              ; preds = %321
  %326 = shl i32 %323, 3
  %invariant.op126 = add i32 %326, %318
  br label %327

327:                                              ; preds = %331, %325
  %328 = phi i32 [ %322, %325 ], [ %318, %331 ]
  %329 = phi i32 [ 0, %325 ], [ %335, %331 ]
  %330 = icmp slt i32 %329, 2
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = shl i32 %329, 6
  %.reass127 = add i32 %332, %invariant.op126
  %333 = sext i32 %.reass127 to i64
  %334 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %333
  store i32 1, ptr %334, align 4
  %335 = add nsw i32 %329, 1
  br label %327, !llvm.loop !52

336:                                              ; preds = %327
  %.lcssa128 = phi i32 [ %329, %327 ]
  %.lcssa2 = phi i32 [ %328, %327 ]
  %337 = add nsw i32 %323, 1
  br label %321, !llvm.loop !53

338:                                              ; preds = %321
  %.lcssa128130.lcssa = phi i32 [ %.lcssa128130, %321 ]
  %.lcssa129 = phi i32 [ %323, %321 ]
  %.lcssa3 = phi i32 [ %322, %321 ]
  %339 = add nsw i32 %.lcssa3, 1
  br label %317, !llvm.loop !54

340:                                              ; preds = %317
  %.lcssa128130.lcssa133.lcssa = phi i32 [ %.lcssa128130.lcssa133, %317 ]
  %.lcssa129132.lcssa = phi i32 [ %.lcssa129132, %317 ]
  %.lcssa131 = phi i32 [ %318, %317 ]
  store i32 %.lcssa131, ptr %1, align 4
  store i32 %.lcssa129132.lcssa, ptr %2, align 4
  store i32 %.lcssa128130.lcssa133.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %341

341:                                              ; preds = %362, %340
  %.lcssa136138.lcssa141 = phi i32 [ poison, %340 ], [ %.lcssa136138.lcssa, %362 ]
  %.lcssa137140 = phi i32 [ poison, %340 ], [ %.lcssa137, %362 ]
  %342 = phi i32 [ 0, %340 ], [ %363, %362 ]
  %343 = icmp slt i32 %342, 2
  br i1 %343, label %344, label %364

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %360, %344
  %.lcssa136138 = phi i32 [ poison, %344 ], [ %.lcssa136, %360 ]
  %346 = phi i32 [ %342, %344 ], [ %.lcssa, %360 ]
  %347 = phi i32 [ 0, %344 ], [ %361, %360 ]
  %348 = icmp slt i32 %347, 2
  br i1 %348, label %349, label %362

349:                                              ; preds = %345
  %350 = shl i32 %347, 3
  %invariant.op134 = add i32 %350, %342
  br label %351

351:                                              ; preds = %355, %349
  %352 = phi i32 [ %346, %349 ], [ %342, %355 ]
  %353 = phi i32 [ 0, %349 ], [ %359, %355 ]
  %354 = icmp slt i32 %353, 2
  br i1 %354, label %355, label %360

355:                                              ; preds = %351
  %356 = shl i32 %353, 6
  %.reass135 = add i32 %356, %invariant.op134
  %357 = sext i32 %.reass135 to i64
  %358 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %357
  store i32 1, ptr %358, align 4
  %359 = add nsw i32 %353, 1
  br label %351, !llvm.loop !55

360:                                              ; preds = %351
  %.lcssa136 = phi i32 [ %353, %351 ]
  %.lcssa = phi i32 [ %352, %351 ]
  %361 = add nsw i32 %347, 1
  br label %345, !llvm.loop !56

362:                                              ; preds = %345
  %.lcssa136138.lcssa = phi i32 [ %.lcssa136138, %345 ]
  %.lcssa137 = phi i32 [ %347, %345 ]
  %.lcssa1 = phi i32 [ %346, %345 ]
  %363 = add nsw i32 %.lcssa1, 1
  br label %341, !llvm.loop !57

364:                                              ; preds = %341
  %.lcssa136138.lcssa141.lcssa = phi i32 [ %.lcssa136138.lcssa141, %341 ]
  %.lcssa137140.lcssa = phi i32 [ %.lcssa137140, %341 ]
  %.lcssa139 = phi i32 [ %342, %341 ]
  store i32 %.lcssa139, ptr %1, align 4
  store i32 %.lcssa137140.lcssa, ptr %2, align 4
  store i32 %.lcssa136138.lcssa141.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %365 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %365, 0
  br i1 %.not, label %368, label %366

366:                                              ; preds = %364
  %367 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %367, ptr @n, align 4
  br label %369

368:                                              ; preds = %364
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %369

369:                                              ; preds = %368, %366
  %370 = phi i32 [ %.pre, %368 ], [ %367, %366 ]
  %371 = call i32 @Trial(i32 noundef %370)
  %.not16 = icmp eq i32 %371, 0
  br i1 %.not16, label %372, label %373

372:                                              ; preds = %369
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %377

373:                                              ; preds = %369
  %374 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %374, 2005
  br i1 %.not18, label %376, label %375

375:                                              ; preds = %373
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %376

376:                                              ; preds = %375, %373
  br label %377

377:                                              ; preds = %376, %372
  %378 = load i32, ptr @n, align 4
  %379 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %378) #4
  %380 = load i32, ptr @kount, align 4
  %381 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %380) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  store i32 %.lcssa, ptr %1, align 4
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
