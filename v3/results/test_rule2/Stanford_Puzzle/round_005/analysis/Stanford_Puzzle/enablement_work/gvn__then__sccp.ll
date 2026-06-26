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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %19, %18 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %20, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

20:                                               ; preds = %13, %6
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  store i32 %28, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit:                                        ; preds = %27
  br label %34

34:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %28, %32 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = phi i32 [ %0, %1 ], [ %25, %24 ]
  %8 = phi i32 [ 0, %1 ], [ %26, %24 ]
  store i32 %8, ptr %3, align 4
  %9 = icmp slt i32 %8, 13
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %24, label %17

17:                                               ; preds = %10
  %18 = call i32 @Fit(i32 noundef %8, i32 noundef %7)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %8, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %19
  call void @Remove(i32 noundef %8, i32 noundef %0)
  br label %24

24:                                               ; preds = %23, %17, %10
  %25 = phi i32 [ %0, %23 ], [ %7, %17 ], [ %7, %10 ]
  %26 = add nsw i32 %8, 1
  br label %6, !llvm.loop !12

27:                                               ; preds = %19, %6
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %.preheader31

.preheader31:                                     ; preds = %5
  br label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %33, %.preheader31
  %13 = phi i32 [ %34, %33 ], [ 1, %.preheader31 ]
  store i32 %13, ptr %1, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %12
  br label %15

.preheader28:                                     ; preds = %12
  br label %35

15:                                               ; preds = %31, %.preheader30
  %16 = phi i32 [ %20, %31 ], [ %13, %.preheader30 ]
  %17 = phi i32 [ %32, %31 ], [ 1, %.preheader30 ]
  store i32 %17, ptr %2, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %.preheader29, label %33

.preheader29:                                     ; preds = %15
  br label %19

19:                                               ; preds = %23, %.preheader29
  %20 = phi i32 [ %13, %23 ], [ %16, %.preheader29 ]
  %21 = phi i32 [ %30, %23 ], [ 1, %.preheader29 ]
  store i32 %21, ptr %3, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  %25 = shl i32 %17, 3
  %26 = add i32 %24, %25
  %27 = add nsw i32 %13, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  %30 = add nsw i32 %21, 1
  br label %19, !llvm.loop !14

31:                                               ; preds = %19
  %32 = add nsw i32 %17, 1
  br label %15, !llvm.loop !15

33:                                               ; preds = %15
  %34 = add nsw i32 %16, 1
  br label %12, !llvm.loop !16

35:                                               ; preds = %47, %.preheader28
  %36 = phi i32 [ %48, %47 ], [ 0, %.preheader28 ]
  store i32 %36, ptr %1, align 4
  %37 = icmp slt i32 %36, 13
  br i1 %37, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %35
  br label %38

.preheader26:                                     ; preds = %35
  br label %49

38:                                               ; preds = %41, %.preheader27
  %39 = phi i32 [ %46, %41 ], [ 0, %.preheader27 ]
  store i32 %39, ptr %4, align 4
  %40 = icmp slt i32 %39, 512
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds [2048 x i8], ptr @p, i64 %42
  %44 = sext i32 %39 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %43, i64 %44
  store i32 0, ptr %45, align 4
  %46 = add nsw i32 %39, 1
  br label %38, !llvm.loop !17

47:                                               ; preds = %38
  %48 = add nsw i32 %36, 1
  br label %35, !llvm.loop !18

49:                                               ; preds = %68, %.preheader26
  %50 = phi i32 [ %69, %68 ], [ 0, %.preheader26 ]
  store i32 %50, ptr %1, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %.preheader25, label %70

.preheader25:                                     ; preds = %49
  br label %52

52:                                               ; preds = %66, %.preheader25
  %53 = phi i32 [ %57, %66 ], [ %50, %.preheader25 ]
  %54 = phi i32 [ %67, %66 ], [ 0, %.preheader25 ]
  store i32 %54, ptr %2, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %.preheader24, label %68

.preheader24:                                     ; preds = %52
  br label %56

56:                                               ; preds = %60, %.preheader24
  %57 = phi i32 [ %50, %60 ], [ %53, %.preheader24 ]
  %58 = phi i32 [ 1, %60 ], [ 0, %.preheader24 ]
  store i32 %58, ptr %3, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = shl nuw nsw i32 %54, 3
  %62 = add nuw nsw i32 0, %61
  %63 = add nsw i32 %50, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i8], ptr @p, i64 %64
  store i32 1, ptr %65, align 4
  br label %56, !llvm.loop !19

