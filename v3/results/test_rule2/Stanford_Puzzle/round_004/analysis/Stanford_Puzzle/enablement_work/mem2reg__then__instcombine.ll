; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_003\output.ll'
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
  br label %33

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  br label %33

33:                                               ; preds = %.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit ]
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

.preheader31:                                     ; preds = %1
  br label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %storemerge to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %23, %.preheader31
  %storemerge1 = phi i32 [ %24, %23 ], [ 1, %.preheader31 ]
  %8 = icmp samesign ult i32 %storemerge1, 6
  br i1 %8, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %7
  br label %9

.preheader28:                                     ; preds = %7
  br label %25

9:                                                ; preds = %21, %.preheader30
  %storemerge47 = phi i32 [ %22, %21 ], [ 1, %.preheader30 ]
  %10 = icmp samesign ult i32 %storemerge47, 6
  br i1 %10, label %.preheader29, label %23

.preheader29:                                     ; preds = %9
  br label %11

11:                                               ; preds = %13, %.preheader29
  %storemerge48 = phi i32 [ %20, %13 ], [ 1, %.preheader29 ]
  %12 = icmp samesign ult i32 %storemerge48, 6
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = shl nuw nsw i32 %storemerge48, 6
  %15 = shl nuw nsw i32 %storemerge47, 3
  %16 = or disjoint i32 %14, %15
  %17 = or disjoint i32 %storemerge1, %16
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nuw nsw i32 %storemerge48, 1
  br label %11, !llvm.loop !14

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %storemerge47, 1
  br label %9, !llvm.loop !15

23:                                               ; preds = %9
  %24 = add nuw nsw i32 %storemerge1, 1
  br label %7, !llvm.loop !16

25:                                               ; preds = %35, %.preheader28
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.preheader28 ]
  %26 = icmp samesign ult i32 %storemerge2, 13
  br i1 %26, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %25
  br label %27

.preheader26:                                     ; preds = %25
  br label %37

27:                                               ; preds = %29, %.preheader27
  %storemerge46 = phi i32 [ %34, %29 ], [ 0, %.preheader27 ]
  %28 = icmp samesign ult i32 %storemerge46, 512
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = zext nneg i32 %storemerge2 to i64
  %31 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %30
  %32 = zext nneg i32 %storemerge46 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %32
  store i32 0, ptr %33, align 4
  %34 = add nuw nsw i32 %storemerge46, 1
  br label %27, !llvm.loop !17

35:                                               ; preds = %27
  %36 = add nuw nsw i32 %storemerge2, 1
  br label %25, !llvm.loop !18

37:                                               ; preds = %49, %.preheader26
  %storemerge3 = phi i32 [ %50, %49 ], [ 0, %.preheader26 ]
  %38 = icmp samesign ult i32 %storemerge3, 4
  br i1 %38, label %.preheader25, label %51

.preheader25:                                     ; preds = %37
  br label %39

39:                                               ; preds = %47, %.preheader25
  %storemerge44 = phi i32 [ %48, %47 ], [ 0, %.preheader25 ]
  %40 = icmp samesign ult i32 %storemerge44, 2
  br i1 %40, label %.preheader24, label %49

.preheader24:                                     ; preds = %39
  br label %41

41:                                               ; preds = %42, %.preheader24
  %storemerge45 = phi i1 [ false, %42 ], [ true, %.preheader24 ]
  br i1 %storemerge45, label %42, label %47

42:                                               ; preds = %41
  %43 = shl nuw nsw i32 %storemerge44, 3
  %44 = or disjoint i32 %storemerge3, %43
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %45
  store i32 1, ptr %46, align 4
  br label %41, !llvm.loop !19

47:                                               ; preds = %41
  %48 = add nuw nsw i32 %storemerge44, 1
  br label %39, !llvm.loop !20

49:                                               ; preds = %39
  %50 = add nuw nsw i32 %storemerge3, 1
  br label %37, !llvm.loop !21

51:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %52

