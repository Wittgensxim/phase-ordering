; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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

18:                                               ; preds = %8, %13
  %19 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

20:                                               ; preds = %6, %13
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

17:                                               ; preds = %8, %13
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
  %wide.trip.count = sext i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  store i32 %28, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %29, label %34

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

34:                                               ; preds = %27, %32
  %storemerge2 = phi i32 [ %28, %32 ], [ 0, %27 ]
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

17:                                               ; preds = %8, %13
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
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = phi i32 [ %0, %1 ], [ %26, %25 ]
  %9 = phi i32 [ 0, %1 ], [ %27, %25 ]
  store i32 %9, ptr %3, align 4
  %10 = icmp slt i32 %9, 13
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %25, label %18

18:                                               ; preds = %11
  %19 = call i32 @Fit(i32 noundef %9, i32 noundef %8)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %25, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %9, i32 noundef %8)
  store i32 %21, ptr %4, align 4
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp ne i32 %22, 0
  %23 = icmp eq i32 %21, 0
  %or.cond = select i1 %.not3, i1 true, i1 %23
  br i1 %or.cond, label %28, label %24

24:                                               ; preds = %20
  call void @Remove(i32 noundef %9, i32 noundef %0)
  br label %25

25:                                               ; preds = %11, %24, %18
  %26 = phi i32 [ %8, %11 ], [ %0, %24 ], [ %8, %18 ]
  %27 = add nsw i32 %9, 1
  br label %7, !llvm.loop !12

28:                                               ; preds = %7, %20
  %storemerge1 = phi i32 [ 1, %20 ], [ 0, %7 ]
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
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5, %33
  %13 = phi i32 [ %34, %33 ], [ 1, %5 ]
  store i32 %13, ptr %1, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %35

15:                                               ; preds = %12, %31
  %16 = phi i32 [ %20, %31 ], [ %13, %12 ]
  %17 = phi i32 [ %32, %31 ], [ 1, %12 ]
  store i32 %17, ptr %2, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %33

19:                                               ; preds = %15, %23
  %20 = phi i32 [ %13, %23 ], [ %16, %15 ]
  %21 = phi i32 [ %30, %23 ], [ 1, %15 ]
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

35:                                               ; preds = %12, %47
  %36 = phi i32 [ %48, %47 ], [ 0, %12 ]
  store i32 %36, ptr %1, align 4
  %37 = icmp slt i32 %36, 13
  br i1 %37, label %38, label %49

38:                                               ; preds = %35, %41
  %39 = phi i32 [ %46, %41 ], [ 0, %35 ]
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

49:                                               ; preds = %35, %70
  %50 = phi i32 [ %71, %70 ], [ 0, %35 ]
  store i32 %50, ptr %1, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %72

52:                                               ; preds = %49, %68
  %53 = phi i32 [ %57, %68 ], [ %50, %49 ]
  %54 = phi i32 [ %69, %68 ], [ 0, %49 ]
  store i32 %54, ptr %2, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %70

56:                                               ; preds = %52, %60
  %57 = phi i32 [ %50, %60 ], [ %53, %52 ]
  %58 = phi i32 [ %67, %60 ], [ 0, %52 ]
  store i32 %58, ptr %3, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = shl i32 %58, 6
  %62 = shl i32 %54, 3
  %63 = add i32 %61, %62
  %64 = add nsw i32 %50, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @p, i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nsw i32 %58, 1
  br label %56, !llvm.loop !19

68:                                               ; preds = %56
  %69 = add nsw i32 %54, 1
  br label %52, !llvm.loop !20

70:                                               ; preds = %52
  %71 = add nsw i32 %53, 1
  br label %49, !llvm.loop !21

72:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %73

73:                                               ; preds = %94, %72
  %74 = phi i32 [ 0, %72 ], [ %95, %94 ]
  store i32 %74, ptr %1, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %96

76:                                               ; preds = %73, %92
  %77 = phi i32 [ %81, %92 ], [ %74, %73 ]
  %78 = phi i32 [ %93, %92 ], [ 0, %73 ]
  store i32 %78, ptr %2, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %94