66:                                               ; preds = %56
  %67 = add nuw nsw i32 %54, 1
  br label %52, !llvm.loop !20

68:                                               ; preds = %52
  %69 = add nsw i32 %53, 1
  br label %49, !llvm.loop !21

70:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %71

71:                                               ; preds = %90, %70
  %72 = phi i32 [ 0, %70 ], [ %91, %90 ]
  store i32 %72, ptr %1, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %.preheader23, label %92

.preheader23:                                     ; preds = %71
  br label %74

74:                                               ; preds = %89, %.preheader23
  %75 = phi i32 [ %79, %89 ], [ %72, %.preheader23 ]
  %76 = phi i32 [ 1, %89 ], [ 0, %.preheader23 ]
  store i32 %76, ptr %2, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %.preheader22, label %90

.preheader22:                                     ; preds = %74
  br label %78

78:                                               ; preds = %82, %.preheader22
  %79 = phi i32 [ %72, %82 ], [ %75, %.preheader22 ]
  %80 = phi i32 [ %88, %82 ], [ 0, %.preheader22 ]
  store i32 %80, ptr %3, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = shl i32 %80, 6
  %84 = add nuw nsw i32 %83, 0
  %85 = add nuw nsw i32 %72, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %86
  store i32 1, ptr %87, align 4
  %88 = add nsw i32 %80, 1
  br label %78, !llvm.loop !22

89:                                               ; preds = %78
  br label %74, !llvm.loop !23

90:                                               ; preds = %74
  %91 = add nuw nsw i32 %75, 1
  br label %71, !llvm.loop !24

92:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = phi i32 [ 0, %92 ], [ 1, %112 ]
  store i32 %94, ptr %1, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %.preheader21, label %113

.preheader21:                                     ; preds = %93
  br label %96

96:                                               ; preds = %110, %.preheader21
  %97 = phi i32 [ %111, %110 ], [ 0, %.preheader21 ]
  store i32 %97, ptr %2, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %.preheader20, label %112

.preheader20:                                     ; preds = %96
  br label %99

99:                                               ; preds = %102, %.preheader20
  %100 = phi i32 [ %109, %102 ], [ 0, %.preheader20 ]
  store i32 %100, ptr %3, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = shl nuw nsw i32 %100, 6
  %104 = shl i32 %97, 3
  %105 = add i32 %103, %104
  %106 = add nuw nsw i32 0, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %107
  store i32 1, ptr %108, align 4
  %109 = add nuw nsw i32 %100, 1
  br label %99, !llvm.loop !25

110:                                              ; preds = %99
  %111 = add nsw i32 %97, 1
  br label %96, !llvm.loop !26

112:                                              ; preds = %96
  br label %93, !llvm.loop !27

113:                                              ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %114

114:                                              ; preds = %133, %113
  %115 = phi i32 [ 0, %113 ], [ %134, %133 ]
  store i32 %115, ptr %1, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %.preheader19, label %135

.preheader19:                                     ; preds = %114
  br label %117

117:                                              ; preds = %131, %.preheader19
  %118 = phi i32 [ %122, %131 ], [ %115, %.preheader19 ]
  %119 = phi i32 [ %132, %131 ], [ 0, %.preheader19 ]
  store i32 %119, ptr %2, align 4
  %120 = icmp slt i32 %119, 4
  br i1 %120, label %.preheader18, label %133

.preheader18:                                     ; preds = %117
  br label %121

121:                                              ; preds = %125, %.preheader18
  %122 = phi i32 [ %115, %125 ], [ %118, %.preheader18 ]
  %123 = phi i32 [ 1, %125 ], [ 0, %.preheader18 ]
  store i32 %123, ptr %3, align 4
  %124 = icmp slt i32 %123, 1
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = shl i32 %119, 3
  %127 = add nuw nsw i32 0, %126
  %128 = add nuw nsw i32 %115, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %129
  store i32 1, ptr %130, align 4
  br label %121, !llvm.loop !28

131:                                              ; preds = %121
  %132 = add nsw i32 %119, 1
  br label %117, !llvm.loop !29

133:                                              ; preds = %117
  %134 = add nuw nsw i32 %118, 1
  br label %114, !llvm.loop !30

135:                                              ; preds = %114
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %136

136:                                              ; preds = %155, %135
  %137 = phi i32 [ 0, %135 ], [ %156, %155 ]
  store i32 %137, ptr %1, align 4
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %.preheader17, label %157

