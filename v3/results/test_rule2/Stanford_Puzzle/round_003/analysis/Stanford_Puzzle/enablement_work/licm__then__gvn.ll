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
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  br label %10

10:                                               ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %22 ]
  %.not = icmp sgt i32 %storemerge, %8
  br i1 %.not, label %24, label %11

11:                                               ; preds = %10
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %22, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %1, %storemerge
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %15
  store i32 %storemerge, ptr %5, align 4
  br label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %11
  %23 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

24:                                               ; preds = %10
  store i32 %storemerge, ptr %5, align 4
  br label %25

25:                                               ; preds = %24, %20
  %storemerge1 = phi i32 [ 1, %24 ], [ 0, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  br label %10

10:                                               ; preds = %19, %2
  %storemerge = phi i32 [ 0, %2 ], [ %20, %19 ]
  %.not = icmp sgt i32 %storemerge, %8
  br i1 %.not, label %21, label %11

11:                                               ; preds = %10
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %19, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %1, %storemerge
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !9

21:                                               ; preds = %10
  store i32 %storemerge, ptr %5, align 4
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %29

29:                                               ; preds = %35, %21
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ %28, %21 ]
  %30 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %31, label %36

31:                                               ; preds = %29
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %33 = load i32, ptr %32, align 4
  %.not3 = icmp eq i32 %33, 0
  br i1 %.not3, label %34, label %35

34:                                               ; preds = %31
  store i32 %30, ptr %5, align 4
  br label %37

35:                                               ; preds = %31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %29, !llvm.loop !10

36:                                               ; preds = %29
  store i32 %30, ptr %5, align 4
  br label %37

37:                                               ; preds = %36, %34
  %storemerge2 = phi i32 [ 0, %36 ], [ %30, %34 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  br label %10

10:                                               ; preds = %19, %2
  %storemerge = phi i32 [ 0, %2 ], [ %20, %19 ]
  %.not = icmp sgt i32 %storemerge, %8
  br i1 %.not, label %21, label %11

11:                                               ; preds = %10
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %19, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %1, %storemerge
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !11

21:                                               ; preds = %10
  store i32 %storemerge, ptr %5, align 4
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
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

7:                                                ; preds = %28, %1
  %8 = phi i32 [ undef, %1 ], [ %29, %28 ]
  %storemerge = phi i32 [ 0, %1 ], [ %30, %28 ]
  %9 = icmp slt i32 %storemerge, 13
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %28, label %17

17:                                               ; preds = %10
  %18 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %26, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %24

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22, %19
  %.lcssa2 = phi i32 [ 0, %22 ], [ %20, %19 ]
  store i32 %storemerge, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %32

25:                                               ; preds = %22
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %20, %25 ], [ %8, %17 ]
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi i32 [ %27, %26 ], [ %8, %10 ]
  %30 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !12

31:                                               ; preds = %7
  store i32 %storemerge, ptr %3, align 4
  store i32 %8, ptr %4, align 4
  br label %32

32:                                               ; preds = %31, %24
  %storemerge1 = phi i32 [ 0, %31 ], [ 1, %24 ]
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
  %storemerge = phi i32 [ 0, %0 ], [ %10, %7 ]
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

11:                                               ; preds = %5
  store i32 %storemerge, ptr %4, align 4
  br label %12

12:                                               ; preds = %28, %11
  %storemerge48.lcssa1.lcssa3 = phi i32 [ poison, %11 ], [ %storemerge48.lcssa1, %28 ]
  %storemerge47.lcssa2 = phi i32 [ poison, %11 ], [ %storemerge47, %28 ]
  %storemerge1 = phi i32 [ 1, %11 ], [ %29, %28 ]
  %13 = icmp slt i32 %storemerge1, 6
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %26, %14
  %storemerge48.lcssa1 = phi i32 [ poison, %14 ], [ %storemerge48, %26 ]
  %storemerge47 = phi i32 [ 1, %14 ], [ %27, %26 ]
  %16 = icmp slt i32 %storemerge47, 6
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %18, %storemerge1
  br label %19

