; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %22
  %11 = phi i64 [ %7, %.lr.ph ], [ %26, %22 ]
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %24, %22 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %._crit_edge3

22:                                               ; preds = %10, %16
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not = icmp sgt i32 %24, %28
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  %split = phi i32 [ 1, %22 ]
  br label %29

._crit_edge3:                                     ; preds = %16
  %split4 = phi i32 [ 0, %16 ]
  br label %29

29:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split4, %._crit_edge3 ], [ %split, %._crit_edge ], [ 1, %2 ]
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i64 [ %7, %.lr.ph ], [ %25, %21 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %23, %21 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %10, %16
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not = icmp sgt i32 %23, %27
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi i64 [ %25, %21 ]
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %4, align 4
  %36 = sext i32 %35 to i64
  %smax = call i32 @llvm.smax.i32(i32 %35, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  store i32 %35, ptr %5, align 4
  %exitcond4 = icmp ne i64 %36, %wide.trip.count
  br i1 %exitcond4, label %.lr.ph7, label %.loopexit

.lr.ph7:                                          ; preds = %28
  br label %37

37:                                               ; preds = %.lr.ph7, %42
  %indvars.iv5 = phi i64 [ %36, %.lr.ph7 ], [ %indvars.iv.next, %42 ]
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %39 = load i32, ptr %38, align 4
  %.not3 = icmp eq i32 %39, 0
  br i1 %.not3, label %40, label %42

40:                                               ; preds = %37
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv5, %37 ]
  %41 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %44

42:                                               ; preds = %37
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %43 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %43, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %37, label %..loopexit_crit_edge, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %42
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %28
  br label %44

44:                                               ; preds = %.loopexit, %40
  %storemerge2 = phi i32 [ %41, %40 ], [ 0, %.loopexit ]
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %28, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %21
  %11 = phi i64 [ %7, %.lr.ph ], [ %25, %21 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %23, %21 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %10, %16
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not = icmp sgt i32 %23, %27
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !11

._crit_edge:                                      ; preds = %21
  %split = phi i64 [ %25, %21 ]
  br label %28

28:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
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

7:                                                ; preds = %1, %27
  %storemerge2 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %8 = sext i32 %storemerge2 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %27, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 4
  %16 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %27, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @Place(i32 noundef %18, i32 noundef %19)
  store i32 %20, ptr %4, align 4
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 0
  %or.cond = select i1 %.not3, i1 true, i1 %23
  br i1 %or.cond, label %31, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %3, align 4
  %26 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %25, i32 noundef %26)
  br label %27

27:                                               ; preds = %7, %24, %14
  %28 = load i32, ptr %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %3, align 4
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %7, label %31, !llvm.loop !12

31:                                               ; preds = %27, %17
  %storemerge1 = phi i32 [ 1, %17 ], [ 0, %27 ]
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
  %storemerge49 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %6 = sext i32 %storemerge49 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31, !llvm.loop !13

.preheader30:                                     ; preds = %.preheader31, %27
  store i32 1, ptr %2, align 4
  br label %.preheader29

.preheader28:                                     ; preds = %27
  store i32 0, ptr %1, align 4
  br label %.preheader27

.preheader29:                                     ; preds = %.preheader30, %23
  store i32 1, ptr %3, align 4
  br label %11

11:                                               ; preds = %.preheader29, %11
  %storemerge4850 = phi i32 [ 1, %.preheader29 ], [ %21, %11 ]
  %12 = load i32, ptr %1, align 4
  %13 = load i32, ptr %2, align 4
  %14 = shl i32 %storemerge4850, 6
  %15 = shl i32 %13, 3
  %16 = add i32 %14, %15
  %17 = add nsw i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %3, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %11, label %23, !llvm.loop !14

23:                                               ; preds = %11
  %24 = load i32, ptr %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %2, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %.preheader29, label %27, !llvm.loop !15

27:                                               ; preds = %23
  %28 = load i32, ptr %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %1, align 4
  %30 = icmp slt i32 %29, 6
  br i1 %30, label %.preheader30, label %.preheader28, !llvm.loop !16

.preheader27:                                     ; preds = %.preheader28, %40
  store i32 0, ptr %4, align 4
  br label %31

.preheader26:                                     ; preds = %40
  store i32 0, ptr %1, align 4
  br label %.preheader25

31:                                               ; preds = %.preheader27, %31
  %storemerge4651 = phi i32 [ 0, %.preheader27 ], [ %38, %31 ]
  %32 = load i32, ptr %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2048 x i8], ptr @p, i64 %33
  %35 = sext i32 %storemerge4651 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %34, i64 %35
  store i32 0, ptr %36, align 4
  %37 = load i32, ptr %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %4, align 4
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %31, label %40, !llvm.loop !17

