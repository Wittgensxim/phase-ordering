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
  br label %6

6:                                                ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %24, %22 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %25, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %22, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %25

22:                                               ; preds = %16, %11
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  br label %6, !llvm.loop !7

25:                                               ; preds = %16, %6
  %storemerge1 = phi i32 [ 0, %16 ], [ 1, %6 ]
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

6:                                                ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %21 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  br label %6, !llvm.loop !9

24:                                               ; preds = %6
  %.lcssa = phi i64 [ %8, %6 ]
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

33:                                               ; preds = %40, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %40 ], [ %32, %24 ]
  %34 = trunc nsw i64 %indvars.iv to i32
  store i32 %34, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %35, label %.loopexit

35:                                               ; preds = %33
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %37 = load i32, ptr %36, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %40

38:                                               ; preds = %35
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %35 ]
  %39 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %41

40:                                               ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !10

.loopexit:                                        ; preds = %33
  br label %41

41:                                               ; preds = %.loopexit, %38
  %storemerge2 = phi i32 [ %39, %38 ], [ 0, %.loopexit ]
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

6:                                                ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %21 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  br label %6, !llvm.loop !11

24:                                               ; preds = %6
  %.lcssa = phi i64 [ %8, %6 ]
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
  br label %7

7:                                                ; preds = %29, %1
  %storemerge = phi i32 [ 0, %1 ], [ %31, %29 ]
  store i32 %storemerge, ptr %3, align 4
  %8 = icmp slt i32 %storemerge, 13
  br i1 %8, label %9, label %32

9:                                                ; preds = %7
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %29, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr %2, align 4
  %18 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %17)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %29, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %2, align 4
  %22 = call i32 @Place(i32 noundef %20, i32 noundef %21)
  store i32 %22, ptr %4, align 4
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp ne i32 %23, 0
  %24 = load i32, ptr %4, align 4
  %25 = icmp eq i32 %24, 0
  %or.cond = select i1 %.not3, i1 true, i1 %25
  br i1 %or.cond, label %32, label %26

26:                                               ; preds = %19
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %27, i32 noundef %28)
  br label %29

29:                                               ; preds = %26, %16, %9
  %30 = load i32, ptr %3, align 4
  %31 = add nsw i32 %30, 1
  br label %7, !llvm.loop !12

32:                                               ; preds = %19, %7
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %7 ]
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
  %storemerge = phi i32 [ 0, %0 ], [ %11, %7 ]
  store i32 %storemerge, ptr %4, align 4
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %.preheader31

.preheader31:                                     ; preds = %5
  br label %12

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %32, %.preheader31
  %storemerge1 = phi i32 [ %34, %32 ], [ 1, %.preheader31 ]
  store i32 %storemerge1, ptr %1, align 4
  %13 = icmp slt i32 %storemerge1, 6
  br i1 %13, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %12
  br label %14

.preheader28:                                     ; preds = %12
  br label %35

14:                                               ; preds = %29, %.preheader30
  %storemerge47 = phi i32 [ %31, %29 ], [ 1, %.preheader30 ]
  store i32 %storemerge47, ptr %2, align 4
  %15 = icmp slt i32 %storemerge47, 6
  br i1 %15, label %.preheader29, label %32

.preheader29:                                     ; preds = %14
  br label %16

16:                                               ; preds = %18, %.preheader29
  %storemerge48 = phi i32 [ %28, %18 ], [ 1, %.preheader29 ]
  store i32 %storemerge48, ptr %3, align 4
  %17 = icmp slt i32 %storemerge48, 6
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load i32, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = shl i32 %storemerge48, 6
  %22 = shl i32 %20, 3
  %23 = add i32 %21, %22
  %24 = add nsw i32 %19, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %27 = load i32, ptr %3, align 4
  %28 = add nsw i32 %27, 1
  br label %16, !llvm.loop !14

29:                                               ; preds = %16
  %30 = load i32, ptr %2, align 4
  %31 = add nsw i32 %30, 1
  br label %14, !llvm.loop !15

32:                                               ; preds = %14
  %33 = load i32, ptr %1, align 4
  %34 = add nsw i32 %33, 1
  br label %12, !llvm.loop !16

35:                                               ; preds = %47, %.preheader28
  %storemerge2 = phi i32 [ %49, %47 ], [ 0, %.preheader28 ]
  store i32 %storemerge2, ptr %1, align 4
  %36 = icmp slt i32 %storemerge2, 13
  br i1 %36, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %35
  br label %37

