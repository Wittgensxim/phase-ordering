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
  %13 = add nsw i32 %1, %storemerge
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  %or.cond = or i1 %.not3, %18
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
  %9 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %9, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %11, %.preheader29.preheader
  %storemerge48 = phi i32 [ %15, %11 ], [ 1, %.preheader29.preheader ]
  %10 = icmp slt i32 %storemerge48, 6
  br i1 %10, label %11, label %16

11:                                               ; preds = %.preheader29
  %12 = shl i32 %storemerge48, 6
  %.reass = add i32 %12, %invariant.op
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

.preheader26:                                     ; preds = %39, %.preheader26.preheader
  %storemerge3 = phi i32 [ %40, %39 ], [ 0, %.preheader26.preheader ]
  %30 = icmp slt i32 %storemerge3, 4
  br i1 %30, label %.preheader25.preheader, label %41

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %37, %.preheader25.preheader
  %storemerge44 = phi i32 [ %38, %37 ], [ 0, %.preheader25.preheader ]
  %31 = icmp slt i32 %storemerge44, 2
  br i1 %31, label %.preheader24.preheader, label %39

.preheader24.preheader:                           ; preds = %.preheader25
  %32 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op1 = add nsw i32 %32, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %34, %.preheader24.preheader
  %storemerge45 = phi i32 [ 1, %34 ], [ 0, %.preheader24.preheader ]
  %33 = icmp slt i32 %storemerge45, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %.preheader24
  %.reass2 = add nuw nsw i32 0, %invariant.op1
  %35 = sext i32 %.reass2 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @p, i64 %35
  store i32 1, ptr %36, align 4
  br label %.preheader24, !llvm.loop !19

37:                                               ; preds = %.preheader24
  %38 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

39:                                               ; preds = %.preheader25
  %40 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

41:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %42

42:                                               ; preds = %52, %41
  %storemerge4 = phi i32 [ 0, %41 ], [ %53, %52 ]
  %43 = icmp slt i32 %storemerge4, 2
  br i1 %43, label %.preheader23.preheader, label %54

.preheader23.preheader:                           ; preds = %42
  br label %.preheader23

.preheader23:                                     ; preds = %51, %.preheader23.preheader
  %storemerge42 = phi i32 [ 1, %51 ], [ 0, %.preheader23.preheader ]
  %44 = icmp slt i32 %storemerge42, 1
  br i1 %44, label %.preheader22.preheader, label %52

.preheader22.preheader:                           ; preds = %.preheader23
  %invariant.op3 = add nuw nsw i32 0, %storemerge4
  br label %.preheader22

.preheader22:                                     ; preds = %46, %.preheader22.preheader
  %storemerge43 = phi i32 [ %50, %46 ], [ 0, %.preheader22.preheader ]
  %45 = icmp slt i32 %storemerge43, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %.preheader22
  %47 = shl i32 %storemerge43, 6
  %.reass4 = add nuw i32 %47, %invariant.op3
  %48 = sext i32 %.reass4 to i64
  %49 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

51:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

52:                                               ; preds = %.preheader23
  %53 = add nuw nsw i32 %storemerge4, 1
  br label %42, !llvm.loop !24

54:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %55

55:                                               ; preds = %67, %54
  %storemerge5 = phi i32 [ 0, %54 ], [ 1, %67 ]
  %56 = icmp slt i32 %storemerge5, 1
  br i1 %56, label %.preheader21.preheader, label %68

.preheader21.preheader:                           ; preds = %55
  br label %.preheader21

.preheader21:                                     ; preds = %65, %.preheader21.preheader
  %storemerge40 = phi i32 [ %66, %65 ], [ 0, %.preheader21.preheader ]
  %57 = icmp slt i32 %storemerge40, 4
  br i1 %57, label %.preheader20.preheader, label %67

.preheader20.preheader:                           ; preds = %.preheader21
  %58 = shl i32 %storemerge40, 3
  %invariant.op5 = add nuw nsw i32 %58, 0
  br label %.preheader20

