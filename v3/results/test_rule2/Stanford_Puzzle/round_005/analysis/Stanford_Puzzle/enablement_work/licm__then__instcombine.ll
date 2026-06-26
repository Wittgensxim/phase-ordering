; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_004\output.ll'
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
  br i1 %exitcond.not, label %.loopexit, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %34

32:                                               ; preds = %29
  %33 = trunc nsw i64 %indvars.iv to i32
  br label %35

34:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %28, !llvm.loop !10

.loopexit:                                        ; preds = %28
  br label %35

35:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %33, %32 ], [ 0, %.loopexit ]
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
  br i1 %3, label %4, label %.preheader31

.preheader31:                                     ; preds = %2
  store i32 %storemerge, ptr %1, align 4
  br label %8

4:                                                ; preds = %2
  %5 = zext nneg i32 %storemerge to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !13

8:                                                ; preds = %23, %.preheader31
  %storemerge1 = phi i32 [ %24, %23 ], [ 1, %.preheader31 ]
  %9 = icmp samesign ult i32 %storemerge1, 6
  br i1 %9, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %8
  br label %10

.preheader28:                                     ; preds = %8
  br label %25

10:                                               ; preds = %21, %.preheader30
  %storemerge47 = phi i32 [ %22, %21 ], [ 1, %.preheader30 ]
  %11 = icmp samesign ult i32 %storemerge47, 6
  br i1 %11, label %.preheader29, label %23

.preheader29:                                     ; preds = %10
  %12 = shl nuw nsw i32 %storemerge47, 3
  br label %13

13:                                               ; preds = %15, %.preheader29
  %storemerge48 = phi i32 [ %20, %15 ], [ 1, %.preheader29 ]
  %14 = icmp samesign ult i32 %storemerge48, 6
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = shl nuw nsw i32 %storemerge48, 6
  %17 = or disjoint i32 %12, %16
  %.reass = or disjoint i32 %17, %storemerge1
  %18 = zext nneg i32 %.reass to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nuw nsw i32 %storemerge48, 1
  br label %13, !llvm.loop !14

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %storemerge47, 1
  br label %10, !llvm.loop !15

23:                                               ; preds = %10
  %24 = add nuw nsw i32 %storemerge1, 1
  br label %8, !llvm.loop !16

25:                                               ; preds = %35, %.preheader28
  %storemerge46.lcssa4 = phi i32 [ %storemerge46, %35 ], [ poison, %.preheader28 ]
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.preheader28 ]
  %26 = icmp samesign ult i32 %storemerge2, 13
  br i1 %26, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %25
  %27 = zext nneg i32 %storemerge2 to i64
  %28 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %27
  br label %29

.preheader26:                                     ; preds = %25
  store i32 %storemerge46.lcssa4, ptr %1, align 4
  br label %37

29:                                               ; preds = %31, %.preheader27
  %storemerge46 = phi i32 [ %34, %31 ], [ 0, %.preheader27 ]
  %30 = icmp samesign ult i32 %storemerge46, 512
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = zext nneg i32 %storemerge46 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %32
  store i32 0, ptr %33, align 4
  %34 = add nuw nsw i32 %storemerge46, 1
  br label %29, !llvm.loop !17

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %storemerge2, 1
  br label %25, !llvm.loop !18

37:                                               ; preds = %48, %.preheader26
  %storemerge3 = phi i32 [ %49, %48 ], [ 0, %.preheader26 ]
  %38 = icmp samesign ult i32 %storemerge3, 4
  br i1 %38, label %.preheader25, label %50

.preheader25:                                     ; preds = %37
  br label %39

39:                                               ; preds = %46, %.preheader25
  %storemerge44 = phi i32 [ %47, %46 ], [ 0, %.preheader25 ]
  %40 = icmp samesign ult i32 %storemerge44, 2
  br i1 %40, label %.preheader24, label %48

.preheader24:                                     ; preds = %39
  %41 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = or disjoint i32 %41, %storemerge3
  br label %42

42:                                               ; preds = %43, %.preheader24
  %storemerge45 = phi i1 [ false, %43 ], [ true, %.preheader24 ]
  br i1 %storemerge45, label %43, label %46

43:                                               ; preds = %42
  %44 = zext nneg i32 %invariant.op5 to i64
  %45 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %44
  store i32 1, ptr %45, align 4
  br label %42, !llvm.loop !19

