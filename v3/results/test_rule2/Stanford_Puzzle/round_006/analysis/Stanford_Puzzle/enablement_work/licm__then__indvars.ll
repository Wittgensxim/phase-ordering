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
  %12 = sext i32 %11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax, 1
  %wide.trip.count = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %23, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %2 ]
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %23, label %19

19:                                               ; preds = %16
  %20 = add nsw i64 %12, %indvars.iv
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  %22 = load i32, ptr %21, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %24

23:                                               ; preds = %19, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !7

24:                                               ; preds = %19, %14
  %storemerge.lcssa = phi i32 [ %15, %19 ], [ %13, %14 ]
  %storemerge1 = phi i32 [ 0, %19 ], [ 1, %14 ]
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
  %12 = sext i32 %11 to i64
  %smax6 = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax6, 1
  %wide.trip.count7 = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %21, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %21 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond, label %22, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv3
  %17 = load i32, ptr %16, align 4
  %.not4 = icmp eq i32 %17, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %12, %indvars.iv3
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %14, !llvm.loop !9

22:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv3, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %23 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %23, ptr %5, align 4
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

32:                                               ; preds = %39, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %22 ]
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
  store i32 %smax, ptr %5, align 4
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
  %12 = sext i32 %11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax, 1
  %wide.trip.count = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %21, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %22, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
  %17 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %21, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %12, %indvars.iv
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !11

22:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %23 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %23, ptr %5, align 4
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

9:                                                ; preds = %27, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %1 ]
  %10 = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %11, label %28

11:                                               ; preds = %9
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %27, label %17

17:                                               ; preds = %11
  %18 = trunc nuw nsw i64 %indvars.iv to i32
  %19 = call i32 @Fit(i32 noundef %18, i32 noundef %6)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %27, label %20

20:                                               ; preds = %17
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  %22 = call i32 @Place(i32 noundef %21, i32 noundef %7)
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp ne i32 %23, 0
  %24 = icmp eq i32 %22, 0
  %or.cond = or i1 %.not3, %24
  br i1 %or.cond, label %28, label %25

25:                                               ; preds = %20
  %26 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %26, i32 noundef %8)
  br label %27

27:                                               ; preds = %25, %17, %11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !12

28:                                               ; preds = %20, %9
  %storemerge.lcssa = phi i32 [ %10, %20 ], [ 13, %9 ]
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

5:                                                ; preds = %7, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %7, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %5
  %6 = trunc nuw nsw i64 512 to i32
  store i32 %6, ptr %4, align 4
  br label %.preheader31

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %17, %.preheader31.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %17 ], [ 1, %.preheader31.preheader ]
  %exitcond84 = icmp ne i64 %indvars.iv81, 6
  br i1 %exitcond84, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  %9 = trunc nuw nsw i64 6 to i32
  store i32 %9, ptr %1, align 4
  store i32 6, ptr %2, align 4
  store i32 6, ptr %3, align 4
  br label %.preheader28

.preheader30:                                     ; preds = %16, %.preheader30.preheader
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %16 ], [ 1, %.preheader30.preheader ]
  %exitcond80 = icmp ne i64 %indvars.iv76, 6
  br i1 %exitcond80, label %.preheader29.preheader, label %17

.preheader29.preheader:                           ; preds = %.preheader30
  %10 = shl i64 %indvars.iv76, 3
  %11 = add nuw nsw i64 %10, %indvars.iv81
  br label %.preheader29

.preheader29:                                     ; preds = %12, %.preheader29.preheader
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %12 ], [ 1, %.preheader29.preheader ]
  %exitcond75 = icmp ne i64 %indvars.iv71, 6
  br i1 %exitcond75, label %12, label %16

12:                                               ; preds = %.preheader29
  %13 = shl i64 %indvars.iv71, 6
  %14 = add nuw nsw i64 %13, %11
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %.preheader29, !llvm.loop !14

16:                                               ; preds = %.preheader29
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %.preheader30, !llvm.loop !15

17:                                               ; preds = %.preheader30
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %22, %.preheader28.preheader
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %22 ], [ 0, %.preheader28.preheader ]
  %exitcond92 = icmp ne i64 %indvars.iv89, 13
  br i1 %exitcond92, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv89
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  %19 = trunc nuw nsw i64 13 to i32
  store i32 %19, ptr %1, align 4
  store i32 512, ptr %4, align 4
  br label %.preheader26