.preheader17:                                     ; preds = %136
  br label %139

139:                                              ; preds = %154, %.preheader17
  %140 = phi i32 [ %144, %154 ], [ %137, %.preheader17 ]
  %141 = phi i32 [ 1, %154 ], [ 0, %.preheader17 ]
  store i32 %141, ptr %2, align 4
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %.preheader16, label %155

.preheader16:                                     ; preds = %139
  br label %143

143:                                              ; preds = %147, %.preheader16
  %144 = phi i32 [ %137, %147 ], [ %140, %.preheader16 ]
  %145 = phi i32 [ %153, %147 ], [ 0, %.preheader16 ]
  store i32 %145, ptr %3, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = shl nuw nsw i32 %145, 6
  %149 = add nuw nsw i32 %148, 0
  %150 = add nsw i32 %137, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %151
  store i32 1, ptr %152, align 4
  %153 = add nuw nsw i32 %145, 1
  br label %143, !llvm.loop !31

154:                                              ; preds = %143
  br label %139, !llvm.loop !32

155:                                              ; preds = %139
  %156 = add nsw i32 %140, 1
  br label %136, !llvm.loop !33

157:                                              ; preds = %136
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %158

158:                                              ; preds = %177, %157
  %159 = phi i32 [ 0, %157 ], [ 1, %177 ]
  store i32 %159, ptr %1, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %.preheader15, label %178

.preheader15:                                     ; preds = %158
  br label %161

161:                                              ; preds = %175, %.preheader15
  %162 = phi i32 [ %176, %175 ], [ 0, %.preheader15 ]
  store i32 %162, ptr %2, align 4
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %.preheader14, label %177

.preheader14:                                     ; preds = %161
  br label %164

164:                                              ; preds = %167, %.preheader14
  %165 = phi i32 [ %174, %167 ], [ 0, %.preheader14 ]
  store i32 %165, ptr %3, align 4
  %166 = icmp slt i32 %165, 4
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = shl i32 %165, 6
  %169 = shl nuw nsw i32 %162, 3
  %170 = add nuw i32 %168, %169
  %171 = add nuw nsw i32 0, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %172
  store i32 1, ptr %173, align 4
  %174 = add nsw i32 %165, 1
  br label %164, !llvm.loop !34

175:                                              ; preds = %164
  %176 = add nuw nsw i32 %162, 1
  br label %161, !llvm.loop !35

177:                                              ; preds = %161
  br label %158, !llvm.loop !36

178:                                              ; preds = %158
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %179

179:                                              ; preds = %195, %178
  %180 = phi i32 [ 0, %178 ], [ %196, %195 ]
  store i32 %180, ptr %1, align 4
  %181 = icmp slt i32 %180, 3
  br i1 %181, label %.preheader13, label %197

.preheader13:                                     ; preds = %179
  br label %182

182:                                              ; preds = %194, %.preheader13
  %183 = phi i32 [ %187, %194 ], [ %180, %.preheader13 ]
  %184 = phi i32 [ 1, %194 ], [ 0, %.preheader13 ]
  store i32 %184, ptr %2, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %.preheader12, label %195

.preheader12:                                     ; preds = %182
  br label %186

186:                                              ; preds = %190, %.preheader12
  %187 = phi i32 [ %180, %190 ], [ %183, %.preheader12 ]
  %188 = phi i32 [ 1, %190 ], [ 0, %.preheader12 ]
  store i32 %188, ptr %3, align 4
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = add nuw nsw i32 %180, 0
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %192
  store i32 1, ptr %193, align 4
  br label %186, !llvm.loop !37

194:                                              ; preds = %186
  br label %182, !llvm.loop !38

195:                                              ; preds = %182
  %196 = add nsw i32 %183, 1
  br label %179, !llvm.loop !39

197:                                              ; preds = %179
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %198

198:                                              ; preds = %215, %197
  %199 = phi i32 [ 0, %197 ], [ 1, %215 ]
  store i32 %199, ptr %1, align 4
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %.preheader11, label %216

.preheader11:                                     ; preds = %198
  br label %201

201:                                              ; preds = %213, %.preheader11
  %202 = phi i32 [ %214, %213 ], [ 0, %.preheader11 ]
  store i32 %202, ptr %2, align 4
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %.preheader10, label %215

.preheader10:                                     ; preds = %201
  br label %204

