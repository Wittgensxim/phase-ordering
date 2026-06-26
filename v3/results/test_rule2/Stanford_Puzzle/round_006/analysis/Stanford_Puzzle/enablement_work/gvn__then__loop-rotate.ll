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
  br i1 %exitcond.not6, label %.loopexit.loopexit, label %.lr.ph9

.lr.ph9:                                          ; preds = %18
  br label %28

26:                                               ; preds = %28
  %indvars.iv = phi i64 [ %indvars.iv.next, %28 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  store i32 %27, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %28, !llvm.loop !10

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
  br label %.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %26
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit.loopexit ]
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

.preheader31.preheader:                           ; preds = %5
  store i32 1, ptr %1, align 4
  br label %.preheader30.preheader

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %11 = phi i32 [ 1, %.preheader31.preheader ], [ %24, %.preheader31 ]
  store i32 1, ptr %2, align 4
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  store i32 0, ptr %1, align 4
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %12 = phi i32 [ 1, %.preheader30.preheader ], [ %22, %.preheader30 ]
  store i32 1, ptr %3, align 4
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %13 = phi i32 [ 1, %.preheader29.preheader ], [ %20, %.preheader29 ]
  %14 = shl i32 %13, 6
  %15 = shl i32 %12, 3
  %16 = add i32 %14, %15
  %17 = add nsw i32 %11, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nsw i32 %13, 1
  store i32 %20, ptr %3, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %.lcssa26 = phi i32 [ %11, %.preheader29 ]
  %22 = add nsw i32 %12, 1
  store i32 %22, ptr %2, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %.lcssa27 = phi i32 [ %.lcssa26, %.preheader30 ]
  %24 = add nsw i32 %.lcssa27, 1
  store i32 %24, ptr %1, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %26 = phi i32 [ 0, %.preheader28.preheader ], [ %34, %.preheader28 ]
  store i32 0, ptr %4, align 4
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  store i32 0, ptr %1, align 4
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %27 = phi i32 [ 0, %.preheader27.preheader ], [ %32, %.preheader27 ]
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [2048 x i8], ptr @p, i64 %28
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [4 x i8], ptr %29, i64 %30
  store i32 0, ptr %31, align 4
  %32 = add nsw i32 %27, 1
  store i32 %32, ptr %4, align 4
  %33 = icmp slt i32 %32, 512
  br i1 %33, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %34 = add nsw i32 %26, 1
  store i32 %34, ptr %1, align 4
  %35 = icmp slt i32 %34, 13
  br i1 %35, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %36 = phi i32 [ 0, %.preheader26.preheader ], [ %49, %.preheader26 ]
  store i32 0, ptr %2, align 4
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %37 = phi i32 [ 0, %.preheader25.preheader ], [ %47, %.preheader25 ]
  store i32 0, ptr %3, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %38 = phi i32 [ 0, %.preheader24.preheader ], [ %45, %.preheader24 ]
  %39 = shl i32 %38, 6
  %40 = shl i32 %37, 3
  %41 = add i32 %39, %40
  %42 = add nsw i32 %36, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @p, i64 %43
  store i32 1, ptr %44, align 4
  %45 = add nsw i32 %38, 1
  store i32 %45, ptr %3, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %.lcssa24 = phi i32 [ %36, %.preheader24 ]
  %47 = add nsw i32 %37, 1
  store i32 %47, ptr %2, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %.lcssa25 = phi i32 [ %.lcssa24, %.preheader25 ]
  %49 = add nsw i32 %.lcssa25, 1
  store i32 %49, ptr %1, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %.preheader25.preheader, label %51, !llvm.loop !21

51:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %51, %65
  %52 = phi i32 [ 0, %51 ], [ %66, %65 ]
  store i32 0, ptr %2, align 4
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %53 = phi i32 [ 0, %.preheader23.preheader ], [ %63, %.preheader23 ]
  store i32 0, ptr %3, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %54 = phi i32 [ 0, %.preheader22.preheader ], [ %61, %.preheader22 ]
  %55 = shl i32 %54, 6
  %56 = shl i32 %53, 3
  %57 = add i32 %55, %56
  %58 = add nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %59
  store i32 1, ptr %60, align 4
  %61 = add nsw i32 %54, 1
  store i32 %61, ptr %3, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %.lcssa22 = phi i32 [ %52, %.preheader22 ]
  %63 = add nsw i32 %53, 1
  store i32 %63, ptr %2, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %.preheader22.preheader, label %65, !llvm.loop !23

65:                                               ; preds = %.preheader23
  %.lcssa23 = phi i32 [ %.lcssa22, %.preheader23 ]
  %66 = add nsw i32 %.lcssa23, 1
  store i32 %66, ptr %1, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %.preheader23.preheader, label %68, !llvm.loop !24

68:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %68, %82
  %69 = phi i32 [ 0, %68 ], [ %83, %82 ]
  store i32 0, ptr %2, align 4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %70 = phi i32 [ 0, %.preheader21.preheader ], [ %80, %.preheader21 ]
  store i32 0, ptr %3, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %71 = phi i32 [ 0, %.preheader20.preheader ], [ %78, %.preheader20 ]
  %72 = shl i32 %71, 6
  %73 = shl i32 %70, 3
  %74 = add i32 %72, %73
  %75 = add nsw i32 %69, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %76
  store i32 1, ptr %77, align 4
  %78 = add nsw i32 %71, 1
  store i32 %78, ptr %3, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %.lcssa20 = phi i32 [ %69, %.preheader20 ]
  %80 = add nsw i32 %70, 1
  store i32 %80, ptr %2, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %.preheader20.preheader, label %82, !llvm.loop !26

82:                                               ; preds = %.preheader21
  %.lcssa21 = phi i32 [ %.lcssa20, %.preheader21 ]
  %83 = add nsw i32 %.lcssa21, 1
  store i32 %83, ptr %1, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %.preheader21.preheader, label %85, !llvm.loop !27

85:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %85, %99
  %86 = phi i32 [ 0, %85 ], [ %100, %99 ]
  store i32 0, ptr %2, align 4
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %87 = phi i32 [ 0, %.preheader19.preheader ], [ %97, %.preheader19 ]
  store i32 0, ptr %3, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %88 = phi i32 [ 0, %.preheader18.preheader ], [ %95, %.preheader18 ]
  %89 = shl i32 %88, 6
  %90 = shl i32 %87, 3
  %91 = add i32 %89, %90
  %92 = add nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nsw i32 %88, 1
  store i32 %95, ptr %3, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %.lcssa18 = phi i32 [ %86, %.preheader18 ]
  %97 = add nsw i32 %87, 1
  store i32 %97, ptr %2, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %.preheader18.preheader, label %99, !llvm.loop !29

99:                                               ; preds = %.preheader19
  %.lcssa19 = phi i32 [ %.lcssa18, %.preheader19 ]
  %100 = add nsw i32 %.lcssa19, 1
  store i32 %100, ptr %1, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %.preheader19.preheader, label %102, !llvm.loop !30

102:                                              ; preds = %99
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %102, %116
  %103 = phi i32 [ 0, %102 ], [ %117, %116 ]
  store i32 0, ptr %2, align 4
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %104 = phi i32 [ 0, %.preheader17.preheader ], [ %114, %.preheader17 ]
  store i32 0, ptr %3, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %105 = phi i32 [ 0, %.preheader16.preheader ], [ %112, %.preheader16 ]
  %106 = shl i32 %105, 6
  %107 = shl i32 %104, 3
  %108 = add i32 %106, %107
  %109 = add nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %110
  store i32 1, ptr %111, align 4
  %112 = add nsw i32 %105, 1
  store i32 %112, ptr %3, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %.lcssa16 = phi i32 [ %103, %.preheader16 ]
  %114 = add nsw i32 %104, 1
  store i32 %114, ptr %2, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %.preheader16.preheader, label %116, !llvm.loop !32

