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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %18 = add nsw i32 %storemerge, 1
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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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

26:                                               ; preds = %33, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %25, %18 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %33

31:                                               ; preds = %28
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %28 ]
  %32 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %34

33:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  br label %34

34:                                               ; preds = %.loopexit, %31
  %storemerge2 = phi i32 [ %32, %31 ], [ 0, %.loopexit ]
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
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
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
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
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
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
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
  %21 = add nsw i32 %storemerge, 1
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
  %2 = icmp slt i32 %storemerge, 512
  br i1 %2, label %3, label %.preheader31

.preheader31:                                     ; preds = %1
  br label %7

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %23, %.preheader31
  %storemerge1 = phi i32 [ %24, %23 ], [ 1, %.preheader31 ]
  %8 = icmp slt i32 %storemerge1, 6
  br i1 %8, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %7
  br label %9

.preheader28:                                     ; preds = %7
  br label %25

9:                                                ; preds = %21, %.preheader30
  %storemerge47 = phi i32 [ %22, %21 ], [ 1, %.preheader30 ]
  %10 = icmp slt i32 %storemerge47, 6
  br i1 %10, label %.preheader29, label %23

.preheader29:                                     ; preds = %9
  br label %11

11:                                               ; preds = %13, %.preheader29
  %storemerge48 = phi i32 [ %20, %13 ], [ 1, %.preheader29 ]
  %12 = icmp slt i32 %storemerge48, 6
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = shl i32 %storemerge48, 6
  %15 = shl i32 %storemerge47, 3
  %16 = add i32 %14, %15
  %17 = add nsw i32 %storemerge1, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nsw i32 %storemerge48, 1
  br label %11, !llvm.loop !14

21:                                               ; preds = %11
  %22 = add nsw i32 %storemerge47, 1
  br label %9, !llvm.loop !15

23:                                               ; preds = %9
  %24 = add nsw i32 %storemerge1, 1
  br label %7, !llvm.loop !16

25:                                               ; preds = %35, %.preheader28
  %storemerge2 = phi i32 [ %36, %35 ], [ 0, %.preheader28 ]
  %26 = icmp slt i32 %storemerge2, 13
  br i1 %26, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %25
  br label %27

.preheader26:                                     ; preds = %25
  br label %37

27:                                               ; preds = %29, %.preheader27
  %storemerge46 = phi i32 [ %34, %29 ], [ 0, %.preheader27 ]
  %28 = icmp slt i32 %storemerge46, 512
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = sext i32 %storemerge2 to i64
  %31 = getelementptr inbounds [2048 x i8], ptr @p, i64 %30
  %32 = sext i32 %storemerge46 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %31, i64 %32
  store i32 0, ptr %33, align 4
  %34 = add nsw i32 %storemerge46, 1
  br label %27, !llvm.loop !17

35:                                               ; preds = %27
  %36 = add nsw i32 %storemerge2, 1
  br label %25, !llvm.loop !18

37:                                               ; preds = %51, %.preheader26
  %storemerge3 = phi i32 [ %52, %51 ], [ 0, %.preheader26 ]
  %38 = icmp slt i32 %storemerge3, 4
  br i1 %38, label %.preheader25, label %53

.preheader25:                                     ; preds = %37
  br label %39

39:                                               ; preds = %49, %.preheader25
  %storemerge44 = phi i32 [ %50, %49 ], [ 0, %.preheader25 ]
  %40 = icmp slt i32 %storemerge44, 2
  br i1 %40, label %.preheader24, label %51

.preheader24:                                     ; preds = %39
  br label %41

41:                                               ; preds = %43, %.preheader24
  %storemerge45 = phi i32 [ 1, %43 ], [ 0, %.preheader24 ]
  %42 = icmp slt i32 %storemerge45, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %41
  %44 = shl nuw nsw i32 %storemerge44, 3
  %45 = add nuw nsw i32 0, %44
  %46 = add nsw i32 %storemerge3, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], ptr @p, i64 %47
  store i32 1, ptr %48, align 4
  br label %41, !llvm.loop !19

49:                                               ; preds = %41
  %50 = add nuw nsw i32 %storemerge44, 1
  br label %39, !llvm.loop !20

51:                                               ; preds = %39
  %52 = add nsw i32 %storemerge3, 1
  br label %37, !llvm.loop !21

53:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %68, %53
  %storemerge4 = phi i32 [ 0, %53 ], [ %69, %68 ]
  %55 = icmp slt i32 %storemerge4, 2
  br i1 %55, label %.preheader23, label %70

.preheader23:                                     ; preds = %54
  br label %56

56:                                               ; preds = %67, %.preheader23
  %storemerge42 = phi i32 [ 1, %67 ], [ 0, %.preheader23 ]
  %57 = icmp slt i32 %storemerge42, 1
  br i1 %57, label %.preheader22, label %68

.preheader22:                                     ; preds = %56
  br label %58

58:                                               ; preds = %60, %.preheader22
  %storemerge43 = phi i32 [ %66, %60 ], [ 0, %.preheader22 ]
  %59 = icmp slt i32 %storemerge43, 4
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = shl i32 %storemerge43, 6
  %62 = add nuw nsw i32 %61, 0
  %63 = add nuw nsw i32 %storemerge4, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %64
  store i32 1, ptr %65, align 4
  %66 = add nsw i32 %storemerge43, 1
  br label %58, !llvm.loop !22

67:                                               ; preds = %58
  br label %56, !llvm.loop !23

68:                                               ; preds = %56
  %69 = add nuw nsw i32 %storemerge4, 1
  br label %54, !llvm.loop !24

70:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %71

71:                                               ; preds = %87, %70
  %storemerge5 = phi i32 [ 0, %70 ], [ 1, %87 ]
  %72 = icmp slt i32 %storemerge5, 1
  br i1 %72, label %.preheader21, label %88

.preheader21:                                     ; preds = %71
  br label %73

73:                                               ; preds = %85, %.preheader21
  %storemerge40 = phi i32 [ %86, %85 ], [ 0, %.preheader21 ]
  %74 = icmp slt i32 %storemerge40, 4
  br i1 %74, label %.preheader20, label %87

.preheader20:                                     ; preds = %73
  br label %75

75:                                               ; preds = %77, %.preheader20
  %storemerge41 = phi i32 [ %84, %77 ], [ 0, %.preheader20 ]
  %76 = icmp slt i32 %storemerge41, 2
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = shl nuw nsw i32 %storemerge41, 6
  %79 = shl i32 %storemerge40, 3
  %80 = add i32 %78, %79
  %81 = add nuw nsw i32 0, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %82
  store i32 1, ptr %83, align 4
  %84 = add nuw nsw i32 %storemerge41, 1
  br label %75, !llvm.loop !25

85:                                               ; preds = %75
  %86 = add nsw i32 %storemerge40, 1
  br label %73, !llvm.loop !26

87:                                               ; preds = %73
  br label %71, !llvm.loop !27

88:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %89

89:                                               ; preds = %103, %88
  %storemerge6 = phi i32 [ 0, %88 ], [ %104, %103 ]
  %90 = icmp slt i32 %storemerge6, 2
  br i1 %90, label %.preheader19, label %105

.preheader19:                                     ; preds = %89
  br label %91

91:                                               ; preds = %101, %.preheader19
  %storemerge38 = phi i32 [ %102, %101 ], [ 0, %.preheader19 ]
  %92 = icmp slt i32 %storemerge38, 4
  br i1 %92, label %.preheader18, label %103

.preheader18:                                     ; preds = %91
  br label %93

93:                                               ; preds = %95, %.preheader18
  %storemerge39 = phi i32 [ 1, %95 ], [ 0, %.preheader18 ]
  %94 = icmp slt i32 %storemerge39, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %93
  %96 = shl i32 %storemerge38, 3
  %97 = add nuw nsw i32 0, %96
  %98 = add nuw nsw i32 %storemerge6, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %99
  store i32 1, ptr %100, align 4
  br label %93, !llvm.loop !28

101:                                              ; preds = %93
  %102 = add nsw i32 %storemerge38, 1
  br label %91, !llvm.loop !29

103:                                              ; preds = %91
  %104 = add nuw nsw i32 %storemerge6, 1
  br label %89, !llvm.loop !30

105:                                              ; preds = %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %106

106:                                              ; preds = %120, %105
  %storemerge7 = phi i32 [ 0, %105 ], [ %121, %120 ]
  %107 = icmp slt i32 %storemerge7, 4
  br i1 %107, label %.preheader17, label %122

.preheader17:                                     ; preds = %106
  br label %108

