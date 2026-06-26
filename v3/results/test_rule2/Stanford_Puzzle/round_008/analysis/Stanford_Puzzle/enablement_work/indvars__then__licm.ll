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
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv, %7
  br i1 %.not, label %18, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %18

17:                                               ; preds = %13, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !7

18:                                               ; preds = %13, %9
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %9 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %16, %2
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %16 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv1, %7
  br i1 %.not, label %17, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv1
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %9, !llvm.loop !9

17:                                               ; preds = %9
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
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

26:                                               ; preds = %32, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %17 ]
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
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv, %7
  br i1 %.not, label %17, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !11

17:                                               ; preds = %9
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
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
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %22

5:                                                ; preds = %4
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %21, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %21, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %14
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %20, i32 noundef %0)
  br label %21

21:                                               ; preds = %19, %11, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %14, %4
  %storemerge1 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %2, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %9, %.preheader31.preheader
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %9 ], [ 1, %.preheader31.preheader ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %8, %.preheader30.preheader
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %8 ], [ 1, %.preheader30.preheader ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %.preheader29.preheader, label %9

.preheader29.preheader:                           ; preds = %.preheader30
  %4 = shl i64 %indvars.iv6, 3
  %invariant.op = add nuw nsw i64 %4, %indvars.iv10
  br label %.preheader29

.preheader29:                                     ; preds = %5, %.preheader29.preheader
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %5 ], [ 1, %.preheader29.preheader ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 6
  br i1 %exitcond5, label %5, label %8

5:                                                ; preds = %.preheader29
  %6 = shl i64 %indvars.iv2, 6
  %.reass = add nuw nsw i64 %6, %invariant.op
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %.reass
  store i32 0, ptr %7, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %.preheader29, !llvm.loop !14

8:                                                ; preds = %.preheader29
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %.preheader30, !llvm.loop !15

9:                                                ; preds = %.preheader30
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %13, %.preheader28.preheader
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %13 ], [ 0, %.preheader28.preheader ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %11, %.preheader27.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %11 ], [ 0, %.preheader27.preheader ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 512
  br i1 %exitcond17, label %11, label %13

11:                                               ; preds = %.preheader27
  %12 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv14
  store i32 0, ptr %12, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %.preheader27, !llvm.loop !17

13:                                               ; preds = %.preheader27
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %19, %.preheader26.preheader
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %19 ], [ 0, %.preheader26.preheader ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %.preheader25.preheader, label %20

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %18, %.preheader25.preheader
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %18 ], [ 0, %.preheader25.preheader ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 2
  br i1 %exitcond29, label %.preheader24.preheader, label %19

.preheader24.preheader:                           ; preds = %.preheader25
  %14 = shl i64 %indvars.iv26, 3
  %invariant.op178 = add nuw nsw i64 %14, %indvars.iv30
  br label %.preheader24

.preheader24:                                     ; preds = %15, %.preheader24.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %15 ], [ 0, %.preheader24.preheader ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 1
  br i1 %exitcond25, label %15, label %18

15:                                               ; preds = %.preheader24
  %16 = shl i64 %indvars.iv22, 6
  %.reass179 = add nuw nsw i64 %16, %invariant.op178
  %17 = getelementptr inbounds [4 x i8], ptr @p, i64 %.reass179
  store i32 1, ptr %17, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %.preheader24, !llvm.loop !19

18:                                               ; preds = %.preheader24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %.preheader25, !llvm.loop !20

19:                                               ; preds = %.preheader25
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %.preheader26, !llvm.loop !21

20:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %21

21:                                               ; preds = %27, %20
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %27 ], [ 0, %20 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 2
  br i1 %exitcond45, label %.preheader23.preheader, label %28

.preheader23.preheader:                           ; preds = %21
  br label %.preheader23

.preheader23:                                     ; preds = %26, %.preheader23.preheader
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %26 ], [ 0, %.preheader23.preheader ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 1
  br i1 %exitcond41, label %.preheader22.preheader, label %27

.preheader22.preheader:                           ; preds = %.preheader23
  %22 = shl i64 %indvars.iv38, 3
  %invariant.op180 = add nuw nsw i64 %22, %indvars.iv42
  br label %.preheader22

.preheader22:                                     ; preds = %23, %.preheader22.preheader
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %23 ], [ 0, %.preheader22.preheader ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 4
  br i1 %exitcond37, label %23, label %26

23:                                               ; preds = %.preheader22
  %24 = shl i64 %indvars.iv34, 6
  %.reass181 = add nuw nsw i64 %24, %invariant.op180
  %25 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %.reass181
  store i32 1, ptr %25, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %.preheader22, !llvm.loop !22

26:                                               ; preds = %.preheader22
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %.preheader23, !llvm.loop !23

27:                                               ; preds = %.preheader23
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %21, !llvm.loop !24

28:                                               ; preds = %21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %29

29:                                               ; preds = %35, %28
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %35 ], [ 0, %28 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 1
  br i1 %exitcond57, label %.preheader21.preheader, label %36

.preheader21.preheader:                           ; preds = %29
  br label %.preheader21

.preheader21:                                     ; preds = %34, %.preheader21.preheader
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %34 ], [ 0, %.preheader21.preheader ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 4
  br i1 %exitcond53, label %.preheader20.preheader, label %35

.preheader20.preheader:                           ; preds = %.preheader21
  %30 = shl i64 %indvars.iv50, 3
  %invariant.op182 = add nuw nsw i64 %30, %indvars.iv54
  br label %.preheader20

.preheader20:                                     ; preds = %31, %.preheader20.preheader
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %31 ], [ 0, %.preheader20.preheader ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 2
  br i1 %exitcond49, label %31, label %34

31:                                               ; preds = %.preheader20
  %32 = shl i64 %indvars.iv46, 6
  %.reass183 = add nuw nsw i64 %32, %invariant.op182
  %33 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %.reass183
  store i32 1, ptr %33, align 4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %.preheader20, !llvm.loop !25

34:                                               ; preds = %.preheader20
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %.preheader21, !llvm.loop !26

35:                                               ; preds = %.preheader21
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %29, !llvm.loop !27

36:                                               ; preds = %29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %37

37:                                               ; preds = %43, %36
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %43 ], [ 0, %36 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 2
  br i1 %exitcond69, label %.preheader19.preheader, label %44

.preheader19.preheader:                           ; preds = %37
  br label %.preheader19

.preheader19:                                     ; preds = %42, %.preheader19.preheader
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %42 ], [ 0, %.preheader19.preheader ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %.preheader18.preheader, label %43

.preheader18.preheader:                           ; preds = %.preheader19
  %38 = shl i64 %indvars.iv62, 3
  %invariant.op184 = add nuw nsw i64 %38, %indvars.iv66
  br label %.preheader18

.preheader18:                                     ; preds = %39, %.preheader18.preheader
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %39 ], [ 0, %.preheader18.preheader ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 1
  br i1 %exitcond61, label %39, label %42

39:                                               ; preds = %.preheader18
  %40 = shl i64 %indvars.iv58, 6
  %.reass185 = add nuw nsw i64 %40, %invariant.op184
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %.reass185
  store i32 1, ptr %41, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %.preheader18, !llvm.loop !28

42:                                               ; preds = %.preheader18
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %.preheader19, !llvm.loop !29

43:                                               ; preds = %.preheader19
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %37, !llvm.loop !30

44:                                               ; preds = %37
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %45

45:                                               ; preds = %51, %44
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %51 ], [ 0, %44 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 4
  br i1 %exitcond81, label %.preheader17.preheader, label %52

.preheader17.preheader:                           ; preds = %45
  br label %.preheader17

.preheader17:                                     ; preds = %50, %.preheader17.preheader
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %50 ], [ 0, %.preheader17.preheader ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 1
  br i1 %exitcond77, label %.preheader16.preheader, label %51

.preheader16.preheader:                           ; preds = %.preheader17
  %46 = shl i64 %indvars.iv74, 3
  %invariant.op186 = add nuw nsw i64 %46, %indvars.iv78
  br label %.preheader16

.preheader16:                                     ; preds = %47, %.preheader16.preheader
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %47 ], [ 0, %.preheader16.preheader ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 2
  br i1 %exitcond73, label %47, label %50

47:                                               ; preds = %.preheader16
  %48 = shl i64 %indvars.iv70, 6
  %.reass187 = add nuw nsw i64 %48, %invariant.op186
  %49 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %.reass187
  store i32 1, ptr %49, align 4
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %.preheader16, !llvm.loop !31

50:                                               ; preds = %.preheader16
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %.preheader17, !llvm.loop !32

51:                                               ; preds = %.preheader17
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %45, !llvm.loop !33

52:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %53

53:                                               ; preds = %59, %52
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %59 ], [ 0, %52 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 1
  br i1 %exitcond93, label %.preheader15.preheader, label %60

.preheader15.preheader:                           ; preds = %53
  br label %.preheader15

.preheader15:                                     ; preds = %58, %.preheader15.preheader
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %58 ], [ 0, %.preheader15.preheader ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %.preheader14.preheader, label %59

.preheader14.preheader:                           ; preds = %.preheader15
  %54 = shl i64 %indvars.iv86, 3
  %invariant.op188 = add nuw nsw i64 %54, %indvars.iv90
  br label %.preheader14

.preheader14:                                     ; preds = %55, %.preheader14.preheader
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %55 ], [ 0, %.preheader14.preheader ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 4
  br i1 %exitcond85, label %55, label %58

55:                                               ; preds = %.preheader14
  %56 = shl i64 %indvars.iv82, 6
  %.reass189 = add nuw nsw i64 %56, %invariant.op188
  %57 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %.reass189
  store i32 1, ptr %57, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %.preheader14, !llvm.loop !34

58:                                               ; preds = %.preheader14
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %.preheader15, !llvm.loop !35

59:                                               ; preds = %.preheader15
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %53, !llvm.loop !36

60:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %61

61:                                               ; preds = %67, %60
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %67 ], [ 0, %60 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 3
  br i1 %exitcond105, label %.preheader13.preheader, label %68

.preheader13.preheader:                           ; preds = %61
  br label %.preheader13

.preheader13:                                     ; preds = %66, %.preheader13.preheader
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %66 ], [ 0, %.preheader13.preheader ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 1
  br i1 %exitcond101, label %.preheader12.preheader, label %67

.preheader12.preheader:                           ; preds = %.preheader13
  %62 = shl i64 %indvars.iv98, 3
  %invariant.op190 = add nuw nsw i64 %62, %indvars.iv102
  br label %.preheader12

.preheader12:                                     ; preds = %63, %.preheader12.preheader
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %63 ], [ 0, %.preheader12.preheader ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 1
  br i1 %exitcond97, label %63, label %66

63:                                               ; preds = %.preheader12
  %64 = shl i64 %indvars.iv94, 6
  %.reass191 = add nuw nsw i64 %64, %invariant.op190
  %65 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %.reass191
  store i32 1, ptr %65, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %.preheader12, !llvm.loop !37

66:                                               ; preds = %.preheader12
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %.preheader13, !llvm.loop !38

67:                                               ; preds = %.preheader13
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %61, !llvm.loop !39

68:                                               ; preds = %61
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %69

69:                                               ; preds = %75, %68
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %75 ], [ 0, %68 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 1
  br i1 %exitcond117, label %.preheader11.preheader, label %76

.preheader11.preheader:                           ; preds = %69
  br label %.preheader11

.preheader11:                                     ; preds = %74, %.preheader11.preheader
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %74 ], [ 0, %.preheader11.preheader ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 3
  br i1 %exitcond113, label %.preheader10.preheader, label %75

.preheader10.preheader:                           ; preds = %.preheader11
  %70 = shl i64 %indvars.iv110, 3
  %invariant.op192 = add nuw nsw i64 %70, %indvars.iv114
  br label %.preheader10

.preheader10:                                     ; preds = %71, %.preheader10.preheader
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %71 ], [ 0, %.preheader10.preheader ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 1
  br i1 %exitcond109, label %71, label %74

71:                                               ; preds = %.preheader10
  %72 = shl i64 %indvars.iv106, 6
  %.reass193 = add nuw nsw i64 %72, %invariant.op192
  %73 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %.reass193
  store i32 1, ptr %73, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %.preheader10, !llvm.loop !40

74:                                               ; preds = %.preheader10
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %.preheader11, !llvm.loop !41

75:                                               ; preds = %.preheader11
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %69, !llvm.loop !42

76:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %77

77:                                               ; preds = %83, %76
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %83 ], [ 0, %76 ]
  %exitcond129 = icmp ne i64 %indvars.iv126, 1
  br i1 %exitcond129, label %.preheader9.preheader, label %84

