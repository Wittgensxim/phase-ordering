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
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %37 = load i32, ptr %36, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %40

38:                                               ; preds = %35
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %35 ]
  %39 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

40:                                               ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !10

.loopexit:                                        ; preds = %33, %38
  %storemerge2 = phi i32 [ %39, %38 ], [ 0, %33 ]
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
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %27, %1
  %storemerge = phi i32 [ 0, %1 ], [ %29, %27 ]
  store i32 %storemerge, ptr %3, align 4
  %7 = icmp slt i32 %storemerge, 13
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %27, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %2, align 4
  %17 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %16)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %2, align 4
  %21 = call i32 @Place(i32 noundef %19, i32 noundef %20)
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp ne i32 %22, 0
  %23 = icmp eq i32 %21, 0
  %or.cond = or i1 %.not3, %23
  br i1 %or.cond, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %3, align 4
  %26 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %25, i32 noundef %26)
  br label %27

27:                                               ; preds = %24, %15, %8
  %28 = load i32, ptr %3, align 4
  %29 = add nsw i32 %28, 1
  br label %6, !llvm.loop !12

30:                                               ; preds = %18, %6
  %storemerge1 = phi i32 [ 1, %18 ], [ 0, %6 ]
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

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = load i32, ptr %4, align 4
  %11 = add nsw i32 %10, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %5, %29
  %storemerge1 = phi i32 [ %31, %29 ], [ 1, %5 ]
  store i32 %storemerge1, ptr %1, align 4
  %12 = icmp slt i32 %storemerge1, 6
  br i1 %12, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %26
  %storemerge47 = phi i32 [ %28, %26 ], [ 1, %.preheader31 ]
  store i32 %storemerge47, ptr %2, align 4
  %13 = icmp slt i32 %storemerge47, 6
  br i1 %13, label %.preheader29, label %29

.preheader29:                                     ; preds = %.preheader30, %15
  %storemerge48 = phi i32 [ %25, %15 ], [ 1, %.preheader30 ]
  store i32 %storemerge48, ptr %3, align 4
  %14 = icmp slt i32 %storemerge48, 6
  br i1 %14, label %15, label %26

15:                                               ; preds = %.preheader29
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %2, align 4
  %18 = shl i32 %storemerge48, 6
  %19 = shl i32 %17, 3
  %20 = add i32 %18, %19
  %21 = add nsw i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = load i32, ptr %3, align 4
  %25 = add nsw i32 %24, 1
  br label %.preheader29, !llvm.loop !14

26:                                               ; preds = %.preheader29
  %27 = load i32, ptr %2, align 4
  %28 = add nsw i32 %27, 1
  br label %.preheader30, !llvm.loop !15

29:                                               ; preds = %.preheader30
  %30 = load i32, ptr %1, align 4
  %31 = add nsw i32 %30, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %.preheader31, %42
  %storemerge2 = phi i32 [ %44, %42 ], [ 0, %.preheader31 ]
  store i32 %storemerge2, ptr %1, align 4
  %32 = icmp slt i32 %storemerge2, 13
  br i1 %32, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %.preheader28, %34
  %storemerge46 = phi i32 [ %41, %34 ], [ 0, %.preheader28 ]
  store i32 %storemerge46, ptr %4, align 4
  %33 = icmp slt i32 %storemerge46, 512
  br i1 %33, label %34, label %42

34:                                               ; preds = %.preheader27
  %35 = load i32, ptr %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x i8], ptr @p, i64 %36
  %38 = sext i32 %storemerge46 to i64
  %39 = getelementptr inbounds [4 x i8], ptr %37, i64 %38
  store i32 0, ptr %39, align 4
  %40 = load i32, ptr %4, align 4
  %41 = add nsw i32 %40, 1
  br label %.preheader27, !llvm.loop !17

42:                                               ; preds = %.preheader27
  %43 = load i32, ptr %1, align 4
  %44 = add nsw i32 %43, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %.preheader28, %62
  %storemerge3 = phi i32 [ %64, %62 ], [ 0, %.preheader28 ]
  store i32 %storemerge3, ptr %1, align 4
  %45 = icmp slt i32 %storemerge3, 4
  br i1 %45, label %.preheader25, label %65