108:                                              ; preds = %119, %.preheader17
  %storemerge36 = phi i32 [ 1, %119 ], [ 0, %.preheader17 ]
  %109 = icmp slt i32 %storemerge36, 1
  br i1 %109, label %.preheader16, label %120

.preheader16:                                     ; preds = %108
  br label %110

110:                                              ; preds = %112, %.preheader16
  %storemerge37 = phi i32 [ %118, %112 ], [ 0, %.preheader16 ]
  %111 = icmp slt i32 %storemerge37, 2
  br i1 %111, label %112, label %119

112:                                              ; preds = %110
  %113 = shl nuw nsw i32 %storemerge37, 6
  %114 = add nuw nsw i32 %113, 0
  %115 = add nsw i32 %storemerge7, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nuw nsw i32 %storemerge37, 1
  br label %110, !llvm.loop !31

119:                                              ; preds = %110
  br label %108, !llvm.loop !32

120:                                              ; preds = %108
  %121 = add nsw i32 %storemerge7, 1
  br label %106, !llvm.loop !33

122:                                              ; preds = %106
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %123

123:                                              ; preds = %139, %122
  %storemerge8 = phi i32 [ 0, %122 ], [ 1, %139 ]
  %124 = icmp slt i32 %storemerge8, 1
  br i1 %124, label %.preheader15, label %140

.preheader15:                                     ; preds = %123
  br label %125

125:                                              ; preds = %137, %.preheader15
  %storemerge34 = phi i32 [ %138, %137 ], [ 0, %.preheader15 ]
  %126 = icmp slt i32 %storemerge34, 2
  br i1 %126, label %.preheader14, label %139

.preheader14:                                     ; preds = %125
  br label %127

127:                                              ; preds = %129, %.preheader14
  %storemerge35 = phi i32 [ %136, %129 ], [ 0, %.preheader14 ]
  %128 = icmp slt i32 %storemerge35, 4
  br i1 %128, label %129, label %137

129:                                              ; preds = %127
  %130 = shl i32 %storemerge35, 6
  %131 = shl nuw nsw i32 %storemerge34, 3
  %132 = add nuw i32 %130, %131
  %133 = add nuw nsw i32 0, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %134
  store i32 1, ptr %135, align 4
  %136 = add nsw i32 %storemerge35, 1
  br label %127, !llvm.loop !34

137:                                              ; preds = %127
  %138 = add nuw nsw i32 %storemerge34, 1
  br label %125, !llvm.loop !35

139:                                              ; preds = %125
  br label %123, !llvm.loop !36

140:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %141

141:                                              ; preds = %152, %140
  %storemerge9 = phi i32 [ 0, %140 ], [ %153, %152 ]
  %142 = icmp slt i32 %storemerge9, 3
  br i1 %142, label %.preheader13, label %154

.preheader13:                                     ; preds = %141
  br label %143

143:                                              ; preds = %151, %.preheader13
  %storemerge32 = phi i32 [ 1, %151 ], [ 0, %.preheader13 ]
  %144 = icmp slt i32 %storemerge32, 1
  br i1 %144, label %.preheader12, label %152

.preheader12:                                     ; preds = %143
  br label %145

145:                                              ; preds = %147, %.preheader12
  %storemerge33 = phi i32 [ 1, %147 ], [ 0, %.preheader12 ]
  %146 = icmp slt i32 %storemerge33, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = add nuw nsw i32 %storemerge9, 0
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %149
  store i32 1, ptr %150, align 4
  br label %145, !llvm.loop !37

151:                                              ; preds = %145
  br label %143, !llvm.loop !38

152:                                              ; preds = %143
  %153 = add nsw i32 %storemerge9, 1
  br label %141, !llvm.loop !39

154:                                              ; preds = %141
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %155

155:                                              ; preds = %169, %154
  %storemerge10 = phi i32 [ 0, %154 ], [ 1, %169 ]
  %156 = icmp slt i32 %storemerge10, 1
  br i1 %156, label %.preheader11, label %170

.preheader11:                                     ; preds = %155
  br label %157

157:                                              ; preds = %167, %.preheader11
  %storemerge30 = phi i32 [ %168, %167 ], [ 0, %.preheader11 ]
  %158 = icmp slt i32 %storemerge30, 3
  br i1 %158, label %.preheader10, label %169

.preheader10:                                     ; preds = %157
  br label %159