52:                                               ; preds = %65, %51
  %storemerge4 = phi i32 [ 0, %51 ], [ %66, %65 ]
  %53 = icmp samesign ult i32 %storemerge4, 2
  br i1 %53, label %.preheader23, label %67

.preheader23:                                     ; preds = %52
  br label %54

54:                                               ; preds = %64, %.preheader23
  %55 = phi i1 [ false, %64 ], [ true, %.preheader23 ]
  br i1 %55, label %.preheader22, label %65

.preheader22:                                     ; preds = %54
  br label %56

56:                                               ; preds = %58, %.preheader22
  %storemerge43 = phi i32 [ %63, %58 ], [ 0, %.preheader22 ]
  %57 = icmp samesign ult i32 %storemerge43, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = shl nuw nsw i32 %storemerge43, 6
  %60 = or disjoint i32 %storemerge4, %59
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nuw nsw i32 %storemerge43, 1
  br label %56, !llvm.loop !22

64:                                               ; preds = %56
  br label %54, !llvm.loop !23

65:                                               ; preds = %54
  %66 = add nuw nsw i32 %storemerge4, 1
  br label %52, !llvm.loop !24

67:                                               ; preds = %52
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %68

68:                                               ; preds = %83, %67
  %69 = phi i1 [ true, %67 ], [ false, %83 ]
  br i1 %69, label %.preheader21, label %84

.preheader21:                                     ; preds = %68
  br label %70

70:                                               ; preds = %81, %.preheader21
  %storemerge40 = phi i32 [ %82, %81 ], [ 0, %.preheader21 ]
  %71 = icmp samesign ult i32 %storemerge40, 4
  br i1 %71, label %.preheader20, label %83

.preheader20:                                     ; preds = %70
  br label %72

72:                                               ; preds = %74, %.preheader20
  %storemerge41 = phi i32 [ %80, %74 ], [ 0, %.preheader20 ]
  %73 = icmp samesign ult i32 %storemerge41, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = shl nuw nsw i32 %storemerge41, 6
  %76 = shl nuw nsw i32 %storemerge40, 3
  %77 = or disjoint i32 %75, %76
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nuw nsw i32 %storemerge41, 1
  br label %72, !llvm.loop !25

81:                                               ; preds = %72
  %82 = add nuw nsw i32 %storemerge40, 1
  br label %70, !llvm.loop !26

83:                                               ; preds = %70
  br label %68, !llvm.loop !27

84:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %85

85:                                               ; preds = %97, %84
  %storemerge6 = phi i32 [ 0, %84 ], [ %98, %97 ]
  %86 = icmp samesign ult i32 %storemerge6, 2
  br i1 %86, label %.preheader19, label %99

.preheader19:                                     ; preds = %85
  br label %87

87:                                               ; preds = %95, %.preheader19
  %storemerge38 = phi i32 [ %96, %95 ], [ 0, %.preheader19 ]
  %88 = icmp samesign ult i32 %storemerge38, 4
  br i1 %88, label %.preheader18, label %97

.preheader18:                                     ; preds = %87
  br label %89

89:                                               ; preds = %90, %.preheader18
  %storemerge39 = phi i1 [ false, %90 ], [ true, %.preheader18 ]
  br i1 %storemerge39, label %90, label %95

90:                                               ; preds = %89
  %91 = shl nuw nsw i32 %storemerge38, 3
  %92 = or disjoint i32 %storemerge6, %91
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %93
  store i32 1, ptr %94, align 4
  br label %89, !llvm.loop !28

95:                                               ; preds = %89
  %96 = add nuw nsw i32 %storemerge38, 1
  br label %87, !llvm.loop !29

97:                                               ; preds = %87
  %98 = add nuw nsw i32 %storemerge6, 1
  br label %85, !llvm.loop !30

99:                                               ; preds = %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %100

100:                                              ; preds = %113, %99
  %storemerge7 = phi i32 [ 0, %99 ], [ %114, %113 ]
  %101 = icmp samesign ult i32 %storemerge7, 4
  br i1 %101, label %.preheader17, label %115

.preheader17:                                     ; preds = %100
  br label %102

