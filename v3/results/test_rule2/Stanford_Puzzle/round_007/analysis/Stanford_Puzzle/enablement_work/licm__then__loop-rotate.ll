; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_006\output.ll'
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %22, %21 ]
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  %20 = load i32, ptr %19, align 4
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %21, label %._crit_edge

21:                                               ; preds = %16, %12
  %22 = add nsw i32 %storemerge2, 1
  %.not = icmp sgt i32 %22, %9
  br i1 %.not, label %._crit_edge4, label %12, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  %split = phi i32 [ %storemerge2, %16 ]
  %split3 = phi i32 [ 0, %16 ]
  br label %23

._crit_edge4:                                     ; preds = %21
  %split5 = phi i32 [ %22, %21 ]
  %split6 = phi i32 [ 1, %21 ]
  br label %23

23:                                               ; preds = %._crit_edge4, %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ %split5, %._crit_edge4 ], [ 0, %2 ]
  %storemerge1 = phi i32 [ %split3, %._crit_edge ], [ %split6, %._crit_edge4 ], [ 1, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not5 = icmp sgt i32 0, %9
  br i1 %.not5, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %20
  %storemerge6 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %13 = sext i32 %storemerge6 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = add nsw i32 %storemerge6, 1
  %.not = icmp sgt i32 %21, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %21, %20 ]
  %split7 = phi i64 [ %7, %20 ]
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split7, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %23 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %smax = call i32 @llvm.smax.i32(i32 %29, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not8 = icmp eq i64 %30, %wide.trip.count
  br i1 %exitcond.not8, label %.loopexit.loopexit, label %.lr.ph11

.lr.ph11:                                         ; preds = %22
  br label %31

31:                                               ; preds = %.lr.ph11, %37
  %32 = phi i32 [ %29, %.lr.ph11 ], [ %38, %37 ]
  %indvars.iv9 = phi i64 [ %30, %.lr.ph11 ], [ %indvars.iv.next, %37 ]
  %33 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv9
  %34 = load i32, ptr %33, align 4
  %.not3 = icmp eq i32 %34, 0
  br i1 %.not3, label %35, label %37

35:                                               ; preds = %31
  %.lcssa2 = phi i32 [ %32, %31 ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv9, %31 ]
  store i32 %.lcssa2, ptr %5, align 4
  %36 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

37:                                               ; preds = %31
  %indvars.iv.next = add nsw i64 %indvars.iv9, 1
  %38 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %31, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %37
  %split12 = phi i32 [ %38, %37 ]
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %22
  %.lcssa1 = phi i32 [ %split12, %..loopexit.loopexit_crit_edge ], [ %29, %22 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %35
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %20
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %21, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !11

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %21, %20 ]
  %split4 = phi i64 [ %7, %20 ]
  br label %22

22:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split4, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %23 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4
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
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  br label %9

9:                                                ; preds = %1, %23
  %storemerge2 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %10 = sext i32 %storemerge2 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %23, label %16

16:                                               ; preds = %9
  %17 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %6)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %23, label %18

18:                                               ; preds = %16
  %19 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %7)
  %20 = call i32 @Trial(i32 noundef %19)
  %.not3 = icmp ne i32 %20, 0
  %21 = icmp eq i32 %19, 0
  %or.cond = or i1 %.not3, %21
  br i1 %or.cond, label %26, label %22

22:                                               ; preds = %18
  call void @Remove(i32 noundef %storemerge2, i32 noundef %8)
  br label %23

23:                                               ; preds = %22, %16, %9
  %24 = add nsw i32 %storemerge2, 1
  %25 = icmp slt i32 %24, 13
  br i1 %25, label %9, label %26, !llvm.loop !12

