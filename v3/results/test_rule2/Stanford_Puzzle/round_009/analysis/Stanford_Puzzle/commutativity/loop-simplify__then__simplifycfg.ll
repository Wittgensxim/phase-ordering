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
  br i1 %exitcond.not, label %.loopexit, label %27

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

.loopexit:                                        ; preds = %26, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %26 ]
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
  br i1 %2, label %3, label %.preheader31

3:                                                ; preds = %1
  %4 = zext nneg i32 %storemerge to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %1, %20
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %1 ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %18
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader31 ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29, label %20

.preheader29:                                     ; preds = %.preheader30, %10
  %storemerge48 = phi i32 [ %17, %10 ], [ 1, %.preheader30 ]
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

.preheader28:                                     ; preds = %.preheader31, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader31 ]
  %22 = icmp samesign ult i32 %storemerge2, 13
  br i1 %22, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %.preheader28, %24
  %storemerge46 = phi i32 [ %29, %24 ], [ 0, %.preheader28 ]
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

.preheader26:                                     ; preds = %.preheader28, %41
  %storemerge3 = phi i32 [ %42, %41 ], [ 0, %.preheader28 ]
  %32 = icmp samesign ult i32 %storemerge3, 4
  br i1 %32, label %.preheader25, label %43

.preheader25:                                     ; preds = %.preheader26, %39
  %storemerge44 = phi i32 [ %40, %39 ], [ 0, %.preheader26 ]
  %33 = icmp samesign ult i32 %storemerge44, 2
  br i1 %33, label %.preheader24, label %41

.preheader24:                                     ; preds = %.preheader25, %34
  %storemerge45 = phi i1 [ false, %34 ], [ true, %.preheader25 ]
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

44:                                               ; preds = %54, %43
  %storemerge4 = phi i32 [ 0, %43 ], [ %55, %54 ]
  %45 = icmp samesign ult i32 %storemerge4, 2
  br i1 %45, label %.preheader23, label %56

.preheader23:                                     ; preds = %.preheader22, %44
  %46 = phi i1 [ true, %44 ], [ false, %.preheader22 ]
  br i1 %46, label %.preheader22, label %54

.preheader22:                                     ; preds = %.preheader23, %48
  %storemerge43 = phi i32 [ %53, %48 ], [ 0, %.preheader23 ]
  %47 = icmp samesign ult i32 %storemerge43, 4
  br i1 %47, label %48, label %.preheader23, !llvm.loop !22

48:                                               ; preds = %.preheader22
  %49 = shl nuw nsw i32 %storemerge43, 6
  %50 = or disjoint i32 %storemerge4, %49
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %51
  store i32 1, ptr %52, align 4
  %53 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !23

54:                                               ; preds = %.preheader23
  %55 = add nuw nsw i32 %storemerge4, 1
  br label %44, !llvm.loop !24

56:                                               ; preds = %44
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.loopexit4

.loopexit4:                                       ; preds = %.preheader21, %56
  %57 = phi i1 [ true, %56 ], [ false, %.preheader21 ]
  br i1 %57, label %.preheader21, label %69

.preheader21:                                     ; preds = %.loopexit4, %67
  %storemerge40 = phi i32 [ %68, %67 ], [ 0, %.loopexit4 ]
  %58 = icmp samesign ult i32 %storemerge40, 4
  br i1 %58, label %.preheader20, label %.loopexit4, !llvm.loop !25

.preheader20:                                     ; preds = %.preheader21, %60
  %storemerge41 = phi i32 [ %66, %60 ], [ 0, %.preheader21 ]
  %59 = icmp samesign ult i32 %storemerge41, 2
  br i1 %59, label %60, label %67

60:                                               ; preds = %.preheader20
  %61 = shl nuw nsw i32 %storemerge41, 6
  %62 = shl nuw nsw i32 %storemerge40, 3
  %63 = or disjoint i32 %61, %62
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %64
  store i32 1, ptr %65, align 4
  %66 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

67:                                               ; preds = %.preheader20
  %68 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

69:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %70

70:                                               ; preds = %80, %69
  %storemerge6 = phi i32 [ 0, %69 ], [ %81, %80 ]
  %71 = icmp samesign ult i32 %storemerge6, 2
  br i1 %71, label %.preheader19, label %82

.preheader19:                                     ; preds = %70, %78
  %storemerge38 = phi i32 [ %79, %78 ], [ 0, %70 ]
  %72 = icmp samesign ult i32 %storemerge38, 4
  br i1 %72, label %.preheader18, label %80

.preheader18:                                     ; preds = %.preheader19, %73
  %storemerge39 = phi i1 [ false, %73 ], [ true, %.preheader19 ]
  br i1 %storemerge39, label %73, label %78

73:                                               ; preds = %.preheader18
  %74 = shl nuw nsw i32 %storemerge38, 3
  %75 = or disjoint i32 %storemerge6, %74
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %76
  store i32 1, ptr %77, align 4
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
  br i1 %84, label %.preheader17, label %95