40:                                               ; preds = %31
  %41 = load i32, ptr %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %1, align 4
  %43 = icmp slt i32 %42, 13
  br i1 %43, label %.preheader27, label %.preheader26, !llvm.loop !18

.preheader25:                                     ; preds = %.preheader26, %60
  store i32 0, ptr %2, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %56
  store i32 0, ptr %3, align 4
  br label %44

44:                                               ; preds = %.preheader24, %44
  %storemerge4552 = phi i32 [ 0, %.preheader24 ], [ %54, %44 ]
  %45 = load i32, ptr %1, align 4
  %46 = load i32, ptr %2, align 4
  %47 = shl i32 %storemerge4552, 6
  %48 = shl i32 %46, 3
  %49 = add i32 %47, %48
  %50 = add nsw i32 %45, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8], ptr @p, i64 %51
  store i32 1, ptr %52, align 4
  %53 = load i32, ptr %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %3, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %44, label %56, !llvm.loop !19

56:                                               ; preds = %44
  %57 = load i32, ptr %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %2, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %.preheader24, label %60, !llvm.loop !20

60:                                               ; preds = %56
  %61 = load i32, ptr %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %1, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %.preheader25, label %64, !llvm.loop !21

64:                                               ; preds = %60
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %.preheader23

.preheader23:                                     ; preds = %64, %81
  store i32 0, ptr %2, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %77
  store i32 0, ptr %3, align 4
  br label %65

65:                                               ; preds = %.preheader22, %65
  %storemerge4353 = phi i32 [ 0, %.preheader22 ], [ %75, %65 ]
  %66 = load i32, ptr %1, align 4
  %67 = load i32, ptr %2, align 4
  %68 = shl i32 %storemerge4353, 6
  %69 = shl i32 %67, 3
  %70 = add i32 %68, %69
  %71 = add nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %72
  store i32 1, ptr %73, align 4
  %74 = load i32, ptr %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %3, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %65, label %77, !llvm.loop !22

77:                                               ; preds = %65
  %78 = load i32, ptr %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %2, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %.preheader22, label %81, !llvm.loop !23

81:                                               ; preds = %77
  %82 = load i32, ptr %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %1, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %.preheader23, label %85, !llvm.loop !24

85:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader21

.preheader21:                                     ; preds = %85, %102
  store i32 0, ptr %2, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %98
  store i32 0, ptr %3, align 4
  br label %86

86:                                               ; preds = %.preheader20, %86
  %storemerge4154 = phi i32 [ 0, %.preheader20 ], [ %96, %86 ]
  %87 = load i32, ptr %1, align 4
  %88 = load i32, ptr %2, align 4
  %89 = shl i32 %storemerge4154, 6
  %90 = shl i32 %88, 3
  %91 = add i32 %89, %90
  %92 = add nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %93
  store i32 1, ptr %94, align 4
  %95 = load i32, ptr %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %3, align 4
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %86, label %98, !llvm.loop !25

98:                                               ; preds = %86
  %99 = load i32, ptr %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %2, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %.preheader20, label %102, !llvm.loop !26

102:                                              ; preds = %98
  %103 = load i32, ptr %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %1, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %.preheader21, label %106, !llvm.loop !27

106:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %106, %123
  store i32 0, ptr %2, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %119
  store i32 0, ptr %3, align 4
  br label %107

107:                                              ; preds = %.preheader18, %107
  %storemerge3955 = phi i32 [ 0, %.preheader18 ], [ %117, %107 ]
  %108 = load i32, ptr %1, align 4
  %109 = load i32, ptr %2, align 4
  %110 = shl i32 %storemerge3955, 6
  %111 = shl i32 %109, 3
  %112 = add i32 %110, %111
  %113 = add nsw i32 %108, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %114
  store i32 1, ptr %115, align 4
  %116 = load i32, ptr %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %3, align 4
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %107, label %119, !llvm.loop !28

119:                                              ; preds = %107
  %120 = load i32, ptr %2, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %2, align 4
  %122 = icmp slt i32 %121, 4
  br i1 %122, label %.preheader18, label %123, !llvm.loop !29

123:                                              ; preds = %119
  %124 = load i32, ptr %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %1, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %.preheader19, label %127, !llvm.loop !30

127:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader17

.preheader17:                                     ; preds = %127, %144
  store i32 0, ptr %2, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader17, %140
  store i32 0, ptr %3, align 4
  br label %128

128:                                              ; preds = %.preheader16, %128
  %storemerge3756 = phi i32 [ 0, %.preheader16 ], [ %138, %128 ]
  %129 = load i32, ptr %1, align 4
  %130 = load i32, ptr %2, align 4
  %131 = shl i32 %storemerge3756, 6
  %132 = shl i32 %130, 3
  %133 = add i32 %131, %132
  %134 = add nsw i32 %129, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %135
  store i32 1, ptr %136, align 4
  %137 = load i32, ptr %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %3, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %128, label %140, !llvm.loop !31

140:                                              ; preds = %128
  %141 = load i32, ptr %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %2, align 4
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %.preheader16, label %144, !llvm.loop !32

144:                                              ; preds = %140
  %145 = load i32, ptr %1, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %1, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %.preheader17, label %148, !llvm.loop !33

148:                                              ; preds = %144
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader15

.preheader15:                                     ; preds = %148, %165
  store i32 0, ptr %2, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %161
  store i32 0, ptr %3, align 4
  br label %149

149:                                              ; preds = %.preheader14, %149
  %storemerge3557 = phi i32 [ 0, %.preheader14 ], [ %159, %149 ]
  %150 = load i32, ptr %1, align 4
  %151 = load i32, ptr %2, align 4
  %152 = shl i32 %storemerge3557, 6
  %153 = shl i32 %151, 3
  %154 = add i32 %152, %153
  %155 = add nsw i32 %150, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %156
  store i32 1, ptr %157, align 4
  %158 = load i32, ptr %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %3, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %149, label %161, !llvm.loop !34

161:                                              ; preds = %149
  %162 = load i32, ptr %2, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %2, align 4
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %.preheader14, label %165, !llvm.loop !35

165:                                              ; preds = %161
  %166 = load i32, ptr %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %1, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %.preheader15, label %169, !llvm.loop !36

169:                                              ; preds = %165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader13

.preheader13:                                     ; preds = %169, %186
  store i32 0, ptr %2, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader13, %182
  store i32 0, ptr %3, align 4
  br label %170

170:                                              ; preds = %.preheader12, %170
  %storemerge3358 = phi i32 [ 0, %.preheader12 ], [ %180, %170 ]
  %171 = load i32, ptr %1, align 4
  %172 = load i32, ptr %2, align 4
  %173 = shl i32 %storemerge3358, 6
  %174 = shl i32 %172, 3
  %175 = add i32 %173, %174
  %176 = add nsw i32 %171, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %177
  store i32 1, ptr %178, align 4
  %179 = load i32, ptr %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %3, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %170, label %182, !llvm.loop !37

