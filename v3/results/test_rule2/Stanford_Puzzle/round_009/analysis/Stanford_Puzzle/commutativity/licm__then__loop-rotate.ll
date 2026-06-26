; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_008\output.ll'
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %16
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %8 = zext nneg i32 %storemerge2 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %1, %storemerge2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %7
  %17 = add nuw nsw i32 %storemerge2, 1
  %.not = icmp sgt i32 %17, %5
  br i1 %.not, label %._crit_edge3, label %7, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %18

._crit_edge3:                                     ; preds = %16
  %split4 = phi i32 [ 1, %16 ]
  br label %18

18:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %8 = zext nneg i32 %storemerge3 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = add nuw nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %16, %5
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %24, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %17
  br label %25

25:                                               ; preds = %.lr.ph7, %30
  %indvars.iv5 = phi i64 [ %24, %.lr.ph7 ], [ %indvars.iv.next, %30 ]
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %30

28:                                               ; preds = %25
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %25 ]
  %29 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

30:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %25, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %30
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %8 = zext nneg i32 %storemerge3 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %1, %storemerge3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = add nuw nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %16, %5
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %18
  %storemerge2 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = zext nneg i32 %storemerge2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not3, %16
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %storemerge2, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %11, %4
  %19 = add nuw nsw i32 %storemerge2, 1
  %20 = icmp samesign ult i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %18
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31.preheader:                           ; preds = %1
  br label %.preheader30.preheader

