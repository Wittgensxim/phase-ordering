; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_004\output.ll'
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

10:                                               ; preds = %20, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.not = icmp sgt i32 %storemerge, %8
  br i1 %.not, label %22, label %11

11:                                               ; preds = %10
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr %9, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %1, %storemerge
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %20, label %22

20:                                               ; preds = %15, %11
  %21 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !7

22:                                               ; preds = %15, %10
  %storemerge1 = phi i32 [ 0, %15 ], [ 1, %10 ]
  store i32 %storemerge, ptr %5, align 4
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %29

29:                                               ; preds = %35, %21
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ %28, %21 ]
  %30 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %33 = load i32, ptr %32, align 4
  %.not3 = icmp eq i32 %33, 0
  br i1 %.not3, label %34, label %35

34:                                               ; preds = %31
  store i32 %30, ptr %5, align 4
  br label %36

35:                                               ; preds = %31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %29, !llvm.loop !10

.loopexit:                                        ; preds = %29
  store i32 %30, ptr %5, align 4
  br label %36

36:                                               ; preds = %.loopexit, %34
  %storemerge2 = phi i32 [ %30, %34 ], [ 0, %.loopexit ]
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
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %22, %1
  %storemerge = phi i32 [ 0, %1 ], [ %23, %22 ]
  %7 = icmp slt i32 %storemerge, 13
  br i1 %7, label %8, label %24

8:                                                ; preds = %6
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %22, label %15

15:                                               ; preds = %8
  %16 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %15
  %18 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %.not3 = icmp ne i32 %19, 0
  %20 = icmp eq i32 %18, 0
  %or.cond = or i1 %.not3, %20
  br i1 %or.cond, label %24, label %21

21:                                               ; preds = %17
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %22

22:                                               ; preds = %21, %15, %8
  %23 = add nsw i32 %storemerge, 1
  br label %6, !llvm.loop !12

24:                                               ; preds = %17, %6
  %storemerge1 = phi i32 [ 1, %17 ], [ 0, %6 ]
  store i32 %storemerge, ptr %3, align 4
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
  br i1 %6, label %7, label %.preheader31

.preheader31:                                     ; preds = %5
  store i32 %storemerge, ptr %4, align 4
  br label %11

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !13

11:                                               ; preds = %25, %.preheader31
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1, %25 ], [ poison, %.preheader31 ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47, %25 ], [ poison, %.preheader31 ]
  %storemerge1 = phi i32 [ %26, %25 ], [ 1, %.preheader31 ]
  %12 = icmp slt i32 %storemerge1, 6
  br i1 %12, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %11
  br label %13

.preheader28:                                     ; preds = %11
  store i32 %storemerge1, ptr %1, align 4
  store i32 %storemerge47.lcssa2, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3, ptr %3, align 4
  br label %27

13:                                               ; preds = %23, %.preheader30
  %storemerge48.lcssa1 = phi i32 [ %storemerge48, %23 ], [ poison, %.preheader30 ]
  %storemerge47 = phi i32 [ %24, %23 ], [ 1, %.preheader30 ]
  %14 = icmp slt i32 %storemerge47, 6
  br i1 %14, label %.preheader29, label %25

.preheader29:                                     ; preds = %13
  %15 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %15, %storemerge1
  br label %16

16:                                               ; preds = %18, %.preheader29
  %storemerge48 = phi i32 [ %22, %18 ], [ 1, %.preheader29 ]
  %17 = icmp slt i32 %storemerge48, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = shl i32 %storemerge48, 6
  %.reass = add i32 %19, %invariant.op
  %20 = sext i32 %.reass to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  %22 = add nsw i32 %storemerge48, 1
  br label %16, !llvm.loop !14

23:                                               ; preds = %16
  %24 = add nsw i32 %storemerge47, 1
  br label %13, !llvm.loop !15

25:                                               ; preds = %13
  %26 = add nsw i32 %storemerge1, 1
  br label %11, !llvm.loop !16