.preheader9.preheader:                            ; preds = %77
  br label %.preheader9

.preheader9:                                      ; preds = %82, %.preheader9.preheader
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %82 ], [ 0, %.preheader9.preheader ]
  %exitcond125 = icmp ne i64 %indvars.iv122, 1
  br i1 %exitcond125, label %.preheader8.preheader, label %83

.preheader8.preheader:                            ; preds = %.preheader9
  %78 = shl i64 %indvars.iv122, 3
  %invariant.op194 = add nuw nsw i64 %78, %indvars.iv126
  br label %.preheader8

.preheader8:                                      ; preds = %79, %.preheader8.preheader
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %79 ], [ 0, %.preheader8.preheader ]
  %exitcond121 = icmp ne i64 %indvars.iv118, 3
  br i1 %exitcond121, label %79, label %82

79:                                               ; preds = %.preheader8
  %80 = shl i64 %indvars.iv118, 6
  %.reass195 = add nuw nsw i64 %80, %invariant.op194
  %81 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %.reass195
  store i32 1, ptr %81, align 4
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %.preheader8, !llvm.loop !43

82:                                               ; preds = %.preheader8
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %.preheader9, !llvm.loop !44

83:                                               ; preds = %.preheader9
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %77, !llvm.loop !45

84:                                               ; preds = %77
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %85

