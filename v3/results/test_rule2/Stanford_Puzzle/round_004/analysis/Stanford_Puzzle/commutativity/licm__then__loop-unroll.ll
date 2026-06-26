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
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %24

22:                                               ; preds = %17, %13
  %23 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !7

24:                                               ; preds = %17, %12
  %storemerge.lcssa = phi i32 [ %storemerge, %17 ], [ %storemerge, %12 ]
  %storemerge1 = phi i32 [ 0, %17 ], [ 1, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
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

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

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
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %smax = call i32 @llvm.smax.i32(i32 %30, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %32

32:                                               ; preds = %39, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %23 ]
  %33 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %34, label %.loopexit

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4
  %.not3 = icmp eq i32 %36, 0
  br i1 %.not3, label %37, label %39

37:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %33, %34 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %34 ]
  store i32 %.lcssa2, ptr %5, align 4
  %38 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %40

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

.loopexit:                                        ; preds = %32
  %.lcssa1 = phi i32 [ %33, %32 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %40

40:                                               ; preds = %.loopexit, %37
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.loopexit ]
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

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

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
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !11

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
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

10:                                               ; preds = %27, %1
  %11 = phi i32 [ %.promoted, %1 ], [ %28, %27 ]
  %storemerge = phi i32 [ 0, %1 ], [ %29, %27 ]
  %12 = icmp slt i32 %storemerge, 13
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %27, label %20

20:                                               ; preds = %13
  %21 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %7)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %27, label %22

22:                                               ; preds = %20
  %23 = call i32 @Place(i32 noundef %storemerge, i32 noundef %8)
  %24 = call i32 @Trial(i32 noundef %23)
  %.not3 = icmp ne i32 %24, 0
  %25 = icmp eq i32 %23, 0
  %or.cond = select i1 %.not3, i1 true, i1 %25
  br i1 %or.cond, label %30, label %26

26:                                               ; preds = %22
  call void @Remove(i32 noundef %storemerge, i32 noundef %9)
  br label %27

27:                                               ; preds = %26, %20, %13
  %28 = phi i32 [ %23, %26 ], [ %11, %20 ], [ %11, %13 ]
  %29 = add nsw i32 %storemerge, 1
  br label %10, !llvm.loop !12

30:                                               ; preds = %22, %10
  %31 = phi i32 [ %23, %22 ], [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %22 ], [ %storemerge, %10 ]
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %10 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %31, ptr %4, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %15, %0
  %storemerge = phi i32 [ 0, %0 ], [ %18, %15 ]
  br label %6

.preheader31:                                     ; preds = %10
  %storemerge.lcssa = phi i32 [ %13, %10 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %19

6:                                                ; preds = %5
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 1
  br label %10

10:                                               ; preds = %6
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  %13 = add nuw nsw i32 %storemerge, 2
  %14 = icmp samesign ult i32 %13, 512
  br i1 %14, label %15, label %.preheader31

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 1, ptr %17, align 4
  %18 = add nuw nsw i32 %storemerge, 3
  br label %5, !llvm.loop !13

19:                                               ; preds = %127, %.preheader31
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %127 ], [ poison, %.preheader31 ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %127 ], [ poison, %.preheader31 ]
  %storemerge1 = phi i32 [ %128, %127 ], [ 1, %.preheader31 ]
  %20 = icmp slt i32 %storemerge1, 6
  br i1 %20, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %19
  br label %21

.preheader28:                                     ; preds = %19
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %19 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %19 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %19 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %129

21:                                               ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %21
  %invariant.op = add i32 8, %storemerge1
  br label %22

22:                                               ; preds = %.preheader29
  br label %23

23:                                               ; preds = %22
  %.reass = add i32 64, %invariant.op
  %24 = sext i32 %.reass to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %23
  %.reass.1 = add i32 128, %invariant.op
  %27 = sext i32 %.reass.1 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %26
  %.reass.2 = add i32 192, %invariant.op
  %30 = sext i32 %.reass.2 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %30
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %29
  %.reass.3 = add i32 256, %invariant.op
  %33 = sext i32 %.reass.3 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %32
  %.reass.4 = add i32 320, %invariant.op
  %36 = sext i32 %.reass.4 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  br i1 false, label %.loopexit, label %41

.loopexit:                                        ; preds = %35, %55, %72, %89, %106
  %invariant.op.lcssa.ph = phi i32 [ %invariant.op.4, %106 ], [ %invariant.op.3, %89 ], [ %invariant.op.2, %72 ], [ %invariant.op.1, %55 ], [ %invariant.op, %35 ]
  br label %38

38:                                               ; preds = %.loopexit, %123
  %invariant.op.lcssa = phi i32 [ %invariant.op.5, %123 ], [ %invariant.op.lcssa.ph, %.loopexit ]
  %.reass.5 = add i32 384, %invariant.op.lcssa
  %39 = sext i32 %.reass.5 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  unreachable

41:                                               ; preds = %35
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %41
  %invariant.op.1 = add i32 16, %storemerge1
  br label %42

42:                                               ; preds = %.preheader29.1
  br label %43

43:                                               ; preds = %42
  %.reass.170 = add i32 64, %invariant.op.1
  %44 = sext i32 %.reass.170 to i64
  %45 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %43
  %.reass.1.1 = add i32 128, %invariant.op.1
  %47 = sext i32 %.reass.1.1 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %46
  %.reass.2.1 = add i32 192, %invariant.op.1
  %50 = sext i32 %.reass.2.1 to i64
  %51 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %49
  %.reass.3.1 = add i32 256, %invariant.op.1
  %53 = sext i32 %.reass.3.1 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %52
  %.reass.4.1 = add i32 320, %invariant.op.1
  %56 = sext i32 %.reass.4.1 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  br i1 false, label %.loopexit, label %58

58:                                               ; preds = %55
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %58
  %invariant.op.2 = add i32 24, %storemerge1
  br label %59

59:                                               ; preds = %.preheader29.2
  br label %60

60:                                               ; preds = %59
  %.reass.271 = add i32 64, %invariant.op.2
  %61 = sext i32 %.reass.271 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %60
  %.reass.1.2 = add i32 128, %invariant.op.2
  %64 = sext i32 %.reass.1.2 to i64
  %65 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %63
  %.reass.2.2 = add i32 192, %invariant.op.2
  %67 = sext i32 %.reass.2.2 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %66
  %.reass.3.2 = add i32 256, %invariant.op.2
  %70 = sext i32 %.reass.3.2 to i64
  %71 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %69
  %.reass.4.2 = add i32 320, %invariant.op.2
  %73 = sext i32 %.reass.4.2 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br i1 false, label %.loopexit, label %75

75:                                               ; preds = %72
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %75
  %invariant.op.3 = add i32 32, %storemerge1
  br label %76

76:                                               ; preds = %.preheader29.3
  br label %77

77:                                               ; preds = %76
  %.reass.372 = add i32 64, %invariant.op.3
  %78 = sext i32 %.reass.372 to i64
  %79 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %77
  %.reass.1.3 = add i32 128, %invariant.op.3
  %81 = sext i32 %.reass.1.3 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %80
  %.reass.2.3 = add i32 192, %invariant.op.3
  %84 = sext i32 %.reass.2.3 to i64
  %85 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %83
  %.reass.3.3 = add i32 256, %invariant.op.3
  %87 = sext i32 %.reass.3.3 to i64
  %88 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %87
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %86
  %.reass.4.3 = add i32 320, %invariant.op.3
  %90 = sext i32 %.reass.4.3 to i64
  %91 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  br i1 false, label %.loopexit, label %92

