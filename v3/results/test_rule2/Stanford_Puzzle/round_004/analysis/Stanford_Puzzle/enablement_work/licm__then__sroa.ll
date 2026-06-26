; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_003\output.ll'
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %8
  %18 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %12, %7
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ], [ %storemerge, %7 ]
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %7 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
  %storemerge.lcssa = phi i32 [ %storemerge, %7 ]
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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

26:                                               ; preds = %33, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %25, %18 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %28, label %.loopexit

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %33

31:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %27, %28 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %28 ]
  %32 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %34

33:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  %.lcssa1 = phi i32 [ %27, %26 ]
  br label %34

34:                                               ; preds = %.loopexit, %31
  %storemerge2 = phi i32 [ %32, %31 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

18:                                               ; preds = %7
  %storemerge.lcssa = phi i32 [ %storemerge, %7 ]
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = phi i32 [ undef, %1 ], [ %22, %21 ]
  %storemerge = phi i32 [ 0, %1 ], [ %23, %21 ]
  %6 = icmp slt i32 %storemerge, 13
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %21, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not3 = icmp ne i32 %18, 0
  %19 = icmp eq i32 %17, 0
  %or.cond = select i1 %.not3, i1 true, i1 %19
  br i1 %or.cond, label %24, label %20

20:                                               ; preds = %16
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %14, %7
  %22 = phi i32 [ %17, %20 ], [ %5, %14 ], [ %5, %7 ]
  %23 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

24:                                               ; preds = %16, %4
  %25 = phi i32 [ %17, %16 ], [ %5, %4 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %16 ], [ %storemerge, %4 ]
  %storemerge1 = phi i32 [ 1, %16 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp slt i32 %storemerge, 512
  br i1 %2, label %3, label %.preheader31

.preheader31:                                     ; preds = %1
  %storemerge.lcssa = phi i32 [ %storemerge, %1 ]
  br label %7

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %21, %.preheader31
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %21 ], [ poison, %.preheader31 ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %21 ], [ poison, %.preheader31 ]
  %storemerge1 = phi i32 [ %22, %21 ], [ 1, %.preheader31 ]
  %8 = icmp slt i32 %storemerge1, 6
  br i1 %8, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %7
  br label %9

.preheader28:                                     ; preds = %7
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %7 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %7 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %7 ]
  br label %23

9:                                                ; preds = %19, %.preheader30
  %storemerge48.lcssa1 = phi i32 [ %storemerge48.lcssa, %19 ], [ poison, %.preheader30 ]
  %storemerge47 = phi i32 [ %20, %19 ], [ 1, %.preheader30 ]
  %10 = icmp slt i32 %storemerge47, 6
  br i1 %10, label %.preheader29, label %21

.preheader29:                                     ; preds = %9
  %11 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %11, %storemerge1
  br label %12

12:                                               ; preds = %14, %.preheader29
  %storemerge48 = phi i32 [ %18, %14 ], [ 1, %.preheader29 ]
  %13 = icmp slt i32 %storemerge48, 6
  br i1 %13, label %14, label %19

14:                                               ; preds = %12
  %15 = shl i32 %storemerge48, 6
  %.reass = add i32 %15, %invariant.op
  %16 = sext i32 %.reass to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  %18 = add nsw i32 %storemerge48, 1
  br label %12, !llvm.loop !14

19:                                               ; preds = %12
  %storemerge48.lcssa = phi i32 [ %storemerge48, %12 ]
  %20 = add nsw i32 %storemerge47, 1
  br label %9, !llvm.loop !15

21:                                               ; preds = %9
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa1, %9 ]
  %storemerge47.lcssa = phi i32 [ %storemerge47, %9 ]
  %22 = add nsw i32 %storemerge1, 1
  br label %7, !llvm.loop !16

23:                                               ; preds = %33, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %33 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %34, %33 ], [ 0, %.preheader28 ]
  %24 = icmp slt i32 %storemerge2, 13
  br i1 %24, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %23
  %25 = sext i32 %storemerge2 to i64
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %25
  br label %27

.preheader26:                                     ; preds = %23
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %23 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %23 ]
  br label %35

27:                                               ; preds = %29, %.preheader27
  %storemerge46 = phi i32 [ %32, %29 ], [ 0, %.preheader27 ]
  %28 = icmp slt i32 %storemerge46, 512
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = sext i32 %storemerge46 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %26, i64 %30
  store i32 0, ptr %31, align 4
  %32 = add nsw i32 %storemerge46, 1
  br label %27, !llvm.loop !17