204:                                              ; preds = %207, %.preheader10
  %205 = phi i32 [ 1, %207 ], [ 0, %.preheader10 ]
  store i32 %205, ptr %3, align 4
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = shl i32 %202, 3
  %209 = add nuw nsw i32 0, %208
  %210 = add nuw nsw i32 0, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %211
  store i32 1, ptr %212, align 4
  br label %204, !llvm.loop !40

213:                                              ; preds = %204
  %214 = add nsw i32 %202, 1
  br label %201, !llvm.loop !41

215:                                              ; preds = %201
  br label %198, !llvm.loop !42

216:                                              ; preds = %198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %217

217:                                              ; preds = %234, %216
  %218 = phi i32 [ 0, %216 ], [ 1, %234 ]
  store i32 %218, ptr %1, align 4
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %.preheader9, label %235

.preheader9:                                      ; preds = %217
  br label %220

220:                                              ; preds = %233, %.preheader9
  %221 = phi i32 [ 1, %233 ], [ 0, %.preheader9 ]
  store i32 %221, ptr %2, align 4
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %.preheader8, label %234

.preheader8:                                      ; preds = %220
  br label %223

223:                                              ; preds = %226, %.preheader8
  %224 = phi i32 [ %232, %226 ], [ 0, %.preheader8 ]
  store i32 %224, ptr %3, align 4
  %225 = icmp slt i32 %224, 3
  br i1 %225, label %226, label %233

226:                                              ; preds = %223
  %227 = shl i32 %224, 6
  %228 = add nuw nsw i32 %227, 0
  %229 = add nuw nsw i32 0, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %230
  store i32 1, ptr %231, align 4
  %232 = add nsw i32 %224, 1
  br label %223, !llvm.loop !43

233:                                              ; preds = %223
  br label %220, !llvm.loop !44

234:                                              ; preds = %220
  br label %217, !llvm.loop !45

235:                                              ; preds = %217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %236

236:                                              ; preds = %255, %235
  %237 = phi i32 [ 0, %235 ], [ %256, %255 ]
  store i32 %237, ptr %1, align 4
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %.preheader7, label %257

.preheader7:                                      ; preds = %236
  br label %239

239:                                              ; preds = %253, %.preheader7
  %240 = phi i32 [ %244, %253 ], [ %237, %.preheader7 ]
  %241 = phi i32 [ %254, %253 ], [ 0, %.preheader7 ]
  store i32 %241, ptr %2, align 4
  %242 = icmp slt i32 %241, 2
  br i1 %242, label %.preheader6, label %255

.preheader6:                                      ; preds = %239
  br label %243

243:                                              ; preds = %247, %.preheader6
  %244 = phi i32 [ %237, %247 ], [ %240, %.preheader6 ]
  %245 = phi i32 [ 1, %247 ], [ 0, %.preheader6 ]
  store i32 %245, ptr %3, align 4
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = shl nuw nsw i32 %241, 3
  %249 = add nuw nsw i32 0, %248
  %250 = add nuw nsw i32 %237, %249
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %251
  store i32 1, ptr %252, align 4
  br label %243, !llvm.loop !46

253:                                              ; preds = %243
  %254 = add nuw nsw i32 %241, 1
  br label %239, !llvm.loop !47

255:                                              ; preds = %239
  %256 = add nuw nsw i32 %240, 1
  br label %236, !llvm.loop !48

257:                                              ; preds = %236
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %258

258:                                              ; preds = %277, %257
  %259 = phi i32 [ 0, %257 ], [ %278, %277 ]
  store i32 %259, ptr %1, align 4
  %260 = icmp slt i32 %259, 2
  br i1 %260, label %.preheader5, label %279

.preheader5:                                      ; preds = %258
  br label %261

261:                                              ; preds = %276, %.preheader5
  %262 = phi i32 [ %266, %276 ], [ %259, %.preheader5 ]
  %263 = phi i32 [ 1, %276 ], [ 0, %.preheader5 ]
  store i32 %263, ptr %2, align 4
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %.preheader4, label %277

.preheader4:                                      ; preds = %261
  br label %265

265:                                              ; preds = %269, %.preheader4
  %266 = phi i32 [ %259, %269 ], [ %262, %.preheader4 ]
  %267 = phi i32 [ %275, %269 ], [ 0, %.preheader4 ]
  store i32 %267, ptr %3, align 4
  %268 = icmp slt i32 %267, 2
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = shl nuw nsw i32 %267, 6
  %271 = add nuw nsw i32 %270, 0
  %272 = add nuw nsw i32 %259, %271
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %273
  store i32 1, ptr %274, align 4
  %275 = add nuw nsw i32 %267, 1
  br label %265, !llvm.loop !49

