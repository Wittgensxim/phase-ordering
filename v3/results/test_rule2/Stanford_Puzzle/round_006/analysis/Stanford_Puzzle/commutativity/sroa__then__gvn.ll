; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_005\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert3 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert3, align 4
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
  %.phi.trans.insert4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert4, align 4
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
  %24 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %29

28:                                               ; preds = %25
  br label %.loopexit

29:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %23, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %28
  %storemerge2 = phi i32 [ %24, %28 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert3 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert3, align 4
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

.preheader26:                                     ; preds = %45, %.preheader26.preheader
  %storemerge3 = phi i32 [ %46, %45 ], [ 0, %.preheader26.preheader ]
  %32 = icmp slt i32 %storemerge3, 4
  br i1 %32, label %.preheader25.preheader, label %47

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %43, %.preheader25.preheader
  %storemerge44 = phi i32 [ %44, %43 ], [ 0, %.preheader25.preheader ]
  %33 = icmp slt i32 %storemerge44, 2
  br i1 %33, label %.preheader24.preheader, label %45

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %35, %.preheader24.preheader
  %storemerge45 = phi i32 [ %42, %35 ], [ 0, %.preheader24.preheader ]
  %34 = icmp slt i32 %storemerge45, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %.preheader24
  %36 = shl i32 %storemerge45, 6
  %37 = shl i32 %storemerge44, 3
  %38 = add i32 %36, %37
  %39 = add nsw i32 %storemerge3, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8], ptr @p, i64 %40
  store i32 1, ptr %41, align 4
  %42 = add nsw i32 %storemerge45, 1
  br label %.preheader24, !llvm.loop !19

43:                                               ; preds = %.preheader24
  %44 = add nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

45:                                               ; preds = %.preheader25
  %46 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

47:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %48

48:                                               ; preds = %62, %47
  %storemerge4 = phi i32 [ 0, %47 ], [ %63, %62 ]
  %49 = icmp slt i32 %storemerge4, 2
  br i1 %49, label %.preheader23.preheader, label %64

.preheader23.preheader:                           ; preds = %48
  br label %.preheader23

.preheader23:                                     ; preds = %60, %.preheader23.preheader
  %storemerge42 = phi i32 [ %61, %60 ], [ 0, %.preheader23.preheader ]
  %50 = icmp slt i32 %storemerge42, 1
  br i1 %50, label %.preheader22.preheader, label %62

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %52, %.preheader22.preheader
  %storemerge43 = phi i32 [ %59, %52 ], [ 0, %.preheader22.preheader ]
  %51 = icmp slt i32 %storemerge43, 4
  br i1 %51, label %52, label %60

52:                                               ; preds = %.preheader22
  %53 = shl i32 %storemerge43, 6
  %54 = shl i32 %storemerge42, 3
  %55 = add i32 %53, %54
  %56 = add nsw i32 %storemerge4, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %57
  store i32 1, ptr %58, align 4
  %59 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

60:                                               ; preds = %.preheader22
  %61 = add nsw i32 %storemerge42, 1
  br label %.preheader23, !llvm.loop !23

62:                                               ; preds = %.preheader23
  %63 = add nsw i32 %storemerge4, 1
  br label %48, !llvm.loop !24

64:                                               ; preds = %48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %65

65:                                               ; preds = %79, %64
  %storemerge5 = phi i32 [ 0, %64 ], [ %80, %79 ]
  %66 = icmp slt i32 %storemerge5, 1
  br i1 %66, label %.preheader21.preheader, label %81

.preheader21.preheader:                           ; preds = %65
  br label %.preheader21

.preheader21:                                     ; preds = %77, %.preheader21.preheader
  %storemerge40 = phi i32 [ %78, %77 ], [ 0, %.preheader21.preheader ]
  %67 = icmp slt i32 %storemerge40, 4
  br i1 %67, label %.preheader20.preheader, label %79

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %69, %.preheader20.preheader
  %storemerge41 = phi i32 [ %76, %69 ], [ 0, %.preheader20.preheader ]
  %68 = icmp slt i32 %storemerge41, 2
  br i1 %68, label %69, label %77