33:                                               ; preds = %27
  %storemerge46.lcssa = phi i32 [ %storemerge46, %27 ]
  %34 = add nsw i32 %storemerge2, 1
  br label %23, !llvm.loop !18

35:                                               ; preds = %49, %.preheader26
  %storemerge45.lcssa7.lcssa9 = phi i32 [ %storemerge45.lcssa7.lcssa, %49 ], [ poison, %.preheader26 ]
  %storemerge44.lcssa8 = phi i32 [ %storemerge44.lcssa, %49 ], [ poison, %.preheader26 ]
  %storemerge3 = phi i32 [ %50, %49 ], [ 0, %.preheader26 ]
  %36 = icmp slt i32 %storemerge3, 4
  br i1 %36, label %.preheader25, label %51

.preheader25:                                     ; preds = %35
  br label %37

37:                                               ; preds = %47, %.preheader25
  %storemerge45.lcssa7 = phi i32 [ %storemerge45.lcssa, %47 ], [ poison, %.preheader25 ]
  %storemerge44 = phi i32 [ %48, %47 ], [ 0, %.preheader25 ]
  %38 = icmp slt i32 %storemerge44, 2
  br i1 %38, label %.preheader24, label %49

.preheader24:                                     ; preds = %37
  %39 = shl i32 %storemerge44, 3
  %invariant.op5 = add i32 %39, %storemerge3
  br label %40

40:                                               ; preds = %42, %.preheader24
  %storemerge45 = phi i32 [ %46, %42 ], [ 0, %.preheader24 ]
  %41 = icmp slt i32 %storemerge45, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = shl i32 %storemerge45, 6
  %.reass6 = add i32 %43, %invariant.op5
  %44 = sext i32 %.reass6 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @p, i64 %44
  store i32 1, ptr %45, align 4
  %46 = add nsw i32 %storemerge45, 1
  br label %40, !llvm.loop !19

47:                                               ; preds = %40
  %storemerge45.lcssa = phi i32 [ %storemerge45, %40 ]
  %48 = add nsw i32 %storemerge44, 1
  br label %37, !llvm.loop !20

49:                                               ; preds = %37
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa7, %37 ]
  %storemerge44.lcssa = phi i32 [ %storemerge44, %37 ]
  %50 = add nsw i32 %storemerge3, 1
  br label %35, !llvm.loop !21

51:                                               ; preds = %35
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa9, %35 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa8, %35 ]
  %storemerge3.lcssa = phi i32 [ %storemerge3, %35 ]
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %52

52:                                               ; preds = %66, %51
  %storemerge43.lcssa12.lcssa14 = phi i32 [ poison, %51 ], [ %storemerge43.lcssa12.lcssa, %66 ]
  %storemerge42.lcssa13 = phi i32 [ poison, %51 ], [ %storemerge42.lcssa, %66 ]
  %storemerge4 = phi i32 [ 0, %51 ], [ %67, %66 ]
  %53 = icmp slt i32 %storemerge4, 2
  br i1 %53, label %.preheader23, label %68

.preheader23:                                     ; preds = %52
  br label %54

54:                                               ; preds = %64, %.preheader23
  %storemerge43.lcssa12 = phi i32 [ %storemerge43.lcssa, %64 ], [ poison, %.preheader23 ]
  %storemerge42 = phi i32 [ %65, %64 ], [ 0, %.preheader23 ]
  %55 = icmp slt i32 %storemerge42, 1
  br i1 %55, label %.preheader22, label %66

.preheader22:                                     ; preds = %54
  %56 = shl i32 %storemerge42, 3
  %invariant.op10 = add i32 %56, %storemerge4
  br label %57

57:                                               ; preds = %59, %.preheader22
  %storemerge43 = phi i32 [ %63, %59 ], [ 0, %.preheader22 ]
  %58 = icmp slt i32 %storemerge43, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = shl i32 %storemerge43, 6
  %.reass11 = add i32 %60, %invariant.op10
  %61 = sext i32 %.reass11 to i64
  %62 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nsw i32 %storemerge43, 1
  br label %57, !llvm.loop !22

64:                                               ; preds = %57
  %storemerge43.lcssa = phi i32 [ %storemerge43, %57 ]
  %65 = add nsw i32 %storemerge42, 1
  br label %54, !llvm.loop !23