.preheader27:                                     ; preds = %20, %.preheader27.preheader
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %20 ], [ 0, %.preheader27.preheader ]
  %exitcond88 = icmp ne i64 %indvars.iv85, 512
  br i1 %exitcond88, label %20, label %22

20:                                               ; preds = %.preheader27
  %21 = getelementptr inbounds [4 x i8], ptr %18, i64 %indvars.iv85
  store i32 0, ptr %21, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %.preheader27, !llvm.loop !17

22:                                               ; preds = %.preheader27
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %30, %.preheader26.preheader
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %30 ], [ 0, %.preheader26.preheader ]
  %exitcond106 = icmp ne i64 %indvars.iv103, 4
  br i1 %exitcond106, label %.preheader25.preheader, label %31

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %29, %.preheader25.preheader
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %29 ], [ 0, %.preheader25.preheader ]
  %exitcond102 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond102, label %.preheader24.preheader, label %30

.preheader24.preheader:                           ; preds = %.preheader25
  %23 = shl i64 %indvars.iv98, 3
  %24 = add nuw nsw i64 %23, %indvars.iv103
  br label %.preheader24

.preheader24:                                     ; preds = %25, %.preheader24.preheader
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %25 ], [ 0, %.preheader24.preheader ]
  %exitcond97 = icmp ne i64 %indvars.iv93, 1
  br i1 %exitcond97, label %25, label %29

25:                                               ; preds = %.preheader24
  %26 = shl i64 %indvars.iv93, 6
  %27 = add nuw nsw i64 %26, %24
  %28 = getelementptr inbounds [4 x i8], ptr @p, i64 %27
  store i32 1, ptr %28, align 4
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %.preheader24, !llvm.loop !19

29:                                               ; preds = %.preheader24
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %.preheader25, !llvm.loop !20

30:                                               ; preds = %.preheader25
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %.preheader26, !llvm.loop !21

31:                                               ; preds = %.preheader26
  %32 = trunc nuw nsw i64 4 to i32
  store i32 %32, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %33

33:                                               ; preds = %41, %31
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %41 ], [ 0, %31 ]
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %.preheader23.preheader, label %42

.preheader23.preheader:                           ; preds = %33
  br label %.preheader23

.preheader23:                                     ; preds = %40, %.preheader23.preheader
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %40 ], [ 0, %.preheader23.preheader ]
  %exitcond116 = icmp ne i64 %indvars.iv112, 1
  br i1 %exitcond116, label %.preheader22.preheader, label %41

.preheader22.preheader:                           ; preds = %.preheader23
  %34 = shl i64 %indvars.iv112, 3
  %35 = add nuw nsw i64 %34, %indvars.iv117
  br label %.preheader22

.preheader22:                                     ; preds = %36, %.preheader22.preheader
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %36 ], [ 0, %.preheader22.preheader ]
  %exitcond111 = icmp ne i64 %indvars.iv107, 4
  br i1 %exitcond111, label %36, label %40

36:                                               ; preds = %.preheader22
  %37 = shl i64 %indvars.iv107, 6
  %38 = add nuw nsw i64 %37, %35
  %39 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %38
  store i32 1, ptr %39, align 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %.preheader22, !llvm.loop !22

40:                                               ; preds = %.preheader22
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %.preheader23, !llvm.loop !23

41:                                               ; preds = %.preheader23
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %33, !llvm.loop !24

42:                                               ; preds = %33
  %43 = trunc nuw nsw i64 2 to i32
  store i32 %43, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %44

44:                                               ; preds = %52, %42
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %52 ], [ 0, %42 ]
  %exitcond134 = icmp ne i64 %indvars.iv131, 1
  br i1 %exitcond134, label %.preheader21.preheader, label %53

.preheader21.preheader:                           ; preds = %44
  br label %.preheader21

.preheader21:                                     ; preds = %51, %.preheader21.preheader
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %51 ], [ 0, %.preheader21.preheader ]
  %exitcond130 = icmp ne i64 %indvars.iv126, 4
  br i1 %exitcond130, label %.preheader20.preheader, label %52

.preheader20.preheader:                           ; preds = %.preheader21
  %45 = shl i64 %indvars.iv126, 3
  %46 = add nuw nsw i64 %45, %indvars.iv131
  br label %.preheader20

