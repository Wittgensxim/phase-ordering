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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  store i32 0, ptr %5, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %17
  %7 = phi i32 [ 0, %.lr.ph ], [ %18, %17 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %1, %7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %._crit_edge

17:                                               ; preds = %12, %6
  %18 = add nsw i32 %7, 1
  store i32 %18, ptr %5, align 4
  %.not = icmp sgt i32 %18, %.pre
  br i1 %.not, label %._crit_edge5, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  %split = phi i32 [ 0, %12 ]
  br label %19

._crit_edge5:                                     ; preds = %17
  %split6 = phi i32 [ 1, %17 ]
  br label %19

19:                                               ; preds = %._crit_edge5, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split6, %._crit_edge5 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  store i32 0, ptr %5, align 4
  %.not5 = icmp sgt i32 0, %.pre
  br i1 %.not5, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %7 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %1, %7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = add nsw i32 %7, 1
  store i32 %17, ptr %5, align 4
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  store i32 %1, ptr %5, align 4
  %exitcond.not6 = icmp eq i64 %25, %wide.trip.count
  br i1 %exitcond.not6, label %.loopexit, label %.lr.ph9

.lr.ph9:                                          ; preds = %18
  br label %28

26:                                               ; preds = %28
  %indvars.iv = phi i64 [ %indvars.iv.next, %28 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  store i32 %27, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %28, !llvm.loop !10

28:                                               ; preds = %.lr.ph9, %26
  %29 = phi i32 [ %1, %.lr.ph9 ], [ %27, %26 ]
  %indvars.iv7 = phi i64 [ %25, %.lr.ph9 ], [ %indvars.iv, %26 ]
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv7
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  %indvars.iv.next = add nsw i64 %indvars.iv7, 1
  br i1 %.not3, label %32, label %26

32:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %29, %28 ]
  br label %33

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %18
  br label %33

33:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  store i32 0, ptr %5, align 4
  %.not2 = icmp sgt i32 0, %.pre
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %7 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %6
  %13 = add nsw i32 %1, %7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = add nsw i32 %7, 1
  store i32 %17, ptr %5, align 4
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  store i32 0, ptr %3, align 4
  br label %6

6:                                                ; preds = %1, %22
  %7 = phi i32 [ 0, %1 ], [ %24, %22 ]
  %8 = phi i32 [ %0, %1 ], [ %23, %22 ]
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %22, label %15

15:                                               ; preds = %6
  %16 = call i32 @Fit(i32 noundef %7, i32 noundef %8)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %15
  %18 = call i32 @Place(i32 noundef %7, i32 noundef %8)
  %19 = call i32 @Trial(i32 noundef %18)
  %.not3 = icmp ne i32 %19, 0
  %20 = icmp eq i32 %18, 0
  %or.cond = or i1 %.not3, %20
  br i1 %or.cond, label %26, label %21

21:                                               ; preds = %17
  call void @Remove(i32 noundef %7, i32 noundef %0)
  br label %22

22:                                               ; preds = %21, %15, %6
  %23 = phi i32 [ %0, %21 ], [ %8, %15 ], [ %8, %6 ]
  %24 = add nsw i32 %7, 1
  store i32 %24, ptr %3, align 4
  %25 = icmp slt i32 %24, 13
  br i1 %25, label %6, label %26, !llvm.loop !12

26:                                               ; preds = %17, %22
  %storemerge1 = phi i32 [ 1, %17 ], [ 0, %22 ]
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
  %.lcssa26 = phi i32 [ %11, %13 ]
  %24 = add nsw i32 %12, 1
  store i32 %24, ptr %2, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %.preheader29, label %26, !llvm.loop !15

26:                                               ; preds = %23
  %.lcssa27 = phi i32 [ %.lcssa26, %23 ]
  %27 = add nsw i32 %.lcssa27, 1
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

.preheader25:                                     ; preds = %.preheader26, %56
  %41 = phi i32 [ 0, %.preheader26 ], [ %57, %56 ]
  store i32 0, ptr %2, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %53
  %42 = phi i32 [ 0, %.preheader25 ], [ %54, %53 ]
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %.preheader24, %43
  %44 = phi i32 [ 0, %.preheader24 ], [ %51, %43 ]
  %45 = shl i32 %44, 6
  %46 = shl i32 %42, 3
  %47 = add i32 %45, %46
  %48 = add nsw i32 %41, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nsw i32 %44, 1
  store i32 %51, ptr %3, align 4
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %43, label %53, !llvm.loop !19

53:                                               ; preds = %43
  %.lcssa24 = phi i32 [ %41, %43 ]
  %54 = add nsw i32 %42, 1
  store i32 %54, ptr %2, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %.preheader24, label %56, !llvm.loop !20

56:                                               ; preds = %53
  %.lcssa25 = phi i32 [ %.lcssa24, %53 ]
  %57 = add nsw i32 %.lcssa25, 1
  store i32 %57, ptr %1, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %.preheader25, label %59, !llvm.loop !21

59:                                               ; preds = %56
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %.preheader23

.preheader23:                                     ; preds = %59, %75
  %60 = phi i32 [ 0, %59 ], [ %76, %75 ]
  store i32 0, ptr %2, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %72
  %61 = phi i32 [ 0, %.preheader23 ], [ %73, %72 ]
  store i32 0, ptr %3, align 4
  br label %62

62:                                               ; preds = %.preheader22, %62
  %63 = phi i32 [ 0, %.preheader22 ], [ %70, %62 ]
  %64 = shl i32 %63, 6
  %65 = shl i32 %61, 3
  %66 = add i32 %64, %65
  %67 = add nsw i32 %60, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %63, 1
  store i32 %70, ptr %3, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %62, label %72, !llvm.loop !22

72:                                               ; preds = %62
  %.lcssa22 = phi i32 [ %60, %62 ]
  %73 = add nsw i32 %61, 1
  store i32 %73, ptr %2, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %.preheader22, label %75, !llvm.loop !23

75:                                               ; preds = %72
  %.lcssa23 = phi i32 [ %.lcssa22, %72 ]
  %76 = add nsw i32 %.lcssa23, 1
  store i32 %76, ptr %1, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %.preheader23, label %78, !llvm.loop !24

78:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader21

.preheader21:                                     ; preds = %78, %94
  %79 = phi i32 [ 0, %78 ], [ %95, %94 ]
  store i32 0, ptr %2, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %91
  %80 = phi i32 [ 0, %.preheader21 ], [ %92, %91 ]
  store i32 0, ptr %3, align 4
  br label %81

81:                                               ; preds = %.preheader20, %81
  %82 = phi i32 [ 0, %.preheader20 ], [ %89, %81 ]
  %83 = shl i32 %82, 6
  %84 = shl i32 %80, 3
  %85 = add i32 %83, %84
  %86 = add nsw i32 %79, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %87
  store i32 1, ptr %88, align 4
  %89 = add nsw i32 %82, 1
  store i32 %89, ptr %3, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %81, label %91, !llvm.loop !25

91:                                               ; preds = %81
  %.lcssa20 = phi i32 [ %79, %81 ]
  %92 = add nsw i32 %80, 1
  store i32 %92, ptr %2, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %.preheader20, label %94, !llvm.loop !26

94:                                               ; preds = %91
  %.lcssa21 = phi i32 [ %.lcssa20, %91 ]
  %95 = add nsw i32 %.lcssa21, 1
  store i32 %95, ptr %1, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %.preheader21, label %97, !llvm.loop !27

97:                                               ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %97, %113
  %98 = phi i32 [ 0, %97 ], [ %114, %113 ]
  store i32 0, ptr %2, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %110
  %99 = phi i32 [ 0, %.preheader19 ], [ %111, %110 ]
  store i32 0, ptr %3, align 4
  br label %100

100:                                              ; preds = %.preheader18, %100
  %101 = phi i32 [ 0, %.preheader18 ], [ %108, %100 ]
  %102 = shl i32 %101, 6
  %103 = shl i32 %99, 3
  %104 = add i32 %102, %103
  %105 = add nsw i32 %98, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %106
  store i32 1, ptr %107, align 4
  %108 = add nsw i32 %101, 1
  store i32 %108, ptr %3, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %100, label %110, !llvm.loop !28

110:                                              ; preds = %100
  %.lcssa18 = phi i32 [ %98, %100 ]
  %111 = add nsw i32 %99, 1
  store i32 %111, ptr %2, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %.preheader18, label %113, !llvm.loop !29

113:                                              ; preds = %110
  %.lcssa19 = phi i32 [ %.lcssa18, %110 ]
  %114 = add nsw i32 %.lcssa19, 1
  store i32 %114, ptr %1, align 4
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %.preheader19, label %116, !llvm.loop !30

116:                                              ; preds = %113
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader17

.preheader17:                                     ; preds = %116, %132
  %117 = phi i32 [ 0, %116 ], [ %133, %132 ]
  store i32 0, ptr %2, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader17, %129
  %118 = phi i32 [ 0, %.preheader17 ], [ %130, %129 ]
  store i32 0, ptr %3, align 4
  br label %119

119:                                              ; preds = %.preheader16, %119
  %120 = phi i32 [ 0, %.preheader16 ], [ %127, %119 ]
  %121 = shl i32 %120, 6
  %122 = shl i32 %118, 3
  %123 = add i32 %121, %122
  %124 = add nsw i32 %117, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nsw i32 %120, 1
  store i32 %127, ptr %3, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %119, label %129, !llvm.loop !31

129:                                              ; preds = %119
  %.lcssa16 = phi i32 [ %117, %119 ]
  %130 = add nsw i32 %118, 1
  store i32 %130, ptr %2, align 4
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %.preheader16, label %132, !llvm.loop !32

132:                                              ; preds = %129
  %.lcssa17 = phi i32 [ %.lcssa16, %129 ]
  %133 = add nsw i32 %.lcssa17, 1
  store i32 %133, ptr %1, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %.preheader17, label %135, !llvm.loop !33

135:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader15

.preheader15:                                     ; preds = %135, %151
  %136 = phi i32 [ 0, %135 ], [ %152, %151 ]
  store i32 0, ptr %2, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %148
  %137 = phi i32 [ 0, %.preheader15 ], [ %149, %148 ]
  store i32 0, ptr %3, align 4
  br label %138

138:                                              ; preds = %.preheader14, %138
  %139 = phi i32 [ 0, %.preheader14 ], [ %146, %138 ]
  %140 = shl i32 %139, 6
  %141 = shl i32 %137, 3
  %142 = add i32 %140, %141
  %143 = add nsw i32 %136, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %144
  store i32 1, ptr %145, align 4
  %146 = add nsw i32 %139, 1
  store i32 %146, ptr %3, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %138, label %148, !llvm.loop !34

148:                                              ; preds = %138
  %.lcssa14 = phi i32 [ %136, %138 ]
  %149 = add nsw i32 %137, 1
  store i32 %149, ptr %2, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %.preheader14, label %151, !llvm.loop !35

151:                                              ; preds = %148
  %.lcssa15 = phi i32 [ %.lcssa14, %148 ]
  %152 = add nsw i32 %.lcssa15, 1
  store i32 %152, ptr %1, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %.preheader15, label %154, !llvm.loop !36

154:                                              ; preds = %151
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader13

.preheader13:                                     ; preds = %154, %170
  %155 = phi i32 [ 0, %154 ], [ %171, %170 ]
  store i32 0, ptr %2, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader13, %167
  %156 = phi i32 [ 0, %.preheader13 ], [ %168, %167 ]
  store i32 0, ptr %3, align 4
  br label %157

157:                                              ; preds = %.preheader12, %157
  %158 = phi i32 [ 0, %.preheader12 ], [ %165, %157 ]
  %159 = shl i32 %158, 6
  %160 = shl i32 %156, 3
  %161 = add i32 %159, %160
  %162 = add nsw i32 %155, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nsw i32 %158, 1
  store i32 %165, ptr %3, align 4
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %157, label %167, !llvm.loop !37

167:                                              ; preds = %157
  %.lcssa12 = phi i32 [ %155, %157 ]
  %168 = add nsw i32 %156, 1
  store i32 %168, ptr %2, align 4
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %.preheader12, label %170, !llvm.loop !38

170:                                              ; preds = %167
  %.lcssa13 = phi i32 [ %.lcssa12, %167 ]
  %171 = add nsw i32 %.lcssa13, 1
  store i32 %171, ptr %1, align 4
  %172 = icmp slt i32 %171, 3
  br i1 %172, label %.preheader13, label %173, !llvm.loop !39

173:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %173, %189
  %174 = phi i32 [ 0, %173 ], [ %190, %189 ]
  store i32 0, ptr %2, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %186
  %175 = phi i32 [ 0, %.preheader11 ], [ %187, %186 ]
  store i32 0, ptr %3, align 4
  br label %176

176:                                              ; preds = %.preheader10, %176
  %177 = phi i32 [ 0, %.preheader10 ], [ %184, %176 ]
  %178 = shl i32 %177, 6
  %179 = shl i32 %175, 3
  %180 = add i32 %178, %179
  %181 = add nsw i32 %174, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %182
  store i32 1, ptr %183, align 4
  %184 = add nsw i32 %177, 1
  store i32 %184, ptr %3, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %176, label %186, !llvm.loop !40

186:                                              ; preds = %176
  %.lcssa10 = phi i32 [ %174, %176 ]
  %187 = add nsw i32 %175, 1
  store i32 %187, ptr %2, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %.preheader10, label %189, !llvm.loop !41

189:                                              ; preds = %186
  %.lcssa11 = phi i32 [ %.lcssa10, %186 ]
  %190 = add nsw i32 %.lcssa11, 1
  store i32 %190, ptr %1, align 4
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %.preheader11, label %192, !llvm.loop !42

192:                                              ; preds = %189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %192, %208
  %193 = phi i32 [ 0, %192 ], [ %209, %208 ]
  store i32 0, ptr %2, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader9, %205
  %194 = phi i32 [ 0, %.preheader9 ], [ %206, %205 ]
  store i32 0, ptr %3, align 4
  br label %195

195:                                              ; preds = %.preheader8, %195
  %196 = phi i32 [ 0, %.preheader8 ], [ %203, %195 ]
  %197 = shl i32 %196, 6
  %198 = shl i32 %194, 3
  %199 = add i32 %197, %198
  %200 = add nsw i32 %193, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %201
  store i32 1, ptr %202, align 4
  %203 = add nsw i32 %196, 1
  store i32 %203, ptr %3, align 4
  %204 = icmp slt i32 %203, 3
  br i1 %204, label %195, label %205, !llvm.loop !43

205:                                              ; preds = %195
  %.lcssa8 = phi i32 [ %193, %195 ]
  %206 = add nsw i32 %194, 1
  store i32 %206, ptr %2, align 4
  %207 = icmp slt i32 %206, 1
  br i1 %207, label %.preheader8, label %208, !llvm.loop !44

208:                                              ; preds = %205
  %.lcssa9 = phi i32 [ %.lcssa8, %205 ]
  %209 = add nsw i32 %.lcssa9, 1
  store i32 %209, ptr %1, align 4
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %.preheader9, label %211, !llvm.loop !45

211:                                              ; preds = %208
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader7

.preheader7:                                      ; preds = %211, %227
  %212 = phi i32 [ 0, %211 ], [ %228, %227 ]
  store i32 0, ptr %2, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %224
  %213 = phi i32 [ 0, %.preheader7 ], [ %225, %224 ]
  store i32 0, ptr %3, align 4
  br label %214

214:                                              ; preds = %.preheader6, %214
  %215 = phi i32 [ 0, %.preheader6 ], [ %222, %214 ]
  %216 = shl i32 %215, 6
  %217 = shl i32 %213, 3
  %218 = add i32 %216, %217
  %219 = add nsw i32 %212, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %220
  store i32 1, ptr %221, align 4
  %222 = add nsw i32 %215, 1
  store i32 %222, ptr %3, align 4
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %214, label %224, !llvm.loop !46

224:                                              ; preds = %214
  %.lcssa6 = phi i32 [ %212, %214 ]
  %225 = add nsw i32 %213, 1
  store i32 %225, ptr %2, align 4
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %.preheader6, label %227, !llvm.loop !47

227:                                              ; preds = %224
  %.lcssa7 = phi i32 [ %.lcssa6, %224 ]
  %228 = add nsw i32 %.lcssa7, 1
  store i32 %228, ptr %1, align 4
  %229 = icmp slt i32 %228, 2
  br i1 %229, label %.preheader7, label %230, !llvm.loop !48

230:                                              ; preds = %227
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %230, %246
  %231 = phi i32 [ 0, %230 ], [ %247, %246 ]
  store i32 0, ptr %2, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %243
  %232 = phi i32 [ 0, %.preheader5 ], [ %244, %243 ]
  store i32 0, ptr %3, align 4
  br label %233

233:                                              ; preds = %.preheader4, %233
  %234 = phi i32 [ 0, %.preheader4 ], [ %241, %233 ]
  %235 = shl i32 %234, 6
  %236 = shl i32 %232, 3
  %237 = add i32 %235, %236
  %238 = add nsw i32 %231, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %239
  store i32 1, ptr %240, align 4
  %241 = add nsw i32 %234, 1
  store i32 %241, ptr %3, align 4
  %242 = icmp slt i32 %241, 2
  br i1 %242, label %233, label %243, !llvm.loop !49

243:                                              ; preds = %233
  %.lcssa4 = phi i32 [ %231, %233 ]
  %244 = add nsw i32 %232, 1
  store i32 %244, ptr %2, align 4
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %.preheader4, label %246, !llvm.loop !50

246:                                              ; preds = %243
  %.lcssa5 = phi i32 [ %.lcssa4, %243 ]
  %247 = add nsw i32 %.lcssa5, 1
  store i32 %247, ptr %1, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %.preheader5, label %249, !llvm.loop !51

249:                                              ; preds = %246
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader3

.preheader3:                                      ; preds = %249, %265
  %250 = phi i32 [ 0, %249 ], [ %266, %265 ]
  store i32 0, ptr %2, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %262
  %251 = phi i32 [ 0, %.preheader3 ], [ %263, %262 ]
  store i32 0, ptr %3, align 4
  br label %252

252:                                              ; preds = %.preheader2, %252
  %253 = phi i32 [ 0, %.preheader2 ], [ %260, %252 ]
  %254 = shl i32 %253, 6
  %255 = shl i32 %251, 3
  %256 = add i32 %254, %255
  %257 = add nsw i32 %250, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %258
  store i32 1, ptr %259, align 4
  %260 = add nsw i32 %253, 1
  store i32 %260, ptr %3, align 4
  %261 = icmp slt i32 %260, 2
  br i1 %261, label %252, label %262, !llvm.loop !52

262:                                              ; preds = %252
  %.lcssa2 = phi i32 [ %250, %252 ]
  %263 = add nsw i32 %251, 1
  store i32 %263, ptr %2, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %.preheader2, label %265, !llvm.loop !53

265:                                              ; preds = %262
  %.lcssa3 = phi i32 [ %.lcssa2, %262 ]
  %266 = add nsw i32 %.lcssa3, 1
  store i32 %266, ptr %1, align 4
  %267 = icmp slt i32 %266, 1
  br i1 %267, label %.preheader3, label %268, !llvm.loop !54

268:                                              ; preds = %265
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader1

.preheader1:                                      ; preds = %268, %284
  %269 = phi i32 [ 0, %268 ], [ %285, %284 ]
  store i32 0, ptr %2, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %281
  %270 = phi i32 [ 0, %.preheader1 ], [ %282, %281 ]
  store i32 0, ptr %3, align 4
  br label %271

271:                                              ; preds = %.preheader, %271
  %272 = phi i32 [ 0, %.preheader ], [ %279, %271 ]
  %273 = shl i32 %272, 6
  %274 = shl i32 %270, 3
  %275 = add i32 %273, %274
  %276 = add nsw i32 %269, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %277
  store i32 1, ptr %278, align 4
  %279 = add nsw i32 %272, 1
  store i32 %279, ptr %3, align 4
  %280 = icmp slt i32 %279, 2
  br i1 %280, label %271, label %281, !llvm.loop !55

281:                                              ; preds = %271
  %.lcssa = phi i32 [ %269, %271 ]
  %282 = add nsw i32 %270, 1
  store i32 %282, ptr %2, align 4
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %.preheader, label %284, !llvm.loop !56

284:                                              ; preds = %281
  %.lcssa1 = phi i32 [ %.lcssa, %281 ]
  %285 = add nsw i32 %.lcssa1, 1
  store i32 %285, ptr %1, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %.preheader1, label %287, !llvm.loop !57

287:                                              ; preds = %284
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %288 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %288, 0
  br i1 %.not, label %291, label %289

289:                                              ; preds = %287
  %290 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %290, ptr @n, align 4
  br label %292

291:                                              ; preds = %287
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %292

292:                                              ; preds = %291, %289
  %293 = phi i32 [ %.pre, %291 ], [ %290, %289 ]
  %294 = call i32 @Trial(i32 noundef %293)
  %.not16 = icmp eq i32 %294, 0
  br i1 %.not16, label %295, label %296

295:                                              ; preds = %292
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %299

296:                                              ; preds = %292
  %297 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %297, 2005
  br i1 %.not18, label %299, label %298

298:                                              ; preds = %296
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %299

299:                                              ; preds = %298, %296, %295
  %300 = load i32, ptr @n, align 4
  %301 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %300) #4
  %302 = load i32, ptr @kount, align 4
  %303 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %302) #4
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