46:                                               ; preds = %42
  %47 = add nuw nsw i32 %storemerge44, 1
  br label %39, !llvm.loop !20

48:                                               ; preds = %39
  %49 = add nuw nsw i32 %storemerge3, 1
  br label %37, !llvm.loop !21

50:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %51

51:                                               ; preds = %62, %50
  %storemerge4 = phi i32 [ 0, %50 ], [ %63, %62 ]
  %52 = icmp samesign ult i32 %storemerge4, 2
  br i1 %52, label %.preheader23, label %64

.preheader23:                                     ; preds = %51
  br label %53

53:                                               ; preds = %61, %.preheader23
  %storemerge42 = phi i1 [ false, %61 ], [ true, %.preheader23 ]
  br i1 %storemerge42, label %.preheader22, label %62

.preheader22:                                     ; preds = %53
  br label %54

54:                                               ; preds = %56, %.preheader22
  %storemerge43 = phi i32 [ %60, %56 ], [ 0, %.preheader22 ]
  %55 = icmp samesign ult i32 %storemerge43, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = shl nuw nsw i32 %storemerge43, 6
  %.reass11 = or disjoint i32 %57, %storemerge4
  %58 = zext nneg i32 %.reass11 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %58
  store i32 1, ptr %59, align 4
  %60 = add nuw nsw i32 %storemerge43, 1
  br label %54, !llvm.loop !22

61:                                               ; preds = %54
  br label %53, !llvm.loop !23

62:                                               ; preds = %53
  %63 = add nuw nsw i32 %storemerge4, 1
  br label %51, !llvm.loop !24

64:                                               ; preds = %51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = phi i1 [ true, %64 ], [ false, %79 ]
  br i1 %66, label %.preheader21, label %80

.preheader21:                                     ; preds = %65
  br label %67

67:                                               ; preds = %77, %.preheader21
  %storemerge40 = phi i32 [ %78, %77 ], [ 0, %.preheader21 ]
  %68 = icmp samesign ult i32 %storemerge40, 4
  br i1 %68, label %.preheader20, label %79

.preheader20:                                     ; preds = %67
  %69 = shl nuw nsw i32 %storemerge40, 3
  br label %70

70:                                               ; preds = %72, %.preheader20
  %storemerge41 = phi i32 [ %76, %72 ], [ 0, %.preheader20 ]
  %71 = icmp samesign ult i32 %storemerge41, 2
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = or disjoint i32 %73, %69
  %74 = zext nneg i32 %.reass16 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %74
  store i32 1, ptr %75, align 4
  %76 = add nuw nsw i32 %storemerge41, 1
  br label %70, !llvm.loop !25

77:                                               ; preds = %70
  %78 = add nuw nsw i32 %storemerge40, 1
  br label %67, !llvm.loop !26

79:                                               ; preds = %67
  br label %65, !llvm.loop !27

80:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %81

81:                                               ; preds = %92, %80
  %storemerge6 = phi i32 [ 0, %80 ], [ %93, %92 ]
  %82 = icmp samesign ult i32 %storemerge6, 2
  br i1 %82, label %.preheader19, label %94

.preheader19:                                     ; preds = %81
  br label %83

83:                                               ; preds = %90, %.preheader19
  %storemerge38 = phi i32 [ %91, %90 ], [ 0, %.preheader19 ]
  %84 = icmp samesign ult i32 %storemerge38, 4
  br i1 %84, label %.preheader18, label %92

.preheader18:                                     ; preds = %83
  %85 = shl nuw nsw i32 %storemerge38, 3
  %invariant.op20 = or disjoint i32 %85, %storemerge6
  br label %86

86:                                               ; preds = %87, %.preheader18
  %storemerge39 = phi i1 [ false, %87 ], [ true, %.preheader18 ]
  br i1 %storemerge39, label %87, label %90

87:                                               ; preds = %86
  %88 = zext nneg i32 %invariant.op20 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %88
  store i32 1, ptr %89, align 4
  br label %86, !llvm.loop !28

90:                                               ; preds = %86
  %91 = add nuw nsw i32 %storemerge38, 1
  br label %83, !llvm.loop !29

92:                                               ; preds = %83
  %93 = add nuw nsw i32 %storemerge6, 1
  br label %81, !llvm.loop !30

94:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %95