.preheader25:                                     ; preds = %.preheader26, %59
  %storemerge44 = phi i32 [ %61, %59 ], [ 0, %.preheader26 ]
  store i32 %storemerge44, ptr %2, align 4
  %46 = icmp slt i32 %storemerge44, 2
  br i1 %46, label %.preheader24, label %62

.preheader24:                                     ; preds = %.preheader25, %48
  %storemerge45 = phi i32 [ %58, %48 ], [ 0, %.preheader25 ]
  store i32 %storemerge45, ptr %3, align 4
  %47 = icmp slt i32 %storemerge45, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %.preheader24
  %49 = load i32, ptr %1, align 4
  %50 = load i32, ptr %2, align 4
  %51 = shl i32 %storemerge45, 6
  %52 = shl i32 %50, 3
  %53 = add i32 %51, %52
  %54 = add nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr @p, i64 %55
  store i32 1, ptr %56, align 4
  %57 = load i32, ptr %3, align 4
  %58 = add nsw i32 %57, 1
  br label %.preheader24, !llvm.loop !19

59:                                               ; preds = %.preheader24
  %60 = load i32, ptr %2, align 4
  %61 = add nsw i32 %60, 1
  br label %.preheader25, !llvm.loop !20

62:                                               ; preds = %.preheader25
  %63 = load i32, ptr %1, align 4
  %64 = add nsw i32 %63, 1
  br label %.preheader26, !llvm.loop !21

65:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %66

66:                                               ; preds = %84, %65
  %storemerge4 = phi i32 [ 0, %65 ], [ %86, %84 ]
  store i32 %storemerge4, ptr %1, align 4
  %67 = icmp slt i32 %storemerge4, 2
  br i1 %67, label %.preheader23, label %87

.preheader23:                                     ; preds = %66, %81
  %storemerge42 = phi i32 [ %83, %81 ], [ 0, %66 ]
  store i32 %storemerge42, ptr %2, align 4
  %68 = icmp slt i32 %storemerge42, 1
  br i1 %68, label %.preheader22, label %84

.preheader22:                                     ; preds = %.preheader23, %70
  %storemerge43 = phi i32 [ %80, %70 ], [ 0, %.preheader23 ]
  store i32 %storemerge43, ptr %3, align 4
  %69 = icmp slt i32 %storemerge43, 4
  br i1 %69, label %70, label %81

70:                                               ; preds = %.preheader22
  %71 = load i32, ptr %1, align 4
  %72 = load i32, ptr %2, align 4
  %73 = shl i32 %storemerge43, 6
  %74 = shl i32 %72, 3
  %75 = add i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %77
  store i32 1, ptr %78, align 4
  %79 = load i32, ptr %3, align 4
  %80 = add nsw i32 %79, 1
  br label %.preheader22, !llvm.loop !22

81:                                               ; preds = %.preheader22
  %82 = load i32, ptr %2, align 4
  %83 = add nsw i32 %82, 1
  br label %.preheader23, !llvm.loop !23

84:                                               ; preds = %.preheader23
  %85 = load i32, ptr %1, align 4
  %86 = add nsw i32 %85, 1
  br label %66, !llvm.loop !24

87:                                               ; preds = %66
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %88

88:                                               ; preds = %106, %87
  %storemerge5 = phi i32 [ 0, %87 ], [ %108, %106 ]
  store i32 %storemerge5, ptr %1, align 4
  %89 = icmp slt i32 %storemerge5, 1
  br i1 %89, label %.preheader21, label %109

.preheader21:                                     ; preds = %88, %103
  %storemerge40 = phi i32 [ %105, %103 ], [ 0, %88 ]
  store i32 %storemerge40, ptr %2, align 4
  %90 = icmp slt i32 %storemerge40, 4
  br i1 %90, label %.preheader20, label %106