80:                                               ; preds = %76, %84
  %81 = phi i32 [ %74, %84 ], [ %77, %76 ]
  %82 = phi i32 [ %91, %84 ], [ 0, %76 ]
  store i32 %82, ptr %3, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = shl i32 %82, 6
  %86 = shl i32 %78, 3
  %87 = add i32 %85, %86
  %88 = add nsw i32 %74, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nsw i32 %82, 1
  br label %80, !llvm.loop !22

92:                                               ; preds = %80
  %93 = add nsw i32 %78, 1
  br label %76, !llvm.loop !23

94:                                               ; preds = %76
  %95 = add nsw i32 %77, 1
  br label %73, !llvm.loop !24

96:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %97

97:                                               ; preds = %118, %96
  %98 = phi i32 [ 0, %96 ], [ %119, %118 ]
  store i32 %98, ptr %1, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %97, %116
  %101 = phi i32 [ %105, %116 ], [ %98, %97 ]
  %102 = phi i32 [ %117, %116 ], [ 0, %97 ]
  store i32 %102, ptr %2, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %118

104:                                              ; preds = %100, %108
  %105 = phi i32 [ %98, %108 ], [ %101, %100 ]
  %106 = phi i32 [ %115, %108 ], [ 0, %100 ]
  store i32 %106, ptr %3, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = shl i32 %106, 6
  %110 = shl i32 %102, 3
  %111 = add i32 %109, %110
  %112 = add nsw i32 %98, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nsw i32 %106, 1
  br label %104, !llvm.loop !25

116:                                              ; preds = %104
  %117 = add nsw i32 %102, 1
  br label %100, !llvm.loop !26

118:                                              ; preds = %100
  %119 = add nsw i32 %101, 1
  br label %97, !llvm.loop !27

120:                                              ; preds = %97
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %121

121:                                              ; preds = %142, %120
  %122 = phi i32 [ 0, %120 ], [ %143, %142 ]
  store i32 %122, ptr %1, align 4
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %144

124:                                              ; preds = %121, %140
  %125 = phi i32 [ %129, %140 ], [ %122, %121 ]
  %126 = phi i32 [ %141, %140 ], [ 0, %121 ]
  store i32 %126, ptr %2, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %142

128:                                              ; preds = %124, %132
  %129 = phi i32 [ %122, %132 ], [ %125, %124 ]
  %130 = phi i32 [ %139, %132 ], [ 0, %124 ]
  store i32 %130, ptr %3, align 4
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %140

132:                                              ; preds = %128
  %133 = shl i32 %130, 6
  %134 = shl i32 %126, 3
  %135 = add i32 %133, %134
  %136 = add nsw i32 %122, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %137
  store i32 1, ptr %138, align 4
  %139 = add nsw i32 %130, 1
  br label %128, !llvm.loop !28

140:                                              ; preds = %128
  %141 = add nsw i32 %126, 1
  br label %124, !llvm.loop !29

142:                                              ; preds = %124
  %143 = add nsw i32 %125, 1
  br label %121, !llvm.loop !30

144:                                              ; preds = %121
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %145

145:                                              ; preds = %166, %144
  %146 = phi i32 [ 0, %144 ], [ %167, %166 ]
  store i32 %146, ptr %1, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %168

148:                                              ; preds = %145, %164
  %149 = phi i32 [ %153, %164 ], [ %146, %145 ]
  %150 = phi i32 [ %165, %164 ], [ 0, %145 ]
  store i32 %150, ptr %2, align 4
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %166

152:                                              ; preds = %148, %156
  %153 = phi i32 [ %146, %156 ], [ %149, %148 ]
  %154 = phi i32 [ %163, %156 ], [ 0, %148 ]
  store i32 %154, ptr %3, align 4
  %155 = icmp slt i32 %154, 2
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = shl i32 %154, 6
  %158 = shl i32 %150, 3
  %159 = add i32 %157, %158
  %160 = add nsw i32 %146, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nsw i32 %154, 1
  br label %152, !llvm.loop !31