95:                                               ; preds = %106, %94
  %storemerge7 = phi i32 [ 0, %94 ], [ %107, %106 ]
  %96 = icmp samesign ult i32 %storemerge7, 4
  br i1 %96, label %.preheader17, label %108

.preheader17:                                     ; preds = %95
  br label %97

97:                                               ; preds = %105, %.preheader17
  %storemerge36 = phi i1 [ false, %105 ], [ true, %.preheader17 ]
  br i1 %storemerge36, label %.preheader16, label %106

.preheader16:                                     ; preds = %97
  br label %98

98:                                               ; preds = %100, %.preheader16
  %storemerge37 = phi i32 [ %104, %100 ], [ 0, %.preheader16 ]
  %99 = icmp samesign ult i32 %storemerge37, 2
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = or disjoint i32 %101, %storemerge7
  %102 = zext nneg i32 %.reass26 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %102
  store i32 1, ptr %103, align 4
  %104 = add nuw nsw i32 %storemerge37, 1
  br label %98, !llvm.loop !31

105:                                              ; preds = %98
  br label %97, !llvm.loop !32

106:                                              ; preds = %97
  %107 = add nuw nsw i32 %storemerge7, 1
  br label %95, !llvm.loop !33

108:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %109

109:                                              ; preds = %123, %108
  %110 = phi i1 [ true, %108 ], [ false, %123 ]
  br i1 %110, label %.preheader15, label %124

.preheader15:                                     ; preds = %109
  br label %111

111:                                              ; preds = %121, %.preheader15
  %storemerge34 = phi i32 [ %122, %121 ], [ 0, %.preheader15 ]
  %112 = icmp samesign ult i32 %storemerge34, 2
  br i1 %112, label %.preheader14, label %123

.preheader14:                                     ; preds = %111
  %113 = shl nuw nsw i32 %storemerge34, 3
  br label %114

114:                                              ; preds = %116, %.preheader14
  %storemerge35 = phi i32 [ %120, %116 ], [ 0, %.preheader14 ]
  %115 = icmp samesign ult i32 %storemerge35, 4
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = shl nuw nsw i32 %storemerge35, 6
  %.reass31 = or disjoint i32 %117, %113
  %118 = zext nneg i32 %.reass31 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %118
  store i32 1, ptr %119, align 4
  %120 = add nuw nsw i32 %storemerge35, 1
  br label %114, !llvm.loop !34

121:                                              ; preds = %114
  %122 = add nuw nsw i32 %storemerge34, 1
  br label %111, !llvm.loop !35

123:                                              ; preds = %111
  br label %109, !llvm.loop !36

124:                                              ; preds = %109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %125

125:                                              ; preds = %133, %124
  %storemerge9 = phi i32 [ 0, %124 ], [ %134, %133 ]
  %126 = icmp samesign ult i32 %storemerge9, 3
  br i1 %126, label %.preheader13, label %135

.preheader13:                                     ; preds = %125
  br label %127

127:                                              ; preds = %132, %.preheader13
  %storemerge32 = phi i1 [ false, %132 ], [ true, %.preheader13 ]
  br i1 %storemerge32, label %.preheader12, label %133

.preheader12:                                     ; preds = %127
  br label %128

128:                                              ; preds = %129, %.preheader12
  %storemerge33 = phi i1 [ false, %129 ], [ true, %.preheader12 ]
  br i1 %storemerge33, label %129, label %132

129:                                              ; preds = %128
  %130 = zext nneg i32 %storemerge9 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %130
  store i32 1, ptr %131, align 4
  br label %128, !llvm.loop !37

132:                                              ; preds = %128
  br label %127, !llvm.loop !38

133:                                              ; preds = %127
  %134 = add nuw nsw i32 %storemerge9, 1
  br label %125, !llvm.loop !39

135:                                              ; preds = %125
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %136

136:                                              ; preds = %147, %135
  %137 = phi i1 [ true, %135 ], [ false, %147 ]
  br i1 %137, label %.preheader11, label %148

.preheader11:                                     ; preds = %136
  br label %138

138:                                              ; preds = %145, %.preheader11
  %storemerge30 = phi i32 [ %146, %145 ], [ 0, %.preheader11 ]
  %139 = icmp samesign ult i32 %storemerge30, 3
  br i1 %139, label %.preheader10, label %147