.preheader26:                                     ; preds = %35
  br label %50

37:                                               ; preds = %39, %.preheader27
  %storemerge46 = phi i32 [ %46, %39 ], [ 0, %.preheader27 ]
  store i32 %storemerge46, ptr %4, align 4
  %38 = icmp slt i32 %storemerge46, 512
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  %40 = load i32, ptr %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2048 x i8], ptr @p, i64 %41
  %43 = sext i32 %storemerge46 to i64
  %44 = getelementptr inbounds [4 x i8], ptr %42, i64 %43
  store i32 0, ptr %44, align 4
  %45 = load i32, ptr %4, align 4
  %46 = add nsw i32 %45, 1
  br label %37, !llvm.loop !17

47:                                               ; preds = %37
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  br label %35, !llvm.loop !18

50:                                               ; preds = %70, %.preheader26
  %storemerge3 = phi i32 [ %72, %70 ], [ 0, %.preheader26 ]
  store i32 %storemerge3, ptr %1, align 4
  %51 = icmp slt i32 %storemerge3, 4
  br i1 %51, label %.preheader25, label %73

.preheader25:                                     ; preds = %50
  br label %52

52:                                               ; preds = %67, %.preheader25
  %storemerge44 = phi i32 [ %69, %67 ], [ 0, %.preheader25 ]
  store i32 %storemerge44, ptr %2, align 4
  %53 = icmp slt i32 %storemerge44, 2
  br i1 %53, label %.preheader24, label %70

.preheader24:                                     ; preds = %52
  br label %54

54:                                               ; preds = %56, %.preheader24
  %storemerge45 = phi i32 [ %66, %56 ], [ 0, %.preheader24 ]
  store i32 %storemerge45, ptr %3, align 4
  %55 = icmp slt i32 %storemerge45, 1
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = load i32, ptr %1, align 4
  %58 = load i32, ptr %2, align 4
  %59 = shl i32 %storemerge45, 6
  %60 = shl i32 %58, 3
  %61 = add i32 %59, %60
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @p, i64 %63
  store i32 1, ptr %64, align 4
  %65 = load i32, ptr %3, align 4
  %66 = add nsw i32 %65, 1
  br label %54, !llvm.loop !19

67:                                               ; preds = %54
  %68 = load i32, ptr %2, align 4
  %69 = add nsw i32 %68, 1
  br label %52, !llvm.loop !20

70:                                               ; preds = %52
  %71 = load i32, ptr %1, align 4
  %72 = add nsw i32 %71, 1
  br label %50, !llvm.loop !21

73:                                               ; preds = %50
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %74

74:                                               ; preds = %94, %73
  %storemerge4 = phi i32 [ 0, %73 ], [ %96, %94 ]
  store i32 %storemerge4, ptr %1, align 4
  %75 = icmp slt i32 %storemerge4, 2
  br i1 %75, label %.preheader23, label %97

.preheader23:                                     ; preds = %74
  br label %76

76:                                               ; preds = %91, %.preheader23
  %storemerge42 = phi i32 [ %93, %91 ], [ 0, %.preheader23 ]
  store i32 %storemerge42, ptr %2, align 4
  %77 = icmp slt i32 %storemerge42, 1
  br i1 %77, label %.preheader22, label %94

.preheader22:                                     ; preds = %76
  br label %78

78:                                               ; preds = %80, %.preheader22
  %storemerge43 = phi i32 [ %90, %80 ], [ 0, %.preheader22 ]
  store i32 %storemerge43, ptr %3, align 4
  %79 = icmp slt i32 %storemerge43, 4
  br i1 %79, label %80, label %91

80:                                               ; preds = %78
  %81 = load i32, ptr %1, align 4
  %82 = load i32, ptr %2, align 4
  %83 = shl i32 %storemerge43, 6
  %84 = shl i32 %82, 3
  %85 = add i32 %83, %84
  %86 = add nsw i32 %81, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %87
  store i32 1, ptr %88, align 4
  %89 = load i32, ptr %3, align 4
  %90 = add nsw i32 %89, 1
  br label %78, !llvm.loop !22

91:                                               ; preds = %78
  %92 = load i32, ptr %2, align 4
  %93 = add nsw i32 %92, 1
  br label %76, !llvm.loop !23

