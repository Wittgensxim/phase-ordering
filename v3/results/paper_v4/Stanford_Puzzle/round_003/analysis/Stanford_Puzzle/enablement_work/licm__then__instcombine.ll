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
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %16, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %4
  %17 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !7

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
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !9

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
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !11

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

8:                                                ; preds = %24, %7
  %9 = phi i32 [ 1, %7 ], [ %25, %24 ]
  br label %10

10:                                               ; preds = %21, %8
  %11 = phi i32 [ 1, %8 ], [ %22, %21 ]
  %12 = shl nuw nsw i32 %11, 3
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 1, %10 ], [ %19, %13 ]
  %15 = shl nuw nsw i32 %14, 6
  %16 = or i32 %12, %15
  %.reass = or i32 %16, %9
  %17 = zext nneg i32 %.reass to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp samesign ult i32 %14, 5
  br i1 %20, label %13, label %21, !llvm.loop !14

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %11, 1
  %23 = icmp samesign ult i32 %11, 5
  br i1 %23, label %10, label %24, !llvm.loop !15

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %9, 1
  %26 = icmp samesign ult i32 %9, 5
  br i1 %26, label %8, label %27, !llvm.loop !16

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %38, %27
  %29 = phi i32 [ 0, %27 ], [ %39, %38 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %30
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nuw nsw i32 %33, 1
  %37 = icmp samesign ult i32 %33, 511
  br i1 %37, label %32, label %38, !llvm.loop !17

38:                                               ; preds = %32
  %39 = add nuw nsw i32 %29, 1
  %40 = icmp samesign ult i32 %29, 12
  br i1 %40, label %28, label %41, !llvm.loop !18

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %50, %41
  %43 = phi i32 [ 0, %41 ], [ %51, %50 ]
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i1 [ true, %42 ], [ false, %44 ]
  %46 = phi i32 [ 0, %42 ], [ 8, %44 ]
  %47 = or disjoint i32 %43, %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %48
  store i32 1, ptr %49, align 4
  br i1 %45, label %44, label %50, !llvm.loop !19

50:                                               ; preds = %44
  %51 = add nuw nsw i32 %43, 1
  %52 = icmp samesign ult i32 %43, 3
  br i1 %52, label %42, label %53, !llvm.loop !20

53:                                               ; preds = %50
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %54

54:                                               ; preds = %65, %53
  %55 = phi i1 [ true, %53 ], [ false, %65 ]
  %56 = phi i32 [ 0, %53 ], [ 1, %65 ]
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi i32 [ 0, %54 ], [ %63, %57 ]
  %59 = shl nuw nsw i32 %58, 6
  %60 = or disjoint i32 %56, %59
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %61
  store i32 1, ptr %62, align 4
  %63 = add nuw nsw i32 %58, 1
  %64 = icmp samesign ult i32 %58, 3
  br i1 %64, label %57, label %65, !llvm.loop !21

65:                                               ; preds = %57
  br i1 %55, label %54, label %66, !llvm.loop !22

66:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = phi i32 [ 0, %66 ], [ %79, %78 ]
  %69 = shl nuw nsw i32 %68, 3
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i32 [ 0, %67 ], [ %76, %70 ]
  %72 = shl nuw nsw i32 %71, 6
  %73 = or disjoint i32 %72, %69
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %74
  store i32 1, ptr %75, align 4
  %76 = add nuw nsw i32 %71, 1
  %77 = icmp eq i32 %71, 0
  br i1 %77, label %70, label %78, !llvm.loop !23

78:                                               ; preds = %70
  %79 = add nuw nsw i32 %68, 1
  %80 = icmp samesign ult i32 %68, 3
  br i1 %80, label %67, label %81, !llvm.loop !24

81:                                               ; preds = %78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %82

82:                                               ; preds = %93, %81
  %83 = phi i1 [ true, %81 ], [ false, %93 ]
  %84 = phi i32 [ 0, %81 ], [ 1, %93 ]
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i32 [ 0, %82 ], [ %91, %85 ]
  %87 = shl nuw nsw i32 %86, 3
  %88 = or disjoint i32 %84, %87
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nuw nsw i32 %86, 1
  %92 = icmp samesign ult i32 %86, 3
  br i1 %92, label %85, label %93, !llvm.loop !25

93:                                               ; preds = %85
  br i1 %83, label %82, label %94, !llvm.loop !26

94:                                               ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %95

95:                                               ; preds = %105, %94
  %96 = phi i32 [ 0, %94 ], [ %106, %105 ]
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi i32 [ 0, %95 ], [ %103, %97 ]
  %99 = shl nuw nsw i32 %98, 6
  %100 = or disjoint i32 %96, %99
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nuw nsw i32 %98, 1
  %104 = icmp eq i32 %98, 0
  br i1 %104, label %97, label %105, !llvm.loop !27

105:                                              ; preds = %97
  %106 = add nuw nsw i32 %96, 1
  %107 = icmp samesign ult i32 %96, 3
  br i1 %107, label %95, label %108, !llvm.loop !28

108:                                              ; preds = %105
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %109

109:                                              ; preds = %120, %108
  %110 = phi i1 [ true, %108 ], [ false, %120 ]
  %111 = phi i32 [ 0, %108 ], [ 8, %120 ]
  br label %112

112:                                              ; preds = %112, %109
  %113 = phi i32 [ 0, %109 ], [ %118, %112 ]
  %114 = shl nuw nsw i32 %113, 6
  %115 = or disjoint i32 %114, %111
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nuw nsw i32 %113, 1
  %119 = icmp samesign ult i32 %113, 3
  br i1 %119, label %112, label %120, !llvm.loop !29

120:                                              ; preds = %112
  br i1 %110, label %109, label %121, !llvm.loop !30

121:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i32 [ 0, %121 ], [ %126, %122 ]
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nuw nsw i32 %123, 1
  %127 = icmp samesign ult i32 %123, 2
  br i1 %127, label %122, label %128, !llvm.loop !31

128:                                              ; preds = %122
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %129

129:                                              ; preds = %129, %128
  %130 = phi i32 [ 0, %128 ], [ %134, %129 ]
  %131 = shl nuw nsw i32 %130, 3
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp samesign ult i32 %130, 2
  br i1 %135, label %129, label %136, !llvm.loop !32

136:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %137

137:                                              ; preds = %137, %136
  %138 = phi i32 [ 0, %136 ], [ %142, %137 ]
  %139 = shl nuw nsw i32 %138, 6
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nuw nsw i32 %138, 1
  %143 = icmp samesign ult i32 %138, 2
  br i1 %143, label %137, label %144, !llvm.loop !33

144:                                              ; preds = %137
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %145

145:                                              ; preds = %154, %144
  %146 = phi i1 [ true, %144 ], [ false, %154 ]
  %147 = phi i32 [ 0, %144 ], [ 1, %154 ]
  br label %148

148:                                              ; preds = %148, %145
  %149 = phi i1 [ true, %145 ], [ false, %148 ]
  %150 = phi i32 [ 0, %145 ], [ 8, %148 ]
  %151 = or disjoint i32 %147, %150
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %152
  store i32 1, ptr %153, align 4
  br i1 %149, label %148, label %154, !llvm.loop !34

154:                                              ; preds = %148
  br i1 %146, label %145, label %155, !llvm.loop !35

155:                                              ; preds = %154
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %156

156:                                              ; preds = %167, %155
  %157 = phi i1 [ true, %155 ], [ false, %167 ]
  %158 = phi i32 [ 0, %155 ], [ 1, %167 ]
  br label %159

159:                                              ; preds = %159, %156
  %160 = phi i32 [ 0, %156 ], [ %165, %159 ]
  %161 = shl nuw nsw i32 %160, 6
  %162 = or disjoint i32 %158, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %160, 1
  %166 = icmp eq i32 %160, 0
  br i1 %166, label %159, label %167, !llvm.loop !36

167:                                              ; preds = %159
  br i1 %157, label %156, label %168, !llvm.loop !37

168:                                              ; preds = %167
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %169

169:                                              ; preds = %180, %168
  %170 = phi i1 [ true, %168 ], [ false, %180 ]
  %171 = phi i32 [ 0, %168 ], [ 8, %180 ]
  br label %172

172:                                              ; preds = %172, %169
  %173 = phi i32 [ 0, %169 ], [ %178, %172 ]
  %174 = shl nuw nsw i32 %173, 6
  %175 = or disjoint i32 %174, %171
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %176
  store i32 1, ptr %177, align 4
  %178 = add nuw nsw i32 %173, 1
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %172, label %180, !llvm.loop !38

180:                                              ; preds = %172
  br i1 %170, label %169, label %181, !llvm.loop !39

181:                                              ; preds = %180
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %182

182:                                              ; preds = %197, %181
  %183 = phi i1 [ true, %181 ], [ false, %197 ]
  %184 = phi i32 [ 0, %181 ], [ 1, %197 ]
  br label %185

185:                                              ; preds = %196, %182
  %186 = phi i1 [ true, %182 ], [ false, %196 ]
  %187 = phi i32 [ 0, %182 ], [ 8, %196 ]
  br label %188

188:                                              ; preds = %188, %185
  %189 = phi i32 [ 0, %185 ], [ %194, %188 ]
  %190 = shl nuw nsw i32 %189, 6
  %191 = or disjoint i32 %187, %190
  %.reass2 = or disjoint i32 %191, %184
  %192 = zext nneg i32 %.reass2 to i64
  %193 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %192
  store i32 1, ptr %193, align 4
  %194 = add nuw nsw i32 %189, 1
  %195 = icmp eq i32 %189, 0
  br i1 %195, label %188, label %196, !llvm.loop !40

196:                                              ; preds = %188
  br i1 %186, label %185, label %197, !llvm.loop !41

197:                                              ; preds = %196
  br i1 %183, label %182, label %198, !llvm.loop !42

198:                                              ; preds = %197
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %199 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %199, 0
  br i1 %.not, label %202, label %200

200:                                              ; preds = %198
  %201 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %201, ptr @n, align 4
  br label %203

202:                                              ; preds = %198
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %.pre, %202 ], [ %201, %200 ]
  %205 = call i32 @Trial(i32 noundef %204)
  %.not1 = icmp eq i32 %205, 0
  br i1 %.not1, label %206, label %207

206:                                              ; preds = %203
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %211

207:                                              ; preds = %203
  %208 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %208, 2005
  br i1 %.not3, label %210, label %209

209:                                              ; preds = %207
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %210

210:                                              ; preds = %209, %207
  br label %211

211:                                              ; preds = %210, %206
  %212 = load i32, ptr @n, align 4
  %213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %212) #3
  %214 = load i32, ptr @kount, align 4
  %215 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %214) #3
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
