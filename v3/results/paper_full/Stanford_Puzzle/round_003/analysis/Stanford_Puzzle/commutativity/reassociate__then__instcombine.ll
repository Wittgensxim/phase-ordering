; ModuleID = 'results\paper_full\Stanford_Puzzle\round_002\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %16, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %4, %1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %3
  %17 = add nuw nsw i32 %4, 1
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ 1, %18 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %13, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %4, %1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = icmp slt i32 %1, 512
  br i1 %22, label %.lr.ph6, label %32

.lr.ph6:                                          ; preds = %15
  br label %23

23:                                               ; preds = %29, %.lr.ph6
  %24 = phi i32 [ %1, %.lr.ph6 ], [ %30, %29 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %28, label %29

28:                                               ; preds = %23
  br label %33

29:                                               ; preds = %23
  %30 = add nsw i32 %24, 1
  %31 = icmp slt i32 %24, 511
  br i1 %31, label %23, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge7, %15
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %24, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %13, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %4, %1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %22, label %12

12:                                               ; preds = %4
  %13 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %12
  %15 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %14
  br label %26

20:                                               ; preds = %17
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %12
  br label %22

22:                                               ; preds = %21, %4
  %23 = add nuw nsw i32 %5, 1
  %24 = icmp samesign ult i32 %5, 12
  br i1 %24, label %4, label %25, !llvm.loop !12

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ 0, %25 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp samesign ult i32 %2, 511
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %25, %7
  %9 = phi i32 [ 1, %7 ], [ %26, %25 ]
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i32 [ 1, %8 ], [ %23, %22 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 1, %10 ], [ %20, %12 ]
  %14 = shl nuw nsw i32 %13, 6
  %15 = shl nuw nsw i32 %11, 3
  %16 = add nuw nsw i32 %14, %15
  %17 = add nuw nsw i32 %16, %9
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp samesign ult i32 %13, 5
  br i1 %21, label %12, label %22, !llvm.loop !14

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp samesign ult i32 %11, 5
  br i1 %24, label %10, label %25, !llvm.loop !15

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp samesign ult i32 %9, 5
  br i1 %27, label %8, label %28, !llvm.loop !16

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %39, %28
  %30 = phi i32 [ 0, %28 ], [ %40, %39 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %37, %31 ]
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %33
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %35
  store i32 0, ptr %36, align 4
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp samesign ult i32 %32, 511
  br i1 %38, label %31, label %39, !llvm.loop !17

39:                                               ; preds = %31
  %40 = add nuw nsw i32 %30, 1
  %41 = icmp samesign ult i32 %30, 12
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %51, %42
  %44 = phi i32 [ 0, %42 ], [ %52, %51 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i1 [ true, %43 ], [ false, %45 ]
  %47 = phi i32 [ 0, %43 ], [ 8, %45 ]
  %48 = add nuw nsw i32 %47, %44
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  br i1 %46, label %45, label %51, !llvm.loop !19

51:                                               ; preds = %45
  %52 = add nuw nsw i32 %44, 1
  %53 = icmp samesign ult i32 %44, 3
  br i1 %53, label %43, label %54, !llvm.loop !20

54:                                               ; preds = %51
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %55

55:                                               ; preds = %66, %54
  %56 = phi i1 [ true, %54 ], [ false, %66 ]
  %57 = phi i32 [ 0, %54 ], [ 1, %66 ]
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ 0, %55 ], [ %64, %58 ]
  %60 = shl nuw nsw i32 %59, 6
  %61 = or disjoint i32 %60, %57
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nuw nsw i32 %59, 1
  %65 = icmp samesign ult i32 %59, 3
  br i1 %65, label %58, label %66, !llvm.loop !21

66:                                               ; preds = %58
  br i1 %56, label %55, label %67, !llvm.loop !22

67:                                               ; preds = %66
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = phi i32 [ 0, %67 ], [ %80, %79 ]
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ 0, %68 ], [ %77, %70 ]
  %72 = shl nuw nsw i32 %71, 6
  %73 = shl nuw nsw i32 %69, 3
  %74 = add nuw nsw i32 %72, %73
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %75
  store i32 1, ptr %76, align 4
  %77 = add nuw nsw i32 %71, 1
  %78 = icmp eq i32 %71, 0
  br i1 %78, label %70, label %79, !llvm.loop !23

