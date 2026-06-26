; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_007\output.ll'
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
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %8
  %18 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %12, %7
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
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit.loopexit ]
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
  %13 = add nsw i32 %storemerge, %1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

18:                                               ; preds = %7
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

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %18, %.not3
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp slt i32 %storemerge, 512
  br i1 %2, label %3, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %18, %.preheader31.preheader
  %storemerge1 = phi i32 [ %19, %18 ], [ 1, %.preheader31.preheader ]
  %7 = icmp slt i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %16, %.preheader30.preheader
  %storemerge47 = phi i32 [ %17, %16 ], [ 1, %.preheader30.preheader ]
  %8 = icmp slt i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %18

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = mul i32 %storemerge47, 8
  %invariant.op = add i32 %9, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %11, %.preheader29.preheader
  %storemerge48 = phi i32 [ %15, %11 ], [ 1, %.preheader29.preheader ]
  %10 = icmp slt i32 %storemerge48, 6
  br i1 %10, label %11, label %16

11:                                               ; preds = %.preheader29
  %12 = mul i32 %storemerge48, 64
  %.reass = add i32 %invariant.op, %12
  %13 = sext i32 %.reass to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  %15 = add nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

16:                                               ; preds = %.preheader29
  %17 = add nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

18:                                               ; preds = %.preheader30
  %19 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %28, %.preheader28.preheader
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.preheader28.preheader ]
  %20 = icmp slt i32 %storemerge2, 13
  br i1 %20, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %21 = sext i32 %storemerge2 to i64
  %22 = getelementptr inbounds [2048 x i8], ptr @p, i64 %21
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %24, %.preheader27.preheader
  %storemerge46 = phi i32 [ %27, %24 ], [ 0, %.preheader27.preheader ]
  %23 = icmp slt i32 %storemerge46, 512
  br i1 %23, label %24, label %28

24:                                               ; preds = %.preheader27
  %25 = sext i32 %storemerge46 to i64
  %26 = getelementptr inbounds [4 x i8], ptr %22, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

28:                                               ; preds = %.preheader27
  %29 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %41, %.preheader26.preheader
  %storemerge3 = phi i32 [ %42, %41 ], [ 0, %.preheader26.preheader ]
  %30 = icmp slt i32 %storemerge3, 4
  br i1 %30, label %.preheader25.preheader, label %43

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %39, %.preheader25.preheader
  %storemerge44 = phi i32 [ %40, %39 ], [ 0, %.preheader25.preheader ]
  %31 = icmp slt i32 %storemerge44, 2
  br i1 %31, label %.preheader24.preheader, label %41

.preheader24.preheader:                           ; preds = %.preheader25
  %32 = mul i32 %storemerge44, 8
  %invariant.op1 = add i32 %32, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %34, %.preheader24.preheader
  %storemerge45 = phi i32 [ %38, %34 ], [ 0, %.preheader24.preheader ]
  %33 = icmp slt i32 %storemerge45, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %.preheader24
  %35 = mul i32 %storemerge45, 64
  %.reass2 = add i32 %invariant.op1, %35
  %36 = sext i32 %.reass2 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @p, i64 %36
  store i32 1, ptr %37, align 4
  %38 = add nsw i32 %storemerge45, 1
  br label %.preheader24, !llvm.loop !19

39:                                               ; preds = %.preheader24
  %40 = add nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

41:                                               ; preds = %.preheader25
  %42 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

43:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %44

44:                                               ; preds = %56, %43
  %storemerge4 = phi i32 [ 0, %43 ], [ %57, %56 ]
  %45 = icmp slt i32 %storemerge4, 2
  br i1 %45, label %.preheader23.preheader, label %58

.preheader23.preheader:                           ; preds = %44
  br label %.preheader23

.preheader23:                                     ; preds = %54, %.preheader23.preheader
  %storemerge42 = phi i32 [ %55, %54 ], [ 0, %.preheader23.preheader ]
  %46 = icmp slt i32 %storemerge42, 1
  br i1 %46, label %.preheader22.preheader, label %56

.preheader22.preheader:                           ; preds = %.preheader23
  %47 = mul i32 %storemerge42, 8
  %invariant.op3 = add i32 %47, %storemerge4
  br label %.preheader22

.preheader22:                                     ; preds = %49, %.preheader22.preheader
  %storemerge43 = phi i32 [ %53, %49 ], [ 0, %.preheader22.preheader ]
  %48 = icmp slt i32 %storemerge43, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %.preheader22
  %50 = mul i32 %storemerge43, 64
  %.reass4 = add i32 %invariant.op3, %50
  %51 = sext i32 %.reass4 to i64
  %52 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %51
  store i32 1, ptr %52, align 4
  %53 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