92:                                               ; preds = %89
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %92
  %invariant.op.4 = add i32 40, %storemerge1
  br label %93

93:                                               ; preds = %.preheader29.4
  br label %94

94:                                               ; preds = %93
  %.reass.473 = add i32 64, %invariant.op.4
  %95 = sext i32 %.reass.473 to i64
  %96 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  br label %97

97:                                               ; preds = %94
  %.reass.1.4 = add i32 128, %invariant.op.4
  %98 = sext i32 %.reass.1.4 to i64
  %99 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %97
  %.reass.2.4 = add i32 192, %invariant.op.4
  %101 = sext i32 %.reass.2.4 to i64
  %102 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %100
  %.reass.3.4 = add i32 256, %invariant.op.4
  %104 = sext i32 %.reass.3.4 to i64
  %105 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  br label %106

106:                                              ; preds = %103
  %.reass.4.4 = add i32 320, %invariant.op.4
  %107 = sext i32 %.reass.4.4 to i64
  %108 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  br i1 false, label %.loopexit, label %109

109:                                              ; preds = %106
  br i1 false, label %.preheader29.5, label %127

.preheader29.5:                                   ; preds = %109
  %storemerge1.lcssa77 = phi i32 [ %storemerge1, %109 ]
  %invariant.op.5 = add i32 48, %storemerge1.lcssa77
  br label %110

110:                                              ; preds = %.preheader29.5
  br label %111

111:                                              ; preds = %110
  %.reass.574 = add i32 64, %invariant.op.5
  %112 = sext i32 %.reass.574 to i64
  %113 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %112
  store i32 0, ptr %113, align 4
  br label %114

114:                                              ; preds = %111
  %.reass.1.5 = add i32 128, %invariant.op.5
  %115 = sext i32 %.reass.1.5 to i64
  %116 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %115
  store i32 0, ptr %116, align 4
  br label %117

117:                                              ; preds = %114
  %.reass.2.5 = add i32 192, %invariant.op.5
  %118 = sext i32 %.reass.2.5 to i64
  %119 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %118
  store i32 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %117
  %.reass.3.5 = add i32 256, %invariant.op.5
  %121 = sext i32 %.reass.3.5 to i64
  %122 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %121
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %120
  %.reass.4.5 = add i32 320, %invariant.op.5
  %124 = sext i32 %.reass.4.5 to i64
  %125 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %124
  store i32 0, ptr %125, align 4
  br i1 false, label %38, label %126

126:                                              ; preds = %123
  unreachable

127:                                              ; preds = %109
  %storemerge48.lcssa1.lcssa = phi i32 [ 6, %109 ]
  %storemerge47.lcssa = phi i32 [ 6, %109 ]
  %128 = add nsw i32 %storemerge1, 1
  br label %19, !llvm.loop !14

129:                                              ; preds = %147, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %147 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %148, %147 ], [ 0, %.preheader28 ]
  %130 = icmp slt i32 %storemerge2, 13
  br i1 %130, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %129
  %131 = sext i32 %storemerge2 to i64
  %132 = getelementptr inbounds [2048 x i8], ptr @p, i64 %131
  br label %133

.preheader26:                                     ; preds = %129
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %129 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %129 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %149

133:                                              ; preds = %143, %.preheader27
  %storemerge46 = phi i32 [ 0, %.preheader27 ], [ %146, %143 ]
  br label %134

134:                                              ; preds = %133
  %135 = sext i32 %storemerge46 to i64
  %136 = getelementptr inbounds [4 x i8], ptr %132, i64 %135
  store i32 0, ptr %136, align 4
  %137 = add nuw nsw i32 %storemerge46, 1
  br label %138

138:                                              ; preds = %134
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds [4 x i8], ptr %132, i64 %139
  store i32 0, ptr %140, align 4
  %141 = add nuw nsw i32 %storemerge46, 2
  %142 = icmp samesign ult i32 %141, 512
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = sext i32 %141 to i64
  %145 = getelementptr inbounds [4 x i8], ptr %132, i64 %144
  store i32 0, ptr %145, align 4
  %146 = add nuw nsw i32 %storemerge46, 3
  br label %133, !llvm.loop !15

147:                                              ; preds = %138
  %storemerge46.lcssa = phi i32 [ %141, %138 ]
  %148 = add nsw i32 %storemerge2, 1
  br label %129, !llvm.loop !16

149:                                              ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %149
  br label %150

150:                                              ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %150
  br label %151

151:                                              ; preds = %.preheader24
  br label %152

152:                                              ; preds = %151
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit81, label %156

.loopexit81:                                      ; preds = %195, %192, %187, %184, %179, %176, %171, %168, %152, %158
  %invariant.op5.lcssa.ph = phi i32 [ 8, %158 ], [ 0, %152 ], [ 1, %168 ], [ 9, %171 ], [ 2, %176 ], [ 10, %179 ], [ 3, %184 ], [ 11, %187 ], [ 4, %192 ], [ 12, %195 ]
  br label %153

153:                                              ; preds = %.loopexit81, %161
  %invariant.op5.lcssa = phi i32 [ %invariant.op5.2, %161 ], [ %invariant.op5.lcssa.ph, %.loopexit81 ]
  %.reass6.1 = add i32 64, %invariant.op5.lcssa
  %154 = sext i32 %.reass6.1 to i64
  %155 = getelementptr inbounds [4 x i8], ptr @p, i64 %154
  store i32 1, ptr %155, align 4
  unreachable

156:                                              ; preds = %152
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %156
  br label %157

157:                                              ; preds = %.preheader24.1
  br label %158

158:                                              ; preds = %157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit81, label %159

159:                                              ; preds = %158
  br i1 false, label %.preheader24.2, label %165

.preheader24.2:                                   ; preds = %196, %188, %180, %172, %159
  %storemerge3.lcssa80 = phi i32 [ 0, %159 ], [ 1, %172 ], [ 2, %180 ], [ 3, %188 ], [ 4, %196 ]
  %invariant.op5.2 = add i32 16, %storemerge3.lcssa80
  br label %160

160:                                              ; preds = %.preheader24.2
  br label %161

161:                                              ; preds = %160
  %162 = sext i32 %invariant.op5.2 to i64
  %163 = getelementptr inbounds [4 x i8], ptr @p, i64 %162
  store i32 1, ptr %163, align 4
  br i1 false, label %153, label %164

164:                                              ; preds = %161
  unreachable

165:                                              ; preds = %159
  br label %.preheader25.1

.preheader25.1:                                   ; preds = %165
  br label %166

166:                                              ; preds = %.preheader25.1
  br label %.preheader24.182

.preheader24.182:                                 ; preds = %166
  br label %167

167:                                              ; preds = %.preheader24.182
  br label %168

168:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit81, label %169

169:                                              ; preds = %168
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %169
  br label %170

170:                                              ; preds = %.preheader24.1.1
  br label %171

171:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit81, label %172

172:                                              ; preds = %171
  br i1 false, label %.preheader24.2, label %173