27:                                               ; preds = %37, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46, %37 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.preheader28 ]
  %28 = icmp slt i32 %storemerge2, 13
  br i1 %28, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %27
  %29 = sext i32 %storemerge2 to i64
  %30 = getelementptr inbounds [2048 x i8], ptr @p, i64 %29
  br label %31

.preheader26:                                     ; preds = %27
  store i32 %storemerge2, ptr %1, align 4
  store i32 %storemerge46.lcssa4, ptr %4, align 4
  br label %39

31:                                               ; preds = %33, %.preheader27
  %storemerge46 = phi i32 [ %36, %33 ], [ 0, %.preheader27 ]
  %32 = icmp slt i32 %storemerge46, 512
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = sext i32 %storemerge46 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %30, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nsw i32 %storemerge46, 1
  br label %31, !llvm.loop !17

37:                                               ; preds = %31
  %38 = add nsw i32 %storemerge2, 1
  br label %27, !llvm.loop !18

39:                                               ; preds = %53, %.preheader26
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7, %53 ], [ poison, %.preheader26 ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44, %53 ], [ poison, %.preheader26 ]
  %storemerge3 = phi i32 [ %54, %53 ], [ 0, %.preheader26 ]
  %40 = icmp slt i32 %storemerge3, 4
  br i1 %40, label %.preheader25, label %55

.preheader25:                                     ; preds = %39
  br label %41

41:                                               ; preds = %51, %.preheader25
  %storemerge45.lcssa7 = phi i32 [ %storemerge45, %51 ], [ poison, %.preheader25 ]
  %storemerge44 = phi i32 [ %52, %51 ], [ 0, %.preheader25 ]
  %42 = icmp slt i32 %storemerge44, 2
  br i1 %42, label %.preheader24, label %53

.preheader24:                                     ; preds = %41
  %43 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %43, %storemerge3
  br label %44

44:                                               ; preds = %46, %.preheader24
  %storemerge45 = phi i32 [ %50, %46 ], [ 0, %.preheader24 ]
  %45 = icmp slt i32 %storemerge45, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %47, %invariant.op5
  %48 = sext i32 %.reass6 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @p, i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nsw i32 %storemerge45, 1
  br label %44, !llvm.loop !19

51:                                               ; preds = %44
  %52 = add nsw i32 %storemerge44, 1
  br label %41, !llvm.loop !20

53:                                               ; preds = %41
  %54 = add nsw i32 %storemerge3, 1
  br label %39, !llvm.loop !21

55:                                               ; preds = %39
  store i32 %storemerge3, ptr %1, align 4
  store i32 %storemerge44.lcssa8, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %56

56:                                               ; preds = %70, %55
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %55 ], [ %storemerge43.lcssa12, %70 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %55 ], [ %storemerge42, %70 ]
  %storemerge4 = phi i32 [ 0, %55 ], [ %71, %70 ]
  %57 = icmp slt i32 %storemerge4, 2
  br i1 %57, label %.preheader23, label %72

.preheader23:                                     ; preds = %56
  br label %58

58:                                               ; preds = %68, %.preheader23
  %storemerge43.lcssa12 = phi i32 [ %storemerge43, %68 ], [ poison, %.preheader23 ]
  %storemerge42 = phi i32 [ %69, %68 ], [ 0, %.preheader23 ]
  %59 = icmp slt i32 %storemerge42, 1
  br i1 %59, label %.preheader22, label %70

.preheader22:                                     ; preds = %58
  %60 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %60, %storemerge4
  br label %61

61:                                               ; preds = %63, %.preheader22
  %storemerge43 = phi i32 [ %67, %63 ], [ 0, %.preheader22 ]
  %62 = icmp slt i32 %storemerge43, 4
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %64, %invariant.op10
  %65 = sext i32 %.reass11 to i64
  %66 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nsw i32 %storemerge43, 1
  br label %61, !llvm.loop !22

68:                                               ; preds = %61
  %69 = add nsw i32 %storemerge42, 1
  br label %58, !llvm.loop !23

70:                                               ; preds = %58
  %71 = add nsw i32 %storemerge4, 1
  br label %56, !llvm.loop !24