19:                                               ; preds = %21, %17
  %storemerge48 = phi i32 [ 1, %17 ], [ %25, %21 ]
  %20 = icmp slt i32 %storemerge48, 6
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = shl i32 %storemerge48, 6
  %.reass = add i32 %22, %invariant.op
  %23 = sext i32 %.reass to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %25 = add nsw i32 %storemerge48, 1
  br label %19, !llvm.loop !14

26:                                               ; preds = %19
  %27 = add nsw i32 %storemerge47, 1
  br label %15, !llvm.loop !15

28:                                               ; preds = %15
  %29 = add nsw i32 %storemerge1, 1
  br label %12, !llvm.loop !16

30:                                               ; preds = %12
  store i32 %storemerge1, ptr %1, align 4
  store i32 %storemerge47.lcssa2, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3, ptr %3, align 4
  br label %31

31:                                               ; preds = %42, %30
  %storemerge46.lcssa4 = phi i32 [ poison, %30 ], [ %storemerge46, %42 ]
  %storemerge2 = phi i32 [ 0, %30 ], [ %43, %42 ]
  %32 = icmp slt i32 %storemerge2, 13
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = sext i32 %storemerge2 to i64
  %35 = getelementptr inbounds [2048 x i8], ptr @p, i64 %34
  br label %36

36:                                               ; preds = %38, %33
  %storemerge46 = phi i32 [ 0, %33 ], [ %41, %38 ]
  %37 = icmp slt i32 %storemerge46, 512
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = sext i32 %storemerge46 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %35, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %storemerge46, 1
  br label %36, !llvm.loop !17

42:                                               ; preds = %36
  %43 = add nsw i32 %storemerge2, 1
  br label %31, !llvm.loop !18

44:                                               ; preds = %31
  store i32 %storemerge2, ptr %1, align 4
  store i32 %storemerge46.lcssa4, ptr %4, align 4
  br label %45

45:                                               ; preds = %61, %44
  %storemerge45.lcssa7.lcssa9 = phi i32 [ poison, %44 ], [ %storemerge45.lcssa7, %61 ]
  %storemerge44.lcssa8 = phi i32 [ poison, %44 ], [ %storemerge44, %61 ]
  %storemerge3 = phi i32 [ 0, %44 ], [ %62, %61 ]
  %46 = icmp slt i32 %storemerge3, 4
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %59, %47
  %storemerge45.lcssa7 = phi i32 [ poison, %47 ], [ %storemerge45, %59 ]
  %storemerge44 = phi i32 [ 0, %47 ], [ %60, %59 ]
  %49 = icmp slt i32 %storemerge44, 2
  br i1 %49, label %50, label %61

50:                                               ; preds = %48
  %51 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %51, %storemerge3
  br label %52

52:                                               ; preds = %54, %50
  %storemerge45 = phi i32 [ 0, %50 ], [ %58, %54 ]
  %53 = icmp slt i32 %storemerge45, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %55, %invariant.op5
  %56 = sext i32 %.reass6 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @p, i64 %56
  store i32 1, ptr %57, align 4
  %58 = add nsw i32 %storemerge45, 1
  br label %52, !llvm.loop !19

59:                                               ; preds = %52
  %60 = add nsw i32 %storemerge44, 1
  br label %48, !llvm.loop !20

61:                                               ; preds = %48
  %62 = add nsw i32 %storemerge3, 1
  br label %45, !llvm.loop !21

63:                                               ; preds = %45
  store i32 %storemerge3, ptr %1, align 4
  store i32 %storemerge44.lcssa8, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %64

64:                                               ; preds = %80, %63
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %63 ], [ %storemerge43.lcssa12, %80 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %63 ], [ %storemerge42, %80 ]
  %storemerge4 = phi i32 [ 0, %63 ], [ %81, %80 ]
  %65 = icmp slt i32 %storemerge4, 2
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %78, %66
  %storemerge43.lcssa12 = phi i32 [ poison, %66 ], [ %storemerge43, %78 ]
  %storemerge42 = phi i32 [ 0, %66 ], [ %79, %78 ]
  %68 = icmp slt i32 %storemerge42, 1
  br i1 %68, label %69, label %80

