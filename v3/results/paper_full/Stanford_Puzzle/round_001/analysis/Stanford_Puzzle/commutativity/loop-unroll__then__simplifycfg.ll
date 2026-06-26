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
  br label %3

3:                                                ; preds = %15, %2
  %4 = phi i32 [ %16, %15 ], [ 0, %2 ]
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

17:                                               ; preds = %3, %10
  %18 = phi i32 [ 0, %10 ], [ 1, %3 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %14, label %10

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
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

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

1:                                                ; preds = %10, %0
  %2 = phi i32 [ 0, %0 ], [ %13, %10 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  %8 = add nuw nsw i32 %2, 2
  %9 = icmp samesign ult i32 %8, 512
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  %13 = add nuw nsw i32 %2, 3
  br label %1, !llvm.loop !13

14:                                               ; preds = %1, %17
  %15 = phi i32 [ %93, %17 ], [ 1, %1 ]
  %16 = icmp samesign ult i32 %15, 6
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  %18 = or disjoint i32 %15, 72
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  %21 = or disjoint i32 %15, 136
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = or disjoint i32 %15, 200
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %27 = or disjoint i32 %15, 264
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  %30 = or disjoint i32 %15, 328
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  %33 = or disjoint i32 %15, 80
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  %36 = or disjoint i32 %15, 144
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  %39 = or disjoint i32 %15, 208
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  %42 = or disjoint i32 %15, 272
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  %45 = or disjoint i32 %15, 336
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %46
  store i32 0, ptr %47, align 4
  %48 = or disjoint i32 %15, 88
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  %51 = or disjoint i32 %15, 152
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %52
  store i32 0, ptr %53, align 4
  %54 = or disjoint i32 %15, 216
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  %57 = or disjoint i32 %15, 280
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %58
  store i32 0, ptr %59, align 4
  %60 = or disjoint i32 %15, 344
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  %63 = or disjoint i32 %15, 96
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  %66 = or disjoint i32 %15, 160
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  %69 = or disjoint i32 %15, 224
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  %72 = or disjoint i32 %15, 288
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  %75 = or disjoint i32 %15, 352
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  %78 = or disjoint i32 %15, 104
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %79
  store i32 0, ptr %80, align 4
  %81 = or disjoint i32 %15, 168
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %82
  store i32 0, ptr %83, align 4
  %84 = or disjoint i32 %15, 232
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  %87 = or disjoint i32 %15, 296
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  %90 = or disjoint i32 %15, 360
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %91
  store i32 0, ptr %92, align 4
  %93 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !14

94:                                               ; preds = %14, %117
  %95 = phi i32 [ %118, %117 ], [ 0, %14 ]
  %96 = icmp samesign ult i32 %95, 13
  br i1 %96, label %97, label %119

97:                                               ; preds = %94
  %98 = zext nneg i32 %95 to i64
  %99 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %98
  br label %100

100:                                              ; preds = %111, %97
  %101 = phi i32 [ 0, %97 ], [ %116, %111 ]
  %102 = zext nneg i32 %95 to i64
  %103 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %102
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds nuw [4 x i8], ptr %103, i64 %104
  store i32 0, ptr %105, align 4
  %106 = add nuw nsw i32 %101, 1
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr %99, i64 %107
  store i32 0, ptr %108, align 4
  %109 = add nuw nsw i32 %101, 2
  %110 = icmp samesign ult i32 %109, 512
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = zext nneg i32 %95 to i64
  %113 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %112
  %114 = zext nneg i32 %109 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr %113, i64 %114
  store i32 0, ptr %115, align 4
  %116 = add nuw nsw i32 %101, 3
  br label %100, !llvm.loop !15

117:                                              ; preds = %100
  %118 = add nuw nsw i32 %95, 1
  br label %94, !llvm.loop !16

119:                                              ; preds = %94
  store i32 1, ptr @p, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %120 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %120, 0
  br i1 %.not, label %123, label %121

121:                                              ; preds = %119
  %122 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %122, ptr @n, align 4
  br label %124

123:                                              ; preds = %119
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %.pre, %123 ], [ %122, %121 ]
  %126 = call i32 @Trial(i32 noundef %125)
  %.not1 = icmp eq i32 %126, 0
  br i1 %.not1, label %127, label %128

127:                                              ; preds = %124
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %131

128:                                              ; preds = %124
  %129 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %129, 2005
  br i1 %.not3, label %131, label %130

130:                                              ; preds = %128
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %131

131:                                              ; preds = %128, %130, %127
  %132 = load i32, ptr @n, align 4
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %132) #3
  %134 = load i32, ptr @kount, align 4
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %134) #3
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
  br label %1, !llvm.loop !17

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