66:                                               ; preds = %54
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa12, %54 ]
  %storemerge42.lcssa = phi i32 [ %storemerge42, %54 ]
  %67 = add nsw i32 %storemerge4, 1
  br label %52, !llvm.loop !24

68:                                               ; preds = %52
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa14, %52 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa13, %52 ]
  %storemerge4.lcssa = phi i32 [ %storemerge4, %52 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %69

69:                                               ; preds = %83, %68
  %storemerge41.lcssa17.lcssa19 = phi i32 [ poison, %68 ], [ %storemerge41.lcssa17.lcssa, %83 ]
  %storemerge40.lcssa18 = phi i32 [ poison, %68 ], [ %storemerge40.lcssa, %83 ]
  %storemerge5 = phi i32 [ 0, %68 ], [ %84, %83 ]
  %70 = icmp slt i32 %storemerge5, 1
  br i1 %70, label %.preheader21, label %85

.preheader21:                                     ; preds = %69
  br label %71

71:                                               ; preds = %81, %.preheader21
  %storemerge41.lcssa17 = phi i32 [ %storemerge41.lcssa, %81 ], [ poison, %.preheader21 ]
  %storemerge40 = phi i32 [ %82, %81 ], [ 0, %.preheader21 ]
  %72 = icmp slt i32 %storemerge40, 4
  br i1 %72, label %.preheader20, label %83

.preheader20:                                     ; preds = %71
  %73 = shl i32 %storemerge40, 3
  %invariant.op15 = add i32 %73, %storemerge5
  br label %74

74:                                               ; preds = %76, %.preheader20
  %storemerge41 = phi i32 [ %80, %76 ], [ 0, %.preheader20 ]
  %75 = icmp slt i32 %storemerge41, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = shl i32 %storemerge41, 6
  %.reass16 = add i32 %77, %invariant.op15
  %78 = sext i32 %.reass16 to i64
  %79 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nsw i32 %storemerge41, 1
  br label %74, !llvm.loop !25

81:                                               ; preds = %74
  %storemerge41.lcssa = phi i32 [ %storemerge41, %74 ]
  %82 = add nsw i32 %storemerge40, 1
  br label %71, !llvm.loop !26

83:                                               ; preds = %71
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa17, %71 ]
  %storemerge40.lcssa = phi i32 [ %storemerge40, %71 ]
  %84 = add nsw i32 %storemerge5, 1
  br label %69, !llvm.loop !27

85:                                               ; preds = %69
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa19, %69 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa18, %69 ]
  %storemerge5.lcssa = phi i32 [ %storemerge5, %69 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %86

86:                                               ; preds = %100, %85
  %storemerge39.lcssa22.lcssa24 = phi i32 [ poison, %85 ], [ %storemerge39.lcssa22.lcssa, %100 ]
  %storemerge38.lcssa23 = phi i32 [ poison, %85 ], [ %storemerge38.lcssa, %100 ]
  %storemerge6 = phi i32 [ 0, %85 ], [ %101, %100 ]
  %87 = icmp slt i32 %storemerge6, 2
  br i1 %87, label %.preheader19, label %102

.preheader19:                                     ; preds = %86
  br label %88

88:                                               ; preds = %98, %.preheader19
  %storemerge39.lcssa22 = phi i32 [ %storemerge39.lcssa, %98 ], [ poison, %.preheader19 ]
  %storemerge38 = phi i32 [ %99, %98 ], [ 0, %.preheader19 ]
  %89 = icmp slt i32 %storemerge38, 4
  br i1 %89, label %.preheader18, label %100

.preheader18:                                     ; preds = %88
  %90 = shl i32 %storemerge38, 3
  %invariant.op20 = add i32 %90, %storemerge6
  br label %91

91:                                               ; preds = %93, %.preheader18
  %storemerge39 = phi i32 [ %97, %93 ], [ 0, %.preheader18 ]
  %92 = icmp slt i32 %storemerge39, 1
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = shl i32 %storemerge39, 6
  %.reass21 = add i32 %94, %invariant.op20
  %95 = sext i32 %.reass21 to i64
  %96 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nsw i32 %storemerge39, 1
  br label %91, !llvm.loop !28

98:                                               ; preds = %91
  %storemerge39.lcssa = phi i32 [ %storemerge39, %91 ]
  %99 = add nsw i32 %storemerge38, 1
  br label %88, !llvm.loop !29

100:                                              ; preds = %88
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa22, %88 ]
  %storemerge38.lcssa = phi i32 [ %storemerge38, %88 ]
  %101 = add nsw i32 %storemerge6, 1
  br label %86, !llvm.loop !30