69:                                               ; preds = %67
  %70 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %70, %storemerge4
  br label %71

71:                                               ; preds = %73, %69
  %storemerge43 = phi i32 [ 0, %69 ], [ %77, %73 ]
  %72 = icmp slt i32 %storemerge43, 4
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %74, %invariant.op10
  %75 = sext i32 %.reass11 to i64
  %76 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %75
  store i32 1, ptr %76, align 4
  %77 = add nsw i32 %storemerge43, 1
  br label %71, !llvm.loop !22

78:                                               ; preds = %71
  %79 = add nsw i32 %storemerge42, 1
  br label %67, !llvm.loop !23

80:                                               ; preds = %67
  %81 = add nsw i32 %storemerge4, 1
  br label %64, !llvm.loop !24

82:                                               ; preds = %64
  store i32 %storemerge4, ptr %1, align 4
  store i32 %storemerge42.lcssa13, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %83

83:                                               ; preds = %99, %82
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %82 ], [ %storemerge41.lcssa17, %99 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %82 ], [ %storemerge40, %99 ]
  %storemerge5 = phi i32 [ 0, %82 ], [ %100, %99 ]
  %84 = icmp slt i32 %storemerge5, 1
  br i1 %84, label %85, label %101

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %97, %85
  %storemerge41.lcssa17 = phi i32 [ poison, %85 ], [ %storemerge41, %97 ]
  %storemerge40 = phi i32 [ 0, %85 ], [ %98, %97 ]
  %87 = icmp slt i32 %storemerge40, 4
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %89, %storemerge5
  br label %90

90:                                               ; preds = %92, %88
  %storemerge41 = phi i32 [ 0, %88 ], [ %96, %92 ]
  %91 = icmp slt i32 %storemerge41, 2
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %93, %invariant.op15
  %94 = sext i32 %.reass16 to i64
  %95 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %94
  store i32 1, ptr %95, align 4
  %96 = add nsw i32 %storemerge41, 1
  br label %90, !llvm.loop !25

97:                                               ; preds = %90
  %98 = add nsw i32 %storemerge40, 1
  br label %86, !llvm.loop !26

99:                                               ; preds = %86
  %100 = add nsw i32 %storemerge5, 1
  br label %83, !llvm.loop !27

101:                                              ; preds = %83
  store i32 %storemerge5, ptr %1, align 4
  store i32 %storemerge40.lcssa18, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %102

102:                                              ; preds = %118, %101
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %101 ], [ %storemerge39.lcssa22, %118 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %101 ], [ %storemerge38, %118 ]
  %storemerge6 = phi i32 [ 0, %101 ], [ %119, %118 ]
  %103 = icmp slt i32 %storemerge6, 2
  br i1 %103, label %104, label %120

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %116, %104
  %storemerge39.lcssa22 = phi i32 [ poison, %104 ], [ %storemerge39, %116 ]
  %storemerge38 = phi i32 [ 0, %104 ], [ %117, %116 ]
  %106 = icmp slt i32 %storemerge38, 4
  br i1 %106, label %107, label %118

107:                                              ; preds = %105
  %108 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %108, %storemerge6
  br label %109

109:                                              ; preds = %111, %107
  %storemerge39 = phi i32 [ 0, %107 ], [ %115, %111 ]
  %110 = icmp slt i32 %storemerge39, 1
  br i1 %110, label %111, label %116

111:                                              ; preds = %109
  %112 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %112, %invariant.op20
  %113 = sext i32 %.reass21 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %storemerge39, 1
  br label %109, !llvm.loop !28

116:                                              ; preds = %109
  %117 = add nsw i32 %storemerge38, 1
  br label %105, !llvm.loop !29

118:                                              ; preds = %105
  %119 = add nsw i32 %storemerge6, 1
  br label %102, !llvm.loop !30