.preheader20:                                     ; preds = %.preheader21, %92
  %storemerge41 = phi i32 [ %102, %92 ], [ 0, %.preheader21 ]
  store i32 %storemerge41, ptr %3, align 4
  %91 = icmp slt i32 %storemerge41, 2
  br i1 %91, label %92, label %103

92:                                               ; preds = %.preheader20
  %93 = load i32, ptr %1, align 4
  %94 = load i32, ptr %2, align 4
  %95 = shl i32 %storemerge41, 6
  %96 = shl i32 %94, 3
  %97 = add i32 %95, %96
  %98 = add nsw i32 %93, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %99
  store i32 1, ptr %100, align 4
  %101 = load i32, ptr %3, align 4
  %102 = add nsw i32 %101, 1
  br label %.preheader20, !llvm.loop !25

103:                                              ; preds = %.preheader20
  %104 = load i32, ptr %2, align 4
  %105 = add nsw i32 %104, 1
  br label %.preheader21, !llvm.loop !26

106:                                              ; preds = %.preheader21
  %107 = load i32, ptr %1, align 4
  %108 = add nsw i32 %107, 1
  br label %88, !llvm.loop !27

109:                                              ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %110

110:                                              ; preds = %128, %109
  %storemerge6 = phi i32 [ 0, %109 ], [ %130, %128 ]
  store i32 %storemerge6, ptr %1, align 4
  %111 = icmp slt i32 %storemerge6, 2
  br i1 %111, label %.preheader19, label %131

.preheader19:                                     ; preds = %110, %125
  %storemerge38 = phi i32 [ %127, %125 ], [ 0, %110 ]
  store i32 %storemerge38, ptr %2, align 4
  %112 = icmp slt i32 %storemerge38, 4
  br i1 %112, label %.preheader18, label %128

.preheader18:                                     ; preds = %.preheader19, %114
  %storemerge39 = phi i32 [ %124, %114 ], [ 0, %.preheader19 ]
  store i32 %storemerge39, ptr %3, align 4
  %113 = icmp slt i32 %storemerge39, 1
  br i1 %113, label %114, label %125

114:                                              ; preds = %.preheader18
  %115 = load i32, ptr %1, align 4
  %116 = load i32, ptr %2, align 4
  %117 = shl i32 %storemerge39, 6
  %118 = shl i32 %116, 3
  %119 = add i32 %117, %118
  %120 = add nsw i32 %115, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %121
  store i32 1, ptr %122, align 4
  %123 = load i32, ptr %3, align 4
  %124 = add nsw i32 %123, 1
  br label %.preheader18, !llvm.loop !28

125:                                              ; preds = %.preheader18
  %126 = load i32, ptr %2, align 4
  %127 = add nsw i32 %126, 1
  br label %.preheader19, !llvm.loop !29

128:                                              ; preds = %.preheader19
  %129 = load i32, ptr %1, align 4
  %130 = add nsw i32 %129, 1
  br label %110, !llvm.loop !30

131:                                              ; preds = %110
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %132

132:                                              ; preds = %150, %131
  %storemerge7 = phi i32 [ 0, %131 ], [ %152, %150 ]
  store i32 %storemerge7, ptr %1, align 4
  %133 = icmp slt i32 %storemerge7, 4
  br i1 %133, label %.preheader17, label %153

.preheader17:                                     ; preds = %132, %147
  %storemerge36 = phi i32 [ %149, %147 ], [ 0, %132 ]
  store i32 %storemerge36, ptr %2, align 4
  %134 = icmp slt i32 %storemerge36, 1
  br i1 %134, label %.preheader16, label %150

.preheader16:                                     ; preds = %.preheader17, %136
  %storemerge37 = phi i32 [ %146, %136 ], [ 0, %.preheader17 ]
  store i32 %storemerge37, ptr %3, align 4
  %135 = icmp slt i32 %storemerge37, 2
  br i1 %135, label %136, label %147