182:                                              ; preds = %170
  %183 = load i32, ptr %2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %2, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %.preheader12, label %186, !llvm.loop !38

186:                                              ; preds = %182
  %187 = load i32, ptr %1, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %1, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %.preheader13, label %190, !llvm.loop !39

190:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %190, %207
  store i32 0, ptr %2, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %203
  store i32 0, ptr %3, align 4
  br label %191

191:                                              ; preds = %.preheader10, %191
  %storemerge3159 = phi i32 [ 0, %.preheader10 ], [ %201, %191 ]
  %192 = load i32, ptr %1, align 4
  %193 = load i32, ptr %2, align 4
  %194 = shl i32 %storemerge3159, 6
  %195 = shl i32 %193, 3
  %196 = add i32 %194, %195
  %197 = add nsw i32 %192, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %198
  store i32 1, ptr %199, align 4
  %200 = load i32, ptr %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %3, align 4
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %191, label %203, !llvm.loop !40

203:                                              ; preds = %191
  %204 = load i32, ptr %2, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %2, align 4
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %.preheader10, label %207, !llvm.loop !41

207:                                              ; preds = %203
  %208 = load i32, ptr %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %1, align 4
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %.preheader11, label %211, !llvm.loop !42

211:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %211, %228
  store i32 0, ptr %2, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader9, %224
  store i32 0, ptr %3, align 4
  br label %212

212:                                              ; preds = %.preheader8, %212
  %storemerge2960 = phi i32 [ 0, %.preheader8 ], [ %222, %212 ]
  %213 = load i32, ptr %1, align 4
  %214 = load i32, ptr %2, align 4
  %215 = shl i32 %storemerge2960, 6
  %216 = shl i32 %214, 3
  %217 = add i32 %215, %216
  %218 = add nsw i32 %213, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %219
  store i32 1, ptr %220, align 4
  %221 = load i32, ptr %3, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %3, align 4
  %223 = icmp slt i32 %222, 3
  br i1 %223, label %212, label %224, !llvm.loop !43

224:                                              ; preds = %212
  %225 = load i32, ptr %2, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %2, align 4
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %.preheader8, label %228, !llvm.loop !44

228:                                              ; preds = %224
  %229 = load i32, ptr %1, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %1, align 4
  %231 = icmp slt i32 %230, 1
  br i1 %231, label %.preheader9, label %232, !llvm.loop !45

232:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader7

.preheader7:                                      ; preds = %232, %249
  store i32 0, ptr %2, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %245
  store i32 0, ptr %3, align 4
  br label %233

233:                                              ; preds = %.preheader6, %233
  %storemerge2761 = phi i32 [ 0, %.preheader6 ], [ %243, %233 ]
  %234 = load i32, ptr %1, align 4
  %235 = load i32, ptr %2, align 4
  %236 = shl i32 %storemerge2761, 6
  %237 = shl i32 %235, 3
  %238 = add i32 %236, %237
  %239 = add nsw i32 %234, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %240
  store i32 1, ptr %241, align 4
  %242 = load i32, ptr %3, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %3, align 4
  %244 = icmp slt i32 %243, 1
  br i1 %244, label %233, label %245, !llvm.loop !46

245:                                              ; preds = %233
  %246 = load i32, ptr %2, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %2, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %.preheader6, label %249, !llvm.loop !47

249:                                              ; preds = %245
  %250 = load i32, ptr %1, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %1, align 4
  %252 = icmp slt i32 %251, 2
  br i1 %252, label %.preheader7, label %253, !llvm.loop !48

253:                                              ; preds = %249
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %253, %270
  store i32 0, ptr %2, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %266
  store i32 0, ptr %3, align 4
  br label %254

254:                                              ; preds = %.preheader4, %254
  %storemerge2562 = phi i32 [ 0, %.preheader4 ], [ %264, %254 ]
  %255 = load i32, ptr %1, align 4
  %256 = load i32, ptr %2, align 4
  %257 = shl i32 %storemerge2562, 6
  %258 = shl i32 %256, 3
  %259 = add i32 %257, %258
  %260 = add nsw i32 %255, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %261
  store i32 1, ptr %262, align 4
  %263 = load i32, ptr %3, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %3, align 4
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %254, label %266, !llvm.loop !49