159:                                              ; preds = %161, %.preheader10
  %storemerge31 = phi i32 [ 1, %161 ], [ 0, %.preheader10 ]
  %160 = icmp slt i32 %storemerge31, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %159
  %162 = shl i32 %storemerge30, 3
  %163 = add nuw nsw i32 0, %162
  %164 = add nuw nsw i32 0, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %165
  store i32 1, ptr %166, align 4
  br label %159, !llvm.loop !40

167:                                              ; preds = %159
  %168 = add nsw i32 %storemerge30, 1
  br label %157, !llvm.loop !41

169:                                              ; preds = %157
  br label %155, !llvm.loop !42

170:                                              ; preds = %155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %171

171:                                              ; preds = %185, %170
  %storemerge11 = phi i32 [ 0, %170 ], [ 1, %185 ]
  %172 = icmp slt i32 %storemerge11, 1
  br i1 %172, label %.preheader9, label %186

.preheader9:                                      ; preds = %171
  br label %173

173:                                              ; preds = %184, %.preheader9
  %storemerge28 = phi i32 [ 1, %184 ], [ 0, %.preheader9 ]
  %174 = icmp slt i32 %storemerge28, 1
  br i1 %174, label %.preheader8, label %185

.preheader8:                                      ; preds = %173
  br label %175

175:                                              ; preds = %177, %.preheader8
  %storemerge29 = phi i32 [ %183, %177 ], [ 0, %.preheader8 ]
  %176 = icmp slt i32 %storemerge29, 3
  br i1 %176, label %177, label %184

177:                                              ; preds = %175
  %178 = shl i32 %storemerge29, 6
  %179 = add nuw nsw i32 %178, 0
  %180 = add nuw nsw i32 0, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nsw i32 %storemerge29, 1
  br label %175, !llvm.loop !43

184:                                              ; preds = %175
  br label %173, !llvm.loop !44

185:                                              ; preds = %173
  br label %171, !llvm.loop !45

186:                                              ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %187

187:                                              ; preds = %201, %186
  %storemerge12 = phi i32 [ 0, %186 ], [ %202, %201 ]
  %188 = icmp slt i32 %storemerge12, 2
  br i1 %188, label %.preheader7, label %203

.preheader7:                                      ; preds = %187
  br label %189

189:                                              ; preds = %199, %.preheader7
  %storemerge26 = phi i32 [ %200, %199 ], [ 0, %.preheader7 ]
  %190 = icmp slt i32 %storemerge26, 2
  br i1 %190, label %.preheader6, label %201

.preheader6:                                      ; preds = %189
  br label %191

191:                                              ; preds = %193, %.preheader6
  %storemerge27 = phi i32 [ 1, %193 ], [ 0, %.preheader6 ]
  %192 = icmp slt i32 %storemerge27, 1
  br i1 %192, label %193, label %199

193:                                              ; preds = %191
  %194 = shl nuw nsw i32 %storemerge26, 3
  %195 = add nuw nsw i32 0, %194
  %196 = add nuw nsw i32 %storemerge12, %195
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %197
  store i32 1, ptr %198, align 4
  br label %191, !llvm.loop !46

199:                                              ; preds = %191
  %200 = add nuw nsw i32 %storemerge26, 1
  br label %189, !llvm.loop !47

201:                                              ; preds = %189
  %202 = add nuw nsw i32 %storemerge12, 1
  br label %187, !llvm.loop !48

203:                                              ; preds = %187
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %204

204:                                              ; preds = %218, %203
  %storemerge13 = phi i32 [ 0, %203 ], [ %219, %218 ]
  %205 = icmp slt i32 %storemerge13, 2
  br i1 %205, label %.preheader5, label %220

.preheader5:                                      ; preds = %204
  br label %206

206:                                              ; preds = %217, %.preheader5
  %storemerge24 = phi i32 [ 1, %217 ], [ 0, %.preheader5 ]
  %207 = icmp slt i32 %storemerge24, 1
  br i1 %207, label %.preheader4, label %218

.preheader4:                                      ; preds = %206
  br label %208

208:                                              ; preds = %210, %.preheader4
  %storemerge25 = phi i32 [ %216, %210 ], [ 0, %.preheader4 ]
  %209 = icmp slt i32 %storemerge25, 2
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = shl nuw nsw i32 %storemerge25, 6
  %212 = add nuw nsw i32 %211, 0
  %213 = add nuw nsw i32 %storemerge13, %212
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %214
  store i32 1, ptr %215, align 4
  %216 = add nuw nsw i32 %storemerge25, 1
  br label %208, !llvm.loop !49