136:                                              ; preds = %.preheader16
  %137 = load i32, ptr %1, align 4
  %138 = load i32, ptr %2, align 4
  %139 = shl i32 %storemerge37, 6
  %140 = shl i32 %138, 3
  %141 = add i32 %139, %140
  %142 = add nsw i32 %137, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %143
  store i32 1, ptr %144, align 4
  %145 = load i32, ptr %3, align 4
  %146 = add nsw i32 %145, 1
  br label %.preheader16, !llvm.loop !31

147:                                              ; preds = %.preheader16
  %148 = load i32, ptr %2, align 4
  %149 = add nsw i32 %148, 1
  br label %.preheader17, !llvm.loop !32

150:                                              ; preds = %.preheader17
  %151 = load i32, ptr %1, align 4
  %152 = add nsw i32 %151, 1
  br label %132, !llvm.loop !33

153:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %154

154:                                              ; preds = %172, %153
  %storemerge8 = phi i32 [ 0, %153 ], [ %174, %172 ]
  store i32 %storemerge8, ptr %1, align 4
  %155 = icmp slt i32 %storemerge8, 1
  br i1 %155, label %.preheader15, label %175

.preheader15:                                     ; preds = %154, %169
  %storemerge34 = phi i32 [ %171, %169 ], [ 0, %154 ]
  store i32 %storemerge34, ptr %2, align 4
  %156 = icmp slt i32 %storemerge34, 2
  br i1 %156, label %.preheader14, label %172

.preheader14:                                     ; preds = %.preheader15, %158
  %storemerge35 = phi i32 [ %168, %158 ], [ 0, %.preheader15 ]
  store i32 %storemerge35, ptr %3, align 4
  %157 = icmp slt i32 %storemerge35, 4
  br i1 %157, label %158, label %169

158:                                              ; preds = %.preheader14
  %159 = load i32, ptr %1, align 4
  %160 = load i32, ptr %2, align 4
  %161 = shl i32 %storemerge35, 6
  %162 = shl i32 %160, 3
  %163 = add i32 %161, %162
  %164 = add nsw i32 %159, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %165
  store i32 1, ptr %166, align 4
  %167 = load i32, ptr %3, align 4
  %168 = add nsw i32 %167, 1
  br label %.preheader14, !llvm.loop !34

169:                                              ; preds = %.preheader14
  %170 = load i32, ptr %2, align 4
  %171 = add nsw i32 %170, 1
  br label %.preheader15, !llvm.loop !35

172:                                              ; preds = %.preheader15
  %173 = load i32, ptr %1, align 4
  %174 = add nsw i32 %173, 1
  br label %154, !llvm.loop !36

175:                                              ; preds = %154
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %176

176:                                              ; preds = %194, %175
  %storemerge9 = phi i32 [ 0, %175 ], [ %196, %194 ]
  store i32 %storemerge9, ptr %1, align 4
  %177 = icmp slt i32 %storemerge9, 3
  br i1 %177, label %.preheader13, label %197

.preheader13:                                     ; preds = %176, %191
  %storemerge32 = phi i32 [ %193, %191 ], [ 0, %176 ]
  store i32 %storemerge32, ptr %2, align 4
  %178 = icmp slt i32 %storemerge32, 1
  br i1 %178, label %.preheader12, label %194

.preheader12:                                     ; preds = %.preheader13, %180
  %storemerge33 = phi i32 [ %190, %180 ], [ 0, %.preheader13 ]
  store i32 %storemerge33, ptr %3, align 4
  %179 = icmp slt i32 %storemerge33, 1
  br i1 %179, label %180, label %191

180:                                              ; preds = %.preheader12
  %181 = load i32, ptr %1, align 4
  %182 = load i32, ptr %2, align 4
  %183 = shl i32 %storemerge33, 6
  %184 = shl i32 %182, 3
  %185 = add i32 %183, %184
  %186 = add nsw i32 %181, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %187
  store i32 1, ptr %188, align 4
  %189 = load i32, ptr %3, align 4
  %190 = add nsw i32 %189, 1
  br label %.preheader12, !llvm.loop !37

191:                                              ; preds = %.preheader12
  %192 = load i32, ptr %2, align 4
  %193 = add nsw i32 %192, 1
  br label %.preheader13, !llvm.loop !38