.preheader10:                                     ; preds = %138
  %140 = shl nuw nsw i32 %storemerge30, 3
  br label %141

141:                                              ; preds = %142, %.preheader10
  %storemerge31 = phi i1 [ false, %142 ], [ true, %.preheader10 ]
  br i1 %storemerge31, label %142, label %145

142:                                              ; preds = %141
  %143 = zext nneg i32 %140 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %143
  store i32 1, ptr %144, align 4
  br label %141, !llvm.loop !40

145:                                              ; preds = %141
  %146 = add nuw nsw i32 %storemerge30, 1
  br label %138, !llvm.loop !41

147:                                              ; preds = %138
  br label %136, !llvm.loop !42

148:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %149

149:                                              ; preds = %160, %148
  %150 = phi i1 [ true, %148 ], [ false, %160 ]
  br i1 %150, label %.preheader9, label %161

.preheader9:                                      ; preds = %149
  br label %151

151:                                              ; preds = %159, %.preheader9
  %storemerge28 = phi i1 [ false, %159 ], [ true, %.preheader9 ]
  br i1 %storemerge28, label %.preheader8, label %160

.preheader8:                                      ; preds = %151
  br label %152

152:                                              ; preds = %154, %.preheader8
  %storemerge29 = phi i32 [ %158, %154 ], [ 0, %.preheader8 ]
  %153 = icmp samesign ult i32 %storemerge29, 3
  br i1 %153, label %154, label %159

154:                                              ; preds = %152
  %155 = shl nuw nsw i32 %storemerge29, 6
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %156
  store i32 1, ptr %157, align 4
  %158 = add nuw nsw i32 %storemerge29, 1
  br label %152, !llvm.loop !43

159:                                              ; preds = %152
  br label %151, !llvm.loop !44

160:                                              ; preds = %151
  br label %149, !llvm.loop !45

161:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %162

162:                                              ; preds = %173, %161
  %storemerge12 = phi i32 [ 0, %161 ], [ %174, %173 ]
  %163 = icmp samesign ult i32 %storemerge12, 2
  br i1 %163, label %.preheader7, label %175

.preheader7:                                      ; preds = %162
  br label %164

164:                                              ; preds = %171, %.preheader7
  %storemerge26 = phi i32 [ %172, %171 ], [ 0, %.preheader7 ]
  %165 = icmp samesign ult i32 %storemerge26, 2
  br i1 %165, label %.preheader6, label %173

.preheader6:                                      ; preds = %164
  %166 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = or disjoint i32 %166, %storemerge12
  br label %167

167:                                              ; preds = %168, %.preheader6
  %storemerge27 = phi i1 [ false, %168 ], [ true, %.preheader6 ]
  br i1 %storemerge27, label %168, label %171

168:                                              ; preds = %167
  %169 = zext nneg i32 %invariant.op50 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %169
  store i32 1, ptr %170, align 4
  br label %167, !llvm.loop !46

171:                                              ; preds = %167
  %172 = add nuw nsw i32 %storemerge26, 1
  br label %164, !llvm.loop !47

173:                                              ; preds = %164
  %174 = add nuw nsw i32 %storemerge12, 1
  br label %162, !llvm.loop !48

175:                                              ; preds = %162
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %176

176:                                              ; preds = %187, %175
  %storemerge13 = phi i32 [ 0, %175 ], [ %188, %187 ]
  %177 = icmp samesign ult i32 %storemerge13, 2
  br i1 %177, label %.preheader5, label %189

.preheader5:                                      ; preds = %176
  br label %178

178:                                              ; preds = %186, %.preheader5
  %storemerge24 = phi i1 [ false, %186 ], [ true, %.preheader5 ]
  br i1 %storemerge24, label %.preheader4, label %187

.preheader4:                                      ; preds = %178
  br label %179

179:                                              ; preds = %181, %.preheader4
  %storemerge25 = phi i32 [ %185, %181 ], [ 0, %.preheader4 ]
  %180 = icmp samesign ult i32 %storemerge25, 2
  br i1 %180, label %181, label %186

181:                                              ; preds = %179
  %182 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = or disjoint i32 %182, %storemerge13
  %183 = zext nneg i32 %.reass56 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %183
  store i32 1, ptr %184, align 4
  %185 = add nuw nsw i32 %storemerge25, 1
  br label %179, !llvm.loop !49