72:                                               ; preds = %56
  store i32 %storemerge4, ptr %1, align 4
  store i32 %storemerge42.lcssa13, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %73

73:                                               ; preds = %87, %72
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %72 ], [ %storemerge41.lcssa17, %87 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %72 ], [ %storemerge40, %87 ]
  %storemerge5 = phi i32 [ 0, %72 ], [ %88, %87 ]
  %74 = icmp slt i32 %storemerge5, 1
  br i1 %74, label %.preheader21, label %89

.preheader21:                                     ; preds = %73
  br label %75

75:                                               ; preds = %85, %.preheader21
  %storemerge41.lcssa17 = phi i32 [ %storemerge41, %85 ], [ poison, %.preheader21 ]
  %storemerge40 = phi i32 [ %86, %85 ], [ 0, %.preheader21 ]
  %76 = icmp slt i32 %storemerge40, 4
  br i1 %76, label %.preheader20, label %87

.preheader20:                                     ; preds = %75
  %77 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %77, %storemerge5
  br label %78

78:                                               ; preds = %80, %.preheader20
  %storemerge41 = phi i32 [ %84, %80 ], [ 0, %.preheader20 ]
  %79 = icmp slt i32 %storemerge41, 2
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %81, %invariant.op15
  %82 = sext i32 %.reass16 to i64
  %83 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %82
  store i32 1, ptr %83, align 4
  %84 = add nsw i32 %storemerge41, 1
  br label %78, !llvm.loop !25

85:                                               ; preds = %78
  %86 = add nsw i32 %storemerge40, 1
  br label %75, !llvm.loop !26

87:                                               ; preds = %75
  %88 = add nsw i32 %storemerge5, 1
  br label %73, !llvm.loop !27

89:                                               ; preds = %73
  store i32 %storemerge5, ptr %1, align 4
  store i32 %storemerge40.lcssa18, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %90

90:                                               ; preds = %104, %89
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %89 ], [ %storemerge39.lcssa22, %104 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %89 ], [ %storemerge38, %104 ]
  %storemerge6 = phi i32 [ 0, %89 ], [ %105, %104 ]
  %91 = icmp slt i32 %storemerge6, 2
  br i1 %91, label %.preheader19, label %106

.preheader19:                                     ; preds = %90
  br label %92

92:                                               ; preds = %102, %.preheader19
  %storemerge39.lcssa22 = phi i32 [ %storemerge39, %102 ], [ poison, %.preheader19 ]
  %storemerge38 = phi i32 [ %103, %102 ], [ 0, %.preheader19 ]
  %93 = icmp slt i32 %storemerge38, 4
  br i1 %93, label %.preheader18, label %104

.preheader18:                                     ; preds = %92
  %94 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %94, %storemerge6
  br label %95

95:                                               ; preds = %97, %.preheader18
  %storemerge39 = phi i32 [ %101, %97 ], [ 0, %.preheader18 ]
  %96 = icmp slt i32 %storemerge39, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %98, %invariant.op20
  %99 = sext i32 %.reass21 to i64
  %100 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %99
  store i32 1, ptr %100, align 4
  %101 = add nsw i32 %storemerge39, 1
  br label %95, !llvm.loop !28

102:                                              ; preds = %95
  %103 = add nsw i32 %storemerge38, 1
  br label %92, !llvm.loop !29

104:                                              ; preds = %92
  %105 = add nsw i32 %storemerge6, 1
  br label %90, !llvm.loop !30

106:                                              ; preds = %90
  store i32 %storemerge6, ptr %1, align 4
  store i32 %storemerge38.lcssa23, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %107

107:                                              ; preds = %121, %106
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %106 ], [ %storemerge37.lcssa27, %121 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %106 ], [ %storemerge36, %121 ]
  %storemerge7 = phi i32 [ 0, %106 ], [ %122, %121 ]
  %108 = icmp slt i32 %storemerge7, 4
  br i1 %108, label %.preheader17, label %123

.preheader17:                                     ; preds = %107
  br label %109