120:                                              ; preds = %102
  store i32 %storemerge6, ptr %1, align 4
  store i32 %storemerge38.lcssa23, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %121

121:                                              ; preds = %137, %120
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %120 ], [ %storemerge37.lcssa27, %137 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %120 ], [ %storemerge36, %137 ]
  %storemerge7 = phi i32 [ 0, %120 ], [ %138, %137 ]
  %122 = icmp slt i32 %storemerge7, 4
  br i1 %122, label %123, label %139

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %135, %123
  %storemerge37.lcssa27 = phi i32 [ poison, %123 ], [ %storemerge37, %135 ]
  %storemerge36 = phi i32 [ 0, %123 ], [ %136, %135 ]
  %125 = icmp slt i32 %storemerge36, 1
  br i1 %125, label %126, label %137

126:                                              ; preds = %124
  %127 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %127, %storemerge7
  br label %128

128:                                              ; preds = %130, %126
  %storemerge37 = phi i32 [ 0, %126 ], [ %134, %130 ]
  %129 = icmp slt i32 %storemerge37, 2
  br i1 %129, label %130, label %135

130:                                              ; preds = %128
  %131 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %131, %invariant.op25
  %132 = sext i32 %.reass26 to i64
  %133 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nsw i32 %storemerge37, 1
  br label %128, !llvm.loop !31

135:                                              ; preds = %128
  %136 = add nsw i32 %storemerge36, 1
  br label %124, !llvm.loop !32

137:                                              ; preds = %124
  %138 = add nsw i32 %storemerge7, 1
  br label %121, !llvm.loop !33

139:                                              ; preds = %121
  store i32 %storemerge7, ptr %1, align 4
  store i32 %storemerge36.lcssa28, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %140

140:                                              ; preds = %156, %139
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %139 ], [ %storemerge35.lcssa32, %156 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %139 ], [ %storemerge34, %156 ]
  %storemerge8 = phi i32 [ 0, %139 ], [ %157, %156 ]
  %141 = icmp slt i32 %storemerge8, 1
  br i1 %141, label %142, label %158

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %154, %142
  %storemerge35.lcssa32 = phi i32 [ poison, %142 ], [ %storemerge35, %154 ]
  %storemerge34 = phi i32 [ 0, %142 ], [ %155, %154 ]
  %144 = icmp slt i32 %storemerge34, 2
  br i1 %144, label %145, label %156

145:                                              ; preds = %143
  %146 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %146, %storemerge8
  br label %147

147:                                              ; preds = %149, %145
  %storemerge35 = phi i32 [ 0, %145 ], [ %153, %149 ]
  %148 = icmp slt i32 %storemerge35, 4
  br i1 %148, label %149, label %154

149:                                              ; preds = %147
  %150 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %150, %invariant.op30
  %151 = sext i32 %.reass31 to i64
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %151
  store i32 1, ptr %152, align 4
  %153 = add nsw i32 %storemerge35, 1
  br label %147, !llvm.loop !34

154:                                              ; preds = %147
  %155 = add nsw i32 %storemerge34, 1
  br label %143, !llvm.loop !35

156:                                              ; preds = %143
  %157 = add nsw i32 %storemerge8, 1
  br label %140, !llvm.loop !36

158:                                              ; preds = %140
  store i32 %storemerge8, ptr %1, align 4
  store i32 %storemerge34.lcssa33, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %159

159:                                              ; preds = %175, %158
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %158 ], [ %storemerge33.lcssa37, %175 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %158 ], [ %storemerge32, %175 ]
  %storemerge9 = phi i32 [ 0, %158 ], [ %176, %175 ]
  %160 = icmp slt i32 %storemerge9, 3
  br i1 %160, label %161, label %177

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %173, %161
  %storemerge33.lcssa37 = phi i32 [ poison, %161 ], [ %storemerge33, %173 ]
  %storemerge32 = phi i32 [ 0, %161 ], [ %174, %173 ]
  %163 = icmp slt i32 %storemerge32, 1
  br i1 %163, label %164, label %175