164:                                              ; preds = %152
  %165 = add nsw i32 %150, 1
  br label %148, !llvm.loop !32

166:                                              ; preds = %148
  %167 = add nsw i32 %149, 1
  br label %145, !llvm.loop !33

168:                                              ; preds = %145
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %169

169:                                              ; preds = %190, %168
  %170 = phi i32 [ 0, %168 ], [ %191, %190 ]
  store i32 %170, ptr %1, align 4
  %171 = icmp slt i32 %170, 1
  br i1 %171, label %172, label %192

172:                                              ; preds = %169, %188
  %173 = phi i32 [ %177, %188 ], [ %170, %169 ]
  %174 = phi i32 [ %189, %188 ], [ 0, %169 ]
  store i32 %174, ptr %2, align 4
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %190

176:                                              ; preds = %172, %180
  %177 = phi i32 [ %170, %180 ], [ %173, %172 ]
  %178 = phi i32 [ %187, %180 ], [ 0, %172 ]
  store i32 %178, ptr %3, align 4
  %179 = icmp slt i32 %178, 4
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = shl i32 %178, 6
  %182 = shl i32 %174, 3
  %183 = add i32 %181, %182
  %184 = add nsw i32 %170, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %185
  store i32 1, ptr %186, align 4
  %187 = add nsw i32 %178, 1
  br label %176, !llvm.loop !34

188:                                              ; preds = %176
  %189 = add nsw i32 %174, 1
  br label %172, !llvm.loop !35

190:                                              ; preds = %172
  %191 = add nsw i32 %173, 1
  br label %169, !llvm.loop !36

192:                                              ; preds = %169
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %193

193:                                              ; preds = %214, %192
  %194 = phi i32 [ 0, %192 ], [ %215, %214 ]
  store i32 %194, ptr %1, align 4
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %216

196:                                              ; preds = %193, %212
  %197 = phi i32 [ %201, %212 ], [ %194, %193 ]
  %198 = phi i32 [ %213, %212 ], [ 0, %193 ]
  store i32 %198, ptr %2, align 4
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %200, label %214

200:                                              ; preds = %196, %204
  %201 = phi i32 [ %194, %204 ], [ %197, %196 ]
  %202 = phi i32 [ %211, %204 ], [ 0, %196 ]
  store i32 %202, ptr %3, align 4
  %203 = icmp slt i32 %202, 1
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = shl i32 %202, 6
  %206 = shl i32 %198, 3
  %207 = add i32 %205, %206
  %208 = add nsw i32 %194, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %209
  store i32 1, ptr %210, align 4
  %211 = add nsw i32 %202, 1
  br label %200, !llvm.loop !37

212:                                              ; preds = %200
  %213 = add nsw i32 %198, 1
  br label %196, !llvm.loop !38

214:                                              ; preds = %196
  %215 = add nsw i32 %197, 1
  br label %193, !llvm.loop !39

216:                                              ; preds = %193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %217

217:                                              ; preds = %238, %216
  %218 = phi i32 [ 0, %216 ], [ %239, %238 ]
  store i32 %218, ptr %1, align 4
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %220, label %240

220:                                              ; preds = %217, %236
  %221 = phi i32 [ %225, %236 ], [ %218, %217 ]
  %222 = phi i32 [ %237, %236 ], [ 0, %217 ]
  store i32 %222, ptr %2, align 4
  %223 = icmp slt i32 %222, 3
  br i1 %223, label %224, label %238

224:                                              ; preds = %220, %228
  %225 = phi i32 [ %218, %228 ], [ %221, %220 ]
  %226 = phi i32 [ %235, %228 ], [ 0, %220 ]
  store i32 %226, ptr %3, align 4
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = shl i32 %226, 6
  %230 = shl i32 %222, 3
  %231 = add i32 %229, %230
  %232 = add nsw i32 %218, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %233
  store i32 1, ptr %234, align 4
  %235 = add nsw i32 %226, 1
  br label %224, !llvm.loop !40

