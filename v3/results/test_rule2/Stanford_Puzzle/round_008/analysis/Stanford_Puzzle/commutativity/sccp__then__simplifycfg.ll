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

46:                                               ; preds = %57, %45
  %storemerge4 = phi i32 [ 0, %45 ], [ %58, %57 ]
  %47 = icmp slt i32 %storemerge4, 2
  br i1 %47, label %.preheader23, label %59

.preheader23:                                     ; preds = %.preheader22, %46
  %storemerge42 = phi i32 [ 0, %46 ], [ 1, %.preheader22 ]
  %48 = icmp slt i32 %storemerge42, 1
  br i1 %48, label %.preheader22, label %57

.preheader22:                                     ; preds = %.preheader23, %50
  %storemerge43 = phi i32 [ %56, %50 ], [ 0, %.preheader23 ]
  %49 = icmp slt i32 %storemerge43, 4
  br i1 %49, label %50, label %.preheader23, !llvm.loop !22

50:                                               ; preds = %.preheader22
  %51 = shl i32 %storemerge43, 6
  %52 = add nuw nsw i32 %51, 0
  %53 = add nuw nsw i32 %storemerge4, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %54
  store i32 1, ptr %55, align 4
  %56 = add nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !23

57:                                               ; preds = %.preheader23
  %58 = add nuw nsw i32 %storemerge4, 1
  br label %46, !llvm.loop !24

59:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %60

60:                                               ; preds = %.preheader21, %59
  %storemerge5 = phi i32 [ 0, %59 ], [ 1, %.preheader21 ]
  %61 = icmp slt i32 %storemerge5, 1
  br i1 %61, label %.preheader21, label %74

.preheader21:                                     ; preds = %60, %72
  %storemerge40 = phi i32 [ %73, %72 ], [ 0, %60 ]
  %62 = icmp slt i32 %storemerge40, 4
  br i1 %62, label %.preheader20, label %60, !llvm.loop !25

.preheader20:                                     ; preds = %.preheader21, %64
  %storemerge41 = phi i32 [ %71, %64 ], [ 0, %.preheader21 ]
  %63 = icmp slt i32 %storemerge41, 2
  br i1 %63, label %64, label %72

64:                                               ; preds = %.preheader20
  %65 = shl nuw nsw i32 %storemerge41, 6
  %66 = shl i32 %storemerge40, 3
  %67 = add i32 %65, %66
  %68 = add nuw nsw i32 0, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

72:                                               ; preds = %.preheader20
  %73 = add nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

74:                                               ; preds = %60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %75

75:                                               ; preds = %87, %74
  %storemerge6 = phi i32 [ 0, %74 ], [ %88, %87 ]
  %76 = icmp slt i32 %storemerge6, 2
  br i1 %76, label %.preheader19, label %89

.preheader19:                                     ; preds = %75, %85
  %storemerge38 = phi i32 [ %86, %85 ], [ 0, %75 ]
  %77 = icmp slt i32 %storemerge38, 4
  br i1 %77, label %.preheader18, label %87

.preheader18:                                     ; preds = %.preheader19, %79
  %storemerge39 = phi i32 [ 1, %79 ], [ 0, %.preheader19 ]
  %78 = icmp slt i32 %storemerge39, 1
  br i1 %78, label %79, label %85

79:                                               ; preds = %.preheader18
  %80 = shl i32 %storemerge38, 3
  %81 = add nuw nsw i32 0, %80
  %82 = add nuw nsw i32 %storemerge6, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %83
  store i32 1, ptr %84, align 4
  br label %.preheader18, !llvm.loop !28

85:                                               ; preds = %.preheader18
  %86 = add nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

87:                                               ; preds = %.preheader19
  %88 = add nuw nsw i32 %storemerge6, 1
  br label %75, !llvm.loop !30

89:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %90

