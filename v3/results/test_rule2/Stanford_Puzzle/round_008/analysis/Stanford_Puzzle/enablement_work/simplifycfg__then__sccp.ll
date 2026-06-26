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
  br i1 %exitcond.not, label %.loopexit, label %27

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

.loopexit:                                        ; preds = %26, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %26 ]
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
  br i1 %2, label %3, label %.preheader31

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %1, %20
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %1 ]
  %7 = icmp slt i32 %storemerge1, 6
  br i1 %7, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %18
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader31 ]
  %8 = icmp slt i32 %storemerge47, 6
  br i1 %8, label %.preheader29, label %20

.preheader29:                                     ; preds = %.preheader30, %10
  %storemerge48 = phi i32 [ %17, %10 ], [ 1, %.preheader30 ]
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

.preheader28:                                     ; preds = %.preheader31, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader31 ]
  %22 = icmp slt i32 %storemerge2, 13
  br i1 %22, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %.preheader28, %24
  %storemerge46 = phi i32 [ %29, %24 ], [ 0, %.preheader28 ]
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

.preheader26:                                     ; preds = %.preheader28, %43
  %storemerge3 = phi i32 [ %44, %43 ], [ 0, %.preheader28 ]
  %32 = icmp slt i32 %storemerge3, 4
  br i1 %32, label %.preheader25, label %45

.preheader25:                                     ; preds = %.preheader26, %41
  %storemerge44 = phi i32 [ %42, %41 ], [ 0, %.preheader26 ]
  %33 = icmp slt i32 %storemerge44, 2
  br i1 %33, label %.preheader24, label %43

.preheader24:                                     ; preds = %.preheader25, %35
  %storemerge45 = phi i32 [ 1, %35 ], [ 0, %.preheader25 ]
  %34 = icmp slt i32 %storemerge45, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %.preheader24
  %36 = shl i32 %storemerge44, 3
  %37 = add nuw nsw i32 0, %36
  %38 = add nsw i32 %storemerge3, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @p, i64 %39
  store i32 1, ptr %40, align 4
  br label %.preheader24, !llvm.loop !19

41:                                               ; preds = %.preheader24
  %42 = add nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

43:                                               ; preds = %.preheader25
  %44 = add nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

45:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %46

46:                                               ; preds = %60, %45
  %storemerge4 = phi i32 [ 0, %45 ], [ %61, %60 ]
  %47 = icmp slt i32 %storemerge4, 2
  br i1 %47, label %.preheader23, label %62

.preheader23:                                     ; preds = %46, %58
  %storemerge42 = phi i32 [ %59, %58 ], [ 0, %46 ]
  %48 = icmp slt i32 %storemerge42, 1
  br i1 %48, label %.preheader22, label %60

.preheader22:                                     ; preds = %.preheader23, %50
  %storemerge43 = phi i32 [ %57, %50 ], [ 0, %.preheader23 ]
  %49 = icmp slt i32 %storemerge43, 4
  br i1 %49, label %50, label %58

50:                                               ; preds = %.preheader22
  %51 = shl i32 %storemerge43, 6
  %52 = shl i32 %storemerge42, 3
  %53 = add i32 %51, %52
  %54 = add nsw i32 %storemerge4, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %55
  store i32 1, ptr %56, align 4
  %57 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

58:                                               ; preds = %.preheader22
  %59 = add nsw i32 %storemerge42, 1
  br label %.preheader23, !llvm.loop !23

60:                                               ; preds = %.preheader23
  %61 = add nsw i32 %storemerge4, 1
  br label %46, !llvm.loop !24

62:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %63

63:                                               ; preds = %77, %62
  %storemerge5 = phi i32 [ 0, %62 ], [ %78, %77 ]
  %64 = icmp slt i32 %storemerge5, 1
  br i1 %64, label %.preheader21, label %79

.preheader21:                                     ; preds = %63, %75
  %storemerge40 = phi i32 [ %76, %75 ], [ 0, %63 ]
  %65 = icmp slt i32 %storemerge40, 4
  br i1 %65, label %.preheader20, label %77

.preheader20:                                     ; preds = %.preheader21, %67
  %storemerge41 = phi i32 [ %74, %67 ], [ 0, %.preheader21 ]
  %66 = icmp slt i32 %storemerge41, 2
  br i1 %66, label %67, label %75

67:                                               ; preds = %.preheader20
  %68 = shl nuw nsw i32 %storemerge41, 6
  %69 = shl i32 %storemerge40, 3
  %70 = add i32 %68, %69
  %71 = add nsw i32 %storemerge5, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %72
  store i32 1, ptr %73, align 4
  %74 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

75:                                               ; preds = %.preheader20
  %76 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