102:                                              ; preds = %112, %.preheader17
  %103 = phi i1 [ false, %112 ], [ true, %.preheader17 ]
  br i1 %103, label %.preheader16, label %113

.preheader16:                                     ; preds = %102
  br label %104

104:                                              ; preds = %106, %.preheader16
  %storemerge37 = phi i32 [ %111, %106 ], [ 0, %.preheader16 ]
  %105 = icmp samesign ult i32 %storemerge37, 2
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = shl nuw nsw i32 %storemerge37, 6
  %108 = or disjoint i32 %storemerge7, %107
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %109
  store i32 1, ptr %110, align 4
  %111 = add nuw nsw i32 %storemerge37, 1
  br label %104, !llvm.loop !31

112:                                              ; preds = %104
  br label %102, !llvm.loop !32

113:                                              ; preds = %102
  %114 = add nuw nsw i32 %storemerge7, 1
  br label %100, !llvm.loop !33

115:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %116

116:                                              ; preds = %131, %115
  %117 = phi i1 [ true, %115 ], [ false, %131 ]
  br i1 %117, label %.preheader15, label %132

.preheader15:                                     ; preds = %116
  br label %118

118:                                              ; preds = %129, %.preheader15
  %storemerge34 = phi i32 [ %130, %129 ], [ 0, %.preheader15 ]
  %119 = icmp samesign ult i32 %storemerge34, 2
  br i1 %119, label %.preheader14, label %131

.preheader14:                                     ; preds = %118
  br label %120

120:                                              ; preds = %122, %.preheader14
  %storemerge35 = phi i32 [ %128, %122 ], [ 0, %.preheader14 ]
  %121 = icmp samesign ult i32 %storemerge35, 4
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = shl nuw nsw i32 %storemerge35, 6
  %124 = shl nuw nsw i32 %storemerge34, 3
  %125 = or disjoint i32 %123, %124
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nuw nsw i32 %storemerge35, 1
  br label %120, !llvm.loop !34

129:                                              ; preds = %120
  %130 = add nuw nsw i32 %storemerge34, 1
  br label %118, !llvm.loop !35

131:                                              ; preds = %118
  br label %116, !llvm.loop !36

132:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %133

133:                                              ; preds = %142, %132
  %storemerge9 = phi i32 [ 0, %132 ], [ %143, %142 ]
  %134 = icmp samesign ult i32 %storemerge9, 3
  br i1 %134, label %.preheader13, label %144

.preheader13:                                     ; preds = %133
  br label %135

135:                                              ; preds = %141, %.preheader13
  %136 = phi i1 [ false, %141 ], [ true, %.preheader13 ]
  br i1 %136, label %.preheader12, label %142

.preheader12:                                     ; preds = %135
  br label %137

137:                                              ; preds = %138, %.preheader12
  %storemerge33 = phi i1 [ false, %138 ], [ true, %.preheader12 ]
  br i1 %storemerge33, label %138, label %141

138:                                              ; preds = %137
  %139 = zext nneg i32 %storemerge9 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %139
  store i32 1, ptr %140, align 4
  br label %137, !llvm.loop !37

141:                                              ; preds = %137
  br label %135, !llvm.loop !38

142:                                              ; preds = %135
  %143 = add nuw nsw i32 %storemerge9, 1
  br label %133, !llvm.loop !39

144:                                              ; preds = %133
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %145

145:                                              ; preds = %156, %144
  %146 = phi i1 [ true, %144 ], [ false, %156 ]
  br i1 %146, label %.preheader11, label %157

.preheader11:                                     ; preds = %145
  br label %147

147:                                              ; preds = %154, %.preheader11
  %storemerge30 = phi i32 [ %155, %154 ], [ 0, %.preheader11 ]
  %148 = icmp samesign ult i32 %storemerge30, 3
  br i1 %148, label %.preheader10, label %156

.preheader10:                                     ; preds = %147
  br label %149

149:                                              ; preds = %150, %.preheader10
  %storemerge31 = phi i1 [ false, %150 ], [ true, %.preheader10 ]
  br i1 %storemerge31, label %150, label %154