79:                                               ; preds = %70
  %80 = add nuw nsw i32 %69, 1
  %81 = icmp samesign ult i32 %69, 3
  br i1 %81, label %68, label %82, !llvm.loop !24

82:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %83

83:                                               ; preds = %94, %82
  %84 = phi i1 [ true, %82 ], [ false, %94 ]
  %85 = phi i32 [ 0, %82 ], [ 1, %94 ]
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi i32 [ 0, %83 ], [ %92, %86 ]
  %88 = shl nuw nsw i32 %87, 3
  %89 = or disjoint i32 %88, %85
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %90
  store i32 1, ptr %91, align 4
  %92 = add nuw nsw i32 %87, 1
  %93 = icmp samesign ult i32 %87, 3
  br i1 %93, label %86, label %94, !llvm.loop !25

94:                                               ; preds = %86
  br i1 %84, label %83, label %95, !llvm.loop !26

95:                                               ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %96

96:                                               ; preds = %106, %95
  %97 = phi i32 [ 0, %95 ], [ %107, %106 ]
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi i32 [ 0, %96 ], [ %104, %98 ]
  %100 = shl nuw nsw i32 %99, 6
  %101 = add nuw nsw i32 %100, %97
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %102
  store i32 1, ptr %103, align 4
  %104 = add nuw nsw i32 %99, 1
  %105 = icmp eq i32 %99, 0
  br i1 %105, label %98, label %106, !llvm.loop !27

106:                                              ; preds = %98
  %107 = add nuw nsw i32 %97, 1
  %108 = icmp samesign ult i32 %97, 3
  br i1 %108, label %96, label %109, !llvm.loop !28

109:                                              ; preds = %106
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %110

110:                                              ; preds = %121, %109
  %111 = phi i1 [ true, %109 ], [ false, %121 ]
  %112 = phi i32 [ 0, %109 ], [ 8, %121 ]
  br label %113

113:                                              ; preds = %113, %110
  %114 = phi i32 [ 0, %110 ], [ %119, %113 ]
  %115 = shl nuw nsw i32 %114, 6
  %116 = or disjoint i32 %115, %112
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %117
  store i32 1, ptr %118, align 4
  %119 = add nuw nsw i32 %114, 1
  %120 = icmp samesign ult i32 %114, 3
  br i1 %120, label %113, label %121, !llvm.loop !29

121:                                              ; preds = %113
  br i1 %111, label %110, label %122, !llvm.loop !30

122:                                              ; preds = %121
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %123

123:                                              ; preds = %123, %122
  %124 = phi i32 [ 0, %122 ], [ %127, %123 ]
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nuw nsw i32 %124, 1
  %128 = icmp samesign ult i32 %124, 2
  br i1 %128, label %123, label %129, !llvm.loop !31

129:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %130

130:                                              ; preds = %130, %129
  %131 = phi i32 [ 0, %129 ], [ %135, %130 ]
  %132 = shl nuw nsw i32 %131, 3
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %133
  store i32 1, ptr %134, align 4
  %135 = add nuw nsw i32 %131, 1
  %136 = icmp samesign ult i32 %131, 2
  br i1 %136, label %130, label %137, !llvm.loop !32

137:                                              ; preds = %130
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %138

138:                                              ; preds = %138, %137
  %139 = phi i32 [ 0, %137 ], [ %143, %138 ]
  %140 = shl nuw nsw i32 %139, 6
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nuw nsw i32 %139, 1
  %144 = icmp samesign ult i32 %139, 2
  br i1 %144, label %138, label %145, !llvm.loop !33

145:                                              ; preds = %138
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %146

146:                                              ; preds = %155, %145
  %147 = phi i1 [ true, %145 ], [ false, %155 ]
  %148 = phi i32 [ 0, %145 ], [ 1, %155 ]
  br label %149