186:                                              ; preds = %179
  br label %178, !llvm.loop !50

187:                                              ; preds = %178
  %188 = add nuw nsw i32 %storemerge13, 1
  br label %176, !llvm.loop !51

189:                                              ; preds = %176
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %190

190:                                              ; preds = %204, %189
  %191 = phi i1 [ true, %189 ], [ false, %204 ]
  br i1 %191, label %.preheader3, label %205

.preheader3:                                      ; preds = %190
  br label %192

192:                                              ; preds = %202, %.preheader3
  %storemerge22 = phi i32 [ %203, %202 ], [ 0, %.preheader3 ]
  %193 = icmp samesign ult i32 %storemerge22, 2
  br i1 %193, label %.preheader2, label %204

.preheader2:                                      ; preds = %192
  %194 = shl nuw nsw i32 %storemerge22, 3
  br label %195

195:                                              ; preds = %197, %.preheader2
  %storemerge23 = phi i32 [ %201, %197 ], [ 0, %.preheader2 ]
  %196 = icmp samesign ult i32 %storemerge23, 2
  br i1 %196, label %197, label %202

197:                                              ; preds = %195
  %198 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = or disjoint i32 %198, %194
  %199 = zext nneg i32 %.reass61 to i64
  %200 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %199
  store i32 1, ptr %200, align 4
  %201 = add nuw nsw i32 %storemerge23, 1
  br label %195, !llvm.loop !52

202:                                              ; preds = %195
  %203 = add nuw nsw i32 %storemerge22, 1
  br label %192, !llvm.loop !53

204:                                              ; preds = %192
  br label %190, !llvm.loop !54

205:                                              ; preds = %190
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %206

206:                                              ; preds = %221, %205
  %storemerge15 = phi i32 [ 0, %205 ], [ %222, %221 ]
  %207 = icmp samesign ult i32 %storemerge15, 2
  br i1 %207, label %.preheader1, label %223

.preheader1:                                      ; preds = %206
  br label %208

208:                                              ; preds = %219, %.preheader1
  %storemerge20 = phi i32 [ %220, %219 ], [ 0, %.preheader1 ]
  %209 = icmp samesign ult i32 %storemerge20, 2
  br i1 %209, label %.preheader, label %221

.preheader:                                       ; preds = %208
  %210 = shl nuw nsw i32 %storemerge20, 3
  br label %211

211:                                              ; preds = %213, %.preheader
  %storemerge21 = phi i32 [ %218, %213 ], [ 0, %.preheader ]
  %212 = icmp samesign ult i32 %storemerge21, 2
  br i1 %212, label %213, label %219

213:                                              ; preds = %211
  %214 = shl nuw nsw i32 %storemerge21, 6
  %215 = or disjoint i32 %210, %214
  %.reass66 = or disjoint i32 %215, %storemerge15
  %216 = zext nneg i32 %.reass66 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nuw nsw i32 %storemerge21, 1
  br label %211, !llvm.loop !55

219:                                              ; preds = %211
  %220 = add nuw nsw i32 %storemerge20, 1
  br label %208, !llvm.loop !56

221:                                              ; preds = %208
  %222 = add nuw nsw i32 %storemerge15, 1
  br label %206, !llvm.loop !57

223:                                              ; preds = %206
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %1, align 4
  store i32 0, ptr @kount, align 4
  %224 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %224, 0
  br i1 %.not, label %228, label %225

225:                                              ; preds = %223
  %226 = load i32, ptr %1, align 4
  %227 = call i32 @Place(i32 noundef 0, i32 noundef %226)
  store i32 %227, ptr @n, align 4
  br label %229

228:                                              ; preds = %223
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %229

229:                                              ; preds = %228, %225
  %230 = load i32, ptr @n, align 4
  %231 = call i32 @Trial(i32 noundef %230)
  %.not16 = icmp eq i32 %231, 0
  br i1 %.not16, label %232, label %233

232:                                              ; preds = %229
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %236

233:                                              ; preds = %229
  %234 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %234, 2005
  br i1 %.not18, label %236, label %235

235:                                              ; preds = %233
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %236

236:                                              ; preds = %235, %233, %232
  %237 = load i32, ptr @n, align 4
  %238 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %237) #4
  %239 = load i32, ptr @kount, align 4
  %240 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %239) #4
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
