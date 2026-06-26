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
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
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
  %16 = add nuw nsw i32 %4, 1
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
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
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
  %15 = add nuw nsw i32 %4, 1
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %24

24:                                               ; preds = %30, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %23, %16 ]
  %25 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %26

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
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
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
  %15 = add nuw nsw i32 %4, 1
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

4:                                                ; preds = %21, %1
  %5 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %21, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not3 = icmp ne i32 %18, 0
  %19 = icmp eq i32 %17, 0
  %or.cond = or i1 %.not3, %19
  br i1 %or.cond, label %23, label %20

20:                                               ; preds = %16
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %14, %7
  %22 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

23:                                               ; preds = %16, %4
  %storemerge1 = phi i32 [ 1, %16 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %4 ]
  %3 = icmp samesign ult i32 %2, 512
  br i1 %3, label %4, label %.preheader31

.preheader31:                                     ; preds = %1
  br label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %27, %.preheader31
  %9 = phi i32 [ %28, %27 ], [ 1, %.preheader31 ]
  %10 = icmp samesign ult i32 %9, 6
  br i1 %10, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %8
  br label %11

.preheader28:                                     ; preds = %8
  br label %29

11:                                               ; preds = %25, %.preheader30
  %12 = phi i32 [ %26, %25 ], [ 1, %.preheader30 ]
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %.preheader29, label %27

.preheader29:                                     ; preds = %11
  br label %14

14:                                               ; preds = %17, %.preheader29
  %15 = phi i32 [ %24, %17 ], [ 1, %.preheader29 ]
  %16 = icmp samesign ult i32 %15, 6
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = shl nuw nsw i32 %15, 6
  %19 = shl nuw nsw i32 %12, 3
  %20 = or disjoint i32 %18, %19
  %21 = or disjoint i32 %9, %20
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !14

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !15

27:                                               ; preds = %11
  %28 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !16

29:                                               ; preds = %41, %.preheader28
  %30 = phi i32 [ %42, %41 ], [ 0, %.preheader28 ]
  %31 = icmp samesign ult i32 %30, 13
  br i1 %31, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %29
  br label %32

.preheader26:                                     ; preds = %29
  br label %43

32:                                               ; preds = %35, %.preheader27
  %33 = phi i32 [ %40, %35 ], [ 0, %.preheader27 ]
  %34 = icmp samesign ult i32 %33, 512
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = zext nneg i32 %30 to i64
  %37 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %36
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %38
  store i32 0, ptr %39, align 4
  %40 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !17

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !18

43:                                               ; preds = %58, %.preheader26
  %44 = phi i32 [ %59, %58 ], [ 0, %.preheader26 ]
  %45 = icmp samesign ult i32 %44, 4
  br i1 %45, label %.preheader25, label %60

.preheader25:                                     ; preds = %43
  br label %46

46:                                               ; preds = %56, %.preheader25
  %47 = phi i32 [ %57, %56 ], [ 0, %.preheader25 ]
  %48 = icmp samesign ult i32 %47, 2
  br i1 %48, label %.preheader24, label %58

.preheader24:                                     ; preds = %46
  br label %49