77:                                               ; preds = %.preheader21
  %78 = add nsw i32 %storemerge5, 1
  br label %63, !llvm.loop !27

79:                                               ; preds = %63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %80

80:                                               ; preds = %92, %79
  %storemerge6 = phi i32 [ 0, %79 ], [ %93, %92 ]
  %81 = icmp slt i32 %storemerge6, 2
  br i1 %81, label %.preheader19, label %94

.preheader19:                                     ; preds = %80, %90
  %storemerge38 = phi i32 [ %91, %90 ], [ 0, %80 ]
  %82 = icmp slt i32 %storemerge38, 4
  br i1 %82, label %.preheader18, label %92

.preheader18:                                     ; preds = %.preheader19, %84
  %storemerge39 = phi i32 [ 1, %84 ], [ 0, %.preheader19 ]
  %83 = icmp slt i32 %storemerge39, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %.preheader18
  %85 = shl i32 %storemerge38, 3
  %86 = add nuw nsw i32 0, %85
  %87 = add nsw i32 %storemerge6, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %88
  store i32 1, ptr %89, align 4
  br label %.preheader18, !llvm.loop !28

90:                                               ; preds = %.preheader18
  %91 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

92:                                               ; preds = %.preheader19
  %93 = add nsw i32 %storemerge6, 1
  br label %80, !llvm.loop !30

94:                                               ; preds = %80
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %95

95:                                               ; preds = %109, %94
  %storemerge7 = phi i32 [ 0, %94 ], [ %110, %109 ]
  %96 = icmp slt i32 %storemerge7, 4
  br i1 %96, label %.preheader17, label %111

.preheader17:                                     ; preds = %95, %107
  %storemerge36 = phi i32 [ %108, %107 ], [ 0, %95 ]
  %97 = icmp slt i32 %storemerge36, 1
  br i1 %97, label %.preheader16, label %109

.preheader16:                                     ; preds = %.preheader17, %99
  %storemerge37 = phi i32 [ %106, %99 ], [ 0, %.preheader17 ]
  %98 = icmp slt i32 %storemerge37, 2
  br i1 %98, label %99, label %107

99:                                               ; preds = %.preheader16
  %100 = shl nuw nsw i32 %storemerge37, 6
  %101 = shl i32 %storemerge36, 3
  %102 = add i32 %100, %101
  %103 = add nsw i32 %storemerge7, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %104
  store i32 1, ptr %105, align 4
  %106 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

107:                                              ; preds = %.preheader16
  %108 = add nsw i32 %storemerge36, 1
  br label %.preheader17, !llvm.loop !32

109:                                              ; preds = %.preheader17
  %110 = add nsw i32 %storemerge7, 1
  br label %95, !llvm.loop !33

111:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %112

112:                                              ; preds = %126, %111
  %storemerge8 = phi i32 [ 0, %111 ], [ %127, %126 ]
  %113 = icmp slt i32 %storemerge8, 1
  br i1 %113, label %.preheader15, label %128

.preheader15:                                     ; preds = %112, %124
  %storemerge34 = phi i32 [ %125, %124 ], [ 0, %112 ]
  %114 = icmp slt i32 %storemerge34, 2
  br i1 %114, label %.preheader14, label %126

.preheader14:                                     ; preds = %.preheader15, %116
  %storemerge35 = phi i32 [ %123, %116 ], [ 0, %.preheader15 ]
  %115 = icmp slt i32 %storemerge35, 4
  br i1 %115, label %116, label %124

116:                                              ; preds = %.preheader14
  %117 = shl i32 %storemerge35, 6
  %118 = shl i32 %storemerge34, 3
  %119 = add i32 %117, %118
  %120 = add nsw i32 %storemerge8, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

124:                                              ; preds = %.preheader14
  %125 = add nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

126:                                              ; preds = %.preheader15
  %127 = add nsw i32 %storemerge8, 1
  br label %112, !llvm.loop !36

128:                                              ; preds = %112
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %129

129:                                              ; preds = %141, %128
  %storemerge9 = phi i32 [ 0, %128 ], [ %142, %141 ]
  %130 = icmp slt i32 %storemerge9, 3
  br i1 %130, label %.preheader13, label %143

.preheader13:                                     ; preds = %129, %139
  %storemerge32 = phi i32 [ %140, %139 ], [ 0, %129 ]
  %131 = icmp slt i32 %storemerge32, 1
  br i1 %131, label %.preheader12, label %141

.preheader12:                                     ; preds = %.preheader13, %133
  %storemerge33 = phi i32 [ 1, %133 ], [ 0, %.preheader13 ]
  %132 = icmp slt i32 %storemerge33, 1
  br i1 %132, label %133, label %139