.preheader17:                                     ; preds = %.preheader16, %83
  %85 = phi i1 [ true, %83 ], [ false, %.preheader16 ]
  br i1 %85, label %.preheader16, label %93

.preheader16:                                     ; preds = %.preheader17, %87
  %storemerge37 = phi i32 [ %92, %87 ], [ 0, %.preheader17 ]
  %86 = icmp samesign ult i32 %storemerge37, 2
  br i1 %86, label %87, label %.preheader17, !llvm.loop !31

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
  br label %.loopexit3

.loopexit3:                                       ; preds = %.preheader15, %95
  %96 = phi i1 [ true, %95 ], [ false, %.preheader15 ]
  br i1 %96, label %.preheader15, label %108

.preheader15:                                     ; preds = %.loopexit3, %106
  %storemerge34 = phi i32 [ %107, %106 ], [ 0, %.loopexit3 ]
  %97 = icmp samesign ult i32 %storemerge34, 2
  br i1 %97, label %.preheader14, label %.loopexit3, !llvm.loop !34

.preheader14:                                     ; preds = %.preheader15, %99
  %storemerge35 = phi i32 [ %105, %99 ], [ 0, %.preheader15 ]
  %98 = icmp samesign ult i32 %storemerge35, 4
  br i1 %98, label %99, label %106

99:                                               ; preds = %.preheader14
  %100 = shl nuw nsw i32 %storemerge35, 6
  %101 = shl nuw nsw i32 %storemerge34, 3
  %102 = or disjoint i32 %100, %101
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %103
  store i32 1, ptr %104, align 4
  %105 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

106:                                              ; preds = %.preheader14
  %107 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

108:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %109

109:                                              ; preds = %115, %108
  %storemerge9 = phi i32 [ 0, %108 ], [ %116, %115 ]
  %110 = icmp samesign ult i32 %storemerge9, 3
  br i1 %110, label %.preheader13, label %117

.preheader13:                                     ; preds = %.preheader12, %109
  %111 = phi i1 [ true, %109 ], [ false, %.preheader12 ]
  br i1 %111, label %.preheader12, label %115

.preheader12:                                     ; preds = %.preheader13, %112
  %storemerge33 = phi i1 [ false, %112 ], [ true, %.preheader13 ]
  br i1 %storemerge33, label %112, label %.preheader13, !llvm.loop !37

112:                                              ; preds = %.preheader12
  %113 = zext nneg i32 %storemerge9 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %113
  store i32 1, ptr %114, align 4
  br label %.preheader12, !llvm.loop !38

115:                                              ; preds = %.preheader13
  %116 = add nuw nsw i32 %storemerge9, 1
  br label %109, !llvm.loop !39

117:                                              ; preds = %109
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.loopexit2

.loopexit2:                                       ; preds = %.preheader11, %117
  %118 = phi i1 [ true, %117 ], [ false, %.preheader11 ]
  br i1 %118, label %.preheader11, label %126

.preheader11:                                     ; preds = %.loopexit2, %124
  %storemerge30 = phi i32 [ %125, %124 ], [ 0, %.loopexit2 ]
  %119 = icmp samesign ult i32 %storemerge30, 3
  br i1 %119, label %.preheader10, label %.loopexit2, !llvm.loop !40

.preheader10:                                     ; preds = %.preheader11, %120
  %storemerge31 = phi i1 [ false, %120 ], [ true, %.preheader11 ]
  br i1 %storemerge31, label %120, label %124

120:                                              ; preds = %.preheader10
  %121 = shl nuw nsw i32 %storemerge30, 3
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %122
  store i32 1, ptr %123, align 4
  br label %.preheader10, !llvm.loop !41

124:                                              ; preds = %.preheader10
  %125 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

126:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.loopexit1

.loopexit1:                                       ; preds = %.preheader9, %126
  %127 = phi i1 [ true, %126 ], [ false, %.preheader9 ]
  br i1 %127, label %.preheader9, label %135

.preheader9:                                      ; preds = %.preheader8, %.loopexit1
  %128 = phi i1 [ true, %.loopexit1 ], [ false, %.preheader8 ]
  br i1 %128, label %.preheader8, label %.loopexit1, !llvm.loop !43

.preheader8:                                      ; preds = %.preheader9, %130
  %storemerge29 = phi i32 [ %134, %130 ], [ 0, %.preheader9 ]
  %129 = icmp samesign ult i32 %storemerge29, 3
  br i1 %129, label %130, label %.preheader9, !llvm.loop !44

130:                                              ; preds = %.preheader8
  %131 = shl nuw nsw i32 %storemerge29, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

135:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %136

136:                                              ; preds = %146, %135
  %storemerge12 = phi i32 [ 0, %135 ], [ %147, %146 ]
  %137 = icmp samesign ult i32 %storemerge12, 2
  br i1 %137, label %.preheader7, label %148

.preheader7:                                      ; preds = %136, %144
  %storemerge26 = phi i32 [ %145, %144 ], [ 0, %136 ]
  %138 = icmp samesign ult i32 %storemerge26, 2
  br i1 %138, label %.preheader6, label %146