102:                                              ; preds = %86
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa24, %86 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa23, %86 ]
  %storemerge6.lcssa = phi i32 [ %storemerge6, %86 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %103

103:                                              ; preds = %117, %102
  %storemerge37.lcssa27.lcssa29 = phi i32 [ poison, %102 ], [ %storemerge37.lcssa27.lcssa, %117 ]
  %storemerge36.lcssa28 = phi i32 [ poison, %102 ], [ %storemerge36.lcssa, %117 ]
  %storemerge7 = phi i32 [ 0, %102 ], [ %118, %117 ]
  %104 = icmp slt i32 %storemerge7, 4
  br i1 %104, label %.preheader17, label %119

.preheader17:                                     ; preds = %103
  br label %105

105:                                              ; preds = %115, %.preheader17
  %storemerge37.lcssa27 = phi i32 [ %storemerge37.lcssa, %115 ], [ poison, %.preheader17 ]
  %storemerge36 = phi i32 [ %116, %115 ], [ 0, %.preheader17 ]
  %106 = icmp slt i32 %storemerge36, 1
  br i1 %106, label %.preheader16, label %117

.preheader16:                                     ; preds = %105
  %107 = shl i32 %storemerge36, 3
  %invariant.op25 = add i32 %107, %storemerge7
  br label %108

108:                                              ; preds = %110, %.preheader16
  %storemerge37 = phi i32 [ %114, %110 ], [ 0, %.preheader16 ]
  %109 = icmp slt i32 %storemerge37, 2
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = shl i32 %storemerge37, 6
  %.reass26 = add i32 %111, %invariant.op25
  %112 = sext i32 %.reass26 to i64
  %113 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %112
  store i32 1, ptr %113, align 4
  %114 = add nsw i32 %storemerge37, 1
  br label %108, !llvm.loop !31

115:                                              ; preds = %108
  %storemerge37.lcssa = phi i32 [ %storemerge37, %108 ]
  %116 = add nsw i32 %storemerge36, 1
  br label %105, !llvm.loop !32

117:                                              ; preds = %105
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa27, %105 ]
  %storemerge36.lcssa = phi i32 [ %storemerge36, %105 ]
  %118 = add nsw i32 %storemerge7, 1
  br label %103, !llvm.loop !33

119:                                              ; preds = %103
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa29, %103 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa28, %103 ]
  %storemerge7.lcssa = phi i32 [ %storemerge7, %103 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %120

120:                                              ; preds = %134, %119
  %storemerge35.lcssa32.lcssa34 = phi i32 [ poison, %119 ], [ %storemerge35.lcssa32.lcssa, %134 ]
  %storemerge34.lcssa33 = phi i32 [ poison, %119 ], [ %storemerge34.lcssa, %134 ]
  %storemerge8 = phi i32 [ 0, %119 ], [ %135, %134 ]
  %121 = icmp slt i32 %storemerge8, 1
  br i1 %121, label %.preheader15, label %136

.preheader15:                                     ; preds = %120
  br label %122

122:                                              ; preds = %132, %.preheader15
  %storemerge35.lcssa32 = phi i32 [ %storemerge35.lcssa, %132 ], [ poison, %.preheader15 ]
  %storemerge34 = phi i32 [ %133, %132 ], [ 0, %.preheader15 ]
  %123 = icmp slt i32 %storemerge34, 2
  br i1 %123, label %.preheader14, label %134

.preheader14:                                     ; preds = %122
  %124 = shl i32 %storemerge34, 3
  %invariant.op30 = add i32 %124, %storemerge8
  br label %125

125:                                              ; preds = %127, %.preheader14
  %storemerge35 = phi i32 [ %131, %127 ], [ 0, %.preheader14 ]
  %126 = icmp slt i32 %storemerge35, 4
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = shl i32 %storemerge35, 6
  %.reass31 = add i32 %128, %invariant.op30
  %129 = sext i32 %.reass31 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %129
  store i32 1, ptr %130, align 4
  %131 = add nsw i32 %storemerge35, 1
  br label %125, !llvm.loop !34

132:                                              ; preds = %125
  %storemerge35.lcssa = phi i32 [ %storemerge35, %125 ]
  %133 = add nsw i32 %storemerge34, 1
  br label %122, !llvm.loop !35

134:                                              ; preds = %122
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa32, %122 ]
  %storemerge34.lcssa = phi i32 [ %storemerge34, %122 ]
  %135 = add nsw i32 %storemerge8, 1
  br label %120, !llvm.loop !36