133:                                              ; preds = %.preheader12
  %134 = shl i32 %storemerge32, 3
  %135 = add nuw nsw i32 0, %134
  %136 = add nsw i32 %storemerge9, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %137
  store i32 1, ptr %138, align 4
  br label %.preheader12, !llvm.loop !37

139:                                              ; preds = %.preheader12
  %140 = add nsw i32 %storemerge32, 1
  br label %.preheader13, !llvm.loop !38

141:                                              ; preds = %.preheader13
  %142 = add nsw i32 %storemerge9, 1
  br label %129, !llvm.loop !39

143:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %144

144:                                              ; preds = %156, %143
  %storemerge10 = phi i32 [ 0, %143 ], [ %157, %156 ]
  %145 = icmp slt i32 %storemerge10, 1
  br i1 %145, label %.preheader11, label %158

.preheader11:                                     ; preds = %144, %154
  %storemerge30 = phi i32 [ %155, %154 ], [ 0, %144 ]
  %146 = icmp slt i32 %storemerge30, 3
  br i1 %146, label %.preheader10, label %156

.preheader10:                                     ; preds = %.preheader11, %148
  %storemerge31 = phi i32 [ 1, %148 ], [ 0, %.preheader11 ]
  %147 = icmp slt i32 %storemerge31, 1
  br i1 %147, label %148, label %154

148:                                              ; preds = %.preheader10
  %149 = shl i32 %storemerge30, 3
  %150 = add nuw nsw i32 0, %149
  %151 = add nsw i32 %storemerge10, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %152
  store i32 1, ptr %153, align 4
  br label %.preheader10, !llvm.loop !40

154:                                              ; preds = %.preheader10
  %155 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

156:                                              ; preds = %.preheader11
  %157 = add nsw i32 %storemerge10, 1
  br label %144, !llvm.loop !42

158:                                              ; preds = %144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %159

159:                                              ; preds = %173, %158
  %storemerge11 = phi i32 [ 0, %158 ], [ %174, %173 ]
  %160 = icmp slt i32 %storemerge11, 1
  br i1 %160, label %.preheader9, label %175

.preheader9:                                      ; preds = %159, %171
  %storemerge28 = phi i32 [ %172, %171 ], [ 0, %159 ]
  %161 = icmp slt i32 %storemerge28, 1
  br i1 %161, label %.preheader8, label %173

.preheader8:                                      ; preds = %.preheader9, %163
  %storemerge29 = phi i32 [ %170, %163 ], [ 0, %.preheader9 ]
  %162 = icmp slt i32 %storemerge29, 3
  br i1 %162, label %163, label %171

163:                                              ; preds = %.preheader8
  %164 = shl i32 %storemerge29, 6
  %165 = shl i32 %storemerge28, 3
  %166 = add i32 %164, %165
  %167 = add nsw i32 %storemerge11, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %168
  store i32 1, ptr %169, align 4
  %170 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

171:                                              ; preds = %.preheader8
  %172 = add nsw i32 %storemerge28, 1
  br label %.preheader9, !llvm.loop !44

173:                                              ; preds = %.preheader9
  %174 = add nsw i32 %storemerge11, 1
  br label %159, !llvm.loop !45

175:                                              ; preds = %159
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %176

176:                                              ; preds = %188, %175
  %storemerge12 = phi i32 [ 0, %175 ], [ %189, %188 ]
  %177 = icmp slt i32 %storemerge12, 2
  br i1 %177, label %.preheader7, label %190

.preheader7:                                      ; preds = %176, %186
  %storemerge26 = phi i32 [ %187, %186 ], [ 0, %176 ]
  %178 = icmp slt i32 %storemerge26, 2
  br i1 %178, label %.preheader6, label %188

.preheader6:                                      ; preds = %.preheader7, %180
  %storemerge27 = phi i32 [ 1, %180 ], [ 0, %.preheader7 ]
  %179 = icmp slt i32 %storemerge27, 1
  br i1 %179, label %180, label %186

180:                                              ; preds = %.preheader6
  %181 = shl i32 %storemerge26, 3
  %182 = add nuw nsw i32 0, %181
  %183 = add nsw i32 %storemerge12, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %184
  store i32 1, ptr %185, align 4
  br label %.preheader6, !llvm.loop !46

186:                                              ; preds = %.preheader6
  %187 = add nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

188:                                              ; preds = %.preheader7
  %189 = add nsw i32 %storemerge12, 1
  br label %176, !llvm.loop !48

190:                                              ; preds = %176
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %191

191:                                              ; preds = %205, %190
  %storemerge13 = phi i32 [ 0, %190 ], [ %206, %205 ]
  %192 = icmp slt i32 %storemerge13, 2
  br i1 %192, label %.preheader5, label %207

