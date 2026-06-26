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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %23, %22 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %24, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %24

22:                                               ; preds = %17, %13
  %23 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !7

24:                                               ; preds = %17, %12
  %storemerge.lcssa = phi i32 [ %storemerge, %17 ], [ %storemerge, %12 ]
  %storemerge1 = phi i32 [ 0, %17 ], [ 1, %12 ]
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
  br label %12

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !9

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %smax = call i32 @llvm.smax.i32(i32 %30, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %32

32:                                               ; preds = %39, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %23 ]
  %33 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4
  %.not3 = icmp eq i32 %36, 0
  br i1 %.not3, label %37, label %39

37:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %33, %34 ]
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %34 ]
  store i32 %.lcssa2, ptr %5, align 4
  %38 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %32
  %.lcssa1 = phi i32 [ %33, %32 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %37
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.loopexit.loopexit ]
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
  br label %12

12:                                               ; preds = %21, %2
  %storemerge = phi i32 [ 0, %2 ], [ %22, %21 ]
  %.not = icmp sgt i32 %storemerge, %9
  br i1 %.not, label %23, label %13

13:                                               ; preds = %12
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %10, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not1 = icmp eq i32 %16, 0
  br i1 %.not1, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %11, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = add nsw i32 %storemerge, 1
  br label %12, !llvm.loop !11

23:                                               ; preds = %12
  %storemerge.lcssa = phi i32 [ %storemerge, %12 ]
  %.lcssa = phi i64 [ %7, %12 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
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

9:                                                ; preds = %25, %1
  %storemerge = phi i32 [ 0, %1 ], [ %26, %25 ]
  %10 = icmp slt i32 %storemerge, 13
  br i1 %10, label %11, label %27

11:                                               ; preds = %9
  %12 = sext i32 %storemerge to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %25, label %18

18:                                               ; preds = %11
  %19 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %6)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %25, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %storemerge, i32 noundef %7)
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp ne i32 %22, 0
  %23 = icmp eq i32 %21, 0
  %or.cond = or i1 %.not3, %23
  br i1 %or.cond, label %27, label %24

24:                                               ; preds = %20
  call void @Remove(i32 noundef %storemerge, i32 noundef %8)
  br label %25

25:                                               ; preds = %24, %18, %11
  %26 = add nsw i32 %storemerge, 1
  br label %9, !llvm.loop !12

27:                                               ; preds = %20, %9
  %storemerge.lcssa = phi i32 [ %storemerge, %20 ], [ %storemerge, %9 ]
  %storemerge1 = phi i32 [ 1, %20 ], [ 0, %9 ]
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

5:                                                ; preds = %15, %0
  %storemerge = phi i32 [ 0, %0 ], [ %18, %15 ]
  br label %6