164:                                              ; preds = %162
  %165 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %165, %storemerge9
  br label %166

166:                                              ; preds = %168, %164
  %storemerge33 = phi i32 [ 0, %164 ], [ %172, %168 ]
  %167 = icmp slt i32 %storemerge33, 1
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %169, %invariant.op35
  %170 = sext i32 %.reass36 to i64
  %171 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %170
  store i32 1, ptr %171, align 4
  %172 = add nsw i32 %storemerge33, 1
  br label %166, !llvm.loop !37

173:                                              ; preds = %166
  %174 = add nsw i32 %storemerge32, 1
  br label %162, !llvm.loop !38

175:                                              ; preds = %162
  %176 = add nsw i32 %storemerge9, 1
  br label %159, !llvm.loop !39

177:                                              ; preds = %159
  store i32 %storemerge9, ptr %1, align 4
  store i32 %storemerge32.lcssa38, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %178

178:                                              ; preds = %194, %177
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %177 ], [ %storemerge31.lcssa42, %194 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %177 ], [ %storemerge30, %194 ]
  %storemerge10 = phi i32 [ 0, %177 ], [ %195, %194 ]
  %179 = icmp slt i32 %storemerge10, 1
  br i1 %179, label %180, label %196

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %192, %180
  %storemerge31.lcssa42 = phi i32 [ poison, %180 ], [ %storemerge31, %192 ]
  %storemerge30 = phi i32 [ 0, %180 ], [ %193, %192 ]
  %182 = icmp slt i32 %storemerge30, 3
  br i1 %182, label %183, label %194

183:                                              ; preds = %181
  %184 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %184, %storemerge10
  br label %185

185:                                              ; preds = %187, %183
  %storemerge31 = phi i32 [ 0, %183 ], [ %191, %187 ]
  %186 = icmp slt i32 %storemerge31, 1
  br i1 %186, label %187, label %192

187:                                              ; preds = %185
  %188 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %188, %invariant.op40
  %189 = sext i32 %.reass41 to i64
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %189
  store i32 1, ptr %190, align 4
  %191 = add nsw i32 %storemerge31, 1
  br label %185, !llvm.loop !40

192:                                              ; preds = %185
  %193 = add nsw i32 %storemerge30, 1
  br label %181, !llvm.loop !41

194:                                              ; preds = %181
  %195 = add nsw i32 %storemerge10, 1
  br label %178, !llvm.loop !42

196:                                              ; preds = %178
  store i32 %storemerge10, ptr %1, align 4
  store i32 %storemerge30.lcssa43, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %197

197:                                              ; preds = %213, %196
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %196 ], [ %storemerge29.lcssa47, %213 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %196 ], [ %storemerge28, %213 ]
  %storemerge11 = phi i32 [ 0, %196 ], [ %214, %213 ]
  %198 = icmp slt i32 %storemerge11, 1
  br i1 %198, label %199, label %215

199:                                              ; preds = %197
  br label %200

200:                                              ; preds = %211, %199
  %storemerge29.lcssa47 = phi i32 [ poison, %199 ], [ %storemerge29, %211 ]
  %storemerge28 = phi i32 [ 0, %199 ], [ %212, %211 ]
  %201 = icmp slt i32 %storemerge28, 1
  br i1 %201, label %202, label %213

202:                                              ; preds = %200
  %203 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %203, %storemerge11
  br label %204

204:                                              ; preds = %206, %202
  %storemerge29 = phi i32 [ 0, %202 ], [ %210, %206 ]
  %205 = icmp slt i32 %storemerge29, 3
  br i1 %205, label %206, label %211

206:                                              ; preds = %204
  %207 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %207, %invariant.op45
  %208 = sext i32 %.reass46 to i64
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %208
  store i32 1, ptr %209, align 4
  %210 = add nsw i32 %storemerge29, 1
  br label %204, !llvm.loop !43

211:                                              ; preds = %204
  %212 = add nsw i32 %storemerge28, 1
  br label %200, !llvm.loop !44