194:                                              ; preds = %.preheader13
  %195 = load i32, ptr %1, align 4
  %196 = add nsw i32 %195, 1
  br label %176, !llvm.loop !39

197:                                              ; preds = %176
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %198

198:                                              ; preds = %216, %197
  %storemerge10 = phi i32 [ 0, %197 ], [ %218, %216 ]
  store i32 %storemerge10, ptr %1, align 4
  %199 = icmp slt i32 %storemerge10, 1
  br i1 %199, label %.preheader11, label %219

.preheader11:                                     ; preds = %198, %213
  %storemerge30 = phi i32 [ %215, %213 ], [ 0, %198 ]
  store i32 %storemerge30, ptr %2, align 4
  %200 = icmp slt i32 %storemerge30, 3
  br i1 %200, label %.preheader10, label %216

.preheader10:                                     ; preds = %.preheader11, %202
  %storemerge31 = phi i32 [ %212, %202 ], [ 0, %.preheader11 ]
  store i32 %storemerge31, ptr %3, align 4
  %201 = icmp slt i32 %storemerge31, 1
  br i1 %201, label %202, label %213

202:                                              ; preds = %.preheader10
  %203 = load i32, ptr %1, align 4
  %204 = load i32, ptr %2, align 4
  %205 = shl i32 %storemerge31, 6
  %206 = shl i32 %204, 3
  %207 = add i32 %205, %206
  %208 = add nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %209
  store i32 1, ptr %210, align 4
  %211 = load i32, ptr %3, align 4
  %212 = add nsw i32 %211, 1
  br label %.preheader10, !llvm.loop !40

213:                                              ; preds = %.preheader10
  %214 = load i32, ptr %2, align 4
  %215 = add nsw i32 %214, 1
  br label %.preheader11, !llvm.loop !41

216:                                              ; preds = %.preheader11
  %217 = load i32, ptr %1, align 4
  %218 = add nsw i32 %217, 1
  br label %198, !llvm.loop !42

219:                                              ; preds = %198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %220

220:                                              ; preds = %238, %219
  %storemerge11 = phi i32 [ 0, %219 ], [ %240, %238 ]
  store i32 %storemerge11, ptr %1, align 4
  %221 = icmp slt i32 %storemerge11, 1
  br i1 %221, label %.preheader9, label %241

.preheader9:                                      ; preds = %220, %235
  %storemerge28 = phi i32 [ %237, %235 ], [ 0, %220 ]
  store i32 %storemerge28, ptr %2, align 4
  %222 = icmp slt i32 %storemerge28, 1
  br i1 %222, label %.preheader8, label %238

.preheader8:                                      ; preds = %.preheader9, %224
  %storemerge29 = phi i32 [ %234, %224 ], [ 0, %.preheader9 ]
  store i32 %storemerge29, ptr %3, align 4
  %223 = icmp slt i32 %storemerge29, 3
  br i1 %223, label %224, label %235

224:                                              ; preds = %.preheader8
  %225 = load i32, ptr %1, align 4
  %226 = load i32, ptr %2, align 4
  %227 = shl i32 %storemerge29, 6
  %228 = shl i32 %226, 3
  %229 = add i32 %227, %228
  %230 = add nsw i32 %225, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %231
  store i32 1, ptr %232, align 4
  %233 = load i32, ptr %3, align 4
  %234 = add nsw i32 %233, 1
  br label %.preheader8, !llvm.loop !43

235:                                              ; preds = %.preheader8
  %236 = load i32, ptr %2, align 4
  %237 = add nsw i32 %236, 1
  br label %.preheader9, !llvm.loop !44

238:                                              ; preds = %.preheader9
  %239 = load i32, ptr %1, align 4
  %240 = add nsw i32 %239, 1
  br label %220, !llvm.loop !45

241:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %242

242:                                              ; preds = %260, %241
  %storemerge12 = phi i32 [ 0, %241 ], [ %262, %260 ]
  store i32 %storemerge12, ptr %1, align 4
  %243 = icmp slt i32 %storemerge12, 2
  br i1 %243, label %.preheader7, label %263