136:                                              ; preds = %120
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa34, %120 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa33, %120 ]
  %storemerge8.lcssa = phi i32 [ %storemerge8, %120 ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %137

137:                                              ; preds = %151, %136
  %storemerge33.lcssa37.lcssa39 = phi i32 [ poison, %136 ], [ %storemerge33.lcssa37.lcssa, %151 ]
  %storemerge32.lcssa38 = phi i32 [ poison, %136 ], [ %storemerge32.lcssa, %151 ]
  %storemerge9 = phi i32 [ 0, %136 ], [ %152, %151 ]
  %138 = icmp slt i32 %storemerge9, 3
  br i1 %138, label %.preheader13, label %153

.preheader13:                                     ; preds = %137
  br label %139

139:                                              ; preds = %149, %.preheader13
  %storemerge33.lcssa37 = phi i32 [ %storemerge33.lcssa, %149 ], [ poison, %.preheader13 ]
  %storemerge32 = phi i32 [ %150, %149 ], [ 0, %.preheader13 ]
  %140 = icmp slt i32 %storemerge32, 1
  br i1 %140, label %.preheader12, label %151

.preheader12:                                     ; preds = %139
  %141 = shl i32 %storemerge32, 3
  %invariant.op35 = add i32 %141, %storemerge9
  br label %142

142:                                              ; preds = %144, %.preheader12
  %storemerge33 = phi i32 [ %148, %144 ], [ 0, %.preheader12 ]
  %143 = icmp slt i32 %storemerge33, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %142
  %145 = shl i32 %storemerge33, 6
  %.reass36 = add i32 %145, %invariant.op35
  %146 = sext i32 %.reass36 to i64
  %147 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %146
  store i32 1, ptr %147, align 4
  %148 = add nsw i32 %storemerge33, 1
  br label %142, !llvm.loop !37

149:                                              ; preds = %142
  %storemerge33.lcssa = phi i32 [ %storemerge33, %142 ]
  %150 = add nsw i32 %storemerge32, 1
  br label %139, !llvm.loop !38

151:                                              ; preds = %139
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa37, %139 ]
  %storemerge32.lcssa = phi i32 [ %storemerge32, %139 ]
  %152 = add nsw i32 %storemerge9, 1
  br label %137, !llvm.loop !39

153:                                              ; preds = %137
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa39, %137 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa38, %137 ]
  %storemerge9.lcssa = phi i32 [ %storemerge9, %137 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %154

154:                                              ; preds = %168, %153
  %storemerge31.lcssa42.lcssa44 = phi i32 [ poison, %153 ], [ %storemerge31.lcssa42.lcssa, %168 ]
  %storemerge30.lcssa43 = phi i32 [ poison, %153 ], [ %storemerge30.lcssa, %168 ]
  %storemerge10 = phi i32 [ 0, %153 ], [ %169, %168 ]
  %155 = icmp slt i32 %storemerge10, 1
  br i1 %155, label %.preheader11, label %170

.preheader11:                                     ; preds = %154
  br label %156

156:                                              ; preds = %166, %.preheader11
  %storemerge31.lcssa42 = phi i32 [ %storemerge31.lcssa, %166 ], [ poison, %.preheader11 ]
  %storemerge30 = phi i32 [ %167, %166 ], [ 0, %.preheader11 ]
  %157 = icmp slt i32 %storemerge30, 3
  br i1 %157, label %.preheader10, label %168

.preheader10:                                     ; preds = %156
  %158 = shl i32 %storemerge30, 3
  %invariant.op40 = add i32 %158, %storemerge10
  br label %159

159:                                              ; preds = %161, %.preheader10
  %storemerge31 = phi i32 [ %165, %161 ], [ 0, %.preheader10 ]
  %160 = icmp slt i32 %storemerge31, 1
  br i1 %160, label %161, label %166

161:                                              ; preds = %159
  %162 = shl i32 %storemerge31, 6
  %.reass41 = add i32 %162, %invariant.op40
  %163 = sext i32 %.reass41 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nsw i32 %storemerge31, 1
  br label %159, !llvm.loop !40

166:                                              ; preds = %159
  %storemerge31.lcssa = phi i32 [ %storemerge31, %159 ]
  %167 = add nsw i32 %storemerge30, 1
  br label %156, !llvm.loop !41

168:                                              ; preds = %156
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa42, %156 ]
  %storemerge30.lcssa = phi i32 [ %storemerge30, %156 ]
  %169 = add nsw i32 %storemerge10, 1
  br label %154, !llvm.loop !42