90:                                               ; preds = %101, %89
  %storemerge7 = phi i32 [ 0, %89 ], [ %102, %101 ]
  %91 = icmp slt i32 %storemerge7, 4
  br i1 %91, label %.preheader17, label %103

.preheader17:                                     ; preds = %.preheader16, %90
  %storemerge36 = phi i32 [ 0, %90 ], [ 1, %.preheader16 ]
  %92 = icmp slt i32 %storemerge36, 1
  br i1 %92, label %.preheader16, label %101

.preheader16:                                     ; preds = %.preheader17, %94
  %storemerge37 = phi i32 [ %100, %94 ], [ 0, %.preheader17 ]
  %93 = icmp slt i32 %storemerge37, 2
  br i1 %93, label %94, label %.preheader17, !llvm.loop !31

94:                                               ; preds = %.preheader16
  %95 = shl nuw nsw i32 %storemerge37, 6
  %96 = add nuw nsw i32 %95, 0
  %97 = add nsw i32 %storemerge7, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %98
  store i32 1, ptr %99, align 4
  %100 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !32

101:                                              ; preds = %.preheader17
  %102 = add nsw i32 %storemerge7, 1
  br label %90, !llvm.loop !33

103:                                              ; preds = %90
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %104

104:                                              ; preds = %.preheader15, %103
  %storemerge8 = phi i32 [ 0, %103 ], [ 1, %.preheader15 ]
  %105 = icmp slt i32 %storemerge8, 1
  br i1 %105, label %.preheader15, label %118

.preheader15:                                     ; preds = %104, %116
  %storemerge34 = phi i32 [ %117, %116 ], [ 0, %104 ]
  %106 = icmp slt i32 %storemerge34, 2
  br i1 %106, label %.preheader14, label %104, !llvm.loop !34

.preheader14:                                     ; preds = %.preheader15, %108
  %storemerge35 = phi i32 [ %115, %108 ], [ 0, %.preheader15 ]
  %107 = icmp slt i32 %storemerge35, 4
  br i1 %107, label %108, label %116

108:                                              ; preds = %.preheader14
  %109 = shl i32 %storemerge35, 6
  %110 = shl nuw nsw i32 %storemerge34, 3
  %111 = add nuw i32 %109, %110
  %112 = add nuw nsw i32 0, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

116:                                              ; preds = %.preheader14
  %117 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

118:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %119

119:                                              ; preds = %127, %118
  %storemerge9 = phi i32 [ 0, %118 ], [ %128, %127 ]
  %120 = icmp slt i32 %storemerge9, 3
  br i1 %120, label %.preheader13, label %129

.preheader13:                                     ; preds = %.preheader12, %119
  %storemerge32 = phi i32 [ 0, %119 ], [ 1, %.preheader12 ]
  %121 = icmp slt i32 %storemerge32, 1
  br i1 %121, label %.preheader12, label %127

.preheader12:                                     ; preds = %.preheader13, %123
  %storemerge33 = phi i32 [ 1, %123 ], [ 0, %.preheader13 ]
  %122 = icmp slt i32 %storemerge33, 1
  br i1 %122, label %123, label %.preheader13, !llvm.loop !37

123:                                              ; preds = %.preheader12
  %124 = add nuw nsw i32 %storemerge9, 0
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %125
  store i32 1, ptr %126, align 4
  br label %.preheader12, !llvm.loop !38

127:                                              ; preds = %.preheader13
  %128 = add nsw i32 %storemerge9, 1
  br label %119, !llvm.loop !39

129:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %130

130:                                              ; preds = %.preheader11, %129
  %storemerge10 = phi i32 [ 0, %129 ], [ 1, %.preheader11 ]
  %131 = icmp slt i32 %storemerge10, 1
  br i1 %131, label %.preheader11, label %142

.preheader11:                                     ; preds = %130, %140
  %storemerge30 = phi i32 [ %141, %140 ], [ 0, %130 ]
  %132 = icmp slt i32 %storemerge30, 3
  br i1 %132, label %.preheader10, label %130, !llvm.loop !40

