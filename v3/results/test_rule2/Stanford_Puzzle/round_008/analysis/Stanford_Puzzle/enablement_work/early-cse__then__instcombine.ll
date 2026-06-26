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
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %12, %3
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
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
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nuw nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
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

.preheader31:                                     ; preds = %20, %.preheader31.preheader
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %.preheader31.preheader ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %18, %.preheader30.preheader
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader30.preheader ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %20

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %10, %.preheader29.preheader
  %storemerge48 = phi i32 [ %17, %10 ], [ 1, %.preheader29.preheader ]
  %9 = icmp samesign ult i32 %storemerge48, 6
  br i1 %9, label %10, label %18

10:                                               ; preds = %.preheader29
  %11 = shl nuw nsw i32 %storemerge48, 6
  %12 = shl nuw nsw i32 %storemerge47, 3
  %13 = or disjoint i32 %11, %12
  %14 = or disjoint i32 %storemerge1, %13
  %15 = zext nneg i32 %14 to i64
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
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader28.preheader ]
  %22 = icmp samesign ult i32 %storemerge2, 13
  br i1 %22, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %24, %.preheader27.preheader
  %storemerge46 = phi i32 [ %29, %24 ], [ 0, %.preheader27.preheader ]
  %23 = icmp samesign ult i32 %storemerge46, 512
  br i1 %23, label %24, label %30

24:                                               ; preds = %.preheader27
  %25 = zext nneg i32 %storemerge2 to i64
  %26 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %25
  %27 = zext nneg i32 %storemerge46 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