.preheader5:                                      ; preds = %191, %203
  %storemerge24 = phi i32 [ %204, %203 ], [ 0, %191 ]
  %193 = icmp slt i32 %storemerge24, 1
  br i1 %193, label %.preheader4, label %205

.preheader4:                                      ; preds = %.preheader5, %195
  %storemerge25 = phi i32 [ %202, %195 ], [ 0, %.preheader5 ]
  %194 = icmp slt i32 %storemerge25, 2
  br i1 %194, label %195, label %203

195:                                              ; preds = %.preheader4
  %196 = shl nuw nsw i32 %storemerge25, 6
  %197 = shl i32 %storemerge24, 3
  %198 = add i32 %196, %197
  %199 = add nsw i32 %storemerge13, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %200
  store i32 1, ptr %201, align 4
  %202 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

203:                                              ; preds = %.preheader4
  %204 = add nsw i32 %storemerge24, 1
  br label %.preheader5, !llvm.loop !50

205:                                              ; preds = %.preheader5
  %206 = add nsw i32 %storemerge13, 1
  br label %191, !llvm.loop !51

207:                                              ; preds = %191
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %208

208:                                              ; preds = %222, %207
  %storemerge14 = phi i32 [ 0, %207 ], [ %223, %222 ]
  %209 = icmp slt i32 %storemerge14, 1
  br i1 %209, label %.preheader3, label %224

.preheader3:                                      ; preds = %208, %220
  %storemerge22 = phi i32 [ %221, %220 ], [ 0, %208 ]
  %210 = icmp slt i32 %storemerge22, 2
  br i1 %210, label %.preheader2, label %222

.preheader2:                                      ; preds = %.preheader3, %212
  %storemerge23 = phi i32 [ %219, %212 ], [ 0, %.preheader3 ]
  %211 = icmp slt i32 %storemerge23, 2
  br i1 %211, label %212, label %220

212:                                              ; preds = %.preheader2
  %213 = shl nuw nsw i32 %storemerge23, 6
  %214 = shl i32 %storemerge22, 3
  %215 = add i32 %213, %214
  %216 = add nsw i32 %storemerge14, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %217
  store i32 1, ptr %218, align 4
  %219 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

220:                                              ; preds = %.preheader2
  %221 = add nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

222:                                              ; preds = %.preheader3
  %223 = add nsw i32 %storemerge14, 1
  br label %208, !llvm.loop !54

224:                                              ; preds = %208
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %225

225:                                              ; preds = %239, %224
  %storemerge15 = phi i32 [ 0, %224 ], [ %240, %239 ]
  %226 = icmp slt i32 %storemerge15, 2
  br i1 %226, label %.preheader1, label %241

.preheader1:                                      ; preds = %225, %237
  %storemerge20 = phi i32 [ %238, %237 ], [ 0, %225 ]
  %227 = icmp slt i32 %storemerge20, 2
  br i1 %227, label %.preheader, label %239

.preheader:                                       ; preds = %.preheader1, %229
  %storemerge21 = phi i32 [ %236, %229 ], [ 0, %.preheader1 ]
  %228 = icmp slt i32 %storemerge21, 2
  br i1 %228, label %229, label %237

229:                                              ; preds = %.preheader
  %230 = shl nuw nsw i32 %storemerge21, 6
  %231 = shl i32 %storemerge20, 3
  %232 = add i32 %230, %231
  %233 = add nsw i32 %storemerge15, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %234
  store i32 1, ptr %235, align 4
  %236 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

237:                                              ; preds = %.preheader
  %238 = add nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

239:                                              ; preds = %.preheader1
  %240 = add nsw i32 %storemerge15, 1
  br label %225, !llvm.loop !57

241:                                              ; preds = %225
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %242 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %242, 0
  br i1 %.not, label %245, label %243

243:                                              ; preds = %241
  %244 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %244, ptr @n, align 4
  br label %246

245:                                              ; preds = %241
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %246

246:                                              ; preds = %245, %243
  %247 = load i32, ptr @n, align 4
  %248 = call i32 @Trial(i32 noundef %247)
  %.not16 = icmp eq i32 %248, 0
  br i1 %.not16, label %249, label %250

249:                                              ; preds = %246
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %253

250:                                              ; preds = %246
  %251 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %251, 2005
  br i1 %.not18, label %253, label %252

252:                                              ; preds = %250
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %253

253:                                              ; preds = %252, %250, %249
  %254 = load i32, ptr @n, align 4
  %255 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %254) #4
  %256 = load i32, ptr @kount, align 4
  %257 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %256) #4
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
