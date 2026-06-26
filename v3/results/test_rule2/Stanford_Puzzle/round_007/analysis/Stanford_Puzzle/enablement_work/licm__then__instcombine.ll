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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %8
  %18 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %12, %7
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %7 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %8

8:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %9

9:                                                ; preds = %8
  %10 = zext nneg i32 %storemerge to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %storemerge
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = add nuw nsw i32 %storemerge, 1
  br label %8, !llvm.loop !9

19:                                               ; preds = %8
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %smax = call i32 @llvm.smax.i32(i32 %26, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %28

28:                                               ; preds = %34, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ %27, %19 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %34

32:                                               ; preds = %29
  %33 = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

34:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %28, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32
  %storemerge2 = phi i32 [ %33, %32 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

18:                                               ; preds = %7
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
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

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp samesign ult i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = zext nneg i32 %storemerge to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nuw nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %4 ]
  %3 = icmp samesign ult i32 %storemerge, 512
  br i1 %3, label %4, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %2
  store i32 %storemerge, ptr %1, align 4
  br label %.preheader31

4:                                                ; preds = %2
  %5 = zext nneg i32 %storemerge to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !13

.preheader31:                                     ; preds = %20, %.preheader31.preheader
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %.preheader31.preheader ]
  %8 = icmp samesign ult i32 %storemerge1, 6
  br i1 %8, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %18, %.preheader30.preheader
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader30.preheader ]
  %9 = icmp samesign ult i32 %storemerge47, 6
  br i1 %9, label %.preheader29.preheader, label %20

.preheader29.preheader:                           ; preds = %.preheader30
  %10 = shl nuw nsw i32 %storemerge47, 3
  br label %.preheader29

.preheader29:                                     ; preds = %12, %.preheader29.preheader
  %storemerge48 = phi i32 [ %17, %12 ], [ 1, %.preheader29.preheader ]
  %11 = icmp samesign ult i32 %storemerge48, 6
  br i1 %11, label %12, label %18

12:                                               ; preds = %.preheader29
  %13 = shl nuw nsw i32 %storemerge48, 6
  %14 = or disjoint i32 %10, %13
  %.reass = or disjoint i32 %14, %storemerge1
  %15 = zext nneg i32 %.reass to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

18:                                               ; preds = %.preheader29
  %19 = add nuw nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

20:                                               ; preds = %.preheader30
  %21 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %30, %.preheader28.preheader
  %storemerge46.lcssa4 = phi i32 [ %storemerge46, %30 ], [ poison, %.preheader28.preheader ]
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader28.preheader ]
  %22 = icmp samesign ult i32 %storemerge2, 13
  br i1 %22, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %23 = zext nneg i32 %storemerge2 to i64
  %24 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %23
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  store i32 %storemerge46.lcssa4, ptr %1, align 4
  br label %.preheader26

.preheader27:                                     ; preds = %26, %.preheader27.preheader
  %storemerge46 = phi i32 [ %29, %26 ], [ 0, %.preheader27.preheader ]
  %25 = icmp samesign ult i32 %storemerge46, 512
  br i1 %25, label %26, label %30

26:                                               ; preds = %.preheader27
  %27 = zext nneg i32 %storemerge46 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %24, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

30:                                               ; preds = %.preheader27
  %31 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %40, %.preheader26.preheader
  %storemerge3 = phi i32 [ %41, %40 ], [ 0, %.preheader26.preheader ]
  %32 = icmp samesign ult i32 %storemerge3, 4
  br i1 %32, label %.preheader25.preheader, label %42

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %38, %.preheader25.preheader
  %storemerge44 = phi i32 [ %39, %38 ], [ 0, %.preheader25.preheader ]
  %33 = icmp samesign ult i32 %storemerge44, 2
  br i1 %33, label %.preheader24.preheader, label %40