109:                                              ; preds = %119, %.preheader17
  %storemerge37.lcssa27 = phi i32 [ %storemerge37, %119 ], [ poison, %.preheader17 ]
  %storemerge36 = phi i32 [ %120, %119 ], [ 0, %.preheader17 ]
  %110 = icmp slt i32 %storemerge36, 1
  br i1 %110, label %.preheader16, label %121

.preheader16:                                     ; preds = %109
  %111 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %111, %storemerge7
  br label %112

112:                                              ; preds = %114, %.preheader16
  %storemerge37 = phi i32 [ %118, %114 ], [ 0, %.preheader16 ]
  %113 = icmp slt i32 %storemerge37, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %115, %invariant.op25
  %116 = sext i32 %.reass26 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nsw i32 %storemerge37, 1
  br label %112, !llvm.loop !31

119:                                              ; preds = %112
  %120 = add nsw i32 %storemerge36, 1
  br label %109, !llvm.loop !32

121:                                              ; preds = %109
  %122 = add nsw i32 %storemerge7, 1
  br label %107, !llvm.loop !33

123:                                              ; preds = %107
  store i32 %storemerge7, ptr %1, align 4
  store i32 %storemerge36.lcssa28, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %124

124:                                              ; preds = %138, %123
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %123 ], [ %storemerge35.lcssa32, %138 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %123 ], [ %storemerge34, %138 ]
  %storemerge8 = phi i32 [ 0, %123 ], [ %139, %138 ]
  %125 = icmp slt i32 %storemerge8, 1
  br i1 %125, label %.preheader15, label %140

.preheader15:                                     ; preds = %124
  br label %126

126:                                              ; preds = %136, %.preheader15
  %storemerge35.lcssa32 = phi i32 [ %storemerge35, %136 ], [ poison, %.preheader15 ]
  %storemerge34 = phi i32 [ %137, %136 ], [ 0, %.preheader15 ]
  %127 = icmp slt i32 %storemerge34, 2
  br i1 %127, label %.preheader14, label %138

.preheader14:                                     ; preds = %126
  %128 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %128, %storemerge8
  br label %129

129:                                              ; preds = %131, %.preheader14
  %storemerge35 = phi i32 [ %135, %131 ], [ 0, %.preheader14 ]
  %130 = icmp slt i32 %storemerge35, 4
  br i1 %130, label %131, label %136

131:                                              ; preds = %129
  %132 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %132, %invariant.op30
  %133 = sext i32 %.reass31 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nsw i32 %storemerge35, 1
  br label %129, !llvm.loop !34

136:                                              ; preds = %129
  %137 = add nsw i32 %storemerge34, 1
  br label %126, !llvm.loop !35

138:                                              ; preds = %126
  %139 = add nsw i32 %storemerge8, 1
  br label %124, !llvm.loop !36

140:                                              ; preds = %124
  store i32 %storemerge8, ptr %1, align 4
  store i32 %storemerge34.lcssa33, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %141

141:                                              ; preds = %155, %140
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %140 ], [ %storemerge33.lcssa37, %155 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %140 ], [ %storemerge32, %155 ]
  %storemerge9 = phi i32 [ 0, %140 ], [ %156, %155 ]
  %142 = icmp slt i32 %storemerge9, 3
  br i1 %142, label %.preheader13, label %157

.preheader13:                                     ; preds = %141
  br label %143

143:                                              ; preds = %153, %.preheader13
  %storemerge33.lcssa37 = phi i32 [ %storemerge33, %153 ], [ poison, %.preheader13 ]
  %storemerge32 = phi i32 [ %154, %153 ], [ 0, %.preheader13 ]
  %144 = icmp slt i32 %storemerge32, 1
  br i1 %144, label %.preheader12, label %155

.preheader12:                                     ; preds = %143
  %145 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %145, %storemerge9
  br label %146

146:                                              ; preds = %148, %.preheader12
  %storemerge33 = phi i32 [ %152, %148 ], [ 0, %.preheader12 ]
  %147 = icmp slt i32 %storemerge33, 1
  br i1 %147, label %148, label %153