170:                                              ; preds = %154
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa44, %154 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa43, %154 ]
  %storemerge10.lcssa = phi i32 [ %storemerge10, %154 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %171

171:                                              ; preds = %185, %170
  %storemerge29.lcssa47.lcssa49 = phi i32 [ poison, %170 ], [ %storemerge29.lcssa47.lcssa, %185 ]
  %storemerge28.lcssa48 = phi i32 [ poison, %170 ], [ %storemerge28.lcssa, %185 ]
  %storemerge11 = phi i32 [ 0, %170 ], [ %186, %185 ]
  %172 = icmp slt i32 %storemerge11, 1
  br i1 %172, label %.preheader9, label %187

.preheader9:                                      ; preds = %171
  br label %173

173:                                              ; preds = %183, %.preheader9
  %storemerge29.lcssa47 = phi i32 [ %storemerge29.lcssa, %183 ], [ poison, %.preheader9 ]
  %storemerge28 = phi i32 [ %184, %183 ], [ 0, %.preheader9 ]
  %174 = icmp slt i32 %storemerge28, 1
  br i1 %174, label %.preheader8, label %185

.preheader8:                                      ; preds = %173
  %175 = shl i32 %storemerge28, 3
  %invariant.op45 = add i32 %175, %storemerge11
  br label %176

176:                                              ; preds = %178, %.preheader8
  %storemerge29 = phi i32 [ %182, %178 ], [ 0, %.preheader8 ]
  %177 = icmp slt i32 %storemerge29, 3
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  %179 = shl i32 %storemerge29, 6
  %.reass46 = add i32 %179, %invariant.op45
  %180 = sext i32 %.reass46 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %180
  store i32 1, ptr %181, align 4
  %182 = add nsw i32 %storemerge29, 1
  br label %176, !llvm.loop !43

183:                                              ; preds = %176
  %storemerge29.lcssa = phi i32 [ %storemerge29, %176 ]
  %184 = add nsw i32 %storemerge28, 1
  br label %173, !llvm.loop !44

185:                                              ; preds = %173
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa47, %173 ]
  %storemerge28.lcssa = phi i32 [ %storemerge28, %173 ]
  %186 = add nsw i32 %storemerge11, 1
  br label %171, !llvm.loop !45

187:                                              ; preds = %171
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa49, %171 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa48, %171 ]
  %storemerge11.lcssa = phi i32 [ %storemerge11, %171 ]
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %188

188:                                              ; preds = %202, %187
  %storemerge27.lcssa52.lcssa54 = phi i32 [ poison, %187 ], [ %storemerge27.lcssa52.lcssa, %202 ]
  %storemerge26.lcssa53 = phi i32 [ poison, %187 ], [ %storemerge26.lcssa, %202 ]
  %storemerge12 = phi i32 [ 0, %187 ], [ %203, %202 ]
  %189 = icmp slt i32 %storemerge12, 2
  br i1 %189, label %.preheader7, label %204

.preheader7:                                      ; preds = %188
  br label %190

190:                                              ; preds = %200, %.preheader7
  %storemerge27.lcssa52 = phi i32 [ %storemerge27.lcssa, %200 ], [ poison, %.preheader7 ]
  %storemerge26 = phi i32 [ %201, %200 ], [ 0, %.preheader7 ]
  %191 = icmp slt i32 %storemerge26, 2
  br i1 %191, label %.preheader6, label %202

.preheader6:                                      ; preds = %190
  %192 = shl i32 %storemerge26, 3
  %invariant.op50 = add i32 %192, %storemerge12
  br label %193

193:                                              ; preds = %195, %.preheader6
  %storemerge27 = phi i32 [ %199, %195 ], [ 0, %.preheader6 ]
  %194 = icmp slt i32 %storemerge27, 1
  br i1 %194, label %195, label %200