69:                                               ; preds = %.preheader20
  %70 = shl i32 %storemerge41, 6
  %71 = shl i32 %storemerge40, 3
  %72 = add i32 %70, %71
  %73 = add nsw i32 %storemerge5, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %74
  store i32 1, ptr %75, align 4
  %76 = add nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

77:                                               ; preds = %.preheader20
  %78 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

79:                                               ; preds = %.preheader21
  %80 = add nsw i32 %storemerge5, 1
  br label %65, !llvm.loop !27

81:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %82

82:                                               ; preds = %96, %81
  %storemerge6 = phi i32 [ 0, %81 ], [ %97, %96 ]
  %83 = icmp slt i32 %storemerge6, 2
  br i1 %83, label %.preheader19.preheader, label %98

.preheader19.preheader:                           ; preds = %82
  br label %.preheader19

.preheader19:                                     ; preds = %94, %.preheader19.preheader
  %storemerge38 = phi i32 [ %95, %94 ], [ 0, %.preheader19.preheader ]
  %84 = icmp slt i32 %storemerge38, 4
  br i1 %84, label %.preheader18.preheader, label %96

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %86, %.preheader18.preheader
  %storemerge39 = phi i32 [ %93, %86 ], [ 0, %.preheader18.preheader ]
  %85 = icmp slt i32 %storemerge39, 1
  br i1 %85, label %86, label %94

86:                                               ; preds = %.preheader18
  %87 = shl i32 %storemerge39, 6
  %88 = shl i32 %storemerge38, 3
  %89 = add i32 %87, %88
  %90 = add nsw i32 %storemerge6, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %91
  store i32 1, ptr %92, align 4
  %93 = add nsw i32 %storemerge39, 1
  br label %.preheader18, !llvm.loop !28

94:                                               ; preds = %.preheader18
  %95 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

96:                                               ; preds = %.preheader19
  %97 = add nsw i32 %storemerge6, 1
  br label %82, !llvm.loop !30

98:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %99

99:                                               ; preds = %113, %98
  %storemerge7 = phi i32 [ 0, %98 ], [ %114, %113 ]
  %100 = icmp slt i32 %storemerge7, 4
  br i1 %100, label %.preheader17.preheader, label %115

.preheader17.preheader:                           ; preds = %99
  br label %.preheader17

.preheader17:                                     ; preds = %111, %.preheader17.preheader
  %storemerge36 = phi i32 [ %112, %111 ], [ 0, %.preheader17.preheader ]
  %101 = icmp slt i32 %storemerge36, 1
  br i1 %101, label %.preheader16.preheader, label %113

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %103, %.preheader16.preheader
  %storemerge37 = phi i32 [ %110, %103 ], [ 0, %.preheader16.preheader ]
  %102 = icmp slt i32 %storemerge37, 2
  br i1 %102, label %103, label %111

103:                                              ; preds = %.preheader16
  %104 = shl i32 %storemerge37, 6
  %105 = shl i32 %storemerge36, 3
  %106 = add i32 %104, %105
  %107 = add nsw i32 %storemerge7, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %108
  store i32 1, ptr %109, align 4
  %110 = add nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

111:                                              ; preds = %.preheader16
  %112 = add nsw i32 %storemerge36, 1
  br label %.preheader17, !llvm.loop !32

113:                                              ; preds = %.preheader17
  %114 = add nsw i32 %storemerge7, 1
  br label %99, !llvm.loop !33

115:                                              ; preds = %99
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %116

116:                                              ; preds = %130, %115
  %storemerge8 = phi i32 [ 0, %115 ], [ %131, %130 ]
  %117 = icmp slt i32 %storemerge8, 1
  br i1 %117, label %.preheader15.preheader, label %132

.preheader15.preheader:                           ; preds = %116
  br label %.preheader15