26:                                               ; preds = %18, %23
  %storemerge.lcssa = phi i32 [ %storemerge2, %18 ], [ %24, %23 ]
  %storemerge1 = phi i32 [ 1, %18 ], [ 0, %23 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

.preheader31.preheader:                           ; preds = %5
  %storemerge.lcssa = phi i32 [ %8, %5 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %.preheader30.preheader

5:                                                ; preds = %0, %5
  %storemerge70 = phi i32 [ 0, %0 ], [ %8, %5 ]
  %6 = sext i32 %storemerge70 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = add nsw i32 %storemerge70, 1
  %9 = icmp slt i32 %8, 512
  br i1 %9, label %5, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %storemerge173 = phi i32 [ 1, %.preheader31.preheader ], [ %18, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa, %.preheader31 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa, %.preheader31 ]
  %storemerge1.lcssa = phi i32 [ %18, %.preheader31 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge4772 = phi i32 [ 1, %.preheader30.preheader ], [ %16, %.preheader30 ]
  %10 = shl i32 %storemerge4772, 3
  %invariant.op = add i32 %10, %storemerge173
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge4871 = phi i32 [ 1, %.preheader29.preheader ], [ %14, %.preheader29 ]
  %11 = shl i32 %storemerge4871, 6
  %.reass = add i32 %11, %invariant.op
  %12 = sext i32 %.reass to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  %14 = add nsw i32 %storemerge4871, 1
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %storemerge48.lcssa = phi i32 [ %14, %.preheader29 ]
  %16 = add nsw i32 %storemerge4772, 1
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa, %.preheader30 ]
  %storemerge47.lcssa = phi i32 [ %16, %.preheader30 ]
  %18 = add nsw i32 %storemerge173, 1
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge275 = phi i32 [ 0, %.preheader28.preheader ], [ %26, %.preheader28 ]
  %20 = sext i32 %storemerge275 to i64
  %21 = getelementptr inbounds [2048 x i8], ptr @p, i64 %20
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa, %.preheader28 ]
  %storemerge2.lcssa = phi i32 [ %26, %.preheader28 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge4674 = phi i32 [ 0, %.preheader27.preheader ], [ %24, %.preheader27 ]
  %22 = sext i32 %storemerge4674 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %21, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %storemerge4674, 1
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %storemerge46.lcssa = phi i32 [ %24, %.preheader27 ]
  %26 = add nsw i32 %storemerge275, 1
  %27 = icmp slt i32 %26, 13
  br i1 %27, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %storemerge378 = phi i32 [ 0, %.preheader26.preheader ], [ %36, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4477 = phi i32 [ 0, %.preheader25.preheader ], [ %34, %.preheader25 ]
  %28 = shl i32 %storemerge4477, 3
  %invariant.op5 = add i32 %28, %storemerge378
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %storemerge4576 = phi i32 [ 0, %.preheader24.preheader ], [ %32, %.preheader24 ]
  %29 = shl i32 %storemerge4576, 6
  %.reass6 = add i32 %29, %invariant.op5
  %30 = sext i32 %.reass6 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @p, i64 %30
  store i32 1, ptr %31, align 4
  %32 = add nsw i32 %storemerge4576, 1
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %storemerge45.lcssa = phi i32 [ %32, %.preheader24 ]
  %34 = add nsw i32 %storemerge4477, 1
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa, %.preheader25 ]
  %storemerge44.lcssa = phi i32 [ %34, %.preheader25 ]
  %36 = add nsw i32 %storemerge378, 1
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %.preheader25.preheader, label %38, !llvm.loop !21

38:                                               ; preds = %.preheader26
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa, %.preheader26 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa, %.preheader26 ]
  %storemerge3.lcssa = phi i32 [ %36, %.preheader26 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %38, %47
  %storemerge481 = phi i32 [ 0, %38 ], [ %48, %47 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %storemerge4280 = phi i32 [ 0, %.preheader23.preheader ], [ %45, %.preheader23 ]
  %39 = shl i32 %storemerge4280, 3
  %invariant.op10 = add i32 %39, %storemerge481
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4379 = phi i32 [ 0, %.preheader22.preheader ], [ %43, %.preheader22 ]
  %40 = shl i32 %storemerge4379, 6
  %.reass11 = add i32 %40, %invariant.op10
  %41 = sext i32 %.reass11 to i64
  %42 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %41
  store i32 1, ptr %42, align 4
  %43 = add nsw i32 %storemerge4379, 1
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %storemerge43.lcssa = phi i32 [ %43, %.preheader22 ]
  %45 = add nsw i32 %storemerge4280, 1
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %.preheader22.preheader, label %47, !llvm.loop !23

47:                                               ; preds = %.preheader23
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa, %.preheader23 ]
  %storemerge42.lcssa = phi i32 [ %45, %.preheader23 ]
  %48 = add nsw i32 %storemerge481, 1
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %.preheader23.preheader, label %50, !llvm.loop !24

50:                                               ; preds = %47
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa, %47 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa, %47 ]
  %storemerge4.lcssa = phi i32 [ %48, %47 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %50, %59
  %storemerge584 = phi i32 [ 0, %50 ], [ %60, %59 ]
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4083 = phi i32 [ 0, %.preheader21.preheader ], [ %57, %.preheader21 ]
  %51 = shl i32 %storemerge4083, 3
  %invariant.op15 = add i32 %51, %storemerge584
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4182 = phi i32 [ 0, %.preheader20.preheader ], [ %55, %.preheader20 ]
  %52 = shl i32 %storemerge4182, 6
  %.reass16 = add i32 %52, %invariant.op15
  %53 = sext i32 %.reass16 to i64
  %54 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %53
  store i32 1, ptr %54, align 4
  %55 = add nsw i32 %storemerge4182, 1
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %storemerge41.lcssa = phi i32 [ %55, %.preheader20 ]
  %57 = add nsw i32 %storemerge4083, 1
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %.preheader20.preheader, label %59, !llvm.loop !26

59:                                               ; preds = %.preheader21
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa, %.preheader21 ]
  %storemerge40.lcssa = phi i32 [ %57, %.preheader21 ]
  %60 = add nsw i32 %storemerge584, 1
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %.preheader21.preheader, label %62, !llvm.loop !27

62:                                               ; preds = %59
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa, %59 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa, %59 ]
  %storemerge5.lcssa = phi i32 [ %60, %59 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %62, %71
  %storemerge687 = phi i32 [ 0, %62 ], [ %72, %71 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3886 = phi i32 [ 0, %.preheader19.preheader ], [ %69, %.preheader19 ]
  %63 = shl i32 %storemerge3886, 3
  %invariant.op20 = add i32 %63, %storemerge687
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %storemerge3985 = phi i32 [ 0, %.preheader18.preheader ], [ %67, %.preheader18 ]
  %64 = shl i32 %storemerge3985, 6
  %.reass21 = add i32 %64, %invariant.op20
  %65 = sext i32 %.reass21 to i64
  %66 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nsw i32 %storemerge3985, 1
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %storemerge39.lcssa = phi i32 [ %67, %.preheader18 ]
  %69 = add nsw i32 %storemerge3886, 1
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %.preheader18.preheader, label %71, !llvm.loop !29

71:                                               ; preds = %.preheader19
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa, %.preheader19 ]
  %storemerge38.lcssa = phi i32 [ %69, %.preheader19 ]
  %72 = add nsw i32 %storemerge687, 1
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %.preheader19.preheader, label %74, !llvm.loop !30

74:                                               ; preds = %71
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa, %71 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa, %71 ]
  %storemerge6.lcssa = phi i32 [ %72, %71 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %74, %83
  %storemerge790 = phi i32 [ 0, %74 ], [ %84, %83 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %storemerge3689 = phi i32 [ 0, %.preheader17.preheader ], [ %81, %.preheader17 ]
  %75 = shl i32 %storemerge3689, 3
  %invariant.op25 = add i32 %75, %storemerge790
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3788 = phi i32 [ 0, %.preheader16.preheader ], [ %79, %.preheader16 ]
  %76 = shl i32 %storemerge3788, 6
  %.reass26 = add i32 %76, %invariant.op25
  %77 = sext i32 %.reass26 to i64
  %78 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %77
  store i32 1, ptr %78, align 4
  %79 = add nsw i32 %storemerge3788, 1
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %storemerge37.lcssa = phi i32 [ %79, %.preheader16 ]
  %81 = add nsw i32 %storemerge3689, 1
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %.preheader16.preheader, label %83, !llvm.loop !32

83:                                               ; preds = %.preheader17
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa, %.preheader17 ]
  %storemerge36.lcssa = phi i32 [ %81, %.preheader17 ]
  %84 = add nsw i32 %storemerge790, 1
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %.preheader17.preheader, label %86, !llvm.loop !33

86:                                               ; preds = %83
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa, %83 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa, %83 ]
  %storemerge7.lcssa = phi i32 [ %84, %83 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %86, %95
  %storemerge893 = phi i32 [ 0, %86 ], [ %96, %95 ]
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3492 = phi i32 [ 0, %.preheader15.preheader ], [ %93, %.preheader15 ]
  %87 = shl i32 %storemerge3492, 3
  %invariant.op30 = add i32 %87, %storemerge893
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3591 = phi i32 [ 0, %.preheader14.preheader ], [ %91, %.preheader14 ]
  %88 = shl i32 %storemerge3591, 6
  %.reass31 = add i32 %88, %invariant.op30
  %89 = sext i32 %.reass31 to i64
  %90 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nsw i32 %storemerge3591, 1
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %storemerge35.lcssa = phi i32 [ %91, %.preheader14 ]
  %93 = add nsw i32 %storemerge3492, 1
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %.preheader14.preheader, label %95, !llvm.loop !35

95:                                               ; preds = %.preheader15
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa, %.preheader15 ]
  %storemerge34.lcssa = phi i32 [ %93, %.preheader15 ]
  %96 = add nsw i32 %storemerge893, 1
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %.preheader15.preheader, label %98, !llvm.loop !36