276:                                              ; preds = %265
  br label %261, !llvm.loop !50

277:                                              ; preds = %261
  %278 = add nuw nsw i32 %262, 1
  br label %258, !llvm.loop !51

279:                                              ; preds = %258
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %280

280:                                              ; preds = %299, %279
  %281 = phi i32 [ 0, %279 ], [ 1, %299 ]
  store i32 %281, ptr %1, align 4
  %282 = icmp slt i32 %281, 1
  br i1 %282, label %.preheader3, label %300

.preheader3:                                      ; preds = %280
  br label %283

283:                                              ; preds = %297, %.preheader3
  %284 = phi i32 [ %298, %297 ], [ 0, %.preheader3 ]
  store i32 %284, ptr %2, align 4
  %285 = icmp slt i32 %284, 2
  br i1 %285, label %.preheader2, label %299

.preheader2:                                      ; preds = %283
  br label %286

286:                                              ; preds = %289, %.preheader2
  %287 = phi i32 [ %296, %289 ], [ 0, %.preheader2 ]
  store i32 %287, ptr %3, align 4
  %288 = icmp slt i32 %287, 2
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = shl nuw nsw i32 %287, 6
  %291 = shl nuw nsw i32 %284, 3
  %292 = add nuw nsw i32 %290, %291
  %293 = add nuw nsw i32 0, %292
  %294 = zext nneg i32 %293 to i64
  %295 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %294
  store i32 1, ptr %295, align 4
  %296 = add nuw nsw i32 %287, 1
  br label %286, !llvm.loop !52

297:                                              ; preds = %286
  %298 = add nuw nsw i32 %284, 1
  br label %283, !llvm.loop !53

299:                                              ; preds = %283
  br label %280, !llvm.loop !54

300:                                              ; preds = %280
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %301

301:                                              ; preds = %322, %300
  %302 = phi i32 [ 0, %300 ], [ %323, %322 ]
  store i32 %302, ptr %1, align 4
  %303 = icmp slt i32 %302, 2
  br i1 %303, label %.preheader1, label %324

.preheader1:                                      ; preds = %301
  br label %304

304:                                              ; preds = %320, %.preheader1
  %305 = phi i32 [ %309, %320 ], [ %302, %.preheader1 ]
  %306 = phi i32 [ %321, %320 ], [ 0, %.preheader1 ]
  store i32 %306, ptr %2, align 4
  %307 = icmp slt i32 %306, 2
  br i1 %307, label %.preheader, label %322

.preheader:                                       ; preds = %304
  br label %308

308:                                              ; preds = %312, %.preheader
  %309 = phi i32 [ %302, %312 ], [ %305, %.preheader ]
  %310 = phi i32 [ %319, %312 ], [ 0, %.preheader ]
  store i32 %310, ptr %3, align 4
  %311 = icmp slt i32 %310, 2
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = shl nuw nsw i32 %310, 6
  %314 = shl nuw nsw i32 %306, 3
  %315 = add nuw nsw i32 %313, %314
  %316 = add nuw nsw i32 %302, %315
  %317 = zext nneg i32 %316 to i64
  %318 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %317
  store i32 1, ptr %318, align 4
  %319 = add nuw nsw i32 %310, 1
  br label %308, !llvm.loop !55

320:                                              ; preds = %308
  %321 = add nuw nsw i32 %306, 1
  br label %304, !llvm.loop !56

322:                                              ; preds = %304
  %323 = add nuw nsw i32 %305, 1
  br label %301, !llvm.loop !57

324:                                              ; preds = %301
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %325 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %325, 0
  br i1 %.not, label %328, label %326

326:                                              ; preds = %324
  %327 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %327, ptr @n, align 4
  br label %329

328:                                              ; preds = %324
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %329

329:                                              ; preds = %328, %326
  %330 = phi i32 [ %.pre, %328 ], [ %327, %326 ]
  %331 = call i32 @Trial(i32 noundef %330)
  %.not16 = icmp eq i32 %331, 0
  br i1 %.not16, label %332, label %333

332:                                              ; preds = %329
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %336

333:                                              ; preds = %329
  %334 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %334, 2005
  br i1 %.not18, label %336, label %335

335:                                              ; preds = %333
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %336

336:                                              ; preds = %335, %333, %332
  %337 = load i32, ptr @n, align 4
  %338 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %337) #4
  %339 = load i32, ptr @kount, align 4
  %340 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %339) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
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