.preheader20:                                     ; preds = %60, %.preheader20.preheader
  %storemerge41 = phi i32 [ %64, %60 ], [ 0, %.preheader20.preheader ]
  %59 = icmp slt i32 %storemerge41, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %.preheader20
  %61 = shl nuw nsw i32 %storemerge41, 6
  %.reass6 = add i32 %61, %invariant.op5
  %62 = sext i32 %.reass6 to i64
  %63 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

65:                                               ; preds = %.preheader20
  %66 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

67:                                               ; preds = %.preheader21
  br label %55, !llvm.loop !27

68:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %69

69:                                               ; preds = %79, %68
  %storemerge6 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %70 = icmp slt i32 %storemerge6, 2
  br i1 %70, label %.preheader19.preheader, label %81

.preheader19.preheader:                           ; preds = %69
  br label %.preheader19

.preheader19:                                     ; preds = %77, %.preheader19.preheader
  %storemerge38 = phi i32 [ %78, %77 ], [ 0, %.preheader19.preheader ]
  %71 = icmp slt i32 %storemerge38, 4
  br i1 %71, label %.preheader18.preheader, label %79

.preheader18.preheader:                           ; preds = %.preheader19
  %72 = shl i32 %storemerge38, 3
  %invariant.op7 = add nuw i32 %72, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %74, %.preheader18.preheader
  %storemerge39 = phi i32 [ 1, %74 ], [ 0, %.preheader18.preheader ]
  %73 = icmp slt i32 %storemerge39, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %.preheader18
  %.reass8 = add nuw nsw i32 0, %invariant.op7
  %75 = sext i32 %.reass8 to i64
  %76 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %75
  store i32 1, ptr %76, align 4
  br label %.preheader18, !llvm.loop !28

77:                                               ; preds = %.preheader18
  %78 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

79:                                               ; preds = %.preheader19
  %80 = add nuw nsw i32 %storemerge6, 1
  br label %69, !llvm.loop !30

81:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %82

82:                                               ; preds = %92, %81
  %storemerge7 = phi i32 [ 0, %81 ], [ %93, %92 ]
  %83 = icmp slt i32 %storemerge7, 4
  br i1 %83, label %.preheader17.preheader, label %94

.preheader17.preheader:                           ; preds = %82
  br label %.preheader17

.preheader17:                                     ; preds = %91, %.preheader17.preheader
  %storemerge36 = phi i32 [ 1, %91 ], [ 0, %.preheader17.preheader ]
  %84 = icmp slt i32 %storemerge36, 1
  br i1 %84, label %.preheader16.preheader, label %92

.preheader16.preheader:                           ; preds = %.preheader17
  %invariant.op9 = add nuw nsw i32 0, %storemerge7
  br label %.preheader16

.preheader16:                                     ; preds = %86, %.preheader16.preheader
  %storemerge37 = phi i32 [ %90, %86 ], [ 0, %.preheader16.preheader ]
  %85 = icmp slt i32 %storemerge37, 2
  br i1 %85, label %86, label %91

86:                                               ; preds = %.preheader16
  %87 = shl nuw nsw i32 %storemerge37, 6
  %.reass10 = add nsw i32 %87, %invariant.op9
  %88 = sext i32 %.reass10 to i64
  %89 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

91:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

92:                                               ; preds = %.preheader17
  %93 = add nsw i32 %storemerge7, 1
  br label %82, !llvm.loop !33

94:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %95

95:                                               ; preds = %107, %94
  %storemerge8 = phi i32 [ 0, %94 ], [ 1, %107 ]
  %96 = icmp slt i32 %storemerge8, 1
  br i1 %96, label %.preheader15.preheader, label %108

.preheader15.preheader:                           ; preds = %95
  br label %.preheader15

.preheader15:                                     ; preds = %105, %.preheader15.preheader
  %storemerge34 = phi i32 [ %106, %105 ], [ 0, %.preheader15.preheader ]
  %97 = icmp slt i32 %storemerge34, 2
  br i1 %97, label %.preheader14.preheader, label %107