.preheader20:                                     ; preds = %47, %.preheader20.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %47 ], [ 0, %.preheader20.preheader ]
  %exitcond125 = icmp ne i64 %indvars.iv121, 2
  br i1 %exitcond125, label %47, label %51

47:                                               ; preds = %.preheader20
  %48 = shl i64 %indvars.iv121, 6
  %49 = add nuw nsw i64 %48, %46
  %50 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %49
  store i32 1, ptr %50, align 4
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %.preheader20, !llvm.loop !25

51:                                               ; preds = %.preheader20
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %.preheader21, !llvm.loop !26

52:                                               ; preds = %.preheader21
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %44, !llvm.loop !27

53:                                               ; preds = %44
  %54 = trunc nuw nsw i64 1 to i32
  store i32 %54, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %55

55:                                               ; preds = %63, %53
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %63 ], [ 0, %53 ]
  %exitcond148 = icmp ne i64 %indvars.iv145, 2
  br i1 %exitcond148, label %.preheader19.preheader, label %64

.preheader19.preheader:                           ; preds = %55
  br label %.preheader19

.preheader19:                                     ; preds = %62, %.preheader19.preheader
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %62 ], [ 0, %.preheader19.preheader ]
  %exitcond144 = icmp ne i64 %indvars.iv140, 4
  br i1 %exitcond144, label %.preheader18.preheader, label %63

.preheader18.preheader:                           ; preds = %.preheader19
  %56 = shl i64 %indvars.iv140, 3
  %57 = add nuw nsw i64 %56, %indvars.iv145
  br label %.preheader18

.preheader18:                                     ; preds = %58, %.preheader18.preheader
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %58 ], [ 0, %.preheader18.preheader ]
  %exitcond139 = icmp ne i64 %indvars.iv135, 1
  br i1 %exitcond139, label %58, label %62

58:                                               ; preds = %.preheader18
  %59 = shl i64 %indvars.iv135, 6
  %60 = add nuw nsw i64 %59, %57
  %61 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %60
  store i32 1, ptr %61, align 4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %.preheader18, !llvm.loop !28

62:                                               ; preds = %.preheader18
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %.preheader19, !llvm.loop !29

63:                                               ; preds = %.preheader19
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  br label %55, !llvm.loop !30

64:                                               ; preds = %55
  %65 = trunc nuw nsw i64 2 to i32
  store i32 %65, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %66

66:                                               ; preds = %74, %64
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %74 ], [ 0, %64 ]
  %exitcond162 = icmp ne i64 %indvars.iv159, 4
  br i1 %exitcond162, label %.preheader17.preheader, label %75

.preheader17.preheader:                           ; preds = %66
  br label %.preheader17

.preheader17:                                     ; preds = %73, %.preheader17.preheader
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %73 ], [ 0, %.preheader17.preheader ]
  %exitcond158 = icmp ne i64 %indvars.iv154, 1
  br i1 %exitcond158, label %.preheader16.preheader, label %74

.preheader16.preheader:                           ; preds = %.preheader17
  %67 = shl i64 %indvars.iv154, 3
  %68 = add nuw nsw i64 %67, %indvars.iv159
  br label %.preheader16

.preheader16:                                     ; preds = %69, %.preheader16.preheader
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %69 ], [ 0, %.preheader16.preheader ]
  %exitcond153 = icmp ne i64 %indvars.iv149, 2
  br i1 %exitcond153, label %69, label %73

69:                                               ; preds = %.preheader16
  %70 = shl i64 %indvars.iv149, 6
  %71 = add nuw nsw i64 %70, %68
  %72 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %71
  store i32 1, ptr %72, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %.preheader16, !llvm.loop !31

73:                                               ; preds = %.preheader16
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %.preheader17, !llvm.loop !32

74:                                               ; preds = %.preheader17
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %66, !llvm.loop !33

75:                                               ; preds = %66
  %76 = trunc nuw nsw i64 4 to i32
  store i32 %76, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %77

77:                                               ; preds = %85, %75
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %85 ], [ 0, %75 ]
  %exitcond176 = icmp ne i64 %indvars.iv173, 1
  br i1 %exitcond176, label %.preheader15.preheader, label %86

.preheader15.preheader:                           ; preds = %77
  br label %.preheader15

.preheader15:                                     ; preds = %84, %.preheader15.preheader
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %84 ], [ 0, %.preheader15.preheader ]
  %exitcond172 = icmp ne i64 %indvars.iv168, 2
  br i1 %exitcond172, label %.preheader14.preheader, label %85