173:                                              ; preds = %172
  br label %.preheader25.2

.preheader25.2:                                   ; preds = %173
  br label %174

174:                                              ; preds = %.preheader25.2
  br label %.preheader24.283

.preheader24.283:                                 ; preds = %174
  br label %175

175:                                              ; preds = %.preheader24.283
  br label %176

176:                                              ; preds = %175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit81, label %177

177:                                              ; preds = %176
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %177
  br label %178

178:                                              ; preds = %.preheader24.1.2
  br label %179

179:                                              ; preds = %178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit81, label %180

180:                                              ; preds = %179
  br i1 false, label %.preheader24.2, label %181

181:                                              ; preds = %180
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %181
  br label %182

182:                                              ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %182
  br label %183

183:                                              ; preds = %.preheader24.3
  br label %184

184:                                              ; preds = %183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit81, label %185

185:                                              ; preds = %184
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %185
  br label %186

186:                                              ; preds = %.preheader24.1.3
  br label %187

187:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit81, label %188

188:                                              ; preds = %187
  br i1 false, label %.preheader24.2, label %189

189:                                              ; preds = %188
  br i1 false, label %.preheader25.4, label %198

.preheader25.4:                                   ; preds = %189
  br label %190

190:                                              ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %190
  br label %191

191:                                              ; preds = %.preheader24.4
  br label %192

192:                                              ; preds = %191
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit81, label %193

193:                                              ; preds = %192
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %193
  br label %194

194:                                              ; preds = %.preheader24.1.4
  br label %195

195:                                              ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit81, label %196

196:                                              ; preds = %195
  br i1 false, label %.preheader24.2, label %197

197:                                              ; preds = %196
  unreachable