213:                                              ; preds = %200
  %214 = add nsw i32 %storemerge11, 1
  br label %197, !llvm.loop !45

215:                                              ; preds = %197
  store i32 %storemerge11, ptr %1, align 4
  store i32 %storemerge28.lcssa48, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %216

216:                                              ; preds = %232, %215
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %215 ], [ %storemerge27.lcssa52, %232 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %215 ], [ %storemerge26, %232 ]
  %storemerge12 = phi i32 [ 0, %215 ], [ %233, %232 ]
  %217 = icmp slt i32 %storemerge12, 2
  br i1 %217, label %218, label %234

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %230, %218
  %storemerge27.lcssa52 = phi i32 [ poison, %218 ], [ %storemerge27, %230 ]
  %storemerge26 = phi i32 [ 0, %218 ], [ %231, %230 ]
  %220 = icmp slt i32 %storemerge26, 2
  br i1 %220, label %221, label %232

221:                                              ; preds = %219
  %222 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %222, %storemerge12
  br label %223

223:                                              ; preds = %225, %221
  %storemerge27 = phi i32 [ 0, %221 ], [ %229, %225 ]
  %224 = icmp slt i32 %storemerge27, 1
  br i1 %224, label %225, label %230

225:                                              ; preds = %223
  %226 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %226, %invariant.op50
  %227 = sext i32 %.reass51 to i64
  %228 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %227
  store i32 1, ptr %228, align 4
  %229 = add nsw i32 %storemerge27, 1
  br label %223, !llvm.loop !46

230:                                              ; preds = %223
  %231 = add nsw i32 %storemerge26, 1
  br label %219, !llvm.loop !47

232:                                              ; preds = %219
  %233 = add nsw i32 %storemerge12, 1
  br label %216, !llvm.loop !48

234:                                              ; preds = %216
  store i32 %storemerge12, ptr %1, align 4
  store i32 %storemerge26.lcssa53, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %235

235:                                              ; preds = %251, %234
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %234 ], [ %storemerge25.lcssa57, %251 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %234 ], [ %storemerge24, %251 ]
  %storemerge13 = phi i32 [ 0, %234 ], [ %252, %251 ]
  %236 = icmp slt i32 %storemerge13, 2
  br i1 %236, label %237, label %253

237:                                              ; preds = %235
  br label %238

238:                                              ; preds = %249, %237
  %storemerge25.lcssa57 = phi i32 [ poison, %237 ], [ %storemerge25, %249 ]
  %storemerge24 = phi i32 [ 0, %237 ], [ %250, %249 ]
  %239 = icmp slt i32 %storemerge24, 1
  br i1 %239, label %240, label %251

240:                                              ; preds = %238
  %241 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %241, %storemerge13
  br label %242

242:                                              ; preds = %244, %240
  %storemerge25 = phi i32 [ 0, %240 ], [ %248, %244 ]
  %243 = icmp slt i32 %storemerge25, 2
  br i1 %243, label %244, label %249

244:                                              ; preds = %242
  %245 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %245, %invariant.op55
  %246 = sext i32 %.reass56 to i64
  %247 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %246
  store i32 1, ptr %247, align 4
  %248 = add nsw i32 %storemerge25, 1
  br label %242, !llvm.loop !49

249:                                              ; preds = %242
  %250 = add nsw i32 %storemerge24, 1
  br label %238, !llvm.loop !50

251:                                              ; preds = %238
  %252 = add nsw i32 %storemerge13, 1
  br label %235, !llvm.loop !51

253:                                              ; preds = %235
  store i32 %storemerge13, ptr %1, align 4
  store i32 %storemerge24.lcssa58, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %254

254:                                              ; preds = %270, %253
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %253 ], [ %storemerge23.lcssa62, %270 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %253 ], [ %storemerge22, %270 ]
  %storemerge14 = phi i32 [ 0, %253 ], [ %271, %270 ]
  %255 = icmp slt i32 %storemerge14, 1
  br i1 %255, label %256, label %272

256:                                              ; preds = %254
  br label %257