195:                                              ; preds = %193
  %196 = shl i32 %storemerge27, 6
  %.reass51 = add i32 %196, %invariant.op50
  %197 = sext i32 %.reass51 to i64
  %198 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %197
  store i32 1, ptr %198, align 4
  %199 = add nsw i32 %storemerge27, 1
  br label %193, !llvm.loop !46

200:                                              ; preds = %193
  %storemerge27.lcssa = phi i32 [ %storemerge27, %193 ]
  %201 = add nsw i32 %storemerge26, 1
  br label %190, !llvm.loop !47

202:                                              ; preds = %190
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa52, %190 ]
  %storemerge26.lcssa = phi i32 [ %storemerge26, %190 ]
  %203 = add nsw i32 %storemerge12, 1
  br label %188, !llvm.loop !48

204:                                              ; preds = %188
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa54, %188 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa53, %188 ]
  %storemerge12.lcssa = phi i32 [ %storemerge12, %188 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %205

205:                                              ; preds = %219, %204
  %storemerge25.lcssa57.lcssa59 = phi i32 [ poison, %204 ], [ %storemerge25.lcssa57.lcssa, %219 ]
  %storemerge24.lcssa58 = phi i32 [ poison, %204 ], [ %storemerge24.lcssa, %219 ]
  %storemerge13 = phi i32 [ 0, %204 ], [ %220, %219 ]
  %206 = icmp slt i32 %storemerge13, 2
  br i1 %206, label %.preheader5, label %221

.preheader5:                                      ; preds = %205
  br label %207

207:                                              ; preds = %217, %.preheader5
  %storemerge25.lcssa57 = phi i32 [ %storemerge25.lcssa, %217 ], [ poison, %.preheader5 ]
  %storemerge24 = phi i32 [ %218, %217 ], [ 0, %.preheader5 ]
  %208 = icmp slt i32 %storemerge24, 1
  br i1 %208, label %.preheader4, label %219

.preheader4:                                      ; preds = %207
  %209 = shl i32 %storemerge24, 3
  %invariant.op55 = add i32 %209, %storemerge13
  br label %210

210:                                              ; preds = %212, %.preheader4
  %storemerge25 = phi i32 [ %216, %212 ], [ 0, %.preheader4 ]
  %211 = icmp slt i32 %storemerge25, 2
  br i1 %211, label %212, label %217

212:                                              ; preds = %210
  %213 = shl i32 %storemerge25, 6
  %.reass56 = add i32 %213, %invariant.op55
  %214 = sext i32 %.reass56 to i64
  %215 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %214
  store i32 1, ptr %215, align 4
  %216 = add nsw i32 %storemerge25, 1
  br label %210, !llvm.loop !49

217:                                              ; preds = %210
  %storemerge25.lcssa = phi i32 [ %storemerge25, %210 ]
  %218 = add nsw i32 %storemerge24, 1
  br label %207, !llvm.loop !50

219:                                              ; preds = %207
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa57, %207 ]
  %storemerge24.lcssa = phi i32 [ %storemerge24, %207 ]
  %220 = add nsw i32 %storemerge13, 1
  br label %205, !llvm.loop !51

221:                                              ; preds = %205
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa59, %205 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa58, %205 ]
  %storemerge13.lcssa = phi i32 [ %storemerge13, %205 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %222

222:                                              ; preds = %236, %221
  %storemerge23.lcssa62.lcssa64 = phi i32 [ poison, %221 ], [ %storemerge23.lcssa62.lcssa, %236 ]
  %storemerge22.lcssa63 = phi i32 [ poison, %221 ], [ %storemerge22.lcssa, %236 ]
  %storemerge14 = phi i32 [ 0, %221 ], [ %237, %236 ]
  %223 = icmp slt i32 %storemerge14, 1
  br i1 %223, label %.preheader3, label %238

.preheader3:                                      ; preds = %222
  br label %224

224:                                              ; preds = %234, %.preheader3
  %storemerge23.lcssa62 = phi i32 [ %storemerge23.lcssa, %234 ], [ poison, %.preheader3 ]
  %storemerge22 = phi i32 [ %235, %234 ], [ 0, %.preheader3 ]
  %225 = icmp slt i32 %storemerge22, 2
  br i1 %225, label %.preheader2, label %236

.preheader2:                                      ; preds = %224
  %226 = shl i32 %storemerge22, 3
  %invariant.op60 = add i32 %226, %storemerge14
  br label %227

227:                                              ; preds = %229, %.preheader2
  %storemerge23 = phi i32 [ %233, %229 ], [ 0, %.preheader2 ]
  %228 = icmp slt i32 %storemerge23, 2
  br i1 %228, label %229, label %234

229:                                              ; preds = %227
  %230 = shl i32 %storemerge23, 6
  %.reass61 = add i32 %230, %invariant.op60
  %231 = sext i32 %.reass61 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %231
  store i32 1, ptr %232, align 4
  %233 = add nsw i32 %storemerge23, 1
  br label %227, !llvm.loop !52

234:                                              ; preds = %227
  %storemerge23.lcssa = phi i32 [ %storemerge23, %227 ]
  %235 = add nsw i32 %storemerge22, 1
  br label %224, !llvm.loop !53

236:                                              ; preds = %224
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa62, %224 ]
  %storemerge22.lcssa = phi i32 [ %storemerge22, %224 ]
  %237 = add nsw i32 %storemerge14, 1
  br label %222, !llvm.loop !54