.preheader24.preheader:                           ; preds = %.preheader25
  %34 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = or disjoint i32 %34, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %35, %.preheader24.preheader
  %storemerge45 = phi i1 [ false, %35 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %35, label %38

35:                                               ; preds = %.preheader24
  %36 = zext nneg i32 %invariant.op5 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %36
  store i32 1, ptr %37, align 4
  br label %.preheader24, !llvm.loop !19

38:                                               ; preds = %.preheader24
  %39 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

40:                                               ; preds = %.preheader25
  %41 = add nuw nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

42:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %43

43:                                               ; preds = %52, %42
  %storemerge4 = phi i32 [ 0, %42 ], [ %53, %52 ]
  %44 = icmp samesign ult i32 %storemerge4, 2
  br i1 %44, label %.preheader23.preheader, label %54

.preheader23.preheader:                           ; preds = %43
  br label %.preheader23

.preheader23:                                     ; preds = %51, %.preheader23.preheader
  %storemerge42 = phi i1 [ false, %51 ], [ true, %.preheader23.preheader ]
  br i1 %storemerge42, label %.preheader22.preheader, label %52

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %46, %.preheader22.preheader
  %storemerge43 = phi i32 [ %50, %46 ], [ 0, %.preheader22.preheader ]
  %45 = icmp samesign ult i32 %storemerge43, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %.preheader22
  %47 = shl nuw nsw i32 %storemerge43, 6
  %.reass11 = or disjoint i32 %47, %storemerge4
  %48 = zext nneg i32 %.reass11 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

51:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

52:                                               ; preds = %.preheader23
  %53 = add nuw nsw i32 %storemerge4, 1
  br label %43, !llvm.loop !24

54:                                               ; preds = %43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = phi i1 [ true, %54 ], [ false, %67 ]
  br i1 %56, label %.preheader21.preheader, label %68

.preheader21.preheader:                           ; preds = %55
  br label %.preheader21

.preheader21:                                     ; preds = %65, %.preheader21.preheader
  %storemerge40 = phi i32 [ %66, %65 ], [ 0, %.preheader21.preheader ]
  %57 = icmp samesign ult i32 %storemerge40, 4
  br i1 %57, label %.preheader20.preheader, label %67

.preheader20.preheader:                           ; preds = %.preheader21
  %58 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %60, %.preheader20.preheader
  %storemerge41 = phi i32 [ %64, %60 ], [ 0, %.preheader20.preheader ]
  %59 = icmp samesign ult i32 %storemerge41, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %.preheader20
  %61 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = or disjoint i32 %61, %58
  %62 = zext nneg i32 %.reass16 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

65:                                               ; preds = %.preheader20
  %66 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

67:                                               ; preds = %.preheader21
  br label %55, !llvm.loop !27

68:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %69

69:                                               ; preds = %78, %68
  %storemerge6 = phi i32 [ 0, %68 ], [ %79, %78 ]
  %70 = icmp samesign ult i32 %storemerge6, 2
  br i1 %70, label %.preheader19.preheader, label %80

.preheader19.preheader:                           ; preds = %69
  br label %.preheader19

.preheader19:                                     ; preds = %76, %.preheader19.preheader
  %storemerge38 = phi i32 [ %77, %76 ], [ 0, %.preheader19.preheader ]
  %71 = icmp samesign ult i32 %storemerge38, 4
  br i1 %71, label %.preheader18.preheader, label %78

.preheader18.preheader:                           ; preds = %.preheader19
  %72 = shl nuw nsw i32 %storemerge38, 3
  %invariant.op20 = or disjoint i32 %72, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %73, %.preheader18.preheader
  %storemerge39 = phi i1 [ false, %73 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %73, label %76

73:                                               ; preds = %.preheader18
  %74 = zext nneg i32 %invariant.op20 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %74
  store i32 1, ptr %75, align 4
  br label %.preheader18, !llvm.loop !28

76:                                               ; preds = %.preheader18
  %77 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

78:                                               ; preds = %.preheader19
  %79 = add nuw nsw i32 %storemerge6, 1
  br label %69, !llvm.loop !30

80:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %81

81:                                               ; preds = %90, %80
  %storemerge7 = phi i32 [ 0, %80 ], [ %91, %90 ]
  %82 = icmp samesign ult i32 %storemerge7, 4
  br i1 %82, label %.preheader17.preheader, label %92

.preheader17.preheader:                           ; preds = %81
  br label %.preheader17

.preheader17:                                     ; preds = %89, %.preheader17.preheader
  %storemerge36 = phi i1 [ false, %89 ], [ true, %.preheader17.preheader ]
  br i1 %storemerge36, label %.preheader16.preheader, label %90

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %84, %.preheader16.preheader
  %storemerge37 = phi i32 [ %88, %84 ], [ 0, %.preheader16.preheader ]
  %83 = icmp samesign ult i32 %storemerge37, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %.preheader16
  %85 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = or disjoint i32 %85, %storemerge7
  %86 = zext nneg i32 %.reass26 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %86
  store i32 1, ptr %87, align 4
  %88 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

89:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

90:                                               ; preds = %.preheader17
  %91 = add nuw nsw i32 %storemerge7, 1
  br label %81, !llvm.loop !33

92:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %93

93:                                               ; preds = %105, %92
  %94 = phi i1 [ true, %92 ], [ false, %105 ]
  br i1 %94, label %.preheader15.preheader, label %106

.preheader15.preheader:                           ; preds = %93
  br label %.preheader15

.preheader15:                                     ; preds = %103, %.preheader15.preheader
  %storemerge34 = phi i32 [ %104, %103 ], [ 0, %.preheader15.preheader ]
  %95 = icmp samesign ult i32 %storemerge34, 2
  br i1 %95, label %.preheader14.preheader, label %105

.preheader14.preheader:                           ; preds = %.preheader15
  %96 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %98, %.preheader14.preheader
  %storemerge35 = phi i32 [ %102, %98 ], [ 0, %.preheader14.preheader ]
  %97 = icmp samesign ult i32 %storemerge35, 4
  br i1 %97, label %98, label %103

98:                                               ; preds = %.preheader14
  %99 = shl nuw nsw i32 %storemerge35, 6
  %.reass31 = or disjoint i32 %99, %96
  %100 = zext nneg i32 %.reass31 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

103:                                              ; preds = %.preheader14
  %104 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

105:                                              ; preds = %.preheader15
  br label %93, !llvm.loop !36

106:                                              ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %107

107:                                              ; preds = %113, %106
  %storemerge9 = phi i32 [ 0, %106 ], [ %114, %113 ]
  %108 = icmp samesign ult i32 %storemerge9, 3
  br i1 %108, label %.preheader13.preheader, label %115

.preheader13.preheader:                           ; preds = %107
  br label %.preheader13

.preheader13:                                     ; preds = %112, %.preheader13.preheader
  %storemerge32 = phi i1 [ false, %112 ], [ true, %.preheader13.preheader ]
  br i1 %storemerge32, label %.preheader12.preheader, label %113

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %109, %.preheader12.preheader
  %storemerge33 = phi i1 [ false, %109 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %109, label %112

109:                                              ; preds = %.preheader12
  %110 = zext nneg i32 %storemerge9 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %110
  store i32 1, ptr %111, align 4
  br label %.preheader12, !llvm.loop !37

112:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

113:                                              ; preds = %.preheader13
  %114 = add nuw nsw i32 %storemerge9, 1
  br label %107, !llvm.loop !39

115:                                              ; preds = %107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %116

116:                                              ; preds = %125, %115
  %117 = phi i1 [ true, %115 ], [ false, %125 ]
  br i1 %117, label %.preheader11.preheader, label %126

.preheader11.preheader:                           ; preds = %116
  br label %.preheader11

.preheader11:                                     ; preds = %123, %.preheader11.preheader
  %storemerge30 = phi i32 [ %124, %123 ], [ 0, %.preheader11.preheader ]
  %118 = icmp samesign ult i32 %storemerge30, 3
  br i1 %118, label %.preheader10.preheader, label %125

.preheader10.preheader:                           ; preds = %.preheader11
  %119 = shl nuw nsw i32 %storemerge30, 3
  br label %.preheader10

.preheader10:                                     ; preds = %120, %.preheader10.preheader
  %storemerge31 = phi i1 [ false, %120 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %120, label %123

120:                                              ; preds = %.preheader10
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %121
  store i32 1, ptr %122, align 4
  br label %.preheader10, !llvm.loop !40

123:                                              ; preds = %.preheader10
  %124 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

125:                                              ; preds = %.preheader11
  br label %116, !llvm.loop !42

126:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %127

127:                                              ; preds = %136, %126
  %128 = phi i1 [ true, %126 ], [ false, %136 ]
  br i1 %128, label %.preheader9.preheader, label %137

.preheader9.preheader:                            ; preds = %127
  br label %.preheader9

.preheader9:                                      ; preds = %135, %.preheader9.preheader
  %storemerge28 = phi i1 [ false, %135 ], [ true, %.preheader9.preheader ]
  br i1 %storemerge28, label %.preheader8.preheader, label %136

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %130, %.preheader8.preheader
  %storemerge29 = phi i32 [ %134, %130 ], [ 0, %.preheader8.preheader ]
  %129 = icmp samesign ult i32 %storemerge29, 3
  br i1 %129, label %130, label %135

130:                                              ; preds = %.preheader8
  %131 = shl nuw nsw i32 %storemerge29, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

135:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

136:                                              ; preds = %.preheader9
  br label %127, !llvm.loop !45

137:                                              ; preds = %127
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %138

138:                                              ; preds = %147, %137
  %storemerge12 = phi i32 [ 0, %137 ], [ %148, %147 ]
  %139 = icmp samesign ult i32 %storemerge12, 2
  br i1 %139, label %.preheader7.preheader, label %149

.preheader7.preheader:                            ; preds = %138
  br label %.preheader7

.preheader7:                                      ; preds = %145, %.preheader7.preheader
  %storemerge26 = phi i32 [ %146, %145 ], [ 0, %.preheader7.preheader ]
  %140 = icmp samesign ult i32 %storemerge26, 2
  br i1 %140, label %.preheader6.preheader, label %147

.preheader6.preheader:                            ; preds = %.preheader7
  %141 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = or disjoint i32 %141, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %142, %.preheader6.preheader
  %storemerge27 = phi i1 [ false, %142 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %142, label %145

142:                                              ; preds = %.preheader6
  %143 = zext nneg i32 %invariant.op50 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %143
  store i32 1, ptr %144, align 4
  br label %.preheader6, !llvm.loop !46

145:                                              ; preds = %.preheader6
  %146 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

147:                                              ; preds = %.preheader7
  %148 = add nuw nsw i32 %storemerge12, 1
  br label %138, !llvm.loop !48

149:                                              ; preds = %138
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %150

150:                                              ; preds = %159, %149
  %storemerge13 = phi i32 [ 0, %149 ], [ %160, %159 ]
  %151 = icmp samesign ult i32 %storemerge13, 2
  br i1 %151, label %.preheader5.preheader, label %161

.preheader5.preheader:                            ; preds = %150
  br label %.preheader5

.preheader5:                                      ; preds = %158, %.preheader5.preheader
  %storemerge24 = phi i1 [ false, %158 ], [ true, %.preheader5.preheader ]
  br i1 %storemerge24, label %.preheader4.preheader, label %159

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %153, %.preheader4.preheader
  %storemerge25 = phi i32 [ %157, %153 ], [ 0, %.preheader4.preheader ]
  %152 = icmp samesign ult i32 %storemerge25, 2
  br i1 %152, label %153, label %158

153:                                              ; preds = %.preheader4
  %154 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = or disjoint i32 %154, %storemerge13
  %155 = zext nneg i32 %.reass56 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %155
  store i32 1, ptr %156, align 4
  %157 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

158:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

159:                                              ; preds = %.preheader5
  %160 = add nuw nsw i32 %storemerge13, 1
  br label %150, !llvm.loop !51

161:                                              ; preds = %150
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %162

162:                                              ; preds = %174, %161
  %163 = phi i1 [ true, %161 ], [ false, %174 ]
  br i1 %163, label %.preheader3.preheader, label %175

.preheader3.preheader:                            ; preds = %162
  br label %.preheader3

.preheader3:                                      ; preds = %172, %.preheader3.preheader
  %storemerge22 = phi i32 [ %173, %172 ], [ 0, %.preheader3.preheader ]
  %164 = icmp samesign ult i32 %storemerge22, 2
  br i1 %164, label %.preheader2.preheader, label %174

.preheader2.preheader:                            ; preds = %.preheader3
  %165 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %167, %.preheader2.preheader
  %storemerge23 = phi i32 [ %171, %167 ], [ 0, %.preheader2.preheader ]
  %166 = icmp samesign ult i32 %storemerge23, 2
  br i1 %166, label %167, label %172

167:                                              ; preds = %.preheader2
  %168 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = or disjoint i32 %168, %165
  %169 = zext nneg i32 %.reass61 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

172:                                              ; preds = %.preheader2
  %173 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

174:                                              ; preds = %.preheader3
  br label %162, !llvm.loop !54

175:                                              ; preds = %162
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %176

176:                                              ; preds = %189, %175
  %storemerge15 = phi i32 [ 0, %175 ], [ %190, %189 ]
  %177 = icmp samesign ult i32 %storemerge15, 2
  br i1 %177, label %.preheader1.preheader, label %191

.preheader1.preheader:                            ; preds = %176
  br label %.preheader1

.preheader1:                                      ; preds = %187, %.preheader1.preheader
  %storemerge20 = phi i32 [ %188, %187 ], [ 0, %.preheader1.preheader ]
  %178 = icmp samesign ult i32 %storemerge20, 2
  br i1 %178, label %.preheader.preheader, label %189

.preheader.preheader:                             ; preds = %.preheader1
  %179 = shl nuw nsw i32 %storemerge20, 3
  br label %.preheader

.preheader:                                       ; preds = %181, %.preheader.preheader
  %storemerge21 = phi i32 [ %186, %181 ], [ 0, %.preheader.preheader ]
  %180 = icmp samesign ult i32 %storemerge21, 2
  br i1 %180, label %181, label %187

181:                                              ; preds = %.preheader
  %182 = shl nuw nsw i32 %storemerge21, 6
  %183 = or disjoint i32 %179, %182
  %.reass66 = or disjoint i32 %183, %storemerge15
  %184 = zext nneg i32 %.reass66 to i64
  %185 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %184
  store i32 1, ptr %185, align 4
  %186 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

187:                                              ; preds = %.preheader
  %188 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

189:                                              ; preds = %.preheader1
  %190 = add nuw nsw i32 %storemerge15, 1
  br label %176, !llvm.loop !57

191:                                              ; preds = %176
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %1, align 4
  store i32 0, ptr @kount, align 4
  %192 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %192, 0
  br i1 %.not, label %196, label %193

193:                                              ; preds = %191
  %194 = load i32, ptr %1, align 4
  %195 = call i32 @Place(i32 noundef 0, i32 noundef %194)
  store i32 %195, ptr @n, align 4
  br label %197

196:                                              ; preds = %191
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i32, ptr @n, align 4
  %199 = call i32 @Trial(i32 noundef %198)
  %.not16 = icmp eq i32 %199, 0
  br i1 %.not16, label %200, label %201

200:                                              ; preds = %197
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %204

201:                                              ; preds = %197
  %202 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %202, 2005
  br i1 %.not18, label %204, label %203

203:                                              ; preds = %201
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %204

204:                                              ; preds = %203, %201, %200
  %205 = load i32, ptr @n, align 4
  %206 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %205) #4
  %207 = load i32, ptr @kount, align 4
  %208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %207) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
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