54:                                               ; preds = %.preheader22
  %55 = add nsw i32 %storemerge42, 1
  br label %.preheader23, !llvm.loop !23

56:                                               ; preds = %.preheader23
  %57 = add nsw i32 %storemerge4, 1
  br label %44, !llvm.loop !24

58:                                               ; preds = %44
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %59

59:                                               ; preds = %71, %58
  %storemerge5 = phi i32 [ 0, %58 ], [ %72, %71 ]
  %60 = icmp slt i32 %storemerge5, 1
  br i1 %60, label %.preheader21.preheader, label %73

.preheader21.preheader:                           ; preds = %59
  br label %.preheader21

.preheader21:                                     ; preds = %69, %.preheader21.preheader
  %storemerge40 = phi i32 [ %70, %69 ], [ 0, %.preheader21.preheader ]
  %61 = icmp slt i32 %storemerge40, 4
  br i1 %61, label %.preheader20.preheader, label %71

.preheader20.preheader:                           ; preds = %.preheader21
  %62 = mul i32 %storemerge40, 8
  %invariant.op5 = add i32 %62, %storemerge5
  br label %.preheader20

.preheader20:                                     ; preds = %64, %.preheader20.preheader
  %storemerge41 = phi i32 [ %68, %64 ], [ 0, %.preheader20.preheader ]
  %63 = icmp slt i32 %storemerge41, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %.preheader20
  %65 = mul i32 %storemerge41, 64
  %.reass6 = add i32 %invariant.op5, %65
  %66 = sext i32 %.reass6 to i64
  %67 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %66
  store i32 1, ptr %67, align 4
  %68 = add nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

69:                                               ; preds = %.preheader20
  %70 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

71:                                               ; preds = %.preheader21
  %72 = add nsw i32 %storemerge5, 1
  br label %59, !llvm.loop !27

73:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %74

74:                                               ; preds = %86, %73
  %storemerge6 = phi i32 [ 0, %73 ], [ %87, %86 ]
  %75 = icmp slt i32 %storemerge6, 2
  br i1 %75, label %.preheader19.preheader, label %88

.preheader19.preheader:                           ; preds = %74
  br label %.preheader19

.preheader19:                                     ; preds = %84, %.preheader19.preheader
  %storemerge38 = phi i32 [ %85, %84 ], [ 0, %.preheader19.preheader ]
  %76 = icmp slt i32 %storemerge38, 4
  br i1 %76, label %.preheader18.preheader, label %86

.preheader18.preheader:                           ; preds = %.preheader19
  %77 = mul i32 %storemerge38, 8
  %invariant.op7 = add i32 %77, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %79, %.preheader18.preheader
  %storemerge39 = phi i32 [ %83, %79 ], [ 0, %.preheader18.preheader ]
  %78 = icmp slt i32 %storemerge39, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %.preheader18
  %80 = mul i32 %storemerge39, 64
  %.reass8 = add i32 %invariant.op7, %80
  %81 = sext i32 %.reass8 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nsw i32 %storemerge39, 1
  br label %.preheader18, !llvm.loop !28

84:                                               ; preds = %.preheader18
  %85 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

86:                                               ; preds = %.preheader19
  %87 = add nsw i32 %storemerge6, 1
  br label %74, !llvm.loop !30

88:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %89

89:                                               ; preds = %101, %88
  %storemerge7 = phi i32 [ 0, %88 ], [ %102, %101 ]
  %90 = icmp slt i32 %storemerge7, 4
  br i1 %90, label %.preheader17.preheader, label %103

.preheader17.preheader:                           ; preds = %89
  br label %.preheader17

.preheader17:                                     ; preds = %99, %.preheader17.preheader
  %storemerge36 = phi i32 [ %100, %99 ], [ 0, %.preheader17.preheader ]
  %91 = icmp slt i32 %storemerge36, 1
  br i1 %91, label %.preheader16.preheader, label %101

.preheader16.preheader:                           ; preds = %.preheader17
  %92 = mul i32 %storemerge36, 8
  %invariant.op9 = add i32 %92, %storemerge7
  br label %.preheader16

.preheader16:                                     ; preds = %94, %.preheader16.preheader
  %storemerge37 = phi i32 [ %98, %94 ], [ 0, %.preheader16.preheader ]
  %93 = icmp slt i32 %storemerge37, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %.preheader16
  %95 = mul i32 %storemerge37, 64
  %.reass10 = add i32 %invariant.op9, %95
  %96 = sext i32 %.reass10 to i64
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %96
  store i32 1, ptr %97, align 4
  %98 = add nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

