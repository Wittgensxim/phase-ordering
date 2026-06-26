; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_002\output.ll'
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
  %.not1 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !7

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
  %.not4 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !9

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
  %.lcssa = phi i32 [ %24, %23 ]
  br label %33

29:                                               ; preds = %23
  %30 = add nsw i32 %24, 1
  %31 = icmp slt i32 %30, 512
  br i1 %31, label %23, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge7, %15
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %.lcssa, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !11

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
  %24 = icmp samesign ult i32 %23, 13
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
  %6 = icmp samesign ult i32 %5, 512
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
  %21 = icmp samesign ult i32 %20, 6
  br i1 %21, label %12, label %22, !llvm.loop !14

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp samesign ult i32 %23, 6
  br i1 %24, label %10, label %25, !llvm.loop !15

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp samesign ult i32 %26, 6
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
  %38 = icmp samesign ult i32 %37, 512
  br i1 %38, label %31, label %39, !llvm.loop !17

39:                                               ; preds = %31
  %40 = add nuw nsw i32 %30, 1
  %41 = icmp samesign ult i32 %40, 13
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %53, %42
  %44 = phi i32 [ 0, %42 ], [ %54, %53 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i32 [ 0, %43 ], [ 1, %45 ]
  %47 = shl nuw nsw i32 %46, 3
  %48 = add nuw nsw i32 %47, %44
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nuw nsw i32 %46, 1
  %52 = icmp samesign ult i32 %51, 2
  br i1 %52, label %45, label %53, !llvm.loop !19

53:                                               ; preds = %45
  %54 = add nuw nsw i32 %44, 1
  %55 = icmp samesign ult i32 %54, 4
  br i1 %55, label %43, label %56, !llvm.loop !20

56:                                               ; preds = %53
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %57

57:                                               ; preds = %67, %56
  %58 = phi i32 [ 0, %56 ], [ 1, %67 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %65, %59 ]
  %61 = shl nuw nsw i32 %60, 6
  %62 = add nuw nsw i32 %61, %58
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %63
  store i32 1, ptr %64, align 4
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp samesign ult i32 %65, 4
  br i1 %66, label %59, label %67, !llvm.loop !21

67:                                               ; preds = %59
  %68 = add nuw nsw i32 %58, 1
  %69 = icmp samesign ult i32 %68, 2
  br i1 %69, label %57, label %70, !llvm.loop !22

70:                                               ; preds = %67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = phi i32 [ 0, %70 ], [ %83, %82 ]
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi i32 [ 0, %71 ], [ %80, %73 ]
  %75 = shl nuw nsw i32 %74, 6
  %76 = shl nuw nsw i32 %72, 3
  %77 = add nuw nsw i32 %75, %76
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nuw nsw i32 %74, 1
  %81 = icmp samesign ult i32 %80, 2
  br i1 %81, label %73, label %82, !llvm.loop !23

82:                                               ; preds = %73
  %83 = add nuw nsw i32 %72, 1
  %84 = icmp samesign ult i32 %83, 4
  br i1 %84, label %71, label %85, !llvm.loop !24

85:                                               ; preds = %82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %86

86:                                               ; preds = %96, %85
  %87 = phi i32 [ 0, %85 ], [ 1, %96 ]
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i32 [ 0, %86 ], [ %94, %88 ]
  %90 = shl nuw nsw i32 %89, 3
  %91 = add nuw nsw i32 %90, %87
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %92
  store i32 1, ptr %93, align 4
  %94 = add nuw nsw i32 %89, 1
  %95 = icmp samesign ult i32 %94, 4
  br i1 %95, label %88, label %96, !llvm.loop !25

96:                                               ; preds = %88
  %97 = add nuw nsw i32 %87, 1
  %98 = icmp samesign ult i32 %97, 2
  br i1 %98, label %86, label %99, !llvm.loop !26

99:                                               ; preds = %96
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %100

100:                                              ; preds = %110, %99
  %101 = phi i32 [ 0, %99 ], [ %111, %110 ]
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i32 [ 0, %100 ], [ %108, %102 ]
  %104 = shl nuw nsw i32 %103, 6
  %105 = add nuw nsw i32 %104, %101
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %106
  store i32 1, ptr %107, align 4
  %108 = add nuw nsw i32 %103, 1
  %109 = icmp samesign ult i32 %108, 2
  br i1 %109, label %102, label %110, !llvm.loop !27

110:                                              ; preds = %102
  %111 = add nuw nsw i32 %101, 1
  %112 = icmp samesign ult i32 %111, 4
  br i1 %112, label %100, label %113, !llvm.loop !28

113:                                              ; preds = %110
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %114

114:                                              ; preds = %125, %113
  %115 = phi i32 [ 0, %113 ], [ 1, %125 ]
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i32 [ 0, %114 ], [ %123, %116 ]
  %118 = shl nuw nsw i32 %117, 6
  %119 = shl nuw nsw i32 %115, 3
  %120 = add nuw nsw i32 %118, %119
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nuw nsw i32 %117, 1
  %124 = icmp samesign ult i32 %123, 4
  br i1 %124, label %116, label %125, !llvm.loop !29

125:                                              ; preds = %116
  %126 = add nuw nsw i32 %115, 1
  %127 = icmp samesign ult i32 %126, 2
  br i1 %127, label %114, label %128, !llvm.loop !30

128:                                              ; preds = %125
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %129

129:                                              ; preds = %129, %128
  %130 = phi i32 [ 0, %128 ], [ %133, %129 ]
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nuw nsw i32 %130, 1
  %134 = icmp samesign ult i32 %133, 3
  br i1 %134, label %129, label %135, !llvm.loop !31

135:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %136

136:                                              ; preds = %136, %135
  %137 = phi i32 [ 0, %135 ], [ %141, %136 ]
  %138 = shl nuw nsw i32 %137, 3
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %139
  store i32 1, ptr %140, align 4
  %141 = add nuw nsw i32 %137, 1
  %142 = icmp samesign ult i32 %141, 3
  br i1 %142, label %136, label %143, !llvm.loop !32

143:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %144

144:                                              ; preds = %144, %143
  %145 = phi i32 [ 0, %143 ], [ %149, %144 ]
  %146 = shl nuw nsw i32 %145, 6
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nuw nsw i32 %145, 1
  %150 = icmp samesign ult i32 %149, 3
  br i1 %150, label %144, label %151, !llvm.loop !33

151:                                              ; preds = %144
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %152

152:                                              ; preds = %162, %151
  %153 = phi i32 [ 0, %151 ], [ 1, %162 ]
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi i32 [ 0, %152 ], [ 1, %154 ]
  %156 = shl nuw nsw i32 %155, 3
  %157 = add nuw nsw i32 %156, %153
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %158
  store i32 1, ptr %159, align 4
  %160 = add nuw nsw i32 %155, 1
  %161 = icmp samesign ult i32 %160, 2
  br i1 %161, label %154, label %162, !llvm.loop !34

162:                                              ; preds = %154
  %163 = add nuw nsw i32 %153, 1
  %164 = icmp samesign ult i32 %163, 2
  br i1 %164, label %152, label %165, !llvm.loop !35

165:                                              ; preds = %162
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %166

166:                                              ; preds = %176, %165
  %167 = phi i32 [ 0, %165 ], [ 1, %176 ]
  br label %168

168:                                              ; preds = %168, %166
  %169 = phi i32 [ 0, %166 ], [ %174, %168 ]
  %170 = shl nuw nsw i32 %169, 6
  %171 = add nuw nsw i32 %170, %167
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %172
  store i32 1, ptr %173, align 4
  %174 = add nuw nsw i32 %169, 1
  %175 = icmp samesign ult i32 %174, 2
  br i1 %175, label %168, label %176, !llvm.loop !36

176:                                              ; preds = %168
  %177 = add nuw nsw i32 %167, 1
  %178 = icmp samesign ult i32 %177, 2
  br i1 %178, label %166, label %179, !llvm.loop !37

179:                                              ; preds = %176
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %180

180:                                              ; preds = %191, %179
  %181 = phi i32 [ 0, %179 ], [ 1, %191 ]
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi i32 [ 0, %180 ], [ %189, %182 ]
  %184 = shl nuw nsw i32 %183, 6
  %185 = shl nuw nsw i32 %181, 3
  %186 = add nuw nsw i32 %184, %185
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %187
  store i32 1, ptr %188, align 4
  %189 = add nuw nsw i32 %183, 1
  %190 = icmp samesign ult i32 %189, 2
  br i1 %190, label %182, label %191, !llvm.loop !38

191:                                              ; preds = %182
  %192 = add nuw nsw i32 %181, 1
  %193 = icmp samesign ult i32 %192, 2
  br i1 %193, label %180, label %194, !llvm.loop !39

194:                                              ; preds = %191
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %195

195:                                              ; preds = %212, %194
  %196 = phi i32 [ 0, %194 ], [ 1, %212 ]
  br label %197

197:                                              ; preds = %209, %195
  %198 = phi i32 [ 0, %195 ], [ 1, %209 ]
  br label %199

199:                                              ; preds = %199, %197
  %200 = phi i32 [ 0, %197 ], [ %207, %199 ]
  %201 = shl nuw nsw i32 %200, 6
  %202 = shl nuw nsw i32 %198, 3
  %203 = add nuw nsw i32 %201, %202
  %204 = add nuw nsw i32 %203, %196
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %205
  store i32 1, ptr %206, align 4
  %207 = add nuw nsw i32 %200, 1
  %208 = icmp samesign ult i32 %207, 2
  br i1 %208, label %199, label %209, !llvm.loop !40

209:                                              ; preds = %199
  %210 = add nuw nsw i32 %198, 1
  %211 = icmp samesign ult i32 %210, 2
  br i1 %211, label %197, label %212, !llvm.loop !41

212:                                              ; preds = %209
  %213 = add nuw nsw i32 %196, 1
  %214 = icmp samesign ult i32 %213, 2
  br i1 %214, label %195, label %215, !llvm.loop !42

215:                                              ; preds = %212
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %216 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %216, 0
  br i1 %.not, label %219, label %217

217:                                              ; preds = %215
  %218 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %218, ptr @n, align 4
  br label %220

219:                                              ; preds = %215
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %.pre, %219 ], [ %218, %217 ]
  %222 = call i32 @Trial(i32 noundef %221)
  %.not1 = icmp eq i32 %222, 0
  br i1 %.not1, label %223, label %224

223:                                              ; preds = %220
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %228

224:                                              ; preds = %220
  %225 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %225, 2005
  br i1 %.not3, label %227, label %226

226:                                              ; preds = %224
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %227

227:                                              ; preds = %226, %224
  br label %228

228:                                              ; preds = %227, %223
  %229 = load i32, ptr @n, align 4
  %230 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %229) #3
  %231 = load i32, ptr @kount, align 4
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %231) #3
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
  %4 = icmp samesign ult i32 %3, 100
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