198:                                              ; preds = %189
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ 1, %189 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ 2, %189 ]
  %storemerge3.lcssa = phi i32 [ 4, %189 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %199

199:                                              ; preds = %198
  br label %.preheader23

.preheader23:                                     ; preds = %199
  br label %200

200:                                              ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %200
  br label %201

201:                                              ; preds = %.preheader22
  br label %202

202:                                              ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %203

203:                                              ; preds = %202
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %204

204:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %205

205:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit87, label %209

.loopexit87:                                      ; preds = %238, %230, %205
  %invariant.op10.lcssa.ph = phi i32 [ 0, %205 ], [ 1, %230 ], [ 2, %238 ]
  br label %206

206:                                              ; preds = %.loopexit87, %220
  %invariant.op10.lcssa = phi i32 [ %invariant.op10.1, %220 ], [ %invariant.op10.lcssa.ph, %.loopexit87 ]
  %.reass11.4 = add i32 256, %invariant.op10.lcssa
  %207 = sext i32 %.reass11.4 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %207
  store i32 1, ptr %208, align 4
  unreachable

209:                                              ; preds = %205
  br i1 false, label %.preheader22.1, label %224

.preheader22.1:                                   ; preds = %239, %231, %209
  %storemerge4.lcssa85 = phi i32 [ 0, %209 ], [ 1, %231 ], [ 2, %239 ]
  %invariant.op10.1 = add i32 8, %storemerge4.lcssa85
  br label %210

210:                                              ; preds = %.preheader22.1
  br label %211

211:                                              ; preds = %210
  %212 = sext i32 %invariant.op10.1 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %212
  store i32 1, ptr %213, align 4
  br label %214

214:                                              ; preds = %211
  %.reass11.1.1 = add i32 64, %invariant.op10.1
  %215 = sext i32 %.reass11.1.1 to i64
  %216 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %215
  store i32 1, ptr %216, align 4
  br label %217

217:                                              ; preds = %214
  %.reass11.2.1 = add i32 128, %invariant.op10.1
  %218 = sext i32 %.reass11.2.1 to i64
  %219 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %218
  store i32 1, ptr %219, align 4
  br label %220

220:                                              ; preds = %217
  %.reass11.3.1 = add i32 192, %invariant.op10.1
  %221 = sext i32 %.reass11.3.1 to i64
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %221
  store i32 1, ptr %222, align 4
  br i1 false, label %206, label %223

223:                                              ; preds = %220
  unreachable

224:                                              ; preds = %209
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %224
  br label %225

225:                                              ; preds = %.preheader23.1
  br label %.preheader22.188

.preheader22.188:                                 ; preds = %225
  br label %226

226:                                              ; preds = %.preheader22.188
  br label %227

227:                                              ; preds = %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %228

228:                                              ; preds = %227
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %230

230:                                              ; preds = %229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit87, label %231

231:                                              ; preds = %230
  br i1 false, label %.preheader22.1, label %232

232:                                              ; preds = %231
  br i1 false, label %.preheader23.2, label %241

.preheader23.2:                                   ; preds = %232
  br label %233

233:                                              ; preds = %.preheader23.2
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %233
  br label %234

234:                                              ; preds = %.preheader22.2
  br label %235

235:                                              ; preds = %234
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %236

236:                                              ; preds = %235
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %237

237:                                              ; preds = %236
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %238

238:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit87, label %239

239:                                              ; preds = %238
  br i1 false, label %.preheader22.1, label %240

240:                                              ; preds = %239
  unreachable

241:                                              ; preds = %232
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ 4, %232 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ 1, %232 ]
  %storemerge4.lcssa = phi i32 [ 2, %232 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %242

242:                                              ; preds = %241
  br label %.preheader21

.preheader21:                                     ; preds = %242
  br label %243

243:                                              ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %243
  br label %244

244:                                              ; preds = %.preheader20
  br label %245

245:                                              ; preds = %244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %246

246:                                              ; preds = %245
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit95, label %250

.loopexit95:                                      ; preds = %287, %283, %279, %275, %246, %253, %257, %261
  %invariant.op15.lcssa.ph = phi i32 [ 24, %261 ], [ 16, %257 ], [ 8, %253 ], [ 0, %246 ], [ 1, %275 ], [ 9, %279 ], [ 17, %283 ], [ 25, %287 ]
  br label %247

247:                                              ; preds = %.loopexit95, %267
  %invariant.op15.lcssa = phi i32 [ %invariant.op15.4, %267 ], [ %invariant.op15.lcssa.ph, %.loopexit95 ]
  %.reass16.2 = add i32 128, %invariant.op15.lcssa
  %248 = sext i32 %.reass16.2 to i64
  %249 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %248
  store i32 1, ptr %249, align 4
  unreachable

250:                                              ; preds = %246
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %250
  br label %251

251:                                              ; preds = %.preheader20.1
  br label %252

252:                                              ; preds = %251
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %253

253:                                              ; preds = %252
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit95, label %254

254:                                              ; preds = %253
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %254
  br label %255

255:                                              ; preds = %.preheader20.2
  br label %256

256:                                              ; preds = %255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %257

257:                                              ; preds = %256
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit95, label %258

258:                                              ; preds = %257
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %258
  br label %259

259:                                              ; preds = %.preheader20.3
  br label %260

260:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %261

261:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit95, label %262

262:                                              ; preds = %261
  br i1 false, label %.preheader20.4, label %271

.preheader20.4:                                   ; preds = %288, %262
  %storemerge5.lcssa94 = phi i32 [ 0, %262 ], [ 1, %288 ]
  %invariant.op15.4 = add i32 32, %storemerge5.lcssa94
  br label %263

263:                                              ; preds = %.preheader20.4
  br label %264

264:                                              ; preds = %263
  %265 = sext i32 %invariant.op15.4 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %265
  store i32 1, ptr %266, align 4
  br label %267

267:                                              ; preds = %264
  %.reass16.1.4 = add i32 64, %invariant.op15.4
  %268 = sext i32 %.reass16.1.4 to i64
  %269 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %268
  store i32 1, ptr %269, align 4
  br i1 false, label %247, label %270

270:                                              ; preds = %267
  unreachable

271:                                              ; preds = %262
  br i1 false, label %.preheader21.1, label %290

.preheader21.1:                                   ; preds = %271
  br label %272

272:                                              ; preds = %.preheader21.1
  br label %.preheader20.196

.preheader20.196:                                 ; preds = %272
  br label %273

273:                                              ; preds = %.preheader20.196
  br label %274

274:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %275

275:                                              ; preds = %274
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit95, label %276

276:                                              ; preds = %275
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %276
  br label %277

277:                                              ; preds = %.preheader20.1.1
  br label %278

278:                                              ; preds = %277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit95, label %280

280:                                              ; preds = %279
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %280
  br label %281

281:                                              ; preds = %.preheader20.2.1
  br label %282

282:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %283

283:                                              ; preds = %282
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit95, label %284

284:                                              ; preds = %283
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %284
  br label %285

285:                                              ; preds = %.preheader20.3.1
  br label %286

286:                                              ; preds = %285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %287

287:                                              ; preds = %286
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit95, label %288

288:                                              ; preds = %287
  br i1 false, label %.preheader20.4, label %289

289:                                              ; preds = %288
  unreachable

290:                                              ; preds = %271
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ 2, %271 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ 4, %271 ]
  %storemerge5.lcssa = phi i32 [ 1, %271 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %291

291:                                              ; preds = %290
  br label %.preheader19

.preheader19:                                     ; preds = %291
  br label %292

292:                                              ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %292
  br label %293

293:                                              ; preds = %.preheader18
  br label %294

294:                                              ; preds = %293
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit101, label %298

.loopexit101:                                     ; preds = %339, %336, %333, %330, %325, %322, %319, %316, %294, %300, %303, %306
  %invariant.op20.lcssa.ph = phi i32 [ 24, %306 ], [ 16, %303 ], [ 8, %300 ], [ 0, %294 ], [ 1, %316 ], [ 9, %319 ], [ 17, %322 ], [ 25, %325 ], [ 2, %330 ], [ 10, %333 ], [ 18, %336 ], [ 26, %339 ]
  br label %295

295:                                              ; preds = %.loopexit101, %309
  %invariant.op20.lcssa = phi i32 [ %invariant.op20.4, %309 ], [ %invariant.op20.lcssa.ph, %.loopexit101 ]
  %.reass21.1 = add i32 64, %invariant.op20.lcssa
  %296 = sext i32 %.reass21.1 to i64
  %297 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %296
  store i32 1, ptr %297, align 4
  unreachable

298:                                              ; preds = %294
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %298
  br label %299

299:                                              ; preds = %.preheader18.1
  br label %300

300:                                              ; preds = %299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit101, label %301

301:                                              ; preds = %300
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %301
  br label %302

302:                                              ; preds = %.preheader18.2
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit101, label %304

304:                                              ; preds = %303
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %304
  br label %305

305:                                              ; preds = %.preheader18.3
  br label %306

306:                                              ; preds = %305
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit101, label %307

307:                                              ; preds = %306
  br i1 false, label %.preheader18.4, label %313

.preheader18.4:                                   ; preds = %340, %326, %307
  %storemerge6.lcssa100 = phi i32 [ 0, %307 ], [ 1, %326 ], [ 2, %340 ]
  %invariant.op20.4 = add i32 32, %storemerge6.lcssa100
  br label %308

308:                                              ; preds = %.preheader18.4
  br label %309

309:                                              ; preds = %308
  %310 = sext i32 %invariant.op20.4 to i64
  %311 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %310
  store i32 1, ptr %311, align 4
  br i1 false, label %295, label %312

312:                                              ; preds = %309
  unreachable

313:                                              ; preds = %307
  br label %.preheader19.1

.preheader19.1:                                   ; preds = %313
  br label %314

314:                                              ; preds = %.preheader19.1
  br label %.preheader18.1102

.preheader18.1102:                                ; preds = %314
  br label %315

315:                                              ; preds = %.preheader18.1102
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit101, label %317

317:                                              ; preds = %316
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %317
  br label %318

318:                                              ; preds = %.preheader18.1.1
  br label %319

319:                                              ; preds = %318
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit101, label %320

320:                                              ; preds = %319
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %320
  br label %321

321:                                              ; preds = %.preheader18.2.1
  br label %322

322:                                              ; preds = %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit101, label %323

323:                                              ; preds = %322
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %323
  br label %324

324:                                              ; preds = %.preheader18.3.1
  br label %325

325:                                              ; preds = %324
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit101, label %326

326:                                              ; preds = %325
  br i1 false, label %.preheader18.4, label %327

327:                                              ; preds = %326
  br i1 false, label %.preheader19.2, label %342

.preheader19.2:                                   ; preds = %327
  br label %328

328:                                              ; preds = %.preheader19.2
  br label %.preheader18.2103

.preheader18.2103:                                ; preds = %328
  br label %329

329:                                              ; preds = %.preheader18.2103
  br label %330

330:                                              ; preds = %329
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit101, label %331

331:                                              ; preds = %330
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %331
  br label %332

332:                                              ; preds = %.preheader18.1.2
  br label %333

333:                                              ; preds = %332
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit101, label %334

334:                                              ; preds = %333
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %334
  br label %335

335:                                              ; preds = %.preheader18.2.2
  br label %336

336:                                              ; preds = %335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit101, label %337

337:                                              ; preds = %336
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %337
  br label %338

338:                                              ; preds = %.preheader18.3.2
  br label %339

339:                                              ; preds = %338
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit101, label %340

340:                                              ; preds = %339
  br i1 false, label %.preheader18.4, label %341

341:                                              ; preds = %340
  unreachable

342:                                              ; preds = %327
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ 1, %327 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ 4, %327 ]
  %storemerge6.lcssa = phi i32 [ 2, %327 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %343

343:                                              ; preds = %342
  br label %.preheader17

.preheader17:                                     ; preds = %343
  br label %344

344:                                              ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %344
  br label %345

345:                                              ; preds = %.preheader16
  br label %346

346:                                              ; preds = %345
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %347

347:                                              ; preds = %346
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit107, label %351

.loopexit107:                                     ; preds = %382, %376, %370, %364, %347
  %invariant.op25.lcssa.ph = phi i32 [ 0, %347 ], [ 1, %364 ], [ 2, %370 ], [ 3, %376 ], [ 4, %382 ]
  br label %348

348:                                              ; preds = %.loopexit107, %356
  %invariant.op25.lcssa = phi i32 [ %invariant.op25.1, %356 ], [ %invariant.op25.lcssa.ph, %.loopexit107 ]
  %.reass26.2 = add i32 128, %invariant.op25.lcssa
  %349 = sext i32 %.reass26.2 to i64
  %350 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %349
  store i32 1, ptr %350, align 4
  unreachable

351:                                              ; preds = %347
  br i1 false, label %.preheader16.1, label %360

.preheader16.1:                                   ; preds = %383, %377, %371, %365, %351
  %storemerge7.lcssa105 = phi i32 [ 0, %351 ], [ 1, %365 ], [ 2, %371 ], [ 3, %377 ], [ 4, %383 ]
  %invariant.op25.1 = add i32 8, %storemerge7.lcssa105
  br label %352

352:                                              ; preds = %.preheader16.1
  br label %353

353:                                              ; preds = %352
  %354 = sext i32 %invariant.op25.1 to i64
  %355 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %354
  store i32 1, ptr %355, align 4
  br label %356

356:                                              ; preds = %353
  %.reass26.1.1 = add i32 64, %invariant.op25.1
  %357 = sext i32 %.reass26.1.1 to i64
  %358 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %357
  store i32 1, ptr %358, align 4
  br i1 false, label %348, label %359

359:                                              ; preds = %356
  unreachable

360:                                              ; preds = %351
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %360
  br label %361

361:                                              ; preds = %.preheader17.1
  br label %.preheader16.1108

.preheader16.1108:                                ; preds = %361
  br label %362

362:                                              ; preds = %.preheader16.1108
  br label %363

363:                                              ; preds = %362
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %364

364:                                              ; preds = %363
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit107, label %365

365:                                              ; preds = %364
  br i1 false, label %.preheader16.1, label %366

366:                                              ; preds = %365
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %366
  br label %367

367:                                              ; preds = %.preheader17.2
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %367
  br label %368

368:                                              ; preds = %.preheader16.2
  br label %369

369:                                              ; preds = %368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %370

370:                                              ; preds = %369
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit107, label %371

371:                                              ; preds = %370
  br i1 false, label %.preheader16.1, label %372

372:                                              ; preds = %371
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %372
  br label %373

373:                                              ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %373
  br label %374

374:                                              ; preds = %.preheader16.3
  br label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %376

376:                                              ; preds = %375
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit107, label %377

377:                                              ; preds = %376
  br i1 false, label %.preheader16.1, label %378

378:                                              ; preds = %377
  br i1 false, label %.preheader17.4, label %385

.preheader17.4:                                   ; preds = %378
  br label %379

379:                                              ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %379
  br label %380

380:                                              ; preds = %.preheader16.4
  br label %381

381:                                              ; preds = %380
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %382

382:                                              ; preds = %381
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit107, label %383

383:                                              ; preds = %382
  br i1 false, label %.preheader16.1, label %384

384:                                              ; preds = %383
  unreachable

385:                                              ; preds = %378
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ 2, %378 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ 1, %378 ]
  %storemerge7.lcssa = phi i32 [ 4, %378 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %386

386:                                              ; preds = %385
  br label %.preheader15

.preheader15:                                     ; preds = %386
  br label %387

387:                                              ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %387
  br label %388

388:                                              ; preds = %.preheader14
  br label %389

389:                                              ; preds = %388
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %390

390:                                              ; preds = %389
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %391

391:                                              ; preds = %390
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %392

392:                                              ; preds = %391
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit113, label %396

.loopexit113:                                     ; preds = %429, %423, %392, %401
  %invariant.op30.lcssa.ph = phi i32 [ 8, %401 ], [ 0, %392 ], [ 1, %423 ], [ 9, %429 ]
  br label %393

393:                                              ; preds = %.loopexit113, %413
  %invariant.op30.lcssa = phi i32 [ %invariant.op30.2, %413 ], [ %invariant.op30.lcssa.ph, %.loopexit113 ]
  %.reass31.4 = add i32 256, %invariant.op30.lcssa
  %394 = sext i32 %.reass31.4 to i64
  %395 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %394
  store i32 1, ptr %395, align 4
  unreachable

396:                                              ; preds = %392
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %396
  br label %397

397:                                              ; preds = %.preheader14.1
  br label %398

398:                                              ; preds = %397
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %399

399:                                              ; preds = %398
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %400

400:                                              ; preds = %399
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %401

401:                                              ; preds = %400
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit113, label %402

402:                                              ; preds = %401
  br i1 false, label %.preheader14.2, label %417

.preheader14.2:                                   ; preds = %430, %402
  %storemerge8.lcssa112 = phi i32 [ 0, %402 ], [ 1, %430 ]
  %invariant.op30.2 = add i32 16, %storemerge8.lcssa112
  br label %403

403:                                              ; preds = %.preheader14.2
  br label %404

404:                                              ; preds = %403
  %405 = sext i32 %invariant.op30.2 to i64
  %406 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %405
  store i32 1, ptr %406, align 4
  br label %407

407:                                              ; preds = %404
  %.reass31.1.2 = add i32 64, %invariant.op30.2
  %408 = sext i32 %.reass31.1.2 to i64
  %409 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %408
  store i32 1, ptr %409, align 4
  br label %410

410:                                              ; preds = %407
  %.reass31.2.2 = add i32 128, %invariant.op30.2
  %411 = sext i32 %.reass31.2.2 to i64
  %412 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %411
  store i32 1, ptr %412, align 4
  br label %413

413:                                              ; preds = %410
  %.reass31.3.2 = add i32 192, %invariant.op30.2
  %414 = sext i32 %.reass31.3.2 to i64
  %415 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %414
  store i32 1, ptr %415, align 4
  br i1 false, label %393, label %416

416:                                              ; preds = %413
  unreachable

417:                                              ; preds = %402
  br i1 false, label %.preheader15.1, label %432

.preheader15.1:                                   ; preds = %417
  br label %418

418:                                              ; preds = %.preheader15.1
  br label %.preheader14.1114

.preheader14.1114:                                ; preds = %418
  br label %419

419:                                              ; preds = %.preheader14.1114
  br label %420

420:                                              ; preds = %419
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %421

421:                                              ; preds = %420
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %422

422:                                              ; preds = %421
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %423

423:                                              ; preds = %422
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit113, label %424

424:                                              ; preds = %423
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %424
  br label %425

425:                                              ; preds = %.preheader14.1.1
  br label %426

426:                                              ; preds = %425
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %427

427:                                              ; preds = %426
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %428

428:                                              ; preds = %427
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %429

429:                                              ; preds = %428
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit113, label %430

430:                                              ; preds = %429
  br i1 false, label %.preheader14.2, label %431

431:                                              ; preds = %430
  unreachable

432:                                              ; preds = %417
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ 4, %417 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ 2, %417 ]
  %storemerge8.lcssa = phi i32 [ 1, %417 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %433

433:                                              ; preds = %432
  br label %.preheader13

.preheader13:                                     ; preds = %433
  br label %434

434:                                              ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %434
  br label %435

435:                                              ; preds = %.preheader12
  br label %436

436:                                              ; preds = %435
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit121, label %440

.loopexit121:                                     ; preds = %459, %454, %449, %436
  %invariant.op35.lcssa.ph = phi i32 [ 0, %436 ], [ 1, %449 ], [ 2, %454 ], [ 3, %459 ]
  br label %437

437:                                              ; preds = %.loopexit121, %442
  %invariant.op35.lcssa = phi i32 [ %invariant.op35.1, %442 ], [ %invariant.op35.lcssa.ph, %.loopexit121 ]
  %.reass36.1 = add i32 64, %invariant.op35.lcssa
  %438 = sext i32 %.reass36.1 to i64
  %439 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %438
  store i32 1, ptr %439, align 4
  unreachable

440:                                              ; preds = %436
  br i1 false, label %.preheader12.1, label %446

.preheader12.1:                                   ; preds = %460, %455, %450, %440
  %storemerge9.lcssa119 = phi i32 [ 0, %440 ], [ 1, %450 ], [ 2, %455 ], [ 3, %460 ]
  %invariant.op35.1 = add i32 8, %storemerge9.lcssa119
  br label %441

441:                                              ; preds = %.preheader12.1
  br label %442

442:                                              ; preds = %441
  %443 = sext i32 %invariant.op35.1 to i64
  %444 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %443
  store i32 1, ptr %444, align 4
  br i1 false, label %437, label %445

445:                                              ; preds = %442
  unreachable

446:                                              ; preds = %440
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %446
  br label %447

447:                                              ; preds = %.preheader13.1
  br label %.preheader12.1122

.preheader12.1122:                                ; preds = %447
  br label %448

448:                                              ; preds = %.preheader12.1122
  br label %449

449:                                              ; preds = %448
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit121, label %450

450:                                              ; preds = %449
  br i1 false, label %.preheader12.1, label %451

451:                                              ; preds = %450
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %451
  br label %452

452:                                              ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %452
  br label %453

453:                                              ; preds = %.preheader12.2
  br label %454

454:                                              ; preds = %453
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit121, label %455

455:                                              ; preds = %454
  br i1 false, label %.preheader12.1, label %456

456:                                              ; preds = %455
  br i1 false, label %.preheader13.3, label %462

.preheader13.3:                                   ; preds = %456
  br label %457

457:                                              ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %457
  br label %458

458:                                              ; preds = %.preheader12.3
  br label %459

459:                                              ; preds = %458
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit121, label %460

460:                                              ; preds = %459
  br i1 false, label %.preheader12.1, label %461

461:                                              ; preds = %460
  unreachable

462:                                              ; preds = %456
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ 1, %456 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ 1, %456 ]
  %storemerge9.lcssa = phi i32 [ 3, %456 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %463

463:                                              ; preds = %462
  br label %.preheader11

.preheader11:                                     ; preds = %463
  br label %464

464:                                              ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %464
  br label %465

465:                                              ; preds = %.preheader10
  br label %466

466:                                              ; preds = %465
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit126, label %470

.loopexit126:                                     ; preds = %491, %488, %485, %466, %472, %475
  %invariant.op40.lcssa.ph = phi i32 [ 16, %475 ], [ 8, %472 ], [ 0, %466 ], [ 1, %485 ], [ 9, %488 ], [ 17, %491 ]
  br label %467

467:                                              ; preds = %.loopexit126, %478
  %invariant.op40.lcssa = phi i32 [ %invariant.op40.3, %478 ], [ %invariant.op40.lcssa.ph, %.loopexit126 ]
  %.reass41.1 = add i32 64, %invariant.op40.lcssa
  %468 = sext i32 %.reass41.1 to i64
  %469 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %468
  store i32 1, ptr %469, align 4
  unreachable

470:                                              ; preds = %466
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %470
  br label %471

471:                                              ; preds = %.preheader10.1
  br label %472

472:                                              ; preds = %471
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit126, label %473

473:                                              ; preds = %472
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %473
  br label %474

474:                                              ; preds = %.preheader10.2
  br label %475

475:                                              ; preds = %474
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit126, label %476

476:                                              ; preds = %475
  br i1 false, label %.preheader10.3, label %482

.preheader10.3:                                   ; preds = %492, %476
  %storemerge10.lcssa125 = phi i32 [ 0, %476 ], [ 1, %492 ]
  %invariant.op40.3 = add i32 24, %storemerge10.lcssa125
  br label %477

477:                                              ; preds = %.preheader10.3
  br label %478

478:                                              ; preds = %477
  %479 = sext i32 %invariant.op40.3 to i64
  %480 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %479
  store i32 1, ptr %480, align 4
  br i1 false, label %467, label %481

481:                                              ; preds = %478
  unreachable

482:                                              ; preds = %476
  br i1 false, label %.preheader11.1, label %494

.preheader11.1:                                   ; preds = %482
  br label %483

483:                                              ; preds = %.preheader11.1
  br label %.preheader10.1127

.preheader10.1127:                                ; preds = %483
  br label %484

484:                                              ; preds = %.preheader10.1127
  br label %485

485:                                              ; preds = %484
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit126, label %486

486:                                              ; preds = %485
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %486
  br label %487

487:                                              ; preds = %.preheader10.1.1
  br label %488

488:                                              ; preds = %487
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit126, label %489

489:                                              ; preds = %488
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %489
  br label %490

490:                                              ; preds = %.preheader10.2.1
  br label %491

491:                                              ; preds = %490
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit126, label %492

492:                                              ; preds = %491
  br i1 false, label %.preheader10.3, label %493

493:                                              ; preds = %492
  unreachable

494:                                              ; preds = %482
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ 1, %482 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ 3, %482 ]
  %storemerge10.lcssa = phi i32 [ 1, %482 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %495

495:                                              ; preds = %494
  br label %.preheader9

.preheader9:                                      ; preds = %495
  br label %496

496:                                              ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %496
  br label %497

497:                                              ; preds = %.preheader8
  br label %498

498:                                              ; preds = %497
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %499

499:                                              ; preds = %498
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %500

500:                                              ; preds = %499
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit131, label %504

.loopexit131:                                     ; preds = %521, %500
  %invariant.op45.lcssa.ph = phi i32 [ 0, %500 ], [ 1, %521 ]
  br label %501

501:                                              ; preds = %.loopexit131, %512
  %invariant.op45.lcssa = phi i32 [ %invariant.op45.1, %512 ], [ %invariant.op45.lcssa.ph, %.loopexit131 ]
  %.reass46.3 = add i32 192, %invariant.op45.lcssa
  %502 = sext i32 %.reass46.3 to i64
  %503 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %502
  store i32 1, ptr %503, align 4
  unreachable

504:                                              ; preds = %500
  br i1 false, label %.preheader8.1, label %516

.preheader8.1:                                    ; preds = %522, %504
  %storemerge11.lcssa129 = phi i32 [ 0, %504 ], [ 1, %522 ]
  %invariant.op45.1 = add i32 8, %storemerge11.lcssa129
  br label %505

505:                                              ; preds = %.preheader8.1
  br label %506

506:                                              ; preds = %505
  %507 = sext i32 %invariant.op45.1 to i64
  %508 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %507
  store i32 1, ptr %508, align 4
  br label %509

509:                                              ; preds = %506
  %.reass46.1.1 = add i32 64, %invariant.op45.1
  %510 = sext i32 %.reass46.1.1 to i64
  %511 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %510
  store i32 1, ptr %511, align 4
  br label %512

512:                                              ; preds = %509
  %.reass46.2.1 = add i32 128, %invariant.op45.1
  %513 = sext i32 %.reass46.2.1 to i64
  %514 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %513
  store i32 1, ptr %514, align 4
  br i1 false, label %501, label %515

515:                                              ; preds = %512
  unreachable

516:                                              ; preds = %504
  br i1 false, label %.preheader9.1, label %524

.preheader9.1:                                    ; preds = %516
  br label %517

517:                                              ; preds = %.preheader9.1
  br label %.preheader8.1132

.preheader8.1132:                                 ; preds = %517
  br label %518

518:                                              ; preds = %.preheader8.1132
  br label %519

519:                                              ; preds = %518
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %520

520:                                              ; preds = %519
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %521

521:                                              ; preds = %520
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit131, label %522

522:                                              ; preds = %521
  br i1 false, label %.preheader8.1, label %523

523:                                              ; preds = %522
  unreachable

524:                                              ; preds = %516
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ 3, %516 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ 1, %516 ]
  %storemerge11.lcssa = phi i32 [ 1, %516 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %525

525:                                              ; preds = %524
  br label %.preheader7

.preheader7:                                      ; preds = %525
  br label %526

526:                                              ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %526
  br label %527

527:                                              ; preds = %.preheader6
  br label %528

528:                                              ; preds = %527
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit138, label %532

.loopexit138:                                     ; preds = %555, %552, %547, %544, %528, %534
  %invariant.op50.lcssa.ph = phi i32 [ 8, %534 ], [ 0, %528 ], [ 1, %544 ], [ 9, %547 ], [ 2, %552 ], [ 10, %555 ]
  br label %529

529:                                              ; preds = %.loopexit138, %537
  %invariant.op50.lcssa = phi i32 [ %invariant.op50.2, %537 ], [ %invariant.op50.lcssa.ph, %.loopexit138 ]
  %.reass51.1 = add i32 64, %invariant.op50.lcssa
  %530 = sext i32 %.reass51.1 to i64
  %531 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %530
  store i32 1, ptr %531, align 4
  unreachable

532:                                              ; preds = %528
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %532
  br label %533

533:                                              ; preds = %.preheader6.1
  br label %534

534:                                              ; preds = %533
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit138, label %535

535:                                              ; preds = %534
  br i1 false, label %.preheader6.2, label %541

.preheader6.2:                                    ; preds = %556, %548, %535
  %storemerge12.lcssa137 = phi i32 [ 0, %535 ], [ 1, %548 ], [ 2, %556 ]
  %invariant.op50.2 = add i32 16, %storemerge12.lcssa137
  br label %536

536:                                              ; preds = %.preheader6.2
  br label %537

537:                                              ; preds = %536
  %538 = sext i32 %invariant.op50.2 to i64
  %539 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %538
  store i32 1, ptr %539, align 4
  br i1 false, label %529, label %540

540:                                              ; preds = %537
  unreachable

541:                                              ; preds = %535
  br label %.preheader7.1

.preheader7.1:                                    ; preds = %541
  br label %542

542:                                              ; preds = %.preheader7.1
  br label %.preheader6.1139

.preheader6.1139:                                 ; preds = %542
  br label %543

543:                                              ; preds = %.preheader6.1139
  br label %544

544:                                              ; preds = %543
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit138, label %545

545:                                              ; preds = %544
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %545
  br label %546

546:                                              ; preds = %.preheader6.1.1
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit138, label %548

548:                                              ; preds = %547
  br i1 false, label %.preheader6.2, label %549

549:                                              ; preds = %548
  br i1 false, label %.preheader7.2, label %558

.preheader7.2:                                    ; preds = %549
  br label %550

550:                                              ; preds = %.preheader7.2
  br label %.preheader6.2140

.preheader6.2140:                                 ; preds = %550
  br label %551

551:                                              ; preds = %.preheader6.2140
  br label %552

552:                                              ; preds = %551
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit138, label %553

553:                                              ; preds = %552
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %553
  br label %554

554:                                              ; preds = %.preheader6.1.2
  br label %555

555:                                              ; preds = %554
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit138, label %556

556:                                              ; preds = %555
  br i1 false, label %.preheader6.2, label %557

557:                                              ; preds = %556
  unreachable

558:                                              ; preds = %549
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ 1, %549 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ 2, %549 ]
  %storemerge12.lcssa = phi i32 [ 2, %549 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %559

559:                                              ; preds = %558
  br label %.preheader5

.preheader5:                                      ; preds = %559
  br label %560

560:                                              ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %560
  br label %561

561:                                              ; preds = %.preheader4
  br label %562

562:                                              ; preds = %561
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %563

563:                                              ; preds = %562
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit144, label %567

.loopexit144:                                     ; preds = %586, %580, %563
  %invariant.op55.lcssa.ph = phi i32 [ 0, %563 ], [ 1, %580 ], [ 2, %586 ]
  br label %564

564:                                              ; preds = %.loopexit144, %572
  %invariant.op55.lcssa = phi i32 [ %invariant.op55.1, %572 ], [ %invariant.op55.lcssa.ph, %.loopexit144 ]
  %.reass56.2 = add i32 128, %invariant.op55.lcssa
  %565 = sext i32 %.reass56.2 to i64
  %566 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %565
  store i32 1, ptr %566, align 4
  unreachable

567:                                              ; preds = %563
  br i1 false, label %.preheader4.1, label %576

.preheader4.1:                                    ; preds = %587, %581, %567
  %storemerge13.lcssa142 = phi i32 [ 0, %567 ], [ 1, %581 ], [ 2, %587 ]
  %invariant.op55.1 = add i32 8, %storemerge13.lcssa142
  br label %568

568:                                              ; preds = %.preheader4.1
  br label %569

569:                                              ; preds = %568
  %570 = sext i32 %invariant.op55.1 to i64
  %571 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %570
  store i32 1, ptr %571, align 4
  br label %572

572:                                              ; preds = %569
  %.reass56.1.1 = add i32 64, %invariant.op55.1
  %573 = sext i32 %.reass56.1.1 to i64
  %574 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %573
  store i32 1, ptr %574, align 4
  br i1 false, label %564, label %575

575:                                              ; preds = %572
  unreachable

576:                                              ; preds = %567
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %576
  br label %577

577:                                              ; preds = %.preheader5.1
  br label %.preheader4.1145

.preheader4.1145:                                 ; preds = %577
  br label %578

578:                                              ; preds = %.preheader4.1145
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %580

580:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit144, label %581

581:                                              ; preds = %580
  br i1 false, label %.preheader4.1, label %582

582:                                              ; preds = %581
  br i1 false, label %.preheader5.2, label %589

.preheader5.2:                                    ; preds = %582
  br label %583

583:                                              ; preds = %.preheader5.2
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %583
  br label %584

584:                                              ; preds = %.preheader4.2
  br label %585

585:                                              ; preds = %584
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %586

586:                                              ; preds = %585
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit144, label %587

587:                                              ; preds = %586
  br i1 false, label %.preheader4.1, label %588

588:                                              ; preds = %587
  unreachable

589:                                              ; preds = %582
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ 2, %582 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ 1, %582 ]
  %storemerge13.lcssa = phi i32 [ 2, %582 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %590

590:                                              ; preds = %589
  br label %.preheader3

.preheader3:                                      ; preds = %590
  br label %591

591:                                              ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %591
  br label %592

592:                                              ; preds = %.preheader2
  br label %593

593:                                              ; preds = %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %594

594:                                              ; preds = %593
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit150, label %598

.loopexit150:                                     ; preds = %619, %615, %594, %601
  %invariant.op60.lcssa.ph = phi i32 [ 8, %601 ], [ 0, %594 ], [ 1, %615 ], [ 9, %619 ]
  br label %595

595:                                              ; preds = %.loopexit150, %607
  %invariant.op60.lcssa = phi i32 [ %invariant.op60.2, %607 ], [ %invariant.op60.lcssa.ph, %.loopexit150 ]
  %.reass61.2 = add i32 128, %invariant.op60.lcssa
  %596 = sext i32 %.reass61.2 to i64
  %597 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %596
  store i32 1, ptr %597, align 4
  unreachable

598:                                              ; preds = %594
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %598
  br label %599

599:                                              ; preds = %.preheader2.1
  br label %600

600:                                              ; preds = %599
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %601

601:                                              ; preds = %600
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit150, label %602

602:                                              ; preds = %601
  br i1 false, label %.preheader2.2, label %611

.preheader2.2:                                    ; preds = %620, %602
  %storemerge14.lcssa149 = phi i32 [ 0, %602 ], [ 1, %620 ]
  %invariant.op60.2 = add i32 16, %storemerge14.lcssa149
  br label %603

603:                                              ; preds = %.preheader2.2
  br label %604

604:                                              ; preds = %603
  %605 = sext i32 %invariant.op60.2 to i64
  %606 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %605
  store i32 1, ptr %606, align 4
  br label %607

607:                                              ; preds = %604
  %.reass61.1.2 = add i32 64, %invariant.op60.2
  %608 = sext i32 %.reass61.1.2 to i64
  %609 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %608
  store i32 1, ptr %609, align 4
  br i1 false, label %595, label %610

610:                                              ; preds = %607
  unreachable

611:                                              ; preds = %602
  br i1 false, label %.preheader3.1, label %622

.preheader3.1:                                    ; preds = %611
  br label %612

612:                                              ; preds = %.preheader3.1
  br label %.preheader2.1151

.preheader2.1151:                                 ; preds = %612
  br label %613

613:                                              ; preds = %.preheader2.1151
  br label %614

614:                                              ; preds = %613
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %615

615:                                              ; preds = %614
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit150, label %616

616:                                              ; preds = %615
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %616
  br label %617

617:                                              ; preds = %.preheader2.1.1
  br label %618

618:                                              ; preds = %617
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %619

619:                                              ; preds = %618
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit150, label %620

620:                                              ; preds = %619
  br i1 false, label %.preheader2.2, label %621

621:                                              ; preds = %620
  unreachable

622:                                              ; preds = %611
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ 2, %611 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ 2, %611 ]
  %storemerge14.lcssa = phi i32 [ 1, %611 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %623

623:                                              ; preds = %622
  br label %.preheader1

.preheader1:                                      ; preds = %623
  br label %624

624:                                              ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %624
  br label %625

625:                                              ; preds = %.preheader
  br label %626

626:                                              ; preds = %625
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %627

627:                                              ; preds = %626
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit156, label %631

.loopexit156:                                     ; preds = %662, %658, %652, %648, %627, %634
  %invariant.op65.lcssa.ph = phi i32 [ 8, %634 ], [ 0, %627 ], [ 1, %648 ], [ 9, %652 ], [ 2, %658 ], [ 10, %662 ]
  br label %628

628:                                              ; preds = %.loopexit156, %640
  %invariant.op65.lcssa = phi i32 [ %invariant.op65.2, %640 ], [ %invariant.op65.lcssa.ph, %.loopexit156 ]
  %.reass66.2 = add i32 128, %invariant.op65.lcssa
  %629 = sext i32 %.reass66.2 to i64
  %630 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %629
  store i32 1, ptr %630, align 4
  unreachable

631:                                              ; preds = %627
  br label %.preheader.1

.preheader.1:                                     ; preds = %631
  br label %632

632:                                              ; preds = %.preheader.1
  br label %633

633:                                              ; preds = %632
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %634

634:                                              ; preds = %633
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit156, label %635

635:                                              ; preds = %634
  br i1 false, label %.preheader.2, label %644

.preheader.2:                                     ; preds = %663, %653, %635
  %storemerge15.lcssa155 = phi i32 [ 0, %635 ], [ 1, %653 ], [ 2, %663 ]
  %invariant.op65.2 = add i32 16, %storemerge15.lcssa155
  br label %636

636:                                              ; preds = %.preheader.2
  br label %637

637:                                              ; preds = %636
  %638 = sext i32 %invariant.op65.2 to i64
  %639 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %638
  store i32 1, ptr %639, align 4
  br label %640

640:                                              ; preds = %637
  %.reass66.1.2 = add i32 64, %invariant.op65.2
  %641 = sext i32 %.reass66.1.2 to i64
  %642 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %641
  store i32 1, ptr %642, align 4
  br i1 false, label %628, label %643

643:                                              ; preds = %640
  unreachable

644:                                              ; preds = %635
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %644
  br label %645

645:                                              ; preds = %.preheader1.1
  br label %.preheader.1157

.preheader.1157:                                  ; preds = %645
  br label %646

646:                                              ; preds = %.preheader.1157
  br label %647

647:                                              ; preds = %646
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %648

648:                                              ; preds = %647
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit156, label %649

649:                                              ; preds = %648
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %649
  br label %650

650:                                              ; preds = %.preheader.1.1
  br label %651

651:                                              ; preds = %650
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %652

652:                                              ; preds = %651
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit156, label %653

653:                                              ; preds = %652
  br i1 false, label %.preheader.2, label %654

654:                                              ; preds = %653
  br i1 false, label %.preheader1.2, label %665

.preheader1.2:                                    ; preds = %654
  br label %655

655:                                              ; preds = %.preheader1.2
  br label %.preheader.2159

.preheader.2159:                                  ; preds = %655
  br label %656

656:                                              ; preds = %.preheader.2159
  br label %657

657:                                              ; preds = %656
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %658

658:                                              ; preds = %657
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit156, label %659

659:                                              ; preds = %658
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %659
  br label %660

660:                                              ; preds = %.preheader.1.2
  br label %661

661:                                              ; preds = %660
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %662

662:                                              ; preds = %661
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit156, label %663

663:                                              ; preds = %662
  br i1 false, label %.preheader.2, label %664

664:                                              ; preds = %663
  unreachable

665:                                              ; preds = %654
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ 2, %654 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ 2, %654 ]
  %storemerge15.lcssa = phi i32 [ 2, %654 ]
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
  %666 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %666, 0
  br i1 %.not, label %670, label %667

667:                                              ; preds = %665
  %668 = load i32, ptr %4, align 4
  %669 = call i32 @Place(i32 noundef 0, i32 noundef %668)
  store i32 %669, ptr @n, align 4
  br label %671

670:                                              ; preds = %665
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %671

671:                                              ; preds = %670, %667
  %672 = load i32, ptr @n, align 4
  %673 = call i32 @Trial(i32 noundef %672)
  %.not16 = icmp eq i32 %673, 0
  br i1 %.not16, label %674, label %675

674:                                              ; preds = %671
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %678

675:                                              ; preds = %671
  %676 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %676, 2005
  br i1 %.not18, label %678, label %677

677:                                              ; preds = %675
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %678

678:                                              ; preds = %677, %675, %674
  %679 = load i32, ptr @n, align 4
  %680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %679) #4
  %681 = load i32, ptr @kount, align 4
  %682 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %681) #4
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
  br label %2, !llvm.loop !17

6:                                                ; preds = %2
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