94:                                               ; preds = %76
  %95 = load i32, ptr %1, align 4
  %96 = add nsw i32 %95, 1
  br label %74, !llvm.loop !24

97:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %98

98:                                               ; preds = %118, %97
  %storemerge5 = phi i32 [ 0, %97 ], [ %120, %118 ]
  store i32 %storemerge5, ptr %1, align 4
  %99 = icmp slt i32 %storemerge5, 1
  br i1 %99, label %.preheader21, label %121

.preheader21:                                     ; preds = %98
  br label %100

100:                                              ; preds = %115, %.preheader21
  %storemerge40 = phi i32 [ %117, %115 ], [ 0, %.preheader21 ]
  store i32 %storemerge40, ptr %2, align 4
  %101 = icmp slt i32 %storemerge40, 4
  br i1 %101, label %.preheader20, label %118

.preheader20:                                     ; preds = %100
  br label %102

102:                                              ; preds = %104, %.preheader20
  %storemerge41 = phi i32 [ %114, %104 ], [ 0, %.preheader20 ]
  store i32 %storemerge41, ptr %3, align 4
  %103 = icmp slt i32 %storemerge41, 2
  br i1 %103, label %104, label %115

104:                                              ; preds = %102
  %105 = load i32, ptr %1, align 4
  %106 = load i32, ptr %2, align 4
  %107 = shl i32 %storemerge41, 6
  %108 = shl i32 %106, 3
  %109 = add i32 %107, %108
  %110 = add nsw i32 %105, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %111
  store i32 1, ptr %112, align 4
  %113 = load i32, ptr %3, align 4
  %114 = add nsw i32 %113, 1
  br label %102, !llvm.loop !25

115:                                              ; preds = %102
  %116 = load i32, ptr %2, align 4
  %117 = add nsw i32 %116, 1
  br label %100, !llvm.loop !26

118:                                              ; preds = %100
  %119 = load i32, ptr %1, align 4
  %120 = add nsw i32 %119, 1
  br label %98, !llvm.loop !27

121:                                              ; preds = %98
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %122

122:                                              ; preds = %142, %121
  %storemerge6 = phi i32 [ 0, %121 ], [ %144, %142 ]
  store i32 %storemerge6, ptr %1, align 4
  %123 = icmp slt i32 %storemerge6, 2
  br i1 %123, label %.preheader19, label %145

.preheader19:                                     ; preds = %122
  br label %124

124:                                              ; preds = %139, %.preheader19
  %storemerge38 = phi i32 [ %141, %139 ], [ 0, %.preheader19 ]
  store i32 %storemerge38, ptr %2, align 4
  %125 = icmp slt i32 %storemerge38, 4
  br i1 %125, label %.preheader18, label %142

.preheader18:                                     ; preds = %124
  br label %126

126:                                              ; preds = %128, %.preheader18
  %storemerge39 = phi i32 [ %138, %128 ], [ 0, %.preheader18 ]
  store i32 %storemerge39, ptr %3, align 4
  %127 = icmp slt i32 %storemerge39, 1
  br i1 %127, label %128, label %139

128:                                              ; preds = %126
  %129 = load i32, ptr %1, align 4
  %130 = load i32, ptr %2, align 4
  %131 = shl i32 %storemerge39, 6
  %132 = shl i32 %130, 3
  %133 = add i32 %131, %132
  %134 = add nsw i32 %129, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %135
  store i32 1, ptr %136, align 4
  %137 = load i32, ptr %3, align 4
  %138 = add nsw i32 %137, 1
  br label %126, !llvm.loop !28

139:                                              ; preds = %126
  %140 = load i32, ptr %2, align 4
  %141 = add nsw i32 %140, 1
  br label %124, !llvm.loop !29

142:                                              ; preds = %124
  %143 = load i32, ptr %1, align 4
  %144 = add nsw i32 %143, 1
  br label %122, !llvm.loop !30

145:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %146

146:                                              ; preds = %166, %145
  %storemerge7 = phi i32 [ 0, %145 ], [ %168, %166 ]
  store i32 %storemerge7, ptr %1, align 4
  %147 = icmp slt i32 %storemerge7, 4
  br i1 %147, label %.preheader17, label %169

.preheader17:                                     ; preds = %146
  br label %148