148:                                              ; preds = %146
  %149 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %149, %invariant.op35
  %150 = sext i32 %.reass36 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %150
  store i32 1, ptr %151, align 4
  %152 = add nsw i32 %storemerge33, 1
  br label %146, !llvm.loop !37

153:                                              ; preds = %146
  %154 = add nsw i32 %storemerge32, 1
  br label %143, !llvm.loop !38

155:                                              ; preds = %143
  %156 = add nsw i32 %storemerge9, 1
  br label %141, !llvm.loop !39

157:                                              ; preds = %141
  store i32 %storemerge9, ptr %1, align 4
  store i32 %storemerge32.lcssa38, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %158

158:                                              ; preds = %172, %157
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %157 ], [ %storemerge31.lcssa42, %172 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %157 ], [ %storemerge30, %172 ]
  %storemerge10 = phi i32 [ 0, %157 ], [ %173, %172 ]
  %159 = icmp slt i32 %storemerge10, 1
  br i1 %159, label %.preheader11, label %174

.preheader11:                                     ; preds = %158
  br label %160

160:                                              ; preds = %170, %.preheader11
  %storemerge31.lcssa42 = phi i32 [ %storemerge31, %170 ], [ poison, %.preheader11 ]
  %storemerge30 = phi i32 [ %171, %170 ], [ 0, %.preheader11 ]
  %161 = icmp slt i32 %storemerge30, 3
  br i1 %161, label %.preheader10, label %172

.preheader10:                                     ; preds = %160
  %162 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %162, %storemerge10
  br label %163

163:                                              ; preds = %165, %.preheader10
  %storemerge31 = phi i32 [ %169, %165 ], [ 0, %.preheader10 ]
  %164 = icmp slt i32 %storemerge31, 1
  br i1 %164, label %165, label %170

165:                                              ; preds = %163
  %166 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %166, %invariant.op40
  %167 = sext i32 %.reass41 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nsw i32 %storemerge31, 1
  br label %163, !llvm.loop !40

170:                                              ; preds = %163
  %171 = add nsw i32 %storemerge30, 1
  br label %160, !llvm.loop !41

172:                                              ; preds = %160
  %173 = add nsw i32 %storemerge10, 1
  br label %158, !llvm.loop !42

174:                                              ; preds = %158
  store i32 %storemerge10, ptr %1, align 4
  store i32 %storemerge30.lcssa43, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %175

175:                                              ; preds = %189, %174
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %174 ], [ %storemerge29.lcssa47, %189 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %174 ], [ %storemerge28, %189 ]
  %storemerge11 = phi i32 [ 0, %174 ], [ %190, %189 ]
  %176 = icmp slt i32 %storemerge11, 1
  br i1 %176, label %.preheader9, label %191

.preheader9:                                      ; preds = %175
  br label %177

177:                                              ; preds = %187, %.preheader9
  %storemerge29.lcssa47 = phi i32 [ %storemerge29, %187 ], [ poison, %.preheader9 ]
  %storemerge28 = phi i32 [ %188, %187 ], [ 0, %.preheader9 ]
  %178 = icmp slt i32 %storemerge28, 1
  br i1 %178, label %.preheader8, label %189

.preheader8:                                      ; preds = %177
  %179 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %179, %storemerge11
  br label %180

180:                                              ; preds = %182, %.preheader8
  %storemerge29 = phi i32 [ %186, %182 ], [ 0, %.preheader8 ]
  %181 = icmp slt i32 %storemerge29, 3
  br i1 %181, label %182, label %187

182:                                              ; preds = %180
  %183 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %183, %invariant.op45
  %184 = sext i32 %.reass46 to i64
  %185 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %184
  store i32 1, ptr %185, align 4
  %186 = add nsw i32 %storemerge29, 1
  br label %180, !llvm.loop !43

187:                                              ; preds = %180
  %188 = add nsw i32 %storemerge28, 1
  br label %177, !llvm.loop !44