.preheader7:                                      ; preds = %242, %257
  %storemerge26 = phi i32 [ %259, %257 ], [ 0, %242 ]
  store i32 %storemerge26, ptr %2, align 4
  %244 = icmp slt i32 %storemerge26, 2
  br i1 %244, label %.preheader6, label %260

.preheader6:                                      ; preds = %.preheader7, %246
  %storemerge27 = phi i32 [ %256, %246 ], [ 0, %.preheader7 ]
  store i32 %storemerge27, ptr %3, align 4
  %245 = icmp slt i32 %storemerge27, 1
  br i1 %245, label %246, label %257

246:                                              ; preds = %.preheader6
  %247 = load i32, ptr %1, align 4
  %248 = load i32, ptr %2, align 4
  %249 = shl i32 %storemerge27, 6
  %250 = shl i32 %248, 3
  %251 = add i32 %249, %250
  %252 = add nsw i32 %247, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %253
  store i32 1, ptr %254, align 4
  %255 = load i32, ptr %3, align 4
  %256 = add nsw i32 %255, 1
  br label %.preheader6, !llvm.loop !46

257:                                              ; preds = %.preheader6
  %258 = load i32, ptr %2, align 4
  %259 = add nsw i32 %258, 1
  br label %.preheader7, !llvm.loop !47

260:                                              ; preds = %.preheader7
  %261 = load i32, ptr %1, align 4
  %262 = add nsw i32 %261, 1
  br label %242, !llvm.loop !48

263:                                              ; preds = %242
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %264

264:                                              ; preds = %282, %263
  %storemerge13 = phi i32 [ 0, %263 ], [ %284, %282 ]
  store i32 %storemerge13, ptr %1, align 4
  %265 = icmp slt i32 %storemerge13, 2
  br i1 %265, label %.preheader5, label %285

.preheader5:                                      ; preds = %264, %279
  %storemerge24 = phi i32 [ %281, %279 ], [ 0, %264 ]
  store i32 %storemerge24, ptr %2, align 4
  %266 = icmp slt i32 %storemerge24, 1
  br i1 %266, label %.preheader4, label %282

.preheader4:                                      ; preds = %.preheader5, %268
  %storemerge25 = phi i32 [ %278, %268 ], [ 0, %.preheader5 ]
  store i32 %storemerge25, ptr %3, align 4
  %267 = icmp slt i32 %storemerge25, 2
  br i1 %267, label %268, label %279

268:                                              ; preds = %.preheader4
  %269 = load i32, ptr %1, align 4
  %270 = load i32, ptr %2, align 4
  %271 = shl i32 %storemerge25, 6
  %272 = shl i32 %270, 3
  %273 = add i32 %271, %272
  %274 = add nsw i32 %269, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %275
  store i32 1, ptr %276, align 4
  %277 = load i32, ptr %3, align 4
  %278 = add nsw i32 %277, 1
  br label %.preheader4, !llvm.loop !49

279:                                              ; preds = %.preheader4
  %280 = load i32, ptr %2, align 4
  %281 = add nsw i32 %280, 1
  br label %.preheader5, !llvm.loop !50

282:                                              ; preds = %.preheader5
  %283 = load i32, ptr %1, align 4
  %284 = add nsw i32 %283, 1
  br label %264, !llvm.loop !51

285:                                              ; preds = %264
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %286

286:                                              ; preds = %304, %285
  %storemerge14 = phi i32 [ 0, %285 ], [ %306, %304 ]
  store i32 %storemerge14, ptr %1, align 4
  %287 = icmp slt i32 %storemerge14, 1
  br i1 %287, label %.preheader3, label %307

.preheader3:                                      ; preds = %286, %301
  %storemerge22 = phi i32 [ %303, %301 ], [ 0, %286 ]
  store i32 %storemerge22, ptr %2, align 4
  %288 = icmp slt i32 %storemerge22, 2
  br i1 %288, label %.preheader2, label %304

