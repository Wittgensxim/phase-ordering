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

.preheader31:                                     ; preds = %.preheader31.preheader, %19
  %storemerge1 = phi i32 [ %20, %19 ], [ 1, %.preheader31.preheader ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader, %17
  %storemerge47 = phi i32 [ %18, %17 ], [ 1, %.preheader30.preheader ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %19

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = shl nuw nsw i32 %storemerge47, 3
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %11
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

.preheader28:                                     ; preds = %.preheader28.preheader, %29
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.preheader28.preheader ]
  %21 = icmp samesign ult i32 %storemerge2, 13
  br i1 %21, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %22 = zext nneg i32 %storemerge2 to i64
  %23 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %22
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %.preheader27.preheader, %25
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

.preheader26:                                     ; preds = %.preheader26.preheader, %40
  %storemerge3 = phi i32 [ %41, %40 ], [ 0, %.preheader26.preheader ]
  %31 = icmp samesign ult i32 %storemerge3, 4
  br i1 %31, label %.preheader25.preheader, label %42

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader, %38
  %storemerge44 = phi i32 [ %39, %38 ], [ 0, %.preheader25.preheader ]
  %32 = icmp samesign ult i32 %storemerge44, 2
  br i1 %32, label %.preheader24.preheader, label %40

.preheader24.preheader:                           ; preds = %.preheader25
  %33 = shl nuw nsw i32 %storemerge44, 3
  %34 = or disjoint i32 %storemerge3, %33
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %35
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %37
  %storemerge45 = phi i1 [ false, %37 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %37, label %38

37:                                               ; preds = %.preheader24
  store i32 1, ptr %36, align 4
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

43:                                               ; preds = %53, %42
  %storemerge4 = phi i32 [ 0, %42 ], [ %54, %53 ]
  %44 = icmp samesign ult i32 %storemerge4, 2
  br i1 %44, label %.preheader23.preheader, label %55

.preheader23.preheader:                           ; preds = %43
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader23.preheader, %.preheader23.loopexit
  %45 = phi i1 [ false, %.preheader23.loopexit ], [ true, %.preheader23.preheader ]
  br i1 %45, label %.preheader22.preheader, label %53

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %47
  %storemerge43 = phi i32 [ %52, %47 ], [ 0, %.preheader22.preheader ]
  %46 = icmp samesign ult i32 %storemerge43, 4
  br i1 %46, label %47, label %.preheader23.loopexit

47:                                               ; preds = %.preheader22
  %48 = shl nuw nsw i32 %storemerge43, 6
  %49 = or disjoint i32 %storemerge4, %48
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %50
  store i32 1, ptr %51, align 4
  %52 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !23

53:                                               ; preds = %.preheader23
  %54 = add nuw nsw i32 %storemerge4, 1
  br label %43, !llvm.loop !24

55:                                               ; preds = %43
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %56

.loopexit4:                                       ; preds = %.preheader21
  br label %56, !llvm.loop !25

56:                                               ; preds = %.loopexit4, %55
  %57 = phi i1 [ true, %55 ], [ false, %.loopexit4 ]
  br i1 %57, label %.preheader21.preheader, label %69

.preheader21.preheader:                           ; preds = %56
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %67
  %storemerge40 = phi i32 [ %68, %67 ], [ 0, %.preheader21.preheader ]
  %58 = icmp samesign ult i32 %storemerge40, 4
  br i1 %58, label %.preheader20.preheader, label %.loopexit4

.preheader20.preheader:                           ; preds = %.preheader21
  %59 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %61
  %storemerge41 = phi i32 [ %66, %61 ], [ 0, %.preheader20.preheader ]
  %60 = icmp samesign ult i32 %storemerge41, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %.preheader20
  %62 = shl nuw nsw i32 %storemerge41, 6
  %63 = or disjoint i32 %62, %59
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %64
  store i32 1, ptr %65, align 4
  %66 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

67:                                               ; preds = %.preheader20
  %68 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

69:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %70

70:                                               ; preds = %80, %69
  %storemerge6 = phi i32 [ 0, %69 ], [ %81, %80 ]
  %71 = icmp samesign ult i32 %storemerge6, 2
  br i1 %71, label %.preheader19.preheader, label %82

.preheader19.preheader:                           ; preds = %70
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader, %78
  %storemerge38 = phi i32 [ %79, %78 ], [ 0, %.preheader19.preheader ]
  %72 = icmp samesign ult i32 %storemerge38, 4
  br i1 %72, label %.preheader18.preheader, label %80

.preheader18.preheader:                           ; preds = %.preheader19
  %73 = shl nuw nsw i32 %storemerge38, 3
  %74 = or disjoint i32 %storemerge6, %73
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %75
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %77
  %storemerge39 = phi i1 [ false, %77 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %77, label %78

77:                                               ; preds = %.preheader18
  store i32 1, ptr %76, align 4
  br label %.preheader18, !llvm.loop !28

78:                                               ; preds = %.preheader18
  %79 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

80:                                               ; preds = %.preheader19
  %81 = add nuw nsw i32 %storemerge6, 1
  br label %70, !llvm.loop !30

82:                                               ; preds = %70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %83

83:                                               ; preds = %93, %82
  %storemerge7 = phi i32 [ 0, %82 ], [ %94, %93 ]
  %84 = icmp samesign ult i32 %storemerge7, 4
  br i1 %84, label %.preheader17.preheader, label %95

.preheader17.preheader:                           ; preds = %83
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader17.preheader, %.preheader17.loopexit
  %85 = phi i1 [ false, %.preheader17.loopexit ], [ true, %.preheader17.preheader ]
  br i1 %85, label %.preheader16.preheader, label %93

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %87
  %storemerge37 = phi i32 [ %92, %87 ], [ 0, %.preheader16.preheader ]
  %86 = icmp samesign ult i32 %storemerge37, 2
  br i1 %86, label %87, label %.preheader17.loopexit

87:                                               ; preds = %.preheader16
  %88 = shl nuw nsw i32 %storemerge37, 6
  %89 = or disjoint i32 %storemerge7, %88
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %90
  store i32 1, ptr %91, align 4
  %92 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !32

93:                                               ; preds = %.preheader17
  %94 = add nuw nsw i32 %storemerge7, 1
  br label %83, !llvm.loop !33

95:                                               ; preds = %83
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %96

.loopexit3:                                       ; preds = %.preheader15
  br label %96, !llvm.loop !34

96:                                               ; preds = %.loopexit3, %95
  %97 = phi i1 [ true, %95 ], [ false, %.loopexit3 ]
  br i1 %97, label %.preheader15.preheader, label %109

.preheader15.preheader:                           ; preds = %96
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader, %107
  %storemerge34 = phi i32 [ %108, %107 ], [ 0, %.preheader15.preheader ]
  %98 = icmp samesign ult i32 %storemerge34, 2
  br i1 %98, label %.preheader14.preheader, label %.loopexit3

.preheader14.preheader:                           ; preds = %.preheader15
  %99 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %101
  %storemerge35 = phi i32 [ %106, %101 ], [ 0, %.preheader14.preheader ]
  %100 = icmp samesign ult i32 %storemerge35, 4
  br i1 %100, label %101, label %107

101:                                              ; preds = %.preheader14
  %102 = shl nuw nsw i32 %storemerge35, 6
  %103 = or disjoint i32 %102, %99
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %104
  store i32 1, ptr %105, align 4
  %106 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

107:                                              ; preds = %.preheader14
  %108 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

109:                                              ; preds = %96
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %110

110:                                              ; preds = %116, %109
  %storemerge9 = phi i32 [ 0, %109 ], [ %117, %116 ]
  %111 = icmp samesign ult i32 %storemerge9, 3
  br i1 %111, label %.preheader13.preheader, label %118

.preheader13.preheader:                           ; preds = %110
  %112 = zext nneg i32 %storemerge9 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %112
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13.loopexit
  %114 = phi i1 [ false, %.preheader13.loopexit ], [ true, %.preheader13.preheader ]
  br i1 %114, label %.preheader12.preheader, label %116

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %115
  %storemerge33 = phi i1 [ false, %115 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %115, label %.preheader13.loopexit

115:                                              ; preds = %.preheader12
  store i32 1, ptr %113, align 4
  br label %.preheader12, !llvm.loop !38

116:                                              ; preds = %.preheader13
  %117 = add nuw nsw i32 %storemerge9, 1
  br label %110, !llvm.loop !39

118:                                              ; preds = %110
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %119

.loopexit2:                                       ; preds = %.preheader11
  br label %119, !llvm.loop !40

119:                                              ; preds = %.loopexit2, %118
  %120 = phi i1 [ true, %118 ], [ false, %.loopexit2 ]
  br i1 %120, label %.preheader11.preheader, label %128

.preheader11.preheader:                           ; preds = %119
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader, %126
  %storemerge30 = phi i32 [ %127, %126 ], [ 0, %.preheader11.preheader ]
  %121 = icmp samesign ult i32 %storemerge30, 3
  br i1 %121, label %.preheader10.preheader, label %.loopexit2

.preheader10.preheader:                           ; preds = %.preheader11
  %122 = shl nuw nsw i32 %storemerge30, 3
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %123
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %125
  %storemerge31 = phi i1 [ false, %125 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %125, label %126

125:                                              ; preds = %.preheader10
  store i32 1, ptr %124, align 4
  br label %.preheader10, !llvm.loop !41

126:                                              ; preds = %.preheader10
  %127 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

128:                                              ; preds = %119
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %129

.loopexit1:                                       ; preds = %.preheader9
  br label %129, !llvm.loop !43

129:                                              ; preds = %.loopexit1, %128
  %130 = phi i1 [ true, %128 ], [ false, %.loopexit1 ]
  br i1 %130, label %.preheader9.preheader, label %138

.preheader9.preheader:                            ; preds = %129
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

.preheader9:                                      ; preds = %.preheader9.preheader, %.preheader9.loopexit
  %131 = phi i1 [ false, %.preheader9.loopexit ], [ true, %.preheader9.preheader ]
  br i1 %131, label %.preheader8.preheader, label %.loopexit1

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %133
  %storemerge29 = phi i32 [ %137, %133 ], [ 0, %.preheader8.preheader ]
  %132 = icmp samesign ult i32 %storemerge29, 3
  br i1 %132, label %133, label %.preheader9.loopexit

133:                                              ; preds = %.preheader8
  %134 = shl nuw nsw i32 %storemerge29, 6
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %135
  store i32 1, ptr %136, align 4
  %137 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

138:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %139

139:                                              ; preds = %149, %138
  %storemerge12 = phi i32 [ 0, %138 ], [ %150, %149 ]
  %140 = icmp samesign ult i32 %storemerge12, 2
  br i1 %140, label %.preheader7.preheader, label %151

.preheader7.preheader:                            ; preds = %139
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %147
  %storemerge26 = phi i32 [ %148, %147 ], [ 0, %.preheader7.preheader ]
  %141 = icmp samesign ult i32 %storemerge26, 2
  br i1 %141, label %.preheader6.preheader, label %149

.preheader6.preheader:                            ; preds = %.preheader7
  %142 = shl nuw nsw i32 %storemerge26, 3
  %143 = or disjoint i32 %storemerge12, %142
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %144
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %146
  %storemerge27 = phi i1 [ false, %146 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %146, label %147

146:                                              ; preds = %.preheader6
  store i32 1, ptr %145, align 4
  br label %.preheader6, !llvm.loop !46

147:                                              ; preds = %.preheader6
  %148 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

149:                                              ; preds = %.preheader7
  %150 = add nuw nsw i32 %storemerge12, 1
  br label %139, !llvm.loop !48

151:                                              ; preds = %139
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %152

152:                                              ; preds = %162, %151
  %storemerge13 = phi i32 [ 0, %151 ], [ %163, %162 ]
  %153 = icmp samesign ult i32 %storemerge13, 2
  br i1 %153, label %.preheader5.preheader, label %164

.preheader5.preheader:                            ; preds = %152
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5.loopexit
  %154 = phi i1 [ false, %.preheader5.loopexit ], [ true, %.preheader5.preheader ]
  br i1 %154, label %.preheader4.preheader, label %162

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %156
  %storemerge25 = phi i32 [ %161, %156 ], [ 0, %.preheader4.preheader ]
  %155 = icmp samesign ult i32 %storemerge25, 2
  br i1 %155, label %156, label %.preheader5.loopexit

156:                                              ; preds = %.preheader4
  %157 = shl nuw nsw i32 %storemerge25, 6
  %158 = or disjoint i32 %storemerge13, %157
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %159
  store i32 1, ptr %160, align 4
  %161 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

162:                                              ; preds = %.preheader5
  %163 = add nuw nsw i32 %storemerge13, 1
  br label %152, !llvm.loop !51

164:                                              ; preds = %152
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %165

.loopexit:                                        ; preds = %.preheader3
  br label %165, !llvm.loop !52

165:                                              ; preds = %.loopexit, %164
  %166 = phi i1 [ true, %164 ], [ false, %.loopexit ]
  br i1 %166, label %.preheader3.preheader, label %178

.preheader3.preheader:                            ; preds = %165
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %176
  %storemerge22 = phi i32 [ %177, %176 ], [ 0, %.preheader3.preheader ]
  %167 = icmp samesign ult i32 %storemerge22, 2
  br i1 %167, label %.preheader2.preheader, label %.loopexit

.preheader2.preheader:                            ; preds = %.preheader3
  %168 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %170
  %storemerge23 = phi i32 [ %175, %170 ], [ 0, %.preheader2.preheader ]
  %169 = icmp samesign ult i32 %storemerge23, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %.preheader2
  %171 = shl nuw nsw i32 %storemerge23, 6
  %172 = or disjoint i32 %171, %168
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

176:                                              ; preds = %.preheader2
  %177 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

178:                                              ; preds = %165
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %179

179:                                              ; preds = %192, %178
  %storemerge15 = phi i32 [ 0, %178 ], [ %193, %192 ]
  %180 = icmp samesign ult i32 %storemerge15, 2
  br i1 %180, label %.preheader1.preheader, label %194

.preheader1.preheader:                            ; preds = %179
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %190
  %storemerge20 = phi i32 [ %191, %190 ], [ 0, %.preheader1.preheader ]
  %181 = icmp samesign ult i32 %storemerge20, 2
  br i1 %181, label %.preheader.preheader, label %192

.preheader.preheader:                             ; preds = %.preheader1
  %182 = shl nuw nsw i32 %storemerge20, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %184
  %storemerge21 = phi i32 [ %189, %184 ], [ 0, %.preheader.preheader ]
  %183 = icmp samesign ult i32 %storemerge21, 2
  br i1 %183, label %184, label %190

184:                                              ; preds = %.preheader
  %185 = shl nuw nsw i32 %storemerge21, 6
  %186 = or disjoint i32 %182, %185
  %.reass6 = or disjoint i32 %186, %storemerge15
  %187 = zext nneg i32 %.reass6 to i64
  %188 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %187
  store i32 1, ptr %188, align 4
  %189 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

190:                                              ; preds = %.preheader
  %191 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

192:                                              ; preds = %.preheader1
  %193 = add nuw nsw i32 %storemerge15, 1
  br label %179, !llvm.loop !57

194:                                              ; preds = %179
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %195 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %195, 0
  br i1 %.not, label %198, label %196

196:                                              ; preds = %194
  %197 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %197, ptr @n, align 4
  br label %199

198:                                              ; preds = %194
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %199

199:                                              ; preds = %198, %196
  %200 = load i32, ptr @n, align 4
  %201 = call i32 @Trial(i32 noundef %200)
  %.not16 = icmp eq i32 %201, 0
  br i1 %.not16, label %202, label %203

202:                                              ; preds = %199
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %206

203:                                              ; preds = %199
  %204 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %204, 2005
  br i1 %.not18, label %206, label %205

205:                                              ; preds = %203
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %206

206:                                              ; preds = %205, %203, %202
  %207 = load i32, ptr @n, align 4
  %208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %207) #4
  %209 = load i32, ptr @kount, align 4
  %210 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %209) #4
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