.preheader14.preheader:                           ; preds = %.preheader15
  %98 = shl nuw nsw i32 %storemerge34, 3
  %invariant.op11 = add nuw nsw i32 %98, 0
  br label %.preheader14

.preheader14:                                     ; preds = %100, %.preheader14.preheader
  %storemerge35 = phi i32 [ %104, %100 ], [ 0, %.preheader14.preheader ]
  %99 = icmp slt i32 %storemerge35, 4
  br i1 %99, label %100, label %105

100:                                              ; preds = %.preheader14
  %101 = shl i32 %storemerge35, 6
  %.reass12 = add nuw i32 %101, %invariant.op11
  %102 = sext i32 %.reass12 to i64
  %103 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %102
  store i32 1, ptr %103, align 4
  %104 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

105:                                              ; preds = %.preheader14
  %106 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

107:                                              ; preds = %.preheader15
  br label %95, !llvm.loop !36

108:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %109

109:                                              ; preds = %117, %108
  %storemerge9 = phi i32 [ 0, %108 ], [ %118, %117 ]
  %110 = icmp slt i32 %storemerge9, 3
  br i1 %110, label %.preheader13.preheader, label %119

.preheader13.preheader:                           ; preds = %109
  br label %.preheader13

.preheader13:                                     ; preds = %116, %.preheader13.preheader
  %storemerge32 = phi i32 [ 1, %116 ], [ 0, %.preheader13.preheader ]
  %111 = icmp slt i32 %storemerge32, 1
  br i1 %111, label %.preheader12.preheader, label %117

.preheader12.preheader:                           ; preds = %.preheader13
  %invariant.op13 = add nuw nsw i32 0, %storemerge9
  br label %.preheader12

.preheader12:                                     ; preds = %113, %.preheader12.preheader
  %storemerge33 = phi i32 [ 1, %113 ], [ 0, %.preheader12.preheader ]
  %112 = icmp slt i32 %storemerge33, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %.preheader12
  %.reass14 = add nuw nsw i32 0, %invariant.op13
  %114 = sext i32 %.reass14 to i64
  %115 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %114
  store i32 1, ptr %115, align 4
  br label %.preheader12, !llvm.loop !37

116:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

117:                                              ; preds = %.preheader13
  %118 = add nsw i32 %storemerge9, 1
  br label %109, !llvm.loop !39

119:                                              ; preds = %109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %120

120:                                              ; preds = %130, %119
  %storemerge10 = phi i32 [ 0, %119 ], [ 1, %130 ]
  %121 = icmp slt i32 %storemerge10, 1
  br i1 %121, label %.preheader11.preheader, label %131

.preheader11.preheader:                           ; preds = %120
  br label %.preheader11

.preheader11:                                     ; preds = %128, %.preheader11.preheader
  %storemerge30 = phi i32 [ %129, %128 ], [ 0, %.preheader11.preheader ]
  %122 = icmp slt i32 %storemerge30, 3
  br i1 %122, label %.preheader10.preheader, label %130

.preheader10.preheader:                           ; preds = %.preheader11
  %123 = shl i32 %storemerge30, 3
  %invariant.op15 = add nuw nsw i32 %123, 0
  br label %.preheader10

.preheader10:                                     ; preds = %125, %.preheader10.preheader
  %storemerge31 = phi i32 [ 1, %125 ], [ 0, %.preheader10.preheader ]
  %124 = icmp slt i32 %storemerge31, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %.preheader10
  %.reass16 = add nuw nsw i32 0, %invariant.op15
  %126 = sext i32 %.reass16 to i64
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %126
  store i32 1, ptr %127, align 4
  br label %.preheader10, !llvm.loop !40

128:                                              ; preds = %.preheader10
  %129 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

130:                                              ; preds = %.preheader11
  br label %120, !llvm.loop !42

131:                                              ; preds = %120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %132