148:                                              ; preds = %163, %.preheader17
  %storemerge36 = phi i32 [ %165, %163 ], [ 0, %.preheader17 ]
  store i32 %storemerge36, ptr %2, align 4
  %149 = icmp slt i32 %storemerge36, 1
  br i1 %149, label %.preheader16, label %166

.preheader16:                                     ; preds = %148
  br label %150

150:                                              ; preds = %152, %.preheader16
  %storemerge37 = phi i32 [ %162, %152 ], [ 0, %.preheader16 ]
  store i32 %storemerge37, ptr %3, align 4
  %151 = icmp slt i32 %storemerge37, 2
  br i1 %151, label %152, label %163

152:                                              ; preds = %150
  %153 = load i32, ptr %1, align 4
  %154 = load i32, ptr %2, align 4
  %155 = shl i32 %storemerge37, 6
  %156 = shl i32 %154, 3
  %157 = add i32 %155, %156
  %158 = add nsw i32 %153, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %159
  store i32 1, ptr %160, align 4
  %161 = load i32, ptr %3, align 4
  %162 = add nsw i32 %161, 1
  br label %150, !llvm.loop !31

163:                                              ; preds = %150
  %164 = load i32, ptr %2, align 4
  %165 = add nsw i32 %164, 1
  br label %148, !llvm.loop !32

166:                                              ; preds = %148
  %167 = load i32, ptr %1, align 4
  %168 = add nsw i32 %167, 1
  br label %146, !llvm.loop !33

169:                                              ; preds = %146
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %170

170:                                              ; preds = %190, %169
  %storemerge8 = phi i32 [ 0, %169 ], [ %192, %190 ]
  store i32 %storemerge8, ptr %1, align 4
  %171 = icmp slt i32 %storemerge8, 1
  br i1 %171, label %.preheader15, label %193

.preheader15:                                     ; preds = %170
  br label %172

172:                                              ; preds = %187, %.preheader15
  %storemerge34 = phi i32 [ %189, %187 ], [ 0, %.preheader15 ]
  store i32 %storemerge34, ptr %2, align 4
  %173 = icmp slt i32 %storemerge34, 2
  br i1 %173, label %.preheader14, label %190

.preheader14:                                     ; preds = %172
  br label %174

174:                                              ; preds = %176, %.preheader14
  %storemerge35 = phi i32 [ %186, %176 ], [ 0, %.preheader14 ]
  store i32 %storemerge35, ptr %3, align 4
  %175 = icmp slt i32 %storemerge35, 4
  br i1 %175, label %176, label %187

176:                                              ; preds = %174
  %177 = load i32, ptr %1, align 4
  %178 = load i32, ptr %2, align 4
  %179 = shl i32 %storemerge35, 6
  %180 = shl i32 %178, 3
  %181 = add i32 %179, %180
  %182 = add nsw i32 %177, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %183
  store i32 1, ptr %184, align 4
  %185 = load i32, ptr %3, align 4
  %186 = add nsw i32 %185, 1
  br label %174, !llvm.loop !34

187:                                              ; preds = %174
  %188 = load i32, ptr %2, align 4
  %189 = add nsw i32 %188, 1
  br label %172, !llvm.loop !35

190:                                              ; preds = %172
  %191 = load i32, ptr %1, align 4
  %192 = add nsw i32 %191, 1
  br label %170, !llvm.loop !36

193:                                              ; preds = %170
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %194

194:                                              ; preds = %214, %193
  %storemerge9 = phi i32 [ 0, %193 ], [ %216, %214 ]
  store i32 %storemerge9, ptr %1, align 4
  %195 = icmp slt i32 %storemerge9, 3
  br i1 %195, label %.preheader13, label %217

.preheader13:                                     ; preds = %194
  br label %196

196:                                              ; preds = %211, %.preheader13
  %storemerge32 = phi i32 [ %213, %211 ], [ 0, %.preheader13 ]
  store i32 %storemerge32, ptr %2, align 4
  %197 = icmp slt i32 %storemerge32, 1
  br i1 %197, label %.preheader12, label %214

.preheader12:                                     ; preds = %196
  br label %198

198:                                              ; preds = %200, %.preheader12
  %storemerge33 = phi i32 [ %210, %200 ], [ 0, %.preheader12 ]
  store i32 %storemerge33, ptr %3, align 4
  %199 = icmp slt i32 %storemerge33, 1
  br i1 %199, label %200, label %211