150:                                              ; preds = %149
  %151 = shl nuw nsw i32 %storemerge30, 3
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %152
  store i32 1, ptr %153, align 4
  br label %149, !llvm.loop !40

154:                                              ; preds = %149
  %155 = add nuw nsw i32 %storemerge30, 1
  br label %147, !llvm.loop !41

156:                                              ; preds = %147
  br label %145, !llvm.loop !42

157:                                              ; preds = %145
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %158

158:                                              ; preds = %170, %157
  %159 = phi i1 [ true, %157 ], [ false, %170 ]
  br i1 %159, label %.preheader9, label %171

.preheader9:                                      ; preds = %158
  br label %160

160:                                              ; preds = %169, %.preheader9
  %161 = phi i1 [ false, %169 ], [ true, %.preheader9 ]
  br i1 %161, label %.preheader8, label %170

.preheader8:                                      ; preds = %160
  br label %162

162:                                              ; preds = %164, %.preheader8
  %storemerge29 = phi i32 [ %168, %164 ], [ 0, %.preheader8 ]
  %163 = icmp samesign ult i32 %storemerge29, 3
  br i1 %163, label %164, label %169

164:                                              ; preds = %162
  %165 = shl nuw nsw i32 %storemerge29, 6
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %166
  store i32 1, ptr %167, align 4
  %168 = add nuw nsw i32 %storemerge29, 1
  br label %162, !llvm.loop !43

169:                                              ; preds = %162
  br label %160, !llvm.loop !44

170:                                              ; preds = %160
  br label %158, !llvm.loop !45

171:                                              ; preds = %158
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %172

172:                                              ; preds = %184, %171
  %storemerge12 = phi i32 [ 0, %171 ], [ %185, %184 ]
  %173 = icmp samesign ult i32 %storemerge12, 2
  br i1 %173, label %.preheader7, label %186

.preheader7:                                      ; preds = %172
  br label %174

174:                                              ; preds = %182, %.preheader7
  %storemerge26 = phi i32 [ %183, %182 ], [ 0, %.preheader7 ]
  %175 = icmp samesign ult i32 %storemerge26, 2
  br i1 %175, label %.preheader6, label %184

.preheader6:                                      ; preds = %174
  br label %176

176:                                              ; preds = %177, %.preheader6
  %storemerge27 = phi i1 [ false, %177 ], [ true, %.preheader6 ]
  br i1 %storemerge27, label %177, label %182

177:                                              ; preds = %176
  %178 = shl nuw nsw i32 %storemerge26, 3
  %179 = or disjoint i32 %storemerge12, %178
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %180
  store i32 1, ptr %181, align 4
  br label %176, !llvm.loop !46

182:                                              ; preds = %176
  %183 = add nuw nsw i32 %storemerge26, 1
  br label %174, !llvm.loop !47

184:                                              ; preds = %174
  %185 = add nuw nsw i32 %storemerge12, 1
  br label %172, !llvm.loop !48

186:                                              ; preds = %172
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %187

187:                                              ; preds = %200, %186
  %storemerge13 = phi i32 [ 0, %186 ], [ %201, %200 ]
  %188 = icmp samesign ult i32 %storemerge13, 2
  br i1 %188, label %.preheader5, label %202

.preheader5:                                      ; preds = %187
  br label %189

189:                                              ; preds = %199, %.preheader5
  %190 = phi i1 [ false, %199 ], [ true, %.preheader5 ]
  br i1 %190, label %.preheader4, label %200

.preheader4:                                      ; preds = %189
  br label %191

191:                                              ; preds = %193, %.preheader4
  %storemerge25 = phi i32 [ %198, %193 ], [ 0, %.preheader4 ]
  %192 = icmp samesign ult i32 %storemerge25, 2
  br i1 %192, label %193, label %199

193:                                              ; preds = %191
  %194 = shl nuw nsw i32 %storemerge25, 6
  %195 = or disjoint i32 %storemerge13, %194
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %196
  store i32 1, ptr %197, align 4
  %198 = add nuw nsw i32 %storemerge25, 1
  br label %191, !llvm.loop !49