189:                                              ; preds = %177
  %190 = add nsw i32 %storemerge11, 1
  br label %175, !llvm.loop !45

191:                                              ; preds = %175
  store i32 %storemerge11, ptr %1, align 4
  store i32 %storemerge28.lcssa48, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %192

192:                                              ; preds = %206, %191
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %191 ], [ %storemerge27.lcssa52, %206 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %191 ], [ %storemerge26, %206 ]
  %storemerge12 = phi i32 [ 0, %191 ], [ %207, %206 ]
  %193 = icmp slt i32 %storemerge12, 2
  br i1 %193, label %.preheader7, label %208

.preheader7:                                      ; preds = %192
  br label %194

194:                                              ; preds = %204, %.preheader7
  %storemerge27.lcssa52 = phi i32 [ %storemerge27, %204 ], [ poison, %.preheader7 ]
  %storemerge26 = phi i32 [ %205, %204 ], [ 0, %.preheader7 ]
  %195 = icmp slt i32 %storemerge26, 2
  br i1 %195, label %.preheader6, label %206

.preheader6:                                      ; preds = %194
  %196 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %196, %storemerge12
  br label %197

197:                                              ; preds = %199, %.preheader6
  %storemerge27 = phi i32 [ %203, %199 ], [ 0, %.preheader6 ]
  %198 = icmp slt i32 %storemerge27, 1
  br i1 %198, label %199, label %204

199:                                              ; preds = %197
  %200 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %200, %invariant.op50
  %201 = sext i32 %.reass51 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %201
  store i32 1, ptr %202, align 4
  %203 = add nsw i32 %storemerge27, 1
  br label %197, !llvm.loop !46

204:                                              ; preds = %197
  %205 = add nsw i32 %storemerge26, 1
  br label %194, !llvm.loop !47

206:                                              ; preds = %194
  %207 = add nsw i32 %storemerge12, 1
  br label %192, !llvm.loop !48

208:                                              ; preds = %192
  store i32 %storemerge12, ptr %1, align 4
  store i32 %storemerge26.lcssa53, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %209

209:                                              ; preds = %223, %208
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %208 ], [ %storemerge25.lcssa57, %223 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %208 ], [ %storemerge24, %223 ]
  %storemerge13 = phi i32 [ 0, %208 ], [ %224, %223 ]
  %210 = icmp slt i32 %storemerge13, 2
  br i1 %210, label %.preheader5, label %225

.preheader5:                                      ; preds = %209
  br label %211

211:                                              ; preds = %221, %.preheader5
  %storemerge25.lcssa57 = phi i32 [ %storemerge25, %221 ], [ poison, %.preheader5 ]
  %storemerge24 = phi i32 [ %222, %221 ], [ 0, %.preheader5 ]
  %212 = icmp slt i32 %storemerge24, 1
  br i1 %212, label %.preheader4, label %223

.preheader4:                                      ; preds = %211
  %213 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %213, %storemerge13
  br label %214

214:                                              ; preds = %216, %.preheader4
  %storemerge25 = phi i32 [ %220, %216 ], [ 0, %.preheader4 ]
  %215 = icmp slt i32 %storemerge25, 2
  br i1 %215, label %216, label %221

216:                                              ; preds = %214
  %217 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %217, %invariant.op55
  %218 = sext i32 %.reass56 to i64
  %219 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %218
  store i32 1, ptr %219, align 4
  %220 = add nsw i32 %storemerge25, 1
  br label %214, !llvm.loop !49

221:                                              ; preds = %214
  %222 = add nsw i32 %storemerge24, 1
  br label %211, !llvm.loop !50

223:                                              ; preds = %211
  %224 = add nsw i32 %storemerge13, 1
  br label %209, !llvm.loop !51

225:                                              ; preds = %209
  store i32 %storemerge13, ptr %1, align 4
  store i32 %storemerge24.lcssa58, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %226

226:                                              ; preds = %240, %225
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %225 ], [ %storemerge23.lcssa62, %240 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %225 ], [ %storemerge22, %240 ]
  %storemerge14 = phi i32 [ 0, %225 ], [ %241, %240 ]
  %227 = icmp slt i32 %storemerge14, 1
  br i1 %227, label %.preheader3, label %242