200:                                              ; preds = %198
  %201 = load i32, ptr %1, align 4
  %202 = load i32, ptr %2, align 4
  %203 = shl i32 %storemerge33, 6
  %204 = shl i32 %202, 3
  %205 = add i32 %203, %204
  %206 = add nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %207
  store i32 1, ptr %208, align 4
  %209 = load i32, ptr %3, align 4
  %210 = add nsw i32 %209, 1
  br label %198, !llvm.loop !37

211:                                              ; preds = %198
  %212 = load i32, ptr %2, align 4
  %213 = add nsw i32 %212, 1
  br label %196, !llvm.loop !38

214:                                              ; preds = %196
  %215 = load i32, ptr %1, align 4
  %216 = add nsw i32 %215, 1
  br label %194, !llvm.loop !39

217:                                              ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %218

218:                                              ; preds = %238, %217
  %storemerge10 = phi i32 [ 0, %217 ], [ %240, %238 ]
  store i32 %storemerge10, ptr %1, align 4
  %219 = icmp slt i32 %storemerge10, 1
  br i1 %219, label %.preheader11, label %241

.preheader11:                                     ; preds = %218
  br label %220

220:                                              ; preds = %235, %.preheader11
  %storemerge30 = phi i32 [ %237, %235 ], [ 0, %.preheader11 ]
  store i32 %storemerge30, ptr %2, align 4
  %221 = icmp slt i32 %storemerge30, 3
  br i1 %221, label %.preheader10, label %238

.preheader10:                                     ; preds = %220
  br label %222

222:                                              ; preds = %224, %.preheader10
  %storemerge31 = phi i32 [ %234, %224 ], [ 0, %.preheader10 ]
  store i32 %storemerge31, ptr %3, align 4
  %223 = icmp slt i32 %storemerge31, 1
  br i1 %223, label %224, label %235

224:                                              ; preds = %222
  %225 = load i32, ptr %1, align 4
  %226 = load i32, ptr %2, align 4
  %227 = shl i32 %storemerge31, 6
  %228 = shl i32 %226, 3
  %229 = add i32 %227, %228
  %230 = add nsw i32 %225, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %231
  store i32 1, ptr %232, align 4
  %233 = load i32, ptr %3, align 4
  %234 = add nsw i32 %233, 1
  br label %222, !llvm.loop !40

235:                                              ; preds = %222
  %236 = load i32, ptr %2, align 4
  %237 = add nsw i32 %236, 1
  br label %220, !llvm.loop !41

238:                                              ; preds = %220
  %239 = load i32, ptr %1, align 4
  %240 = add nsw i32 %239, 1
  br label %218, !llvm.loop !42

241:                                              ; preds = %218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %242

242:                                              ; preds = %262, %241
  %storemerge11 = phi i32 [ 0, %241 ], [ %264, %262 ]
  store i32 %storemerge11, ptr %1, align 4
  %243 = icmp slt i32 %storemerge11, 1
  br i1 %243, label %.preheader9, label %265

.preheader9:                                      ; preds = %242
  br label %244

244:                                              ; preds = %259, %.preheader9
  %storemerge28 = phi i32 [ %261, %259 ], [ 0, %.preheader9 ]
  store i32 %storemerge28, ptr %2, align 4
  %245 = icmp slt i32 %storemerge28, 1
  br i1 %245, label %.preheader8, label %262

.preheader8:                                      ; preds = %244
  br label %246

246:                                              ; preds = %248, %.preheader8
  %storemerge29 = phi i32 [ %258, %248 ], [ 0, %.preheader8 ]
  store i32 %storemerge29, ptr %3, align 4
  %247 = icmp slt i32 %storemerge29, 3
  br i1 %247, label %248, label %259

248:                                              ; preds = %246
  %249 = load i32, ptr %1, align 4
  %250 = load i32, ptr %2, align 4
  %251 = shl i32 %storemerge29, 6
  %252 = shl i32 %250, 3
  %253 = add i32 %251, %252
  %254 = add nsw i32 %249, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %255
  store i32 1, ptr %256, align 4
  %257 = load i32, ptr %3, align 4
  %258 = add nsw i32 %257, 1
  br label %246, !llvm.loop !43

259:                                              ; preds = %246
  %260 = load i32, ptr %2, align 4
  %261 = add nsw i32 %260, 1
  br label %244, !llvm.loop !44

