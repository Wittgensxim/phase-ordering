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
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %12, %3
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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

.preheader26:                                     ; preds = %43, %.preheader26.preheader
  %storemerge3 = phi i32 [ %44, %43 ], [ 0, %.preheader26.preheader ]
  %32 = icmp slt i32 %storemerge3, 4
  br i1 %32, label %.preheader25.preheader, label %45

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %41, %.preheader25.preheader
  %storemerge44 = phi i32 [ %42, %41 ], [ 0, %.preheader25.preheader ]
  %33 = icmp slt i32 %storemerge44, 2
  br i1 %33, label %.preheader24.preheader, label %43

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %35, %.preheader24.preheader
  %storemerge45 = phi i32 [ 1, %35 ], [ 0, %.preheader24.preheader ]
  %34 = icmp slt i32 %storemerge45, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %.preheader24
  %36 = shl nuw nsw i32 %storemerge44, 3
  %37 = add nuw nsw i32 0, %36
  %38 = add nsw i32 %storemerge3, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @p, i64 %39
  store i32 1, ptr %40, align 4
  br label %.preheader24, !llvm.loop !19

41:                                               ; preds = %.preheader24
  %42 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

43:                                               ; preds = %.preheader25
  %44 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

45:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %46

46:                                               ; preds = %58, %45
  %storemerge4 = phi i32 [ 0, %45 ], [ %59, %58 ]
  %47 = icmp slt i32 %storemerge4, 2
  br i1 %47, label %.preheader23.preheader, label %60

.preheader23.preheader:                           ; preds = %46
  br label %.preheader23

.preheader23:                                     ; preds = %57, %.preheader23.preheader
  %storemerge42 = phi i32 [ 1, %57 ], [ 0, %.preheader23.preheader ]
  %48 = icmp slt i32 %storemerge42, 1
  br i1 %48, label %.preheader22.preheader, label %58

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %50, %.preheader22.preheader
  %storemerge43 = phi i32 [ %56, %50 ], [ 0, %.preheader22.preheader ]
  %49 = icmp slt i32 %storemerge43, 4
  br i1 %49, label %50, label %57

50:                                               ; preds = %.preheader22
  %51 = shl i32 %storemerge43, 6
  %52 = add nuw nsw i32 %51, 0
  %53 = add nuw nsw i32 %storemerge4, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %54
  store i32 1, ptr %55, align 4
  %56 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

57:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

58:                                               ; preds = %.preheader23
  %59 = add nuw nsw i32 %storemerge4, 1
  br label %46, !llvm.loop !24

60:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %61

61:                                               ; preds = %75, %60
  %storemerge5 = phi i32 [ 0, %60 ], [ 1, %75 ]
  %62 = icmp slt i32 %storemerge5, 1
  br i1 %62, label %.preheader21.preheader, label %76

.preheader21.preheader:                           ; preds = %61
  br label %.preheader21

.preheader21:                                     ; preds = %73, %.preheader21.preheader
  %storemerge40 = phi i32 [ %74, %73 ], [ 0, %.preheader21.preheader ]
  %63 = icmp slt i32 %storemerge40, 4
  br i1 %63, label %.preheader20.preheader, label %75

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %65, %.preheader20.preheader
  %storemerge41 = phi i32 [ %72, %65 ], [ 0, %.preheader20.preheader ]
  %64 = icmp slt i32 %storemerge41, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %.preheader20
  %66 = shl nuw nsw i32 %storemerge41, 6
  %67 = shl i32 %storemerge40, 3
  %68 = add i32 %66, %67
  %69 = add nuw nsw i32 0, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %70
  store i32 1, ptr %71, align 4
  %72 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

73:                                               ; preds = %.preheader20
  %74 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

75:                                               ; preds = %.preheader21
  br label %61, !llvm.loop !27

76:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %77

77:                                               ; preds = %89, %76
  %storemerge6 = phi i32 [ 0, %76 ], [ %90, %89 ]
  %78 = icmp slt i32 %storemerge6, 2
  br i1 %78, label %.preheader19.preheader, label %91

.preheader19.preheader:                           ; preds = %77
  br label %.preheader19