217:                                              ; preds = %208
  br label %206, !llvm.loop !50

218:                                              ; preds = %206
  %219 = add nuw nsw i32 %storemerge13, 1
  br label %204, !llvm.loop !51

220:                                              ; preds = %204
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %221

221:                                              ; preds = %237, %220
  %storemerge14 = phi i32 [ 0, %220 ], [ 1, %237 ]
  %222 = icmp slt i32 %storemerge14, 1
  br i1 %222, label %.preheader3, label %238

.preheader3:                                      ; preds = %221
  br label %223

223:                                              ; preds = %235, %.preheader3
  %storemerge22 = phi i32 [ %236, %235 ], [ 0, %.preheader3 ]
  %224 = icmp slt i32 %storemerge22, 2
  br i1 %224, label %.preheader2, label %237

.preheader2:                                      ; preds = %223
  br label %225

225:                                              ; preds = %227, %.preheader2
  %storemerge23 = phi i32 [ %234, %227 ], [ 0, %.preheader2 ]
  %226 = icmp slt i32 %storemerge23, 2
  br i1 %226, label %227, label %235

227:                                              ; preds = %225
  %228 = shl nuw nsw i32 %storemerge23, 6
  %229 = shl nuw nsw i32 %storemerge22, 3
  %230 = add nuw nsw i32 %228, %229
  %231 = add nuw nsw i32 0, %230
  %232 = zext nneg i32 %231 to i64
  %233 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %232
  store i32 1, ptr %233, align 4
  %234 = add nuw nsw i32 %storemerge23, 1
  br label %225, !llvm.loop !52

235:                                              ; preds = %225
  %236 = add nuw nsw i32 %storemerge22, 1
  br label %223, !llvm.loop !53

237:                                              ; preds = %223
  br label %221, !llvm.loop !54

238:                                              ; preds = %221
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %239

239:                                              ; preds = %255, %238
  %storemerge15 = phi i32 [ 0, %238 ], [ %256, %255 ]
  %240 = icmp slt i32 %storemerge15, 2
  br i1 %240, label %.preheader1, label %257

.preheader1:                                      ; preds = %239
  br label %241

241:                                              ; preds = %253, %.preheader1
  %storemerge20 = phi i32 [ %254, %253 ], [ 0, %.preheader1 ]
  %242 = icmp slt i32 %storemerge20, 2
  br i1 %242, label %.preheader, label %255

.preheader:                                       ; preds = %241
  br label %243

243:                                              ; preds = %245, %.preheader
  %storemerge21 = phi i32 [ %252, %245 ], [ 0, %.preheader ]
  %244 = icmp slt i32 %storemerge21, 2
  br i1 %244, label %245, label %253

245:                                              ; preds = %243
  %246 = shl nuw nsw i32 %storemerge21, 6
  %247 = shl nuw nsw i32 %storemerge20, 3
  %248 = add nuw nsw i32 %246, %247
  %249 = add nuw nsw i32 %storemerge15, %248
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %250
  store i32 1, ptr %251, align 4
  %252 = add nuw nsw i32 %storemerge21, 1
  br label %243, !llvm.loop !55

253:                                              ; preds = %243
  %254 = add nuw nsw i32 %storemerge20, 1
  br label %241, !llvm.loop !56

255:                                              ; preds = %241
  %256 = add nuw nsw i32 %storemerge15, 1
  br label %239, !llvm.loop !57

257:                                              ; preds = %239
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %258 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %258, 0
  br i1 %.not, label %261, label %259

259:                                              ; preds = %257
  %260 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %260, ptr @n, align 4
  br label %262

261:                                              ; preds = %257
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %262

262:                                              ; preds = %261, %259
  %263 = load i32, ptr @n, align 4
  %264 = call i32 @Trial(i32 noundef %263)
  %.not16 = icmp eq i32 %264, 0
  br i1 %.not16, label %265, label %266

265:                                              ; preds = %262
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %269

266:                                              ; preds = %262
  %267 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %267, 2005
  br i1 %.not18, label %269, label %268

268:                                              ; preds = %266
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %269

269:                                              ; preds = %268, %266, %265
  %270 = load i32, ptr @n, align 4
  %271 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %270) #4
  %272 = load i32, ptr @kount, align 4
  %273 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %272) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
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