116:                                              ; preds = %.preheader17
  %.lcssa17 = phi i32 [ %.lcssa16, %.preheader17 ]
  %117 = add nsw i32 %.lcssa17, 1
  store i32 %117, ptr %1, align 4
  %118 = icmp slt i32 %117, 4
  br i1 %118, label %.preheader17.preheader, label %119, !llvm.loop !33

119:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %119, %133
  %120 = phi i32 [ 0, %119 ], [ %134, %133 ]
  store i32 0, ptr %2, align 4
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %121 = phi i32 [ 0, %.preheader15.preheader ], [ %131, %.preheader15 ]
  store i32 0, ptr %3, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %122 = phi i32 [ 0, %.preheader14.preheader ], [ %129, %.preheader14 ]
  %123 = shl i32 %122, 6
  %124 = shl i32 %121, 3
  %125 = add i32 %123, %124
  %126 = add nsw i32 %120, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %127
  store i32 1, ptr %128, align 4
  %129 = add nsw i32 %122, 1
  store i32 %129, ptr %3, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %.lcssa14 = phi i32 [ %120, %.preheader14 ]
  %131 = add nsw i32 %121, 1
  store i32 %131, ptr %2, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %.preheader14.preheader, label %133, !llvm.loop !35

133:                                              ; preds = %.preheader15
  %.lcssa15 = phi i32 [ %.lcssa14, %.preheader15 ]
  %134 = add nsw i32 %.lcssa15, 1
  store i32 %134, ptr %1, align 4
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %.preheader15.preheader, label %136, !llvm.loop !36

136:                                              ; preds = %133
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %136, %150
  %137 = phi i32 [ 0, %136 ], [ %151, %150 ]
  store i32 0, ptr %2, align 4
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %138 = phi i32 [ 0, %.preheader13.preheader ], [ %148, %.preheader13 ]
  store i32 0, ptr %3, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %139 = phi i32 [ 0, %.preheader12.preheader ], [ %146, %.preheader12 ]
  %140 = shl i32 %139, 6
  %141 = shl i32 %138, 3
  %142 = add i32 %140, %141
  %143 = add nsw i32 %137, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %144
  store i32 1, ptr %145, align 4
  %146 = add nsw i32 %139, 1
  store i32 %146, ptr %3, align 4
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %.lcssa12 = phi i32 [ %137, %.preheader12 ]
  %148 = add nsw i32 %138, 1
  store i32 %148, ptr %2, align 4
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %.preheader12.preheader, label %150, !llvm.loop !38

150:                                              ; preds = %.preheader13
  %.lcssa13 = phi i32 [ %.lcssa12, %.preheader13 ]
  %151 = add nsw i32 %.lcssa13, 1
  store i32 %151, ptr %1, align 4
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %.preheader13.preheader, label %153, !llvm.loop !39

153:                                              ; preds = %150
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %153, %167
  %154 = phi i32 [ 0, %153 ], [ %168, %167 ]
  store i32 0, ptr %2, align 4
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %155 = phi i32 [ 0, %.preheader11.preheader ], [ %165, %.preheader11 ]
  store i32 0, ptr %3, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %156 = phi i32 [ 0, %.preheader10.preheader ], [ %163, %.preheader10 ]
  %157 = shl i32 %156, 6
  %158 = shl i32 %155, 3
  %159 = add i32 %157, %158
  %160 = add nsw i32 %154, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nsw i32 %156, 1
  store i32 %163, ptr %3, align 4
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %.lcssa10 = phi i32 [ %154, %.preheader10 ]
  %165 = add nsw i32 %155, 1
  store i32 %165, ptr %2, align 4
  %166 = icmp slt i32 %165, 3
  br i1 %166, label %.preheader10.preheader, label %167, !llvm.loop !41