.preheader31.preheader:                           ; preds = %10
  %storemerge.lcssa = phi i32 [ %13, %10 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %.preheader31

6:                                                ; preds = %5
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 1
  br label %10

10:                                               ; preds = %6
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  %13 = add nuw nsw i32 %storemerge, 2
  %14 = icmp samesign ult i32 %13, 512
  br i1 %14, label %15, label %.preheader31.preheader

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 1, ptr %17, align 4
  %18 = add nuw nsw i32 %storemerge, 3
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %84, %.preheader31.preheader
  %storemerge48.lcssa1.lcssa3 = phi i32 [ %storemerge48.lcssa1.lcssa, %84 ], [ poison, %.preheader31.preheader ]
  %storemerge47.lcssa2 = phi i32 [ %storemerge47.lcssa, %84 ], [ poison, %.preheader31.preheader ]
  %storemerge1 = phi i32 [ %85, %84 ], [ 1, %.preheader31.preheader ]
  %19 = icmp slt i32 %storemerge1, 6
  br i1 %19, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa3, %.preheader31 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa2, %.preheader31 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %.preheader31 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30
  %invariant.op = add i32 8, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %.preheader29
  %.reass = add i32 64, %invariant.op
  %20 = sext i32 %.reass to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %.preheader29.1
  %.reass.1 = add i32 128, %invariant.op
  %22 = sext i32 %.reass.1 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %.preheader29.2
  %.reass.2 = add i32 192, %invariant.op
  %24 = sext i32 %.reass.2 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %.preheader29.3
  %.reass.3 = add i32 256, %invariant.op
  %26 = sext i32 %.reass.3 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  br label %.preheader29.5

.preheader29.5:                                   ; preds = %.preheader29.4
  %.reass.4 = add i32 320, %invariant.op
  %28 = sext i32 %.reass.4 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  br i1 false, label %.loopexit, label %.preheader30.1

.loopexit:                                        ; preds = %.preheader29.5, %.preheader29.5.1, %.preheader29.5.2, %.preheader29.5.3, %.preheader29.5.4
  %invariant.op.lcssa.ph = phi i32 [ %invariant.op.4, %.preheader29.5.4 ], [ %invariant.op.3, %.preheader29.5.3 ], [ %invariant.op.2, %.preheader29.5.2 ], [ %invariant.op.1, %.preheader29.5.1 ], [ %invariant.op, %.preheader29.5 ]
  br label %30

30:                                               ; preds = %.loopexit, %.preheader29.5.5
  %invariant.op.lcssa = phi i32 [ %invariant.op.5, %.preheader29.5.5 ], [ %invariant.op.lcssa.ph, %.loopexit ]
  %.reass.5 = add i32 384, %invariant.op.lcssa
  %31 = sext i32 %.reass.5 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  unreachable

.preheader30.1:                                   ; preds = %.preheader29.5
  br label %.preheader29.preheader.1

.preheader29.preheader.1:                         ; preds = %.preheader30.1
  %invariant.op.1 = add i32 16, %storemerge1
  br label %.preheader29.170

.preheader29.170:                                 ; preds = %.preheader29.preheader.1
  br label %.preheader29.1.1

.preheader29.1.1:                                 ; preds = %.preheader29.170
  %.reass.171 = add i32 64, %invariant.op.1
  %33 = sext i32 %.reass.171 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %.preheader29.2.1

.preheader29.2.1:                                 ; preds = %.preheader29.1.1
  %.reass.1.1 = add i32 128, %invariant.op.1
  %35 = sext i32 %.reass.1.1 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %.preheader29.3.1

.preheader29.3.1:                                 ; preds = %.preheader29.2.1
  %.reass.2.1 = add i32 192, %invariant.op.1
  %37 = sext i32 %.reass.2.1 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br label %.preheader29.4.1

.preheader29.4.1:                                 ; preds = %.preheader29.3.1
  %.reass.3.1 = add i32 256, %invariant.op.1
  %39 = sext i32 %.reass.3.1 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br label %.preheader29.5.1

.preheader29.5.1:                                 ; preds = %.preheader29.4.1
  %.reass.4.1 = add i32 320, %invariant.op.1
  %41 = sext i32 %.reass.4.1 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br i1 false, label %.loopexit, label %.preheader30.2

.preheader30.2:                                   ; preds = %.preheader29.5.1
  br label %.preheader29.preheader.2

.preheader29.preheader.2:                         ; preds = %.preheader30.2
  %invariant.op.2 = add i32 24, %storemerge1
  br label %.preheader29.272

.preheader29.272:                                 ; preds = %.preheader29.preheader.2
  br label %.preheader29.1.2

.preheader29.1.2:                                 ; preds = %.preheader29.272
  %.reass.273 = add i32 64, %invariant.op.2
  %43 = sext i32 %.reass.273 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  br label %.preheader29.2.2

.preheader29.2.2:                                 ; preds = %.preheader29.1.2
  %.reass.1.2 = add i32 128, %invariant.op.2
  %45 = sext i32 %.reass.1.2 to i64
  %46 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %.preheader29.3.2

.preheader29.3.2:                                 ; preds = %.preheader29.2.2
  %.reass.2.2 = add i32 192, %invariant.op.2
  %47 = sext i32 %.reass.2.2 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %.preheader29.4.2

.preheader29.4.2:                                 ; preds = %.preheader29.3.2
  %.reass.3.2 = add i32 256, %invariant.op.2
  %49 = sext i32 %.reass.3.2 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %.preheader29.5.2

.preheader29.5.2:                                 ; preds = %.preheader29.4.2
  %.reass.4.2 = add i32 320, %invariant.op.2
  %51 = sext i32 %.reass.4.2 to i64
  %52 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br i1 false, label %.loopexit, label %.preheader30.3

.preheader30.3:                                   ; preds = %.preheader29.5.2
  br label %.preheader29.preheader.3

.preheader29.preheader.3:                         ; preds = %.preheader30.3
  %invariant.op.3 = add i32 32, %storemerge1
  br label %.preheader29.374

.preheader29.374:                                 ; preds = %.preheader29.preheader.3
  br label %.preheader29.1.3

.preheader29.1.3:                                 ; preds = %.preheader29.374
  %.reass.375 = add i32 64, %invariant.op.3
  %53 = sext i32 %.reass.375 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %.preheader29.2.3

.preheader29.2.3:                                 ; preds = %.preheader29.1.3
  %.reass.1.3 = add i32 128, %invariant.op.3
  %55 = sext i32 %.reass.1.3 to i64
  %56 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %.preheader29.3.3

.preheader29.3.3:                                 ; preds = %.preheader29.2.3
  %.reass.2.3 = add i32 192, %invariant.op.3
  %57 = sext i32 %.reass.2.3 to i64
  %58 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %.preheader29.4.3

.preheader29.4.3:                                 ; preds = %.preheader29.3.3
  %.reass.3.3 = add i32 256, %invariant.op.3
  %59 = sext i32 %.reass.3.3 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %.preheader29.5.3

.preheader29.5.3:                                 ; preds = %.preheader29.4.3
  %.reass.4.3 = add i32 320, %invariant.op.3
  %61 = sext i32 %.reass.4.3 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br i1 false, label %.loopexit, label %.preheader30.4

.preheader30.4:                                   ; preds = %.preheader29.5.3
  br label %.preheader29.preheader.4

.preheader29.preheader.4:                         ; preds = %.preheader30.4
  %invariant.op.4 = add i32 40, %storemerge1
  br label %.preheader29.476

.preheader29.476:                                 ; preds = %.preheader29.preheader.4
  br label %.preheader29.1.4

.preheader29.1.4:                                 ; preds = %.preheader29.476
  %.reass.477 = add i32 64, %invariant.op.4
  %63 = sext i32 %.reass.477 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %.preheader29.2.4

.preheader29.2.4:                                 ; preds = %.preheader29.1.4
  %.reass.1.4 = add i32 128, %invariant.op.4
  %65 = sext i32 %.reass.1.4 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %.preheader29.3.4

.preheader29.3.4:                                 ; preds = %.preheader29.2.4
  %.reass.2.4 = add i32 192, %invariant.op.4
  %67 = sext i32 %.reass.2.4 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %.preheader29.4.4

.preheader29.4.4:                                 ; preds = %.preheader29.3.4
  %.reass.3.4 = add i32 256, %invariant.op.4
  %69 = sext i32 %.reass.3.4 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %.preheader29.5.4

.preheader29.5.4:                                 ; preds = %.preheader29.4.4
  %.reass.4.4 = add i32 320, %invariant.op.4
  %71 = sext i32 %.reass.4.4 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br i1 false, label %.loopexit, label %.preheader30.5

.preheader30.5:                                   ; preds = %.preheader29.5.4
  br i1 false, label %.preheader29.preheader.5, label %84

.preheader29.preheader.5:                         ; preds = %.preheader30.5
  %storemerge1.lcssa82 = phi i32 [ %storemerge1, %.preheader30.5 ]
  %invariant.op.5 = add i32 48, %storemerge1.lcssa82
  br label %.preheader29.578

.preheader29.578:                                 ; preds = %.preheader29.preheader.5
  br label %.preheader29.1.5

.preheader29.1.5:                                 ; preds = %.preheader29.578
  %.reass.579 = add i32 64, %invariant.op.5
  %73 = sext i32 %.reass.579 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %.preheader29.2.5

.preheader29.2.5:                                 ; preds = %.preheader29.1.5
  %.reass.1.5 = add i32 128, %invariant.op.5
  %75 = sext i32 %.reass.1.5 to i64
  %76 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  br label %.preheader29.3.5

.preheader29.3.5:                                 ; preds = %.preheader29.2.5
  %.reass.2.5 = add i32 192, %invariant.op.5
  %77 = sext i32 %.reass.2.5 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br label %.preheader29.4.5

.preheader29.4.5:                                 ; preds = %.preheader29.3.5
  %.reass.3.5 = add i32 256, %invariant.op.5
  %79 = sext i32 %.reass.3.5 to i64
  %80 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %79
  store i32 0, ptr %80, align 4
  br label %.preheader29.5.5

.preheader29.5.5:                                 ; preds = %.preheader29.4.5
  %.reass.4.5 = add i32 320, %invariant.op.5
  %81 = sext i32 %.reass.4.5 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br i1 false, label %30, label %83

83:                                               ; preds = %.preheader29.5.5
  unreachable

84:                                               ; preds = %.preheader30.5
  %storemerge48.lcssa1.lcssa = phi i32 [ 6, %.preheader30.5 ]
  %storemerge47.lcssa = phi i32 [ 6, %.preheader30.5 ]
  %85 = add nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !14

.preheader28:                                     ; preds = %100, %.preheader28.preheader
  %storemerge46.lcssa4 = phi i32 [ %storemerge46.lcssa, %100 ], [ poison, %.preheader28.preheader ]
  %storemerge2 = phi i32 [ %101, %100 ], [ 0, %.preheader28.preheader ]
  %86 = icmp slt i32 %storemerge2, 13
  br i1 %86, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %87 = sext i32 %storemerge2 to i64
  %88 = getelementptr inbounds [2048 x i8], ptr @p, i64 %87
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa4, %.preheader28 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %.preheader28 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %.preheader26

.preheader27:                                     ; preds = %96, %.preheader27.preheader
  %storemerge46 = phi i32 [ 0, %.preheader27.preheader ], [ %99, %96 ]
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27
  %89 = sext i32 %storemerge46 to i64
  %90 = getelementptr inbounds [4 x i8], ptr %88, i64 %89
  store i32 0, ptr %90, align 4
  %91 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr %88, i64 %92
  store i32 0, ptr %93, align 4
  %94 = add nuw nsw i32 %storemerge46, 2
  %95 = icmp samesign ult i32 %94, 512
  br i1 %95, label %96, label %100

96:                                               ; preds = %.preheader27.2
  %97 = sext i32 %94 to i64
  %98 = getelementptr inbounds [4 x i8], ptr %88, i64 %97
  store i32 0, ptr %98, align 4
  %99 = add nuw nsw i32 %storemerge46, 3
  br label %.preheader27, !llvm.loop !15

100:                                              ; preds = %.preheader27.2
  %storemerge46.lcssa = phi i32 [ %94, %.preheader27.2 ]
  %101 = add nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !16

.preheader26:                                     ; preds = %.preheader26.preheader
  br label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %.preheader24
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit87, label %.preheader25.1

.loopexit87:                                      ; preds = %.preheader24.1.1.4, %.preheader24.1.4, %.preheader24.1.1.3, %.preheader24.1.3, %.preheader24.1.1.2, %.preheader24.1.295, %.preheader24.1.1.1, %.preheader24.1.191, %.preheader24.1, %.preheader24.1.1
  %invariant.op5.lcssa.ph = phi i32 [ 8, %.preheader24.1.1 ], [ 0, %.preheader24.1 ], [ 1, %.preheader24.1.191 ], [ 9, %.preheader24.1.1.1 ], [ 2, %.preheader24.1.295 ], [ 10, %.preheader24.1.1.2 ], [ 3, %.preheader24.1.3 ], [ 11, %.preheader24.1.1.3 ], [ 4, %.preheader24.1.4 ], [ 12, %.preheader24.1.1.4 ]
  br label %102

102:                                              ; preds = %.loopexit87, %.preheader24.1.2
  %invariant.op5.lcssa = phi i32 [ %invariant.op5.2, %.preheader24.1.2 ], [ %invariant.op5.lcssa.ph, %.loopexit87 ]
  %.reass6.1 = add i32 64, %invariant.op5.lcssa
  %103 = sext i32 %.reass6.1 to i64
  %104 = getelementptr inbounds [4 x i8], ptr @p, i64 %103
  store i32 1, ptr %104, align 4
  unreachable

.preheader25.1:                                   ; preds = %.preheader24.1
  br label %.preheader24.preheader.1

.preheader24.preheader.1:                         ; preds = %.preheader25.1
  br label %.preheader24.183

.preheader24.183:                                 ; preds = %.preheader24.preheader.1
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %.preheader24.183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit87, label %.preheader25.2

.preheader25.2:                                   ; preds = %.preheader24.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.1

.preheader24.preheader.2:                         ; preds = %.preheader25.2.4, %.preheader25.2.3, %.preheader25.2.2, %.preheader25.2.1, %.preheader25.2
  %storemerge3.lcssa86 = phi i32 [ 0, %.preheader25.2 ], [ 1, %.preheader25.2.1 ], [ 2, %.preheader25.2.2 ], [ 3, %.preheader25.2.3 ], [ 4, %.preheader25.2.4 ]
  %invariant.op5.2 = add i32 16, %storemerge3.lcssa86
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %.preheader24.preheader.2
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %.preheader24.2
  %105 = sext i32 %invariant.op5.2 to i64
  %106 = getelementptr inbounds [4 x i8], ptr @p, i64 %105
  store i32 1, ptr %106, align 4
  br i1 false, label %102, label %107

107:                                              ; preds = %.preheader24.1.2
  unreachable

.preheader26.1:                                   ; preds = %.preheader25.2
  br label %.preheader25.preheader.1

.preheader25.preheader.1:                         ; preds = %.preheader26.1
  br label %.preheader25.188

.preheader25.188:                                 ; preds = %.preheader25.preheader.1
  br label %.preheader24.preheader.189

.preheader24.preheader.189:                       ; preds = %.preheader25.188
  br label %.preheader24.190

.preheader24.190:                                 ; preds = %.preheader24.preheader.189
  br label %.preheader24.1.191

.preheader24.1.191:                               ; preds = %.preheader24.190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit87, label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %.preheader24.1.191
  br label %.preheader24.preheader.1.1

.preheader24.preheader.1.1:                       ; preds = %.preheader25.1.1
  br label %.preheader24.183.1

.preheader24.183.1:                               ; preds = %.preheader24.preheader.1.1
  br label %.preheader24.1.1.1

.preheader24.1.1.1:                               ; preds = %.preheader24.183.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit87, label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %.preheader24.1.1.1
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.2

.preheader26.2:                                   ; preds = %.preheader25.2.1
  br label %.preheader25.preheader.2

.preheader25.preheader.2:                         ; preds = %.preheader26.2
  br label %.preheader25.292

.preheader25.292:                                 ; preds = %.preheader25.preheader.2
  br label %.preheader24.preheader.293

.preheader24.preheader.293:                       ; preds = %.preheader25.292
  br label %.preheader24.294

.preheader24.294:                                 ; preds = %.preheader24.preheader.293
  br label %.preheader24.1.295

.preheader24.1.295:                               ; preds = %.preheader24.294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit87, label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %.preheader24.1.295
  br label %.preheader24.preheader.1.2

.preheader24.preheader.1.2:                       ; preds = %.preheader25.1.2
  br label %.preheader24.183.2

.preheader24.183.2:                               ; preds = %.preheader24.preheader.1.2
  br label %.preheader24.1.1.2

.preheader24.1.1.2:                               ; preds = %.preheader24.183.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit87, label %.preheader25.2.2

.preheader25.2.2:                                 ; preds = %.preheader24.1.1.2
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.3

.preheader26.3:                                   ; preds = %.preheader25.2.2
  br label %.preheader25.preheader.3

.preheader25.preheader.3:                         ; preds = %.preheader26.3
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %.preheader25.preheader.3
  br label %.preheader24.preheader.3

.preheader24.preheader.3:                         ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %.preheader24.preheader.3
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %.preheader24.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit87, label %.preheader25.1.3

.preheader25.1.3:                                 ; preds = %.preheader24.1.3
  br label %.preheader24.preheader.1.3

.preheader24.preheader.1.3:                       ; preds = %.preheader25.1.3
  br label %.preheader24.183.3

.preheader24.183.3:                               ; preds = %.preheader24.preheader.1.3
  br label %.preheader24.1.1.3

.preheader24.1.1.3:                               ; preds = %.preheader24.183.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit87, label %.preheader25.2.3

.preheader25.2.3:                                 ; preds = %.preheader24.1.1.3
  br i1 false, label %.preheader24.preheader.2, label %.preheader26.4

.preheader26.4:                                   ; preds = %.preheader25.2.3
  br i1 false, label %.preheader25.preheader.4, label %109

.preheader25.preheader.4:                         ; preds = %.preheader26.4
  br label %.preheader25.4

.preheader25.4:                                   ; preds = %.preheader25.preheader.4
  br label %.preheader24.preheader.4

.preheader24.preheader.4:                         ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %.preheader24.preheader.4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %.preheader24.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit87, label %.preheader25.1.4

.preheader25.1.4:                                 ; preds = %.preheader24.1.4
  br label %.preheader24.preheader.1.4

.preheader24.preheader.1.4:                       ; preds = %.preheader25.1.4
  br label %.preheader24.183.4

.preheader24.183.4:                               ; preds = %.preheader24.preheader.1.4
  br label %.preheader24.1.1.4

.preheader24.1.1.4:                               ; preds = %.preheader24.183.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit87, label %.preheader25.2.4

.preheader25.2.4:                                 ; preds = %.preheader24.1.1.4
  br i1 false, label %.preheader24.preheader.2, label %108

108:                                              ; preds = %.preheader25.2.4
  unreachable

109:                                              ; preds = %.preheader26.4
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ 1, %.preheader26.4 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ 2, %.preheader26.4 ]
  %storemerge3.lcssa = phi i32 [ 4, %.preheader26.4 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %110

110:                                              ; preds = %109
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %110
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.preheader
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader
  br label %.preheader22.1

.preheader22.1:                                   ; preds = %.preheader22
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %.preheader22.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %.preheader22.3

.preheader22.3:                                   ; preds = %.preheader22.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %.preheader22.4

.preheader22.4:                                   ; preds = %.preheader22.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit100, label %.preheader23.1

.loopexit100:                                     ; preds = %.preheader22.4.2, %.preheader22.4.1110, %.preheader22.4
  %invariant.op10.lcssa.ph = phi i32 [ 0, %.preheader22.4 ], [ 1, %.preheader22.4.1110 ], [ 2, %.preheader22.4.2 ]
  br label %111

111:                                              ; preds = %.loopexit100, %.preheader22.4.1
  %invariant.op10.lcssa = phi i32 [ %invariant.op10.1, %.preheader22.4.1 ], [ %invariant.op10.lcssa.ph, %.loopexit100 ]
  %.reass11.4 = add i32 256, %invariant.op10.lcssa
  %112 = sext i32 %.reass11.4 to i64
  %113 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %112
  store i32 1, ptr %113, align 4
  unreachable

.preheader23.1:                                   ; preds = %.preheader22.4
  br i1 false, label %.preheader22.preheader.1, label %123

.preheader22.preheader.1:                         ; preds = %.preheader23.1.2, %.preheader23.1.1, %.preheader23.1
  %storemerge4.lcssa98 = phi i32 [ 0, %.preheader23.1 ], [ 1, %.preheader23.1.1 ], [ 2, %.preheader23.1.2 ]
  %invariant.op10.1 = add i32 8, %storemerge4.lcssa98
  br label %.preheader22.196

.preheader22.196:                                 ; preds = %.preheader22.preheader.1
  br label %.preheader22.1.1

.preheader22.1.1:                                 ; preds = %.preheader22.196
  %114 = sext i32 %invariant.op10.1 to i64
  %115 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %114
  store i32 1, ptr %115, align 4
  br label %.preheader22.2.1

.preheader22.2.1:                                 ; preds = %.preheader22.1.1
  %.reass11.1.1 = add i32 64, %invariant.op10.1
  %116 = sext i32 %.reass11.1.1 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %116
  store i32 1, ptr %117, align 4
  br label %.preheader22.3.1

.preheader22.3.1:                                 ; preds = %.preheader22.2.1
  %.reass11.2.1 = add i32 128, %invariant.op10.1
  %118 = sext i32 %.reass11.2.1 to i64
  %119 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %118
  store i32 1, ptr %119, align 4
  br label %.preheader22.4.1

.preheader22.4.1:                                 ; preds = %.preheader22.3.1
  %.reass11.3.1 = add i32 192, %invariant.op10.1
  %120 = sext i32 %.reass11.3.1 to i64
  %121 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %120
  store i32 1, ptr %121, align 4
  br i1 false, label %111, label %122

122:                                              ; preds = %.preheader22.4.1
  unreachable

123:                                              ; preds = %.preheader23.1
  br label %.preheader23.preheader.1

.preheader23.preheader.1:                         ; preds = %123
  br label %.preheader23.1101

.preheader23.1101:                                ; preds = %.preheader23.preheader.1
  br label %.preheader22.preheader.1102

.preheader22.preheader.1102:                      ; preds = %.preheader23.1101
  br label %.preheader22.1103

.preheader22.1103:                                ; preds = %.preheader22.preheader.1102
  br label %.preheader22.1.1104

.preheader22.1.1104:                              ; preds = %.preheader22.1103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %.preheader22.2.1106

.preheader22.2.1106:                              ; preds = %.preheader22.1.1104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %.preheader22.3.1108

.preheader22.3.1108:                              ; preds = %.preheader22.2.1106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %.preheader22.4.1110

.preheader22.4.1110:                              ; preds = %.preheader22.3.1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit100, label %.preheader23.1.1

.preheader23.1.1:                                 ; preds = %.preheader22.4.1110
  br i1 false, label %.preheader22.preheader.1, label %124

124:                                              ; preds = %.preheader23.1.1
  br i1 false, label %.preheader23.preheader.2, label %126

.preheader23.preheader.2:                         ; preds = %124
  br label %.preheader23.2

.preheader23.2:                                   ; preds = %.preheader23.preheader.2
  br label %.preheader22.preheader.2

.preheader22.preheader.2:                         ; preds = %.preheader23.2
  br label %.preheader22.2111

.preheader22.2111:                                ; preds = %.preheader22.preheader.2
  br label %.preheader22.1.2

.preheader22.1.2:                                 ; preds = %.preheader22.2111
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %.preheader22.2.2

.preheader22.2.2:                                 ; preds = %.preheader22.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %.preheader22.3.2

.preheader22.3.2:                                 ; preds = %.preheader22.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %.preheader22.4.2

.preheader22.4.2:                                 ; preds = %.preheader22.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit100, label %.preheader23.1.2

.preheader23.1.2:                                 ; preds = %.preheader22.4.2
  br i1 false, label %.preheader22.preheader.1, label %125

125:                                              ; preds = %.preheader23.1.2
  unreachable

126:                                              ; preds = %124
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ 4, %124 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ 1, %124 ]
  %storemerge4.lcssa = phi i32 [ 2, %124 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %127

127:                                              ; preds = %126
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %127
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %.preheader20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %.preheader20.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit117, label %.preheader21.1

.loopexit117:                                     ; preds = %.preheader20.2.3.1, %.preheader20.2.2.1, %.preheader20.2.1.1, %.preheader20.2.1123, %.preheader20.2, %.preheader20.2.1, %.preheader20.2.2, %.preheader20.2.3
  %invariant.op15.lcssa.ph = phi i32 [ 24, %.preheader20.2.3 ], [ 16, %.preheader20.2.2 ], [ 8, %.preheader20.2.1 ], [ 0, %.preheader20.2 ], [ 1, %.preheader20.2.1123 ], [ 9, %.preheader20.2.1.1 ], [ 17, %.preheader20.2.2.1 ], [ 25, %.preheader20.2.3.1 ]
  br label %128

128:                                              ; preds = %.loopexit117, %.preheader20.2.4
  %invariant.op15.lcssa = phi i32 [ %invariant.op15.4, %.preheader20.2.4 ], [ %invariant.op15.lcssa.ph, %.loopexit117 ]
  %.reass16.2 = add i32 128, %invariant.op15.lcssa
  %129 = sext i32 %.reass16.2 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %129
  store i32 1, ptr %130, align 4
  unreachable

.preheader21.1:                                   ; preds = %.preheader20.2
  br label %.preheader20.preheader.1

.preheader20.preheader.1:                         ; preds = %.preheader21.1
  br label %.preheader20.1112

.preheader20.1112:                                ; preds = %.preheader20.preheader.1
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %.preheader20.1112
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %.preheader20.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit117, label %.preheader21.2

.preheader21.2:                                   ; preds = %.preheader20.2.1
  br label %.preheader20.preheader.2

.preheader20.preheader.2:                         ; preds = %.preheader21.2
  br label %.preheader20.2113

.preheader20.2113:                                ; preds = %.preheader20.preheader.2
  br label %.preheader20.1.2

.preheader20.1.2:                                 ; preds = %.preheader20.2113
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %.preheader20.2.2

.preheader20.2.2:                                 ; preds = %.preheader20.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit117, label %.preheader21.3

.preheader21.3:                                   ; preds = %.preheader20.2.2
  br label %.preheader20.preheader.3

.preheader20.preheader.3:                         ; preds = %.preheader21.3
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %.preheader20.preheader.3
  br label %.preheader20.1.3

.preheader20.1.3:                                 ; preds = %.preheader20.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %.preheader20.2.3

.preheader20.2.3:                                 ; preds = %.preheader20.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit117, label %.preheader21.4

.preheader21.4:                                   ; preds = %.preheader20.2.3
  br i1 false, label %.preheader20.preheader.4, label %136

.preheader20.preheader.4:                         ; preds = %.preheader21.4.1, %.preheader21.4
  %storemerge5.lcssa116 = phi i32 [ 0, %.preheader21.4 ], [ 1, %.preheader21.4.1 ]
  %invariant.op15.4 = add i32 32, %storemerge5.lcssa116
  br label %.preheader20.4

.preheader20.4:                                   ; preds = %.preheader20.preheader.4
  br label %.preheader20.1.4

.preheader20.1.4:                                 ; preds = %.preheader20.4
  %131 = sext i32 %invariant.op15.4 to i64
  %132 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %131
  store i32 1, ptr %132, align 4
  br label %.preheader20.2.4

.preheader20.2.4:                                 ; preds = %.preheader20.1.4
  %.reass16.1.4 = add i32 64, %invariant.op15.4
  %133 = sext i32 %.reass16.1.4 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %133
  store i32 1, ptr %134, align 4
  br i1 false, label %128, label %135

135:                                              ; preds = %.preheader20.2.4
  unreachable

136:                                              ; preds = %.preheader21.4
  br i1 false, label %.preheader21.preheader.1, label %138

.preheader21.preheader.1:                         ; preds = %136
  br label %.preheader21.1118

.preheader21.1118:                                ; preds = %.preheader21.preheader.1
  br label %.preheader20.preheader.1119

.preheader20.preheader.1119:                      ; preds = %.preheader21.1118
  br label %.preheader20.1120

.preheader20.1120:                                ; preds = %.preheader20.preheader.1119
  br label %.preheader20.1.1121

.preheader20.1.1121:                              ; preds = %.preheader20.1120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %.preheader20.2.1123

.preheader20.2.1123:                              ; preds = %.preheader20.1.1121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit117, label %.preheader21.1.1

.preheader21.1.1:                                 ; preds = %.preheader20.2.1123
  br label %.preheader20.preheader.1.1

.preheader20.preheader.1.1:                       ; preds = %.preheader21.1.1
  br label %.preheader20.1112.1

.preheader20.1112.1:                              ; preds = %.preheader20.preheader.1.1
  br label %.preheader20.1.1.1

.preheader20.1.1.1:                               ; preds = %.preheader20.1112.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %.preheader20.2.1.1

.preheader20.2.1.1:                               ; preds = %.preheader20.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit117, label %.preheader21.2.1

.preheader21.2.1:                                 ; preds = %.preheader20.2.1.1
  br label %.preheader20.preheader.2.1

.preheader20.preheader.2.1:                       ; preds = %.preheader21.2.1
  br label %.preheader20.2113.1

.preheader20.2113.1:                              ; preds = %.preheader20.preheader.2.1
  br label %.preheader20.1.2.1

.preheader20.1.2.1:                               ; preds = %.preheader20.2113.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %.preheader20.2.2.1

.preheader20.2.2.1:                               ; preds = %.preheader20.1.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit117, label %.preheader21.3.1

.preheader21.3.1:                                 ; preds = %.preheader20.2.2.1
  br label %.preheader20.preheader.3.1

.preheader20.preheader.3.1:                       ; preds = %.preheader21.3.1
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %.preheader20.preheader.3.1
  br label %.preheader20.1.3.1

.preheader20.1.3.1:                               ; preds = %.preheader20.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %.preheader20.2.3.1

.preheader20.2.3.1:                               ; preds = %.preheader20.1.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit117, label %.preheader21.4.1

.preheader21.4.1:                                 ; preds = %.preheader20.2.3.1
  br i1 false, label %.preheader20.preheader.4, label %137

137:                                              ; preds = %.preheader21.4.1
  unreachable

138:                                              ; preds = %136
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ 2, %136 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ 4, %136 ]
  %storemerge5.lcssa = phi i32 [ 1, %136 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %139

139:                                              ; preds = %138
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %139
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %.preheader18
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit128, label %.preheader19.1

.loopexit128:                                     ; preds = %.preheader18.1.3.2, %.preheader18.1.2.2, %.preheader18.1.1.2, %.preheader18.1.2136, %.preheader18.1.3.1, %.preheader18.1.2.1, %.preheader18.1.1.1, %.preheader18.1.1132, %.preheader18.1, %.preheader18.1.1, %.preheader18.1.2, %.preheader18.1.3
  %invariant.op20.lcssa.ph = phi i32 [ 24, %.preheader18.1.3 ], [ 16, %.preheader18.1.2 ], [ 8, %.preheader18.1.1 ], [ 0, %.preheader18.1 ], [ 1, %.preheader18.1.1132 ], [ 9, %.preheader18.1.1.1 ], [ 17, %.preheader18.1.2.1 ], [ 25, %.preheader18.1.3.1 ], [ 2, %.preheader18.1.2136 ], [ 10, %.preheader18.1.1.2 ], [ 18, %.preheader18.1.2.2 ], [ 26, %.preheader18.1.3.2 ]
  br label %140

140:                                              ; preds = %.loopexit128, %.preheader18.1.4
  %invariant.op20.lcssa = phi i32 [ %invariant.op20.4, %.preheader18.1.4 ], [ %invariant.op20.lcssa.ph, %.loopexit128 ]
  %.reass21.1 = add i32 64, %invariant.op20.lcssa
  %141 = sext i32 %.reass21.1 to i64
  %142 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %141
  store i32 1, ptr %142, align 4
  unreachable

.preheader19.1:                                   ; preds = %.preheader18.1
  br label %.preheader18.preheader.1

.preheader18.preheader.1:                         ; preds = %.preheader19.1
  br label %.preheader18.1124

.preheader18.1124:                                ; preds = %.preheader18.preheader.1
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %.preheader18.1124
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit128, label %.preheader19.2

.preheader19.2:                                   ; preds = %.preheader18.1.1
  br label %.preheader18.preheader.2

.preheader18.preheader.2:                         ; preds = %.preheader19.2
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %.preheader18.preheader.2
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %.preheader18.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit128, label %.preheader19.3

.preheader19.3:                                   ; preds = %.preheader18.1.2
  br label %.preheader18.preheader.3

.preheader18.preheader.3:                         ; preds = %.preheader19.3
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %.preheader18.preheader.3
  br label %.preheader18.1.3

.preheader18.1.3:                                 ; preds = %.preheader18.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit128, label %.preheader19.4

.preheader19.4:                                   ; preds = %.preheader18.1.3
  br i1 false, label %.preheader18.preheader.4, label %146

.preheader18.preheader.4:                         ; preds = %.preheader19.4.2, %.preheader19.4.1, %.preheader19.4
  %storemerge6.lcssa127 = phi i32 [ 0, %.preheader19.4 ], [ 1, %.preheader19.4.1 ], [ 2, %.preheader19.4.2 ]
  %invariant.op20.4 = add i32 32, %storemerge6.lcssa127
  br label %.preheader18.4

.preheader18.4:                                   ; preds = %.preheader18.preheader.4
  br label %.preheader18.1.4

.preheader18.1.4:                                 ; preds = %.preheader18.4
  %143 = sext i32 %invariant.op20.4 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %143
  store i32 1, ptr %144, align 4
  br i1 false, label %140, label %145

145:                                              ; preds = %.preheader18.1.4
  unreachable

146:                                              ; preds = %.preheader19.4
  br label %.preheader19.preheader.1

.preheader19.preheader.1:                         ; preds = %146
  br label %.preheader19.1129

.preheader19.1129:                                ; preds = %.preheader19.preheader.1
  br label %.preheader18.preheader.1130

.preheader18.preheader.1130:                      ; preds = %.preheader19.1129
  br label %.preheader18.1131

.preheader18.1131:                                ; preds = %.preheader18.preheader.1130
  br label %.preheader18.1.1132

.preheader18.1.1132:                              ; preds = %.preheader18.1131
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit128, label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %.preheader18.1.1132
  br label %.preheader18.preheader.1.1

.preheader18.preheader.1.1:                       ; preds = %.preheader19.1.1
  br label %.preheader18.1124.1

.preheader18.1124.1:                              ; preds = %.preheader18.preheader.1.1
  br label %.preheader18.1.1.1

.preheader18.1.1.1:                               ; preds = %.preheader18.1124.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit128, label %.preheader19.2.1

.preheader19.2.1:                                 ; preds = %.preheader18.1.1.1
  br label %.preheader18.preheader.2.1

.preheader18.preheader.2.1:                       ; preds = %.preheader19.2.1
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %.preheader18.preheader.2.1
  br label %.preheader18.1.2.1

.preheader18.1.2.1:                               ; preds = %.preheader18.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit128, label %.preheader19.3.1

.preheader19.3.1:                                 ; preds = %.preheader18.1.2.1
  br label %.preheader18.preheader.3.1

.preheader18.preheader.3.1:                       ; preds = %.preheader19.3.1
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %.preheader18.preheader.3.1
  br label %.preheader18.1.3.1

.preheader18.1.3.1:                               ; preds = %.preheader18.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit128, label %.preheader19.4.1

.preheader19.4.1:                                 ; preds = %.preheader18.1.3.1
  br i1 false, label %.preheader18.preheader.4, label %147

147:                                              ; preds = %.preheader19.4.1
  br i1 false, label %.preheader19.preheader.2, label %149

.preheader19.preheader.2:                         ; preds = %147
  br label %.preheader19.2133

.preheader19.2133:                                ; preds = %.preheader19.preheader.2
  br label %.preheader18.preheader.2134

.preheader18.preheader.2134:                      ; preds = %.preheader19.2133
  br label %.preheader18.2135

.preheader18.2135:                                ; preds = %.preheader18.preheader.2134
  br label %.preheader18.1.2136

.preheader18.1.2136:                              ; preds = %.preheader18.2135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit128, label %.preheader19.1.2

.preheader19.1.2:                                 ; preds = %.preheader18.1.2136
  br label %.preheader18.preheader.1.2

.preheader18.preheader.1.2:                       ; preds = %.preheader19.1.2
  br label %.preheader18.1124.2

.preheader18.1124.2:                              ; preds = %.preheader18.preheader.1.2
  br label %.preheader18.1.1.2

.preheader18.1.1.2:                               ; preds = %.preheader18.1124.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit128, label %.preheader19.2.2

.preheader19.2.2:                                 ; preds = %.preheader18.1.1.2
  br label %.preheader18.preheader.2.2

.preheader18.preheader.2.2:                       ; preds = %.preheader19.2.2
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %.preheader18.preheader.2.2
  br label %.preheader18.1.2.2

.preheader18.1.2.2:                               ; preds = %.preheader18.2.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit128, label %.preheader19.3.2

.preheader19.3.2:                                 ; preds = %.preheader18.1.2.2
  br label %.preheader18.preheader.3.2

.preheader18.preheader.3.2:                       ; preds = %.preheader19.3.2
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %.preheader18.preheader.3.2
  br label %.preheader18.1.3.2

.preheader18.1.3.2:                               ; preds = %.preheader18.3.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit128, label %.preheader19.4.2

.preheader19.4.2:                                 ; preds = %.preheader18.1.3.2
  br i1 false, label %.preheader18.preheader.4, label %148

148:                                              ; preds = %.preheader19.4.2
  unreachable

149:                                              ; preds = %147
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ 1, %147 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ 4, %147 ]
  %storemerge6.lcssa = phi i32 [ 2, %147 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %150

150:                                              ; preds = %149
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %150
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.preheader
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader
  br label %.preheader16.1

.preheader16.1:                                   ; preds = %.preheader16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %.preheader16.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit141, label %.preheader17.1

.loopexit141:                                     ; preds = %.preheader16.2.4, %.preheader16.2.3, %.preheader16.2.2, %.preheader16.2.1147, %.preheader16.2
  %invariant.op25.lcssa.ph = phi i32 [ 0, %.preheader16.2 ], [ 1, %.preheader16.2.1147 ], [ 2, %.preheader16.2.2 ], [ 3, %.preheader16.2.3 ], [ 4, %.preheader16.2.4 ]
  br label %151

151:                                              ; preds = %.loopexit141, %.preheader16.2.1
  %invariant.op25.lcssa = phi i32 [ %invariant.op25.1, %.preheader16.2.1 ], [ %invariant.op25.lcssa.ph, %.loopexit141 ]
  %.reass26.2 = add i32 128, %invariant.op25.lcssa
  %152 = sext i32 %.reass26.2 to i64
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %152
  store i32 1, ptr %153, align 4
  unreachable

.preheader17.1:                                   ; preds = %.preheader16.2
  br i1 false, label %.preheader16.preheader.1, label %159

.preheader16.preheader.1:                         ; preds = %.preheader17.1.4, %.preheader17.1.3, %.preheader17.1.2, %.preheader17.1.1, %.preheader17.1
  %storemerge7.lcssa139 = phi i32 [ 0, %.preheader17.1 ], [ 1, %.preheader17.1.1 ], [ 2, %.preheader17.1.2 ], [ 3, %.preheader17.1.3 ], [ 4, %.preheader17.1.4 ]
  %invariant.op25.1 = add i32 8, %storemerge7.lcssa139
  br label %.preheader16.1137

.preheader16.1137:                                ; preds = %.preheader16.preheader.1
  br label %.preheader16.1.1

.preheader16.1.1:                                 ; preds = %.preheader16.1137
  %154 = sext i32 %invariant.op25.1 to i64
  %155 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %154
  store i32 1, ptr %155, align 4
  br label %.preheader16.2.1

.preheader16.2.1:                                 ; preds = %.preheader16.1.1
  %.reass26.1.1 = add i32 64, %invariant.op25.1
  %156 = sext i32 %.reass26.1.1 to i64
  %157 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %156
  store i32 1, ptr %157, align 4
  br i1 false, label %151, label %158

158:                                              ; preds = %.preheader16.2.1
  unreachable

159:                                              ; preds = %.preheader17.1
  br label %.preheader17.preheader.1

.preheader17.preheader.1:                         ; preds = %159
  br label %.preheader17.1142

.preheader17.1142:                                ; preds = %.preheader17.preheader.1
  br label %.preheader16.preheader.1143

.preheader16.preheader.1143:                      ; preds = %.preheader17.1142
  br label %.preheader16.1144

.preheader16.1144:                                ; preds = %.preheader16.preheader.1143
  br label %.preheader16.1.1145

.preheader16.1.1145:                              ; preds = %.preheader16.1144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %.preheader16.2.1147

.preheader16.2.1147:                              ; preds = %.preheader16.1.1145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit141, label %.preheader17.1.1

.preheader17.1.1:                                 ; preds = %.preheader16.2.1147
  br i1 false, label %.preheader16.preheader.1, label %160

160:                                              ; preds = %.preheader17.1.1
  br label %.preheader17.preheader.2

.preheader17.preheader.2:                         ; preds = %160
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %.preheader17.preheader.2
  br label %.preheader16.preheader.2

.preheader16.preheader.2:                         ; preds = %.preheader17.2
  br label %.preheader16.2148

.preheader16.2148:                                ; preds = %.preheader16.preheader.2
  br label %.preheader16.1.2

.preheader16.1.2:                                 ; preds = %.preheader16.2148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %.preheader16.2.2

.preheader16.2.2:                                 ; preds = %.preheader16.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit141, label %.preheader17.1.2

.preheader17.1.2:                                 ; preds = %.preheader16.2.2
  br i1 false, label %.preheader16.preheader.1, label %161

161:                                              ; preds = %.preheader17.1.2
  br label %.preheader17.preheader.3

.preheader17.preheader.3:                         ; preds = %161
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %.preheader17.preheader.3
  br label %.preheader16.preheader.3

.preheader16.preheader.3:                         ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %.preheader16.preheader.3
  br label %.preheader16.1.3

.preheader16.1.3:                                 ; preds = %.preheader16.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %.preheader16.2.3

.preheader16.2.3:                                 ; preds = %.preheader16.1.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit141, label %.preheader17.1.3

.preheader17.1.3:                                 ; preds = %.preheader16.2.3
  br i1 false, label %.preheader16.preheader.1, label %162

162:                                              ; preds = %.preheader17.1.3
  br i1 false, label %.preheader17.preheader.4, label %164

.preheader17.preheader.4:                         ; preds = %162
  br label %.preheader17.4

.preheader17.4:                                   ; preds = %.preheader17.preheader.4
  br label %.preheader16.preheader.4

.preheader16.preheader.4:                         ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %.preheader16.preheader.4
  br label %.preheader16.1.4

.preheader16.1.4:                                 ; preds = %.preheader16.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %.preheader16.2.4

.preheader16.2.4:                                 ; preds = %.preheader16.1.4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit141, label %.preheader17.1.4

.preheader17.1.4:                                 ; preds = %.preheader16.2.4
  br i1 false, label %.preheader16.preheader.1, label %163

163:                                              ; preds = %.preheader17.1.4
  unreachable

164:                                              ; preds = %162
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ 2, %162 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ 1, %162 ]
  %storemerge7.lcssa = phi i32 [ 4, %162 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %165

165:                                              ; preds = %164
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %165
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %.preheader14
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %.preheader14.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %.preheader14.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %.preheader14.4

.preheader14.4:                                   ; preds = %.preheader14.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit154, label %.preheader15.1

.loopexit154:                                     ; preds = %.preheader14.4.1.1, %.preheader14.4.1164, %.preheader14.4, %.preheader14.4.1
  %invariant.op30.lcssa.ph = phi i32 [ 8, %.preheader14.4.1 ], [ 0, %.preheader14.4 ], [ 1, %.preheader14.4.1164 ], [ 9, %.preheader14.4.1.1 ]
  br label %166

166:                                              ; preds = %.loopexit154, %.preheader14.4.2
  %invariant.op30.lcssa = phi i32 [ %invariant.op30.2, %.preheader14.4.2 ], [ %invariant.op30.lcssa.ph, %.loopexit154 ]
  %.reass31.4 = add i32 256, %invariant.op30.lcssa
  %167 = sext i32 %.reass31.4 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %167
  store i32 1, ptr %168, align 4
  unreachable

.preheader15.1:                                   ; preds = %.preheader14.4
  br label %.preheader14.preheader.1

.preheader14.preheader.1:                         ; preds = %.preheader15.1
  br label %.preheader14.1149

.preheader14.1149:                                ; preds = %.preheader14.preheader.1
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %.preheader14.1149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %.preheader14.2.1

.preheader14.2.1:                                 ; preds = %.preheader14.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %.preheader14.3.1

.preheader14.3.1:                                 ; preds = %.preheader14.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %.preheader14.4.1

.preheader14.4.1:                                 ; preds = %.preheader14.3.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit154, label %.preheader15.2

.preheader15.2:                                   ; preds = %.preheader14.4.1
  br i1 false, label %.preheader14.preheader.2, label %178

.preheader14.preheader.2:                         ; preds = %.preheader15.2.1, %.preheader15.2
  %storemerge8.lcssa153 = phi i32 [ 0, %.preheader15.2 ], [ 1, %.preheader15.2.1 ]
  %invariant.op30.2 = add i32 16, %storemerge8.lcssa153
  br label %.preheader14.2150

.preheader14.2150:                                ; preds = %.preheader14.preheader.2
  br label %.preheader14.1.2

.preheader14.1.2:                                 ; preds = %.preheader14.2150
  %169 = sext i32 %invariant.op30.2 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %169
  store i32 1, ptr %170, align 4
  br label %.preheader14.2.2

.preheader14.2.2:                                 ; preds = %.preheader14.1.2
  %.reass31.1.2 = add i32 64, %invariant.op30.2
  %171 = sext i32 %.reass31.1.2 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %171
  store i32 1, ptr %172, align 4
  br label %.preheader14.3.2

.preheader14.3.2:                                 ; preds = %.preheader14.2.2
  %.reass31.2.2 = add i32 128, %invariant.op30.2
  %173 = sext i32 %.reass31.2.2 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %173
  store i32 1, ptr %174, align 4
  br label %.preheader14.4.2

.preheader14.4.2:                                 ; preds = %.preheader14.3.2
  %.reass31.3.2 = add i32 192, %invariant.op30.2
  %175 = sext i32 %.reass31.3.2 to i64
  %176 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %175
  store i32 1, ptr %176, align 4
  br i1 false, label %166, label %177

177:                                              ; preds = %.preheader14.4.2
  unreachable

178:                                              ; preds = %.preheader15.2
  br i1 false, label %.preheader15.preheader.1, label %180

.preheader15.preheader.1:                         ; preds = %178
  br label %.preheader15.1155

.preheader15.1155:                                ; preds = %.preheader15.preheader.1
  br label %.preheader14.preheader.1156

.preheader14.preheader.1156:                      ; preds = %.preheader15.1155
  br label %.preheader14.1157

.preheader14.1157:                                ; preds = %.preheader14.preheader.1156
  br label %.preheader14.1.1158

.preheader14.1.1158:                              ; preds = %.preheader14.1157
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %.preheader14.2.1160

.preheader14.2.1160:                              ; preds = %.preheader14.1.1158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %.preheader14.3.1162

.preheader14.3.1162:                              ; preds = %.preheader14.2.1160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %.preheader14.4.1164

.preheader14.4.1164:                              ; preds = %.preheader14.3.1162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit154, label %.preheader15.1.1

.preheader15.1.1:                                 ; preds = %.preheader14.4.1164
  br label %.preheader14.preheader.1.1

.preheader14.preheader.1.1:                       ; preds = %.preheader15.1.1
  br label %.preheader14.1149.1

.preheader14.1149.1:                              ; preds = %.preheader14.preheader.1.1
  br label %.preheader14.1.1.1

.preheader14.1.1.1:                               ; preds = %.preheader14.1149.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %.preheader14.2.1.1

.preheader14.2.1.1:                               ; preds = %.preheader14.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %.preheader14.3.1.1

.preheader14.3.1.1:                               ; preds = %.preheader14.2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %.preheader14.4.1.1

.preheader14.4.1.1:                               ; preds = %.preheader14.3.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit154, label %.preheader15.2.1

.preheader15.2.1:                                 ; preds = %.preheader14.4.1.1
  br i1 false, label %.preheader14.preheader.2, label %179

179:                                              ; preds = %.preheader15.2.1
  unreachable

180:                                              ; preds = %178
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ 4, %178 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ 2, %178 ]
  %storemerge8.lcssa = phi i32 [ 1, %178 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %181

181:                                              ; preds = %180
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %181
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader
  br label %.preheader12.1

.preheader12.1:                                   ; preds = %.preheader12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit169, label %.preheader13.1

.loopexit169:                                     ; preds = %.preheader12.1.3, %.preheader12.1.2, %.preheader12.1.1173, %.preheader12.1
  %invariant.op35.lcssa.ph = phi i32 [ 0, %.preheader12.1 ], [ 1, %.preheader12.1.1173 ], [ 2, %.preheader12.1.2 ], [ 3, %.preheader12.1.3 ]
  br label %182

182:                                              ; preds = %.loopexit169, %.preheader12.1.1
  %invariant.op35.lcssa = phi i32 [ %invariant.op35.1, %.preheader12.1.1 ], [ %invariant.op35.lcssa.ph, %.loopexit169 ]
  %.reass36.1 = add i32 64, %invariant.op35.lcssa
  %183 = sext i32 %.reass36.1 to i64
  %184 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %183
  store i32 1, ptr %184, align 4
  unreachable

.preheader13.1:                                   ; preds = %.preheader12.1
  br i1 false, label %.preheader12.preheader.1, label %188

.preheader12.preheader.1:                         ; preds = %.preheader13.1.3, %.preheader13.1.2, %.preheader13.1.1, %.preheader13.1
  %storemerge9.lcssa167 = phi i32 [ 0, %.preheader13.1 ], [ 1, %.preheader13.1.1 ], [ 2, %.preheader13.1.2 ], [ 3, %.preheader13.1.3 ]
  %invariant.op35.1 = add i32 8, %storemerge9.lcssa167
  br label %.preheader12.1165

.preheader12.1165:                                ; preds = %.preheader12.preheader.1
  br label %.preheader12.1.1

.preheader12.1.1:                                 ; preds = %.preheader12.1165
  %185 = sext i32 %invariant.op35.1 to i64
  %186 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %185
  store i32 1, ptr %186, align 4
  br i1 false, label %182, label %187

187:                                              ; preds = %.preheader12.1.1
  unreachable

188:                                              ; preds = %.preheader13.1
  br label %.preheader13.preheader.1

.preheader13.preheader.1:                         ; preds = %188
  br label %.preheader13.1170

.preheader13.1170:                                ; preds = %.preheader13.preheader.1
  br label %.preheader12.preheader.1171

.preheader12.preheader.1171:                      ; preds = %.preheader13.1170
  br label %.preheader12.1172

.preheader12.1172:                                ; preds = %.preheader12.preheader.1171
  br label %.preheader12.1.1173

.preheader12.1.1173:                              ; preds = %.preheader12.1172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit169, label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %.preheader12.1.1173
  br i1 false, label %.preheader12.preheader.1, label %189

189:                                              ; preds = %.preheader13.1.1
  br label %.preheader13.preheader.2

.preheader13.preheader.2:                         ; preds = %189
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %.preheader13.preheader.2
  br label %.preheader12.preheader.2

.preheader12.preheader.2:                         ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %.preheader12.preheader.2
  br label %.preheader12.1.2

.preheader12.1.2:                                 ; preds = %.preheader12.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit169, label %.preheader13.1.2

.preheader13.1.2:                                 ; preds = %.preheader12.1.2
  br i1 false, label %.preheader12.preheader.1, label %190

190:                                              ; preds = %.preheader13.1.2
  br i1 false, label %.preheader13.preheader.3, label %192

.preheader13.preheader.3:                         ; preds = %190
  br label %.preheader13.3

.preheader13.3:                                   ; preds = %.preheader13.preheader.3
  br label %.preheader12.preheader.3

.preheader12.preheader.3:                         ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %.preheader12.preheader.3
  br label %.preheader12.1.3

.preheader12.1.3:                                 ; preds = %.preheader12.3
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit169, label %.preheader13.1.3

.preheader13.1.3:                                 ; preds = %.preheader12.1.3
  br i1 false, label %.preheader12.preheader.1, label %191

191:                                              ; preds = %.preheader13.1.3
  unreachable

192:                                              ; preds = %190
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ 1, %190 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ 1, %190 ]
  %storemerge9.lcssa = phi i32 [ 3, %190 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %193

193:                                              ; preds = %192
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %193
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %.preheader10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit178, label %.preheader11.1

.loopexit178:                                     ; preds = %.preheader10.1.2.1, %.preheader10.1.1.1, %.preheader10.1.1182, %.preheader10.1, %.preheader10.1.1, %.preheader10.1.2
  %invariant.op40.lcssa.ph = phi i32 [ 16, %.preheader10.1.2 ], [ 8, %.preheader10.1.1 ], [ 0, %.preheader10.1 ], [ 1, %.preheader10.1.1182 ], [ 9, %.preheader10.1.1.1 ], [ 17, %.preheader10.1.2.1 ]
  br label %194

194:                                              ; preds = %.loopexit178, %.preheader10.1.3
  %invariant.op40.lcssa = phi i32 [ %invariant.op40.3, %.preheader10.1.3 ], [ %invariant.op40.lcssa.ph, %.loopexit178 ]
  %.reass41.1 = add i32 64, %invariant.op40.lcssa
  %195 = sext i32 %.reass41.1 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %195
  store i32 1, ptr %196, align 4
  unreachable

.preheader11.1:                                   ; preds = %.preheader10.1
  br label %.preheader10.preheader.1

.preheader10.preheader.1:                         ; preds = %.preheader11.1
  br label %.preheader10.1174

.preheader10.1174:                                ; preds = %.preheader10.preheader.1
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %.preheader10.1174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit178, label %.preheader11.2

.preheader11.2:                                   ; preds = %.preheader10.1.1
  br label %.preheader10.preheader.2

.preheader10.preheader.2:                         ; preds = %.preheader11.2
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %.preheader10.preheader.2
  br label %.preheader10.1.2

.preheader10.1.2:                                 ; preds = %.preheader10.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit178, label %.preheader11.3

.preheader11.3:                                   ; preds = %.preheader10.1.2
  br i1 false, label %.preheader10.preheader.3, label %200

.preheader10.preheader.3:                         ; preds = %.preheader11.3.1, %.preheader11.3
  %storemerge10.lcssa177 = phi i32 [ 0, %.preheader11.3 ], [ 1, %.preheader11.3.1 ]
  %invariant.op40.3 = add i32 24, %storemerge10.lcssa177
  br label %.preheader10.3

.preheader10.3:                                   ; preds = %.preheader10.preheader.3
  br label %.preheader10.1.3

.preheader10.1.3:                                 ; preds = %.preheader10.3
  %197 = sext i32 %invariant.op40.3 to i64
  %198 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %197
  store i32 1, ptr %198, align 4
  br i1 false, label %194, label %199

199:                                              ; preds = %.preheader10.1.3
  unreachable

200:                                              ; preds = %.preheader11.3
  br i1 false, label %.preheader11.preheader.1, label %202

.preheader11.preheader.1:                         ; preds = %200
  br label %.preheader11.1179

.preheader11.1179:                                ; preds = %.preheader11.preheader.1
  br label %.preheader10.preheader.1180

.preheader10.preheader.1180:                      ; preds = %.preheader11.1179
  br label %.preheader10.1181

.preheader10.1181:                                ; preds = %.preheader10.preheader.1180
  br label %.preheader10.1.1182

.preheader10.1.1182:                              ; preds = %.preheader10.1181
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit178, label %.preheader11.1.1

.preheader11.1.1:                                 ; preds = %.preheader10.1.1182
  br label %.preheader10.preheader.1.1

.preheader10.preheader.1.1:                       ; preds = %.preheader11.1.1
  br label %.preheader10.1174.1

.preheader10.1174.1:                              ; preds = %.preheader10.preheader.1.1
  br label %.preheader10.1.1.1

.preheader10.1.1.1:                               ; preds = %.preheader10.1174.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit178, label %.preheader11.2.1

.preheader11.2.1:                                 ; preds = %.preheader10.1.1.1
  br label %.preheader10.preheader.2.1

.preheader10.preheader.2.1:                       ; preds = %.preheader11.2.1
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %.preheader10.preheader.2.1
  br label %.preheader10.1.2.1

.preheader10.1.2.1:                               ; preds = %.preheader10.2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit178, label %.preheader11.3.1

.preheader11.3.1:                                 ; preds = %.preheader10.1.2.1
  br i1 false, label %.preheader10.preheader.3, label %201

201:                                              ; preds = %.preheader11.3.1
  unreachable

202:                                              ; preds = %200
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ 1, %200 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ 3, %200 ]
  %storemerge10.lcssa = phi i32 [ 1, %200 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %203

203:                                              ; preds = %202
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %203
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.preheader
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader
  br label %.preheader8.1

.preheader8.1:                                    ; preds = %.preheader8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %.preheader8.2

.preheader8.2:                                    ; preds = %.preheader8.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %.preheader8.3

.preheader8.3:                                    ; preds = %.preheader8.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit187, label %.preheader9.1

.loopexit187:                                     ; preds = %.preheader8.3.1195, %.preheader8.3
  %invariant.op45.lcssa.ph = phi i32 [ 0, %.preheader8.3 ], [ 1, %.preheader8.3.1195 ]
  br label %204

204:                                              ; preds = %.loopexit187, %.preheader8.3.1
  %invariant.op45.lcssa = phi i32 [ %invariant.op45.1, %.preheader8.3.1 ], [ %invariant.op45.lcssa.ph, %.loopexit187 ]
  %.reass46.3 = add i32 192, %invariant.op45.lcssa
  %205 = sext i32 %.reass46.3 to i64
  %206 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %205
  store i32 1, ptr %206, align 4
  unreachable

.preheader9.1:                                    ; preds = %.preheader8.3
  br i1 false, label %.preheader8.preheader.1, label %214

.preheader8.preheader.1:                          ; preds = %.preheader9.1.1, %.preheader9.1
  %storemerge11.lcssa185 = phi i32 [ 0, %.preheader9.1 ], [ 1, %.preheader9.1.1 ]
  %invariant.op45.1 = add i32 8, %storemerge11.lcssa185
  br label %.preheader8.1183

.preheader8.1183:                                 ; preds = %.preheader8.preheader.1
  br label %.preheader8.1.1

.preheader8.1.1:                                  ; preds = %.preheader8.1183
  %207 = sext i32 %invariant.op45.1 to i64
  %208 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %207
  store i32 1, ptr %208, align 4
  br label %.preheader8.2.1

.preheader8.2.1:                                  ; preds = %.preheader8.1.1
  %.reass46.1.1 = add i32 64, %invariant.op45.1
  %209 = sext i32 %.reass46.1.1 to i64
  %210 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %209
  store i32 1, ptr %210, align 4
  br label %.preheader8.3.1

.preheader8.3.1:                                  ; preds = %.preheader8.2.1
  %.reass46.2.1 = add i32 128, %invariant.op45.1
  %211 = sext i32 %.reass46.2.1 to i64
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %211
  store i32 1, ptr %212, align 4
  br i1 false, label %204, label %213

213:                                              ; preds = %.preheader8.3.1
  unreachable

214:                                              ; preds = %.preheader9.1
  br i1 false, label %.preheader9.preheader.1, label %216

.preheader9.preheader.1:                          ; preds = %214
  br label %.preheader9.1188

.preheader9.1188:                                 ; preds = %.preheader9.preheader.1
  br label %.preheader8.preheader.1189

.preheader8.preheader.1189:                       ; preds = %.preheader9.1188
  br label %.preheader8.1190

.preheader8.1190:                                 ; preds = %.preheader8.preheader.1189
  br label %.preheader8.1.1191

.preheader8.1.1191:                               ; preds = %.preheader8.1190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %.preheader8.2.1193

.preheader8.2.1193:                               ; preds = %.preheader8.1.1191
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %.preheader8.3.1195

.preheader8.3.1195:                               ; preds = %.preheader8.2.1193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit187, label %.preheader9.1.1

.preheader9.1.1:                                  ; preds = %.preheader8.3.1195
  br i1 false, label %.preheader8.preheader.1, label %215

215:                                              ; preds = %.preheader9.1.1
  unreachable

216:                                              ; preds = %214
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ 3, %214 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ 1, %214 ]
  %storemerge11.lcssa = phi i32 [ 1, %214 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %217

217:                                              ; preds = %216
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %217
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %.preheader6
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit200, label %.preheader7.1

.loopexit200:                                     ; preds = %.preheader6.1.1.2, %.preheader6.1.2208, %.preheader6.1.1.1, %.preheader6.1.1204, %.preheader6.1, %.preheader6.1.1
  %invariant.op50.lcssa.ph = phi i32 [ 8, %.preheader6.1.1 ], [ 0, %.preheader6.1 ], [ 1, %.preheader6.1.1204 ], [ 9, %.preheader6.1.1.1 ], [ 2, %.preheader6.1.2208 ], [ 10, %.preheader6.1.1.2 ]
  br label %218

218:                                              ; preds = %.loopexit200, %.preheader6.1.2
  %invariant.op50.lcssa = phi i32 [ %invariant.op50.2, %.preheader6.1.2 ], [ %invariant.op50.lcssa.ph, %.loopexit200 ]
  %.reass51.1 = add i32 64, %invariant.op50.lcssa
  %219 = sext i32 %.reass51.1 to i64
  %220 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %219
  store i32 1, ptr %220, align 4
  unreachable

.preheader7.1:                                    ; preds = %.preheader6.1
  br label %.preheader6.preheader.1

.preheader6.preheader.1:                          ; preds = %.preheader7.1
  br label %.preheader6.1196

.preheader6.1196:                                 ; preds = %.preheader6.preheader.1
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %.preheader6.1196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit200, label %.preheader7.2

.preheader7.2:                                    ; preds = %.preheader6.1.1
  br i1 false, label %.preheader6.preheader.2, label %224

.preheader6.preheader.2:                          ; preds = %.preheader7.2.2, %.preheader7.2.1, %.preheader7.2
  %storemerge12.lcssa199 = phi i32 [ 0, %.preheader7.2 ], [ 1, %.preheader7.2.1 ], [ 2, %.preheader7.2.2 ]
  %invariant.op50.2 = add i32 16, %storemerge12.lcssa199
  br label %.preheader6.2

.preheader6.2:                                    ; preds = %.preheader6.preheader.2
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %.preheader6.2
  %221 = sext i32 %invariant.op50.2 to i64
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %221
  store i32 1, ptr %222, align 4
  br i1 false, label %218, label %223

223:                                              ; preds = %.preheader6.1.2
  unreachable

224:                                              ; preds = %.preheader7.2
  br label %.preheader7.preheader.1

.preheader7.preheader.1:                          ; preds = %224
  br label %.preheader7.1201

.preheader7.1201:                                 ; preds = %.preheader7.preheader.1
  br label %.preheader6.preheader.1202

.preheader6.preheader.1202:                       ; preds = %.preheader7.1201
  br label %.preheader6.1203

.preheader6.1203:                                 ; preds = %.preheader6.preheader.1202
  br label %.preheader6.1.1204

.preheader6.1.1204:                               ; preds = %.preheader6.1203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit200, label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %.preheader6.1.1204
  br label %.preheader6.preheader.1.1

.preheader6.preheader.1.1:                        ; preds = %.preheader7.1.1
  br label %.preheader6.1196.1

.preheader6.1196.1:                               ; preds = %.preheader6.preheader.1.1
  br label %.preheader6.1.1.1

.preheader6.1.1.1:                                ; preds = %.preheader6.1196.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit200, label %.preheader7.2.1

.preheader7.2.1:                                  ; preds = %.preheader6.1.1.1
  br i1 false, label %.preheader6.preheader.2, label %225

225:                                              ; preds = %.preheader7.2.1
  br i1 false, label %.preheader7.preheader.2, label %227

.preheader7.preheader.2:                          ; preds = %225
  br label %.preheader7.2205

.preheader7.2205:                                 ; preds = %.preheader7.preheader.2
  br label %.preheader6.preheader.2206

.preheader6.preheader.2206:                       ; preds = %.preheader7.2205
  br label %.preheader6.2207

.preheader6.2207:                                 ; preds = %.preheader6.preheader.2206
  br label %.preheader6.1.2208

.preheader6.1.2208:                               ; preds = %.preheader6.2207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit200, label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %.preheader6.1.2208
  br label %.preheader6.preheader.1.2

.preheader6.preheader.1.2:                        ; preds = %.preheader7.1.2
  br label %.preheader6.1196.2

.preheader6.1196.2:                               ; preds = %.preheader6.preheader.1.2
  br label %.preheader6.1.1.2

.preheader6.1.1.2:                                ; preds = %.preheader6.1196.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit200, label %.preheader7.2.2

.preheader7.2.2:                                  ; preds = %.preheader6.1.1.2
  br i1 false, label %.preheader6.preheader.2, label %226

226:                                              ; preds = %.preheader7.2.2
  unreachable

227:                                              ; preds = %225
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ 1, %225 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ 2, %225 ]
  %storemerge12.lcssa = phi i32 [ 2, %225 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %228

228:                                              ; preds = %227
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %228
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.preheader
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader
  br label %.preheader4.1

.preheader4.1:                                    ; preds = %.preheader4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %.preheader4.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit213, label %.preheader5.1

.loopexit213:                                     ; preds = %.preheader4.2.2, %.preheader4.2.1219, %.preheader4.2
  %invariant.op55.lcssa.ph = phi i32 [ 0, %.preheader4.2 ], [ 1, %.preheader4.2.1219 ], [ 2, %.preheader4.2.2 ]
  br label %229

229:                                              ; preds = %.loopexit213, %.preheader4.2.1
  %invariant.op55.lcssa = phi i32 [ %invariant.op55.1, %.preheader4.2.1 ], [ %invariant.op55.lcssa.ph, %.loopexit213 ]
  %.reass56.2 = add i32 128, %invariant.op55.lcssa
  %230 = sext i32 %.reass56.2 to i64
  %231 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %230
  store i32 1, ptr %231, align 4
  unreachable

.preheader5.1:                                    ; preds = %.preheader4.2
  br i1 false, label %.preheader4.preheader.1, label %237

.preheader4.preheader.1:                          ; preds = %.preheader5.1.2, %.preheader5.1.1, %.preheader5.1
  %storemerge13.lcssa211 = phi i32 [ 0, %.preheader5.1 ], [ 1, %.preheader5.1.1 ], [ 2, %.preheader5.1.2 ]
  %invariant.op55.1 = add i32 8, %storemerge13.lcssa211
  br label %.preheader4.1209

.preheader4.1209:                                 ; preds = %.preheader4.preheader.1
  br label %.preheader4.1.1

.preheader4.1.1:                                  ; preds = %.preheader4.1209
  %232 = sext i32 %invariant.op55.1 to i64
  %233 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %232
  store i32 1, ptr %233, align 4
  br label %.preheader4.2.1

.preheader4.2.1:                                  ; preds = %.preheader4.1.1
  %.reass56.1.1 = add i32 64, %invariant.op55.1
  %234 = sext i32 %.reass56.1.1 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %234
  store i32 1, ptr %235, align 4
  br i1 false, label %229, label %236

236:                                              ; preds = %.preheader4.2.1
  unreachable

237:                                              ; preds = %.preheader5.1
  br label %.preheader5.preheader.1

.preheader5.preheader.1:                          ; preds = %237
  br label %.preheader5.1214

.preheader5.1214:                                 ; preds = %.preheader5.preheader.1
  br label %.preheader4.preheader.1215

.preheader4.preheader.1215:                       ; preds = %.preheader5.1214
  br label %.preheader4.1216

.preheader4.1216:                                 ; preds = %.preheader4.preheader.1215
  br label %.preheader4.1.1217

.preheader4.1.1217:                               ; preds = %.preheader4.1216
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %.preheader4.2.1219

.preheader4.2.1219:                               ; preds = %.preheader4.1.1217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit213, label %.preheader5.1.1

.preheader5.1.1:                                  ; preds = %.preheader4.2.1219
  br i1 false, label %.preheader4.preheader.1, label %238

238:                                              ; preds = %.preheader5.1.1
  br i1 false, label %.preheader5.preheader.2, label %240

.preheader5.preheader.2:                          ; preds = %238
  br label %.preheader5.2

.preheader5.2:                                    ; preds = %.preheader5.preheader.2
  br label %.preheader4.preheader.2

.preheader4.preheader.2:                          ; preds = %.preheader5.2
  br label %.preheader4.2220

.preheader4.2220:                                 ; preds = %.preheader4.preheader.2
  br label %.preheader4.1.2

.preheader4.1.2:                                  ; preds = %.preheader4.2220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %.preheader4.2.2

.preheader4.2.2:                                  ; preds = %.preheader4.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit213, label %.preheader5.1.2

.preheader5.1.2:                                  ; preds = %.preheader4.2.2
  br i1 false, label %.preheader4.preheader.1, label %239

239:                                              ; preds = %.preheader5.1.2
  unreachable

240:                                              ; preds = %238
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ 2, %238 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ 1, %238 ]
  %storemerge13.lcssa = phi i32 [ 2, %238 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %241

241:                                              ; preds = %240
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %241
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %.preheader2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %.preheader2.2

.preheader2.2:                                    ; preds = %.preheader2.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit226, label %.preheader3.1

.loopexit226:                                     ; preds = %.preheader2.2.1.1, %.preheader2.2.1232, %.preheader2.2, %.preheader2.2.1
  %invariant.op60.lcssa.ph = phi i32 [ 8, %.preheader2.2.1 ], [ 0, %.preheader2.2 ], [ 1, %.preheader2.2.1232 ], [ 9, %.preheader2.2.1.1 ]
  br label %242

242:                                              ; preds = %.loopexit226, %.preheader2.2.2
  %invariant.op60.lcssa = phi i32 [ %invariant.op60.2, %.preheader2.2.2 ], [ %invariant.op60.lcssa.ph, %.loopexit226 ]
  %.reass61.2 = add i32 128, %invariant.op60.lcssa
  %243 = sext i32 %.reass61.2 to i64
  %244 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %243
  store i32 1, ptr %244, align 4
  unreachable

.preheader3.1:                                    ; preds = %.preheader2.2
  br label %.preheader2.preheader.1

.preheader2.preheader.1:                          ; preds = %.preheader3.1
  br label %.preheader2.1221

.preheader2.1221:                                 ; preds = %.preheader2.preheader.1
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %.preheader2.1221
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %.preheader2.2.1

.preheader2.2.1:                                  ; preds = %.preheader2.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit226, label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader2.2.1
  br i1 false, label %.preheader2.preheader.2, label %250

.preheader2.preheader.2:                          ; preds = %.preheader3.2.1, %.preheader3.2
  %storemerge14.lcssa225 = phi i32 [ 0, %.preheader3.2 ], [ 1, %.preheader3.2.1 ]
  %invariant.op60.2 = add i32 16, %storemerge14.lcssa225
  br label %.preheader2.2222

.preheader2.2222:                                 ; preds = %.preheader2.preheader.2
  br label %.preheader2.1.2

.preheader2.1.2:                                  ; preds = %.preheader2.2222
  %245 = sext i32 %invariant.op60.2 to i64
  %246 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %245
  store i32 1, ptr %246, align 4
  br label %.preheader2.2.2

.preheader2.2.2:                                  ; preds = %.preheader2.1.2
  %.reass61.1.2 = add i32 64, %invariant.op60.2
  %247 = sext i32 %.reass61.1.2 to i64
  %248 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %247
  store i32 1, ptr %248, align 4
  br i1 false, label %242, label %249

249:                                              ; preds = %.preheader2.2.2
  unreachable

250:                                              ; preds = %.preheader3.2
  br i1 false, label %.preheader3.preheader.1, label %252

.preheader3.preheader.1:                          ; preds = %250
  br label %.preheader3.1227

.preheader3.1227:                                 ; preds = %.preheader3.preheader.1
  br label %.preheader2.preheader.1228

.preheader2.preheader.1228:                       ; preds = %.preheader3.1227
  br label %.preheader2.1229

.preheader2.1229:                                 ; preds = %.preheader2.preheader.1228
  br label %.preheader2.1.1230

.preheader2.1.1230:                               ; preds = %.preheader2.1229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %.preheader2.2.1232

.preheader2.2.1232:                               ; preds = %.preheader2.1.1230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit226, label %.preheader3.1.1

.preheader3.1.1:                                  ; preds = %.preheader2.2.1232
  br label %.preheader2.preheader.1.1

.preheader2.preheader.1.1:                        ; preds = %.preheader3.1.1
  br label %.preheader2.1221.1

.preheader2.1221.1:                               ; preds = %.preheader2.preheader.1.1
  br label %.preheader2.1.1.1

.preheader2.1.1.1:                                ; preds = %.preheader2.1221.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %.preheader2.2.1.1

.preheader2.2.1.1:                                ; preds = %.preheader2.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit226, label %.preheader3.2.1

.preheader3.2.1:                                  ; preds = %.preheader2.2.1.1
  br i1 false, label %.preheader2.preheader.2, label %251

251:                                              ; preds = %.preheader3.2.1
  unreachable

252:                                              ; preds = %250
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ 2, %250 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ 2, %250 ]
  %storemerge14.lcssa = phi i32 [ 1, %250 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %253

253:                                              ; preds = %252
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %253
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit238, label %.preheader1.1

.loopexit238:                                     ; preds = %.preheader.2.1.2, %.preheader.2.2250, %.preheader.2.1.1, %.preheader.2.1244, %.preheader.2, %.preheader.2.1
  %invariant.op65.lcssa.ph = phi i32 [ 8, %.preheader.2.1 ], [ 0, %.preheader.2 ], [ 1, %.preheader.2.1244 ], [ 9, %.preheader.2.1.1 ], [ 2, %.preheader.2.2250 ], [ 10, %.preheader.2.1.2 ]
  br label %254

254:                                              ; preds = %.loopexit238, %.preheader.2.2
  %invariant.op65.lcssa = phi i32 [ %invariant.op65.2, %.preheader.2.2 ], [ %invariant.op65.lcssa.ph, %.loopexit238 ]
  %.reass66.2 = add i32 128, %invariant.op65.lcssa
  %255 = sext i32 %.reass66.2 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %255
  store i32 1, ptr %256, align 4
  unreachable

.preheader1.1:                                    ; preds = %.preheader.2
  br label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader1.1
  br label %.preheader.1233

.preheader.1233:                                  ; preds = %.preheader.preheader.1
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %.preheader.1233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %.preheader.2.1

.preheader.2.1:                                   ; preds = %.preheader.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit238, label %.preheader1.2

.preheader1.2:                                    ; preds = %.preheader.2.1
  br i1 false, label %.preheader.preheader.2, label %262

.preheader.preheader.2:                           ; preds = %.preheader1.2.2, %.preheader1.2.1, %.preheader1.2
  %storemerge15.lcssa237 = phi i32 [ 0, %.preheader1.2 ], [ 1, %.preheader1.2.1 ], [ 2, %.preheader1.2.2 ]
  %invariant.op65.2 = add i32 16, %storemerge15.lcssa237
  br label %.preheader.2234

.preheader.2234:                                  ; preds = %.preheader.preheader.2
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %.preheader.2234
  %257 = sext i32 %invariant.op65.2 to i64
  %258 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %257
  store i32 1, ptr %258, align 4
  br label %.preheader.2.2

.preheader.2.2:                                   ; preds = %.preheader.1.2
  %.reass66.1.2 = add i32 64, %invariant.op65.2
  %259 = sext i32 %.reass66.1.2 to i64
  %260 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %259
  store i32 1, ptr %260, align 4
  br i1 false, label %254, label %261

261:                                              ; preds = %.preheader.2.2
  unreachable

262:                                              ; preds = %.preheader1.2
  br label %.preheader1.preheader.1

.preheader1.preheader.1:                          ; preds = %262
  br label %.preheader1.1239

.preheader1.1239:                                 ; preds = %.preheader1.preheader.1
  br label %.preheader.preheader.1240

.preheader.preheader.1240:                        ; preds = %.preheader1.1239
  br label %.preheader.1241

.preheader.1241:                                  ; preds = %.preheader.preheader.1240
  br label %.preheader.1.1242

.preheader.1.1242:                                ; preds = %.preheader.1241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %.preheader.2.1244

.preheader.2.1244:                                ; preds = %.preheader.1.1242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit238, label %.preheader1.1.1

.preheader1.1.1:                                  ; preds = %.preheader.2.1244
  br label %.preheader.preheader.1.1

.preheader.preheader.1.1:                         ; preds = %.preheader1.1.1
  br label %.preheader.1233.1

.preheader.1233.1:                                ; preds = %.preheader.preheader.1.1
  br label %.preheader.1.1.1

.preheader.1.1.1:                                 ; preds = %.preheader.1233.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %.preheader.2.1.1

.preheader.2.1.1:                                 ; preds = %.preheader.1.1.1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit238, label %.preheader1.2.1

.preheader1.2.1:                                  ; preds = %.preheader.2.1.1
  br i1 false, label %.preheader.preheader.2, label %263

263:                                              ; preds = %.preheader1.2.1
  br i1 false, label %.preheader1.preheader.2, label %265

.preheader1.preheader.2:                          ; preds = %263
  br label %.preheader1.2245

.preheader1.2245:                                 ; preds = %.preheader1.preheader.2
  br label %.preheader.preheader.2246

.preheader.preheader.2246:                        ; preds = %.preheader1.2245
  br label %.preheader.2247

.preheader.2247:                                  ; preds = %.preheader.preheader.2246
  br label %.preheader.1.2248

.preheader.1.2248:                                ; preds = %.preheader.2247
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %.preheader.2.2250

.preheader.2.2250:                                ; preds = %.preheader.1.2248
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit238, label %.preheader1.1.2

.preheader1.1.2:                                  ; preds = %.preheader.2.2250
  br label %.preheader.preheader.1.2

.preheader.preheader.1.2:                         ; preds = %.preheader1.1.2
  br label %.preheader.1233.2

.preheader.1233.2:                                ; preds = %.preheader.preheader.1.2
  br label %.preheader.1.1.2

.preheader.1.1.2:                                 ; preds = %.preheader.1233.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %.preheader.2.1.2

.preheader.2.1.2:                                 ; preds = %.preheader.1.1.2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit238, label %.preheader1.2.2

.preheader1.2.2:                                  ; preds = %.preheader.2.1.2
  br i1 false, label %.preheader.preheader.2, label %264

264:                                              ; preds = %.preheader1.2.2
  unreachable

265:                                              ; preds = %263
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ 2, %263 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ 2, %263 ]
  %storemerge15.lcssa = phi i32 [ 2, %263 ]
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
  %266 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %266, 0
  br i1 %.not, label %270, label %267

267:                                              ; preds = %265
  %268 = load i32, ptr %4, align 4
  %269 = call i32 @Place(i32 noundef 0, i32 noundef %268)
  store i32 %269, ptr @n, align 4
  br label %271

270:                                              ; preds = %265
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %271

271:                                              ; preds = %270, %267
  %272 = load i32, ptr @n, align 4
  %273 = call i32 @Trial(i32 noundef %272)
  %.not16 = icmp eq i32 %273, 0
  br i1 %.not16, label %274, label %275

274:                                              ; preds = %271
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %278

275:                                              ; preds = %271
  %276 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %276, 2005
  br i1 %.not18, label %278, label %277

277:                                              ; preds = %275
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %278

278:                                              ; preds = %277, %275, %274
  %279 = load i32, ptr @n, align 4
  %280 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %279) #4
  %281 = load i32, ptr @kount, align 4
  %282 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %281) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !17

6:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
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
