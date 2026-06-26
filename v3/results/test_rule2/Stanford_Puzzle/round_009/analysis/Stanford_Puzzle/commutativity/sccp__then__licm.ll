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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
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
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
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
  %.lcssa = phi i64 [ %3, %7 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 512
  br i1 %2, label %3, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

3:                                                ; preds = %1
  %4 = zext nneg i32 %storemerge to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %18
  %storemerge1 = phi i32 [ %19, %18 ], [ 1, %.preheader31.preheader ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader, %16
  %storemerge47 = phi i32 [ %17, %16 ], [ 1, %.preheader30.preheader ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %18

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = shl nuw nsw i32 %storemerge47, 3
  %invariant.op = or disjoint i32 %9, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %11
  %storemerge48 = phi i32 [ %15, %11 ], [ 1, %.preheader29.preheader ]
  %10 = icmp samesign ult i32 %storemerge48, 6
  br i1 %10, label %11, label %16

11:                                               ; preds = %.preheader29
  %12 = shl nuw nsw i32 %storemerge48, 6
  %.reass = or disjoint i32 %12, %invariant.op
  %13 = zext nneg i32 %.reass to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

16:                                               ; preds = %.preheader29
  %17 = add nuw nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

18:                                               ; preds = %.preheader30
  %19 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %.preheader28.preheader, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.preheader28.preheader ]
  %20 = icmp samesign ult i32 %storemerge2, 13
  br i1 %20, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %21 = zext nneg i32 %storemerge2 to i64
  %22 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %21
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %.preheader27.preheader, %24
  %storemerge46 = phi i32 [ %27, %24 ], [ 0, %.preheader27.preheader ]
  %23 = icmp samesign ult i32 %storemerge46, 512
  br i1 %23, label %24, label %28

24:                                               ; preds = %.preheader27
  %25 = zext nneg i32 %storemerge46 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

28:                                               ; preds = %.preheader27
  %29 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %.preheader26.preheader, %39
  %storemerge3 = phi i32 [ %40, %39 ], [ 0, %.preheader26.preheader ]
  %30 = icmp samesign ult i32 %storemerge3, 4
  br i1 %30, label %.preheader25.preheader, label %41

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader, %37
  %storemerge44 = phi i32 [ %38, %37 ], [ 0, %.preheader25.preheader ]
  %31 = icmp samesign ult i32 %storemerge44, 2
  br i1 %31, label %.preheader24.preheader, label %39

.preheader24.preheader:                           ; preds = %.preheader25
  %32 = shl nuw nsw i32 %storemerge44, 3
  %33 = or disjoint i32 %storemerge3, %32
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %34
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %36
  %storemerge45 = phi i1 [ false, %36 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %36, label %37

36:                                               ; preds = %.preheader24
  store i32 1, ptr %35, align 4
  br label %.preheader24, !llvm.loop !19

37:                                               ; preds = %.preheader24
  %38 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

39:                                               ; preds = %.preheader25
  %40 = add nuw nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

41:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %42

42:                                               ; preds = %52, %41
  %storemerge4 = phi i32 [ 0, %41 ], [ %53, %52 ]
  %43 = icmp samesign ult i32 %storemerge4, 2
  br i1 %43, label %.preheader23.preheader, label %54

.preheader23.preheader:                           ; preds = %42
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader23.preheader, %.preheader23.loopexit
  %44 = phi i1 [ false, %.preheader23.loopexit ], [ true, %.preheader23.preheader ]
  br i1 %44, label %.preheader22.preheader, label %52

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %46
  %storemerge43 = phi i32 [ %51, %46 ], [ 0, %.preheader22.preheader ]
  %45 = icmp samesign ult i32 %storemerge43, 4
  br i1 %45, label %46, label %.preheader23.loopexit

46:                                               ; preds = %.preheader22
  %47 = shl nuw nsw i32 %storemerge43, 6
  %48 = or disjoint i32 %storemerge4, %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !23

52:                                               ; preds = %.preheader23
  %53 = add nuw nsw i32 %storemerge4, 1
  br label %42, !llvm.loop !24

54:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %55

.loopexit4:                                       ; preds = %.preheader21
  br label %55, !llvm.loop !25

55:                                               ; preds = %.loopexit4, %54
  %56 = phi i1 [ true, %54 ], [ false, %.loopexit4 ]
  br i1 %56, label %.preheader21.preheader, label %68

.preheader21.preheader:                           ; preds = %55
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %66
  %storemerge40 = phi i32 [ %67, %66 ], [ 0, %.preheader21.preheader ]
  %57 = icmp samesign ult i32 %storemerge40, 4
  br i1 %57, label %.preheader20.preheader, label %.loopexit4

.preheader20.preheader:                           ; preds = %.preheader21
  %58 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %60
  %storemerge41 = phi i32 [ %65, %60 ], [ 0, %.preheader20.preheader ]
  %59 = icmp samesign ult i32 %storemerge41, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %.preheader20
  %61 = shl nuw nsw i32 %storemerge41, 6
  %62 = or disjoint i32 %61, %58
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %63
  store i32 1, ptr %64, align 4
  %65 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

66:                                               ; preds = %.preheader20
  %67 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

68:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %69

69:                                               ; preds = %79, %68
  %storemerge6 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %70 = icmp samesign ult i32 %storemerge6, 2
  br i1 %70, label %.preheader19.preheader, label %81

.preheader19.preheader:                           ; preds = %69
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader, %77
  %storemerge38 = phi i32 [ %78, %77 ], [ 0, %.preheader19.preheader ]
  %71 = icmp samesign ult i32 %storemerge38, 4
  br i1 %71, label %.preheader18.preheader, label %79

.preheader18.preheader:                           ; preds = %.preheader19
  %72 = shl nuw nsw i32 %storemerge38, 3
  %73 = or disjoint i32 %storemerge6, %72
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %74
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %76
  %storemerge39 = phi i1 [ false, %76 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %76, label %77

76:                                               ; preds = %.preheader18
  store i32 1, ptr %75, align 4
  br label %.preheader18, !llvm.loop !28

77:                                               ; preds = %.preheader18
  %78 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

79:                                               ; preds = %.preheader19
  %80 = add nuw nsw i32 %storemerge6, 1
  br label %69, !llvm.loop !30

81:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %82

82:                                               ; preds = %92, %81
  %storemerge7 = phi i32 [ 0, %81 ], [ %93, %92 ]
  %83 = icmp samesign ult i32 %storemerge7, 4
  br i1 %83, label %.preheader17.preheader, label %94

.preheader17.preheader:                           ; preds = %82
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader17.preheader, %.preheader17.loopexit
  %84 = phi i1 [ false, %.preheader17.loopexit ], [ true, %.preheader17.preheader ]
  br i1 %84, label %.preheader16.preheader, label %92

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %86
  %storemerge37 = phi i32 [ %91, %86 ], [ 0, %.preheader16.preheader ]
  %85 = icmp samesign ult i32 %storemerge37, 2
  br i1 %85, label %86, label %.preheader17.loopexit

86:                                               ; preds = %.preheader16
  %87 = shl nuw nsw i32 %storemerge37, 6
  %88 = or disjoint i32 %storemerge7, %87
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !32

92:                                               ; preds = %.preheader17
  %93 = add nuw nsw i32 %storemerge7, 1
  br label %82, !llvm.loop !33

94:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %95

.loopexit3:                                       ; preds = %.preheader15
  br label %95, !llvm.loop !34

95:                                               ; preds = %.loopexit3, %94
  %96 = phi i1 [ true, %94 ], [ false, %.loopexit3 ]
  br i1 %96, label %.preheader15.preheader, label %108

.preheader15.preheader:                           ; preds = %95
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader, %106
  %storemerge34 = phi i32 [ %107, %106 ], [ 0, %.preheader15.preheader ]
  %97 = icmp samesign ult i32 %storemerge34, 2
  br i1 %97, label %.preheader14.preheader, label %.loopexit3

.preheader14.preheader:                           ; preds = %.preheader15
  %98 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %100
  %storemerge35 = phi i32 [ %105, %100 ], [ 0, %.preheader14.preheader ]
  %99 = icmp samesign ult i32 %storemerge35, 4
  br i1 %99, label %100, label %106

100:                                              ; preds = %.preheader14
  %101 = shl nuw nsw i32 %storemerge35, 6
  %102 = or disjoint i32 %101, %98
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %103
  store i32 1, ptr %104, align 4
  %105 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

106:                                              ; preds = %.preheader14
  %107 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

108:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %109

109:                                              ; preds = %115, %108
  %storemerge9 = phi i32 [ 0, %108 ], [ %116, %115 ]
  %110 = icmp samesign ult i32 %storemerge9, 3
  br i1 %110, label %.preheader13.preheader, label %117

.preheader13.preheader:                           ; preds = %109
  %111 = zext nneg i32 %storemerge9 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %111
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13.loopexit
  %113 = phi i1 [ false, %.preheader13.loopexit ], [ true, %.preheader13.preheader ]
  br i1 %113, label %.preheader12.preheader, label %115

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %114
  %storemerge33 = phi i1 [ false, %114 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %114, label %.preheader13.loopexit

114:                                              ; preds = %.preheader12
  store i32 1, ptr %112, align 4
  br label %.preheader12, !llvm.loop !38

115:                                              ; preds = %.preheader13
  %116 = add nuw nsw i32 %storemerge9, 1
  br label %109, !llvm.loop !39

117:                                              ; preds = %109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %118

.loopexit2:                                       ; preds = %.preheader11
  br label %118, !llvm.loop !40

118:                                              ; preds = %.loopexit2, %117
  %119 = phi i1 [ true, %117 ], [ false, %.loopexit2 ]
  br i1 %119, label %.preheader11.preheader, label %127

.preheader11.preheader:                           ; preds = %118
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader, %125
  %storemerge30 = phi i32 [ %126, %125 ], [ 0, %.preheader11.preheader ]
  %120 = icmp samesign ult i32 %storemerge30, 3
  br i1 %120, label %.preheader10.preheader, label %.loopexit2

.preheader10.preheader:                           ; preds = %.preheader11
  %121 = shl nuw nsw i32 %storemerge30, 3
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %122
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %124
  %storemerge31 = phi i1 [ false, %124 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %124, label %125

124:                                              ; preds = %.preheader10
  store i32 1, ptr %123, align 4
  br label %.preheader10, !llvm.loop !41

125:                                              ; preds = %.preheader10
  %126 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

127:                                              ; preds = %118
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %128

.loopexit1:                                       ; preds = %.preheader9
  br label %128, !llvm.loop !43

128:                                              ; preds = %.loopexit1, %127
  %129 = phi i1 [ true, %127 ], [ false, %.loopexit1 ]
  br i1 %129, label %.preheader9.preheader, label %137

.preheader9.preheader:                            ; preds = %128
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

.preheader9:                                      ; preds = %.preheader9.preheader, %.preheader9.loopexit
  %130 = phi i1 [ false, %.preheader9.loopexit ], [ true, %.preheader9.preheader ]
  br i1 %130, label %.preheader8.preheader, label %.loopexit1

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %132
  %storemerge29 = phi i32 [ %136, %132 ], [ 0, %.preheader8.preheader ]
  %131 = icmp samesign ult i32 %storemerge29, 3
  br i1 %131, label %132, label %.preheader9.loopexit

132:                                              ; preds = %.preheader8
  %133 = shl nuw nsw i32 %storemerge29, 6
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %134
  store i32 1, ptr %135, align 4
  %136 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

137:                                              ; preds = %128
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %138

138:                                              ; preds = %148, %137
  %storemerge12 = phi i32 [ 0, %137 ], [ %149, %148 ]
  %139 = icmp samesign ult i32 %storemerge12, 2
  br i1 %139, label %.preheader7.preheader, label %150

.preheader7.preheader:                            ; preds = %138
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %146
  %storemerge26 = phi i32 [ %147, %146 ], [ 0, %.preheader7.preheader ]
  %140 = icmp samesign ult i32 %storemerge26, 2
  br i1 %140, label %.preheader6.preheader, label %148

.preheader6.preheader:                            ; preds = %.preheader7
  %141 = shl nuw nsw i32 %storemerge26, 3
  %142 = or disjoint i32 %storemerge12, %141
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %143
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %145
  %storemerge27 = phi i1 [ false, %145 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %145, label %146

145:                                              ; preds = %.preheader6
  store i32 1, ptr %144, align 4
  br label %.preheader6, !llvm.loop !46

146:                                              ; preds = %.preheader6
  %147 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

148:                                              ; preds = %.preheader7
  %149 = add nuw nsw i32 %storemerge12, 1
  br label %138, !llvm.loop !48

150:                                              ; preds = %138
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %151

151:                                              ; preds = %161, %150
  %storemerge13 = phi i32 [ 0, %150 ], [ %162, %161 ]
  %152 = icmp samesign ult i32 %storemerge13, 2
  br i1 %152, label %.preheader5.preheader, label %163

.preheader5.preheader:                            ; preds = %151
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5.loopexit
  %153 = phi i1 [ false, %.preheader5.loopexit ], [ true, %.preheader5.preheader ]
  br i1 %153, label %.preheader4.preheader, label %161

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %155
  %storemerge25 = phi i32 [ %160, %155 ], [ 0, %.preheader4.preheader ]
  %154 = icmp samesign ult i32 %storemerge25, 2
  br i1 %154, label %155, label %.preheader5.loopexit

155:                                              ; preds = %.preheader4
  %156 = shl nuw nsw i32 %storemerge25, 6
  %157 = or disjoint i32 %storemerge13, %156
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %158
  store i32 1, ptr %159, align 4
  %160 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

161:                                              ; preds = %.preheader5
  %162 = add nuw nsw i32 %storemerge13, 1
  br label %151, !llvm.loop !51

163:                                              ; preds = %151
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %164

.loopexit:                                        ; preds = %.preheader3
  br label %164, !llvm.loop !52

164:                                              ; preds = %.loopexit, %163
  %165 = phi i1 [ true, %163 ], [ false, %.loopexit ]
  br i1 %165, label %.preheader3.preheader, label %177

.preheader3.preheader:                            ; preds = %164
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %175
  %storemerge22 = phi i32 [ %176, %175 ], [ 0, %.preheader3.preheader ]
  %166 = icmp samesign ult i32 %storemerge22, 2
  br i1 %166, label %.preheader2.preheader, label %.loopexit

.preheader2.preheader:                            ; preds = %.preheader3
  %167 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %169
  %storemerge23 = phi i32 [ %174, %169 ], [ 0, %.preheader2.preheader ]
  %168 = icmp samesign ult i32 %storemerge23, 2
  br i1 %168, label %169, label %175

169:                                              ; preds = %.preheader2
  %170 = shl nuw nsw i32 %storemerge23, 6
  %171 = or disjoint i32 %170, %167
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %172
  store i32 1, ptr %173, align 4
  %174 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

175:                                              ; preds = %.preheader2
  %176 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

177:                                              ; preds = %164
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %178

178:                                              ; preds = %190, %177
  %storemerge15 = phi i32 [ 0, %177 ], [ %191, %190 ]
  %179 = icmp samesign ult i32 %storemerge15, 2
  br i1 %179, label %.preheader1.preheader, label %192

.preheader1.preheader:                            ; preds = %178
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %188
  %storemerge20 = phi i32 [ %189, %188 ], [ 0, %.preheader1.preheader ]
  %180 = icmp samesign ult i32 %storemerge20, 2
  br i1 %180, label %.preheader.preheader, label %190

.preheader.preheader:                             ; preds = %.preheader1
  %181 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op5 = or disjoint i32 %181, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %183
  %storemerge21 = phi i32 [ %187, %183 ], [ 0, %.preheader.preheader ]
  %182 = icmp samesign ult i32 %storemerge21, 2
  br i1 %182, label %183, label %188

183:                                              ; preds = %.preheader
  %184 = shl nuw nsw i32 %storemerge21, 6
  %.reass6 = or disjoint i32 %184, %invariant.op5
  %185 = zext nneg i32 %.reass6 to i64
  %186 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %185
  store i32 1, ptr %186, align 4
  %187 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

188:                                              ; preds = %.preheader
  %189 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

190:                                              ; preds = %.preheader1
  %191 = add nuw nsw i32 %storemerge15, 1
  br label %178, !llvm.loop !57

192:                                              ; preds = %178
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %193 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %193, 0
  br i1 %.not, label %196, label %194

194:                                              ; preds = %192
  %195 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %195, ptr @n, align 4
  br label %197

196:                                              ; preds = %192
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %197

197:                                              ; preds = %196, %194
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