.preheader15:                                     ; preds = %128, %.preheader15.preheader
  %storemerge34 = phi i32 [ %129, %128 ], [ 0, %.preheader15.preheader ]
  %118 = icmp slt i32 %storemerge34, 2
  br i1 %118, label %.preheader14.preheader, label %130

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %120, %.preheader14.preheader
  %storemerge35 = phi i32 [ %127, %120 ], [ 0, %.preheader14.preheader ]
  %119 = icmp slt i32 %storemerge35, 4
  br i1 %119, label %120, label %128

120:                                              ; preds = %.preheader14
  %121 = shl i32 %storemerge35, 6
  %122 = shl i32 %storemerge34, 3
  %123 = add i32 %121, %122
  %124 = add nsw i32 %storemerge8, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

128:                                              ; preds = %.preheader14
  %129 = add nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

130:                                              ; preds = %.preheader15
  %131 = add nsw i32 %storemerge8, 1
  br label %116, !llvm.loop !36

132:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %133

133:                                              ; preds = %147, %132
  %storemerge9 = phi i32 [ 0, %132 ], [ %148, %147 ]
  %134 = icmp slt i32 %storemerge9, 3
  br i1 %134, label %.preheader13.preheader, label %149

.preheader13.preheader:                           ; preds = %133
  br label %.preheader13

.preheader13:                                     ; preds = %145, %.preheader13.preheader
  %storemerge32 = phi i32 [ %146, %145 ], [ 0, %.preheader13.preheader ]
  %135 = icmp slt i32 %storemerge32, 1
  br i1 %135, label %.preheader12.preheader, label %147

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %137, %.preheader12.preheader
  %storemerge33 = phi i32 [ %144, %137 ], [ 0, %.preheader12.preheader ]
  %136 = icmp slt i32 %storemerge33, 1
  br i1 %136, label %137, label %145

137:                                              ; preds = %.preheader12
  %138 = shl i32 %storemerge33, 6
  %139 = shl i32 %storemerge32, 3
  %140 = add i32 %138, %139
  %141 = add nsw i32 %storemerge9, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nsw i32 %storemerge33, 1
  br label %.preheader12, !llvm.loop !37

145:                                              ; preds = %.preheader12
  %146 = add nsw i32 %storemerge32, 1
  br label %.preheader13, !llvm.loop !38

147:                                              ; preds = %.preheader13
  %148 = add nsw i32 %storemerge9, 1
  br label %133, !llvm.loop !39

149:                                              ; preds = %133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %150

150:                                              ; preds = %164, %149
  %storemerge10 = phi i32 [ 0, %149 ], [ %165, %164 ]
  %151 = icmp slt i32 %storemerge10, 1
  br i1 %151, label %.preheader11.preheader, label %166

.preheader11.preheader:                           ; preds = %150
  br label %.preheader11

.preheader11:                                     ; preds = %162, %.preheader11.preheader
  %storemerge30 = phi i32 [ %163, %162 ], [ 0, %.preheader11.preheader ]
  %152 = icmp slt i32 %storemerge30, 3
  br i1 %152, label %.preheader10.preheader, label %164

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %154, %.preheader10.preheader
  %storemerge31 = phi i32 [ %161, %154 ], [ 0, %.preheader10.preheader ]
  %153 = icmp slt i32 %storemerge31, 1
  br i1 %153, label %154, label %162

154:                                              ; preds = %.preheader10
  %155 = shl i32 %storemerge31, 6
  %156 = shl i32 %storemerge30, 3
  %157 = add i32 %155, %156
  %158 = add nsw i32 %storemerge10, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %159
  store i32 1, ptr %160, align 4
  %161 = add nsw i32 %storemerge31, 1
  br label %.preheader10, !llvm.loop !40

162:                                              ; preds = %.preheader10
  %163 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

164:                                              ; preds = %.preheader11
  %165 = add nsw i32 %storemerge10, 1
  br label %150, !llvm.loop !42

166:                                              ; preds = %150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %167