.preheader3:                                      ; preds = %226
  br label %228

228:                                              ; preds = %238, %.preheader3
  %storemerge23.lcssa62 = phi i32 [ %storemerge23, %238 ], [ poison, %.preheader3 ]
  %storemerge22 = phi i32 [ %239, %238 ], [ 0, %.preheader3 ]
  %229 = icmp slt i32 %storemerge22, 2
  br i1 %229, label %.preheader2, label %240

.preheader2:                                      ; preds = %228
  %230 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %230, %storemerge14
  br label %231

231:                                              ; preds = %233, %.preheader2
  %storemerge23 = phi i32 [ %237, %233 ], [ 0, %.preheader2 ]
  %232 = icmp slt i32 %storemerge23, 2
  br i1 %232, label %233, label %238

233:                                              ; preds = %231
  %234 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %234, %invariant.op60
  %235 = sext i32 %.reass61 to i64
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %235
  store i32 1, ptr %236, align 4
  %237 = add nsw i32 %storemerge23, 1
  br label %231, !llvm.loop !52

238:                                              ; preds = %231
  %239 = add nsw i32 %storemerge22, 1
  br label %228, !llvm.loop !53

240:                                              ; preds = %228
  %241 = add nsw i32 %storemerge14, 1
  br label %226, !llvm.loop !54

242:                                              ; preds = %226
  store i32 %storemerge14, ptr %1, align 4
  store i32 %storemerge22.lcssa63, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %243

243:                                              ; preds = %257, %242
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %242 ], [ %storemerge21.lcssa67, %257 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %242 ], [ %storemerge20, %257 ]
  %storemerge15 = phi i32 [ 0, %242 ], [ %258, %257 ]
  %244 = icmp slt i32 %storemerge15, 2
  br i1 %244, label %.preheader1, label %259

.preheader1:                                      ; preds = %243
  br label %245

245:                                              ; preds = %255, %.preheader1
  %storemerge21.lcssa67 = phi i32 [ %storemerge21, %255 ], [ poison, %.preheader1 ]
  %storemerge20 = phi i32 [ %256, %255 ], [ 0, %.preheader1 ]
  %246 = icmp slt i32 %storemerge20, 2
  br i1 %246, label %.preheader, label %257

.preheader:                                       ; preds = %245
  %247 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %247, %storemerge15
  br label %248

248:                                              ; preds = %250, %.preheader
  %storemerge21 = phi i32 [ %254, %250 ], [ 0, %.preheader ]
  %249 = icmp slt i32 %storemerge21, 2
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %251, %invariant.op65
  %252 = sext i32 %.reass66 to i64
  %253 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %252
  store i32 1, ptr %253, align 4
  %254 = add nsw i32 %storemerge21, 1
  br label %248, !llvm.loop !55

255:                                              ; preds = %248
  %256 = add nsw i32 %storemerge20, 1
  br label %245, !llvm.loop !56

257:                                              ; preds = %245
  %258 = add nsw i32 %storemerge15, 1
  br label %243, !llvm.loop !57

259:                                              ; preds = %243
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
  %260 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %260, 0
  br i1 %.not, label %263, label %261

261:                                              ; preds = %259
  %262 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %262, ptr @n, align 4
  br label %264

263:                                              ; preds = %259
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %.pre, %263 ], [ %262, %261 ]
  %266 = call i32 @Trial(i32 noundef %265)
  %.not16 = icmp eq i32 %266, 0
  br i1 %.not16, label %267, label %268

267:                                              ; preds = %264
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %271

268:                                              ; preds = %264
  %269 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %269, 2005
  br i1 %.not18, label %271, label %270

270:                                              ; preds = %268
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %271

271:                                              ; preds = %270, %268, %267
  %272 = load i32, ptr @n, align 4
  %273 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %272) #4
  %274 = load i32, ptr @kount, align 4
  %275 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %274) #4
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