236:                                              ; preds = %224
  %237 = add nsw i32 %222, 1
  br label %220, !llvm.loop !41

238:                                              ; preds = %220
  %239 = add nsw i32 %221, 1
  br label %217, !llvm.loop !42

240:                                              ; preds = %217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %241

241:                                              ; preds = %262, %240
  %242 = phi i32 [ 0, %240 ], [ %263, %262 ]
  store i32 %242, ptr %1, align 4
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %244, label %264

244:                                              ; preds = %241, %260
  %245 = phi i32 [ %249, %260 ], [ %242, %241 ]
  %246 = phi i32 [ %261, %260 ], [ 0, %241 ]
  store i32 %246, ptr %2, align 4
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %248, label %262

248:                                              ; preds = %244, %252
  %249 = phi i32 [ %242, %252 ], [ %245, %244 ]
  %250 = phi i32 [ %259, %252 ], [ 0, %244 ]
  store i32 %250, ptr %3, align 4
  %251 = icmp slt i32 %250, 3
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = shl i32 %250, 6
  %254 = shl i32 %246, 3
  %255 = add i32 %253, %254
  %256 = add nsw i32 %242, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %257
  store i32 1, ptr %258, align 4
  %259 = add nsw i32 %250, 1
  br label %248, !llvm.loop !43

260:                                              ; preds = %248
  %261 = add nsw i32 %246, 1
  br label %244, !llvm.loop !44

262:                                              ; preds = %244
  %263 = add nsw i32 %245, 1
  br label %241, !llvm.loop !45

264:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %265

265:                                              ; preds = %286, %264
  %266 = phi i32 [ 0, %264 ], [ %287, %286 ]
  store i32 %266, ptr %1, align 4
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %268, label %288

268:                                              ; preds = %265, %284
  %269 = phi i32 [ %273, %284 ], [ %266, %265 ]
  %270 = phi i32 [ %285, %284 ], [ 0, %265 ]
  store i32 %270, ptr %2, align 4
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %286

272:                                              ; preds = %268, %276
  %273 = phi i32 [ %266, %276 ], [ %269, %268 ]
  %274 = phi i32 [ %283, %276 ], [ 0, %268 ]
  store i32 %274, ptr %3, align 4
  %275 = icmp slt i32 %274, 1
  br i1 %275, label %276, label %284

276:                                              ; preds = %272
  %277 = shl i32 %274, 6
  %278 = shl i32 %270, 3
  %279 = add i32 %277, %278
  %280 = add nsw i32 %266, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %281
  store i32 1, ptr %282, align 4
  %283 = add nsw i32 %274, 1
  br label %272, !llvm.loop !46

284:                                              ; preds = %272
  %285 = add nsw i32 %270, 1
  br label %268, !llvm.loop !47

286:                                              ; preds = %268
  %287 = add nsw i32 %269, 1
  br label %265, !llvm.loop !48

288:                                              ; preds = %265
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %289

289:                                              ; preds = %310, %288
  %290 = phi i32 [ 0, %288 ], [ %311, %310 ]
  store i32 %290, ptr %1, align 4
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %292, label %312

292:                                              ; preds = %289, %308
  %293 = phi i32 [ %297, %308 ], [ %290, %289 ]
  %294 = phi i32 [ %309, %308 ], [ 0, %289 ]
  store i32 %294, ptr %2, align 4
  %295 = icmp slt i32 %294, 1
  br i1 %295, label %296, label %310

296:                                              ; preds = %292, %300
  %297 = phi i32 [ %290, %300 ], [ %293, %292 ]
  %298 = phi i32 [ %307, %300 ], [ 0, %292 ]
  store i32 %298, ptr %3, align 4
  %299 = icmp slt i32 %298, 2
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = shl i32 %298, 6
  %302 = shl i32 %294, 3
  %303 = add i32 %301, %302
  %304 = add nsw i32 %290, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %305
  store i32 1, ptr %306, align 4
  %307 = add nsw i32 %298, 1
  br label %296, !llvm.loop !49