99:                                               ; preds = %.preheader16
  %100 = add nsw i32 %storemerge36, 1
  br label %.preheader17, !llvm.loop !32

101:                                              ; preds = %.preheader17
  %102 = add nsw i32 %storemerge7, 1
  br label %89, !llvm.loop !33

103:                                              ; preds = %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %104

104:                                              ; preds = %116, %103
  %storemerge8 = phi i32 [ 0, %103 ], [ %117, %116 ]
  %105 = icmp slt i32 %storemerge8, 1
  br i1 %105, label %.preheader15.preheader, label %118

.preheader15.preheader:                           ; preds = %104
  br label %.preheader15

.preheader15:                                     ; preds = %114, %.preheader15.preheader
  %storemerge34 = phi i32 [ %115, %114 ], [ 0, %.preheader15.preheader ]
  %106 = icmp slt i32 %storemerge34, 2
  br i1 %106, label %.preheader14.preheader, label %116

.preheader14.preheader:                           ; preds = %.preheader15
  %107 = mul i32 %storemerge34, 8
  %invariant.op11 = add i32 %107, %storemerge8
  br label %.preheader14

.preheader14:                                     ; preds = %109, %.preheader14.preheader
  %storemerge35 = phi i32 [ %113, %109 ], [ 0, %.preheader14.preheader ]
  %108 = icmp slt i32 %storemerge35, 4
  br i1 %108, label %109, label %114

109:                                              ; preds = %.preheader14
  %110 = mul i32 %storemerge35, 64
  %.reass12 = add i32 %invariant.op11, %110
  %111 = sext i32 %.reass12 to i64
  %112 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

114:                                              ; preds = %.preheader14
  %115 = add nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

116:                                              ; preds = %.preheader15
  %117 = add nsw i32 %storemerge8, 1
  br label %104, !llvm.loop !36

118:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %119

119:                                              ; preds = %131, %118
  %storemerge9 = phi i32 [ 0, %118 ], [ %132, %131 ]
  %120 = icmp slt i32 %storemerge9, 3
  br i1 %120, label %.preheader13.preheader, label %133

.preheader13.preheader:                           ; preds = %119
  br label %.preheader13

.preheader13:                                     ; preds = %129, %.preheader13.preheader
  %storemerge32 = phi i32 [ %130, %129 ], [ 0, %.preheader13.preheader ]
  %121 = icmp slt i32 %storemerge32, 1
  br i1 %121, label %.preheader12.preheader, label %131

.preheader12.preheader:                           ; preds = %.preheader13
  %122 = mul i32 %storemerge32, 8
  %invariant.op13 = add i32 %122, %storemerge9
  br label %.preheader12

.preheader12:                                     ; preds = %124, %.preheader12.preheader
  %storemerge33 = phi i32 [ %128, %124 ], [ 0, %.preheader12.preheader ]
  %123 = icmp slt i32 %storemerge33, 1
  br i1 %123, label %124, label %129

124:                                              ; preds = %.preheader12
  %125 = mul i32 %storemerge33, 64
  %.reass14 = add i32 %invariant.op13, %125
  %126 = sext i32 %.reass14 to i64
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nsw i32 %storemerge33, 1
  br label %.preheader12, !llvm.loop !37

129:                                              ; preds = %.preheader12
  %130 = add nsw i32 %storemerge32, 1
  br label %.preheader13, !llvm.loop !38

131:                                              ; preds = %.preheader13
  %132 = add nsw i32 %storemerge9, 1
  br label %119, !llvm.loop !39

133:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %134

134:                                              ; preds = %146, %133
  %storemerge10 = phi i32 [ 0, %133 ], [ %147, %146 ]
  %135 = icmp slt i32 %storemerge10, 1
  br i1 %135, label %.preheader11.preheader, label %148

.preheader11.preheader:                           ; preds = %134
  br label %.preheader11

.preheader11:                                     ; preds = %144, %.preheader11.preheader
  %storemerge30 = phi i32 [ %145, %144 ], [ 0, %.preheader11.preheader ]
  %136 = icmp slt i32 %storemerge30, 3
  br i1 %136, label %.preheader10.preheader, label %146

.preheader10.preheader:                           ; preds = %.preheader11
  %137 = mul i32 %storemerge30, 8
  %invariant.op15 = add i32 %137, %storemerge10
  br label %.preheader10

.preheader10:                                     ; preds = %139, %.preheader10.preheader
  %storemerge31 = phi i32 [ %143, %139 ], [ 0, %.preheader10.preheader ]
  %138 = icmp slt i32 %storemerge31, 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %.preheader10
  %140 = mul i32 %storemerge31, 64
  %.reass16 = add i32 %invariant.op15, %140
  %141 = sext i32 %.reass16 to i64
  %142 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nsw i32 %storemerge31, 1
  br label %.preheader10, !llvm.loop !40