167:                                              ; preds = %.preheader11
  %.lcssa11 = phi i32 [ %.lcssa10, %.preheader11 ]
  %168 = add nsw i32 %.lcssa11, 1
  store i32 %168, ptr %1, align 4
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %.preheader11.preheader, label %170, !llvm.loop !42

170:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %170, %184
  %171 = phi i32 [ 0, %170 ], [ %185, %184 ]
  store i32 0, ptr %2, align 4
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %172 = phi i32 [ 0, %.preheader9.preheader ], [ %182, %.preheader9 ]
  store i32 0, ptr %3, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %173 = phi i32 [ 0, %.preheader8.preheader ], [ %180, %.preheader8 ]
  %174 = shl i32 %173, 6
  %175 = shl i32 %172, 3
  %176 = add i32 %174, %175
  %177 = add nsw i32 %171, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %178
  store i32 1, ptr %179, align 4
  %180 = add nsw i32 %173, 1
  store i32 %180, ptr %3, align 4
  %181 = icmp slt i32 %180, 3
  br i1 %181, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %.lcssa8 = phi i32 [ %171, %.preheader8 ]
  %182 = add nsw i32 %172, 1
  store i32 %182, ptr %2, align 4
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %.preheader8.preheader, label %184, !llvm.loop !44

184:                                              ; preds = %.preheader9
  %.lcssa9 = phi i32 [ %.lcssa8, %.preheader9 ]
  %185 = add nsw i32 %.lcssa9, 1
  store i32 %185, ptr %1, align 4
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %.preheader9.preheader, label %187, !llvm.loop !45

187:                                              ; preds = %184
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %187, %201
  %188 = phi i32 [ 0, %187 ], [ %202, %201 ]
  store i32 0, ptr %2, align 4
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %189 = phi i32 [ 0, %.preheader7.preheader ], [ %199, %.preheader7 ]
  store i32 0, ptr %3, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %190 = phi i32 [ 0, %.preheader6.preheader ], [ %197, %.preheader6 ]
  %191 = shl i32 %190, 6
  %192 = shl i32 %189, 3
  %193 = add i32 %191, %192
  %194 = add nsw i32 %188, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %195
  store i32 1, ptr %196, align 4
  %197 = add nsw i32 %190, 1
  store i32 %197, ptr %3, align 4
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %.lcssa6 = phi i32 [ %188, %.preheader6 ]
  %199 = add nsw i32 %189, 1
  store i32 %199, ptr %2, align 4
  %200 = icmp slt i32 %199, 2
  br i1 %200, label %.preheader6.preheader, label %201, !llvm.loop !47

201:                                              ; preds = %.preheader7
  %.lcssa7 = phi i32 [ %.lcssa6, %.preheader7 ]
  %202 = add nsw i32 %.lcssa7, 1
  store i32 %202, ptr %1, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %.preheader7.preheader, label %204, !llvm.loop !48

204:                                              ; preds = %201
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %204, %218
  %205 = phi i32 [ 0, %204 ], [ %219, %218 ]
  store i32 0, ptr %2, align 4
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %206 = phi i32 [ 0, %.preheader5.preheader ], [ %216, %.preheader5 ]
  store i32 0, ptr %3, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %207 = phi i32 [ 0, %.preheader4.preheader ], [ %214, %.preheader4 ]
  %208 = shl i32 %207, 6
  %209 = shl i32 %206, 3
  %210 = add i32 %208, %209
  %211 = add nsw i32 %205, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %212
  store i32 1, ptr %213, align 4
  %214 = add nsw i32 %207, 1
  store i32 %214, ptr %3, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %.lcssa4 = phi i32 [ %205, %.preheader4 ]
  %216 = add nsw i32 %206, 1
  store i32 %216, ptr %2, align 4
  %217 = icmp slt i32 %216, 1
  br i1 %217, label %.preheader4.preheader, label %218, !llvm.loop !50