.preheader6:                                      ; preds = %.preheader7, %139
  %storemerge27 = phi i1 [ false, %139 ], [ true, %.preheader7 ]
  br i1 %storemerge27, label %139, label %144

139:                                              ; preds = %.preheader6
  %140 = shl nuw nsw i32 %storemerge26, 3
  %141 = or disjoint i32 %storemerge12, %140
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %142
  store i32 1, ptr %143, align 4
  br label %.preheader6, !llvm.loop !46

144:                                              ; preds = %.preheader6
  %145 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

146:                                              ; preds = %.preheader7
  %147 = add nuw nsw i32 %storemerge12, 1
  br label %136, !llvm.loop !48

148:                                              ; preds = %136
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %149

149:                                              ; preds = %159, %148
  %storemerge13 = phi i32 [ 0, %148 ], [ %160, %159 ]
  %150 = icmp samesign ult i32 %storemerge13, 2
  br i1 %150, label %.preheader5, label %161

.preheader5:                                      ; preds = %.preheader4, %149
  %151 = phi i1 [ true, %149 ], [ false, %.preheader4 ]
  br i1 %151, label %.preheader4, label %159

.preheader4:                                      ; preds = %.preheader5, %153
  %storemerge25 = phi i32 [ %158, %153 ], [ 0, %.preheader5 ]
  %152 = icmp samesign ult i32 %storemerge25, 2
  br i1 %152, label %153, label %.preheader5, !llvm.loop !49

153:                                              ; preds = %.preheader4
  %154 = shl nuw nsw i32 %storemerge25, 6
  %155 = or disjoint i32 %storemerge13, %154
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %156
  store i32 1, ptr %157, align 4
  %158 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

159:                                              ; preds = %.preheader5
  %160 = add nuw nsw i32 %storemerge13, 1
  br label %149, !llvm.loop !51

161:                                              ; preds = %149
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader3, %161
  %162 = phi i1 [ true, %161 ], [ false, %.preheader3 ]
  br i1 %162, label %.preheader3, label %174

.preheader3:                                      ; preds = %.loopexit, %172
  %storemerge22 = phi i32 [ %173, %172 ], [ 0, %.loopexit ]
  %163 = icmp samesign ult i32 %storemerge22, 2
  br i1 %163, label %.preheader2, label %.loopexit, !llvm.loop !52

.preheader2:                                      ; preds = %.preheader3, %165
  %storemerge23 = phi i32 [ %171, %165 ], [ 0, %.preheader3 ]
  %164 = icmp samesign ult i32 %storemerge23, 2
  br i1 %164, label %165, label %172

165:                                              ; preds = %.preheader2
  %166 = shl nuw nsw i32 %storemerge23, 6
  %167 = shl nuw nsw i32 %storemerge22, 3
  %168 = or disjoint i32 %166, %167
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

172:                                              ; preds = %.preheader2
  %173 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

174:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %175

175:                                              ; preds = %189, %174
  %storemerge15 = phi i32 [ 0, %174 ], [ %190, %189 ]
  %176 = icmp samesign ult i32 %storemerge15, 2
  br i1 %176, label %.preheader1, label %191

.preheader1:                                      ; preds = %175, %187
  %storemerge20 = phi i32 [ %188, %187 ], [ 0, %175 ]
  %177 = icmp samesign ult i32 %storemerge20, 2
  br i1 %177, label %.preheader, label %189

.preheader:                                       ; preds = %.preheader1, %179
  %storemerge21 = phi i32 [ %186, %179 ], [ 0, %.preheader1 ]
  %178 = icmp samesign ult i32 %storemerge21, 2
  br i1 %178, label %179, label %187

179:                                              ; preds = %.preheader
  %180 = shl nuw nsw i32 %storemerge21, 6
  %181 = shl nuw nsw i32 %storemerge20, 3
  %182 = or disjoint i32 %180, %181
  %183 = or disjoint i32 %storemerge15, %182
  %184 = zext nneg i32 %183 to i64
  %185 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %184
  store i32 1, ptr %185, align 4
  %186 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

187:                                              ; preds = %.preheader
  %188 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

189:                                              ; preds = %.preheader1
  %190 = add nuw nsw i32 %storemerge15, 1
  br label %175, !llvm.loop !57

191:                                              ; preds = %175
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %192 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %192, 0
  br i1 %.not, label %195, label %193

193:                                              ; preds = %191
  %194 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %194, ptr @n, align 4
  br label %196

195:                                              ; preds = %191
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %196

196:                                              ; preds = %195, %193
  %197 = load i32, ptr @n, align 4
  %198 = call i32 @Trial(i32 noundef %197)
  %.not16 = icmp eq i32 %198, 0
  br i1 %.not16, label %199, label %200

199:                                              ; preds = %196
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %203

200:                                              ; preds = %196
  %201 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %201, 2005
  br i1 %.not18, label %203, label %202

202:                                              ; preds = %200
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %203

203:                                              ; preds = %202, %200, %199
  %204 = load i32, ptr @n, align 4
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %204) #4
  %206 = load i32, ptr @kount, align 4
  %207 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %206) #4
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