.preheader19:                                     ; preds = %87, %.preheader19.preheader
  %storemerge38 = phi i32 [ %88, %87 ], [ 0, %.preheader19.preheader ]
  %79 = icmp slt i32 %storemerge38, 4
  br i1 %79, label %.preheader18.preheader, label %89

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %81, %.preheader18.preheader
  %storemerge39 = phi i32 [ 1, %81 ], [ 0, %.preheader18.preheader ]
  %80 = icmp slt i32 %storemerge39, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %.preheader18
  %82 = shl i32 %storemerge38, 3
  %83 = add nuw nsw i32 0, %82
  %84 = add nuw nsw i32 %storemerge6, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %85
  store i32 1, ptr %86, align 4
  br label %.preheader18, !llvm.loop !28

87:                                               ; preds = %.preheader18
  %88 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

89:                                               ; preds = %.preheader19
  %90 = add nuw nsw i32 %storemerge6, 1
  br label %77, !llvm.loop !30

91:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %92

92:                                               ; preds = %104, %91
  %storemerge7 = phi i32 [ 0, %91 ], [ %105, %104 ]
  %93 = icmp slt i32 %storemerge7, 4
  br i1 %93, label %.preheader17.preheader, label %106

.preheader17.preheader:                           ; preds = %92
  br label %.preheader17

.preheader17:                                     ; preds = %103, %.preheader17.preheader
  %storemerge36 = phi i32 [ 1, %103 ], [ 0, %.preheader17.preheader ]
  %94 = icmp slt i32 %storemerge36, 1
  br i1 %94, label %.preheader16.preheader, label %104

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %96, %.preheader16.preheader
  %storemerge37 = phi i32 [ %102, %96 ], [ 0, %.preheader16.preheader ]
  %95 = icmp slt i32 %storemerge37, 2
  br i1 %95, label %96, label %103

96:                                               ; preds = %.preheader16
  %97 = shl nuw nsw i32 %storemerge37, 6
  %98 = add nuw nsw i32 %97, 0
  %99 = add nsw i32 %storemerge7, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

103:                                              ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

104:                                              ; preds = %.preheader17
  %105 = add nsw i32 %storemerge7, 1
  br label %92, !llvm.loop !33

106:                                              ; preds = %92
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %107

107:                                              ; preds = %121, %106
  %storemerge8 = phi i32 [ 0, %106 ], [ 1, %121 ]
  %108 = icmp slt i32 %storemerge8, 1
  br i1 %108, label %.preheader15.preheader, label %122

.preheader15.preheader:                           ; preds = %107
  br label %.preheader15

.preheader15:                                     ; preds = %119, %.preheader15.preheader
  %storemerge34 = phi i32 [ %120, %119 ], [ 0, %.preheader15.preheader ]
  %109 = icmp slt i32 %storemerge34, 2
  br i1 %109, label %.preheader14.preheader, label %121

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %111, %.preheader14.preheader
  %storemerge35 = phi i32 [ %118, %111 ], [ 0, %.preheader14.preheader ]
  %110 = icmp slt i32 %storemerge35, 4
  br i1 %110, label %111, label %119

111:                                              ; preds = %.preheader14
  %112 = shl i32 %storemerge35, 6
  %113 = shl nuw nsw i32 %storemerge34, 3
  %114 = add nuw i32 %112, %113
  %115 = add nuw nsw i32 0, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

119:                                              ; preds = %.preheader14
  %120 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

121:                                              ; preds = %.preheader15
  br label %107, !llvm.loop !36

122:                                              ; preds = %107
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %123

123:                                              ; preds = %132, %122
  %storemerge9 = phi i32 [ 0, %122 ], [ %133, %132 ]
  %124 = icmp slt i32 %storemerge9, 3
  br i1 %124, label %.preheader13.preheader, label %134

.preheader13.preheader:                           ; preds = %123
  br label %.preheader13

.preheader13:                                     ; preds = %131, %.preheader13.preheader
  %storemerge32 = phi i32 [ 1, %131 ], [ 0, %.preheader13.preheader ]
  %125 = icmp slt i32 %storemerge32, 1
  br i1 %125, label %.preheader12.preheader, label %132

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %127, %.preheader12.preheader
  %storemerge33 = phi i32 [ 1, %127 ], [ 0, %.preheader12.preheader ]
  %126 = icmp slt i32 %storemerge33, 1
  br i1 %126, label %127, label %131

127:                                              ; preds = %.preheader12
  %128 = add nuw nsw i32 %storemerge9, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %129
  store i32 1, ptr %130, align 4
  br label %.preheader12, !llvm.loop !37

131:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

132:                                              ; preds = %.preheader13
  %133 = add nsw i32 %storemerge9, 1
  br label %123, !llvm.loop !39

134:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %135