218:                                              ; preds = %.preheader5
  %.lcssa5 = phi i32 [ %.lcssa4, %.preheader5 ]
  %219 = add nsw i32 %.lcssa5, 1
  store i32 %219, ptr %1, align 4
  %220 = icmp slt i32 %219, 2
  br i1 %220, label %.preheader5.preheader, label %221, !llvm.loop !51

221:                                              ; preds = %218
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %221, %235
  %222 = phi i32 [ 0, %221 ], [ %236, %235 ]
  store i32 0, ptr %2, align 4
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %223 = phi i32 [ 0, %.preheader3.preheader ], [ %233, %.preheader3 ]
  store i32 0, ptr %3, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %224 = phi i32 [ 0, %.preheader2.preheader ], [ %231, %.preheader2 ]
  %225 = shl i32 %224, 6
  %226 = shl i32 %223, 3
  %227 = add i32 %225, %226
  %228 = add nsw i32 %222, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %229
  store i32 1, ptr %230, align 4
  %231 = add nsw i32 %224, 1
  store i32 %231, ptr %3, align 4
  %232 = icmp slt i32 %231, 2
  br i1 %232, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %.lcssa2 = phi i32 [ %222, %.preheader2 ]
  %233 = add nsw i32 %223, 1
  store i32 %233, ptr %2, align 4
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %.preheader2.preheader, label %235, !llvm.loop !53

235:                                              ; preds = %.preheader3
  %.lcssa3 = phi i32 [ %.lcssa2, %.preheader3 ]
  %236 = add nsw i32 %.lcssa3, 1
  store i32 %236, ptr %1, align 4
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %.preheader3.preheader, label %238, !llvm.loop !54

238:                                              ; preds = %235
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %238, %252
  %239 = phi i32 [ 0, %238 ], [ %253, %252 ]
  store i32 0, ptr %2, align 4
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %240 = phi i32 [ 0, %.preheader1.preheader ], [ %250, %.preheader1 ]
  store i32 0, ptr %3, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %241 = phi i32 [ 0, %.preheader.preheader ], [ %248, %.preheader ]
  %242 = shl i32 %241, 6
  %243 = shl i32 %240, 3
  %244 = add i32 %242, %243
  %245 = add nsw i32 %239, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %246
  store i32 1, ptr %247, align 4
  %248 = add nsw i32 %241, 1
  store i32 %248, ptr %3, align 4
  %249 = icmp slt i32 %248, 2
  br i1 %249, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %.lcssa = phi i32 [ %239, %.preheader ]
  %250 = add nsw i32 %240, 1
  store i32 %250, ptr %2, align 4
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %.preheader.preheader, label %252, !llvm.loop !56

252:                                              ; preds = %.preheader1
  %.lcssa1 = phi i32 [ %.lcssa, %.preheader1 ]
  %253 = add nsw i32 %.lcssa1, 1
  store i32 %253, ptr %1, align 4
  %254 = icmp slt i32 %253, 2
  br i1 %254, label %.preheader1.preheader, label %255, !llvm.loop !57

255:                                              ; preds = %252
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %256 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %256, 0
  br i1 %.not, label %259, label %257

257:                                              ; preds = %255
  %258 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %258, ptr @n, align 4
  br label %260

259:                                              ; preds = %255
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %260

260:                                              ; preds = %259, %257
  %261 = phi i32 [ %.pre, %259 ], [ %258, %257 ]
  %262 = call i32 @Trial(i32 noundef %261)
  %.not16 = icmp eq i32 %262, 0
  br i1 %.not16, label %263, label %264

263:                                              ; preds = %260
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %267

264:                                              ; preds = %260
  %265 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %265, 2005
  br i1 %.not18, label %267, label %266

266:                                              ; preds = %264
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %267

267:                                              ; preds = %266, %264, %263
  %268 = load i32, ptr @n, align 4
  %269 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %268) #4
  %270 = load i32, ptr @kount, align 4
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %270) #4
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