167:                                              ; preds = %181, %166
  %storemerge11 = phi i32 [ 0, %166 ], [ %182, %181 ]
  %168 = icmp slt i32 %storemerge11, 1
  br i1 %168, label %.preheader9.preheader, label %183

.preheader9.preheader:                            ; preds = %167
  br label %.preheader9

.preheader9:                                      ; preds = %179, %.preheader9.preheader
  %storemerge28 = phi i32 [ %180, %179 ], [ 0, %.preheader9.preheader ]
  %169 = icmp slt i32 %storemerge28, 1
  br i1 %169, label %.preheader8.preheader, label %181

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %171, %.preheader8.preheader
  %storemerge29 = phi i32 [ %178, %171 ], [ 0, %.preheader8.preheader ]
  %170 = icmp slt i32 %storemerge29, 3
  br i1 %170, label %171, label %179

171:                                              ; preds = %.preheader8
  %172 = shl i32 %storemerge29, 6
  %173 = shl i32 %storemerge28, 3
  %174 = add i32 %172, %173
  %175 = add nsw i32 %storemerge11, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %176
  store i32 1, ptr %177, align 4
  %178 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

179:                                              ; preds = %.preheader8
  %180 = add nsw i32 %storemerge28, 1
  br label %.preheader9, !llvm.loop !44

181:                                              ; preds = %.preheader9
  %182 = add nsw i32 %storemerge11, 1
  br label %167, !llvm.loop !45

183:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %184

184:                                              ; preds = %198, %183
  %storemerge12 = phi i32 [ 0, %183 ], [ %199, %198 ]
  %185 = icmp slt i32 %storemerge12, 2
  br i1 %185, label %.preheader7.preheader, label %200

.preheader7.preheader:                            ; preds = %184
  br label %.preheader7

.preheader7:                                      ; preds = %196, %.preheader7.preheader
  %storemerge26 = phi i32 [ %197, %196 ], [ 0, %.preheader7.preheader ]
  %186 = icmp slt i32 %storemerge26, 2
  br i1 %186, label %.preheader6.preheader, label %198

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %188, %.preheader6.preheader
  %storemerge27 = phi i32 [ %195, %188 ], [ 0, %.preheader6.preheader ]
  %187 = icmp slt i32 %storemerge27, 1
  br i1 %187, label %188, label %196

188:                                              ; preds = %.preheader6
  %189 = shl i32 %storemerge27, 6
  %190 = shl i32 %storemerge26, 3
  %191 = add i32 %189, %190
  %192 = add nsw i32 %storemerge12, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nsw i32 %storemerge27, 1
  br label %.preheader6, !llvm.loop !46

196:                                              ; preds = %.preheader6
  %197 = add nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

198:                                              ; preds = %.preheader7
  %199 = add nsw i32 %storemerge12, 1
  br label %184, !llvm.loop !48

200:                                              ; preds = %184
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %201

201:                                              ; preds = %215, %200
  %storemerge13 = phi i32 [ 0, %200 ], [ %216, %215 ]
  %202 = icmp slt i32 %storemerge13, 2
  br i1 %202, label %.preheader5.preheader, label %217

.preheader5.preheader:                            ; preds = %201
  br label %.preheader5

.preheader5:                                      ; preds = %213, %.preheader5.preheader
  %storemerge24 = phi i32 [ %214, %213 ], [ 0, %.preheader5.preheader ]
  %203 = icmp slt i32 %storemerge24, 1
  br i1 %203, label %.preheader4.preheader, label %215

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %205, %.preheader4.preheader
  %storemerge25 = phi i32 [ %212, %205 ], [ 0, %.preheader4.preheader ]
  %204 = icmp slt i32 %storemerge25, 2
  br i1 %204, label %205, label %213

205:                                              ; preds = %.preheader4
  %206 = shl i32 %storemerge25, 6
  %207 = shl i32 %storemerge24, 3
  %208 = add i32 %206, %207
  %209 = add nsw i32 %storemerge13, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %210
  store i32 1, ptr %211, align 4
  %212 = add nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