135:                                              ; preds = %147, %134
  %storemerge10 = phi i32 [ 0, %134 ], [ 1, %147 ]
  %136 = icmp slt i32 %storemerge10, 1
  br i1 %136, label %.preheader11.preheader, label %148

.preheader11.preheader:                           ; preds = %135
  br label %.preheader11

.preheader11:                                     ; preds = %145, %.preheader11.preheader
  %storemerge30 = phi i32 [ %146, %145 ], [ 0, %.preheader11.preheader ]
  %137 = icmp slt i32 %storemerge30, 3
  br i1 %137, label %.preheader10.preheader, label %147

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %139, %.preheader10.preheader
  %storemerge31 = phi i32 [ 1, %139 ], [ 0, %.preheader10.preheader ]
  %138 = icmp slt i32 %storemerge31, 1
  br i1 %138, label %139, label %145

139:                                              ; preds = %.preheader10
  %140 = shl i32 %storemerge30, 3
  %141 = add nuw nsw i32 0, %140
  %142 = add nuw nsw i32 0, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %143
  store i32 1, ptr %144, align 4
  br label %.preheader10, !llvm.loop !40

145:                                              ; preds = %.preheader10
  %146 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

147:                                              ; preds = %.preheader11
  br label %135, !llvm.loop !42

148:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %149

149:                                              ; preds = %161, %148
  %storemerge11 = phi i32 [ 0, %148 ], [ 1, %161 ]
  %150 = icmp slt i32 %storemerge11, 1
  br i1 %150, label %.preheader9.preheader, label %162

.preheader9.preheader:                            ; preds = %149
  br label %.preheader9

.preheader9:                                      ; preds = %160, %.preheader9.preheader
  %storemerge28 = phi i32 [ 1, %160 ], [ 0, %.preheader9.preheader ]
  %151 = icmp slt i32 %storemerge28, 1
  br i1 %151, label %.preheader8.preheader, label %161

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %153, %.preheader8.preheader
  %storemerge29 = phi i32 [ %159, %153 ], [ 0, %.preheader8.preheader ]
  %152 = icmp slt i32 %storemerge29, 3
  br i1 %152, label %153, label %160

153:                                              ; preds = %.preheader8
  %154 = shl i32 %storemerge29, 6
  %155 = add nuw nsw i32 %154, 0
  %156 = add nuw nsw i32 0, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %157
  store i32 1, ptr %158, align 4
  %159 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

160:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

161:                                              ; preds = %.preheader9
  br label %149, !llvm.loop !45

162:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %163

163:                                              ; preds = %175, %162
  %storemerge12 = phi i32 [ 0, %162 ], [ %176, %175 ]
  %164 = icmp slt i32 %storemerge12, 2
  br i1 %164, label %.preheader7.preheader, label %177

.preheader7.preheader:                            ; preds = %163
  br label %.preheader7

.preheader7:                                      ; preds = %173, %.preheader7.preheader
  %storemerge26 = phi i32 [ %174, %173 ], [ 0, %.preheader7.preheader ]
  %165 = icmp slt i32 %storemerge26, 2
  br i1 %165, label %.preheader6.preheader, label %175

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %167, %.preheader6.preheader
  %storemerge27 = phi i32 [ 1, %167 ], [ 0, %.preheader6.preheader ]
  %166 = icmp slt i32 %storemerge27, 1
  br i1 %166, label %167, label %173

167:                                              ; preds = %.preheader6
  %168 = shl nuw nsw i32 %storemerge26, 3
  %169 = add nuw nsw i32 0, %168
  %170 = add nuw nsw i32 %storemerge12, %169
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %171
  store i32 1, ptr %172, align 4
  br label %.preheader6, !llvm.loop !46

173:                                              ; preds = %.preheader6
  %174 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

175:                                              ; preds = %.preheader7
  %176 = add nuw nsw i32 %storemerge12, 1
  br label %163, !llvm.loop !48

177:                                              ; preds = %163
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %178

178:                                              ; preds = %190, %177
  %storemerge13 = phi i32 [ 0, %177 ], [ %191, %190 ]
  %179 = icmp slt i32 %storemerge13, 2
  br i1 %179, label %.preheader5.preheader, label %192

.preheader5.preheader:                            ; preds = %178
  br label %.preheader5