266:                                              ; preds = %254
  %267 = load i32, ptr %2, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %2, align 4
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %.preheader4, label %270, !llvm.loop !50

270:                                              ; preds = %266
  %271 = load i32, ptr %1, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %1, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %.preheader5, label %274, !llvm.loop !51

274:                                              ; preds = %270
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader3

.preheader3:                                      ; preds = %274, %291
  store i32 0, ptr %2, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %287
  store i32 0, ptr %3, align 4
  br label %275

275:                                              ; preds = %.preheader2, %275
  %storemerge2363 = phi i32 [ 0, %.preheader2 ], [ %285, %275 ]
  %276 = load i32, ptr %1, align 4
  %277 = load i32, ptr %2, align 4
  %278 = shl i32 %storemerge2363, 6
  %279 = shl i32 %277, 3
  %280 = add i32 %278, %279
  %281 = add nsw i32 %276, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %282
  store i32 1, ptr %283, align 4
  %284 = load i32, ptr %3, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %3, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %275, label %287, !llvm.loop !52

287:                                              ; preds = %275
  %288 = load i32, ptr %2, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %2, align 4
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %.preheader2, label %291, !llvm.loop !53

291:                                              ; preds = %287
  %292 = load i32, ptr %1, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %1, align 4
  %294 = icmp slt i32 %293, 1
  br i1 %294, label %.preheader3, label %295, !llvm.loop !54

295:                                              ; preds = %291
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader1

.preheader1:                                      ; preds = %295, %312
  store i32 0, ptr %2, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %308
  store i32 0, ptr %3, align 4
  br label %296

296:                                              ; preds = %.preheader, %296
  %storemerge2164 = phi i32 [ 0, %.preheader ], [ %306, %296 ]
  %297 = load i32, ptr %1, align 4
  %298 = load i32, ptr %2, align 4
  %299 = shl i32 %storemerge2164, 6
  %300 = shl i32 %298, 3
  %301 = add i32 %299, %300
  %302 = add nsw i32 %297, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %303
  store i32 1, ptr %304, align 4
  %305 = load i32, ptr %3, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr %3, align 4
  %307 = icmp slt i32 %306, 2
  br i1 %307, label %296, label %308, !llvm.loop !55

308:                                              ; preds = %296
  %309 = load i32, ptr %2, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, ptr %2, align 4
  %311 = icmp slt i32 %310, 2
  br i1 %311, label %.preheader, label %312, !llvm.loop !56

312:                                              ; preds = %308
  %313 = load i32, ptr %1, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, ptr %1, align 4
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %.preheader1, label %316, !llvm.loop !57

316:                                              ; preds = %312
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %317 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %317, 0
  br i1 %.not, label %321, label %318

318:                                              ; preds = %316
  %319 = load i32, ptr %4, align 4
  %320 = call i32 @Place(i32 noundef 0, i32 noundef %319)
  store i32 %320, ptr @n, align 4
  br label %322

321:                                              ; preds = %316
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %322

322:                                              ; preds = %321, %318
  %323 = load i32, ptr @n, align 4
  %324 = call i32 @Trial(i32 noundef %323)
  %.not16 = icmp eq i32 %324, 0
  br i1 %.not16, label %325, label %326

325:                                              ; preds = %322
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %329

326:                                              ; preds = %322
  %327 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %327, 2005
  br i1 %.not18, label %329, label %328

328:                                              ; preds = %326
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %329

329:                                              ; preds = %326, %328, %325
  %330 = load i32, ptr @n, align 4
  %331 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %330) #4
  %332 = load i32, ptr @kount, align 4
  %333 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %332) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  call void @Puzzle()
  %3 = load i32, ptr %1, align 4
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