144:                                              ; preds = %.preheader10
  %145 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

146:                                              ; preds = %.preheader11
  %147 = add nsw i32 %storemerge10, 1
  br label %134, !llvm.loop !42

148:                                              ; preds = %134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %149

149:                                              ; preds = %161, %148
  %storemerge11 = phi i32 [ 0, %148 ], [ %162, %161 ]
  %150 = icmp slt i32 %storemerge11, 1
  br i1 %150, label %.preheader9.preheader, label %163

.preheader9.preheader:                            ; preds = %149
  br label %.preheader9

.preheader9:                                      ; preds = %159, %.preheader9.preheader
  %storemerge28 = phi i32 [ %160, %159 ], [ 0, %.preheader9.preheader ]
  %151 = icmp slt i32 %storemerge28, 1
  br i1 %151, label %.preheader8.preheader, label %161

.preheader8.preheader:                            ; preds = %.preheader9
  %152 = mul i32 %storemerge28, 8
  %invariant.op17 = add i32 %152, %storemerge11
  br label %.preheader8

.preheader8:                                      ; preds = %154, %.preheader8.preheader
  %storemerge29 = phi i32 [ %158, %154 ], [ 0, %.preheader8.preheader ]
  %153 = icmp slt i32 %storemerge29, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %.preheader8
  %155 = mul i32 %storemerge29, 64
  %.reass18 = add i32 %invariant.op17, %155
  %156 = sext i32 %.reass18 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %156
  store i32 1, ptr %157, align 4
  %158 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

159:                                              ; preds = %.preheader8
  %160 = add nsw i32 %storemerge28, 1
  br label %.preheader9, !llvm.loop !44

161:                                              ; preds = %.preheader9
  %162 = add nsw i32 %storemerge11, 1
  br label %149, !llvm.loop !45

163:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %164

164:                                              ; preds = %176, %163
  %storemerge12 = phi i32 [ 0, %163 ], [ %177, %176 ]
  %165 = icmp slt i32 %storemerge12, 2
  br i1 %165, label %.preheader7.preheader, label %178

.preheader7.preheader:                            ; preds = %164
  br label %.preheader7

.preheader7:                                      ; preds = %174, %.preheader7.preheader
  %storemerge26 = phi i32 [ %175, %174 ], [ 0, %.preheader7.preheader ]
  %166 = icmp slt i32 %storemerge26, 2
  br i1 %166, label %.preheader6.preheader, label %176

.preheader6.preheader:                            ; preds = %.preheader7
  %167 = mul i32 %storemerge26, 8
  %invariant.op19 = add i32 %167, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %169, %.preheader6.preheader
  %storemerge27 = phi i32 [ %173, %169 ], [ 0, %.preheader6.preheader ]
  %168 = icmp slt i32 %storemerge27, 1
  br i1 %168, label %169, label %174

169:                                              ; preds = %.preheader6
  %170 = mul i32 %storemerge27, 64
  %.reass20 = add i32 %invariant.op19, %170
  %171 = sext i32 %.reass20 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %171
  store i32 1, ptr %172, align 4
  %173 = add nsw i32 %storemerge27, 1
  br label %.preheader6, !llvm.loop !46

174:                                              ; preds = %.preheader6
  %175 = add nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

176:                                              ; preds = %.preheader7
  %177 = add nsw i32 %storemerge12, 1
  br label %164, !llvm.loop !48

178:                                              ; preds = %164
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %179

179:                                              ; preds = %191, %178
  %storemerge13 = phi i32 [ 0, %178 ], [ %192, %191 ]
  %180 = icmp slt i32 %storemerge13, 2
  br i1 %180, label %.preheader5.preheader, label %193

.preheader5.preheader:                            ; preds = %179
  br label %.preheader5

.preheader5:                                      ; preds = %189, %.preheader5.preheader
  %storemerge24 = phi i32 [ %190, %189 ], [ 0, %.preheader5.preheader ]
  %181 = icmp slt i32 %storemerge24, 1
  br i1 %181, label %.preheader4.preheader, label %191

.preheader4.preheader:                            ; preds = %.preheader5
  %182 = mul i32 %storemerge24, 8
  %invariant.op21 = add i32 %182, %storemerge13
  br label %.preheader4

.preheader4:                                      ; preds = %184, %.preheader4.preheader
  %storemerge25 = phi i32 [ %188, %184 ], [ 0, %.preheader4.preheader ]
  %183 = icmp slt i32 %storemerge25, 2
  br i1 %183, label %184, label %189