98:                                               ; preds = %95
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa, %95 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa, %95 ]
  %storemerge8.lcssa = phi i32 [ %96, %95 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %98, %107
  %storemerge996 = phi i32 [ 0, %98 ], [ %108, %107 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %storemerge3295 = phi i32 [ 0, %.preheader13.preheader ], [ %105, %.preheader13 ]
  %99 = shl i32 %storemerge3295, 3
  %invariant.op35 = add i32 %99, %storemerge996
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %storemerge3394 = phi i32 [ 0, %.preheader12.preheader ], [ %103, %.preheader12 ]
  %100 = shl i32 %storemerge3394, 6
  %.reass36 = add i32 %100, %invariant.op35
  %101 = sext i32 %.reass36 to i64
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nsw i32 %storemerge3394, 1
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %storemerge33.lcssa = phi i32 [ %103, %.preheader12 ]
  %105 = add nsw i32 %storemerge3295, 1
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %.preheader12.preheader, label %107, !llvm.loop !38

107:                                              ; preds = %.preheader13
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa, %.preheader13 ]
  %storemerge32.lcssa = phi i32 [ %105, %.preheader13 ]
  %108 = add nsw i32 %storemerge996, 1
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %.preheader13.preheader, label %110, !llvm.loop !39

110:                                              ; preds = %107
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa, %107 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa, %107 ]
  %storemerge9.lcssa = phi i32 [ %108, %107 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %110, %119
  %storemerge1099 = phi i32 [ 0, %110 ], [ %120, %119 ]
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3098 = phi i32 [ 0, %.preheader11.preheader ], [ %117, %.preheader11 ]
  %111 = shl i32 %storemerge3098, 3
  %invariant.op40 = add i32 %111, %storemerge1099
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %storemerge3197 = phi i32 [ 0, %.preheader10.preheader ], [ %115, %.preheader10 ]
  %112 = shl i32 %storemerge3197, 6
  %.reass41 = add i32 %112, %invariant.op40
  %113 = sext i32 %.reass41 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %storemerge3197, 1
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %storemerge31.lcssa = phi i32 [ %115, %.preheader10 ]
  %117 = add nsw i32 %storemerge3098, 1
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %.preheader10.preheader, label %119, !llvm.loop !41

119:                                              ; preds = %.preheader11
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa, %.preheader11 ]
  %storemerge30.lcssa = phi i32 [ %117, %.preheader11 ]
  %120 = add nsw i32 %storemerge1099, 1
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %.preheader11.preheader, label %122, !llvm.loop !42