85:                                               ; preds = %91, %84
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %91 ], [ 0, %84 ]
  %exitcond141 = icmp ne i64 %indvars.iv138, 2
  br i1 %exitcond141, label %.preheader7.preheader, label %92

.preheader7.preheader:                            ; preds = %85
  br label %.preheader7

.preheader7:                                      ; preds = %90, %.preheader7.preheader
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %90 ], [ 0, %.preheader7.preheader ]
  %exitcond137 = icmp ne i64 %indvars.iv134, 2
  br i1 %exitcond137, label %.preheader6.preheader, label %91

.preheader6.preheader:                            ; preds = %.preheader7
  %86 = shl i64 %indvars.iv134, 3
  %invariant.op196 = add nuw nsw i64 %86, %indvars.iv138
  br label %.preheader6

.preheader6:                                      ; preds = %87, %.preheader6.preheader
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %87 ], [ 0, %.preheader6.preheader ]
  %exitcond133 = icmp ne i64 %indvars.iv130, 1
  br i1 %exitcond133, label %87, label %90

87:                                               ; preds = %.preheader6
  %88 = shl i64 %indvars.iv130, 6
  %.reass197 = add nuw nsw i64 %88, %invariant.op196
  %89 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %.reass197
  store i32 1, ptr %89, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %.preheader6, !llvm.loop !46

