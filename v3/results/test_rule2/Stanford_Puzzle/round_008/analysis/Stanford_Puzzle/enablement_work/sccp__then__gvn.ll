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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %storemerge = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %16, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %14, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %16

14:                                               ; preds = %9, %4
  %15 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

16:                                               ; preds = %9, %3
  %storemerge1 = phi i32 [ 0, %9 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %23

23:                                               ; preds = %29, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %29 ], [ %22, %15 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %26 = load i32, ptr %25, align 4
  %.not3 = icmp eq i32 %26, 0
  br i1 %.not3, label %27, label %29

27:                                               ; preds = %24
  %28 = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

29:                                               ; preds = %24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %23, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %27
  %storemerge2 = phi i32 [ %28, %27 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
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

.preheader31:                                     ; preds = %20, %.preheader31.preheader
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %.preheader31.preheader ]
  %7 = icmp slt i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %18, %.preheader30.preheader
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader30.preheader ]
  %8 = icmp slt i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %20

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %10, %.preheader29.preheader
  %storemerge48 = phi i32 [ %17, %10 ], [ 1, %.preheader29.preheader ]
  %9 = icmp slt i32 %storemerge48, 6
  br i1 %9, label %10, label %18

10:                                               ; preds = %.preheader29
  %11 = shl i32 %storemerge48, 6
  %12 = shl i32 %storemerge47, 3
  %13 = add i32 %11, %12
  %14 = add nsw i32 %storemerge1, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = add nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

18:                                               ; preds = %.preheader29
  %19 = add nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

20:                                               ; preds = %.preheader30
  %21 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %30, %.preheader28.preheader
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader28.preheader ]
  %22 = icmp slt i32 %storemerge2, 13
  br i1 %22, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %24, %.preheader27.preheader
  %storemerge46 = phi i32 [ %29, %24 ], [ 0, %.preheader27.preheader ]
  %23 = icmp slt i32 %storemerge46, 512
  br i1 %23, label %24, label %30

24:                                               ; preds = %.preheader27
  %25 = sext i32 %storemerge2 to i64
  %26 = getelementptr inbounds [2048 x i8], ptr @p, i64 %25
  %27 = sext i32 %storemerge46 to i64
  %28 = getelementptr inbounds [4 x i8], ptr %26, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

30:                                               ; preds = %.preheader27
  %31 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %42, %.preheader26.preheader
  %storemerge3 = phi i32 [ %43, %42 ], [ 0, %.preheader26.preheader ]
  %32 = icmp slt i32 %storemerge3, 4
  br i1 %32, label %.preheader25.preheader, label %44

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %40, %.preheader25.preheader
  %storemerge44 = phi i32 [ %41, %40 ], [ 0, %.preheader25.preheader ]
  %33 = icmp slt i32 %storemerge44, 2
  br i1 %33, label %.preheader24.preheader, label %42

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %35, %.preheader24.preheader
  %storemerge45 = phi i32 [ 1, %35 ], [ 0, %.preheader24.preheader ]
  %34 = icmp slt i32 %storemerge45, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %.preheader24
  %36 = shl nuw nsw i32 %storemerge44, 3
  %37 = add nsw i32 %storemerge3, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @p, i64 %38
  store i32 1, ptr %39, align 4
  br label %.preheader24, !llvm.loop !19

40:                                               ; preds = %.preheader24
  %41 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

42:                                               ; preds = %.preheader25
  %43 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

44:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %45

45:                                               ; preds = %56, %44
  %storemerge4 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %46 = icmp slt i32 %storemerge4, 2
  br i1 %46, label %.preheader23.preheader, label %58

.preheader23.preheader:                           ; preds = %45
  br label %.preheader23

.preheader23:                                     ; preds = %55, %.preheader23.preheader
  %storemerge42 = phi i32 [ 1, %55 ], [ 0, %.preheader23.preheader ]
  %47 = icmp slt i32 %storemerge42, 1
  br i1 %47, label %.preheader22.preheader, label %56

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %49, %.preheader22.preheader
  %storemerge43 = phi i32 [ %54, %49 ], [ 0, %.preheader22.preheader ]
  %48 = icmp slt i32 %storemerge43, 4
  br i1 %48, label %49, label %55

49:                                               ; preds = %.preheader22
  %50 = shl i32 %storemerge43, 6
  %51 = add nuw nsw i32 %storemerge4, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %52
  store i32 1, ptr %53, align 4
  %54 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

55:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

56:                                               ; preds = %.preheader23
  %57 = add nuw nsw i32 %storemerge4, 1
  br label %45, !llvm.loop !24

58:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %59

59:                                               ; preds = %72, %58
  %storemerge5 = phi i32 [ 0, %58 ], [ 1, %72 ]
  %60 = icmp slt i32 %storemerge5, 1
  br i1 %60, label %.preheader21.preheader, label %73