184:                                              ; preds = %.preheader4
  %185 = mul i32 %storemerge25, 64
  %.reass22 = add i32 %invariant.op21, %185
  %186 = sext i32 %.reass22 to i64
  %187 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %186
  store i32 1, ptr %187, align 4
  %188 = add nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

189:                                              ; preds = %.preheader4
  %190 = add nsw i32 %storemerge24, 1
  br label %.preheader5, !llvm.loop !50

191:                                              ; preds = %.preheader5
  %192 = add nsw i32 %storemerge13, 1
  br label %179, !llvm.loop !51

193:                                              ; preds = %179
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %194

194:                                              ; preds = %206, %193
  %storemerge14 = phi i32 [ 0, %193 ], [ %207, %206 ]
  %195 = icmp slt i32 %storemerge14, 1
  br i1 %195, label %.preheader3.preheader, label %208

.preheader3.preheader:                            ; preds = %194
  br label %.preheader3

.preheader3:                                      ; preds = %204, %.preheader3.preheader
  %storemerge22 = phi i32 [ %205, %204 ], [ 0, %.preheader3.preheader ]
  %196 = icmp slt i32 %storemerge22, 2
  br i1 %196, label %.preheader2.preheader, label %206

.preheader2.preheader:                            ; preds = %.preheader3
  %197 = mul i32 %storemerge22, 8
  %invariant.op23 = add i32 %197, %storemerge14
  br label %.preheader2

.preheader2:                                      ; preds = %199, %.preheader2.preheader
  %storemerge23 = phi i32 [ %203, %199 ], [ 0, %.preheader2.preheader ]
  %198 = icmp slt i32 %storemerge23, 2
  br i1 %198, label %199, label %204

199:                                              ; preds = %.preheader2
  %200 = mul i32 %storemerge23, 64
  %.reass24 = add i32 %invariant.op23, %200
  %201 = sext i32 %.reass24 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %201
  store i32 1, ptr %202, align 4
  %203 = add nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

204:                                              ; preds = %.preheader2
  %205 = add nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

206:                                              ; preds = %.preheader3
  %207 = add nsw i32 %storemerge14, 1
  br label %194, !llvm.loop !54

208:                                              ; preds = %194
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %209

209:                                              ; preds = %221, %208
  %storemerge15 = phi i32 [ 0, %208 ], [ %222, %221 ]
  %210 = icmp slt i32 %storemerge15, 2
  br i1 %210, label %.preheader1.preheader, label %223

.preheader1.preheader:                            ; preds = %209
  br label %.preheader1

.preheader1:                                      ; preds = %219, %.preheader1.preheader
  %storemerge20 = phi i32 [ %220, %219 ], [ 0, %.preheader1.preheader ]
  %211 = icmp slt i32 %storemerge20, 2
  br i1 %211, label %.preheader.preheader, label %221

.preheader.preheader:                             ; preds = %.preheader1
  %212 = mul i32 %storemerge20, 8
  %invariant.op25 = add i32 %212, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %214, %.preheader.preheader
  %storemerge21 = phi i32 [ %218, %214 ], [ 0, %.preheader.preheader ]
  %213 = icmp slt i32 %storemerge21, 2
  br i1 %213, label %214, label %219

214:                                              ; preds = %.preheader
  %215 = mul i32 %storemerge21, 64
  %.reass26 = add i32 %invariant.op25, %215
  %216 = sext i32 %.reass26 to i64
  %217 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

219:                                              ; preds = %.preheader
  %220 = add nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

221:                                              ; preds = %.preheader1
  %222 = add nsw i32 %storemerge15, 1
  br label %209, !llvm.loop !57

223:                                              ; preds = %209
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %224 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %224, 0
  br i1 %.not, label %227, label %225

225:                                              ; preds = %223
  %226 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %226, ptr @n, align 4
  br label %228

227:                                              ; preds = %223
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %228

228:                                              ; preds = %227, %225
  %229 = load i32, ptr @n, align 4
  %230 = call i32 @Trial(i32 noundef %229)
  %.not16 = icmp eq i32 %230, 0
  br i1 %.not16, label %231, label %232

231:                                              ; preds = %228
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %235

232:                                              ; preds = %228
  %233 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %233, 2005
  br i1 %.not18, label %235, label %234

234:                                              ; preds = %232
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %235

235:                                              ; preds = %234, %232, %231
  %236 = load i32, ptr @n, align 4
  %237 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %236) #4
  %238 = load i32, ptr @kount, align 4
  %239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %238) #4
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