149:                                              ; preds = %149, %146
  %150 = phi i1 [ true, %146 ], [ false, %149 ]
  %151 = phi i32 [ 0, %146 ], [ 8, %149 ]
  %152 = or disjoint i32 %151, %148
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %153
  store i32 1, ptr %154, align 4
  br i1 %150, label %149, label %155, !llvm.loop !34

155:                                              ; preds = %149
  br i1 %147, label %146, label %156, !llvm.loop !35

156:                                              ; preds = %155
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %157

157:                                              ; preds = %168, %156
  %158 = phi i1 [ true, %156 ], [ false, %168 ]
  %159 = phi i32 [ 0, %156 ], [ 1, %168 ]
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i32 [ 0, %157 ], [ %166, %160 ]
  %162 = shl nuw nsw i32 %161, 6
  %163 = or disjoint i32 %162, %159
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nuw nsw i32 %161, 1
  %167 = icmp eq i32 %161, 0
  br i1 %167, label %160, label %168, !llvm.loop !36

168:                                              ; preds = %160
  br i1 %158, label %157, label %169, !llvm.loop !37

169:                                              ; preds = %168
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %170

170:                                              ; preds = %181, %169
  %171 = phi i1 [ true, %169 ], [ false, %181 ]
  %172 = phi i32 [ 0, %169 ], [ 8, %181 ]
  br label %173

173:                                              ; preds = %173, %170
  %174 = phi i32 [ 0, %170 ], [ %179, %173 ]
  %175 = shl nuw nsw i32 %174, 6
  %176 = or disjoint i32 %175, %172
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %177
  store i32 1, ptr %178, align 4
  %179 = add nuw nsw i32 %174, 1
  %180 = icmp eq i32 %174, 0
  br i1 %180, label %173, label %181, !llvm.loop !38

181:                                              ; preds = %173
  br i1 %171, label %170, label %182, !llvm.loop !39

182:                                              ; preds = %181
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %183

183:                                              ; preds = %199, %182
  %184 = phi i1 [ true, %182 ], [ false, %199 ]
  %185 = phi i32 [ 0, %182 ], [ 1, %199 ]
  br label %186

186:                                              ; preds = %198, %183
  %187 = phi i1 [ true, %183 ], [ false, %198 ]
  %188 = phi i32 [ 0, %183 ], [ 8, %198 ]
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi i32 [ 0, %186 ], [ %196, %189 ]
  %191 = shl nuw nsw i32 %190, 6
  %192 = or disjoint i32 %191, %188
  %193 = or disjoint i32 %192, %185
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %194
  store i32 1, ptr %195, align 4
  %196 = add nuw nsw i32 %190, 1
  %197 = icmp eq i32 %190, 0
  br i1 %197, label %189, label %198, !llvm.loop !40

198:                                              ; preds = %189
  br i1 %187, label %186, label %199, !llvm.loop !41

199:                                              ; preds = %198
  br i1 %184, label %183, label %200, !llvm.loop !42

200:                                              ; preds = %199
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %201 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %201, 0
  br i1 %.not, label %204, label %202

202:                                              ; preds = %200
  %203 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %203, ptr @n, align 4
  br label %205

204:                                              ; preds = %200
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %205

205:                                              ; preds = %204, %202
  %206 = phi i32 [ %.pre, %204 ], [ %203, %202 ]
  %207 = call i32 @Trial(i32 noundef %206)
  %.not1 = icmp eq i32 %207, 0
  br i1 %.not1, label %208, label %209

208:                                              ; preds = %205
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %213

209:                                              ; preds = %205
  %210 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %210, 2005
  br i1 %.not3, label %212, label %211

211:                                              ; preds = %209
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %212

212:                                              ; preds = %211, %209
  br label %213

213:                                              ; preds = %212, %208
  %214 = load i32, ptr @n, align 4
  %215 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %214) #3
  %216 = load i32, ptr @kount, align 4
  %217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %216) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %2, 99
  br i1 %4, label %1, label %5, !llvm.loop !43

5:                                                ; preds = %1
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