90:                                               ; preds = %.preheader6
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br label %.preheader7, !llvm.loop !47

91:                                               ; preds = %.preheader7
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %85, !llvm.loop !48

92:                                               ; preds = %85
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %93

93:                                               ; preds = %99, %92
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %99 ], [ 0, %92 ]
  %exitcond153 = icmp ne i64 %indvars.iv150, 2
  br i1 %exitcond153, label %.preheader5.preheader, label %100

.preheader5.preheader:                            ; preds = %93
  br label %.preheader5

.preheader5:                                      ; preds = %98, %.preheader5.preheader
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %98 ], [ 0, %.preheader5.preheader ]
  %exitcond149 = icmp ne i64 %indvars.iv146, 1
  br i1 %exitcond149, label %.preheader4.preheader, label %99

.preheader4.preheader:                            ; preds = %.preheader5
  %94 = shl i64 %indvars.iv146, 3
  %invariant.op198 = add nuw nsw i64 %94, %indvars.iv150
  br label %.preheader4

.preheader4:                                      ; preds = %95, %.preheader4.preheader
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %95 ], [ 0, %.preheader4.preheader ]
  %exitcond145 = icmp ne i64 %indvars.iv142, 2
  br i1 %exitcond145, label %95, label %98

95:                                               ; preds = %.preheader4
  %96 = shl i64 %indvars.iv142, 6
  %.reass199 = add nuw nsw i64 %96, %invariant.op198
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %.reass199
  store i32 1, ptr %97, align 4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %.preheader4, !llvm.loop !49

98:                                               ; preds = %.preheader4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %.preheader5, !llvm.loop !50