122:                                              ; preds = %119
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa, %119 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa, %119 ]
  %storemerge10.lcssa = phi i32 [ %120, %119 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %122, %131
  %storemerge11102 = phi i32 [ 0, %122 ], [ %132, %131 ]
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %storemerge28101 = phi i32 [ 0, %.preheader9.preheader ], [ %129, %.preheader9 ]
  %123 = shl i32 %storemerge28101, 3
  %invariant.op45 = add i32 %123, %storemerge11102
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge29100 = phi i32 [ 0, %.preheader8.preheader ], [ %127, %.preheader8 ]
  %124 = shl i32 %storemerge29100, 6
  %.reass46 = add i32 %124, %invariant.op45
  %125 = sext i32 %.reass46 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nsw i32 %storemerge29100, 1
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %storemerge29.lcssa = phi i32 [ %127, %.preheader8 ]
  %129 = add nsw i32 %storemerge28101, 1
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %.preheader8.preheader, label %131, !llvm.loop !44

131:                                              ; preds = %.preheader9
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa, %.preheader9 ]
  %storemerge28.lcssa = phi i32 [ %129, %.preheader9 ]
  %132 = add nsw i32 %storemerge11102, 1
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %.preheader9.preheader, label %134, !llvm.loop !45

134:                                              ; preds = %131
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa, %131 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa, %131 ]
  %storemerge11.lcssa = phi i32 [ %132, %131 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %134, %143
  %storemerge12105 = phi i32 [ 0, %134 ], [ %144, %143 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge26104 = phi i32 [ 0, %.preheader7.preheader ], [ %141, %.preheader7 ]
  %135 = shl i32 %storemerge26104, 3
  %invariant.op50 = add i32 %135, %storemerge12105
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %storemerge27103 = phi i32 [ 0, %.preheader6.preheader ], [ %139, %.preheader6 ]
  %136 = shl i32 %storemerge27103, 6
  %.reass51 = add i32 %136, %invariant.op50
  %137 = sext i32 %.reass51 to i64
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %137
  store i32 1, ptr %138, align 4
  %139 = add nsw i32 %storemerge27103, 1
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %storemerge27.lcssa = phi i32 [ %139, %.preheader6 ]
  %141 = add nsw i32 %storemerge26104, 1
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %.preheader6.preheader, label %143, !llvm.loop !47

143:                                              ; preds = %.preheader7
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa, %.preheader7 ]
  %storemerge26.lcssa = phi i32 [ %141, %.preheader7 ]
  %144 = add nsw i32 %storemerge12105, 1
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %.preheader7.preheader, label %146, !llvm.loop !48

146:                                              ; preds = %143
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa, %143 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa, %143 ]
  %storemerge12.lcssa = phi i32 [ %144, %143 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %146, %155
  %storemerge13108 = phi i32 [ 0, %146 ], [ %156, %155 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %storemerge24107 = phi i32 [ 0, %.preheader5.preheader ], [ %153, %.preheader5 ]
  %147 = shl i32 %storemerge24107, 3
  %invariant.op55 = add i32 %147, %storemerge13108
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge25106 = phi i32 [ 0, %.preheader4.preheader ], [ %151, %.preheader4 ]
  %148 = shl i32 %storemerge25106, 6
  %.reass56 = add i32 %148, %invariant.op55
  %149 = sext i32 %.reass56 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %149
  store i32 1, ptr %150, align 4
  %151 = add nsw i32 %storemerge25106, 1
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %storemerge25.lcssa = phi i32 [ %151, %.preheader4 ]
  %153 = add nsw i32 %storemerge24107, 1
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %.preheader4.preheader, label %155, !llvm.loop !50

155:                                              ; preds = %.preheader5
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa, %.preheader5 ]
  %storemerge24.lcssa = phi i32 [ %153, %.preheader5 ]
  %156 = add nsw i32 %storemerge13108, 1
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %.preheader5.preheader, label %158, !llvm.loop !51

158:                                              ; preds = %155
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa, %155 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa, %155 ]
  %storemerge13.lcssa = phi i32 [ %156, %155 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %158, %167
  %storemerge14111 = phi i32 [ 0, %158 ], [ %168, %167 ]
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge22110 = phi i32 [ 0, %.preheader3.preheader ], [ %165, %.preheader3 ]
  %159 = shl i32 %storemerge22110, 3
  %invariant.op60 = add i32 %159, %storemerge14111
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge23109 = phi i32 [ 0, %.preheader2.preheader ], [ %163, %.preheader2 ]
  %160 = shl i32 %storemerge23109, 6
  %.reass61 = add i32 %160, %invariant.op60
  %161 = sext i32 %.reass61 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nsw i32 %storemerge23109, 1
  %164 = icmp slt i32 %163, 2
  br i1 %164, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %storemerge23.lcssa = phi i32 [ %163, %.preheader2 ]
  %165 = add nsw i32 %storemerge22110, 1
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %.preheader2.preheader, label %167, !llvm.loop !53

167:                                              ; preds = %.preheader3
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa, %.preheader3 ]
  %storemerge22.lcssa = phi i32 [ %165, %.preheader3 ]
  %168 = add nsw i32 %storemerge14111, 1
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %.preheader3.preheader, label %170, !llvm.loop !54

