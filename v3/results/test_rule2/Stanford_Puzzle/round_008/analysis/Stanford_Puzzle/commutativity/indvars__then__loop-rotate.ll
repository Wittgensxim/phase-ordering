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
  %.not4 = icmp sgt i64 0, %7
  br i1 %.not4, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv5
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv5
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %12, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %18
  br i1 %.not, label %._crit_edge6, label %8, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  %split = phi i32 [ 0, %12 ]
  br label %19

._crit_edge6:                                     ; preds = %16
  %split7 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge6, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split7, %._crit_edge6 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %.not5 = icmp sgt i64 0, %7
  br i1 %.not5, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv16 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next2, %15 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv16
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %15, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv16
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %8
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv16, 1
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %.not = icmp sgt i64 %indvars.iv.next2, %17
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not7 = icmp eq i64 %26, %wide.trip.count
  br i1 %exitcond.not7, label %.loopexit.loopexit, label %.lr.ph10

.lr.ph10:                                         ; preds = %18
  br label %27

27:                                               ; preds = %.lr.ph10, %32
  %indvars.iv8 = phi i64 [ %26, %.lr.ph10 ], [ %indvars.iv.next, %32 ]
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv8
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv8, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv8, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %27, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
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
  %.not2 = icmp sgt i64 0, %7
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv3
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %15, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv3
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %17
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %20
  %indvars.iv2 = phi i64 [ 0, %1 ], [ %indvars.iv.next, %20 ]
  %5 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv2
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %20, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv2 to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv2 to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not3 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not3, %17
  br i1 %or.cond, label %21, label %18

18:                                               ; preds = %13
  %19 = trunc nuw nsw i64 %indvars.iv2 to i32
  call void @Remove(i32 noundef %19, i32 noundef %0)
  br label %20

20:                                               ; preds = %18, %10, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 13
  br i1 %exitcond, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %20
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31.preheader:                           ; preds = %1
  br label %.preheader30.preheader