49:                                               ; preds = %51, %.preheader24
  %50 = phi i1 [ false, %51 ], [ true, %.preheader24 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = shl nuw nsw i32 %47, 3
  %53 = or disjoint i32 %44, %52
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %54
  store i32 1, ptr %55, align 4
  br label %49, !llvm.loop !19

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %47, 1
  br label %46, !llvm.loop !20

58:                                               ; preds = %46
  %59 = add nuw nsw i32 %44, 1
  br label %43, !llvm.loop !21

60:                                               ; preds = %43
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %61

61:                                               ; preds = %76, %60
  %62 = phi i32 [ 0, %60 ], [ %77, %76 ]
  %63 = icmp samesign ult i32 %62, 2
  br i1 %63, label %.preheader23, label %78

.preheader23:                                     ; preds = %61
  br label %64

64:                                               ; preds = %75, %.preheader23
  %65 = phi i1 [ false, %75 ], [ true, %.preheader23 ]
  br i1 %65, label %.preheader22, label %76

.preheader22:                                     ; preds = %64
  br label %66

66:                                               ; preds = %69, %.preheader22
  %67 = phi i32 [ %74, %69 ], [ 0, %.preheader22 ]
  %68 = icmp samesign ult i32 %67, 4
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = shl nuw nsw i32 %67, 6
  %71 = or disjoint i32 %62, %70
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %72
  store i32 1, ptr %73, align 4
  %74 = add nuw nsw i32 %67, 1
  br label %66, !llvm.loop !22

75:                                               ; preds = %66
  br label %64, !llvm.loop !23

76:                                               ; preds = %64
  %77 = add nuw nsw i32 %62, 1
  br label %61, !llvm.loop !24

78:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %79

79:                                               ; preds = %96, %78
  %80 = phi i1 [ true, %78 ], [ false, %96 ]
  br i1 %80, label %.preheader21, label %97

.preheader21:                                     ; preds = %79
  br label %81

81:                                               ; preds = %94, %.preheader21
  %82 = phi i32 [ %95, %94 ], [ 0, %.preheader21 ]
  %83 = icmp samesign ult i32 %82, 4
  br i1 %83, label %.preheader20, label %96

.preheader20:                                     ; preds = %81
  br label %84

84:                                               ; preds = %87, %.preheader20
  %85 = phi i32 [ %93, %87 ], [ 0, %.preheader20 ]
  %86 = icmp samesign ult i32 %85, 2
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = shl nuw nsw i32 %85, 6
  %89 = shl nuw nsw i32 %82, 3
  %90 = or disjoint i32 %88, %89
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %91
  store i32 1, ptr %92, align 4
  %93 = add nuw nsw i32 %85, 1
  br label %84, !llvm.loop !25

94:                                               ; preds = %84
  %95 = add nuw nsw i32 %82, 1
  br label %81, !llvm.loop !26

96:                                               ; preds = %81
  br label %79, !llvm.loop !27

97:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %98

98:                                               ; preds = %113, %97
  %99 = phi i32 [ 0, %97 ], [ %114, %113 ]
  %100 = icmp samesign ult i32 %99, 2
  br i1 %100, label %.preheader19, label %115

.preheader19:                                     ; preds = %98
  br label %101

101:                                              ; preds = %111, %.preheader19
  %102 = phi i32 [ %112, %111 ], [ 0, %.preheader19 ]
  %103 = icmp samesign ult i32 %102, 4
  br i1 %103, label %.preheader18, label %113

.preheader18:                                     ; preds = %101
  br label %104

104:                                              ; preds = %106, %.preheader18
  %105 = phi i1 [ false, %106 ], [ true, %.preheader18 ]
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = shl nuw nsw i32 %102, 3
  %108 = or disjoint i32 %99, %107
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %109
  store i32 1, ptr %110, align 4
  br label %104, !llvm.loop !28

111:                                              ; preds = %104
  %112 = add nuw nsw i32 %102, 1
  br label %101, !llvm.loop !29

113:                                              ; preds = %101
  %114 = add nuw nsw i32 %99, 1
  br label %98, !llvm.loop !30

115:                                              ; preds = %98
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %116

116:                                              ; preds = %131, %115
  %117 = phi i32 [ 0, %115 ], [ %132, %131 ]
  %118 = icmp samesign ult i32 %117, 4
  br i1 %118, label %.preheader17, label %133

.preheader17:                                     ; preds = %116
  br label %119

119:                                              ; preds = %130, %.preheader17
  %120 = phi i1 [ false, %130 ], [ true, %.preheader17 ]
  br i1 %120, label %.preheader16, label %131

.preheader16:                                     ; preds = %119
  br label %121

121:                                              ; preds = %124, %.preheader16
  %122 = phi i32 [ %129, %124 ], [ 0, %.preheader16 ]
  %123 = icmp samesign ult i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = shl nuw nsw i32 %122, 6
  %126 = or disjoint i32 %117, %125
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %127
  store i32 1, ptr %128, align 4
  %129 = add nuw nsw i32 %122, 1
  br label %121, !llvm.loop !31

130:                                              ; preds = %121
  br label %119, !llvm.loop !32

131:                                              ; preds = %119
  %132 = add nuw nsw i32 %117, 1
  br label %116, !llvm.loop !33

133:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %134

134:                                              ; preds = %151, %133
  %135 = phi i1 [ true, %133 ], [ false, %151 ]
  br i1 %135, label %.preheader15, label %152

.preheader15:                                     ; preds = %134
  br label %136

136:                                              ; preds = %149, %.preheader15
  %137 = phi i32 [ %150, %149 ], [ 0, %.preheader15 ]
  %138 = icmp samesign ult i32 %137, 2
  br i1 %138, label %.preheader14, label %151

.preheader14:                                     ; preds = %136
  br label %139

139:                                              ; preds = %142, %.preheader14
  %140 = phi i32 [ %148, %142 ], [ 0, %.preheader14 ]
  %141 = icmp samesign ult i32 %140, 4
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = shl nuw nsw i32 %140, 6
  %144 = shl nuw nsw i32 %137, 3
  %145 = or disjoint i32 %143, %144
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %146
  store i32 1, ptr %147, align 4
  %148 = add nuw nsw i32 %140, 1
  br label %139, !llvm.loop !34

149:                                              ; preds = %139
  %150 = add nuw nsw i32 %137, 1
  br label %136, !llvm.loop !35

151:                                              ; preds = %136
  br label %134, !llvm.loop !36

152:                                              ; preds = %134
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %153

153:                                              ; preds = %164, %152
  %154 = phi i32 [ 0, %152 ], [ %165, %164 ]
  %155 = icmp samesign ult i32 %154, 3
  br i1 %155, label %.preheader13, label %166

.preheader13:                                     ; preds = %153
  br label %156

156:                                              ; preds = %163, %.preheader13
  %157 = phi i1 [ false, %163 ], [ true, %.preheader13 ]
  br i1 %157, label %.preheader12, label %164

.preheader12:                                     ; preds = %156
  br label %158

158:                                              ; preds = %160, %.preheader12
  %159 = phi i1 [ false, %160 ], [ true, %.preheader12 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = zext nneg i32 %154 to i64
  %162 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %161
  store i32 1, ptr %162, align 4
  br label %158, !llvm.loop !37

163:                                              ; preds = %158
  br label %156, !llvm.loop !38

164:                                              ; preds = %156
  %165 = add nuw nsw i32 %154, 1
  br label %153, !llvm.loop !39

166:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %167

167:                                              ; preds = %180, %166
  %168 = phi i1 [ true, %166 ], [ false, %180 ]
  br i1 %168, label %.preheader11, label %181

.preheader11:                                     ; preds = %167
  br label %169

169:                                              ; preds = %178, %.preheader11
  %170 = phi i32 [ %179, %178 ], [ 0, %.preheader11 ]
  %171 = icmp samesign ult i32 %170, 3
  br i1 %171, label %.preheader10, label %180

.preheader10:                                     ; preds = %169
  br label %172

172:                                              ; preds = %174, %.preheader10
  %173 = phi i1 [ false, %174 ], [ true, %.preheader10 ]
  br i1 %173, label %174, label %178

174:                                              ; preds = %172
  %175 = shl nuw nsw i32 %170, 3
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %176
  store i32 1, ptr %177, align 4
  br label %172, !llvm.loop !40

178:                                              ; preds = %172
  %179 = add nuw nsw i32 %170, 1
  br label %169, !llvm.loop !41

180:                                              ; preds = %169
  br label %167, !llvm.loop !42

181:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %182

182:                                              ; preds = %195, %181
  %183 = phi i1 [ true, %181 ], [ false, %195 ]
  br i1 %183, label %.preheader9, label %196

.preheader9:                                      ; preds = %182
  br label %184

184:                                              ; preds = %194, %.preheader9
  %185 = phi i1 [ false, %194 ], [ true, %.preheader9 ]
  br i1 %185, label %.preheader8, label %195

.preheader8:                                      ; preds = %184
  br label %186

186:                                              ; preds = %189, %.preheader8
  %187 = phi i32 [ %193, %189 ], [ 0, %.preheader8 ]
  %188 = icmp samesign ult i32 %187, 3
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = shl nuw nsw i32 %187, 6
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %187, 1
  br label %186, !llvm.loop !43

194:                                              ; preds = %186
  br label %184, !llvm.loop !44

195:                                              ; preds = %184
  br label %182, !llvm.loop !45

196:                                              ; preds = %182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %197

197:                                              ; preds = %212, %196
  %198 = phi i32 [ 0, %196 ], [ %213, %212 ]
  %199 = icmp samesign ult i32 %198, 2
  br i1 %199, label %.preheader7, label %214

.preheader7:                                      ; preds = %197
  br label %200

200:                                              ; preds = %210, %.preheader7
  %201 = phi i32 [ %211, %210 ], [ 0, %.preheader7 ]
  %202 = icmp samesign ult i32 %201, 2
  br i1 %202, label %.preheader6, label %212

.preheader6:                                      ; preds = %200
  br label %203

203:                                              ; preds = %205, %.preheader6
  %204 = phi i1 [ false, %205 ], [ true, %.preheader6 ]
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = shl nuw nsw i32 %201, 3
  %207 = or disjoint i32 %198, %206
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %208
  store i32 1, ptr %209, align 4
  br label %203, !llvm.loop !46

210:                                              ; preds = %203
  %211 = add nuw nsw i32 %201, 1
  br label %200, !llvm.loop !47

212:                                              ; preds = %200
  %213 = add nuw nsw i32 %198, 1
  br label %197, !llvm.loop !48

214:                                              ; preds = %197
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %215

215:                                              ; preds = %230, %214
  %216 = phi i32 [ 0, %214 ], [ %231, %230 ]
  %217 = icmp samesign ult i32 %216, 2
  br i1 %217, label %.preheader5, label %232

.preheader5:                                      ; preds = %215
  br label %218

218:                                              ; preds = %229, %.preheader5
  %219 = phi i1 [ false, %229 ], [ true, %.preheader5 ]
  br i1 %219, label %.preheader4, label %230

.preheader4:                                      ; preds = %218
  br label %220

220:                                              ; preds = %223, %.preheader4
  %221 = phi i32 [ %228, %223 ], [ 0, %.preheader4 ]
  %222 = icmp samesign ult i32 %221, 2
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = shl nuw nsw i32 %221, 6
  %225 = or disjoint i32 %216, %224
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %226
  store i32 1, ptr %227, align 4
  %228 = add nuw nsw i32 %221, 1
  br label %220, !llvm.loop !49

229:                                              ; preds = %220
  br label %218, !llvm.loop !50

230:                                              ; preds = %218
  %231 = add nuw nsw i32 %216, 1
  br label %215, !llvm.loop !51

232:                                              ; preds = %215
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %233

233:                                              ; preds = %250, %232
  %234 = phi i1 [ true, %232 ], [ false, %250 ]
  br i1 %234, label %.preheader3, label %251

.preheader3:                                      ; preds = %233
  br label %235

235:                                              ; preds = %248, %.preheader3
  %236 = phi i32 [ %249, %248 ], [ 0, %.preheader3 ]
  %237 = icmp samesign ult i32 %236, 2
  br i1 %237, label %.preheader2, label %250

.preheader2:                                      ; preds = %235
  br label %238

238:                                              ; preds = %241, %.preheader2
  %239 = phi i32 [ %247, %241 ], [ 0, %.preheader2 ]
  %240 = icmp samesign ult i32 %239, 2
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = shl nuw nsw i32 %239, 6
  %243 = shl nuw nsw i32 %236, 3
  %244 = or disjoint i32 %242, %243
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %245
  store i32 1, ptr %246, align 4
  %247 = add nuw nsw i32 %239, 1
  br label %238, !llvm.loop !52

248:                                              ; preds = %238
  %249 = add nuw nsw i32 %236, 1
  br label %235, !llvm.loop !53

250:                                              ; preds = %235
  br label %233, !llvm.loop !54

251:                                              ; preds = %233
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %252

252:                                              ; preds = %271, %251
  %253 = phi i32 [ 0, %251 ], [ %272, %271 ]
  %254 = icmp samesign ult i32 %253, 2
  br i1 %254, label %.preheader1, label %273

.preheader1:                                      ; preds = %252
  br label %255

255:                                              ; preds = %269, %.preheader1
  %256 = phi i32 [ %270, %269 ], [ 0, %.preheader1 ]
  %257 = icmp samesign ult i32 %256, 2
  br i1 %257, label %.preheader, label %271

.preheader:                                       ; preds = %255
  br label %258

258:                                              ; preds = %261, %.preheader
  %259 = phi i32 [ %268, %261 ], [ 0, %.preheader ]
  %260 = icmp samesign ult i32 %259, 2
  br i1 %260, label %261, label %269

261:                                              ; preds = %258
  %262 = shl nuw nsw i32 %259, 6
  %263 = shl nuw nsw i32 %256, 3
  %264 = or disjoint i32 %262, %263
  %265 = or disjoint i32 %253, %264
  %266 = zext nneg i32 %265 to i64
  %267 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %266
  store i32 1, ptr %267, align 4
  %268 = add nuw nsw i32 %259, 1
  br label %258, !llvm.loop !55

269:                                              ; preds = %258
  %270 = add nuw nsw i32 %256, 1
  br label %255, !llvm.loop !56

271:                                              ; preds = %255
  %272 = add nuw nsw i32 %253, 1
  br label %252, !llvm.loop !57

273:                                              ; preds = %252
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %274 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %274, 0
  br i1 %.not, label %277, label %275

275:                                              ; preds = %273
  %276 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %276, ptr @n, align 4
  br label %278

277:                                              ; preds = %273
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i32 [ %.pre, %277 ], [ %276, %275 ]
  %280 = call i32 @Trial(i32 noundef %279)
  %.not16 = icmp eq i32 %280, 0
  br i1 %.not16, label %281, label %282

281:                                              ; preds = %278
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %285

282:                                              ; preds = %278
  %283 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %283, 2005
  br i1 %.not18, label %285, label %284

284:                                              ; preds = %282
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %285

285:                                              ; preds = %284, %282, %281
  %286 = load i32, ptr @n, align 4
  %287 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %286) #4
  %288 = load i32, ptr @kount, align 4
  %289 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %288) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nuw nsw i32 %2, 1
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
