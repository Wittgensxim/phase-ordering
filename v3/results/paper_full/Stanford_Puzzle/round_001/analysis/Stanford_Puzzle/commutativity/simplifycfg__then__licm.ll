; ModuleID = 'results\paper_full\Stanford_Puzzle\round_000\output.ll'
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
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %17, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %10, %6
  %16 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

17:                                               ; preds = %4, %10
  %18 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %16, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !9

16:                                               ; preds = %4
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %30, %16
  %24 = phi i32 [ %31, %30 ], [ %1, %16 ]
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %32, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

32:                                               ; preds = %23, %26
  %33 = phi i32 [ %24, %26 ], [ 0, %23 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %16, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !11

16:                                               ; preds = %4
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
  %5 = phi i32 [ %22, %21 ], [ 0, %1 ]
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
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not2 = icmp ne i32 %18, 0
  %19 = icmp eq i32 %17, 0
  %or.cond = or i1 %.not2, %19
  br i1 %or.cond, label %23, label %20

20:                                               ; preds = %16
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %14, %20, %7
  %22 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

23:                                               ; preds = %4, %16
  %24 = phi i32 [ 1, %16 ], [ 0, %4 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %7, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 512
  br i1 %3, label %4, label %.preheader40

.preheader40:                                     ; preds = %1
  br label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %.preheader40, %25
  %9 = phi i32 [ %26, %25 ], [ 1, %.preheader40 ]
  %10 = icmp samesign ult i32 %9, 6
  br i1 %10, label %.preheader39, label %.preheader37

.preheader39:                                     ; preds = %8
  br label %11

.preheader37:                                     ; preds = %8
  br label %27

11:                                               ; preds = %.preheader39, %23
  %12 = phi i32 [ %24, %23 ], [ 1, %.preheader39 ]
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %.preheader38, label %25

.preheader38:                                     ; preds = %11
  %14 = shl nuw nsw i32 %12, 3
  %invariant.op = or disjoint i32 %14, %9
  br label %15

15:                                               ; preds = %.preheader38, %18
  %16 = phi i32 [ %22, %18 ], [ 1, %.preheader38 ]
  %17 = icmp samesign ult i32 %16, 6
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = shl nuw nsw i32 %16, 6
  %.reass = or disjoint i32 %19, %invariant.op
  %20 = zext nneg i32 %.reass to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  %22 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !14

23:                                               ; preds = %15
  %24 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !15

25:                                               ; preds = %11
  %26 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !16

27:                                               ; preds = %.preheader37, %39
  %28 = phi i32 [ %40, %39 ], [ 0, %.preheader37 ]
  %29 = icmp samesign ult i32 %28, 13
  br i1 %29, label %.preheader36, label %.preheader35

.preheader36:                                     ; preds = %27
  %30 = zext nneg i32 %28 to i64
  %31 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %30
  br label %32

.preheader35:                                     ; preds = %27
  br label %41

32:                                               ; preds = %.preheader36, %35
  %33 = phi i32 [ %38, %35 ], [ 0, %.preheader36 ]
  %34 = icmp samesign ult i32 %33, 512
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %36
  store i32 0, ptr %37, align 4
  %38 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !17

39:                                               ; preds = %32
  %40 = add nuw nsw i32 %28, 1
  br label %27, !llvm.loop !18

41:                                               ; preds = %.preheader35, %56
  %42 = phi i32 [ %57, %56 ], [ 0, %.preheader35 ]
  %43 = icmp samesign ult i32 %42, 4
  br i1 %43, label %.preheader34, label %58

.preheader34:                                     ; preds = %41
  br label %44

44:                                               ; preds = %.preheader34, %54
  %45 = phi i32 [ %55, %54 ], [ 0, %.preheader34 ]
  %46 = icmp samesign ult i32 %45, 2
  br i1 %46, label %.preheader33, label %56

.preheader33:                                     ; preds = %44
  %47 = shl nuw nsw i32 %45, 3
  %48 = or disjoint i32 %42, %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %49
  br label %51

51:                                               ; preds = %.preheader33, %53
  %52 = phi i1 [ false, %53 ], [ true, %.preheader33 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store i32 1, ptr %50, align 4
  br label %51, !llvm.loop !19

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %45, 1
  br label %44, !llvm.loop !20

56:                                               ; preds = %44
  %57 = add nuw nsw i32 %42, 1
  br label %41, !llvm.loop !21

58:                                               ; preds = %41
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %59

59:                                               ; preds = %73, %58
  %60 = phi i32 [ %74, %73 ], [ 0, %58 ]
  %61 = icmp samesign ult i32 %60, 2
  br i1 %61, label %.preheader32, label %75

.preheader32:                                     ; preds = %59
  br label %62

.loopexit31:                                      ; preds = %64
  br label %62, !llvm.loop !22

62:                                               ; preds = %.preheader32, %.loopexit31
  %63 = phi i1 [ false, %.loopexit31 ], [ true, %.preheader32 ]
  br i1 %63, label %.preheader30, label %73

.preheader30:                                     ; preds = %62
  br label %64

64:                                               ; preds = %.preheader30, %67
  %65 = phi i32 [ %72, %67 ], [ 0, %.preheader30 ]
  %66 = icmp samesign ult i32 %65, 4
  br i1 %66, label %67, label %.loopexit31

67:                                               ; preds = %64
  %68 = shl nuw nsw i32 %65, 6
  %69 = or disjoint i32 %60, %68
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %70
  store i32 1, ptr %71, align 4
  %72 = add nuw nsw i32 %65, 1
  br label %64, !llvm.loop !23

73:                                               ; preds = %62
  %74 = add nuw nsw i32 %60, 1
  br label %59, !llvm.loop !24

75:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %76

.loopexit29:                                      ; preds = %78
  br label %76, !llvm.loop !25

76:                                               ; preds = %.loopexit29, %75
  %77 = phi i1 [ true, %75 ], [ false, %.loopexit29 ]
  br i1 %77, label %.preheader28, label %93

.preheader28:                                     ; preds = %76
  br label %78

78:                                               ; preds = %.preheader28, %91
  %79 = phi i32 [ %92, %91 ], [ 0, %.preheader28 ]
  %80 = icmp samesign ult i32 %79, 4
  br i1 %80, label %.preheader27, label %.loopexit29

.preheader27:                                     ; preds = %78
  %81 = shl nuw nsw i32 %79, 3
  br label %82

82:                                               ; preds = %.preheader27, %85
  %83 = phi i32 [ %90, %85 ], [ 0, %.preheader27 ]
  %84 = icmp samesign ult i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = shl nuw nsw i32 %83, 6
  %87 = or disjoint i32 %86, %81
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nuw nsw i32 %83, 1
  br label %82, !llvm.loop !26

91:                                               ; preds = %82
  %92 = add nuw nsw i32 %79, 1
  br label %78, !llvm.loop !27

93:                                               ; preds = %76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %94

94:                                               ; preds = %109, %93
  %95 = phi i32 [ %110, %109 ], [ 0, %93 ]
  %96 = icmp samesign ult i32 %95, 2
  br i1 %96, label %.preheader26, label %111

.preheader26:                                     ; preds = %94
  br label %97

97:                                               ; preds = %.preheader26, %107
  %98 = phi i32 [ %108, %107 ], [ 0, %.preheader26 ]
  %99 = icmp samesign ult i32 %98, 4
  br i1 %99, label %.preheader25, label %109

.preheader25:                                     ; preds = %97
  %100 = shl nuw nsw i32 %98, 3
  %101 = or disjoint i32 %95, %100
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %102
  br label %104

104:                                              ; preds = %.preheader25, %106
  %105 = phi i1 [ false, %106 ], [ true, %.preheader25 ]
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  store i32 1, ptr %103, align 4
  br label %104, !llvm.loop !28

107:                                              ; preds = %104
  %108 = add nuw nsw i32 %98, 1
  br label %97, !llvm.loop !29

109:                                              ; preds = %97
  %110 = add nuw nsw i32 %95, 1
  br label %94, !llvm.loop !30

111:                                              ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %112

112:                                              ; preds = %126, %111
  %113 = phi i32 [ %127, %126 ], [ 0, %111 ]
  %114 = icmp samesign ult i32 %113, 4
  br i1 %114, label %.preheader24, label %128

.preheader24:                                     ; preds = %112
  br label %115

.loopexit23:                                      ; preds = %117
  br label %115, !llvm.loop !31

115:                                              ; preds = %.preheader24, %.loopexit23
  %116 = phi i1 [ false, %.loopexit23 ], [ true, %.preheader24 ]
  br i1 %116, label %.preheader22, label %126

.preheader22:                                     ; preds = %115
  br label %117

117:                                              ; preds = %.preheader22, %120
  %118 = phi i32 [ %125, %120 ], [ 0, %.preheader22 ]
  %119 = icmp samesign ult i32 %118, 2
  br i1 %119, label %120, label %.loopexit23

120:                                              ; preds = %117
  %121 = shl nuw nsw i32 %118, 6
  %122 = or disjoint i32 %113, %121
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %123
  store i32 1, ptr %124, align 4
  %125 = add nuw nsw i32 %118, 1
  br label %117, !llvm.loop !32

126:                                              ; preds = %115
  %127 = add nuw nsw i32 %113, 1
  br label %112, !llvm.loop !33

128:                                              ; preds = %112
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %129

.loopexit21:                                      ; preds = %131
  br label %129, !llvm.loop !34

129:                                              ; preds = %.loopexit21, %128
  %130 = phi i1 [ true, %128 ], [ false, %.loopexit21 ]
  br i1 %130, label %.preheader20, label %146

.preheader20:                                     ; preds = %129
  br label %131

131:                                              ; preds = %.preheader20, %144
  %132 = phi i32 [ %145, %144 ], [ 0, %.preheader20 ]
  %133 = icmp samesign ult i32 %132, 2
  br i1 %133, label %.preheader19, label %.loopexit21

.preheader19:                                     ; preds = %131
  %134 = shl nuw nsw i32 %132, 3
  br label %135

135:                                              ; preds = %.preheader19, %138
  %136 = phi i32 [ %143, %138 ], [ 0, %.preheader19 ]
  %137 = icmp samesign ult i32 %136, 4
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = shl nuw nsw i32 %136, 6
  %140 = or disjoint i32 %139, %134
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nuw nsw i32 %136, 1
  br label %135, !llvm.loop !35

144:                                              ; preds = %135
  %145 = add nuw nsw i32 %132, 1
  br label %131, !llvm.loop !36

146:                                              ; preds = %129
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %147

147:                                              ; preds = %157, %146
  %148 = phi i32 [ %158, %157 ], [ 0, %146 ]
  %149 = icmp samesign ult i32 %148, 3
  br i1 %149, label %.preheader18, label %159

.preheader18:                                     ; preds = %147
  %150 = zext nneg i32 %148 to i64
  %151 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %150
  br label %152

.loopexit17:                                      ; preds = %154
  br label %152, !llvm.loop !37

152:                                              ; preds = %.preheader18, %.loopexit17
  %153 = phi i1 [ false, %.loopexit17 ], [ true, %.preheader18 ]
  br i1 %153, label %.preheader16, label %157

.preheader16:                                     ; preds = %152
  br label %154

154:                                              ; preds = %.preheader16, %156
  %155 = phi i1 [ false, %156 ], [ true, %.preheader16 ]
  br i1 %155, label %156, label %.loopexit17

156:                                              ; preds = %154
  store i32 1, ptr %151, align 4
  br label %154, !llvm.loop !38

157:                                              ; preds = %152
  %158 = add nuw nsw i32 %148, 1
  br label %147, !llvm.loop !39

159:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %160

.loopexit15:                                      ; preds = %162
  br label %160, !llvm.loop !40

160:                                              ; preds = %.loopexit15, %159
  %161 = phi i1 [ true, %159 ], [ false, %.loopexit15 ]
  br i1 %161, label %.preheader14, label %173

.preheader14:                                     ; preds = %160
  br label %162

162:                                              ; preds = %.preheader14, %171
  %163 = phi i32 [ %172, %171 ], [ 0, %.preheader14 ]
  %164 = icmp samesign ult i32 %163, 3
  br i1 %164, label %.preheader13, label %.loopexit15

.preheader13:                                     ; preds = %162
  %165 = shl nuw nsw i32 %163, 3
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %166
  br label %168

168:                                              ; preds = %.preheader13, %170
  %169 = phi i1 [ false, %170 ], [ true, %.preheader13 ]
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  store i32 1, ptr %167, align 4
  br label %168, !llvm.loop !41

171:                                              ; preds = %168
  %172 = add nuw nsw i32 %163, 1
  br label %162, !llvm.loop !42

173:                                              ; preds = %160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %174

.loopexit12:                                      ; preds = %176
  br label %174, !llvm.loop !43

174:                                              ; preds = %.loopexit12, %173
  %175 = phi i1 [ true, %173 ], [ false, %.loopexit12 ]
  br i1 %175, label %.preheader11, label %186

.preheader11:                                     ; preds = %174
  br label %176

.loopexit10:                                      ; preds = %178
  br label %176, !llvm.loop !44

176:                                              ; preds = %.preheader11, %.loopexit10
  %177 = phi i1 [ false, %.loopexit10 ], [ true, %.preheader11 ]
  br i1 %177, label %.preheader9, label %.loopexit12

.preheader9:                                      ; preds = %176
  br label %178

178:                                              ; preds = %.preheader9, %181
  %179 = phi i32 [ %185, %181 ], [ 0, %.preheader9 ]
  %180 = icmp samesign ult i32 %179, 3
  br i1 %180, label %181, label %.loopexit10

181:                                              ; preds = %178
  %182 = shl nuw nsw i32 %179, 6
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %183
  store i32 1, ptr %184, align 4
  %185 = add nuw nsw i32 %179, 1
  br label %178, !llvm.loop !45

186:                                              ; preds = %174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %187

187:                                              ; preds = %202, %186
  %188 = phi i32 [ %203, %202 ], [ 0, %186 ]
  %189 = icmp samesign ult i32 %188, 2
  br i1 %189, label %.preheader8, label %204

.preheader8:                                      ; preds = %187
  br label %190

190:                                              ; preds = %.preheader8, %200
  %191 = phi i32 [ %201, %200 ], [ 0, %.preheader8 ]
  %192 = icmp samesign ult i32 %191, 2
  br i1 %192, label %.preheader7, label %202

.preheader7:                                      ; preds = %190
  %193 = shl nuw nsw i32 %191, 3
  %194 = or disjoint i32 %188, %193
  %195 = zext nneg i32 %194 to i64
  %196 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %195
  br label %197

197:                                              ; preds = %.preheader7, %199
  %198 = phi i1 [ false, %199 ], [ true, %.preheader7 ]
  br i1 %198, label %199, label %200

199:                                              ; preds = %197
  store i32 1, ptr %196, align 4
  br label %197, !llvm.loop !46

200:                                              ; preds = %197
  %201 = add nuw nsw i32 %191, 1
  br label %190, !llvm.loop !47

202:                                              ; preds = %190
  %203 = add nuw nsw i32 %188, 1
  br label %187, !llvm.loop !48

204:                                              ; preds = %187
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %205

205:                                              ; preds = %219, %204
  %206 = phi i32 [ %220, %219 ], [ 0, %204 ]
  %207 = icmp samesign ult i32 %206, 2
  br i1 %207, label %.preheader6, label %221

.preheader6:                                      ; preds = %205
  br label %208

.loopexit5:                                       ; preds = %210
  br label %208, !llvm.loop !49

208:                                              ; preds = %.preheader6, %.loopexit5
  %209 = phi i1 [ false, %.loopexit5 ], [ true, %.preheader6 ]
  br i1 %209, label %.preheader4, label %219

.preheader4:                                      ; preds = %208
  br label %210

210:                                              ; preds = %.preheader4, %213
  %211 = phi i32 [ %218, %213 ], [ 0, %.preheader4 ]
  %212 = icmp samesign ult i32 %211, 2
  br i1 %212, label %213, label %.loopexit5

213:                                              ; preds = %210
  %214 = shl nuw nsw i32 %211, 6
  %215 = or disjoint i32 %206, %214
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nuw nsw i32 %211, 1
  br label %210, !llvm.loop !50

219:                                              ; preds = %208
  %220 = add nuw nsw i32 %206, 1
  br label %205, !llvm.loop !51

221:                                              ; preds = %205
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %222

.loopexit:                                        ; preds = %224
  br label %222, !llvm.loop !52

222:                                              ; preds = %.loopexit, %221
  %223 = phi i1 [ true, %221 ], [ false, %.loopexit ]
  br i1 %223, label %.preheader3, label %239

.preheader3:                                      ; preds = %222
  br label %224

224:                                              ; preds = %.preheader3, %237
  %225 = phi i32 [ %238, %237 ], [ 0, %.preheader3 ]
  %226 = icmp samesign ult i32 %225, 2
  br i1 %226, label %.preheader2, label %.loopexit

.preheader2:                                      ; preds = %224
  %227 = shl nuw nsw i32 %225, 3
  br label %228

228:                                              ; preds = %.preheader2, %231
  %229 = phi i32 [ %236, %231 ], [ 0, %.preheader2 ]
  %230 = icmp samesign ult i32 %229, 2
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = shl nuw nsw i32 %229, 6
  %233 = or disjoint i32 %232, %227
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %234
  store i32 1, ptr %235, align 4
  %236 = add nuw nsw i32 %229, 1
  br label %228, !llvm.loop !53

237:                                              ; preds = %228
  %238 = add nuw nsw i32 %225, 1
  br label %224, !llvm.loop !54

239:                                              ; preds = %222
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %240

240:                                              ; preds = %257, %239
  %241 = phi i32 [ %258, %257 ], [ 0, %239 ]
  %242 = icmp samesign ult i32 %241, 2
  br i1 %242, label %.preheader1, label %259

.preheader1:                                      ; preds = %240
  br label %243

243:                                              ; preds = %.preheader1, %255
  %244 = phi i32 [ %256, %255 ], [ 0, %.preheader1 ]
  %245 = icmp samesign ult i32 %244, 2
  br i1 %245, label %.preheader, label %257

.preheader:                                       ; preds = %243
  %246 = shl nuw nsw i32 %244, 3
  %invariant.op41 = or disjoint i32 %246, %241
  br label %247

247:                                              ; preds = %.preheader, %250
  %248 = phi i32 [ %254, %250 ], [ 0, %.preheader ]
  %249 = icmp samesign ult i32 %248, 2
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = shl nuw nsw i32 %248, 6
  %.reass42 = or disjoint i32 %251, %invariant.op41
  %252 = zext nneg i32 %.reass42 to i64
  %253 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %252
  store i32 1, ptr %253, align 4
  %254 = add nuw nsw i32 %248, 1
  br label %247, !llvm.loop !55

255:                                              ; preds = %247
  %256 = add nuw nsw i32 %244, 1
  br label %243, !llvm.loop !56

257:                                              ; preds = %243
  %258 = add nuw nsw i32 %241, 1
  br label %240, !llvm.loop !57

259:                                              ; preds = %240
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %260 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %260, 0
  br i1 %.not, label %263, label %261

261:                                              ; preds = %259
  %262 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %262, ptr @n, align 4
  br label %264

263:                                              ; preds = %259
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %.pre, %263 ], [ %262, %261 ]
  %266 = call i32 @Trial(i32 noundef %265)
  %.not1 = icmp eq i32 %266, 0
  br i1 %.not1, label %267, label %268

267:                                              ; preds = %264
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %271

268:                                              ; preds = %264
  %269 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %269, 2005
  br i1 %.not3, label %271, label %270

270:                                              ; preds = %268
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %271

271:                                              ; preds = %268, %270, %267
  %272 = load i32, ptr @n, align 4
  %273 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %272) #3
  %274 = load i32, ptr @kount, align 4
  %275 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %274) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