.preheader21.preheader:                           ; preds = %59
  br label %.preheader21

.preheader21:                                     ; preds = %70, %.preheader21.preheader
  %storemerge40 = phi i32 [ %71, %70 ], [ 0, %.preheader21.preheader ]
  %61 = icmp slt i32 %storemerge40, 4
  br i1 %61, label %.preheader20.preheader, label %72

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %63, %.preheader20.preheader
  %storemerge41 = phi i32 [ %69, %63 ], [ 0, %.preheader20.preheader ]
  %62 = icmp slt i32 %storemerge41, 2
  br i1 %62, label %63, label %70

63:                                               ; preds = %.preheader20
  %64 = shl nuw nsw i32 %storemerge41, 6
  %65 = shl i32 %storemerge40, 3
  %66 = add i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %67
  store i32 1, ptr %68, align 4
  %69 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

70:                                               ; preds = %.preheader20
  %71 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

72:                                               ; preds = %.preheader21
  br label %59, !llvm.loop !27

73:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %74

74:                                               ; preds = %85, %73
  %storemerge6 = phi i32 [ 0, %73 ], [ %86, %85 ]
  %75 = icmp slt i32 %storemerge6, 2
  br i1 %75, label %.preheader19.preheader, label %87

.preheader19.preheader:                           ; preds = %74
  br label %.preheader19

.preheader19:                                     ; preds = %83, %.preheader19.preheader
  %storemerge38 = phi i32 [ %84, %83 ], [ 0, %.preheader19.preheader ]
  %76 = icmp slt i32 %storemerge38, 4
  br i1 %76, label %.preheader18.preheader, label %85

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %78, %.preheader18.preheader
  %storemerge39 = phi i32 [ 1, %78 ], [ 0, %.preheader18.preheader ]
  %77 = icmp slt i32 %storemerge39, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %.preheader18
  %79 = shl i32 %storemerge38, 3
  %80 = add nuw nsw i32 %storemerge6, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %81
  store i32 1, ptr %82, align 4
  br label %.preheader18, !llvm.loop !28

83:                                               ; preds = %.preheader18
  %84 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

85:                                               ; preds = %.preheader19
  %86 = add nuw nsw i32 %storemerge6, 1
  br label %74, !llvm.loop !30

87:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %88

88:                                               ; preds = %99, %87
  %storemerge7 = phi i32 [ 0, %87 ], [ %100, %99 ]
  %89 = icmp slt i32 %storemerge7, 4
  br i1 %89, label %.preheader17.preheader, label %101

.preheader17.preheader:                           ; preds = %88
  br label %.preheader17

.preheader17:                                     ; preds = %98, %.preheader17.preheader
  %storemerge36 = phi i32 [ 1, %98 ], [ 0, %.preheader17.preheader ]
  %90 = icmp slt i32 %storemerge36, 1
  br i1 %90, label %.preheader16.preheader, label %99

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %92, %.preheader16.preheader
  %storemerge37 = phi i32 [ %97, %92 ], [ 0, %.preheader16.preheader ]
  %91 = icmp slt i32 %storemerge37, 2
  br i1 %91, label %92, label %98

92:                                               ; preds = %.preheader16
  %93 = shl nuw nsw i32 %storemerge37, 6
  %94 = add nsw i32 %storemerge7, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

98:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

99:                                               ; preds = %.preheader17
  %100 = add nsw i32 %storemerge7, 1
  br label %88, !llvm.loop !33

101:                                              ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %102

102:                                              ; preds = %115, %101
  %storemerge8 = phi i32 [ 0, %101 ], [ 1, %115 ]
  %103 = icmp slt i32 %storemerge8, 1
  br i1 %103, label %.preheader15.preheader, label %116

.preheader15.preheader:                           ; preds = %102
  br label %.preheader15

.preheader15:                                     ; preds = %113, %.preheader15.preheader
  %storemerge34 = phi i32 [ %114, %113 ], [ 0, %.preheader15.preheader ]
  %104 = icmp slt i32 %storemerge34, 2
  br i1 %104, label %.preheader14.preheader, label %115

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %106, %.preheader14.preheader
  %storemerge35 = phi i32 [ %112, %106 ], [ 0, %.preheader14.preheader ]
  %105 = icmp slt i32 %storemerge35, 4
  br i1 %105, label %106, label %113

106:                                              ; preds = %.preheader14
  %107 = shl i32 %storemerge35, 6
  %108 = shl nuw nsw i32 %storemerge34, 3
  %109 = add nuw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %110
  store i32 1, ptr %111, align 4
  %112 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

113:                                              ; preds = %.preheader14
  %114 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

115:                                              ; preds = %.preheader15
  br label %102, !llvm.loop !36

116:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %117