132:                                              ; preds = %142, %131
  %storemerge11 = phi i32 [ 0, %131 ], [ 1, %142 ]
  %133 = icmp slt i32 %storemerge11, 1
  br i1 %133, label %.preheader9.preheader, label %143

.preheader9.preheader:                            ; preds = %132
  br label %.preheader9

.preheader9:                                      ; preds = %141, %.preheader9.preheader
  %storemerge28 = phi i32 [ 1, %141 ], [ 0, %.preheader9.preheader ]
  %134 = icmp slt i32 %storemerge28, 1
  br i1 %134, label %.preheader8.preheader, label %142

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %136, %.preheader8.preheader
  %storemerge29 = phi i32 [ %140, %136 ], [ 0, %.preheader8.preheader ]
  %135 = icmp slt i32 %storemerge29, 3
  br i1 %135, label %136, label %141

136:                                              ; preds = %.preheader8
  %137 = shl i32 %storemerge29, 6
  %.reass18 = add nuw nsw i32 %137, 0
  %138 = sext i32 %.reass18 to i64
  %139 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %138
  store i32 1, ptr %139, align 4
  %140 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

141:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

142:                                              ; preds = %.preheader9
  br label %132, !llvm.loop !45

143:                                              ; preds = %132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %144

144:                                              ; preds = %154, %143
  %storemerge12 = phi i32 [ 0, %143 ], [ %155, %154 ]
  %145 = icmp slt i32 %storemerge12, 2
  br i1 %145, label %.preheader7.preheader, label %156

.preheader7.preheader:                            ; preds = %144
  br label %.preheader7

.preheader7:                                      ; preds = %152, %.preheader7.preheader
  %storemerge26 = phi i32 [ %153, %152 ], [ 0, %.preheader7.preheader ]
  %146 = icmp slt i32 %storemerge26, 2
  br i1 %146, label %.preheader6.preheader, label %154

.preheader6.preheader:                            ; preds = %.preheader7
  %147 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op19 = add nuw nsw i32 %147, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %149, %.preheader6.preheader
  %storemerge27 = phi i32 [ 1, %149 ], [ 0, %.preheader6.preheader ]
  %148 = icmp slt i32 %storemerge27, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %.preheader6
  %.reass20 = add nuw nsw i32 0, %invariant.op19
  %150 = zext nneg i32 %.reass20 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %150
  store i32 1, ptr %151, align 4
  br label %.preheader6, !llvm.loop !46

152:                                              ; preds = %.preheader6
  %153 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

154:                                              ; preds = %.preheader7
  %155 = add nuw nsw i32 %storemerge12, 1
  br label %144, !llvm.loop !48

156:                                              ; preds = %144
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %157

157:                                              ; preds = %167, %156
  %storemerge13 = phi i32 [ 0, %156 ], [ %168, %167 ]
  %158 = icmp slt i32 %storemerge13, 2
  br i1 %158, label %.preheader5.preheader, label %169

.preheader5.preheader:                            ; preds = %157
  br label %.preheader5

.preheader5:                                      ; preds = %166, %.preheader5.preheader
  %storemerge24 = phi i32 [ 1, %166 ], [ 0, %.preheader5.preheader ]
  %159 = icmp slt i32 %storemerge24, 1
  br i1 %159, label %.preheader4.preheader, label %167

.preheader4.preheader:                            ; preds = %.preheader5
  %invariant.op21 = add nuw nsw i32 0, %storemerge13
  br label %.preheader4

.preheader4:                                      ; preds = %161, %.preheader4.preheader
  %storemerge25 = phi i32 [ %165, %161 ], [ 0, %.preheader4.preheader ]
  %160 = icmp slt i32 %storemerge25, 2
  br i1 %160, label %161, label %166

161:                                              ; preds = %.preheader4
  %162 = shl nuw nsw i32 %storemerge25, 6
  %.reass22 = add nuw nsw i32 %162, %invariant.op21
  %163 = zext nneg i32 %.reass22 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

166:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

167:                                              ; preds = %.preheader5
  %168 = add nuw nsw i32 %storemerge13, 1
  br label %157, !llvm.loop !51