.preheader14.preheader:                           ; preds = %.preheader15
  %78 = shl i64 %indvars.iv168, 3
  %79 = add nuw nsw i64 %78, %indvars.iv173
  br label %.preheader14

.preheader14:                                     ; preds = %80, %.preheader14.preheader
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %80 ], [ 0, %.preheader14.preheader ]
  %exitcond167 = icmp ne i64 %indvars.iv163, 4
  br i1 %exitcond167, label %80, label %84

80:                                               ; preds = %.preheader14
  %81 = shl i64 %indvars.iv163, 6
  %82 = add nuw nsw i64 %81, %79
  %83 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %82
  store i32 1, ptr %83, align 4
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %.preheader14, !llvm.loop !34

84:                                               ; preds = %.preheader14
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %.preheader15, !llvm.loop !35

85:                                               ; preds = %.preheader15
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  br label %77, !llvm.loop !36

86:                                               ; preds = %77
  %87 = trunc nuw nsw i64 1 to i32
  store i32 %87, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %88

88:                                               ; preds = %96, %86
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %96 ], [ 0, %86 ]
  %exitcond190 = icmp ne i64 %indvars.iv187, 3
  br i1 %exitcond190, label %.preheader13.preheader, label %97

.preheader13.preheader:                           ; preds = %88
  br label %.preheader13

.preheader13:                                     ; preds = %95, %.preheader13.preheader
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %95 ], [ 0, %.preheader13.preheader ]
  %exitcond186 = icmp ne i64 %indvars.iv182, 1
  br i1 %exitcond186, label %.preheader12.preheader, label %96

.preheader12.preheader:                           ; preds = %.preheader13
  %89 = shl i64 %indvars.iv182, 3
  %90 = add nuw nsw i64 %89, %indvars.iv187
  br label %.preheader12

.preheader12:                                     ; preds = %91, %.preheader12.preheader
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %91 ], [ 0, %.preheader12.preheader ]
  %exitcond181 = icmp ne i64 %indvars.iv177, 1
  br i1 %exitcond181, label %91, label %95

91:                                               ; preds = %.preheader12
  %92 = shl i64 %indvars.iv177, 6
  %93 = add nuw nsw i64 %92, %90
  %94 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %93
  store i32 1, ptr %94, align 4
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br label %.preheader12, !llvm.loop !37

95:                                               ; preds = %.preheader12
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  br label %.preheader13, !llvm.loop !38

96:                                               ; preds = %.preheader13
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  br label %88, !llvm.loop !39

97:                                               ; preds = %88
  %98 = trunc nuw nsw i64 3 to i32
  store i32 %98, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %99

99:                                               ; preds = %107, %97
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %107 ], [ 0, %97 ]
  %exitcond204 = icmp ne i64 %indvars.iv201, 1
  br i1 %exitcond204, label %.preheader11.preheader, label %108

.preheader11.preheader:                           ; preds = %99
  br label %.preheader11

.preheader11:                                     ; preds = %106, %.preheader11.preheader
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %106 ], [ 0, %.preheader11.preheader ]
  %exitcond200 = icmp ne i64 %indvars.iv196, 3
  br i1 %exitcond200, label %.preheader10.preheader, label %107

.preheader10.preheader:                           ; preds = %.preheader11
  %100 = shl i64 %indvars.iv196, 3
  %101 = add nuw nsw i64 %100, %indvars.iv201
  br label %.preheader10

.preheader10:                                     ; preds = %102, %.preheader10.preheader
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %102 ], [ 0, %.preheader10.preheader ]
  %exitcond195 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond195, label %102, label %106

102:                                              ; preds = %.preheader10
  %103 = shl i64 %indvars.iv191, 6
  %104 = add nuw nsw i64 %103, %101
  %105 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %104
  store i32 1, ptr %105, align 4
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %.preheader10, !llvm.loop !40

106:                                              ; preds = %.preheader10
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  br label %.preheader11, !llvm.loop !41

107:                                              ; preds = %.preheader11
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %99, !llvm.loop !42

108:                                              ; preds = %99
  %109 = trunc nuw nsw i64 1 to i32
  store i32 %109, ptr %1, align 4
  store i32 3, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %110