117:                                              ; preds = %125, %116
  %storemerge9 = phi i32 [ 0, %116 ], [ %126, %125 ]
  %118 = icmp slt i32 %storemerge9, 3
  br i1 %118, label %.preheader13.preheader, label %127

.preheader13.preheader:                           ; preds = %117
  br label %.preheader13

.preheader13:                                     ; preds = %124, %.preheader13.preheader
  %storemerge32 = phi i32 [ 1, %124 ], [ 0, %.preheader13.preheader ]
  %119 = icmp slt i32 %storemerge32, 1
  br i1 %119, label %.preheader12.preheader, label %125

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %121, %.preheader12.preheader
  %storemerge33 = phi i32 [ 1, %121 ], [ 0, %.preheader12.preheader ]
  %120 = icmp slt i32 %storemerge33, 1
  br i1 %120, label %121, label %124

121:                                              ; preds = %.preheader12
  %122 = sext i32 %storemerge9 to i64
  %123 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %122
  store i32 1, ptr %123, align 4
  br label %.preheader12, !llvm.loop !37

124:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

125:                                              ; preds = %.preheader13
  %126 = add nsw i32 %storemerge9, 1
  br label %117, !llvm.loop !39

127:                                              ; preds = %117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %128

128:                                              ; preds = %138, %127
  %storemerge10 = phi i32 [ 0, %127 ], [ 1, %138 ]
  %129 = icmp slt i32 %storemerge10, 1
  br i1 %129, label %.preheader11.preheader, label %139

.preheader11.preheader:                           ; preds = %128
  br label %.preheader11

.preheader11:                                     ; preds = %136, %.preheader11.preheader
  %storemerge30 = phi i32 [ %137, %136 ], [ 0, %.preheader11.preheader ]
  %130 = icmp slt i32 %storemerge30, 3
  br i1 %130, label %.preheader10.preheader, label %138

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %132, %.preheader10.preheader
  %storemerge31 = phi i32 [ 1, %132 ], [ 0, %.preheader10.preheader ]
  %131 = icmp slt i32 %storemerge31, 1
  br i1 %131, label %132, label %136

132:                                              ; preds = %.preheader10
  %133 = shl i32 %storemerge30, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %134
  store i32 1, ptr %135, align 4
  br label %.preheader10, !llvm.loop !40

136:                                              ; preds = %.preheader10
  %137 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

138:                                              ; preds = %.preheader11
  br label %128, !llvm.loop !42

139:                                              ; preds = %128
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %140

140:                                              ; preds = %150, %139
  %storemerge11 = phi i32 [ 0, %139 ], [ 1, %150 ]
  %141 = icmp slt i32 %storemerge11, 1
  br i1 %141, label %.preheader9.preheader, label %151

.preheader9.preheader:                            ; preds = %140
  br label %.preheader9

.preheader9:                                      ; preds = %149, %.preheader9.preheader
  %storemerge28 = phi i32 [ 1, %149 ], [ 0, %.preheader9.preheader ]
  %142 = icmp slt i32 %storemerge28, 1
  br i1 %142, label %.preheader8.preheader, label %150

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %144, %.preheader8.preheader
  %storemerge29 = phi i32 [ %148, %144 ], [ 0, %.preheader8.preheader ]
  %143 = icmp slt i32 %storemerge29, 3
  br i1 %143, label %144, label %149

144:                                              ; preds = %.preheader8
  %145 = shl i32 %storemerge29, 6
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %146
  store i32 1, ptr %147, align 4
  %148 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

149:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

150:                                              ; preds = %.preheader9
  br label %140, !llvm.loop !45

151:                                              ; preds = %140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %152

152:                                              ; preds = %163, %151
  %storemerge12 = phi i32 [ 0, %151 ], [ %164, %163 ]
  %153 = icmp slt i32 %storemerge12, 2
  br i1 %153, label %.preheader7.preheader, label %165

.preheader7.preheader:                            ; preds = %152
  br label %.preheader7

.preheader7:                                      ; preds = %161, %.preheader7.preheader
  %storemerge26 = phi i32 [ %162, %161 ], [ 0, %.preheader7.preheader ]
  %154 = icmp slt i32 %storemerge26, 2
  br i1 %154, label %.preheader6.preheader, label %163

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %156, %.preheader6.preheader
  %storemerge27 = phi i32 [ 1, %156 ], [ 0, %.preheader6.preheader ]
  %155 = icmp slt i32 %storemerge27, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %.preheader6
  %157 = shl nuw nsw i32 %storemerge26, 3
  %158 = add nuw nsw i32 %storemerge12, %157
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %159
  store i32 1, ptr %160, align 4
  br label %.preheader6, !llvm.loop !46

161:                                              ; preds = %.preheader6
  %162 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

163:                                              ; preds = %.preheader7
  %164 = add nuw nsw i32 %storemerge12, 1
  br label %152, !llvm.loop !48