1:                                                ; preds = %0, %1
  %indvars.iv178 = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv178
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv178, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %indvars.iv10181 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next11, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %indvars.iv6180 = phi i64 [ 1, %.preheader30.preheader ], [ %indvars.iv.next7, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %indvars.iv2179 = phi i64 [ 1, %.preheader29.preheader ], [ %indvars.iv.next3, %.preheader29 ]
  %3 = shl i64 %indvars.iv2179, 6
  %4 = shl i64 %indvars.iv6180, 3
  %5 = add nuw nsw i64 %3, %4
  %6 = add nuw nsw i64 %indvars.iv10181, %5
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 0, ptr %7, align 4
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2179, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 6
  br i1 %exitcond5, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6180, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 6
  br i1 %exitcond9, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10181, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 6
  br i1 %exitcond13, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %indvars.iv18183 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next19, %.preheader28 ]
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %indvars.iv14182 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next15, %.preheader27 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv18183
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv14182
  store i32 0, ptr %9, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14182, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 512
  br i1 %exitcond17, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18183, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 13
  br i1 %exitcond21, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %indvars.iv30186 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next31, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %indvars.iv26185 = phi i64 [ 0, %.preheader25.preheader ], [ %indvars.iv.next27, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %indvars.iv22184 = phi i64 [ 0, %.preheader24.preheader ], [ %indvars.iv.next23, %.preheader24 ]
  %10 = shl i64 %indvars.iv22184, 6
  %11 = shl i64 %indvars.iv26185, 3
  %12 = add nuw nsw i64 %10, %11
  %13 = add nuw nsw i64 %indvars.iv30186, %12
  %14 = getelementptr inbounds [4 x i8], ptr @p, i64 %13
  store i32 1, ptr %14, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22184, 1
  %exitcond25 = icmp ne i64 %indvars.iv.next23, 1
  br i1 %exitcond25, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26185, 1
  %exitcond29 = icmp ne i64 %indvars.iv.next27, 2
  br i1 %exitcond29, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30186, 1
  %exitcond33 = icmp ne i64 %indvars.iv.next31, 4
  br i1 %exitcond33, label %.preheader25.preheader, label %15, !llvm.loop !21

15:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %15, %21
  %indvars.iv42189 = phi i64 [ 0, %15 ], [ %indvars.iv.next43, %21 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  %indvars.iv38188 = phi i64 [ 0, %.preheader23.preheader ], [ %indvars.iv.next39, %.preheader23 ]
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %indvars.iv34187 = phi i64 [ 0, %.preheader22.preheader ], [ %indvars.iv.next35, %.preheader22 ]
  %16 = shl i64 %indvars.iv34187, 6
  %17 = shl i64 %indvars.iv38188, 3
  %18 = add nuw nsw i64 %16, %17
  %19 = add nuw nsw i64 %indvars.iv42189, %18
  %20 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %19
  store i32 1, ptr %20, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34187, 1
  %exitcond37 = icmp ne i64 %indvars.iv.next35, 4
  br i1 %exitcond37, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38188, 1
  %exitcond41 = icmp ne i64 %indvars.iv.next39, 1
  br i1 %exitcond41, label %.preheader22.preheader, label %21, !llvm.loop !23

21:                                               ; preds = %.preheader23
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42189, 1
  %exitcond45 = icmp ne i64 %indvars.iv.next43, 2
  br i1 %exitcond45, label %.preheader23.preheader, label %22, !llvm.loop !24

22:                                               ; preds = %21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %22, %28
  %indvars.iv54192 = phi i64 [ 0, %22 ], [ %indvars.iv.next55, %28 ]
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %indvars.iv50191 = phi i64 [ 0, %.preheader21.preheader ], [ %indvars.iv.next51, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv46190 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next47, %.preheader20 ]
  %23 = shl i64 %indvars.iv46190, 6
  %24 = shl i64 %indvars.iv50191, 3
  %25 = add nuw nsw i64 %23, %24
  %26 = add nuw nsw i64 %indvars.iv54192, %25
  %27 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %26
  store i32 1, ptr %27, align 4
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46190, 1
  %exitcond49 = icmp ne i64 %indvars.iv.next47, 2
  br i1 %exitcond49, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50191, 1
  %exitcond53 = icmp ne i64 %indvars.iv.next51, 4
  br i1 %exitcond53, label %.preheader20.preheader, label %28, !llvm.loop !26

28:                                               ; preds = %.preheader21
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54192, 1
  %exitcond57 = icmp ne i64 %indvars.iv.next55, 1
  br i1 %exitcond57, label %.preheader21.preheader, label %29, !llvm.loop !27

29:                                               ; preds = %28
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %29, %35
  %indvars.iv66195 = phi i64 [ 0, %29 ], [ %indvars.iv.next67, %35 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %indvars.iv62194 = phi i64 [ 0, %.preheader19.preheader ], [ %indvars.iv.next63, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %indvars.iv58193 = phi i64 [ 0, %.preheader18.preheader ], [ %indvars.iv.next59, %.preheader18 ]
  %30 = shl i64 %indvars.iv58193, 6
  %31 = shl i64 %indvars.iv62194, 3
  %32 = add nuw nsw i64 %30, %31
  %33 = add nuw nsw i64 %indvars.iv66195, %32
  %34 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %33
  store i32 1, ptr %34, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58193, 1
  %exitcond61 = icmp ne i64 %indvars.iv.next59, 1
  br i1 %exitcond61, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62194, 1
  %exitcond65 = icmp ne i64 %indvars.iv.next63, 4
  br i1 %exitcond65, label %.preheader18.preheader, label %35, !llvm.loop !29

35:                                               ; preds = %.preheader19
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66195, 1
  %exitcond69 = icmp ne i64 %indvars.iv.next67, 2
  br i1 %exitcond69, label %.preheader19.preheader, label %36, !llvm.loop !30

36:                                               ; preds = %35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %36, %42
  %indvars.iv78198 = phi i64 [ 0, %36 ], [ %indvars.iv.next79, %42 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  %indvars.iv74197 = phi i64 [ 0, %.preheader17.preheader ], [ %indvars.iv.next75, %.preheader17 ]
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %indvars.iv70196 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next71, %.preheader16 ]
  %37 = shl i64 %indvars.iv70196, 6
  %38 = shl i64 %indvars.iv74197, 3
  %39 = add nuw nsw i64 %37, %38
  %40 = add nuw nsw i64 %indvars.iv78198, %39
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %40
  store i32 1, ptr %41, align 4
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70196, 1
  %exitcond73 = icmp ne i64 %indvars.iv.next71, 2
  br i1 %exitcond73, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74197, 1
  %exitcond77 = icmp ne i64 %indvars.iv.next75, 1
  br i1 %exitcond77, label %.preheader16.preheader, label %42, !llvm.loop !32

42:                                               ; preds = %.preheader17
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78198, 1
  %exitcond81 = icmp ne i64 %indvars.iv.next79, 4
  br i1 %exitcond81, label %.preheader17.preheader, label %43, !llvm.loop !33

43:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %43, %49
  %indvars.iv90201 = phi i64 [ 0, %43 ], [ %indvars.iv.next91, %49 ]
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %indvars.iv86200 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next87, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %indvars.iv82199 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next83, %.preheader14 ]
  %44 = shl i64 %indvars.iv82199, 6
  %45 = shl i64 %indvars.iv86200, 3
  %46 = add nuw nsw i64 %44, %45
  %47 = add nuw nsw i64 %indvars.iv90201, %46
  %48 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %47
  store i32 1, ptr %48, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82199, 1
  %exitcond85 = icmp ne i64 %indvars.iv.next83, 4
  br i1 %exitcond85, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86200, 1
  %exitcond89 = icmp ne i64 %indvars.iv.next87, 2
  br i1 %exitcond89, label %.preheader14.preheader, label %49, !llvm.loop !35

49:                                               ; preds = %.preheader15
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90201, 1
  %exitcond93 = icmp ne i64 %indvars.iv.next91, 1
  br i1 %exitcond93, label %.preheader15.preheader, label %50, !llvm.loop !36

50:                                               ; preds = %49
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %50, %56
  %indvars.iv102204 = phi i64 [ 0, %50 ], [ %indvars.iv.next103, %56 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  %indvars.iv98203 = phi i64 [ 0, %.preheader13.preheader ], [ %indvars.iv.next99, %.preheader13 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %indvars.iv94202 = phi i64 [ 0, %.preheader12.preheader ], [ %indvars.iv.next95, %.preheader12 ]
  %51 = shl i64 %indvars.iv94202, 6
  %52 = shl i64 %indvars.iv98203, 3
  %53 = add nuw nsw i64 %51, %52
  %54 = add nuw nsw i64 %indvars.iv102204, %53
  %55 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %54
  store i32 1, ptr %55, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94202, 1
  %exitcond97 = icmp ne i64 %indvars.iv.next95, 1
  br i1 %exitcond97, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98203, 1
  %exitcond101 = icmp ne i64 %indvars.iv.next99, 1
  br i1 %exitcond101, label %.preheader12.preheader, label %56, !llvm.loop !38

56:                                               ; preds = %.preheader13
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102204, 1
  %exitcond105 = icmp ne i64 %indvars.iv.next103, 3
  br i1 %exitcond105, label %.preheader13.preheader, label %57, !llvm.loop !39

57:                                               ; preds = %56
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %57, %63
  %indvars.iv114207 = phi i64 [ 0, %57 ], [ %indvars.iv.next115, %63 ]
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %indvars.iv110206 = phi i64 [ 0, %.preheader11.preheader ], [ %indvars.iv.next111, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %indvars.iv106205 = phi i64 [ 0, %.preheader10.preheader ], [ %indvars.iv.next107, %.preheader10 ]
  %58 = shl i64 %indvars.iv106205, 6
  %59 = shl i64 %indvars.iv110206, 3
  %60 = add nuw nsw i64 %58, %59
  %61 = add nuw nsw i64 %indvars.iv114207, %60
  %62 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %61
  store i32 1, ptr %62, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106205, 1
  %exitcond109 = icmp ne i64 %indvars.iv.next107, 1
  br i1 %exitcond109, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110206, 1
  %exitcond113 = icmp ne i64 %indvars.iv.next111, 3
  br i1 %exitcond113, label %.preheader10.preheader, label %63, !llvm.loop !41

63:                                               ; preds = %.preheader11
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114207, 1
  %exitcond117 = icmp ne i64 %indvars.iv.next115, 1
  br i1 %exitcond117, label %.preheader11.preheader, label %64, !llvm.loop !42

64:                                               ; preds = %63
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %64, %70
  %indvars.iv126210 = phi i64 [ 0, %64 ], [ %indvars.iv.next127, %70 ]
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  %indvars.iv122209 = phi i64 [ 0, %.preheader9.preheader ], [ %indvars.iv.next123, %.preheader9 ]
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %indvars.iv118208 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next119, %.preheader8 ]
  %65 = shl i64 %indvars.iv118208, 6
  %66 = shl i64 %indvars.iv122209, 3
  %67 = add nuw nsw i64 %65, %66
  %68 = add nuw nsw i64 %indvars.iv126210, %67
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %68
  store i32 1, ptr %69, align 4
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118208, 1
  %exitcond121 = icmp ne i64 %indvars.iv.next119, 3
  br i1 %exitcond121, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122209, 1
  %exitcond125 = icmp ne i64 %indvars.iv.next123, 1
  br i1 %exitcond125, label %.preheader8.preheader, label %70, !llvm.loop !44

70:                                               ; preds = %.preheader9
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126210, 1
  %exitcond129 = icmp ne i64 %indvars.iv.next127, 1
  br i1 %exitcond129, label %.preheader9.preheader, label %71, !llvm.loop !45

71:                                               ; preds = %70
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %71, %77
  %indvars.iv138213 = phi i64 [ 0, %71 ], [ %indvars.iv.next139, %77 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %indvars.iv134212 = phi i64 [ 0, %.preheader7.preheader ], [ %indvars.iv.next135, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %indvars.iv130211 = phi i64 [ 0, %.preheader6.preheader ], [ %indvars.iv.next131, %.preheader6 ]
  %72 = shl i64 %indvars.iv130211, 6
  %73 = shl i64 %indvars.iv134212, 3
  %74 = add nuw nsw i64 %72, %73
  %75 = add nuw nsw i64 %indvars.iv138213, %74
  %76 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %75
  store i32 1, ptr %76, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130211, 1
  %exitcond133 = icmp ne i64 %indvars.iv.next131, 1
  br i1 %exitcond133, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134212, 1
  %exitcond137 = icmp ne i64 %indvars.iv.next135, 2
  br i1 %exitcond137, label %.preheader6.preheader, label %77, !llvm.loop !47

77:                                               ; preds = %.preheader7
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138213, 1
  %exitcond141 = icmp ne i64 %indvars.iv.next139, 2
  br i1 %exitcond141, label %.preheader7.preheader, label %78, !llvm.loop !48

78:                                               ; preds = %77
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %78, %84
  %indvars.iv150216 = phi i64 [ 0, %78 ], [ %indvars.iv.next151, %84 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  %indvars.iv146215 = phi i64 [ 0, %.preheader5.preheader ], [ %indvars.iv.next147, %.preheader5 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %indvars.iv142214 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next143, %.preheader4 ]
  %79 = shl i64 %indvars.iv142214, 6
  %80 = shl i64 %indvars.iv146215, 3
  %81 = add nuw nsw i64 %79, %80
  %82 = add nuw nsw i64 %indvars.iv150216, %81
  %83 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %82
  store i32 1, ptr %83, align 4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142214, 1
  %exitcond145 = icmp ne i64 %indvars.iv.next143, 2
  br i1 %exitcond145, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146215, 1
  %exitcond149 = icmp ne i64 %indvars.iv.next147, 1
  br i1 %exitcond149, label %.preheader4.preheader, label %84, !llvm.loop !50

84:                                               ; preds = %.preheader5
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150216, 1
  %exitcond153 = icmp ne i64 %indvars.iv.next151, 2
  br i1 %exitcond153, label %.preheader5.preheader, label %85, !llvm.loop !51

85:                                               ; preds = %84
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %85, %91
  %indvars.iv162219 = phi i64 [ 0, %85 ], [ %indvars.iv.next163, %91 ]
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %indvars.iv158218 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next159, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %indvars.iv154217 = phi i64 [ 0, %.preheader2.preheader ], [ %indvars.iv.next155, %.preheader2 ]
  %86 = shl i64 %indvars.iv154217, 6
  %87 = shl i64 %indvars.iv158218, 3
  %88 = add nuw nsw i64 %86, %87
  %89 = add nuw nsw i64 %indvars.iv162219, %88
  %90 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %89
  store i32 1, ptr %90, align 4
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154217, 1
  %exitcond157 = icmp ne i64 %indvars.iv.next155, 2
  br i1 %exitcond157, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158218, 1
  %exitcond161 = icmp ne i64 %indvars.iv.next159, 2
  br i1 %exitcond161, label %.preheader2.preheader, label %91, !llvm.loop !53

91:                                               ; preds = %.preheader3
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162219, 1
  %exitcond165 = icmp ne i64 %indvars.iv.next163, 1
  br i1 %exitcond165, label %.preheader3.preheader, label %92, !llvm.loop !54

92:                                               ; preds = %91
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %92, %98
  %indvars.iv174222 = phi i64 [ 0, %92 ], [ %indvars.iv.next175, %98 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %indvars.iv170221 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next171, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv166220 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next167, %.preheader ]
  %93 = shl i64 %indvars.iv166220, 6
  %94 = shl i64 %indvars.iv170221, 3
  %95 = add nuw nsw i64 %93, %94
  %96 = add nuw nsw i64 %indvars.iv174222, %95
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %96
  store i32 1, ptr %97, align 4
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166220, 1
  %exitcond169 = icmp ne i64 %indvars.iv.next167, 2
  br i1 %exitcond169, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170221, 1
  %exitcond173 = icmp ne i64 %indvars.iv.next171, 2
  br i1 %exitcond173, label %.preheader.preheader, label %98, !llvm.loop !56

98:                                               ; preds = %.preheader1
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174222, 1
  %exitcond177 = icmp ne i64 %indvars.iv.next175, 2
  br i1 %exitcond177, label %.preheader1.preheader, label %99, !llvm.loop !57

99:                                               ; preds = %98
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %100 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %100, 0
  br i1 %.not, label %103, label %101

101:                                              ; preds = %99
  %102 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %102, ptr @n, align 4
  br label %104

103:                                              ; preds = %99
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %104

104:                                              ; preds = %103, %101
  %105 = load i32, ptr @n, align 4
  %106 = call i32 @Trial(i32 noundef %105)
  %.not16 = icmp eq i32 %106, 0
  br i1 %.not16, label %107, label %108

107:                                              ; preds = %104
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %111

108:                                              ; preds = %104
  %109 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %109, 2005
  br i1 %.not18, label %111, label %110

110:                                              ; preds = %108
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %111

111:                                              ; preds = %110, %108, %107
  %112 = load i32, ptr @n, align 4
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %112) #4
  %114 = load i32, ptr @kount, align 4
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %114) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nuw nsw i32 %storemerge1, 1
  %exitcond = icmp ne i32 %2, 100
  br i1 %exitcond, label %1, label %3, !llvm.loop !58

3:                                                ; preds = %1
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
