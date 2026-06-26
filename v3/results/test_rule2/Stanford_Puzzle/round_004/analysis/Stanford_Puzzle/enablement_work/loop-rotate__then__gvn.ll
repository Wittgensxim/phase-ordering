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
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp sgt i32 0, %8
  br i1 %.not1, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %20
  %10 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %20, label %._crit_edge

20:                                               ; preds = %15, %9
  %21 = add nsw i32 %10, 1
  store i32 %21, ptr %5, align 4
  %.not = icmp sgt i32 %21, %8
  br i1 %.not, label %._crit_edge3, label %9, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %22

._crit_edge3:                                     ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp sgt i32 0, %8
  br i1 %.not1, label %21, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %19
  %10 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %19, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nsw i32 %10, 1
  store i32 %20, ptr %5, align 4
  %.not = icmp sgt i32 %20, %8
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  store i32 %1, ptr %5, align 4
  %exitcond4 = icmp ne i64 %28, %wide.trip.count
  br i1 %exitcond4, label %.lr.ph7, label %.loopexit

.lr.ph7:                                          ; preds = %21
  br label %29

29:                                               ; preds = %.lr.ph7, %34
  %indvars.iv5 = phi i64 [ %28, %.lr.ph7 ], [ %indvars.iv.next, %34 ]
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %34

32:                                               ; preds = %29
  %33 = trunc nsw i64 %indvars.iv5 to i32
  br label %36

34:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %35 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %35, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %29, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %34
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %21
  br label %36

36:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %33, %32 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp sgt i32 0, %8
  br i1 %.not2, label %21, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %19
  %10 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %19, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nsw i32 %10, 1
  store i32 %20, ptr %5, align 4
  %.not = icmp sgt i32 %20, %8
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !11

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
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
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %1, %23
  %8 = phi i32 [ %0, %1 ], [ %24, %23 ]
  %9 = phi i32 [ 0, %1 ], [ %25, %23 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %23, label %16

16:                                               ; preds = %7
  %17 = call i32 @Fit(i32 noundef %9, i32 noundef %8)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %23, label %18

18:                                               ; preds = %16
  %19 = call i32 @Place(i32 noundef %9, i32 noundef %8)
  store i32 %19, ptr %4, align 4
  %20 = call i32 @Trial(i32 noundef %19)
  %.not3 = icmp ne i32 %20, 0
  %21 = icmp eq i32 %19, 0
  %or.cond = select i1 %.not3, i1 true, i1 %21
  br i1 %or.cond, label %27, label %22

22:                                               ; preds = %18
  call void @Remove(i32 noundef %9, i32 noundef %0)
  br label %23

23:                                               ; preds = %22, %16, %7
  %24 = phi i32 [ %0, %22 ], [ %8, %16 ], [ %8, %7 ]
  %25 = add nsw i32 %9, 1
  store i32 %25, ptr %3, align 4
  %26 = icmp slt i32 %25, 13
  br i1 %26, label %7, label %27, !llvm.loop !12

27:                                               ; preds = %18, %23
  %storemerge1 = phi i32 [ 1, %18 ], [ 0, %23 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

.preheader31:                                     ; preds = %5
  store i32 1, ptr %1, align 4
  br label %.preheader30

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31, !llvm.loop !13

.preheader30:                                     ; preds = %.preheader31, %26
  %11 = phi i32 [ 1, %.preheader31 ], [ %27, %26 ]
  store i32 1, ptr %2, align 4
  br label %.preheader29

.preheader28:                                     ; preds = %26
  store i32 0, ptr %1, align 4
  br label %.preheader27

.preheader29:                                     ; preds = %.preheader30, %23
  %12 = phi i32 [ 1, %.preheader30 ], [ %24, %23 ]
  store i32 1, ptr %3, align 4
  br label %13

13:                                               ; preds = %.preheader29, %13
  %14 = phi i32 [ 1, %.preheader29 ], [ %21, %13 ]
  %15 = shl i32 %14, 6
  %16 = shl i32 %12, 3
  %17 = add i32 %15, %16
  %18 = add nsw i32 %11, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nsw i32 %14, 1
  store i32 %21, ptr %3, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %13, label %23, !llvm.loop !14

23:                                               ; preds = %13
  %24 = add nsw i32 %12, 1
  store i32 %24, ptr %2, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %.preheader29, label %26, !llvm.loop !15

26:                                               ; preds = %23
  %27 = add nsw i32 %11, 1
  store i32 %27, ptr %1, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %.preheader30, label %.preheader28, !llvm.loop !16

.preheader27:                                     ; preds = %.preheader28, %38
  %29 = phi i32 [ 0, %.preheader28 ], [ %39, %38 ]
  store i32 0, ptr %4, align 4
  br label %30

.preheader26:                                     ; preds = %38
  store i32 0, ptr %1, align 4
  br label %.preheader25

30:                                               ; preds = %.preheader27, %30
  %31 = phi i32 [ 0, %.preheader27 ], [ %36, %30 ]
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [2048 x i8], ptr @p, i64 %32
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %33, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nsw i32 %31, 1
  store i32 %36, ptr %4, align 4
  %37 = icmp slt i32 %36, 512
  br i1 %37, label %30, label %38, !llvm.loop !17

38:                                               ; preds = %30
  %39 = add nsw i32 %29, 1
  store i32 %39, ptr %1, align 4
  %40 = icmp slt i32 %39, 13
  br i1 %40, label %.preheader27, label %.preheader26, !llvm.loop !18

.preheader25:                                     ; preds = %.preheader26, %51
  %41 = phi i32 [ 0, %.preheader26 ], [ %52, %51 ]
  store i32 0, ptr %2, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %48
  %42 = phi i32 [ 0, %.preheader25 ], [ %49, %48 ]
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %._crit_edge, %.preheader24
  %44 = shl i32 %42, 3
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge, label %48, !llvm.loop !19

._crit_edge:                                      ; preds = %43
  br label %43, !llvm.loop !19

48:                                               ; preds = %43
  %49 = add nsw i32 %42, 1
  store i32 %49, ptr %2, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %.preheader24, label %51, !llvm.loop !20

51:                                               ; preds = %48
  %52 = add nsw i32 %41, 1
  store i32 %52, ptr %1, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %.preheader25, label %54, !llvm.loop !21

54:                                               ; preds = %51
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %.preheader23

.preheader23:                                     ; preds = %54, %65
  %55 = phi i32 [ 0, %54 ], [ %66, %65 ]
  store i32 0, ptr %2, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %..preheader22_crit_edge, %.preheader23
  store i32 0, ptr %3, align 4
  br label %56

56:                                               ; preds = %.preheader22, %56
  %57 = phi i32 [ 0, %.preheader22 ], [ %62, %56 ]
  %58 = shl i32 %57, 6
  %59 = add nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %60
  store i32 1, ptr %61, align 4
  %62 = add nsw i32 %57, 1
  store i32 %62, ptr %3, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %56, label %64, !llvm.loop !22

64:                                               ; preds = %56
  store i32 1, ptr %2, align 4
  br i1 false, label %..preheader22_crit_edge, label %65, !llvm.loop !23

..preheader22_crit_edge:                          ; preds = %64
  br label %.preheader22, !llvm.loop !23

65:                                               ; preds = %64
  %66 = add nsw i32 %55, 1
  store i32 %66, ptr %1, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %.preheader23, label %68, !llvm.loop !24

68:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader21

.preheader21:                                     ; preds = %..preheader21_crit_edge, %68
  store i32 0, ptr %2, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %79
  %69 = phi i32 [ 0, %.preheader21 ], [ %80, %79 ]
  store i32 0, ptr %3, align 4
  br label %70

70:                                               ; preds = %.preheader20, %70
  %71 = phi i32 [ 0, %.preheader20 ], [ %77, %70 ]
  %72 = shl i32 %71, 6
  %73 = shl i32 %69, 3
  %74 = add i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %75
  store i32 1, ptr %76, align 4
  %77 = add nsw i32 %71, 1
  store i32 %77, ptr %3, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %70, label %79, !llvm.loop !25

79:                                               ; preds = %70
  %80 = add nsw i32 %69, 1
  store i32 %80, ptr %2, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %.preheader20, label %82, !llvm.loop !26

82:                                               ; preds = %79
  store i32 1, ptr %1, align 4
  br i1 false, label %..preheader21_crit_edge, label %83, !llvm.loop !27

..preheader21_crit_edge:                          ; preds = %82
  br label %.preheader21, !llvm.loop !27

83:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %83, %94
  %84 = phi i32 [ 0, %83 ], [ %95, %94 ]
  store i32 0, ptr %2, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %91
  %85 = phi i32 [ 0, %.preheader19 ], [ %92, %91 ]
  store i32 0, ptr %3, align 4
  br label %86

86:                                               ; preds = %._crit_edge32, %.preheader18
  %87 = shl i32 %85, 3
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %89
  store i32 1, ptr %90, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge32, label %91, !llvm.loop !28

._crit_edge32:                                    ; preds = %86
  br label %86, !llvm.loop !28

91:                                               ; preds = %86
  %92 = add nsw i32 %85, 1
  store i32 %92, ptr %2, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %.preheader18, label %94, !llvm.loop !29

94:                                               ; preds = %91
  %95 = add nsw i32 %84, 1
  store i32 %95, ptr %1, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %.preheader19, label %97, !llvm.loop !30

97:                                               ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader17

.preheader17:                                     ; preds = %97, %108
  %98 = phi i32 [ 0, %97 ], [ %109, %108 ]
  store i32 0, ptr %2, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %..preheader16_crit_edge, %.preheader17
  store i32 0, ptr %3, align 4
  br label %99

99:                                               ; preds = %.preheader16, %99
  %100 = phi i32 [ 0, %.preheader16 ], [ %105, %99 ]
  %101 = shl i32 %100, 6
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %103
  store i32 1, ptr %104, align 4
  %105 = add nsw i32 %100, 1
  store i32 %105, ptr %3, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %99, label %107, !llvm.loop !31

107:                                              ; preds = %99
  store i32 1, ptr %2, align 4
  br i1 false, label %..preheader16_crit_edge, label %108, !llvm.loop !32

..preheader16_crit_edge:                          ; preds = %107
  br label %.preheader16, !llvm.loop !32

108:                                              ; preds = %107
  %109 = add nsw i32 %98, 1
  store i32 %109, ptr %1, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %.preheader17, label %111, !llvm.loop !33

111:                                              ; preds = %108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader15

.preheader15:                                     ; preds = %..preheader15_crit_edge, %111
  store i32 0, ptr %2, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %122
  %112 = phi i32 [ 0, %.preheader15 ], [ %123, %122 ]
  store i32 0, ptr %3, align 4
  br label %113

113:                                              ; preds = %.preheader14, %113
  %114 = phi i32 [ 0, %.preheader14 ], [ %120, %113 ]
  %115 = shl i32 %114, 6
  %116 = shl i32 %112, 3
  %117 = add i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %118
  store i32 1, ptr %119, align 4
  %120 = add nsw i32 %114, 1
  store i32 %120, ptr %3, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %113, label %122, !llvm.loop !34

122:                                              ; preds = %113
  %123 = add nsw i32 %112, 1
  store i32 %123, ptr %2, align 4
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %.preheader14, label %125, !llvm.loop !35

125:                                              ; preds = %122
  store i32 1, ptr %1, align 4
  br i1 false, label %..preheader15_crit_edge, label %126, !llvm.loop !36

..preheader15_crit_edge:                          ; preds = %125
  br label %.preheader15, !llvm.loop !36

126:                                              ; preds = %125
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader13

.preheader13:                                     ; preds = %126, %132
  %127 = phi i32 [ 0, %126 ], [ %133, %132 ]
  store i32 0, ptr %2, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %..preheader12_crit_edge, %.preheader13
  store i32 0, ptr %3, align 4
  br label %128

128:                                              ; preds = %._crit_edge33, %.preheader12
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %129
  store i32 1, ptr %130, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge33, label %131, !llvm.loop !37

._crit_edge33:                                    ; preds = %128
  br label %128, !llvm.loop !37

131:                                              ; preds = %128
  store i32 1, ptr %2, align 4
  br i1 false, label %..preheader12_crit_edge, label %132, !llvm.loop !38

..preheader12_crit_edge:                          ; preds = %131
  br label %.preheader12, !llvm.loop !38

132:                                              ; preds = %131
  %133 = add nsw i32 %127, 1
  store i32 %133, ptr %1, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %.preheader13, label %135, !llvm.loop !39

135:                                              ; preds = %132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %..preheader11_crit_edge, %135
  store i32 0, ptr %2, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %141
  %136 = phi i32 [ 0, %.preheader11 ], [ %142, %141 ]
  store i32 0, ptr %3, align 4
  br label %137

137:                                              ; preds = %._crit_edge34, %.preheader10
  %138 = shl i32 %136, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %139
  store i32 1, ptr %140, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge34, label %141, !llvm.loop !40

._crit_edge34:                                    ; preds = %137
  br label %137, !llvm.loop !40

141:                                              ; preds = %137
  %142 = add nsw i32 %136, 1
  store i32 %142, ptr %2, align 4
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %.preheader10, label %144, !llvm.loop !41

144:                                              ; preds = %141
  store i32 1, ptr %1, align 4
  br i1 false, label %..preheader11_crit_edge, label %145, !llvm.loop !42

..preheader11_crit_edge:                          ; preds = %144
  br label %.preheader11, !llvm.loop !42

145:                                              ; preds = %144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %..preheader9_crit_edge, %145
  store i32 0, ptr %2, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %..preheader8_crit_edge, %.preheader9
  store i32 0, ptr %3, align 4
  br label %146

146:                                              ; preds = %.preheader8, %146
  %147 = phi i32 [ 0, %.preheader8 ], [ %151, %146 ]
  %148 = shl i32 %147, 6
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %149
  store i32 1, ptr %150, align 4
  %151 = add nsw i32 %147, 1
  store i32 %151, ptr %3, align 4
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %146, label %153, !llvm.loop !43

153:                                              ; preds = %146
  store i32 1, ptr %2, align 4
  br i1 false, label %..preheader8_crit_edge, label %154, !llvm.loop !44

..preheader8_crit_edge:                           ; preds = %153
  br label %.preheader8, !llvm.loop !44

154:                                              ; preds = %153
  store i32 1, ptr %1, align 4
  br i1 false, label %..preheader9_crit_edge, label %155, !llvm.loop !45

..preheader9_crit_edge:                           ; preds = %154
  br label %.preheader9, !llvm.loop !45

155:                                              ; preds = %154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader7

.preheader7:                                      ; preds = %155, %166
  %156 = phi i32 [ 0, %155 ], [ %167, %166 ]
  store i32 0, ptr %2, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %163
  %157 = phi i32 [ 0, %.preheader7 ], [ %164, %163 ]
  store i32 0, ptr %3, align 4
  br label %158

158:                                              ; preds = %._crit_edge35, %.preheader6
  %159 = shl i32 %157, 3
  %160 = add nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %161
  store i32 1, ptr %162, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge35, label %163, !llvm.loop !46

._crit_edge35:                                    ; preds = %158
  br label %158, !llvm.loop !46

163:                                              ; preds = %158
  %164 = add nsw i32 %157, 1
  store i32 %164, ptr %2, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %.preheader6, label %166, !llvm.loop !47

166:                                              ; preds = %163
  %167 = add nsw i32 %156, 1
  store i32 %167, ptr %1, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %.preheader7, label %169, !llvm.loop !48

169:                                              ; preds = %166
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %169, %180
  %170 = phi i32 [ 0, %169 ], [ %181, %180 ]
  store i32 0, ptr %2, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %..preheader4_crit_edge, %.preheader5
  store i32 0, ptr %3, align 4
  br label %171

171:                                              ; preds = %.preheader4, %171
  %172 = phi i32 [ 0, %.preheader4 ], [ %177, %171 ]
  %173 = shl i32 %172, 6
  %174 = add nsw i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %175
  store i32 1, ptr %176, align 4
  %177 = add nsw i32 %172, 1
  store i32 %177, ptr %3, align 4
  %178 = icmp slt i32 %177, 2
  br i1 %178, label %171, label %179, !llvm.loop !49

179:                                              ; preds = %171
  store i32 1, ptr %2, align 4
  br i1 false, label %..preheader4_crit_edge, label %180, !llvm.loop !50

..preheader4_crit_edge:                           ; preds = %179
  br label %.preheader4, !llvm.loop !50

180:                                              ; preds = %179
  %181 = add nsw i32 %170, 1
  store i32 %181, ptr %1, align 4
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %.preheader5, label %183, !llvm.loop !51

183:                                              ; preds = %180
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader3

.preheader3:                                      ; preds = %..preheader3_crit_edge, %183
  store i32 0, ptr %2, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %194
  %184 = phi i32 [ 0, %.preheader3 ], [ %195, %194 ]
  store i32 0, ptr %3, align 4
  br label %185

185:                                              ; preds = %.preheader2, %185
  %186 = phi i32 [ 0, %.preheader2 ], [ %192, %185 ]
  %187 = shl i32 %186, 6
  %188 = shl i32 %184, 3
  %189 = add i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nsw i32 %186, 1
  store i32 %192, ptr %3, align 4
  %193 = icmp slt i32 %192, 2
  br i1 %193, label %185, label %194, !llvm.loop !52

194:                                              ; preds = %185
  %195 = add nsw i32 %184, 1
  store i32 %195, ptr %2, align 4
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %.preheader2, label %197, !llvm.loop !53

197:                                              ; preds = %194
  store i32 1, ptr %1, align 4
  br i1 false, label %..preheader3_crit_edge, label %198, !llvm.loop !54

..preheader3_crit_edge:                           ; preds = %197
  br label %.preheader3, !llvm.loop !54

198:                                              ; preds = %197
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader1

.preheader1:                                      ; preds = %198, %214
  %199 = phi i32 [ 0, %198 ], [ %215, %214 ]
  store i32 0, ptr %2, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %211
  %200 = phi i32 [ 0, %.preheader1 ], [ %212, %211 ]
  store i32 0, ptr %3, align 4
  br label %201

201:                                              ; preds = %.preheader, %201
  %202 = phi i32 [ 0, %.preheader ], [ %209, %201 ]
  %203 = shl i32 %202, 6
  %204 = shl i32 %200, 3
  %205 = add i32 %203, %204
  %206 = add nsw i32 %199, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %207
  store i32 1, ptr %208, align 4
  %209 = add nsw i32 %202, 1
  store i32 %209, ptr %3, align 4
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %201, label %211, !llvm.loop !55

211:                                              ; preds = %201
  %212 = add nsw i32 %200, 1
  store i32 %212, ptr %2, align 4
  %213 = icmp slt i32 %212, 2
  br i1 %213, label %.preheader, label %214, !llvm.loop !56

214:                                              ; preds = %211
  %215 = add nsw i32 %199, 1
  store i32 %215, ptr %1, align 4
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %.preheader1, label %217, !llvm.loop !57

217:                                              ; preds = %214
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %218 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %218, 0
  br i1 %.not, label %221, label %219

219:                                              ; preds = %217
  %220 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %220, ptr @n, align 4
  br label %222

221:                                              ; preds = %217
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i32 [ %.pre, %221 ], [ %220, %219 ]
  %224 = call i32 @Trial(i32 noundef %223)
  %.not16 = icmp eq i32 %224, 0
  br i1 %.not16, label %225, label %226

225:                                              ; preds = %222
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %229

226:                                              ; preds = %222
  %227 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %227, 2005
  br i1 %.not18, label %229, label %228

228:                                              ; preds = %226
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %229

229:                                              ; preds = %228, %226, %225
  %230 = load i32, ptr @n, align 4
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %230) #4
  %232 = load i32, ptr @kount, align 4
  %233 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %232) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @Puzzle()
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !58

6:                                                ; preds = %2
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