308:                                              ; preds = %296
  %309 = add nsw i32 %294, 1
  br label %292, !llvm.loop !50

310:                                              ; preds = %292
  %311 = add nsw i32 %293, 1
  br label %289, !llvm.loop !51

312:                                              ; preds = %289
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %313

313:                                              ; preds = %334, %312
  %314 = phi i32 [ 0, %312 ], [ %335, %334 ]
  store i32 %314, ptr %1, align 4
  %315 = icmp slt i32 %314, 1
  br i1 %315, label %316, label %336

316:                                              ; preds = %313, %332
  %317 = phi i32 [ %321, %332 ], [ %314, %313 ]
  %318 = phi i32 [ %333, %332 ], [ 0, %313 ]
  store i32 %318, ptr %2, align 4
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %320, label %334

320:                                              ; preds = %316, %324
  %321 = phi i32 [ %314, %324 ], [ %317, %316 ]
  %322 = phi i32 [ %331, %324 ], [ 0, %316 ]
  store i32 %322, ptr %3, align 4
  %323 = icmp slt i32 %322, 2
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = shl i32 %322, 6
  %326 = shl i32 %318, 3
  %327 = add i32 %325, %326
  %328 = add nsw i32 %314, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %329
  store i32 1, ptr %330, align 4
  %331 = add nsw i32 %322, 1
  br label %320, !llvm.loop !52

332:                                              ; preds = %320
  %333 = add nsw i32 %318, 1
  br label %316, !llvm.loop !53

334:                                              ; preds = %316
  %335 = add nsw i32 %317, 1
  br label %313, !llvm.loop !54

336:                                              ; preds = %313
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %337

337:                                              ; preds = %358, %336
  %338 = phi i32 [ 0, %336 ], [ %359, %358 ]
  store i32 %338, ptr %1, align 4
  %339 = icmp slt i32 %338, 2
  br i1 %339, label %340, label %360

340:                                              ; preds = %337, %356
  %341 = phi i32 [ %345, %356 ], [ %338, %337 ]
  %342 = phi i32 [ %357, %356 ], [ 0, %337 ]
  store i32 %342, ptr %2, align 4
  %343 = icmp slt i32 %342, 2
  br i1 %343, label %344, label %358

344:                                              ; preds = %340, %348
  %345 = phi i32 [ %338, %348 ], [ %341, %340 ]
  %346 = phi i32 [ %355, %348 ], [ 0, %340 ]
  store i32 %346, ptr %3, align 4
  %347 = icmp slt i32 %346, 2
  br i1 %347, label %348, label %356

348:                                              ; preds = %344
  %349 = shl i32 %346, 6
  %350 = shl i32 %342, 3
  %351 = add i32 %349, %350
  %352 = add nsw i32 %338, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %353
  store i32 1, ptr %354, align 4
  %355 = add nsw i32 %346, 1
  br label %344, !llvm.loop !55

356:                                              ; preds = %344
  %357 = add nsw i32 %342, 1
  br label %340, !llvm.loop !56

358:                                              ; preds = %340
  %359 = add nsw i32 %341, 1
  br label %337, !llvm.loop !57

360:                                              ; preds = %337
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %361 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %361, 0
  br i1 %.not, label %364, label %362

362:                                              ; preds = %360
  %363 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %363, ptr @n, align 4
  br label %365

364:                                              ; preds = %360
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %365

365:                                              ; preds = %364, %362
  %366 = phi i32 [ %.pre, %364 ], [ %363, %362 ]
  %367 = call i32 @Trial(i32 noundef %366)
  %.not16 = icmp eq i32 %367, 0
  br i1 %.not16, label %368, label %369

368:                                              ; preds = %365
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %372

369:                                              ; preds = %365
  %370 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %370, 2005
  br i1 %.not18, label %372, label %371

371:                                              ; preds = %369
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %372

372:                                              ; preds = %369, %371, %368
  %373 = load i32, ptr @n, align 4
  %374 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %373) #4
  %375 = load i32, ptr @kount, align 4
  %376 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %375) #4
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