262:                                              ; preds = %244
  %263 = load i32, ptr %1, align 4
  %264 = add nsw i32 %263, 1
  br label %242, !llvm.loop !45

265:                                              ; preds = %242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %266

266:                                              ; preds = %286, %265
  %storemerge12 = phi i32 [ 0, %265 ], [ %288, %286 ]
  store i32 %storemerge12, ptr %1, align 4
  %267 = icmp slt i32 %storemerge12, 2
  br i1 %267, label %.preheader7, label %289

.preheader7:                                      ; preds = %266
  br label %268

268:                                              ; preds = %283, %.preheader7
  %storemerge26 = phi i32 [ %285, %283 ], [ 0, %.preheader7 ]
  store i32 %storemerge26, ptr %2, align 4
  %269 = icmp slt i32 %storemerge26, 2
  br i1 %269, label %.preheader6, label %286

.preheader6:                                      ; preds = %268
  br label %270

270:                                              ; preds = %272, %.preheader6
  %storemerge27 = phi i32 [ %282, %272 ], [ 0, %.preheader6 ]
  store i32 %storemerge27, ptr %3, align 4
  %271 = icmp slt i32 %storemerge27, 1
  br i1 %271, label %272, label %283

272:                                              ; preds = %270
  %273 = load i32, ptr %1, align 4
  %274 = load i32, ptr %2, align 4
  %275 = shl i32 %storemerge27, 6
  %276 = shl i32 %274, 3
  %277 = add i32 %275, %276
  %278 = add nsw i32 %273, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %279
  store i32 1, ptr %280, align 4
  %281 = load i32, ptr %3, align 4
  %282 = add nsw i32 %281, 1
  br label %270, !llvm.loop !46

283:                                              ; preds = %270
  %284 = load i32, ptr %2, align 4
  %285 = add nsw i32 %284, 1
  br label %268, !llvm.loop !47

286:                                              ; preds = %268
  %287 = load i32, ptr %1, align 4
  %288 = add nsw i32 %287, 1
  br label %266, !llvm.loop !48

289:                                              ; preds = %266
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %290

290:                                              ; preds = %310, %289
  %storemerge13 = phi i32 [ 0, %289 ], [ %312, %310 ]
  store i32 %storemerge13, ptr %1, align 4
  %291 = icmp slt i32 %storemerge13, 2
  br i1 %291, label %.preheader5, label %313

.preheader5:                                      ; preds = %290
  br label %292

292:                                              ; preds = %307, %.preheader5
  %storemerge24 = phi i32 [ %309, %307 ], [ 0, %.preheader5 ]
  store i32 %storemerge24, ptr %2, align 4
  %293 = icmp slt i32 %storemerge24, 1
  br i1 %293, label %.preheader4, label %310

.preheader4:                                      ; preds = %292
  br label %294

294:                                              ; preds = %296, %.preheader4
  %storemerge25 = phi i32 [ %306, %296 ], [ 0, %.preheader4 ]
  store i32 %storemerge25, ptr %3, align 4
  %295 = icmp slt i32 %storemerge25, 2
  br i1 %295, label %296, label %307

296:                                              ; preds = %294
  %297 = load i32, ptr %1, align 4
  %298 = load i32, ptr %2, align 4
  %299 = shl i32 %storemerge25, 6
  %300 = shl i32 %298, 3
  %301 = add i32 %299, %300
  %302 = add nsw i32 %297, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %303
  store i32 1, ptr %304, align 4
  %305 = load i32, ptr %3, align 4
  %306 = add nsw i32 %305, 1
  br label %294, !llvm.loop !49

307:                                              ; preds = %294
  %308 = load i32, ptr %2, align 4
  %309 = add nsw i32 %308, 1
  br label %292, !llvm.loop !50

310:                                              ; preds = %292
  %311 = load i32, ptr %1, align 4
  %312 = add nsw i32 %311, 1
  br label %290, !llvm.loop !51

313:                                              ; preds = %290
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %314

314:                                              ; preds = %334, %313
  %storemerge14 = phi i32 [ 0, %313 ], [ %336, %334 ]
  store i32 %storemerge14, ptr %1, align 4
  %315 = icmp slt i32 %storemerge14, 1
  br i1 %315, label %.preheader3, label %337

.preheader3:                                      ; preds = %314
  br label %316