257:                                              ; preds = %268, %256
  %storemerge23.lcssa62 = phi i32 [ poison, %256 ], [ %storemerge23, %268 ]
  %storemerge22 = phi i32 [ 0, %256 ], [ %269, %268 ]
  %258 = icmp slt i32 %storemerge22, 2
  br i1 %258, label %259, label %270

259:                                              ; preds = %257
  %260 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %260, %storemerge14
  br label %261

261:                                              ; preds = %263, %259
  %storemerge23 = phi i32 [ 0, %259 ], [ %267, %263 ]
  %262 = icmp slt i32 %storemerge23, 2
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  %264 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %264, %invariant.op60
  %265 = sext i32 %.reass61 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %265
  store i32 1, ptr %266, align 4
  %267 = add nsw i32 %storemerge23, 1
  br label %261, !llvm.loop !52

268:                                              ; preds = %261
  %269 = add nsw i32 %storemerge22, 1
  br label %257, !llvm.loop !53

270:                                              ; preds = %257
  %271 = add nsw i32 %storemerge14, 1
  br label %254, !llvm.loop !54

272:                                              ; preds = %254
  store i32 %storemerge14, ptr %1, align 4
  store i32 %storemerge22.lcssa63, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %273

273:                                              ; preds = %289, %272
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %272 ], [ %storemerge21.lcssa67, %289 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %272 ], [ %storemerge20, %289 ]
  %storemerge15 = phi i32 [ 0, %272 ], [ %290, %289 ]
  %274 = icmp slt i32 %storemerge15, 2
  br i1 %274, label %275, label %291

275:                                              ; preds = %273
  br label %276

276:                                              ; preds = %287, %275
  %storemerge21.lcssa67 = phi i32 [ poison, %275 ], [ %storemerge21, %287 ]
  %storemerge20 = phi i32 [ 0, %275 ], [ %288, %287 ]
  %277 = icmp slt i32 %storemerge20, 2
  br i1 %277, label %278, label %289

278:                                              ; preds = %276
  %279 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %279, %storemerge15
  br label %280

280:                                              ; preds = %282, %278
  %storemerge21 = phi i32 [ 0, %278 ], [ %286, %282 ]
  %281 = icmp slt i32 %storemerge21, 2
  br i1 %281, label %282, label %287

282:                                              ; preds = %280
  %283 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %283, %invariant.op65
  %284 = sext i32 %.reass66 to i64
  %285 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %284
  store i32 1, ptr %285, align 4
  %286 = add nsw i32 %storemerge21, 1
  br label %280, !llvm.loop !55

287:                                              ; preds = %280
  %288 = add nsw i32 %storemerge20, 1
  br label %276, !llvm.loop !56

289:                                              ; preds = %276
  %290 = add nsw i32 %storemerge15, 1
  br label %273, !llvm.loop !57

291:                                              ; preds = %273
  store i32 %storemerge15, ptr %1, align 4
  store i32 %storemerge20.lcssa68, ptr %2, align 4
  store i32 %storemerge21.lcssa67.lcssa69, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %292 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %292, 0
  br i1 %.not, label %295, label %293

293:                                              ; preds = %291
  %294 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %294, ptr @n, align 4
  br label %296

295:                                              ; preds = %291
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %296

296:                                              ; preds = %295, %293
  %297 = phi i32 [ %.pre, %295 ], [ %294, %293 ]
  %298 = call i32 @Trial(i32 noundef %297)
  %.not16 = icmp eq i32 %298, 0
  br i1 %.not16, label %299, label %300

299:                                              ; preds = %296
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %304

300:                                              ; preds = %296
  %301 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %301, 2005
  br i1 %.not18, label %303, label %302

302:                                              ; preds = %300
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %303

303:                                              ; preds = %302, %300
  br label %304

304:                                              ; preds = %303, %299
  %305 = load i32, ptr @n, align 4
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %305) #4
  %307 = load i32, ptr @kount, align 4
  %308 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %307) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

6:                                                ; preds = %2
  store i32 %storemerge, ptr %1, align 4
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