170:                                              ; preds = %167
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa, %167 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa, %167 ]
  %storemerge14.lcssa = phi i32 [ %168, %167 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %170, %179
  %storemerge15114 = phi i32 [ 0, %170 ], [ %180, %179 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge20113 = phi i32 [ 0, %.preheader1.preheader ], [ %177, %.preheader1 ]
  %171 = shl i32 %storemerge20113, 3
  %invariant.op65 = add i32 %171, %storemerge15114
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge21112 = phi i32 [ 0, %.preheader.preheader ], [ %175, %.preheader ]
  %172 = shl i32 %storemerge21112, 6
  %.reass66 = add i32 %172, %invariant.op65
  %173 = sext i32 %.reass66 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %storemerge21112, 1
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %storemerge21.lcssa = phi i32 [ %175, %.preheader ]
  %177 = add nsw i32 %storemerge20113, 1
  %178 = icmp slt i32 %177, 2
  br i1 %178, label %.preheader.preheader, label %179, !llvm.loop !56

179:                                              ; preds = %.preheader1
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa, %.preheader1 ]
  %storemerge20.lcssa = phi i32 [ %177, %.preheader1 ]
  %180 = add nsw i32 %storemerge15114, 1
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %.preheader1.preheader, label %182, !llvm.loop !57

182:                                              ; preds = %179
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa, %179 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa, %179 ]
  %storemerge15.lcssa = phi i32 [ %180, %179 ]
  store i32 %storemerge15.lcssa, ptr %1, align 4
  store i32 %storemerge20.lcssa68.lcssa, ptr %2, align 4
  store i32 %storemerge21.lcssa67.lcssa69.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %183 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %183, 0
  br i1 %.not, label %187, label %184

184:                                              ; preds = %182
  %185 = load i32, ptr %4, align 4
  %186 = call i32 @Place(i32 noundef 0, i32 noundef %185)
  store i32 %186, ptr @n, align 4
  br label %188

187:                                              ; preds = %182
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %188

188:                                              ; preds = %187, %184
  %189 = load i32, ptr @n, align 4
  %190 = call i32 @Trial(i32 noundef %189)
  %.not16 = icmp eq i32 %190, 0
  br i1 %.not16, label %191, label %192

191:                                              ; preds = %188
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %195

192:                                              ; preds = %188
  %193 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %193, 2005
  br i1 %.not18, label %195, label %194

194:                                              ; preds = %192
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %195

195:                                              ; preds = %194, %192, %191
  %196 = load i32, ptr @n, align 4
  %197 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %196) #4
  %198 = load i32, ptr @kount, align 4
  %199 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %198) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %2
  %storemerge1 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Puzzle()
  %3 = add nsw i32 %storemerge1, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %2, label %5, !llvm.loop !58

5:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %3, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
