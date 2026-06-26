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

.preheader31:                                     ; preds = %18, %.preheader31.preheader
  %storemerge1 = phi i32 [ %19, %18 ], [ 1, %.preheader31.preheader ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %16, %.preheader30.preheader
  %storemerge47 = phi i32 [ %17, %16 ], [ 1, %.preheader30.preheader ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %18

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = shl nuw nsw i32 %storemerge47, 3
  %invariant.op = or disjoint i32 %9, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %11, %.preheader29.preheader
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

.preheader28:                                     ; preds = %28, %.preheader28.preheader
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.preheader28.preheader ]
  %20 = icmp samesign ult i32 %storemerge2, 13
  br i1 %20, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %21 = zext nneg i32 %storemerge2 to i64
  %22 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %21
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %24, %.preheader27.preheader
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

.preheader26:                                     ; preds = %39, %.preheader26.preheader
  %storemerge3 = phi i32 [ %40, %39 ], [ 0, %.preheader26.preheader ]
  %30 = icmp samesign ult i32 %storemerge3, 4
  br i1 %30, label %.preheader25.preheader, label %41

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %37, %.preheader25.preheader
  %storemerge44 = phi i32 [ %38, %37 ], [ 0, %.preheader25.preheader ]
  %31 = icmp samesign ult i32 %storemerge44, 2
  br i1 %31, label %.preheader24.preheader, label %39

.preheader24.preheader:                           ; preds = %.preheader25
  %32 = shl nuw nsw i32 %storemerge44, 3
  %33 = or disjoint i32 %storemerge3, %32
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %34
  br label %.preheader24

.preheader24:                                     ; preds = %36, %.preheader24.preheader
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

42:                                               ; preds = %53, %41
  %storemerge4 = phi i32 [ 0, %41 ], [ %54, %53 ]
  %43 = icmp samesign ult i32 %storemerge4, 2
  br i1 %43, label %.preheader23.preheader, label %55

.preheader23.preheader:                           ; preds = %42
  br label %.preheader23

.preheader23:                                     ; preds = %52, %.preheader23.preheader
  %44 = phi i1 [ false, %52 ], [ true, %.preheader23.preheader ]
  br i1 %44, label %.preheader22.preheader, label %53

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %46, %.preheader22.preheader
  %storemerge43 = phi i32 [ %51, %46 ], [ 0, %.preheader22.preheader ]
  %45 = icmp samesign ult i32 %storemerge43, 4
  br i1 %45, label %46, label %52

46:                                               ; preds = %.preheader22
  %47 = shl nuw nsw i32 %storemerge43, 6
  %48 = or disjoint i32 %storemerge4, %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !22

52:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

53:                                               ; preds = %.preheader23
  %54 = add nuw nsw i32 %storemerge4, 1
  br label %42, !llvm.loop !24

55:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = phi i1 [ true, %55 ], [ false, %69 ]
  br i1 %57, label %.preheader21.preheader, label %70

.preheader21.preheader:                           ; preds = %56
  br label %.preheader21

.preheader21:                                     ; preds = %67, %.preheader21.preheader
  %storemerge40 = phi i32 [ %68, %67 ], [ 0, %.preheader21.preheader ]
  %58 = icmp samesign ult i32 %storemerge40, 4
  br i1 %58, label %.preheader20.preheader, label %69

.preheader20.preheader:                           ; preds = %.preheader21
  %59 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %61, %.preheader20.preheader
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
  br label %.preheader20, !llvm.loop !25

67:                                               ; preds = %.preheader20
  %68 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !26

69:                                               ; preds = %.preheader21
  br label %56, !llvm.loop !27

70:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %71

71:                                               ; preds = %81, %70
  %storemerge6 = phi i32 [ 0, %70 ], [ %82, %81 ]
  %72 = icmp samesign ult i32 %storemerge6, 2
  br i1 %72, label %.preheader19.preheader, label %83

.preheader19.preheader:                           ; preds = %71
  br label %.preheader19

.preheader19:                                     ; preds = %79, %.preheader19.preheader
  %storemerge38 = phi i32 [ %80, %79 ], [ 0, %.preheader19.preheader ]
  %73 = icmp samesign ult i32 %storemerge38, 4
  br i1 %73, label %.preheader18.preheader, label %81

.preheader18.preheader:                           ; preds = %.preheader19
  %74 = shl nuw nsw i32 %storemerge38, 3
  %75 = or disjoint i32 %storemerge6, %74
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %76
  br label %.preheader18

.preheader18:                                     ; preds = %78, %.preheader18.preheader
  %storemerge39 = phi i1 [ false, %78 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %78, label %79

78:                                               ; preds = %.preheader18
  store i32 1, ptr %77, align 4
  br label %.preheader18, !llvm.loop !28

79:                                               ; preds = %.preheader18
  %80 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

81:                                               ; preds = %.preheader19
  %82 = add nuw nsw i32 %storemerge6, 1
  br label %71, !llvm.loop !30

83:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %84

84:                                               ; preds = %95, %83
  %storemerge7 = phi i32 [ 0, %83 ], [ %96, %95 ]
  %85 = icmp samesign ult i32 %storemerge7, 4
  br i1 %85, label %.preheader17.preheader, label %97

.preheader17.preheader:                           ; preds = %84
  br label %.preheader17

.preheader17:                                     ; preds = %94, %.preheader17.preheader
  %86 = phi i1 [ false, %94 ], [ true, %.preheader17.preheader ]
  br i1 %86, label %.preheader16.preheader, label %95

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %88, %.preheader16.preheader
  %storemerge37 = phi i32 [ %93, %88 ], [ 0, %.preheader16.preheader ]
  %87 = icmp samesign ult i32 %storemerge37, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %.preheader16
  %89 = shl nuw nsw i32 %storemerge37, 6
  %90 = or disjoint i32 %storemerge7, %89
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %91
  store i32 1, ptr %92, align 4
  %93 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !31

94:                                               ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

95:                                               ; preds = %.preheader17
  %96 = add nuw nsw i32 %storemerge7, 1
  br label %84, !llvm.loop !33

97:                                               ; preds = %84
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %98

98:                                               ; preds = %111, %97
  %99 = phi i1 [ true, %97 ], [ false, %111 ]
  br i1 %99, label %.preheader15.preheader, label %112

.preheader15.preheader:                           ; preds = %98
  br label %.preheader15

.preheader15:                                     ; preds = %109, %.preheader15.preheader
  %storemerge34 = phi i32 [ %110, %109 ], [ 0, %.preheader15.preheader ]
  %100 = icmp samesign ult i32 %storemerge34, 2
  br i1 %100, label %.preheader14.preheader, label %111

.preheader14.preheader:                           ; preds = %.preheader15
  %101 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %103, %.preheader14.preheader
  %storemerge35 = phi i32 [ %108, %103 ], [ 0, %.preheader14.preheader ]
  %102 = icmp samesign ult i32 %storemerge35, 4
  br i1 %102, label %103, label %109

103:                                              ; preds = %.preheader14
  %104 = shl nuw nsw i32 %storemerge35, 6
  %105 = or disjoint i32 %104, %101
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %106
  store i32 1, ptr %107, align 4
  %108 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !34

109:                                              ; preds = %.preheader14
  %110 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !35

111:                                              ; preds = %.preheader15
  br label %98, !llvm.loop !36

112:                                              ; preds = %98
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %113

113:                                              ; preds = %120, %112
  %storemerge9 = phi i32 [ 0, %112 ], [ %121, %120 ]
  %114 = icmp samesign ult i32 %storemerge9, 3
  br i1 %114, label %.preheader13.preheader, label %122

.preheader13.preheader:                           ; preds = %113
  %115 = zext nneg i32 %storemerge9 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %115
  br label %.preheader13

.preheader13:                                     ; preds = %119, %.preheader13.preheader
  %117 = phi i1 [ false, %119 ], [ true, %.preheader13.preheader ]
  br i1 %117, label %.preheader12.preheader, label %120

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %118, %.preheader12.preheader
  %storemerge33 = phi i1 [ false, %118 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %118, label %119

118:                                              ; preds = %.preheader12
  store i32 1, ptr %116, align 4
  br label %.preheader12, !llvm.loop !37

119:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

120:                                              ; preds = %.preheader13
  %121 = add nuw nsw i32 %storemerge9, 1
  br label %113, !llvm.loop !39

122:                                              ; preds = %113
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %123

123:                                              ; preds = %132, %122
  %124 = phi i1 [ true, %122 ], [ false, %132 ]
  br i1 %124, label %.preheader11.preheader, label %133

.preheader11.preheader:                           ; preds = %123
  br label %.preheader11

.preheader11:                                     ; preds = %130, %.preheader11.preheader
  %storemerge30 = phi i32 [ %131, %130 ], [ 0, %.preheader11.preheader ]
  %125 = icmp samesign ult i32 %storemerge30, 3
  br i1 %125, label %.preheader10.preheader, label %132

.preheader10.preheader:                           ; preds = %.preheader11
  %126 = shl nuw nsw i32 %storemerge30, 3
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %127
  br label %.preheader10

.preheader10:                                     ; preds = %129, %.preheader10.preheader
  %storemerge31 = phi i1 [ false, %129 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %129, label %130

129:                                              ; preds = %.preheader10
  store i32 1, ptr %128, align 4
  br label %.preheader10, !llvm.loop !40

130:                                              ; preds = %.preheader10
  %131 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !41

132:                                              ; preds = %.preheader11
  br label %123, !llvm.loop !42

133:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %134

134:                                              ; preds = %144, %133
  %135 = phi i1 [ true, %133 ], [ false, %144 ]
  br i1 %135, label %.preheader9.preheader, label %145

.preheader9.preheader:                            ; preds = %134
  br label %.preheader9

.preheader9:                                      ; preds = %143, %.preheader9.preheader
  %136 = phi i1 [ false, %143 ], [ true, %.preheader9.preheader ]
  br i1 %136, label %.preheader8.preheader, label %144

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %138, %.preheader8.preheader
  %storemerge29 = phi i32 [ %142, %138 ], [ 0, %.preheader8.preheader ]
  %137 = icmp samesign ult i32 %storemerge29, 3
  br i1 %137, label %138, label %143

138:                                              ; preds = %.preheader8
  %139 = shl nuw nsw i32 %storemerge29, 6
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !43

143:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

144:                                              ; preds = %.preheader9
  br label %134, !llvm.loop !45

145:                                              ; preds = %134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %146

146:                                              ; preds = %156, %145
  %storemerge12 = phi i32 [ 0, %145 ], [ %157, %156 ]
  %147 = icmp samesign ult i32 %storemerge12, 2
  br i1 %147, label %.preheader7.preheader, label %158

.preheader7.preheader:                            ; preds = %146
  br label %.preheader7

.preheader7:                                      ; preds = %154, %.preheader7.preheader
  %storemerge26 = phi i32 [ %155, %154 ], [ 0, %.preheader7.preheader ]
  %148 = icmp samesign ult i32 %storemerge26, 2
  br i1 %148, label %.preheader6.preheader, label %156

.preheader6.preheader:                            ; preds = %.preheader7
  %149 = shl nuw nsw i32 %storemerge26, 3
  %150 = or disjoint i32 %storemerge12, %149
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %151
  br label %.preheader6

.preheader6:                                      ; preds = %153, %.preheader6.preheader
  %storemerge27 = phi i1 [ false, %153 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %153, label %154

153:                                              ; preds = %.preheader6
  store i32 1, ptr %152, align 4
  br label %.preheader6, !llvm.loop !46

154:                                              ; preds = %.preheader6
  %155 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

156:                                              ; preds = %.preheader7
  %157 = add nuw nsw i32 %storemerge12, 1
  br label %146, !llvm.loop !48

158:                                              ; preds = %146
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %159

159:                                              ; preds = %170, %158
  %storemerge13 = phi i32 [ 0, %158 ], [ %171, %170 ]
  %160 = icmp samesign ult i32 %storemerge13, 2
  br i1 %160, label %.preheader5.preheader, label %172

.preheader5.preheader:                            ; preds = %159
  br label %.preheader5

.preheader5:                                      ; preds = %169, %.preheader5.preheader
  %161 = phi i1 [ false, %169 ], [ true, %.preheader5.preheader ]
  br i1 %161, label %.preheader4.preheader, label %170

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %163, %.preheader4.preheader
  %storemerge25 = phi i32 [ %168, %163 ], [ 0, %.preheader4.preheader ]
  %162 = icmp samesign ult i32 %storemerge25, 2
  br i1 %162, label %163, label %169

163:                                              ; preds = %.preheader4
  %164 = shl nuw nsw i32 %storemerge25, 6
  %165 = or disjoint i32 %storemerge13, %164
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %166
  store i32 1, ptr %167, align 4
  %168 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !49

169:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

170:                                              ; preds = %.preheader5
  %171 = add nuw nsw i32 %storemerge13, 1
  br label %159, !llvm.loop !51

172:                                              ; preds = %159
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %173

173:                                              ; preds = %186, %172
  %174 = phi i1 [ true, %172 ], [ false, %186 ]
  br i1 %174, label %.preheader3.preheader, label %187

.preheader3.preheader:                            ; preds = %173
  br label %.preheader3

.preheader3:                                      ; preds = %184, %.preheader3.preheader
  %storemerge22 = phi i32 [ %185, %184 ], [ 0, %.preheader3.preheader ]
  %175 = icmp samesign ult i32 %storemerge22, 2
  br i1 %175, label %.preheader2.preheader, label %186

.preheader2.preheader:                            ; preds = %.preheader3
  %176 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %178, %.preheader2.preheader
  %storemerge23 = phi i32 [ %183, %178 ], [ 0, %.preheader2.preheader ]
  %177 = icmp samesign ult i32 %storemerge23, 2
  br i1 %177, label %178, label %184

178:                                              ; preds = %.preheader2
  %179 = shl nuw nsw i32 %storemerge23, 6
  %180 = or disjoint i32 %179, %176
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !52

184:                                              ; preds = %.preheader2
  %185 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !53

186:                                              ; preds = %.preheader3
  br label %173, !llvm.loop !54

187:                                              ; preds = %173
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %188

188:                                              ; preds = %200, %187
  %storemerge15 = phi i32 [ 0, %187 ], [ %201, %200 ]
  %189 = icmp samesign ult i32 %storemerge15, 2
  br i1 %189, label %.preheader1.preheader, label %202

.preheader1.preheader:                            ; preds = %188
  br label %.preheader1

.preheader1:                                      ; preds = %198, %.preheader1.preheader
  %storemerge20 = phi i32 [ %199, %198 ], [ 0, %.preheader1.preheader ]
  %190 = icmp samesign ult i32 %storemerge20, 2
  br i1 %190, label %.preheader.preheader, label %200

.preheader.preheader:                             ; preds = %.preheader1
  %191 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op1 = or disjoint i32 %191, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %193, %.preheader.preheader
  %storemerge21 = phi i32 [ %197, %193 ], [ 0, %.preheader.preheader ]
  %192 = icmp samesign ult i32 %storemerge21, 2
  br i1 %192, label %193, label %198

193:                                              ; preds = %.preheader
  %194 = shl nuw nsw i32 %storemerge21, 6
  %.reass2 = or disjoint i32 %194, %invariant.op1
  %195 = zext nneg i32 %.reass2 to i64
  %196 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %195
  store i32 1, ptr %196, align 4
  %197 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

198:                                              ; preds = %.preheader
  %199 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

200:                                              ; preds = %.preheader1
  %201 = add nuw nsw i32 %storemerge15, 1
  br label %188, !llvm.loop !57

202:                                              ; preds = %188
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %203 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %203, 0
  br i1 %.not, label %206, label %204

204:                                              ; preds = %202
  %205 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %205, ptr @n, align 4
  br label %207

206:                                              ; preds = %202
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %207

207:                                              ; preds = %206, %204
  %208 = load i32, ptr @n, align 4
  %209 = call i32 @Trial(i32 noundef %208)
  %.not16 = icmp eq i32 %209, 0
  br i1 %.not16, label %210, label %211

210:                                              ; preds = %207
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %214

211:                                              ; preds = %207
  %212 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %212, 2005
  br i1 %.not18, label %214, label %213

213:                                              ; preds = %211
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %214

214:                                              ; preds = %213, %211, %210
  %215 = load i32, ptr @n, align 4
  %216 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %215) #4
  %217 = load i32, ptr @kount, align 4
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %217) #4
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
