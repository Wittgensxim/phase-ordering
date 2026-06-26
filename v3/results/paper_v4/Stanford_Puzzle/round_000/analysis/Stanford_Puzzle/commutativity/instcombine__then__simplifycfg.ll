; ModuleID = 'results\paper_v4\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  br label %6

6:                                                ; preds = %26, %2
  %storemerge = phi i32 [ 0, %2 ], [ %28, %26 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %29, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %26, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %26, label %29

26:                                               ; preds = %11, %19
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  br label %6, !llvm.loop !7

29:                                               ; preds = %6, %19
  %storemerge1 = phi i32 [ 0, %19 ], [ 1, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %25, %2
  %storemerge = phi i32 [ 0, %2 ], [ %27, %25 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %11, %19
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, -1
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @class, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %41
  store i32 %36, ptr %42, align 4
  %43 = load i32, ptr %4, align 4
  br label %44

44:                                               ; preds = %53, %28
  %storemerge1 = phi i32 [ %43, %28 ], [ %55, %53 ]
  store i32 %storemerge1, ptr %5, align 4
  %45 = icmp slt i32 %storemerge1, 512
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %48
  %50 = load i32, ptr %49, align 4
  %.not3 = icmp eq i32 %50, 0
  br i1 %.not3, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, ptr %5, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, ptr %5, align 4
  %55 = add nsw i32 %54, 1
  br label %44, !llvm.loop !10

56:                                               ; preds = %44, %51
  %storemerge2 = phi i32 [ %52, %51 ], [ 0, %44 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %25, %2
  %storemerge = phi i32 [ 0, %2 ], [ %27, %25 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %11, %19
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %6, !llvm.loop !11

28:                                               ; preds = %6
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @class, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %41
  store i32 %36, ptr %42, align 4
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

7:                                                ; preds = %31, %1
  %storemerge = phi i32 [ 0, %1 ], [ %33, %31 ]
  store i32 %storemerge, ptr %3, align 4
  %8 = icmp slt i32 %storemerge, 13
  br i1 %8, label %9, label %34

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %31, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @Fit(i32 noundef %18, i32 noundef %19)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %31, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %2, align 4
  %24 = call i32 @Place(i32 noundef %22, i32 noundef %23)
  store i32 %24, ptr %4, align 4
  %25 = call i32 @Trial(i32 noundef %24)
  %.not3 = icmp ne i32 %25, 0
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  %or.cond = select i1 %.not3, i1 true, i1 %27
  br i1 %or.cond, label %34, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %3, align 4
  %30 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %29, i32 noundef %30)
  br label %31

31:                                               ; preds = %9, %28, %17
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, 1
  br label %7, !llvm.loop !12

34:                                               ; preds = %7, %21
  %storemerge1 = phi i32 [ 1, %21 ], [ 0, %7 ]
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
  %storemerge = phi i32 [ 0, %0 ], [ %12, %7 ]
  store i32 %storemerge, ptr %4, align 4
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, 1
  br label %5, !llvm.loop !13

13:                                               ; preds = %5, %34
  %storemerge1 = phi i32 [ %36, %34 ], [ 1, %5 ]
  store i32 %storemerge1, ptr %1, align 4
  %14 = icmp slt i32 %storemerge1, 6
  br i1 %14, label %15, label %37

15:                                               ; preds = %13, %31
  %storemerge47 = phi i32 [ %33, %31 ], [ 1, %13 ]
  store i32 %storemerge47, ptr %2, align 4
  %16 = icmp slt i32 %storemerge47, 6
  br i1 %16, label %17, label %34

17:                                               ; preds = %15, %19
  %storemerge48 = phi i32 [ %30, %19 ], [ 1, %15 ]
  store i32 %storemerge48, ptr %3, align 4
  %18 = icmp slt i32 %storemerge48, 6
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load i32, ptr %1, align 4
  %21 = load i32, ptr %2, align 4
  %22 = load i32, ptr %3, align 4
  %23 = shl i32 %22, 6
  %24 = shl i32 %21, 3
  %25 = add i32 %23, %24
  %26 = add nsw i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  br label %17, !llvm.loop !14

31:                                               ; preds = %17
  %32 = load i32, ptr %2, align 4
  %33 = add nsw i32 %32, 1
  br label %15, !llvm.loop !15

34:                                               ; preds = %15
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  br label %13, !llvm.loop !16

37:                                               ; preds = %13, %50
  %storemerge2 = phi i32 [ %52, %50 ], [ 0, %13 ]
  store i32 %storemerge2, ptr %1, align 4
  %38 = icmp slt i32 %storemerge2, 13
  br i1 %38, label %39, label %53

39:                                               ; preds = %37, %41
  %storemerge46 = phi i32 [ %49, %41 ], [ 0, %37 ]
  store i32 %storemerge46, ptr %4, align 4
  %40 = icmp slt i32 %storemerge46, 512
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load i32, ptr %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2048 x i8], ptr @p, i64 %43
  %45 = load i32, ptr %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr %44, i64 %46
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add nsw i32 %48, 1
  br label %39, !llvm.loop !17

50:                                               ; preds = %39
  %51 = load i32, ptr %1, align 4
  %52 = add nsw i32 %51, 1
  br label %37, !llvm.loop !18

53:                                               ; preds = %37, %74
  %storemerge3 = phi i32 [ %76, %74 ], [ 0, %37 ]
  store i32 %storemerge3, ptr %1, align 4
  %54 = icmp slt i32 %storemerge3, 4
  br i1 %54, label %55, label %77

55:                                               ; preds = %53, %71
  %storemerge44 = phi i32 [ %73, %71 ], [ 0, %53 ]
  store i32 %storemerge44, ptr %2, align 4
  %56 = icmp slt i32 %storemerge44, 2
  br i1 %56, label %57, label %74

57:                                               ; preds = %55, %59
  %storemerge45 = phi i32 [ %70, %59 ], [ 0, %55 ]
  store i32 %storemerge45, ptr %3, align 4
  %58 = icmp slt i32 %storemerge45, 1
  br i1 %58, label %59, label %71

59:                                               ; preds = %57
  %60 = load i32, ptr %1, align 4
  %61 = load i32, ptr %2, align 4
  %62 = load i32, ptr %3, align 4
  %63 = shl i32 %62, 6
  %64 = shl i32 %61, 3
  %65 = add i32 %63, %64
  %66 = add nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @p, i64 %67
  store i32 1, ptr %68, align 4
  %69 = load i32, ptr %3, align 4
  %70 = add nsw i32 %69, 1
  br label %57, !llvm.loop !19

71:                                               ; preds = %57
  %72 = load i32, ptr %2, align 4
  %73 = add nsw i32 %72, 1
  br label %55, !llvm.loop !20

74:                                               ; preds = %55
  %75 = load i32, ptr %1, align 4
  %76 = add nsw i32 %75, 1
  br label %53, !llvm.loop !21

77:                                               ; preds = %53
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %78

78:                                               ; preds = %99, %77
  %storemerge4 = phi i32 [ 0, %77 ], [ %101, %99 ]
  store i32 %storemerge4, ptr %1, align 4
  %79 = icmp slt i32 %storemerge4, 2
  br i1 %79, label %80, label %102

80:                                               ; preds = %78, %96
  %storemerge42 = phi i32 [ %98, %96 ], [ 0, %78 ]
  store i32 %storemerge42, ptr %2, align 4
  %81 = icmp slt i32 %storemerge42, 1
  br i1 %81, label %82, label %99

82:                                               ; preds = %80, %84
  %storemerge43 = phi i32 [ %95, %84 ], [ 0, %80 ]
  store i32 %storemerge43, ptr %3, align 4
  %83 = icmp slt i32 %storemerge43, 4
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = load i32, ptr %1, align 4
  %86 = load i32, ptr %2, align 4
  %87 = load i32, ptr %3, align 4
  %88 = shl i32 %87, 6
  %89 = shl i32 %86, 3
  %90 = add i32 %88, %89
  %91 = add nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %92
  store i32 1, ptr %93, align 4
  %94 = load i32, ptr %3, align 4
  %95 = add nsw i32 %94, 1
  br label %82, !llvm.loop !22

96:                                               ; preds = %82
  %97 = load i32, ptr %2, align 4
  %98 = add nsw i32 %97, 1
  br label %80, !llvm.loop !23

99:                                               ; preds = %80
  %100 = load i32, ptr %1, align 4
  %101 = add nsw i32 %100, 1
  br label %78, !llvm.loop !24

102:                                              ; preds = %78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %103

103:                                              ; preds = %124, %102
  %storemerge5 = phi i32 [ 0, %102 ], [ %126, %124 ]
  store i32 %storemerge5, ptr %1, align 4
  %104 = icmp slt i32 %storemerge5, 1
  br i1 %104, label %105, label %127

105:                                              ; preds = %103, %121
  %storemerge40 = phi i32 [ %123, %121 ], [ 0, %103 ]
  store i32 %storemerge40, ptr %2, align 4
  %106 = icmp slt i32 %storemerge40, 4
  br i1 %106, label %107, label %124

107:                                              ; preds = %105, %109
  %storemerge41 = phi i32 [ %120, %109 ], [ 0, %105 ]
  store i32 %storemerge41, ptr %3, align 4
  %108 = icmp slt i32 %storemerge41, 2
  br i1 %108, label %109, label %121

109:                                              ; preds = %107
  %110 = load i32, ptr %1, align 4
  %111 = load i32, ptr %2, align 4
  %112 = load i32, ptr %3, align 4
  %113 = shl i32 %112, 6
  %114 = shl i32 %111, 3
  %115 = add i32 %113, %114
  %116 = add nsw i32 %110, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %117
  store i32 1, ptr %118, align 4
  %119 = load i32, ptr %3, align 4
  %120 = add nsw i32 %119, 1
  br label %107, !llvm.loop !25

121:                                              ; preds = %107
  %122 = load i32, ptr %2, align 4
  %123 = add nsw i32 %122, 1
  br label %105, !llvm.loop !26

124:                                              ; preds = %105
  %125 = load i32, ptr %1, align 4
  %126 = add nsw i32 %125, 1
  br label %103, !llvm.loop !27

127:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %128

128:                                              ; preds = %149, %127
  %storemerge6 = phi i32 [ 0, %127 ], [ %151, %149 ]
  store i32 %storemerge6, ptr %1, align 4
  %129 = icmp slt i32 %storemerge6, 2
  br i1 %129, label %130, label %152

130:                                              ; preds = %128, %146
  %storemerge38 = phi i32 [ %148, %146 ], [ 0, %128 ]
  store i32 %storemerge38, ptr %2, align 4
  %131 = icmp slt i32 %storemerge38, 4
  br i1 %131, label %132, label %149

132:                                              ; preds = %130, %134
  %storemerge39 = phi i32 [ %145, %134 ], [ 0, %130 ]
  store i32 %storemerge39, ptr %3, align 4
  %133 = icmp slt i32 %storemerge39, 1
  br i1 %133, label %134, label %146

134:                                              ; preds = %132
  %135 = load i32, ptr %1, align 4
  %136 = load i32, ptr %2, align 4
  %137 = load i32, ptr %3, align 4
  %138 = shl i32 %137, 6
  %139 = shl i32 %136, 3
  %140 = add i32 %138, %139
  %141 = add nsw i32 %135, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %142
  store i32 1, ptr %143, align 4
  %144 = load i32, ptr %3, align 4
  %145 = add nsw i32 %144, 1
  br label %132, !llvm.loop !28

146:                                              ; preds = %132
  %147 = load i32, ptr %2, align 4
  %148 = add nsw i32 %147, 1
  br label %130, !llvm.loop !29

149:                                              ; preds = %130
  %150 = load i32, ptr %1, align 4
  %151 = add nsw i32 %150, 1
  br label %128, !llvm.loop !30

152:                                              ; preds = %128
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %153

153:                                              ; preds = %174, %152
  %storemerge7 = phi i32 [ 0, %152 ], [ %176, %174 ]
  store i32 %storemerge7, ptr %1, align 4
  %154 = icmp slt i32 %storemerge7, 4
  br i1 %154, label %155, label %177

155:                                              ; preds = %153, %171
  %storemerge36 = phi i32 [ %173, %171 ], [ 0, %153 ]
  store i32 %storemerge36, ptr %2, align 4
  %156 = icmp slt i32 %storemerge36, 1
  br i1 %156, label %157, label %174

157:                                              ; preds = %155, %159
  %storemerge37 = phi i32 [ %170, %159 ], [ 0, %155 ]
  store i32 %storemerge37, ptr %3, align 4
  %158 = icmp slt i32 %storemerge37, 2
  br i1 %158, label %159, label %171

159:                                              ; preds = %157
  %160 = load i32, ptr %1, align 4
  %161 = load i32, ptr %2, align 4
  %162 = load i32, ptr %3, align 4
  %163 = shl i32 %162, 6
  %164 = shl i32 %161, 3
  %165 = add i32 %163, %164
  %166 = add nsw i32 %160, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %167
  store i32 1, ptr %168, align 4
  %169 = load i32, ptr %3, align 4
  %170 = add nsw i32 %169, 1
  br label %157, !llvm.loop !31

171:                                              ; preds = %157
  %172 = load i32, ptr %2, align 4
  %173 = add nsw i32 %172, 1
  br label %155, !llvm.loop !32

174:                                              ; preds = %155
  %175 = load i32, ptr %1, align 4
  %176 = add nsw i32 %175, 1
  br label %153, !llvm.loop !33

177:                                              ; preds = %153
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %178

178:                                              ; preds = %199, %177
  %storemerge8 = phi i32 [ 0, %177 ], [ %201, %199 ]
  store i32 %storemerge8, ptr %1, align 4
  %179 = icmp slt i32 %storemerge8, 1
  br i1 %179, label %180, label %202

180:                                              ; preds = %178, %196
  %storemerge34 = phi i32 [ %198, %196 ], [ 0, %178 ]
  store i32 %storemerge34, ptr %2, align 4
  %181 = icmp slt i32 %storemerge34, 2
  br i1 %181, label %182, label %199

182:                                              ; preds = %180, %184
  %storemerge35 = phi i32 [ %195, %184 ], [ 0, %180 ]
  store i32 %storemerge35, ptr %3, align 4
  %183 = icmp slt i32 %storemerge35, 4
  br i1 %183, label %184, label %196

184:                                              ; preds = %182
  %185 = load i32, ptr %1, align 4
  %186 = load i32, ptr %2, align 4
  %187 = load i32, ptr %3, align 4
  %188 = shl i32 %187, 6
  %189 = shl i32 %186, 3
  %190 = add i32 %188, %189
  %191 = add nsw i32 %185, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %192
  store i32 1, ptr %193, align 4
  %194 = load i32, ptr %3, align 4
  %195 = add nsw i32 %194, 1
  br label %182, !llvm.loop !34

196:                                              ; preds = %182
  %197 = load i32, ptr %2, align 4
  %198 = add nsw i32 %197, 1
  br label %180, !llvm.loop !35

199:                                              ; preds = %180
  %200 = load i32, ptr %1, align 4
  %201 = add nsw i32 %200, 1
  br label %178, !llvm.loop !36

202:                                              ; preds = %178
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %203

203:                                              ; preds = %224, %202
  %storemerge9 = phi i32 [ 0, %202 ], [ %226, %224 ]
  store i32 %storemerge9, ptr %1, align 4
  %204 = icmp slt i32 %storemerge9, 3
  br i1 %204, label %205, label %227

205:                                              ; preds = %203, %221
  %storemerge32 = phi i32 [ %223, %221 ], [ 0, %203 ]
  store i32 %storemerge32, ptr %2, align 4
  %206 = icmp slt i32 %storemerge32, 1
  br i1 %206, label %207, label %224

207:                                              ; preds = %205, %209
  %storemerge33 = phi i32 [ %220, %209 ], [ 0, %205 ]
  store i32 %storemerge33, ptr %3, align 4
  %208 = icmp slt i32 %storemerge33, 1
  br i1 %208, label %209, label %221

209:                                              ; preds = %207
  %210 = load i32, ptr %1, align 4
  %211 = load i32, ptr %2, align 4
  %212 = load i32, ptr %3, align 4
  %213 = shl i32 %212, 6
  %214 = shl i32 %211, 3
  %215 = add i32 %213, %214
  %216 = add nsw i32 %210, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %217
  store i32 1, ptr %218, align 4
  %219 = load i32, ptr %3, align 4
  %220 = add nsw i32 %219, 1
  br label %207, !llvm.loop !37

221:                                              ; preds = %207
  %222 = load i32, ptr %2, align 4
  %223 = add nsw i32 %222, 1
  br label %205, !llvm.loop !38

224:                                              ; preds = %205
  %225 = load i32, ptr %1, align 4
  %226 = add nsw i32 %225, 1
  br label %203, !llvm.loop !39

227:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %228

228:                                              ; preds = %249, %227
  %storemerge10 = phi i32 [ 0, %227 ], [ %251, %249 ]
  store i32 %storemerge10, ptr %1, align 4
  %229 = icmp slt i32 %storemerge10, 1
  br i1 %229, label %230, label %252

230:                                              ; preds = %228, %246
  %storemerge30 = phi i32 [ %248, %246 ], [ 0, %228 ]
  store i32 %storemerge30, ptr %2, align 4
  %231 = icmp slt i32 %storemerge30, 3
  br i1 %231, label %232, label %249

232:                                              ; preds = %230, %234
  %storemerge31 = phi i32 [ %245, %234 ], [ 0, %230 ]
  store i32 %storemerge31, ptr %3, align 4
  %233 = icmp slt i32 %storemerge31, 1
  br i1 %233, label %234, label %246

234:                                              ; preds = %232
  %235 = load i32, ptr %1, align 4
  %236 = load i32, ptr %2, align 4
  %237 = load i32, ptr %3, align 4
  %238 = shl i32 %237, 6
  %239 = shl i32 %236, 3
  %240 = add i32 %238, %239
  %241 = add nsw i32 %235, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %242
  store i32 1, ptr %243, align 4
  %244 = load i32, ptr %3, align 4
  %245 = add nsw i32 %244, 1
  br label %232, !llvm.loop !40

246:                                              ; preds = %232
  %247 = load i32, ptr %2, align 4
  %248 = add nsw i32 %247, 1
  br label %230, !llvm.loop !41

249:                                              ; preds = %230
  %250 = load i32, ptr %1, align 4
  %251 = add nsw i32 %250, 1
  br label %228, !llvm.loop !42

252:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %253

253:                                              ; preds = %274, %252
  %storemerge11 = phi i32 [ 0, %252 ], [ %276, %274 ]
  store i32 %storemerge11, ptr %1, align 4
  %254 = icmp slt i32 %storemerge11, 1
  br i1 %254, label %255, label %277

255:                                              ; preds = %253, %271
  %storemerge28 = phi i32 [ %273, %271 ], [ 0, %253 ]
  store i32 %storemerge28, ptr %2, align 4
  %256 = icmp slt i32 %storemerge28, 1
  br i1 %256, label %257, label %274

257:                                              ; preds = %255, %259
  %storemerge29 = phi i32 [ %270, %259 ], [ 0, %255 ]
  store i32 %storemerge29, ptr %3, align 4
  %258 = icmp slt i32 %storemerge29, 3
  br i1 %258, label %259, label %271

259:                                              ; preds = %257
  %260 = load i32, ptr %1, align 4
  %261 = load i32, ptr %2, align 4
  %262 = load i32, ptr %3, align 4
  %263 = shl i32 %262, 6
  %264 = shl i32 %261, 3
  %265 = add i32 %263, %264
  %266 = add nsw i32 %260, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %267
  store i32 1, ptr %268, align 4
  %269 = load i32, ptr %3, align 4
  %270 = add nsw i32 %269, 1
  br label %257, !llvm.loop !43

271:                                              ; preds = %257
  %272 = load i32, ptr %2, align 4
  %273 = add nsw i32 %272, 1
  br label %255, !llvm.loop !44

274:                                              ; preds = %255
  %275 = load i32, ptr %1, align 4
  %276 = add nsw i32 %275, 1
  br label %253, !llvm.loop !45

277:                                              ; preds = %253
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %278

278:                                              ; preds = %299, %277
  %storemerge12 = phi i32 [ 0, %277 ], [ %301, %299 ]
  store i32 %storemerge12, ptr %1, align 4
  %279 = icmp slt i32 %storemerge12, 2
  br i1 %279, label %280, label %302

280:                                              ; preds = %278, %296
  %storemerge26 = phi i32 [ %298, %296 ], [ 0, %278 ]
  store i32 %storemerge26, ptr %2, align 4
  %281 = icmp slt i32 %storemerge26, 2
  br i1 %281, label %282, label %299

282:                                              ; preds = %280, %284
  %storemerge27 = phi i32 [ %295, %284 ], [ 0, %280 ]
  store i32 %storemerge27, ptr %3, align 4
  %283 = icmp slt i32 %storemerge27, 1
  br i1 %283, label %284, label %296

284:                                              ; preds = %282
  %285 = load i32, ptr %1, align 4
  %286 = load i32, ptr %2, align 4
  %287 = load i32, ptr %3, align 4
  %288 = shl i32 %287, 6
  %289 = shl i32 %286, 3
  %290 = add i32 %288, %289
  %291 = add nsw i32 %285, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %292
  store i32 1, ptr %293, align 4
  %294 = load i32, ptr %3, align 4
  %295 = add nsw i32 %294, 1
  br label %282, !llvm.loop !46

296:                                              ; preds = %282
  %297 = load i32, ptr %2, align 4
  %298 = add nsw i32 %297, 1
  br label %280, !llvm.loop !47

299:                                              ; preds = %280
  %300 = load i32, ptr %1, align 4
  %301 = add nsw i32 %300, 1
  br label %278, !llvm.loop !48

302:                                              ; preds = %278
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %303

303:                                              ; preds = %324, %302
  %storemerge13 = phi i32 [ 0, %302 ], [ %326, %324 ]
  store i32 %storemerge13, ptr %1, align 4
  %304 = icmp slt i32 %storemerge13, 2
  br i1 %304, label %305, label %327

305:                                              ; preds = %303, %321
  %storemerge24 = phi i32 [ %323, %321 ], [ 0, %303 ]
  store i32 %storemerge24, ptr %2, align 4
  %306 = icmp slt i32 %storemerge24, 1
  br i1 %306, label %307, label %324

307:                                              ; preds = %305, %309
  %storemerge25 = phi i32 [ %320, %309 ], [ 0, %305 ]
  store i32 %storemerge25, ptr %3, align 4
  %308 = icmp slt i32 %storemerge25, 2
  br i1 %308, label %309, label %321

309:                                              ; preds = %307
  %310 = load i32, ptr %1, align 4
  %311 = load i32, ptr %2, align 4
  %312 = load i32, ptr %3, align 4
  %313 = shl i32 %312, 6
  %314 = shl i32 %311, 3
  %315 = add i32 %313, %314
  %316 = add nsw i32 %310, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %317
  store i32 1, ptr %318, align 4
  %319 = load i32, ptr %3, align 4
  %320 = add nsw i32 %319, 1
  br label %307, !llvm.loop !49

321:                                              ; preds = %307
  %322 = load i32, ptr %2, align 4
  %323 = add nsw i32 %322, 1
  br label %305, !llvm.loop !50

324:                                              ; preds = %305
  %325 = load i32, ptr %1, align 4
  %326 = add nsw i32 %325, 1
  br label %303, !llvm.loop !51

327:                                              ; preds = %303
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %328

328:                                              ; preds = %349, %327
  %storemerge14 = phi i32 [ 0, %327 ], [ %351, %349 ]
  store i32 %storemerge14, ptr %1, align 4
  %329 = icmp slt i32 %storemerge14, 1
  br i1 %329, label %330, label %352

330:                                              ; preds = %328, %346
  %storemerge22 = phi i32 [ %348, %346 ], [ 0, %328 ]
  store i32 %storemerge22, ptr %2, align 4
  %331 = icmp slt i32 %storemerge22, 2
  br i1 %331, label %332, label %349

332:                                              ; preds = %330, %334
  %storemerge23 = phi i32 [ %345, %334 ], [ 0, %330 ]
  store i32 %storemerge23, ptr %3, align 4
  %333 = icmp slt i32 %storemerge23, 2
  br i1 %333, label %334, label %346

334:                                              ; preds = %332
  %335 = load i32, ptr %1, align 4
  %336 = load i32, ptr %2, align 4
  %337 = load i32, ptr %3, align 4
  %338 = shl i32 %337, 6
  %339 = shl i32 %336, 3
  %340 = add i32 %338, %339
  %341 = add nsw i32 %335, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %342
  store i32 1, ptr %343, align 4
  %344 = load i32, ptr %3, align 4
  %345 = add nsw i32 %344, 1
  br label %332, !llvm.loop !52

346:                                              ; preds = %332
  %347 = load i32, ptr %2, align 4
  %348 = add nsw i32 %347, 1
  br label %330, !llvm.loop !53

349:                                              ; preds = %330
  %350 = load i32, ptr %1, align 4
  %351 = add nsw i32 %350, 1
  br label %328, !llvm.loop !54

352:                                              ; preds = %328
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %353

353:                                              ; preds = %374, %352
  %storemerge15 = phi i32 [ 0, %352 ], [ %376, %374 ]
  store i32 %storemerge15, ptr %1, align 4
  %354 = icmp slt i32 %storemerge15, 2
  br i1 %354, label %355, label %377

355:                                              ; preds = %353, %371
  %storemerge20 = phi i32 [ %373, %371 ], [ 0, %353 ]
  store i32 %storemerge20, ptr %2, align 4
  %356 = icmp slt i32 %storemerge20, 2
  br i1 %356, label %357, label %374

357:                                              ; preds = %355, %359
  %storemerge21 = phi i32 [ %370, %359 ], [ 0, %355 ]
  store i32 %storemerge21, ptr %3, align 4
  %358 = icmp slt i32 %storemerge21, 2
  br i1 %358, label %359, label %371

359:                                              ; preds = %357
  %360 = load i32, ptr %1, align 4
  %361 = load i32, ptr %2, align 4
  %362 = load i32, ptr %3, align 4
  %363 = shl i32 %362, 6
  %364 = shl i32 %361, 3
  %365 = add i32 %363, %364
  %366 = add nsw i32 %360, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %367
  store i32 1, ptr %368, align 4
  %369 = load i32, ptr %3, align 4
  %370 = add nsw i32 %369, 1
  br label %357, !llvm.loop !55

371:                                              ; preds = %357
  %372 = load i32, ptr %2, align 4
  %373 = add nsw i32 %372, 1
  br label %355, !llvm.loop !56

374:                                              ; preds = %355
  %375 = load i32, ptr %1, align 4
  %376 = add nsw i32 %375, 1
  br label %353, !llvm.loop !57

377:                                              ; preds = %353
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %378 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %378, 0
  br i1 %.not, label %382, label %379

379:                                              ; preds = %377
  %380 = load i32, ptr %4, align 4
  %381 = call i32 @Place(i32 noundef 0, i32 noundef %380)
  store i32 %381, ptr @n, align 4
  br label %383

382:                                              ; preds = %377
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %383

383:                                              ; preds = %382, %379
  %384 = load i32, ptr @n, align 4
  %385 = call i32 @Trial(i32 noundef %384)
  %.not16 = icmp eq i32 %385, 0
  br i1 %.not16, label %386, label %387

386:                                              ; preds = %383
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %390

387:                                              ; preds = %383
  %388 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %388, 2005
  br i1 %.not18, label %390, label %389

389:                                              ; preds = %387
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %390

390:                                              ; preds = %387, %389, %386
  %391 = load i32, ptr @n, align 4
  %392 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %391) #3
  %393 = load i32, ptr @kount, align 4
  %394 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %393) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %4 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = load i32, ptr %1, align 4
  %6 = add nsw i32 %5, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