165:                                              ; preds = %152
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %166

166:                                              ; preds = %177, %165
  %storemerge13 = phi i32 [ 0, %165 ], [ %178, %177 ]
  %167 = icmp slt i32 %storemerge13, 2
  br i1 %167, label %.preheader5.preheader, label %179

.preheader5.preheader:                            ; preds = %166
  br label %.preheader5

.preheader5:                                      ; preds = %176, %.preheader5.preheader
  %storemerge24 = phi i32 [ 1, %176 ], [ 0, %.preheader5.preheader ]
  %168 = icmp slt i32 %storemerge24, 1
  br i1 %168, label %.preheader4.preheader, label %177

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %170, %.preheader4.preheader
  %storemerge25 = phi i32 [ %175, %170 ], [ 0, %.preheader4.preheader ]
  %169 = icmp slt i32 %storemerge25, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %.preheader4
  %171 = shl nuw nsw i32 %storemerge25, 6
  %172 = add nuw nsw i32 %storemerge13, %171
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

176:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

177:                                              ; preds = %.preheader5
  %178 = add nuw nsw i32 %storemerge13, 1
  br label %166, !llvm.loop !51

179:                                              ; preds = %166
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %180

180:                                              ; preds = %193, %179
  %storemerge14 = phi i32 [ 0, %179 ], [ 1, %193 ]
  %181 = icmp slt i32 %storemerge14, 1
  br i1 %181, label %.preheader3.preheader, label %194

.preheader3.preheader:                            ; preds = %180
  br label %.preheader3

.preheader3:                                      ; preds = %191, %.preheader3.preheader
  %storemerge22 = phi i32 [ %192, %191 ], [ 0, %.preheader3.preheader ]
  %182 = icmp slt i32 %storemerge22, 2
  br i1 %182, label %.preheader2.preheader, label %193

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %184, %.preheader2.preheader
  %storemerge23 = phi i32 [ %190, %184 ], [ 0, %.preheader2.preheader ]
  %183 = icmp slt i32 %storemerge23, 2
  br i1 %183, label %184, label %191

184:                                              ; preds = %.preheader2
  %185 = shl nuw nsw i32 %storemerge23, 6
  %186 = shl nuw nsw i32 %storemerge22, 3
  %187 = add nuw nsw i32 %185, %186
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %188
  store i32 1, ptr %189, align 4
  %190 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

191:                                              ; preds = %.preheader2
  %192 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

193:                                              ; preds = %.preheader3
  br label %180, !llvm.loop !54

194:                                              ; preds = %180
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %195

195:                                              ; preds = %209, %194
  %storemerge15 = phi i32 [ 0, %194 ], [ %210, %209 ]
  %196 = icmp slt i32 %storemerge15, 2
  br i1 %196, label %.preheader1.preheader, label %211

.preheader1.preheader:                            ; preds = %195
  br label %.preheader1

.preheader1:                                      ; preds = %207, %.preheader1.preheader
  %storemerge20 = phi i32 [ %208, %207 ], [ 0, %.preheader1.preheader ]
  %197 = icmp slt i32 %storemerge20, 2
  br i1 %197, label %.preheader.preheader, label %209

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %199, %.preheader.preheader
  %storemerge21 = phi i32 [ %206, %199 ], [ 0, %.preheader.preheader ]
  %198 = icmp slt i32 %storemerge21, 2
  br i1 %198, label %199, label %207

199:                                              ; preds = %.preheader
  %200 = shl nuw nsw i32 %storemerge21, 6
  %201 = shl nuw nsw i32 %storemerge20, 3
  %202 = add nuw nsw i32 %200, %201
  %203 = add nuw nsw i32 %storemerge15, %202
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %204
  store i32 1, ptr %205, align 4
  %206 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

207:                                              ; preds = %.preheader
  %208 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

209:                                              ; preds = %.preheader1
  %210 = add nuw nsw i32 %storemerge15, 1
  br label %195, !llvm.loop !57

211:                                              ; preds = %195
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %212 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %212, 0
  br i1 %.not, label %215, label %213

213:                                              ; preds = %211
  %214 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %214, ptr @n, align 4
  br label %216

215:                                              ; preds = %211
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i32 [ %.pre, %215 ], [ %214, %213 ]
  %218 = call i32 @Trial(i32 noundef %217)
  %.not16 = icmp eq i32 %218, 0
  br i1 %.not16, label %219, label %220

219:                                              ; preds = %216
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %223

220:                                              ; preds = %216
  %221 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %221, 2005
  br i1 %.not18, label %223, label %222

222:                                              ; preds = %220
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %223

223:                                              ; preds = %222, %220, %219
  %224 = load i32, ptr @n, align 4
  %225 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %224) #4
  %226 = load i32, ptr @kount, align 4
  %227 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %226) #4
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