199:                                              ; preds = %191
  br label %189, !llvm.loop !50

200:                                              ; preds = %189
  %201 = add nuw nsw i32 %storemerge13, 1
  br label %187, !llvm.loop !51

202:                                              ; preds = %187
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %203

203:                                              ; preds = %218, %202
  %204 = phi i1 [ true, %202 ], [ false, %218 ]
  br i1 %204, label %.preheader3, label %219

.preheader3:                                      ; preds = %203
  br label %205

205:                                              ; preds = %216, %.preheader3
  %storemerge22 = phi i32 [ %217, %216 ], [ 0, %.preheader3 ]
  %206 = icmp samesign ult i32 %storemerge22, 2
  br i1 %206, label %.preheader2, label %218

.preheader2:                                      ; preds = %205
  br label %207

207:                                              ; preds = %209, %.preheader2
  %storemerge23 = phi i32 [ %215, %209 ], [ 0, %.preheader2 ]
  %208 = icmp samesign ult i32 %storemerge23, 2
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = shl nuw nsw i32 %storemerge23, 6
  %211 = shl nuw nsw i32 %storemerge22, 3
  %212 = or disjoint i32 %210, %211
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nuw nsw i32 %storemerge23, 1
  br label %207, !llvm.loop !52

216:                                              ; preds = %207
  %217 = add nuw nsw i32 %storemerge22, 1
  br label %205, !llvm.loop !53

218:                                              ; preds = %205
  br label %203, !llvm.loop !54

219:                                              ; preds = %203
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %220

220:                                              ; preds = %236, %219
  %storemerge15 = phi i32 [ 0, %219 ], [ %237, %236 ]
  %221 = icmp samesign ult i32 %storemerge15, 2
  br i1 %221, label %.preheader1, label %238

.preheader1:                                      ; preds = %220
  br label %222

222:                                              ; preds = %234, %.preheader1
  %storemerge20 = phi i32 [ %235, %234 ], [ 0, %.preheader1 ]
  %223 = icmp samesign ult i32 %storemerge20, 2
  br i1 %223, label %.preheader, label %236

.preheader:                                       ; preds = %222
  br label %224

224:                                              ; preds = %226, %.preheader
  %storemerge21 = phi i32 [ %233, %226 ], [ 0, %.preheader ]
  %225 = icmp samesign ult i32 %storemerge21, 2
  br i1 %225, label %226, label %234

226:                                              ; preds = %224
  %227 = shl nuw nsw i32 %storemerge21, 6
  %228 = shl nuw nsw i32 %storemerge20, 3
  %229 = or disjoint i32 %227, %228
  %230 = or disjoint i32 %storemerge15, %229
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %231
  store i32 1, ptr %232, align 4
  %233 = add nuw nsw i32 %storemerge21, 1
  br label %224, !llvm.loop !55

234:                                              ; preds = %224
  %235 = add nuw nsw i32 %storemerge20, 1
  br label %222, !llvm.loop !56

236:                                              ; preds = %222
  %237 = add nuw nsw i32 %storemerge15, 1
  br label %220, !llvm.loop !57

238:                                              ; preds = %220
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %239 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %239, 0
  br i1 %.not, label %242, label %240

240:                                              ; preds = %238
  %241 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %241, ptr @n, align 4
  br label %243

242:                                              ; preds = %238
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %243

243:                                              ; preds = %242, %240
  %244 = load i32, ptr @n, align 4
  %245 = call i32 @Trial(i32 noundef %244)
  %.not16 = icmp eq i32 %245, 0
  br i1 %.not16, label %246, label %247

246:                                              ; preds = %243
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %250

247:                                              ; preds = %243
  %248 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %248, 2005
  br i1 %.not18, label %250, label %249

249:                                              ; preds = %247
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %250

250:                                              ; preds = %249, %247, %246
  %251 = load i32, ptr @n, align 4
  %252 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %251) #4
  %253 = load i32, ptr @kount, align 4
  %254 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %253) #4
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