110:                                              ; preds = %118, %108
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %118 ], [ 0, %108 ]
  %exitcond218 = icmp ne i64 %indvars.iv215, 1
  br i1 %exitcond218, label %.preheader9.preheader, label %119

.preheader9.preheader:                            ; preds = %110
  br label %.preheader9

.preheader9:                                      ; preds = %117, %.preheader9.preheader
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %117 ], [ 0, %.preheader9.preheader ]
  %exitcond214 = icmp ne i64 %indvars.iv210, 1
  br i1 %exitcond214, label %.preheader8.preheader, label %118

.preheader8.preheader:                            ; preds = %.preheader9
  %111 = shl i64 %indvars.iv210, 3
  %112 = add nuw nsw i64 %111, %indvars.iv215
  br label %.preheader8

.preheader8:                                      ; preds = %113, %.preheader8.preheader
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %113 ], [ 0, %.preheader8.preheader ]
  %exitcond209 = icmp ne i64 %indvars.iv205, 3
  br i1 %exitcond209, label %113, label %117

113:                                              ; preds = %.preheader8
  %114 = shl i64 %indvars.iv205, 6
  %115 = add nuw nsw i64 %114, %112
  %116 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %115
  store i32 1, ptr %116, align 4
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  br label %.preheader8, !llvm.loop !43

117:                                              ; preds = %.preheader8
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  br label %.preheader9, !llvm.loop !44

118:                                              ; preds = %.preheader9
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  br label %110, !llvm.loop !45

119:                                              ; preds = %110
  %120 = trunc nuw nsw i64 1 to i32
  store i32 %120, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 3, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %121

121:                                              ; preds = %129, %119
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %129 ], [ 0, %119 ]
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %.preheader7.preheader, label %130

.preheader7.preheader:                            ; preds = %121
  br label %.preheader7

.preheader7:                                      ; preds = %128, %.preheader7.preheader
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %128 ], [ 0, %.preheader7.preheader ]
  %exitcond228 = icmp ne i64 %indvars.iv224, 2
  br i1 %exitcond228, label %.preheader6.preheader, label %129

.preheader6.preheader:                            ; preds = %.preheader7
  %122 = shl i64 %indvars.iv224, 3
  %123 = add nuw nsw i64 %122, %indvars.iv229
  br label %.preheader6

.preheader6:                                      ; preds = %124, %.preheader6.preheader
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %124 ], [ 0, %.preheader6.preheader ]
  %exitcond223 = icmp ne i64 %indvars.iv219, 1
  br i1 %exitcond223, label %124, label %128

124:                                              ; preds = %.preheader6
  %125 = shl i64 %indvars.iv219, 6
  %126 = add nuw nsw i64 %125, %123
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %126
  store i32 1, ptr %127, align 4
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  br label %.preheader6, !llvm.loop !46

128:                                              ; preds = %.preheader6
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  br label %.preheader7, !llvm.loop !47

129:                                              ; preds = %.preheader7
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %121, !llvm.loop !48

130:                                              ; preds = %121
  %131 = trunc nuw nsw i64 2 to i32
  store i32 %131, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %132

132:                                              ; preds = %140, %130
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %140 ], [ 0, %130 ]
  %exitcond246 = icmp ne i64 %indvars.iv243, 2
  br i1 %exitcond246, label %.preheader5.preheader, label %141

.preheader5.preheader:                            ; preds = %132
  br label %.preheader5

.preheader5:                                      ; preds = %139, %.preheader5.preheader
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %139 ], [ 0, %.preheader5.preheader ]
  %exitcond242 = icmp ne i64 %indvars.iv238, 1
  br i1 %exitcond242, label %.preheader4.preheader, label %140

.preheader4.preheader:                            ; preds = %.preheader5
  %133 = shl i64 %indvars.iv238, 3
  %134 = add nuw nsw i64 %133, %indvars.iv243
  br label %.preheader4

.preheader4:                                      ; preds = %135, %.preheader4.preheader
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %135 ], [ 0, %.preheader4.preheader ]
  %exitcond237 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond237, label %135, label %139

135:                                              ; preds = %.preheader4
  %136 = shl i64 %indvars.iv233, 6
  %137 = add nuw nsw i64 %136, %134
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %137
  store i32 1, ptr %138, align 4
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %.preheader4, !llvm.loop !49

139:                                              ; preds = %.preheader4
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  br label %.preheader5, !llvm.loop !50