.preheader2:                                      ; preds = %.preheader3, %290
  %storemerge23 = phi i32 [ %300, %290 ], [ 0, %.preheader3 ]
  store i32 %storemerge23, ptr %3, align 4
  %289 = icmp slt i32 %storemerge23, 2
  br i1 %289, label %290, label %301

290:                                              ; preds = %.preheader2
  %291 = load i32, ptr %1, align 4
  %292 = load i32, ptr %2, align 4
  %293 = shl i32 %storemerge23, 6
  %294 = shl i32 %292, 3
  %295 = add i32 %293, %294
  %296 = add nsw i32 %291, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %297
  store i32 1, ptr %298, align 4
  %299 = load i32, ptr %3, align 4
  %300 = add nsw i32 %299, 1
  br label %.preheader2, !llvm.loop !52

301:                                              ; preds = %.preheader2
  %302 = load i32, ptr %2, align 4
  %303 = add nsw i32 %302, 1
  br label %.preheader3, !llvm.loop !53

304:                                              ; preds = %.preheader3
  %305 = load i32, ptr %1, align 4
  %306 = add nsw i32 %305, 1
  br label %286, !llvm.loop !54

307:                                              ; preds = %286
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %308

308:                                              ; preds = %326, %307
  %storemerge15 = phi i32 [ 0, %307 ], [ %328, %326 ]
  store i32 %storemerge15, ptr %1, align 4
  %309 = icmp slt i32 %storemerge15, 2
  br i1 %309, label %.preheader1, label %329

.preheader1:                                      ; preds = %308, %323
  %storemerge20 = phi i32 [ %325, %323 ], [ 0, %308 ]
  store i32 %storemerge20, ptr %2, align 4
  %310 = icmp slt i32 %storemerge20, 2
  br i1 %310, label %.preheader, label %326

.preheader:                                       ; preds = %.preheader1, %312
  %storemerge21 = phi i32 [ %322, %312 ], [ 0, %.preheader1 ]
  store i32 %storemerge21, ptr %3, align 4
  %311 = icmp slt i32 %storemerge21, 2
  br i1 %311, label %312, label %323

312:                                              ; preds = %.preheader
  %313 = load i32, ptr %1, align 4
  %314 = load i32, ptr %2, align 4
  %315 = shl i32 %storemerge21, 6
  %316 = shl i32 %314, 3
  %317 = add i32 %315, %316
  %318 = add nsw i32 %313, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %319
  store i32 1, ptr %320, align 4
  %321 = load i32, ptr %3, align 4
  %322 = add nsw i32 %321, 1
  br label %.preheader, !llvm.loop !55

323:                                              ; preds = %.preheader
  %324 = load i32, ptr %2, align 4
  %325 = add nsw i32 %324, 1
  br label %.preheader1, !llvm.loop !56

326:                                              ; preds = %.preheader1
  %327 = load i32, ptr %1, align 4
  %328 = add nsw i32 %327, 1
  br label %308, !llvm.loop !57

329:                                              ; preds = %308
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %330 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %330, 0
  br i1 %.not, label %334, label %331

331:                                              ; preds = %329
  %332 = load i32, ptr %4, align 4
  %333 = call i32 @Place(i32 noundef 0, i32 noundef %332)
  store i32 %333, ptr @n, align 4
  br label %335

334:                                              ; preds = %329
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %335

335:                                              ; preds = %334, %331
  %336 = load i32, ptr @n, align 4
  %337 = call i32 @Trial(i32 noundef %336)
  %.not16 = icmp eq i32 %337, 0
  br i1 %.not16, label %338, label %339

338:                                              ; preds = %335
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %342

339:                                              ; preds = %335
  %340 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %340, 2005
  br i1 %.not18, label %342, label %341

341:                                              ; preds = %339
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %342

342:                                              ; preds = %341, %339, %338
  %343 = load i32, ptr @n, align 4
  %344 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %343) #4
  %345 = load i32, ptr @kount, align 4
  %346 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %345) #4
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