99:                                               ; preds = %.preheader5
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %93, !llvm.loop !51

100:                                              ; preds = %93
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %101

101:                                              ; preds = %107, %100
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %107 ], [ 0, %100 ]
  %exitcond165 = icmp ne i64 %indvars.iv162, 1
  br i1 %exitcond165, label %.preheader3.preheader, label %108

.preheader3.preheader:                            ; preds = %101
  br label %.preheader3

.preheader3:                                      ; preds = %106, %.preheader3.preheader
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %106 ], [ 0, %.preheader3.preheader ]
  %exitcond161 = icmp ne i64 %indvars.iv158, 2
  br i1 %exitcond161, label %.preheader2.preheader, label %107

.preheader2.preheader:                            ; preds = %.preheader3
  %102 = shl i64 %indvars.iv158, 3
  %invariant.op200 = add nuw nsw i64 %102, %indvars.iv162
  br label %.preheader2

.preheader2:                                      ; preds = %103, %.preheader2.preheader
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %103 ], [ 0, %.preheader2.preheader ]
  %exitcond157 = icmp ne i64 %indvars.iv154, 2
  br i1 %exitcond157, label %103, label %106

103:                                              ; preds = %.preheader2
  %104 = shl i64 %indvars.iv154, 6
  %.reass201 = add nuw nsw i64 %104, %invariant.op200
  %105 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %.reass201
  store i32 1, ptr %105, align 4
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %.preheader2, !llvm.loop !52

106:                                              ; preds = %.preheader2
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  br label %.preheader3, !llvm.loop !53

107:                                              ; preds = %.preheader3
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  br label %101, !llvm.loop !54

108:                                              ; preds = %101
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %109

109:                                              ; preds = %115, %108
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %115 ], [ 0, %108 ]
  %exitcond177 = icmp ne i64 %indvars.iv174, 2
  br i1 %exitcond177, label %.preheader1.preheader, label %116

.preheader1.preheader:                            ; preds = %109
  br label %.preheader1

.preheader1:                                      ; preds = %114, %.preheader1.preheader
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %114 ], [ 0, %.preheader1.preheader ]
  %exitcond173 = icmp ne i64 %indvars.iv170, 2
  br i1 %exitcond173, label %.preheader.preheader, label %115

.preheader.preheader:                             ; preds = %.preheader1
  %110 = shl i64 %indvars.iv170, 3
  %invariant.op202 = add nuw nsw i64 %110, %indvars.iv174
  br label %.preheader

.preheader:                                       ; preds = %111, %.preheader.preheader
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %111 ], [ 0, %.preheader.preheader ]
  %exitcond169 = icmp ne i64 %indvars.iv166, 2
  br i1 %exitcond169, label %111, label %114

111:                                              ; preds = %.preheader
  %112 = shl i64 %indvars.iv166, 6
  %.reass203 = add nuw nsw i64 %112, %invariant.op202
  %113 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.reass203
  store i32 1, ptr %113, align 4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  br label %.preheader, !llvm.loop !55

114:                                              ; preds = %.preheader
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  br label %.preheader1, !llvm.loop !56

115:                                              ; preds = %.preheader1
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  br label %109, !llvm.loop !57

116:                                              ; preds = %109
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %117 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %117, 0
  br i1 %.not, label %120, label %118

118:                                              ; preds = %116
  %119 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %119, ptr @n, align 4
  br label %121

120:                                              ; preds = %116
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %121

121:                                              ; preds = %120, %118
  %122 = load i32, ptr @n, align 4
  %123 = call i32 @Trial(i32 noundef %122)
  %.not16 = icmp eq i32 %123, 0
  br i1 %.not16, label %124, label %125

124:                                              ; preds = %121
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %128

125:                                              ; preds = %121
  %126 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %126, 2005
  br i1 %.not18, label %128, label %127

127:                                              ; preds = %125
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %128

128:                                              ; preds = %127, %125, %124
  %129 = load i32, ptr @n, align 4
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %129) #4
  %131 = load i32, ptr @kount, align 4
  %132 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %131) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %storemerge = phi i32 [ 0, %0 ], [ %3, %2 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %2, label %4

2:                                                ; preds = %1
  call void @Puzzle()
  %3 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

4:                                                ; preds = %1
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