140:                                              ; preds = %.preheader5
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  br label %132, !llvm.loop !51

141:                                              ; preds = %132
  %142 = trunc nuw nsw i64 2 to i32
  store i32 %142, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %143

143:                                              ; preds = %151, %141
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %151 ], [ 0, %141 ]
  %exitcond260 = icmp ne i64 %indvars.iv257, 1
  br i1 %exitcond260, label %.preheader3.preheader, label %152

.preheader3.preheader:                            ; preds = %143
  br label %.preheader3

.preheader3:                                      ; preds = %150, %.preheader3.preheader
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %150 ], [ 0, %.preheader3.preheader ]
  %exitcond256 = icmp ne i64 %indvars.iv252, 2
  br i1 %exitcond256, label %.preheader2.preheader, label %151

.preheader2.preheader:                            ; preds = %.preheader3
  %144 = shl i64 %indvars.iv252, 3
  %145 = add nuw nsw i64 %144, %indvars.iv257
  br label %.preheader2

.preheader2:                                      ; preds = %146, %.preheader2.preheader
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %146 ], [ 0, %.preheader2.preheader ]
  %exitcond251 = icmp ne i64 %indvars.iv247, 2
  br i1 %exitcond251, label %146, label %150

146:                                              ; preds = %.preheader2
  %147 = shl i64 %indvars.iv247, 6
  %148 = add nuw nsw i64 %147, %145
  %149 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %148
  store i32 1, ptr %149, align 4
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  br label %.preheader2, !llvm.loop !52

150:                                              ; preds = %.preheader2
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  br label %.preheader3, !llvm.loop !53

151:                                              ; preds = %.preheader3
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  br label %143, !llvm.loop !54

152:                                              ; preds = %143
  %153 = trunc nuw nsw i64 1 to i32
  store i32 %153, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %154

154:                                              ; preds = %162, %152
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %162 ], [ 0, %152 ]
  %exitcond274 = icmp ne i64 %indvars.iv271, 2
  br i1 %exitcond274, label %.preheader1.preheader, label %163

.preheader1.preheader:                            ; preds = %154
  br label %.preheader1

.preheader1:                                      ; preds = %161, %.preheader1.preheader
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %161 ], [ 0, %.preheader1.preheader ]
  %exitcond270 = icmp ne i64 %indvars.iv266, 2
  br i1 %exitcond270, label %.preheader.preheader, label %162

.preheader.preheader:                             ; preds = %.preheader1
  %155 = shl i64 %indvars.iv266, 3
  %156 = add nuw nsw i64 %155, %indvars.iv271
  br label %.preheader

.preheader:                                       ; preds = %157, %.preheader.preheader
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %157 ], [ 0, %.preheader.preheader ]
  %exitcond265 = icmp ne i64 %indvars.iv261, 2
  br i1 %exitcond265, label %157, label %161

157:                                              ; preds = %.preheader
  %158 = shl i64 %indvars.iv261, 6
  %159 = add nuw nsw i64 %158, %156
  %160 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %159
  store i32 1, ptr %160, align 4
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  br label %.preheader, !llvm.loop !55

161:                                              ; preds = %.preheader
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  br label %.preheader1, !llvm.loop !56

162:                                              ; preds = %.preheader1
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  br label %154, !llvm.loop !57

163:                                              ; preds = %154
  %164 = trunc nuw nsw i64 2 to i32
  store i32 %164, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %165 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %165, 0
  br i1 %.not, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr %4, align 4
  %168 = call i32 @Place(i32 noundef 0, i32 noundef %167)
  store i32 %168, ptr @n, align 4
  br label %170

169:                                              ; preds = %163
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %170

170:                                              ; preds = %169, %166
  %171 = load i32, ptr @n, align 4
  %172 = call i32 @Trial(i32 noundef %171)
  %.not16 = icmp eq i32 %172, 0
  br i1 %.not16, label %173, label %174

173:                                              ; preds = %170
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %177

174:                                              ; preds = %170
  %175 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %175, 2005
  br i1 %.not18, label %177, label %176

176:                                              ; preds = %174
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %177

177:                                              ; preds = %176, %174, %173
  %178 = load i32, ptr @n, align 4
  %179 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %178) #4
  %180 = load i32, ptr @kount, align 4
  %181 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %180) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %2
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

5:                                                ; preds = %2
  store i32 100, ptr %1, align 4
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