213:                                              ; preds = %.preheader4
  %214 = add nsw i32 %storemerge24, 1
  br label %.preheader5, !llvm.loop !50

215:                                              ; preds = %.preheader5
  %216 = add nsw i32 %storemerge13, 1
  br label %201, !llvm.loop !51

217:                                              ; preds = %201
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %218

218:                                              ; preds = %232, %217
  %storemerge14 = phi i32 [ 0, %217 ], [ %233, %232 ]
  %219 = icmp slt i32 %storemerge14, 1
  br i1 %219, label %.preheader3.preheader, label %234

.preheader3.preheader:                            ; preds = %218
  br label %.preheader3

.preheader3:                                      ; preds = %230, %.preheader3.preheader
  %storemerge22 = phi i32 [ %231, %230 ], [ 0, %.preheader3.preheader ]
  %220 = icmp slt i32 %storemerge22, 2
  br i1 %220, label %.preheader2.preheader, label %232

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %222, %.preheader2.preheader
  %storemerge23 = phi i32 [ %229, %222 ], [ 0, %.preheader2.preheader ]
  %221 = icmp slt i32 %storemerge23, 2
  br i1 %221, label %222, label %230

222:                                              ; preds = %.preheader2
  %223 = shl i32 %storemerge23, 6
  %224 = shl i32 %storemerge22, 3
  %225 = add i32 %223, %224
  %226 = add nsw i32 %storemerge14, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %227
  store i32 1, ptr %228, align 4
  %229 = add nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

230:                                              ; preds = %.preheader2
  %231 = add nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

232:                                              ; preds = %.preheader3
  %233 = add nsw i32 %storemerge14, 1
  br label %218, !llvm.loop !54

234:                                              ; preds = %218
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %235

235:                                              ; preds = %249, %234
  %storemerge15 = phi i32 [ 0, %234 ], [ %250, %249 ]
  %236 = icmp slt i32 %storemerge15, 2
  br i1 %236, label %.preheader1.preheader, label %251

.preheader1.preheader:                            ; preds = %235
  br label %.preheader1

.preheader1:                                      ; preds = %247, %.preheader1.preheader
  %storemerge20 = phi i32 [ %248, %247 ], [ 0, %.preheader1.preheader ]
  %237 = icmp slt i32 %storemerge20, 2
  br i1 %237, label %.preheader.preheader, label %249

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %239, %.preheader.preheader
  %storemerge21 = phi i32 [ %246, %239 ], [ 0, %.preheader.preheader ]
  %238 = icmp slt i32 %storemerge21, 2
  br i1 %238, label %239, label %247

239:                                              ; preds = %.preheader
  %240 = shl i32 %storemerge21, 6
  %241 = shl i32 %storemerge20, 3
  %242 = add i32 %240, %241
  %243 = add nsw i32 %storemerge15, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %244
  store i32 1, ptr %245, align 4
  %246 = add nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

247:                                              ; preds = %.preheader
  %248 = add nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

249:                                              ; preds = %.preheader1
  %250 = add nsw i32 %storemerge15, 1
  br label %235, !llvm.loop !57

251:                                              ; preds = %235
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %252 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %252, 0
  br i1 %.not, label %255, label %253

253:                                              ; preds = %251
  %254 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %254, ptr @n, align 4
  br label %256

255:                                              ; preds = %251
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %256

256:                                              ; preds = %255, %253
  %257 = phi i32 [ %.pre, %255 ], [ %254, %253 ]
  %258 = call i32 @Trial(i32 noundef %257)
  %.not16 = icmp eq i32 %258, 0
  br i1 %.not16, label %259, label %260

259:                                              ; preds = %256
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %263

260:                                              ; preds = %256
  %261 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %261, 2005
  br i1 %.not18, label %263, label %262

262:                                              ; preds = %260
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %263

263:                                              ; preds = %262, %260, %259
  %264 = load i32, ptr @n, align 4
  %265 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %264) #4
  %266 = load i32, ptr @kount, align 4
  %267 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %266) #4
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