30:                                               ; preds = %.preheader27
  %31 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %41, %.preheader26.preheader
  %storemerge3 = phi i32 [ %42, %41 ], [ 0, %.preheader26.preheader ]
  %32 = icmp samesign ult i32 %storemerge3, 4
  br i1 %32, label %.preheader25.preheader, label %43

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %39, %.preheader25.preheader
  %storemerge44 = phi i32 [ %40, %39 ], [ 0, %.preheader25.preheader ]
  %33 = icmp samesign ult i32 %storemerge44, 2
  br i1 %33, label %.preheader24.preheader, label %41

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %34, %.preheader24.preheader
  %storemerge45 = phi i1 [ false, %34 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %34, label %39

34:                                               ; preds = %.preheader24
  %35 = shl nuw nsw i32 %storemerge44, 3
  %36 = or disjoint i32 %storemerge3, %35
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %37
  store i32 1, ptr %38, align 4
  br label %.preheader24, !llvm.loop !19

39:                                               ; preds = %.preheader24
  %40 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

41:                                               ; preds = %.preheader25
  %42 = add nuw nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

43:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %44

44:                                               ; preds = %55, %43
  %storemerge4 = phi i32 [ 0, %43 ], [ %56, %55 ]
  %45 = icmp samesign ult i32 %storemerge4, 2
  br i1 %45, label %.preheader23.preheader, label %57

.preheader23.preheader:                           ; preds = %44
  br label %.preheader23

.preheader23:                                     ; preds = %54, %.preheader23.preheader
  %46 = phi i1 [ false, %54 ], [ true, %.preheader23.preheader ]
  br i1 %46, label %.preheader22.preheader, label %55

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %48, %.preheader22.preheader
  %storemerge43 = phi i32 [ %53, %48 ], [ 0, %.preheader22.preheader ]
  %47 = icmp samesign ult i32 %storemerge43, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %.preheader22
  %49 = shl nuw nsw i32 %storemerge43, 6
  %50 = or disjoint i32 %storemerge4, %49
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %51
  store i32 1, ptr %52, align 4
  %53 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

54:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

55:                                               ; preds = %.preheader23
  %56 = add nuw nsw i32 %storemerge4, 1
  br label %44, !llvm.loop !24

57:                                               ; preds = %44
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = phi i1 [ true, %57 ], [ false, %71 ]
  br i1 %59, label %.preheader21.preheader, label %72

.preheader21.preheader:                           ; preds = %58
  br label %.preheader21

.preheader21:                                     ; preds = %69, %.preheader21.preheader
  %storemerge40 = phi i32 [ %70, %69 ], [ 0, %.preheader21.preheader ]
  %60 = icmp samesign ult i32 %storemerge40, 4
  br i1 %60, label %.preheader20.preheader, label %71

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %62, %.preheader20.preheader
  %storemerge41 = phi i32 [ %68, %62 ], [ 0, %.preheader20.preheader ]
  %61 = icmp samesign ult i32 %storemerge41, 2
  br i1 %61, label %62, label %69

62:                                               ; preds = %.preheader20
  %63 = shl nuw nsw i32 %storemerge41, 6
  %64 = shl nuw nsw i32 %storemerge40, 3
  %65 = or disjoint i32 %63, %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %66
  store i32 1, ptr %67, align 4
  %68 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !25

69:                                               ; preds = %.preheader20
  %70 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

71:                                               ; preds = %.preheader21
  br label %58, !llvm.loop !27

72:                                               ; preds = %58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %73

73:                                               ; preds = %83, %72
  %storemerge6 = phi i32 [ 0, %72 ], [ %84, %83 ]
  %74 = icmp samesign ult i32 %storemerge6, 2
  br i1 %74, label %.preheader19.preheader, label %85

.preheader19.preheader:                           ; preds = %73
  br label %.preheader19

.preheader19:                                     ; preds = %81, %.preheader19.preheader
  %storemerge38 = phi i32 [ %82, %81 ], [ 0, %.preheader19.preheader ]
  %75 = icmp samesign ult i32 %storemerge38, 4
  br i1 %75, label %.preheader18.preheader, label %83

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %76, %.preheader18.preheader
  %storemerge39 = phi i1 [ false, %76 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %76, label %81

76:                                               ; preds = %.preheader18
  %77 = shl nuw nsw i32 %storemerge38, 3
  %78 = or disjoint i32 %storemerge6, %77
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %79
  store i32 1, ptr %80, align 4
  br label %.preheader18, !llvm.loop !28

81:                                               ; preds = %.preheader18
  %82 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

83:                                               ; preds = %.preheader19
  %84 = add nuw nsw i32 %storemerge6, 1
  br label %73, !llvm.loop !30

85:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %86

86:                                               ; preds = %97, %85
  %storemerge7 = phi i32 [ 0, %85 ], [ %98, %97 ]
  %87 = icmp samesign ult i32 %storemerge7, 4
  br i1 %87, label %.preheader17.preheader, label %99

.preheader17.preheader:                           ; preds = %86
  br label %.preheader17

.preheader17:                                     ; preds = %96, %.preheader17.preheader
  %88 = phi i1 [ false, %96 ], [ true, %.preheader17.preheader ]
  br i1 %88, label %.preheader16.preheader, label %97

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %90, %.preheader16.preheader
  %storemerge37 = phi i32 [ %95, %90 ], [ 0, %.preheader16.preheader ]
  %89 = icmp samesign ult i32 %storemerge37, 2
  br i1 %89, label %90, label %96

90:                                               ; preds = %.preheader16
  %91 = shl nuw nsw i32 %storemerge37, 6
  %92 = or disjoint i32 %storemerge7, %91
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %93
  store i32 1, ptr %94, align 4
  %95 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

96:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

97:                                               ; preds = %.preheader17
  %98 = add nuw nsw i32 %storemerge7, 1
  br label %86, !llvm.loop !33

99:                                               ; preds = %86
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %100

100:                                              ; preds = %113, %99
  %101 = phi i1 [ true, %99 ], [ false, %113 ]
  br i1 %101, label %.preheader15.preheader, label %114

.preheader15.preheader:                           ; preds = %100
  br label %.preheader15

.preheader15:                                     ; preds = %111, %.preheader15.preheader
  %storemerge34 = phi i32 [ %112, %111 ], [ 0, %.preheader15.preheader ]
  %102 = icmp samesign ult i32 %storemerge34, 2
  br i1 %102, label %.preheader14.preheader, label %113

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %104, %.preheader14.preheader
  %storemerge35 = phi i32 [ %110, %104 ], [ 0, %.preheader14.preheader ]
  %103 = icmp samesign ult i32 %storemerge35, 4
  br i1 %103, label %104, label %111

104:                                              ; preds = %.preheader14
  %105 = shl nuw nsw i32 %storemerge35, 6
  %106 = shl nuw nsw i32 %storemerge34, 3
  %107 = or disjoint i32 %105, %106
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %108
  store i32 1, ptr %109, align 4
  %110 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

111:                                              ; preds = %.preheader14
  %112 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

113:                                              ; preds = %.preheader15
  br label %100, !llvm.loop !36

114:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %115

115:                                              ; preds = %122, %114
  %storemerge9 = phi i32 [ 0, %114 ], [ %123, %122 ]
  %116 = icmp samesign ult i32 %storemerge9, 3
  br i1 %116, label %.preheader13.preheader, label %124

.preheader13.preheader:                           ; preds = %115
  br label %.preheader13

.preheader13:                                     ; preds = %121, %.preheader13.preheader
  %117 = phi i1 [ false, %121 ], [ true, %.preheader13.preheader ]
  br i1 %117, label %.preheader12.preheader, label %122

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %118, %.preheader12.preheader
  %storemerge33 = phi i1 [ false, %118 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %118, label %121

118:                                              ; preds = %.preheader12
  %119 = zext nneg i32 %storemerge9 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %119
  store i32 1, ptr %120, align 4
  br label %.preheader12, !llvm.loop !37

121:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

122:                                              ; preds = %.preheader13
  %123 = add nuw nsw i32 %storemerge9, 1
  br label %115, !llvm.loop !39

124:                                              ; preds = %115
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %125

125:                                              ; preds = %134, %124
  %126 = phi i1 [ true, %124 ], [ false, %134 ]
  br i1 %126, label %.preheader11.preheader, label %135

.preheader11.preheader:                           ; preds = %125
  br label %.preheader11

.preheader11:                                     ; preds = %132, %.preheader11.preheader
  %storemerge30 = phi i32 [ %133, %132 ], [ 0, %.preheader11.preheader ]
  %127 = icmp samesign ult i32 %storemerge30, 3
  br i1 %127, label %.preheader10.preheader, label %134

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %128, %.preheader10.preheader
  %storemerge31 = phi i1 [ false, %128 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %128, label %132

128:                                              ; preds = %.preheader10
  %129 = shl nuw nsw i32 %storemerge30, 3
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %130
  store i32 1, ptr %131, align 4
  br label %.preheader10, !llvm.loop !40

132:                                              ; preds = %.preheader10
  %133 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

134:                                              ; preds = %.preheader11
  br label %125, !llvm.loop !42

135:                                              ; preds = %125
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %136

136:                                              ; preds = %146, %135
  %137 = phi i1 [ true, %135 ], [ false, %146 ]
  br i1 %137, label %.preheader9.preheader, label %147

.preheader9.preheader:                            ; preds = %136
  br label %.preheader9

.preheader9:                                      ; preds = %145, %.preheader9.preheader
  %138 = phi i1 [ false, %145 ], [ true, %.preheader9.preheader ]
  br i1 %138, label %.preheader8.preheader, label %146

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %140, %.preheader8.preheader
  %storemerge29 = phi i32 [ %144, %140 ], [ 0, %.preheader8.preheader ]
  %139 = icmp samesign ult i32 %storemerge29, 3
  br i1 %139, label %140, label %145

140:                                              ; preds = %.preheader8
  %141 = shl nuw nsw i32 %storemerge29, 6
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

145:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

146:                                              ; preds = %.preheader9
  br label %136, !llvm.loop !45

147:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %148

148:                                              ; preds = %158, %147
  %storemerge12 = phi i32 [ 0, %147 ], [ %159, %158 ]
  %149 = icmp samesign ult i32 %storemerge12, 2
  br i1 %149, label %.preheader7.preheader, label %160

.preheader7.preheader:                            ; preds = %148
  br label %.preheader7

.preheader7:                                      ; preds = %156, %.preheader7.preheader
  %storemerge26 = phi i32 [ %157, %156 ], [ 0, %.preheader7.preheader ]
  %150 = icmp samesign ult i32 %storemerge26, 2
  br i1 %150, label %.preheader6.preheader, label %158

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %151, %.preheader6.preheader
  %storemerge27 = phi i1 [ false, %151 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %151, label %156

151:                                              ; preds = %.preheader6
  %152 = shl nuw nsw i32 %storemerge26, 3
  %153 = or disjoint i32 %storemerge12, %152
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %154
  store i32 1, ptr %155, align 4
  br label %.preheader6, !llvm.loop !46

156:                                              ; preds = %.preheader6
  %157 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

158:                                              ; preds = %.preheader7
  %159 = add nuw nsw i32 %storemerge12, 1
  br label %148, !llvm.loop !48

160:                                              ; preds = %148
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %161

161:                                              ; preds = %172, %160
  %storemerge13 = phi i32 [ 0, %160 ], [ %173, %172 ]
  %162 = icmp samesign ult i32 %storemerge13, 2
  br i1 %162, label %.preheader5.preheader, label %174

.preheader5.preheader:                            ; preds = %161
  br label %.preheader5

.preheader5:                                      ; preds = %171, %.preheader5.preheader
  %163 = phi i1 [ false, %171 ], [ true, %.preheader5.preheader ]
  br i1 %163, label %.preheader4.preheader, label %172

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %165, %.preheader4.preheader
  %storemerge25 = phi i32 [ %170, %165 ], [ 0, %.preheader4.preheader ]
  %164 = icmp samesign ult i32 %storemerge25, 2
  br i1 %164, label %165, label %171

165:                                              ; preds = %.preheader4
  %166 = shl nuw nsw i32 %storemerge25, 6
  %167 = or disjoint i32 %storemerge13, %166
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %168
  store i32 1, ptr %169, align 4
  %170 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

171:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

172:                                              ; preds = %.preheader5
  %173 = add nuw nsw i32 %storemerge13, 1
  br label %161, !llvm.loop !51

174:                                              ; preds = %161
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %175

175:                                              ; preds = %188, %174
  %176 = phi i1 [ true, %174 ], [ false, %188 ]
  br i1 %176, label %.preheader3.preheader, label %189

.preheader3.preheader:                            ; preds = %175
  br label %.preheader3

.preheader3:                                      ; preds = %186, %.preheader3.preheader
  %storemerge22 = phi i32 [ %187, %186 ], [ 0, %.preheader3.preheader ]
  %177 = icmp samesign ult i32 %storemerge22, 2
  br i1 %177, label %.preheader2.preheader, label %188

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %179, %.preheader2.preheader
  %storemerge23 = phi i32 [ %185, %179 ], [ 0, %.preheader2.preheader ]
  %178 = icmp samesign ult i32 %storemerge23, 2
  br i1 %178, label %179, label %186

179:                                              ; preds = %.preheader2
  %180 = shl nuw nsw i32 %storemerge23, 6
  %181 = shl nuw nsw i32 %storemerge22, 3
  %182 = or disjoint i32 %180, %181
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %183
  store i32 1, ptr %184, align 4
  %185 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

186:                                              ; preds = %.preheader2
  %187 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

188:                                              ; preds = %.preheader3
  br label %175, !llvm.loop !54

189:                                              ; preds = %175
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %190

190:                                              ; preds = %204, %189
  %storemerge15 = phi i32 [ 0, %189 ], [ %205, %204 ]
  %191 = icmp samesign ult i32 %storemerge15, 2
  br i1 %191, label %.preheader1.preheader, label %206

.preheader1.preheader:                            ; preds = %190
  br label %.preheader1

.preheader1:                                      ; preds = %202, %.preheader1.preheader
  %storemerge20 = phi i32 [ %203, %202 ], [ 0, %.preheader1.preheader ]
  %192 = icmp samesign ult i32 %storemerge20, 2
  br i1 %192, label %.preheader.preheader, label %204

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %194, %.preheader.preheader
  %storemerge21 = phi i32 [ %201, %194 ], [ 0, %.preheader.preheader ]
  %193 = icmp samesign ult i32 %storemerge21, 2
  br i1 %193, label %194, label %202

194:                                              ; preds = %.preheader
  %195 = shl nuw nsw i32 %storemerge21, 6
  %196 = shl nuw nsw i32 %storemerge20, 3
  %197 = or disjoint i32 %195, %196
  %198 = or disjoint i32 %storemerge15, %197
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %199
  store i32 1, ptr %200, align 4
  %201 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

202:                                              ; preds = %.preheader
  %203 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

204:                                              ; preds = %.preheader1
  %205 = add nuw nsw i32 %storemerge15, 1
  br label %190, !llvm.loop !57

206:                                              ; preds = %190
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %207 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %207, 0
  br i1 %.not, label %210, label %208

208:                                              ; preds = %206
  %209 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %209, ptr @n, align 4
  br label %211

210:                                              ; preds = %206
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %211

211:                                              ; preds = %210, %208
  %212 = load i32, ptr @n, align 4
  %213 = call i32 @Trial(i32 noundef %212)
  %.not16 = icmp eq i32 %213, 0
  br i1 %.not16, label %214, label %215

214:                                              ; preds = %211
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %218

215:                                              ; preds = %211
  %216 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %216, 2005
  br i1 %.not18, label %218, label %217

217:                                              ; preds = %215
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %218

218:                                              ; preds = %217, %215, %214
  %219 = load i32, ptr @n, align 4
  %220 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %219) #4
  %221 = load i32, ptr @kount, align 4
  %222 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %221) #4
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