.preheader5:                                      ; preds = %189, %.preheader5.preheader
  %storemerge24 = phi i32 [ 1, %189 ], [ 0, %.preheader5.preheader ]
  %180 = icmp slt i32 %storemerge24, 1
  br i1 %180, label %.preheader4.preheader, label %190

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %182, %.preheader4.preheader
  %storemerge25 = phi i32 [ %188, %182 ], [ 0, %.preheader4.preheader ]
  %181 = icmp slt i32 %storemerge25, 2
  br i1 %181, label %182, label %189

182:                                              ; preds = %.preheader4
  %183 = shl nuw nsw i32 %storemerge25, 6
  %184 = add nuw nsw i32 %183, 0
  %185 = add nuw nsw i32 %storemerge13, %184
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %186
  store i32 1, ptr %187, align 4
  %188 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

189:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

190:                                              ; preds = %.preheader5
  %191 = add nuw nsw i32 %storemerge13, 1
  br label %178, !llvm.loop !51

192:                                              ; preds = %178
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %193

193:                                              ; preds = %207, %192
  %storemerge14 = phi i32 [ 0, %192 ], [ 1, %207 ]
  %194 = icmp slt i32 %storemerge14, 1
  br i1 %194, label %.preheader3.preheader, label %208

.preheader3.preheader:                            ; preds = %193
  br label %.preheader3

.preheader3:                                      ; preds = %205, %.preheader3.preheader
  %storemerge22 = phi i32 [ %206, %205 ], [ 0, %.preheader3.preheader ]
  %195 = icmp slt i32 %storemerge22, 2
  br i1 %195, label %.preheader2.preheader, label %207

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %197, %.preheader2.preheader
  %storemerge23 = phi i32 [ %204, %197 ], [ 0, %.preheader2.preheader ]
  %196 = icmp slt i32 %storemerge23, 2
  br i1 %196, label %197, label %205

197:                                              ; preds = %.preheader2
  %198 = shl nuw nsw i32 %storemerge23, 6
  %199 = shl nuw nsw i32 %storemerge22, 3
  %200 = add nuw nsw i32 %198, %199
  %201 = add nuw nsw i32 0, %200
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %202
  store i32 1, ptr %203, align 4
  %204 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

205:                                              ; preds = %.preheader2
  %206 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

207:                                              ; preds = %.preheader3
  br label %193, !llvm.loop !54

208:                                              ; preds = %193
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %209

209:                                              ; preds = %223, %208
  %storemerge15 = phi i32 [ 0, %208 ], [ %224, %223 ]
  %210 = icmp slt i32 %storemerge15, 2
  br i1 %210, label %.preheader1.preheader, label %225

.preheader1.preheader:                            ; preds = %209
  br label %.preheader1

.preheader1:                                      ; preds = %221, %.preheader1.preheader
  %storemerge20 = phi i32 [ %222, %221 ], [ 0, %.preheader1.preheader ]
  %211 = icmp slt i32 %storemerge20, 2
  br i1 %211, label %.preheader.preheader, label %223

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %213, %.preheader.preheader
  %storemerge21 = phi i32 [ %220, %213 ], [ 0, %.preheader.preheader ]
  %212 = icmp slt i32 %storemerge21, 2
  br i1 %212, label %213, label %221

213:                                              ; preds = %.preheader
  %214 = shl nuw nsw i32 %storemerge21, 6
  %215 = shl nuw nsw i32 %storemerge20, 3
  %216 = add nuw nsw i32 %214, %215
  %217 = add nuw nsw i32 %storemerge15, %216
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %218
  store i32 1, ptr %219, align 4
  %220 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

221:                                              ; preds = %.preheader
  %222 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

223:                                              ; preds = %.preheader1
  %224 = add nuw nsw i32 %storemerge15, 1
  br label %209, !llvm.loop !57

225:                                              ; preds = %209
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %226 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %226, 0
  br i1 %.not, label %229, label %227

227:                                              ; preds = %225
  %228 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %228, ptr @n, align 4
  br label %230

229:                                              ; preds = %225
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %230

230:                                              ; preds = %229, %227
  %231 = load i32, ptr @n, align 4
  %232 = call i32 @Trial(i32 noundef %231)
  %.not16 = icmp eq i32 %232, 0
  br i1 %.not16, label %233, label %234

233:                                              ; preds = %230
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %237

234:                                              ; preds = %230
  %235 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %235, 2005
  br i1 %.not18, label %237, label %236

236:                                              ; preds = %234
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %237

237:                                              ; preds = %236, %234, %233
  %238 = load i32, ptr @n, align 4
  %239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %238) #4
  %240 = load i32, ptr @kount, align 4
  %241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %240) #4
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