.preheader10:                                     ; preds = %.preheader11, %134
  %storemerge31 = phi i32 [ 1, %134 ], [ 0, %.preheader11 ]
  %133 = icmp slt i32 %storemerge31, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %.preheader10
  %135 = shl i32 %storemerge30, 3
  %136 = add nuw nsw i32 0, %135
  %137 = add nuw nsw i32 0, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %138
  store i32 1, ptr %139, align 4
  br label %.preheader10, !llvm.loop !41

140:                                              ; preds = %.preheader10
  %141 = add nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

142:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %143

143:                                              ; preds = %.preheader9, %142
  %storemerge11 = phi i32 [ 0, %142 ], [ 1, %.preheader9 ]
  %144 = icmp slt i32 %storemerge11, 1
  br i1 %144, label %.preheader9, label %154

.preheader9:                                      ; preds = %.preheader8, %143
  %storemerge28 = phi i32 [ 0, %143 ], [ 1, %.preheader8 ]
  %145 = icmp slt i32 %storemerge28, 1
  br i1 %145, label %.preheader8, label %143, !llvm.loop !43

.preheader8:                                      ; preds = %.preheader9, %147
  %storemerge29 = phi i32 [ %153, %147 ], [ 0, %.preheader9 ]
  %146 = icmp slt i32 %storemerge29, 3
  br i1 %146, label %147, label %.preheader9, !llvm.loop !44

147:                                              ; preds = %.preheader8
  %148 = shl i32 %storemerge29, 6
  %149 = add nuw nsw i32 %148, 0
  %150 = add nuw nsw i32 0, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %151
  store i32 1, ptr %152, align 4
  %153 = add nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

154:                                              ; preds = %143
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %155

155:                                              ; preds = %167, %154
  %storemerge12 = phi i32 [ 0, %154 ], [ %168, %167 ]
  %156 = icmp slt i32 %storemerge12, 2
  br i1 %156, label %.preheader7, label %169

.preheader7:                                      ; preds = %155, %165
  %storemerge26 = phi i32 [ %166, %165 ], [ 0, %155 ]
  %157 = icmp slt i32 %storemerge26, 2
  br i1 %157, label %.preheader6, label %167

.preheader6:                                      ; preds = %.preheader7, %159
  %storemerge27 = phi i32 [ 1, %159 ], [ 0, %.preheader7 ]
  %158 = icmp slt i32 %storemerge27, 1
  br i1 %158, label %159, label %165

159:                                              ; preds = %.preheader6
  %160 = shl nuw nsw i32 %storemerge26, 3
  %161 = add nuw nsw i32 0, %160
  %162 = add nuw nsw i32 %storemerge12, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %163
  store i32 1, ptr %164, align 4
  br label %.preheader6, !llvm.loop !46

165:                                              ; preds = %.preheader6
  %166 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

167:                                              ; preds = %.preheader7
  %168 = add nuw nsw i32 %storemerge12, 1
  br label %155, !llvm.loop !48

169:                                              ; preds = %155
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %170

170:                                              ; preds = %181, %169
  %storemerge13 = phi i32 [ 0, %169 ], [ %182, %181 ]
  %171 = icmp slt i32 %storemerge13, 2
  br i1 %171, label %.preheader5, label %183

.preheader5:                                      ; preds = %.preheader4, %170
  %storemerge24 = phi i32 [ 0, %170 ], [ 1, %.preheader4 ]
  %172 = icmp slt i32 %storemerge24, 1
  br i1 %172, label %.preheader4, label %181

.preheader4:                                      ; preds = %.preheader5, %174
  %storemerge25 = phi i32 [ %180, %174 ], [ 0, %.preheader5 ]
  %173 = icmp slt i32 %storemerge25, 2
  br i1 %173, label %174, label %.preheader5, !llvm.loop !49