169:                                              ; preds = %157
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %170

170:                                              ; preds = %182, %169
  %storemerge14 = phi i32 [ 0, %169 ], [ 1, %182 ]
  %171 = icmp slt i32 %storemerge14, 1
  br i1 %171, label %.preheader3.preheader, label %183

.preheader3.preheader:                            ; preds = %170
  br label %.preheader3

.preheader3:                                      ; preds = %180, %.preheader3.preheader
  %storemerge22 = phi i32 [ %181, %180 ], [ 0, %.preheader3.preheader ]
  %172 = icmp slt i32 %storemerge22, 2
  br i1 %172, label %.preheader2.preheader, label %182

.preheader2.preheader:                            ; preds = %.preheader3
  %173 = shl nuw nsw i32 %storemerge22, 3
  %invariant.op23 = add nuw nsw i32 %173, 0
  br label %.preheader2

.preheader2:                                      ; preds = %175, %.preheader2.preheader
  %storemerge23 = phi i32 [ %179, %175 ], [ 0, %.preheader2.preheader ]
  %174 = icmp slt i32 %storemerge23, 2
  br i1 %174, label %175, label %180

175:                                              ; preds = %.preheader2
  %176 = shl nuw nsw i32 %storemerge23, 6
  %.reass24 = add nuw nsw i32 %176, %invariant.op23
  %177 = zext nneg i32 %.reass24 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %177
  store i32 1, ptr %178, align 4
  %179 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

180:                                              ; preds = %.preheader2
  %181 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

182:                                              ; preds = %.preheader3
  br label %170, !llvm.loop !54

183:                                              ; preds = %170
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %184

184:                                              ; preds = %196, %183
  %storemerge15 = phi i32 [ 0, %183 ], [ %197, %196 ]
  %185 = icmp slt i32 %storemerge15, 2
  br i1 %185, label %.preheader1.preheader, label %198

.preheader1.preheader:                            ; preds = %184
  br label %.preheader1

.preheader1:                                      ; preds = %194, %.preheader1.preheader
  %storemerge20 = phi i32 [ %195, %194 ], [ 0, %.preheader1.preheader ]
  %186 = icmp slt i32 %storemerge20, 2
  br i1 %186, label %.preheader.preheader, label %196

.preheader.preheader:                             ; preds = %.preheader1
  %187 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op25 = add nuw nsw i32 %187, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %189, %.preheader.preheader
  %storemerge21 = phi i32 [ %193, %189 ], [ 0, %.preheader.preheader ]
  %188 = icmp slt i32 %storemerge21, 2
  br i1 %188, label %189, label %194

189:                                              ; preds = %.preheader
  %190 = shl nuw nsw i32 %storemerge21, 6
  %.reass26 = add nuw nsw i32 %190, %invariant.op25
  %191 = zext nneg i32 %.reass26 to i64
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

194:                                              ; preds = %.preheader
  %195 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

196:                                              ; preds = %.preheader1
  %197 = add nuw nsw i32 %storemerge15, 1
  br label %184, !llvm.loop !57

198:                                              ; preds = %184
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %199 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %199, 0
  br i1 %.not, label %202, label %200

200:                                              ; preds = %198
  %201 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %201, ptr @n, align 4
  br label %203

202:                                              ; preds = %198
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %203

203:                                              ; preds = %202, %200
  %204 = load i32, ptr @n, align 4
  %205 = call i32 @Trial(i32 noundef %204)
  %.not16 = icmp eq i32 %205, 0
  br i1 %.not16, label %206, label %207

206:                                              ; preds = %203
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %210

207:                                              ; preds = %203
  %208 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %208, 2005
  br i1 %.not18, label %210, label %209

209:                                              ; preds = %207
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %210

210:                                              ; preds = %209, %207, %206
  %211 = load i32, ptr @n, align 4
  %212 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %211) #4
  %213 = load i32, ptr @kount, align 4
  %214 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %213) #4
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
