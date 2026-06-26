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
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
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
  %31 = trunc nsw i64 %indvars.iv to i32
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

.preheader31:                                     ; preds = %19, %.preheader31.preheader
  %storemerge1 = phi i32 [ %20, %19 ], [ 1, %.preheader31.preheader ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %17, %.preheader30.preheader
  %storemerge47 = phi i32 [ %18, %17 ], [ 1, %.preheader30.preheader ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %19

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = shl nuw nsw i32 %storemerge47, 3
  br label %.preheader29

.preheader29:                                     ; preds = %11, %.preheader29.preheader
  %storemerge48 = phi i32 [ %16, %11 ], [ 1, %.preheader29.preheader ]
  %10 = icmp samesign ult i32 %storemerge48, 6
  br i1 %10, label %11, label %17

11:                                               ; preds = %.preheader29
  %12 = shl nuw nsw i32 %storemerge48, 6
  %13 = or disjoint i32 %9, %12
  %.reass = or disjoint i32 %13, %storemerge1
  %14 = zext nneg i32 %.reass to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

17:                                               ; preds = %.preheader29
  %18 = add nuw nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

19:                                               ; preds = %.preheader30
  %20 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %29, %.preheader28.preheader
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.preheader28.preheader ]
  %21 = icmp samesign ult i32 %storemerge2, 13
  br i1 %21, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %22 = zext nneg i32 %storemerge2 to i64
  %23 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %22
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %25, %.preheader27.preheader
  %storemerge46 = phi i32 [ %28, %25 ], [ 0, %.preheader27.preheader ]
  %24 = icmp samesign ult i32 %storemerge46, 512
  br i1 %24, label %25, label %29

25:                                               ; preds = %.preheader27
  %26 = zext nneg i32 %storemerge46 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %23, i64 %26
  store i32 0, ptr %27, align 4
  %28 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

29:                                               ; preds = %.preheader27
  %30 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %39, %.preheader26.preheader
  %storemerge3 = phi i32 [ %40, %39 ], [ 0, %.preheader26.preheader ]
  %31 = icmp samesign ult i32 %storemerge3, 4
  br i1 %31, label %.preheader25.preheader, label %41

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %37, %.preheader25.preheader
  %storemerge44 = phi i32 [ %38, %37 ], [ 0, %.preheader25.preheader ]
  %32 = icmp samesign ult i32 %storemerge44, 2
  br i1 %32, label %.preheader24.preheader, label %39

.preheader24.preheader:                           ; preds = %.preheader25
  %33 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op1 = or disjoint i32 %33, %storemerge3
  br label %.preheader24

.preheader24:                                     ; preds = %34, %.preheader24.preheader
  %storemerge45 = phi i1 [ false, %34 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %34, label %37

34:                                               ; preds = %.preheader24
  %35 = zext nneg i32 %invariant.op1 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %35
  store i32 1, ptr %36, align 4
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

42:                                               ; preds = %51, %41
  %storemerge4 = phi i32 [ 0, %41 ], [ %52, %51 ]
  %43 = icmp samesign ult i32 %storemerge4, 2
  br i1 %43, label %.preheader23.preheader, label %53

.preheader23.preheader:                           ; preds = %42
  br label %.preheader23

.preheader23:                                     ; preds = %50, %.preheader23.preheader
  %storemerge42 = phi i1 [ false, %50 ], [ true, %.preheader23.preheader ]
  br i1 %storemerge42, label %.preheader22.preheader, label %51

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %45, %.preheader22.preheader
  %storemerge43 = phi i32 [ %49, %45 ], [ 0, %.preheader22.preheader ]
  %44 = icmp samesign ult i32 %storemerge43, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %.preheader22
  %46 = shl nuw nsw i32 %storemerge43, 6
  %.reass4 = or disjoint i32 %46, %storemerge4
  %47 = zext nneg i32 %.reass4 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %47
  store i32 1, ptr %48, align 4
  %49 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

50:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

51:                                               ; preds = %.preheader23
  %52 = add nuw nsw i32 %storemerge4, 1
  br label %42, !llvm.loop !24

53:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = phi i1 [ true, %53 ], [ false, %66 ]
  br i1 %55, label %.preheader21.preheader, label %67

.preheader21.preheader:                           ; preds = %54
  br label %.preheader21

.preheader21:                                     ; preds = %64, %.preheader21.preheader
  %storemerge40 = phi i32 [ %65, %64 ], [ 0, %.preheader21.preheader ]
  %56 = icmp samesign ult i32 %storemerge40, 4
  br i1 %56, label %.preheader20.preheader, label %66

.preheader20.preheader:                           ; preds = %.preheader21
  %57 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %59, %.preheader20.preheader
  %storemerge41 = phi i32 [ %63, %59 ], [ 0, %.preheader20.preheader ]
  %58 = icmp samesign ult i32 %storemerge41, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %.preheader20
  %60 = shl nuw nsw i32 %storemerge41, 6
  %.reass6 = or disjoint i32 %60, %57
  %61 = zext nneg i32 %.reass6 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

64:                                               ; preds = %.preheader20
  %65 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

66:                                               ; preds = %.preheader21
  br label %54, !llvm.loop !27

67:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %68

68:                                               ; preds = %77, %67
  %storemerge6 = phi i32 [ 0, %67 ], [ %78, %77 ]
  %69 = icmp samesign ult i32 %storemerge6, 2
  br i1 %69, label %.preheader19.preheader, label %79

.preheader19.preheader:                           ; preds = %68
  br label %.preheader19

.preheader19:                                     ; preds = %75, %.preheader19.preheader
  %storemerge38 = phi i32 [ %76, %75 ], [ 0, %.preheader19.preheader ]
  %70 = icmp samesign ult i32 %storemerge38, 4
  br i1 %70, label %.preheader18.preheader, label %77

.preheader18.preheader:                           ; preds = %.preheader19
  %71 = shl nuw nsw i32 %storemerge38, 3
  %invariant.op7 = or disjoint i32 %71, %storemerge6
  br label %.preheader18

.preheader18:                                     ; preds = %72, %.preheader18.preheader
  %storemerge39 = phi i1 [ false, %72 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %72, label %75

72:                                               ; preds = %.preheader18
  %73 = zext nneg i32 %invariant.op7 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %73
  store i32 1, ptr %74, align 4
  br label %.preheader18, !llvm.loop !28

75:                                               ; preds = %.preheader18
  %76 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

77:                                               ; preds = %.preheader19
  %78 = add nuw nsw i32 %storemerge6, 1
  br label %68, !llvm.loop !30

79:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %80

80:                                               ; preds = %89, %79
  %storemerge7 = phi i32 [ 0, %79 ], [ %90, %89 ]
  %81 = icmp samesign ult i32 %storemerge7, 4
  br i1 %81, label %.preheader17.preheader, label %91

.preheader17.preheader:                           ; preds = %80
  br label %.preheader17

.preheader17:                                     ; preds = %88, %.preheader17.preheader
  %storemerge36 = phi i1 [ false, %88 ], [ true, %.preheader17.preheader ]
  br i1 %storemerge36, label %.preheader16.preheader, label %89

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %83, %.preheader16.preheader
  %storemerge37 = phi i32 [ %87, %83 ], [ 0, %.preheader16.preheader ]
  %82 = icmp samesign ult i32 %storemerge37, 2
  br i1 %82, label %83, label %88

83:                                               ; preds = %.preheader16
  %84 = shl nuw nsw i32 %storemerge37, 6
  %.reass10 = or disjoint i32 %84, %storemerge7
  %85 = zext nneg i32 %.reass10 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

88:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

89:                                               ; preds = %.preheader17
  %90 = add nuw nsw i32 %storemerge7, 1
  br label %80, !llvm.loop !33

91:                                               ; preds = %80
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %92

92:                                               ; preds = %104, %91
  %93 = phi i1 [ true, %91 ], [ false, %104 ]
  br i1 %93, label %.preheader15.preheader, label %105

.preheader15.preheader:                           ; preds = %92
  br label %.preheader15

.preheader15:                                     ; preds = %102, %.preheader15.preheader
  %storemerge34 = phi i32 [ %103, %102 ], [ 0, %.preheader15.preheader ]
  %94 = icmp samesign ult i32 %storemerge34, 2
  br i1 %94, label %.preheader14.preheader, label %104

.preheader14.preheader:                           ; preds = %.preheader15
  %95 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %97, %.preheader14.preheader
  %storemerge35 = phi i32 [ %101, %97 ], [ 0, %.preheader14.preheader ]
  %96 = icmp samesign ult i32 %storemerge35, 4
  br i1 %96, label %97, label %102

97:                                               ; preds = %.preheader14
  %98 = shl nuw nsw i32 %storemerge35, 6
  %.reass12 = or disjoint i32 %98, %95
  %99 = zext nneg i32 %.reass12 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %99
  store i32 1, ptr %100, align 4
  %101 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

102:                                              ; preds = %.preheader14
  %103 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

104:                                              ; preds = %.preheader15
  br label %92, !llvm.loop !36

105:                                              ; preds = %92
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %106

106:                                              ; preds = %112, %105
  %storemerge9 = phi i32 [ 0, %105 ], [ %113, %112 ]
  %107 = icmp samesign ult i32 %storemerge9, 3
  br i1 %107, label %.preheader13.preheader, label %114

.preheader13.preheader:                           ; preds = %106
  br label %.preheader13

.preheader13:                                     ; preds = %111, %.preheader13.preheader
  %storemerge32 = phi i1 [ false, %111 ], [ true, %.preheader13.preheader ]
  br i1 %storemerge32, label %.preheader12.preheader, label %112

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %108, %.preheader12.preheader
  %storemerge33 = phi i1 [ false, %108 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %108, label %111

108:                                              ; preds = %.preheader12
  %109 = zext nneg i32 %storemerge9 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %109
  store i32 1, ptr %110, align 4
  br label %.preheader12, !llvm.loop !37

111:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

112:                                              ; preds = %.preheader13
  %113 = add nuw nsw i32 %storemerge9, 1
  br label %106, !llvm.loop !39

114:                                              ; preds = %106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %115

115:                                              ; preds = %124, %114
  %116 = phi i1 [ true, %114 ], [ false, %124 ]
  br i1 %116, label %.preheader11.preheader, label %125

.preheader11.preheader:                           ; preds = %115
  br label %.preheader11

.preheader11:                                     ; preds = %122, %.preheader11.preheader
  %storemerge30 = phi i32 [ %123, %122 ], [ 0, %.preheader11.preheader ]
  %117 = icmp samesign ult i32 %storemerge30, 3
  br i1 %117, label %.preheader10.preheader, label %124

.preheader10.preheader:                           ; preds = %.preheader11
  %118 = shl nuw nsw i32 %storemerge30, 3
  br label %.preheader10

.preheader10:                                     ; preds = %119, %.preheader10.preheader
  %storemerge31 = phi i1 [ false, %119 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %119, label %122

119:                                              ; preds = %.preheader10
  %120 = zext nneg i32 %118 to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %120
  store i32 1, ptr %121, align 4
  br label %.preheader10, !llvm.loop !40

122:                                              ; preds = %.preheader10
  %123 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

124:                                              ; preds = %.preheader11
  br label %115, !llvm.loop !42

125:                                              ; preds = %115
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %126

126:                                              ; preds = %135, %125
  %127 = phi i1 [ true, %125 ], [ false, %135 ]
  br i1 %127, label %.preheader9.preheader, label %136

.preheader9.preheader:                            ; preds = %126
  br label %.preheader9

.preheader9:                                      ; preds = %134, %.preheader9.preheader
  %storemerge28 = phi i1 [ false, %134 ], [ true, %.preheader9.preheader ]
  br i1 %storemerge28, label %.preheader8.preheader, label %135

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %129, %.preheader8.preheader
  %storemerge29 = phi i32 [ %133, %129 ], [ 0, %.preheader8.preheader ]
  %128 = icmp samesign ult i32 %storemerge29, 3
  br i1 %128, label %129, label %134

129:                                              ; preds = %.preheader8
  %130 = shl nuw nsw i32 %storemerge29, 6
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

134:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

135:                                              ; preds = %.preheader9
  br label %126, !llvm.loop !45

136:                                              ; preds = %126
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %137

137:                                              ; preds = %146, %136
  %storemerge12 = phi i32 [ 0, %136 ], [ %147, %146 ]
  %138 = icmp samesign ult i32 %storemerge12, 2
  br i1 %138, label %.preheader7.preheader, label %148

.preheader7.preheader:                            ; preds = %137
  br label %.preheader7

.preheader7:                                      ; preds = %144, %.preheader7.preheader
  %storemerge26 = phi i32 [ %145, %144 ], [ 0, %.preheader7.preheader ]
  %139 = icmp samesign ult i32 %storemerge26, 2
  br i1 %139, label %.preheader6.preheader, label %146

.preheader6.preheader:                            ; preds = %.preheader7
  %140 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op19 = or disjoint i32 %140, %storemerge12
  br label %.preheader6

.preheader6:                                      ; preds = %141, %.preheader6.preheader
  %storemerge27 = phi i1 [ false, %141 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %141, label %144

141:                                              ; preds = %.preheader6
  %142 = zext nneg i32 %invariant.op19 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %142
  store i32 1, ptr %143, align 4
  br label %.preheader6, !llvm.loop !46

144:                                              ; preds = %.preheader6
  %145 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

146:                                              ; preds = %.preheader7
  %147 = add nuw nsw i32 %storemerge12, 1
  br label %137, !llvm.loop !48

148:                                              ; preds = %137
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %149

149:                                              ; preds = %158, %148
  %storemerge13 = phi i32 [ 0, %148 ], [ %159, %158 ]
  %150 = icmp samesign ult i32 %storemerge13, 2
  br i1 %150, label %.preheader5.preheader, label %160

.preheader5.preheader:                            ; preds = %149
  br label %.preheader5

.preheader5:                                      ; preds = %157, %.preheader5.preheader
  %storemerge24 = phi i1 [ false, %157 ], [ true, %.preheader5.preheader ]
  br i1 %storemerge24, label %.preheader4.preheader, label %158

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %152, %.preheader4.preheader
  %storemerge25 = phi i32 [ %156, %152 ], [ 0, %.preheader4.preheader ]
  %151 = icmp samesign ult i32 %storemerge25, 2
  br i1 %151, label %152, label %157

152:                                              ; preds = %.preheader4
  %153 = shl nuw nsw i32 %storemerge25, 6
  %.reass22 = or disjoint i32 %153, %storemerge13
  %154 = zext nneg i32 %.reass22 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %154
  store i32 1, ptr %155, align 4
  %156 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

157:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

158:                                              ; preds = %.preheader5
  %159 = add nuw nsw i32 %storemerge13, 1
  br label %149, !llvm.loop !51

160:                                              ; preds = %149
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %161

161:                                              ; preds = %173, %160
  %162 = phi i1 [ true, %160 ], [ false, %173 ]
  br i1 %162, label %.preheader3.preheader, label %174

.preheader3.preheader:                            ; preds = %161
  br label %.preheader3

.preheader3:                                      ; preds = %171, %.preheader3.preheader
  %storemerge22 = phi i32 [ %172, %171 ], [ 0, %.preheader3.preheader ]
  %163 = icmp samesign ult i32 %storemerge22, 2
  br i1 %163, label %.preheader2.preheader, label %173

.preheader2.preheader:                            ; preds = %.preheader3
  %164 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %166, %.preheader2.preheader
  %storemerge23 = phi i32 [ %170, %166 ], [ 0, %.preheader2.preheader ]
  %165 = icmp samesign ult i32 %storemerge23, 2
  br i1 %165, label %166, label %171

166:                                              ; preds = %.preheader2
  %167 = shl nuw nsw i32 %storemerge23, 6
  %.reass24 = or disjoint i32 %167, %164
  %168 = zext nneg i32 %.reass24 to i64
  %169 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %168
  store i32 1, ptr %169, align 4
  %170 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

171:                                              ; preds = %.preheader2
  %172 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

173:                                              ; preds = %.preheader3
  br label %161, !llvm.loop !54

174:                                              ; preds = %161
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %175

175:                                              ; preds = %188, %174
  %storemerge15 = phi i32 [ 0, %174 ], [ %189, %188 ]
  %176 = icmp samesign ult i32 %storemerge15, 2
  br i1 %176, label %.preheader1.preheader, label %190

.preheader1.preheader:                            ; preds = %175
  br label %.preheader1

.preheader1:                                      ; preds = %186, %.preheader1.preheader
  %storemerge20 = phi i32 [ %187, %186 ], [ 0, %.preheader1.preheader ]
  %177 = icmp samesign ult i32 %storemerge20, 2
  br i1 %177, label %.preheader.preheader, label %188

.preheader.preheader:                             ; preds = %.preheader1
  %178 = shl nuw nsw i32 %storemerge20, 3
  br label %.preheader

.preheader:                                       ; preds = %180, %.preheader.preheader
  %storemerge21 = phi i32 [ %185, %180 ], [ 0, %.preheader.preheader ]
  %179 = icmp samesign ult i32 %storemerge21, 2
  br i1 %179, label %180, label %186

180:                                              ; preds = %.preheader
  %181 = shl nuw nsw i32 %storemerge21, 6
  %182 = or disjoint i32 %178, %181
  %.reass26 = or disjoint i32 %182, %storemerge15
  %183 = zext nneg i32 %.reass26 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %183
  store i32 1, ptr %184, align 4
  %185 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

186:                                              ; preds = %.preheader
  %187 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

188:                                              ; preds = %.preheader1
  %189 = add nuw nsw i32 %storemerge15, 1
  br label %175, !llvm.loop !57

190:                                              ; preds = %175
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %191 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %191, 0
  br i1 %.not, label %194, label %192

192:                                              ; preds = %190
  %193 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %193, ptr @n, align 4
  br label %195

194:                                              ; preds = %190
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %195

195:                                              ; preds = %194, %192
  %196 = load i32, ptr @n, align 4
  %197 = call i32 @Trial(i32 noundef %196)
  %.not16 = icmp eq i32 %197, 0
  br i1 %.not16, label %198, label %199

198:                                              ; preds = %195
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %202

199:                                              ; preds = %195
  %200 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %200, 2005
  br i1 %.not18, label %202, label %201

201:                                              ; preds = %199
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %202

202:                                              ; preds = %201, %199, %198
  %203 = load i32, ptr @n, align 4
  %204 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %203) #4
  %205 = load i32, ptr @kount, align 4
  %206 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %205) #4
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