174:                                              ; preds = %.preheader4
  %175 = shl nuw nsw i32 %storemerge25, 6
  %176 = add nuw nsw i32 %175, 0
  %177 = add nuw nsw i32 %storemerge13, %176
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %178
  store i32 1, ptr %179, align 4
  %180 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

181:                                              ; preds = %.preheader5
  %182 = add nuw nsw i32 %storemerge13, 1
  br label %170, !llvm.loop !51

183:                                              ; preds = %170
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %184

184:                                              ; preds = %.preheader3, %183
  %storemerge14 = phi i32 [ 0, %183 ], [ 1, %.preheader3 ]
  %185 = icmp slt i32 %storemerge14, 1
  br i1 %185, label %.preheader3, label %198

.preheader3:                                      ; preds = %184, %196
  %storemerge22 = phi i32 [ %197, %196 ], [ 0, %184 ]
  %186 = icmp slt i32 %storemerge22, 2
  br i1 %186, label %.preheader2, label %184, !llvm.loop !52

.preheader2:                                      ; preds = %.preheader3, %188
  %storemerge23 = phi i32 [ %195, %188 ], [ 0, %.preheader3 ]
  %187 = icmp slt i32 %storemerge23, 2
  br i1 %187, label %188, label %196

188:                                              ; preds = %.preheader2
  %189 = shl nuw nsw i32 %storemerge23, 6
  %190 = shl nuw nsw i32 %storemerge22, 3
  %191 = add nuw nsw i32 %189, %190
  %192 = add nuw nsw i32 0, %191
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

196:                                              ; preds = %.preheader2
  %197 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

198:                                              ; preds = %184
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %199

199:                                              ; preds = %213, %198
  %storemerge15 = phi i32 [ 0, %198 ], [ %214, %213 ]
  %200 = icmp slt i32 %storemerge15, 2
  br i1 %200, label %.preheader1, label %215

.preheader1:                                      ; preds = %199, %211
  %storemerge20 = phi i32 [ %212, %211 ], [ 0, %199 ]
  %201 = icmp slt i32 %storemerge20, 2
  br i1 %201, label %.preheader, label %213

.preheader:                                       ; preds = %.preheader1, %203
  %storemerge21 = phi i32 [ %210, %203 ], [ 0, %.preheader1 ]
  %202 = icmp slt i32 %storemerge21, 2
  br i1 %202, label %203, label %211

203:                                              ; preds = %.preheader
  %204 = shl nuw nsw i32 %storemerge21, 6
  %205 = shl nuw nsw i32 %storemerge20, 3
  %206 = add nuw nsw i32 %204, %205
  %207 = add nuw nsw i32 %storemerge15, %206
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %208
  store i32 1, ptr %209, align 4
  %210 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

211:                                              ; preds = %.preheader
  %212 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

213:                                              ; preds = %.preheader1
  %214 = add nuw nsw i32 %storemerge15, 1
  br label %199, !llvm.loop !57

215:                                              ; preds = %199
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %216 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %216, 0
  br i1 %.not, label %219, label %217

217:                                              ; preds = %215
  %218 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %218, ptr @n, align 4
  br label %220

219:                                              ; preds = %215
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %220

220:                                              ; preds = %219, %217
  %221 = load i32, ptr @n, align 4
  %222 = call i32 @Trial(i32 noundef %221)
  %.not16 = icmp eq i32 %222, 0
  br i1 %.not16, label %223, label %224

223:                                              ; preds = %220
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %227

224:                                              ; preds = %220
  %225 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %225, 2005
  br i1 %.not18, label %227, label %226

226:                                              ; preds = %224
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %227

227:                                              ; preds = %226, %224, %223
  %228 = load i32, ptr @n, align 4
  %229 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %228) #4
  %230 = load i32, ptr @kount, align 4
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %230) #4
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
