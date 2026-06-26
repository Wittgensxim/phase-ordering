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

.loopexit:                                        ; preds = %30, %26
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

.preheader31:                                     ; preds = %20, %1
  %storemerge1 = phi i32 [ %21, %20 ], [ 1, %1 ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %18, %.preheader31
  %storemerge47 = phi i32 [ %19, %18 ], [ 1, %.preheader31 ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29, label %20

.preheader29:                                     ; preds = %10, %.preheader30
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

.preheader28:                                     ; preds = %30, %.preheader31
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.preheader31 ]
  %22 = icmp samesign ult i32 %storemerge2, 13
  br i1 %22, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %24, %.preheader28
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

.preheader26:                                     ; preds = %41, %.preheader28
  %storemerge3 = phi i32 [ %42, %41 ], [ 0, %.preheader28 ]
  %32 = icmp samesign ult i32 %storemerge3, 4
  br i1 %32, label %.preheader25, label %43

.preheader25:                                     ; preds = %39, %.preheader26
  %storemerge44 = phi i32 [ %40, %39 ], [ 0, %.preheader26 ]
  %33 = icmp samesign ult i32 %storemerge44, 2
  br i1 %33, label %.preheader24, label %41

.preheader24:                                     ; preds = %34, %.preheader25
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

.preheader22:                                     ; preds = %48, %.preheader23
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
  br label %57

57:                                               ; preds = %.preheader21, %56
  %58 = phi i1 [ true, %56 ], [ false, %.preheader21 ]
  br i1 %58, label %.preheader21, label %70

.preheader21:                                     ; preds = %68, %57
  %storemerge40 = phi i32 [ %69, %68 ], [ 0, %57 ]
  %59 = icmp samesign ult i32 %storemerge40, 4
  br i1 %59, label %.preheader20, label %57, !llvm.loop !25

.preheader20:                                     ; preds = %61, %.preheader21
  %storemerge41 = phi i32 [ %67, %61 ], [ 0, %.preheader21 ]
  %60 = icmp samesign ult i32 %storemerge41, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %.preheader20
  %62 = shl nuw nsw i32 %storemerge41, 6
  %63 = shl nuw nsw i32 %storemerge40, 3
  %64 = or disjoint i32 %62, %63
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

68:                                               ; preds = %.preheader20
  %69 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

70:                                               ; preds = %57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %71

71:                                               ; preds = %81, %70
  %storemerge6 = phi i32 [ 0, %70 ], [ %82, %81 ]
  %72 = icmp samesign ult i32 %storemerge6, 2
  br i1 %72, label %.preheader19, label %83

.preheader19:                                     ; preds = %79, %71
  %storemerge38 = phi i32 [ %80, %79 ], [ 0, %71 ]
  %73 = icmp samesign ult i32 %storemerge38, 4
  br i1 %73, label %.preheader18, label %81

.preheader18:                                     ; preds = %74, %.preheader19
  %storemerge39 = phi i1 [ false, %74 ], [ true, %.preheader19 ]
  br i1 %storemerge39, label %74, label %79

74:                                               ; preds = %.preheader18
  %75 = shl nuw nsw i32 %storemerge38, 3
  %76 = or disjoint i32 %storemerge6, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %77
  store i32 1, ptr %78, align 4
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

84:                                               ; preds = %94, %83
  %storemerge7 = phi i32 [ 0, %83 ], [ %95, %94 ]
  %85 = icmp samesign ult i32 %storemerge7, 4
  br i1 %85, label %.preheader17, label %96

.preheader17:                                     ; preds = %.preheader16, %84
  %86 = phi i1 [ true, %84 ], [ false, %.preheader16 ]
  br i1 %86, label %.preheader16, label %94

.preheader16:                                     ; preds = %88, %.preheader17
  %storemerge37 = phi i32 [ %93, %88 ], [ 0, %.preheader17 ]
  %87 = icmp samesign ult i32 %storemerge37, 2
  br i1 %87, label %88, label %.preheader17, !llvm.loop !31

88:                                               ; preds = %.preheader16
  %89 = shl nuw nsw i32 %storemerge37, 6
  %90 = or disjoint i32 %storemerge7, %89
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %91
  store i32 1, ptr %92, align 4
  %93 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !32

94:                                               ; preds = %.preheader17
  %95 = add nuw nsw i32 %storemerge7, 1
  br label %84, !llvm.loop !33

96:                                               ; preds = %84
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %97

97:                                               ; preds = %.preheader15, %96
  %98 = phi i1 [ true, %96 ], [ false, %.preheader15 ]
  br i1 %98, label %.preheader15, label %110

.preheader15:                                     ; preds = %108, %97
  %storemerge34 = phi i32 [ %109, %108 ], [ 0, %97 ]
  %99 = icmp samesign ult i32 %storemerge34, 2
  br i1 %99, label %.preheader14, label %97, !llvm.loop !34

.preheader14:                                     ; preds = %101, %.preheader15
  %storemerge35 = phi i32 [ %107, %101 ], [ 0, %.preheader15 ]
  %100 = icmp samesign ult i32 %storemerge35, 4
  br i1 %100, label %101, label %108

101:                                              ; preds = %.preheader14
  %102 = shl nuw nsw i32 %storemerge35, 6
  %103 = shl nuw nsw i32 %storemerge34, 3
  %104 = or disjoint i32 %102, %103
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %105
  store i32 1, ptr %106, align 4
  %107 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

108:                                              ; preds = %.preheader14
  %109 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

110:                                              ; preds = %97
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %111

111:                                              ; preds = %117, %110
  %storemerge9 = phi i32 [ 0, %110 ], [ %118, %117 ]
  %112 = icmp samesign ult i32 %storemerge9, 3
  br i1 %112, label %.preheader13, label %119

.preheader13:                                     ; preds = %.preheader12, %111
  %113 = phi i1 [ true, %111 ], [ false, %.preheader12 ]
  br i1 %113, label %.preheader12, label %117

.preheader12:                                     ; preds = %114, %.preheader13
  %storemerge33 = phi i1 [ false, %114 ], [ true, %.preheader13 ]
  br i1 %storemerge33, label %114, label %.preheader13, !llvm.loop !37

114:                                              ; preds = %.preheader12
  %115 = zext nneg i32 %storemerge9 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %115
  store i32 1, ptr %116, align 4
  br label %.preheader12, !llvm.loop !38

117:                                              ; preds = %.preheader13
  %118 = add nuw nsw i32 %storemerge9, 1
  br label %111, !llvm.loop !39

119:                                              ; preds = %111
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %120

120:                                              ; preds = %.preheader11, %119
  %121 = phi i1 [ true, %119 ], [ false, %.preheader11 ]
  br i1 %121, label %.preheader11, label %129

.preheader11:                                     ; preds = %127, %120
  %storemerge30 = phi i32 [ %128, %127 ], [ 0, %120 ]
  %122 = icmp samesign ult i32 %storemerge30, 3
  br i1 %122, label %.preheader10, label %120, !llvm.loop !40

.preheader10:                                     ; preds = %123, %.preheader11
  %storemerge31 = phi i1 [ false, %123 ], [ true, %.preheader11 ]
  br i1 %storemerge31, label %123, label %127

123:                                              ; preds = %.preheader10
  %124 = shl nuw nsw i32 %storemerge30, 3
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %125
  store i32 1, ptr %126, align 4
  br label %.preheader10, !llvm.loop !41

127:                                              ; preds = %.preheader10
  %128 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

129:                                              ; preds = %120
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %130

130:                                              ; preds = %.preheader9, %129
  %131 = phi i1 [ true, %129 ], [ false, %.preheader9 ]
  br i1 %131, label %.preheader9, label %139

.preheader9:                                      ; preds = %.preheader8, %130
  %132 = phi i1 [ true, %130 ], [ false, %.preheader8 ]
  br i1 %132, label %.preheader8, label %130, !llvm.loop !43

.preheader8:                                      ; preds = %134, %.preheader9
  %storemerge29 = phi i32 [ %138, %134 ], [ 0, %.preheader9 ]
  %133 = icmp samesign ult i32 %storemerge29, 3
  br i1 %133, label %134, label %.preheader9, !llvm.loop !44

134:                                              ; preds = %.preheader8
  %135 = shl nuw nsw i32 %storemerge29, 6
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %136
  store i32 1, ptr %137, align 4
  %138 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

139:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %140

140:                                              ; preds = %150, %139
  %storemerge12 = phi i32 [ 0, %139 ], [ %151, %150 ]
  %141 = icmp samesign ult i32 %storemerge12, 2
  br i1 %141, label %.preheader7, label %152

.preheader7:                                      ; preds = %148, %140
  %storemerge26 = phi i32 [ %149, %148 ], [ 0, %140 ]
  %142 = icmp samesign ult i32 %storemerge26, 2
  br i1 %142, label %.preheader6, label %150

.preheader6:                                      ; preds = %143, %.preheader7
  %storemerge27 = phi i1 [ false, %143 ], [ true, %.preheader7 ]
  br i1 %storemerge27, label %143, label %148

143:                                              ; preds = %.preheader6
  %144 = shl nuw nsw i32 %storemerge26, 3
  %145 = or disjoint i32 %storemerge12, %144
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %146
  store i32 1, ptr %147, align 4
  br label %.preheader6, !llvm.loop !46

148:                                              ; preds = %.preheader6
  %149 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

150:                                              ; preds = %.preheader7
  %151 = add nuw nsw i32 %storemerge12, 1
  br label %140, !llvm.loop !48

152:                                              ; preds = %140
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %153

153:                                              ; preds = %163, %152
  %storemerge13 = phi i32 [ 0, %152 ], [ %164, %163 ]
  %154 = icmp samesign ult i32 %storemerge13, 2
  br i1 %154, label %.preheader5, label %165

.preheader5:                                      ; preds = %.preheader4, %153
  %155 = phi i1 [ true, %153 ], [ false, %.preheader4 ]
  br i1 %155, label %.preheader4, label %163

.preheader4:                                      ; preds = %157, %.preheader5
  %storemerge25 = phi i32 [ %162, %157 ], [ 0, %.preheader5 ]
  %156 = icmp samesign ult i32 %storemerge25, 2
  br i1 %156, label %157, label %.preheader5, !llvm.loop !49

157:                                              ; preds = %.preheader4
  %158 = shl nuw nsw i32 %storemerge25, 6
  %159 = or disjoint i32 %storemerge13, %158
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %160
  store i32 1, ptr %161, align 4
  %162 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

163:                                              ; preds = %.preheader5
  %164 = add nuw nsw i32 %storemerge13, 1
  br label %153, !llvm.loop !51

165:                                              ; preds = %153
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %166

166:                                              ; preds = %.preheader3, %165
  %167 = phi i1 [ true, %165 ], [ false, %.preheader3 ]
  br i1 %167, label %.preheader3, label %179

.preheader3:                                      ; preds = %177, %166
  %storemerge22 = phi i32 [ %178, %177 ], [ 0, %166 ]
  %168 = icmp samesign ult i32 %storemerge22, 2
  br i1 %168, label %.preheader2, label %166, !llvm.loop !52

.preheader2:                                      ; preds = %170, %.preheader3
  %storemerge23 = phi i32 [ %176, %170 ], [ 0, %.preheader3 ]
  %169 = icmp samesign ult i32 %storemerge23, 2
  br i1 %169, label %170, label %177

170:                                              ; preds = %.preheader2
  %171 = shl nuw nsw i32 %storemerge23, 6
  %172 = shl nuw nsw i32 %storemerge22, 3
  %173 = or disjoint i32 %171, %172
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %174
  store i32 1, ptr %175, align 4
  %176 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

177:                                              ; preds = %.preheader2
  %178 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

179:                                              ; preds = %166
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %180

180:                                              ; preds = %194, %179
  %storemerge15 = phi i32 [ 0, %179 ], [ %195, %194 ]
  %181 = icmp samesign ult i32 %storemerge15, 2
  br i1 %181, label %.preheader1, label %196

.preheader1:                                      ; preds = %192, %180
  %storemerge20 = phi i32 [ %193, %192 ], [ 0, %180 ]
  %182 = icmp samesign ult i32 %storemerge20, 2
  br i1 %182, label %.preheader, label %194

.preheader:                                       ; preds = %184, %.preheader1
  %storemerge21 = phi i32 [ %191, %184 ], [ 0, %.preheader1 ]
  %183 = icmp samesign ult i32 %storemerge21, 2
  br i1 %183, label %184, label %192

184:                                              ; preds = %.preheader
  %185 = shl nuw nsw i32 %storemerge21, 6
  %186 = shl nuw nsw i32 %storemerge20, 3
  %187 = or disjoint i32 %185, %186
  %188 = or disjoint i32 %storemerge15, %187
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %189
  store i32 1, ptr %190, align 4
  %191 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

192:                                              ; preds = %.preheader
  %193 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

194:                                              ; preds = %.preheader1
  %195 = add nuw nsw i32 %storemerge15, 1
  br label %180, !llvm.loop !57

196:                                              ; preds = %180
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %197 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %197, 0
  br i1 %.not, label %200, label %198

198:                                              ; preds = %196
  %199 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %199, ptr @n, align 4
  br label %201

200:                                              ; preds = %196
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %201

201:                                              ; preds = %200, %198
  %202 = load i32, ptr @n, align 4
  %203 = call i32 @Trial(i32 noundef %202)
  %.not16 = icmp eq i32 %203, 0
  br i1 %.not16, label %204, label %205

204:                                              ; preds = %201
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %208

205:                                              ; preds = %201
  %206 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %206, 2005
  br i1 %.not18, label %208, label %207

207:                                              ; preds = %205
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %208

208:                                              ; preds = %207, %205, %204
  %209 = load i32, ptr @n, align 4
  %210 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %209) #4
  %211 = load i32, ptr @kount, align 4
  %212 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %211) #4
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