238:                                              ; preds = %222
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa64, %222 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa63, %222 ]
  %storemerge14.lcssa = phi i32 [ %storemerge14, %222 ]
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %239

239:                                              ; preds = %253, %238
  %storemerge21.lcssa67.lcssa69 = phi i32 [ poison, %238 ], [ %storemerge21.lcssa67.lcssa, %253 ]
  %storemerge20.lcssa68 = phi i32 [ poison, %238 ], [ %storemerge20.lcssa, %253 ]
  %storemerge15 = phi i32 [ 0, %238 ], [ %254, %253 ]
  %240 = icmp slt i32 %storemerge15, 2
  br i1 %240, label %.preheader1, label %255

.preheader1:                                      ; preds = %239
  br label %241

241:                                              ; preds = %251, %.preheader1
  %storemerge21.lcssa67 = phi i32 [ %storemerge21.lcssa, %251 ], [ poison, %.preheader1 ]
  %storemerge20 = phi i32 [ %252, %251 ], [ 0, %.preheader1 ]
  %242 = icmp slt i32 %storemerge20, 2
  br i1 %242, label %.preheader, label %253

.preheader:                                       ; preds = %241
  %243 = shl i32 %storemerge20, 3
  %invariant.op65 = add i32 %243, %storemerge15
  br label %244

244:                                              ; preds = %246, %.preheader
  %storemerge21 = phi i32 [ %250, %246 ], [ 0, %.preheader ]
  %245 = icmp slt i32 %storemerge21, 2
  br i1 %245, label %246, label %251

246:                                              ; preds = %244
  %247 = shl i32 %storemerge21, 6
  %.reass66 = add i32 %247, %invariant.op65
  %248 = sext i32 %.reass66 to i64
  %249 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %248
  store i32 1, ptr %249, align 4
  %250 = add nsw i32 %storemerge21, 1
  br label %244, !llvm.loop !55

251:                                              ; preds = %244
  %storemerge21.lcssa = phi i32 [ %storemerge21, %244 ]
  %252 = add nsw i32 %storemerge20, 1
  br label %241, !llvm.loop !56

253:                                              ; preds = %241
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa67, %241 ]
  %storemerge20.lcssa = phi i32 [ %storemerge20, %241 ]
  %254 = add nsw i32 %storemerge15, 1
  br label %239, !llvm.loop !57

255:                                              ; preds = %239
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa69, %239 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa68, %239 ]
  %storemerge15.lcssa = phi i32 [ %storemerge15, %239 ]
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %256 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %256, 0
  br i1 %.not, label %259, label %257

257:                                              ; preds = %255
  %258 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %258, ptr @n, align 4
  br label %260

259:                                              ; preds = %255
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %260

260:                                              ; preds = %259, %257
  %261 = load i32, ptr @n, align 4
  %262 = call i32 @Trial(i32 noundef %261)
  %.not16 = icmp eq i32 %262, 0
  br i1 %.not16, label %263, label %264

263:                                              ; preds = %260
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %267

264:                                              ; preds = %260
  %265 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %265, 2005
  br i1 %.not18, label %267, label %266

266:                                              ; preds = %264
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %267

267:                                              ; preds = %266, %264, %263
  %268 = load i32, ptr @n, align 4
  %269 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %268) #4
  %270 = load i32, ptr @kount, align 4
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %270) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
  %storemerge.lcssa = phi i32 [ %storemerge, %1 ]
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
