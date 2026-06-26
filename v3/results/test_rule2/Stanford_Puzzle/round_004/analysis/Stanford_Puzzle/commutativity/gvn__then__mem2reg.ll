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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %15, %2
  %4 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %10, %5
  %16 = add nsw i32 %4, 1
  br label %3, !llvm.loop !7

17:                                               ; preds = %10, %3
  %storemerge1 = phi i32 [ 0, %10 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nsw i32 %4, 1
  br label %3, !llvm.loop !9

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %24

24:                                               ; preds = %30, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %23, %16 ]
  %25 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %26, label %.loopexit

26:                                               ; preds = %24
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %30

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !10

.loopexit:                                        ; preds = %24
  br label %31

31:                                               ; preds = %.loopexit, %29
  %storemerge2 = phi i32 [ %25, %29 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = phi i32 [ %0, %1 ], [ %23, %22 ]
  %6 = phi i32 [ 0, %1 ], [ %24, %22 ]
  %7 = icmp slt i32 %6, 13
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %22, label %15

15:                                               ; preds = %8
  %16 = call i32 @Fit(i32 noundef %6, i32 noundef %5)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %15
  %18 = call i32 @Place(i32 noundef %6, i32 noundef %5)
  %19 = call i32 @Trial(i32 noundef %18)
  %.not3 = icmp ne i32 %19, 0
  %20 = icmp eq i32 %18, 0
  %or.cond = select i1 %.not3, i1 true, i1 %20
  br i1 %or.cond, label %25, label %21

21:                                               ; preds = %17
  call void @Remove(i32 noundef %6, i32 noundef %0)
  br label %22

22:                                               ; preds = %21, %15, %8
  %23 = phi i32 [ %0, %21 ], [ %5, %15 ], [ %5, %8 ]
  %24 = add nsw i32 %6, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %17, %4
  %storemerge1 = phi i32 [ 1, %17 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %4 ]
  %3 = icmp slt i32 %2, 512
  br i1 %3, label %4, label %.preheader31

.preheader31:                                     ; preds = %1
  br label %8

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %29, %.preheader31
  %9 = phi i32 [ %30, %29 ], [ 1, %.preheader31 ]
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %8
  br label %11

.preheader28:                                     ; preds = %8
  br label %31

11:                                               ; preds = %27, %.preheader30
  %12 = phi i32 [ %16, %27 ], [ %9, %.preheader30 ]
  %13 = phi i32 [ %28, %27 ], [ 1, %.preheader30 ]
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %.preheader29, label %29

.preheader29:                                     ; preds = %11
  br label %15

15:                                               ; preds = %19, %.preheader29
  %16 = phi i32 [ %9, %19 ], [ %12, %.preheader29 ]
  %17 = phi i32 [ %26, %19 ], [ 1, %.preheader29 ]
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = shl i32 %17, 6
  %21 = shl i32 %13, 3
  %22 = add i32 %20, %21
  %23 = add nsw i32 %9, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  %26 = add nsw i32 %17, 1
  br label %15, !llvm.loop !14

27:                                               ; preds = %15
  %28 = add nsw i32 %13, 1
  br label %11, !llvm.loop !15

29:                                               ; preds = %11
  %30 = add nsw i32 %12, 1
  br label %8, !llvm.loop !16

31:                                               ; preds = %43, %.preheader28
  %32 = phi i32 [ %44, %43 ], [ 0, %.preheader28 ]
  %33 = icmp slt i32 %32, 13
  br i1 %33, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %31
  br label %34

.preheader26:                                     ; preds = %31
  br label %45

34:                                               ; preds = %37, %.preheader27
  %35 = phi i32 [ %42, %37 ], [ 0, %.preheader27 ]
  %36 = icmp slt i32 %35, 512
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = sext i32 %32 to i64
  %39 = getelementptr inbounds [2048 x i8], ptr @p, i64 %38
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds [4 x i8], ptr %39, i64 %40
  store i32 0, ptr %41, align 4
  %42 = add nsw i32 %35, 1
  br label %34, !llvm.loop !17

43:                                               ; preds = %34
  %44 = add nsw i32 %32, 1
  br label %31, !llvm.loop !18

45:                                               ; preds = %66, %.preheader26
  %46 = phi i32 [ %67, %66 ], [ 0, %.preheader26 ]
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %.preheader25, label %68

.preheader25:                                     ; preds = %45
  br label %48

48:                                               ; preds = %64, %.preheader25
  %49 = phi i32 [ %53, %64 ], [ %46, %.preheader25 ]
  %50 = phi i32 [ %65, %64 ], [ 0, %.preheader25 ]
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %.preheader24, label %66

.preheader24:                                     ; preds = %48
  br label %52

52:                                               ; preds = %56, %.preheader24
  %53 = phi i32 [ %46, %56 ], [ %49, %.preheader24 ]
  %54 = phi i32 [ %63, %56 ], [ 0, %.preheader24 ]
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = shl i32 %54, 6
  %58 = shl i32 %50, 3
  %59 = add i32 %57, %58
  %60 = add nsw i32 %46, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @p, i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nsw i32 %54, 1
  br label %52, !llvm.loop !19

64:                                               ; preds = %52
  %65 = add nsw i32 %50, 1
  br label %48, !llvm.loop !20

66:                                               ; preds = %48
  %67 = add nsw i32 %49, 1
  br label %45, !llvm.loop !21

68:                                               ; preds = %45
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %69

69:                                               ; preds = %90, %68
  %70 = phi i32 [ 0, %68 ], [ %91, %90 ]
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %.preheader23, label %92

.preheader23:                                     ; preds = %69
  br label %72

72:                                               ; preds = %88, %.preheader23
  %73 = phi i32 [ %77, %88 ], [ %70, %.preheader23 ]
  %74 = phi i32 [ %89, %88 ], [ 0, %.preheader23 ]
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %.preheader22, label %90

.preheader22:                                     ; preds = %72
  br label %76

76:                                               ; preds = %80, %.preheader22
  %77 = phi i32 [ %70, %80 ], [ %73, %.preheader22 ]
  %78 = phi i32 [ %87, %80 ], [ 0, %.preheader22 ]
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = shl i32 %78, 6
  %82 = shl i32 %74, 3
  %83 = add i32 %81, %82
  %84 = add nsw i32 %70, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %85
  store i32 1, ptr %86, align 4
  %87 = add nsw i32 %78, 1
  br label %76, !llvm.loop !22

88:                                               ; preds = %76
  %89 = add nsw i32 %74, 1
  br label %72, !llvm.loop !23

90:                                               ; preds = %72
  %91 = add nsw i32 %73, 1
  br label %69, !llvm.loop !24

92:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %93

93:                                               ; preds = %114, %92
  %94 = phi i32 [ 0, %92 ], [ %115, %114 ]
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %.preheader21, label %116

.preheader21:                                     ; preds = %93
  br label %96

96:                                               ; preds = %112, %.preheader21
  %97 = phi i32 [ %101, %112 ], [ %94, %.preheader21 ]
  %98 = phi i32 [ %113, %112 ], [ 0, %.preheader21 ]
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %.preheader20, label %114

.preheader20:                                     ; preds = %96
  br label %100

100:                                              ; preds = %104, %.preheader20
  %101 = phi i32 [ %94, %104 ], [ %97, %.preheader20 ]
  %102 = phi i32 [ %111, %104 ], [ 0, %.preheader20 ]
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = shl i32 %102, 6
  %106 = shl i32 %98, 3
  %107 = add i32 %105, %106
  %108 = add nsw i32 %94, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %109
  store i32 1, ptr %110, align 4
  %111 = add nsw i32 %102, 1
  br label %100, !llvm.loop !25

112:                                              ; preds = %100
  %113 = add nsw i32 %98, 1
  br label %96, !llvm.loop !26

114:                                              ; preds = %96
  %115 = add nsw i32 %97, 1
  br label %93, !llvm.loop !27

116:                                              ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %117

117:                                              ; preds = %138, %116
  %118 = phi i32 [ 0, %116 ], [ %139, %138 ]
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %.preheader19, label %140

.preheader19:                                     ; preds = %117
  br label %120

120:                                              ; preds = %136, %.preheader19
  %121 = phi i32 [ %125, %136 ], [ %118, %.preheader19 ]
  %122 = phi i32 [ %137, %136 ], [ 0, %.preheader19 ]
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %.preheader18, label %138

.preheader18:                                     ; preds = %120
  br label %124

124:                                              ; preds = %128, %.preheader18
  %125 = phi i32 [ %118, %128 ], [ %121, %.preheader18 ]
  %126 = phi i32 [ %135, %128 ], [ 0, %.preheader18 ]
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = shl i32 %126, 6
  %130 = shl i32 %122, 3
  %131 = add i32 %129, %130
  %132 = add nsw i32 %118, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nsw i32 %126, 1
  br label %124, !llvm.loop !28

136:                                              ; preds = %124
  %137 = add nsw i32 %122, 1
  br label %120, !llvm.loop !29

138:                                              ; preds = %120
  %139 = add nsw i32 %121, 1
  br label %117, !llvm.loop !30

140:                                              ; preds = %117
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %141

141:                                              ; preds = %162, %140
  %142 = phi i32 [ 0, %140 ], [ %163, %162 ]
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %.preheader17, label %164

.preheader17:                                     ; preds = %141
  br label %144

144:                                              ; preds = %160, %.preheader17
  %145 = phi i32 [ %149, %160 ], [ %142, %.preheader17 ]
  %146 = phi i32 [ %161, %160 ], [ 0, %.preheader17 ]
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %.preheader16, label %162

.preheader16:                                     ; preds = %144
  br label %148

148:                                              ; preds = %152, %.preheader16
  %149 = phi i32 [ %142, %152 ], [ %145, %.preheader16 ]
  %150 = phi i32 [ %159, %152 ], [ 0, %.preheader16 ]
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = shl i32 %150, 6
  %154 = shl i32 %146, 3
  %155 = add i32 %153, %154
  %156 = add nsw i32 %142, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %157
  store i32 1, ptr %158, align 4
  %159 = add nsw i32 %150, 1
  br label %148, !llvm.loop !31

160:                                              ; preds = %148
  %161 = add nsw i32 %146, 1
  br label %144, !llvm.loop !32

162:                                              ; preds = %144
  %163 = add nsw i32 %145, 1
  br label %141, !llvm.loop !33

164:                                              ; preds = %141
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %165

165:                                              ; preds = %186, %164
  %166 = phi i32 [ 0, %164 ], [ %187, %186 ]
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %.preheader15, label %188

.preheader15:                                     ; preds = %165
  br label %168

168:                                              ; preds = %184, %.preheader15
  %169 = phi i32 [ %173, %184 ], [ %166, %.preheader15 ]
  %170 = phi i32 [ %185, %184 ], [ 0, %.preheader15 ]
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %.preheader14, label %186

.preheader14:                                     ; preds = %168
  br label %172

172:                                              ; preds = %176, %.preheader14
  %173 = phi i32 [ %166, %176 ], [ %169, %.preheader14 ]
  %174 = phi i32 [ %183, %176 ], [ 0, %.preheader14 ]
  %175 = icmp slt i32 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = shl i32 %174, 6
  %178 = shl i32 %170, 3
  %179 = add i32 %177, %178
  %180 = add nsw i32 %166, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nsw i32 %174, 1
  br label %172, !llvm.loop !34

184:                                              ; preds = %172
  %185 = add nsw i32 %170, 1
  br label %168, !llvm.loop !35

186:                                              ; preds = %168
  %187 = add nsw i32 %169, 1
  br label %165, !llvm.loop !36

188:                                              ; preds = %165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %189

189:                                              ; preds = %210, %188
  %190 = phi i32 [ 0, %188 ], [ %211, %210 ]
  %191 = icmp slt i32 %190, 3
  br i1 %191, label %.preheader13, label %212

.preheader13:                                     ; preds = %189
  br label %192

192:                                              ; preds = %208, %.preheader13
  %193 = phi i32 [ %197, %208 ], [ %190, %.preheader13 ]
  %194 = phi i32 [ %209, %208 ], [ 0, %.preheader13 ]
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %.preheader12, label %210

.preheader12:                                     ; preds = %192
  br label %196

196:                                              ; preds = %200, %.preheader12
  %197 = phi i32 [ %190, %200 ], [ %193, %.preheader12 ]
  %198 = phi i32 [ %207, %200 ], [ 0, %.preheader12 ]
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = shl i32 %198, 6
  %202 = shl i32 %194, 3
  %203 = add i32 %201, %202
  %204 = add nsw i32 %190, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %205
  store i32 1, ptr %206, align 4
  %207 = add nsw i32 %198, 1
  br label %196, !llvm.loop !37

208:                                              ; preds = %196
  %209 = add nsw i32 %194, 1
  br label %192, !llvm.loop !38

210:                                              ; preds = %192
  %211 = add nsw i32 %193, 1
  br label %189, !llvm.loop !39

212:                                              ; preds = %189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %213

213:                                              ; preds = %234, %212
  %214 = phi i32 [ 0, %212 ], [ %235, %234 ]
  %215 = icmp slt i32 %214, 1
  br i1 %215, label %.preheader11, label %236

.preheader11:                                     ; preds = %213
  br label %216

216:                                              ; preds = %232, %.preheader11
  %217 = phi i32 [ %221, %232 ], [ %214, %.preheader11 ]
  %218 = phi i32 [ %233, %232 ], [ 0, %.preheader11 ]
  %219 = icmp slt i32 %218, 3
  br i1 %219, label %.preheader10, label %234

.preheader10:                                     ; preds = %216
  br label %220

220:                                              ; preds = %224, %.preheader10
  %221 = phi i32 [ %214, %224 ], [ %217, %.preheader10 ]
  %222 = phi i32 [ %231, %224 ], [ 0, %.preheader10 ]
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = shl i32 %222, 6
  %226 = shl i32 %218, 3
  %227 = add i32 %225, %226
  %228 = add nsw i32 %214, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %229
  store i32 1, ptr %230, align 4
  %231 = add nsw i32 %222, 1
  br label %220, !llvm.loop !40

232:                                              ; preds = %220
  %233 = add nsw i32 %218, 1
  br label %216, !llvm.loop !41

234:                                              ; preds = %216
  %235 = add nsw i32 %217, 1
  br label %213, !llvm.loop !42

236:                                              ; preds = %213
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %237

237:                                              ; preds = %258, %236
  %238 = phi i32 [ 0, %236 ], [ %259, %258 ]
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %.preheader9, label %260

.preheader9:                                      ; preds = %237
  br label %240

240:                                              ; preds = %256, %.preheader9
  %241 = phi i32 [ %245, %256 ], [ %238, %.preheader9 ]
  %242 = phi i32 [ %257, %256 ], [ 0, %.preheader9 ]
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %.preheader8, label %258

.preheader8:                                      ; preds = %240
  br label %244

244:                                              ; preds = %248, %.preheader8
  %245 = phi i32 [ %238, %248 ], [ %241, %.preheader8 ]
  %246 = phi i32 [ %255, %248 ], [ 0, %.preheader8 ]
  %247 = icmp slt i32 %246, 3
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = shl i32 %246, 6
  %250 = shl i32 %242, 3
  %251 = add i32 %249, %250
  %252 = add nsw i32 %238, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %253
  store i32 1, ptr %254, align 4
  %255 = add nsw i32 %246, 1
  br label %244, !llvm.loop !43

256:                                              ; preds = %244
  %257 = add nsw i32 %242, 1
  br label %240, !llvm.loop !44

258:                                              ; preds = %240
  %259 = add nsw i32 %241, 1
  br label %237, !llvm.loop !45

260:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %261

261:                                              ; preds = %282, %260
  %262 = phi i32 [ 0, %260 ], [ %283, %282 ]
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %.preheader7, label %284

.preheader7:                                      ; preds = %261
  br label %264

264:                                              ; preds = %280, %.preheader7
  %265 = phi i32 [ %269, %280 ], [ %262, %.preheader7 ]
  %266 = phi i32 [ %281, %280 ], [ 0, %.preheader7 ]
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %.preheader6, label %282

.preheader6:                                      ; preds = %264
  br label %268

268:                                              ; preds = %272, %.preheader6
  %269 = phi i32 [ %262, %272 ], [ %265, %.preheader6 ]
  %270 = phi i32 [ %279, %272 ], [ 0, %.preheader6 ]
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = shl i32 %270, 6
  %274 = shl i32 %266, 3
  %275 = add i32 %273, %274
  %276 = add nsw i32 %262, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %277
  store i32 1, ptr %278, align 4
  %279 = add nsw i32 %270, 1
  br label %268, !llvm.loop !46

280:                                              ; preds = %268
  %281 = add nsw i32 %266, 1
  br label %264, !llvm.loop !47

282:                                              ; preds = %264
  %283 = add nsw i32 %265, 1
  br label %261, !llvm.loop !48

284:                                              ; preds = %261
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %285

285:                                              ; preds = %306, %284
  %286 = phi i32 [ 0, %284 ], [ %307, %306 ]
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %.preheader5, label %308

.preheader5:                                      ; preds = %285
  br label %288

288:                                              ; preds = %304, %.preheader5
  %289 = phi i32 [ %293, %304 ], [ %286, %.preheader5 ]
  %290 = phi i32 [ %305, %304 ], [ 0, %.preheader5 ]
  %291 = icmp slt i32 %290, 1
  br i1 %291, label %.preheader4, label %306

.preheader4:                                      ; preds = %288
  br label %292

292:                                              ; preds = %296, %.preheader4
  %293 = phi i32 [ %286, %296 ], [ %289, %.preheader4 ]
  %294 = phi i32 [ %303, %296 ], [ 0, %.preheader4 ]
  %295 = icmp slt i32 %294, 2
  br i1 %295, label %296, label %304

296:                                              ; preds = %292
  %297 = shl i32 %294, 6
  %298 = shl i32 %290, 3
  %299 = add i32 %297, %298
  %300 = add nsw i32 %286, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %301
  store i32 1, ptr %302, align 4
  %303 = add nsw i32 %294, 1
  br label %292, !llvm.loop !49

304:                                              ; preds = %292
  %305 = add nsw i32 %290, 1
  br label %288, !llvm.loop !50

306:                                              ; preds = %288
  %307 = add nsw i32 %289, 1
  br label %285, !llvm.loop !51

308:                                              ; preds = %285
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %309

309:                                              ; preds = %330, %308
  %310 = phi i32 [ 0, %308 ], [ %331, %330 ]
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %.preheader3, label %332

.preheader3:                                      ; preds = %309
  br label %312

312:                                              ; preds = %328, %.preheader3
  %313 = phi i32 [ %317, %328 ], [ %310, %.preheader3 ]
  %314 = phi i32 [ %329, %328 ], [ 0, %.preheader3 ]
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %.preheader2, label %330

.preheader2:                                      ; preds = %312
  br label %316

316:                                              ; preds = %320, %.preheader2
  %317 = phi i32 [ %310, %320 ], [ %313, %.preheader2 ]
  %318 = phi i32 [ %327, %320 ], [ 0, %.preheader2 ]
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = shl i32 %318, 6
  %322 = shl i32 %314, 3
  %323 = add i32 %321, %322
  %324 = add nsw i32 %310, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %325
  store i32 1, ptr %326, align 4
  %327 = add nsw i32 %318, 1
  br label %316, !llvm.loop !52

328:                                              ; preds = %316
  %329 = add nsw i32 %314, 1
  br label %312, !llvm.loop !53

330:                                              ; preds = %312
  %331 = add nsw i32 %313, 1
  br label %309, !llvm.loop !54

332:                                              ; preds = %309
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %333

333:                                              ; preds = %354, %332
  %334 = phi i32 [ 0, %332 ], [ %355, %354 ]
  %335 = icmp slt i32 %334, 2
  br i1 %335, label %.preheader1, label %356

.preheader1:                                      ; preds = %333
  br label %336

336:                                              ; preds = %352, %.preheader1
  %337 = phi i32 [ %341, %352 ], [ %334, %.preheader1 ]
  %338 = phi i32 [ %353, %352 ], [ 0, %.preheader1 ]
  %339 = icmp slt i32 %338, 2
  br i1 %339, label %.preheader, label %354

.preheader:                                       ; preds = %336
  br label %340

340:                                              ; preds = %344, %.preheader
  %341 = phi i32 [ %334, %344 ], [ %337, %.preheader ]
  %342 = phi i32 [ %351, %344 ], [ 0, %.preheader ]
  %343 = icmp slt i32 %342, 2
  br i1 %343, label %344, label %352

344:                                              ; preds = %340
  %345 = shl i32 %342, 6
  %346 = shl i32 %338, 3
  %347 = add i32 %345, %346
  %348 = add nsw i32 %334, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %349
  store i32 1, ptr %350, align 4
  %351 = add nsw i32 %342, 1
  br label %340, !llvm.loop !55

352:                                              ; preds = %340
  %353 = add nsw i32 %338, 1
  br label %336, !llvm.loop !56

354:                                              ; preds = %336
  %355 = add nsw i32 %337, 1
  br label %333, !llvm.loop !57

356:                                              ; preds = %333
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %357 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %357, 0
  br i1 %.not, label %360, label %358

358:                                              ; preds = %356
  %359 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %359, ptr @n, align 4
  br label %361

360:                                              ; preds = %356
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %361

361:                                              ; preds = %360, %358
  %362 = phi i32 [ %.pre, %360 ], [ %359, %358 ]
  %363 = call i32 @Trial(i32 noundef %362)
  %.not16 = icmp eq i32 %363, 0
  br i1 %.not16, label %364, label %365

364:                                              ; preds = %361
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %368

365:                                              ; preds = %361
  %366 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %366, 2005
  br i1 %.not18, label %368, label %367

367:                                              ; preds = %365
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %368

368:                                              ; preds = %367, %365, %364
  %369 = load i32, ptr @n, align 4
  %370 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %369) #4
  %371 = load i32, ptr @kount, align 4
  %372 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %371) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nsw i32 %2, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
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