316:                                              ; preds = %331, %.preheader3
  %storemerge22 = phi i32 [ %333, %331 ], [ 0, %.preheader3 ]
  store i32 %storemerge22, ptr %2, align 4
  %317 = icmp slt i32 %storemerge22, 2
  br i1 %317, label %.preheader2, label %334

.preheader2:                                      ; preds = %316
  br label %318

318:                                              ; preds = %320, %.preheader2
  %storemerge23 = phi i32 [ %330, %320 ], [ 0, %.preheader2 ]
  store i32 %storemerge23, ptr %3, align 4
  %319 = icmp slt i32 %storemerge23, 2
  br i1 %319, label %320, label %331

320:                                              ; preds = %318
  %321 = load i32, ptr %1, align 4
  %322 = load i32, ptr %2, align 4
  %323 = shl i32 %storemerge23, 6
  %324 = shl i32 %322, 3
  %325 = add i32 %323, %324
  %326 = add nsw i32 %321, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %327
  store i32 1, ptr %328, align 4
  %329 = load i32, ptr %3, align 4
  %330 = add nsw i32 %329, 1
  br label %318, !llvm.loop !52

331:                                              ; preds = %318
  %332 = load i32, ptr %2, align 4
  %333 = add nsw i32 %332, 1
  br label %316, !llvm.loop !53

334:                                              ; preds = %316
  %335 = load i32, ptr %1, align 4
  %336 = add nsw i32 %335, 1
  br label %314, !llvm.loop !54

337:                                              ; preds = %314
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %338

338:                                              ; preds = %358, %337
  %storemerge15 = phi i32 [ 0, %337 ], [ %360, %358 ]
  store i32 %storemerge15, ptr %1, align 4
  %339 = icmp slt i32 %storemerge15, 2
  br i1 %339, label %.preheader1, label %361

.preheader1:                                      ; preds = %338
  br label %340

340:                                              ; preds = %355, %.preheader1
  %storemerge20 = phi i32 [ %357, %355 ], [ 0, %.preheader1 ]
  store i32 %storemerge20, ptr %2, align 4
  %341 = icmp slt i32 %storemerge20, 2
  br i1 %341, label %.preheader, label %358

.preheader:                                       ; preds = %340
  br label %342

342:                                              ; preds = %344, %.preheader
  %storemerge21 = phi i32 [ %354, %344 ], [ 0, %.preheader ]
  store i32 %storemerge21, ptr %3, align 4
  %343 = icmp slt i32 %storemerge21, 2
  br i1 %343, label %344, label %355

344:                                              ; preds = %342
  %345 = load i32, ptr %1, align 4
  %346 = load i32, ptr %2, align 4
  %347 = shl i32 %storemerge21, 6
  %348 = shl i32 %346, 3
  %349 = add i32 %347, %348
  %350 = add nsw i32 %345, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %351
  store i32 1, ptr %352, align 4
  %353 = load i32, ptr %3, align 4
  %354 = add nsw i32 %353, 1
  br label %342, !llvm.loop !55

355:                                              ; preds = %342
  %356 = load i32, ptr %2, align 4
  %357 = add nsw i32 %356, 1
  br label %340, !llvm.loop !56

358:                                              ; preds = %340
  %359 = load i32, ptr %1, align 4
  %360 = add nsw i32 %359, 1
  br label %338, !llvm.loop !57

361:                                              ; preds = %338
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %362 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %362, 0
  br i1 %.not, label %366, label %363

363:                                              ; preds = %361
  %364 = load i32, ptr %4, align 4
  %365 = call i32 @Place(i32 noundef 0, i32 noundef %364)
  store i32 %365, ptr @n, align 4
  br label %367

366:                                              ; preds = %361
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %367

367:                                              ; preds = %366, %363
  %368 = load i32, ptr @n, align 4
  %369 = call i32 @Trial(i32 noundef %368)
  %.not16 = icmp eq i32 %369, 0
  br i1 %.not16, label %370, label %371

370:                                              ; preds = %367
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %374

371:                                              ; preds = %367
  %372 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %372, 2005
  br i1 %.not18, label %374, label %373

373:                                              ; preds = %371
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %374

374:                                              ; preds = %373, %371, %370
  %375 = load i32, ptr @n, align 4
  %376 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %375) #4
  %377 = load i32, ptr @kount, align 4
  %378 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %377) #4
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