1:                                                ; preds = %0, %1
  %storemerge8 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = zext nneg i32 %storemerge8 to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %storemerge8, 1
  %5 = icmp samesign ult i32 %4, 512
  br i1 %5, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %storemerge111 = phi i32 [ 1, %.preheader31.preheader ], [ %14, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge4710 = phi i32 [ 1, %.preheader30.preheader ], [ %12, %.preheader30 ]
  %6 = shl nuw nsw i32 %storemerge4710, 3
  %invariant.op = or disjoint i32 %6, %storemerge111
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge489 = phi i32 [ 1, %.preheader29.preheader ], [ %10, %.preheader29 ]
  %7 = shl nuw nsw i32 %storemerge489, 6
  %.reass = or disjoint i32 %7, %invariant.op
  %8 = zext nneg i32 %.reass to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i32 %storemerge489, 1
  %11 = icmp samesign ult i32 %10, 6
  br i1 %11, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %12 = add nuw nsw i32 %storemerge4710, 1
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %14 = add nuw nsw i32 %storemerge111, 1
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge213 = phi i32 [ 0, %.preheader28.preheader ], [ %22, %.preheader28 ]
  %16 = zext nneg i32 %storemerge213 to i64
  %17 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %16
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge4612 = phi i32 [ 0, %.preheader27.preheader ], [ %20, %.preheader27 ]
  %18 = zext nneg i32 %storemerge4612 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nuw nsw i32 %storemerge4612, 1
  %21 = icmp samesign ult i32 %20, 512
  br i1 %21, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %22 = add nuw nsw i32 %storemerge213, 1
  %23 = icmp samesign ult i32 %22, 13
  br i1 %23, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %storemerge315 = phi i32 [ 0, %.preheader26.preheader ], [ %30, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4414 = phi i32 [ 0, %.preheader25.preheader ], [ %28, %.preheader25 ]
  %24 = shl nuw nsw i32 %storemerge4414, 3
  %25 = or disjoint i32 %storemerge315, %24
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %26
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  store i32 1, ptr %27, align 4
  br i1 false, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %28 = add nuw nsw i32 %storemerge4414, 1
  %29 = icmp samesign ult i32 %28, 2
  br i1 %29, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %30 = add nuw nsw i32 %storemerge315, 1
  %31 = icmp samesign ult i32 %30, 4
  br i1 %31, label %.preheader25.preheader, label %32, !llvm.loop !21

32:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %32, %39
  %storemerge417 = phi i32 [ 0, %32 ], [ %40, %39 ]
  br label %.preheader22.preheader

.preheader23.loopexit:                            ; preds = %.preheader22
  br i1 false, label %.preheader22.preheader, label %39, !llvm.loop !22

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23.loopexit
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4316 = phi i32 [ 0, %.preheader22.preheader ], [ %37, %.preheader22 ]
  %33 = shl nuw nsw i32 %storemerge4316, 6
  %34 = or disjoint i32 %storemerge417, %33
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %35
  store i32 1, ptr %36, align 4
  %37 = add nuw nsw i32 %storemerge4316, 1
  %38 = icmp samesign ult i32 %37, 4
  br i1 %38, label %.preheader22, label %.preheader23.loopexit, !llvm.loop !23

39:                                               ; preds = %.preheader23.loopexit
  %40 = add nuw nsw i32 %storemerge417, 1
  %41 = icmp samesign ult i32 %40, 2
  br i1 %41, label %.preheader23.preheader, label %42, !llvm.loop !24

42:                                               ; preds = %39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.loopexit4:                                       ; preds = %.preheader21
  br i1 false, label %.preheader21.preheader, label %52, !llvm.loop !25

.preheader21.preheader:                           ; preds = %42, %.loopexit4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4019 = phi i32 [ 0, %.preheader21.preheader ], [ %50, %.preheader21 ]
  %43 = shl nuw nsw i32 %storemerge4019, 3
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4118 = phi i32 [ 0, %.preheader20.preheader ], [ %48, %.preheader20 ]
  %44 = shl nuw nsw i32 %storemerge4118, 6
  %45 = or disjoint i32 %44, %43
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %46
  store i32 1, ptr %47, align 4
  %48 = add nuw nsw i32 %storemerge4118, 1
  %49 = icmp samesign ult i32 %48, 2
  br i1 %49, label %.preheader20, label %.preheader21, !llvm.loop !26

.preheader21:                                     ; preds = %.preheader20
  %50 = add nuw nsw i32 %storemerge4019, 1
  %51 = icmp samesign ult i32 %50, 4
  br i1 %51, label %.preheader20.preheader, label %.loopexit4, !llvm.loop !27

52:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %52, %59
  %storemerge621 = phi i32 [ 0, %52 ], [ %60, %59 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3820 = phi i32 [ 0, %.preheader19.preheader ], [ %57, %.preheader19 ]
  %53 = shl nuw nsw i32 %storemerge3820, 3
  %54 = or disjoint i32 %storemerge621, %53
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %55
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  store i32 1, ptr %56, align 4
  br i1 false, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %57 = add nuw nsw i32 %storemerge3820, 1
  %58 = icmp samesign ult i32 %57, 4
  br i1 %58, label %.preheader18.preheader, label %59, !llvm.loop !29

59:                                               ; preds = %.preheader19
  %60 = add nuw nsw i32 %storemerge621, 1
  %61 = icmp samesign ult i32 %60, 2
  br i1 %61, label %.preheader19.preheader, label %62, !llvm.loop !30

62:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %62, %69
  %storemerge723 = phi i32 [ 0, %62 ], [ %70, %69 ]
  br label %.preheader16.preheader

.preheader17.loopexit:                            ; preds = %.preheader16
  br i1 false, label %.preheader16.preheader, label %69, !llvm.loop !31

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17.loopexit
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3722 = phi i32 [ 0, %.preheader16.preheader ], [ %67, %.preheader16 ]
  %63 = shl nuw nsw i32 %storemerge3722, 6
  %64 = or disjoint i32 %storemerge723, %63
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nuw nsw i32 %storemerge3722, 1
  %68 = icmp samesign ult i32 %67, 2
  br i1 %68, label %.preheader16, label %.preheader17.loopexit, !llvm.loop !32

69:                                               ; preds = %.preheader17.loopexit
  %70 = add nuw nsw i32 %storemerge723, 1
  %71 = icmp samesign ult i32 %70, 4
  br i1 %71, label %.preheader17.preheader, label %72, !llvm.loop !33

72:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.loopexit3:                                       ; preds = %.preheader15
  br i1 false, label %.preheader15.preheader, label %82, !llvm.loop !34

.preheader15.preheader:                           ; preds = %72, %.loopexit3
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3425 = phi i32 [ 0, %.preheader15.preheader ], [ %80, %.preheader15 ]
  %73 = shl nuw nsw i32 %storemerge3425, 3
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3524 = phi i32 [ 0, %.preheader14.preheader ], [ %78, %.preheader14 ]
  %74 = shl nuw nsw i32 %storemerge3524, 6
  %75 = or disjoint i32 %74, %73
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %76
  store i32 1, ptr %77, align 4
  %78 = add nuw nsw i32 %storemerge3524, 1
  %79 = icmp samesign ult i32 %78, 4
  br i1 %79, label %.preheader14, label %.preheader15, !llvm.loop !35

.preheader15:                                     ; preds = %.preheader14
  %80 = add nuw nsw i32 %storemerge3425, 1
  %81 = icmp samesign ult i32 %80, 2
  br i1 %81, label %.preheader14.preheader, label %.loopexit3, !llvm.loop !36

82:                                               ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %82, %85
  %storemerge926 = phi i32 [ 0, %82 ], [ %86, %85 ]
  %83 = zext nneg i32 %storemerge926 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %83
  br label %.preheader12.preheader

.preheader13.loopexit:                            ; preds = %.preheader12
  br i1 false, label %.preheader12.preheader, label %85, !llvm.loop !37

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13.loopexit
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  store i32 1, ptr %84, align 4
  br i1 false, label %.preheader12, label %.preheader13.loopexit, !llvm.loop !38

85:                                               ; preds = %.preheader13.loopexit
  %86 = add nuw nsw i32 %storemerge926, 1
  %87 = icmp samesign ult i32 %86, 3
  br i1 %87, label %.preheader13.preheader, label %88, !llvm.loop !39

88:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.loopexit2:                                       ; preds = %.preheader11
  br i1 false, label %.preheader11.preheader, label %94, !llvm.loop !40

.preheader11.preheader:                           ; preds = %88, %.loopexit2
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3027 = phi i32 [ 0, %.preheader11.preheader ], [ %92, %.preheader11 ]
  %89 = shl nuw nsw i32 %storemerge3027, 3
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %90
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  store i32 1, ptr %91, align 4
  br i1 false, label %.preheader10, label %.preheader11, !llvm.loop !41

.preheader11:                                     ; preds = %.preheader10
  %92 = add nuw nsw i32 %storemerge3027, 1
  %93 = icmp samesign ult i32 %92, 3
  br i1 %93, label %.preheader10.preheader, label %.loopexit2, !llvm.loop !42

94:                                               ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader, label %100, !llvm.loop !43

.preheader9.preheader:                            ; preds = %94, %.loopexit1
  br label %.preheader8.preheader

.preheader9.loopexit:                             ; preds = %.preheader8
  br i1 false, label %.preheader8.preheader, label %.loopexit1, !llvm.loop !44

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9.loopexit
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2928 = phi i32 [ 0, %.preheader8.preheader ], [ %98, %.preheader8 ]
  %95 = shl nuw nsw i32 %storemerge2928, 6
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %96
  store i32 1, ptr %97, align 4
  %98 = add nuw nsw i32 %storemerge2928, 1
  %99 = icmp samesign ult i32 %98, 3
  br i1 %99, label %.preheader8, label %.preheader9.loopexit, !llvm.loop !45

100:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %100, %107
  %storemerge1230 = phi i32 [ 0, %100 ], [ %108, %107 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2629 = phi i32 [ 0, %.preheader7.preheader ], [ %105, %.preheader7 ]
  %101 = shl nuw nsw i32 %storemerge2629, 3
  %102 = or disjoint i32 %storemerge1230, %101
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %103
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  store i32 1, ptr %104, align 4
  br i1 false, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %105 = add nuw nsw i32 %storemerge2629, 1
  %106 = icmp samesign ult i32 %105, 2
  br i1 %106, label %.preheader6.preheader, label %107, !llvm.loop !47

107:                                              ; preds = %.preheader7
  %108 = add nuw nsw i32 %storemerge1230, 1
  %109 = icmp samesign ult i32 %108, 2
  br i1 %109, label %.preheader7.preheader, label %110, !llvm.loop !48

110:                                              ; preds = %107
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %110, %117
  %storemerge1332 = phi i32 [ 0, %110 ], [ %118, %117 ]
  br label %.preheader4.preheader

.preheader5.loopexit:                             ; preds = %.preheader4
  br i1 false, label %.preheader4.preheader, label %117, !llvm.loop !49

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5.loopexit
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2531 = phi i32 [ 0, %.preheader4.preheader ], [ %115, %.preheader4 ]
  %111 = shl nuw nsw i32 %storemerge2531, 6
  %112 = or disjoint i32 %storemerge1332, %111
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nuw nsw i32 %storemerge2531, 1
  %116 = icmp samesign ult i32 %115, 2
  br i1 %116, label %.preheader4, label %.preheader5.loopexit, !llvm.loop !50

117:                                              ; preds = %.preheader5.loopexit
  %118 = add nuw nsw i32 %storemerge1332, 1
  %119 = icmp samesign ult i32 %118, 2
  br i1 %119, label %.preheader5.preheader, label %120, !llvm.loop !51

120:                                              ; preds = %117
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.loopexit:                                        ; preds = %.preheader3
  br i1 false, label %.preheader3.preheader, label %130, !llvm.loop !52

.preheader3.preheader:                            ; preds = %120, %.loopexit
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2234 = phi i32 [ 0, %.preheader3.preheader ], [ %128, %.preheader3 ]
  %121 = shl nuw nsw i32 %storemerge2234, 3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2333 = phi i32 [ 0, %.preheader2.preheader ], [ %126, %.preheader2 ]
  %122 = shl nuw nsw i32 %storemerge2333, 6
  %123 = or disjoint i32 %122, %121
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nuw nsw i32 %storemerge2333, 1
  %127 = icmp samesign ult i32 %126, 2
  br i1 %127, label %.preheader2, label %.preheader3, !llvm.loop !53

.preheader3:                                      ; preds = %.preheader2
  %128 = add nuw nsw i32 %storemerge2234, 1
  %129 = icmp samesign ult i32 %128, 2
  br i1 %129, label %.preheader2.preheader, label %.loopexit, !llvm.loop !54

130:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %130, %139
  %storemerge1537 = phi i32 [ 0, %130 ], [ %140, %139 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2036 = phi i32 [ 0, %.preheader1.preheader ], [ %137, %.preheader1 ]
  %131 = shl nuw nsw i32 %storemerge2036, 3
  %invariant.op5 = or disjoint i32 %131, %storemerge1537
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2135 = phi i32 [ 0, %.preheader.preheader ], [ %135, %.preheader ]
  %132 = shl nuw nsw i32 %storemerge2135, 6
  %.reass6 = or disjoint i32 %132, %invariant.op5
  %133 = zext nneg i32 %.reass6 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nuw nsw i32 %storemerge2135, 1
  %136 = icmp samesign ult i32 %135, 2
  br i1 %136, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %137 = add nuw nsw i32 %storemerge2036, 1
  %138 = icmp samesign ult i32 %137, 2
  br i1 %138, label %.preheader.preheader, label %139, !llvm.loop !56

139:                                              ; preds = %.preheader1
  %140 = add nuw nsw i32 %storemerge1537, 1
  %141 = icmp samesign ult i32 %140, 2
  br i1 %141, label %.preheader1.preheader, label %142, !llvm.loop !57

142:                                              ; preds = %139
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %143 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %143, 0
  br i1 %.not, label %146, label %144

144:                                              ; preds = %142
  %145 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %145, ptr @n, align 4
  br label %147

146:                                              ; preds = %142
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %147

147:                                              ; preds = %146, %144
  %148 = load i32, ptr @n, align 4
  %149 = call i32 @Trial(i32 noundef %148)
  %.not16 = icmp eq i32 %149, 0
  br i1 %.not16, label %150, label %151

150:                                              ; preds = %147
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %154

151:                                              ; preds = %147
  %152 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %152, 2005
  br i1 %.not18, label %154, label %153

153:                                              ; preds = %151
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %154

154:                                              ; preds = %153, %151, %150
  %155 = load i32, ptr @n, align 4
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %155) #4
  %157 = load i32, ptr @kount, align 4
  %158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %157) #4
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
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !58

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
