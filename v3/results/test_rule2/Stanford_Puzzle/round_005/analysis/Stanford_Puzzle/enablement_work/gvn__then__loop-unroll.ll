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
  %.lcssa2 = phi i32 [ %28, %29 ]
  br label %34

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit:                                        ; preds = %27
  br label %34

34:                                               ; preds = %.loopexit, %32
  %storemerge2 = phi i32 [ %.lcssa2, %32 ], [ 0, %.loopexit ]
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
define dso_local i32 @Trial(i32 noundef %0) #0 {
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

5:                                                ; preds = %16, %0
  %6 = phi i32 [ 0, %0 ], [ %19, %16 ]
  store i32 %6, ptr %4, align 4
  br label %7

.preheader31:                                     ; preds = %11
  br label %20

7:                                                ; preds = %5
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nuw nsw i32 %6, 1
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %7
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %6, 2
  store i32 %14, ptr %4, align 4
  %15 = icmp samesign ult i32 %14, 512
  br i1 %15, label %16, label %.preheader31

16:                                               ; preds = %11
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 1, ptr %18, align 4
  %19 = add nuw nsw i32 %6, 3
  br label %5, !llvm.loop !13

20:                                               ; preds = %162, %.preheader31
  %21 = phi i32 [ %163, %162 ], [ 1, %.preheader31 ]
  store i32 %21, ptr %1, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %20
  br label %23

.preheader28:                                     ; preds = %20
  br label %164

23:                                               ; preds = %.preheader30
  store i32 1, ptr %2, align 4
  br label %.preheader29

.preheader29:                                     ; preds = %23
  br label %24

24:                                               ; preds = %.preheader29
  store i32 1, ptr %3, align 4
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %21, 72
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  store i32 2, ptr %3, align 4
  br label %29

29:                                               ; preds = %25
  %30 = add nsw i32 %21, 136
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  store i32 3, ptr %3, align 4
  br label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %21, 200
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  store i32 4, ptr %3, align 4
  br label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %21, 264
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  store i32 5, ptr %3, align 4
  br label %41

41:                                               ; preds = %37
  %42 = add nsw i32 %21, 328
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %51

.loopexit:                                        ; preds = %41, %69, %91, %113, %135
  %.lcssa31.ph = phi i32 [ %21, %135 ], [ %21, %113 ], [ %21, %91 ], [ %21, %69 ], [ %21, %41 ]
  %.lcssa29.ph = phi i32 [ 5, %135 ], [ 4, %113 ], [ 3, %91 ], [ 2, %69 ], [ 1, %41 ]
  br label %45

45:                                               ; preds = %.loopexit, %157
  %.lcssa31 = phi i32 [ %.lcssa34, %157 ], [ %.lcssa31.ph, %.loopexit ]
  %.lcssa29 = phi i32 [ 6, %157 ], [ %.lcssa29.ph, %.loopexit ]
  %46 = shl i32 %.lcssa29, 3
  %47 = add i32 384, %46
  %48 = add nsw i32 %.lcssa31, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  unreachable

51:                                               ; preds = %41
  store i32 2, ptr %2, align 4
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %51
  br label %52

52:                                               ; preds = %.preheader29.1
  store i32 1, ptr %3, align 4
  br label %53

53:                                               ; preds = %52
  %54 = add nsw i32 %21, 80
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  store i32 2, ptr %3, align 4
  br label %57

57:                                               ; preds = %53
  %58 = add nsw i32 %21, 144
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  store i32 3, ptr %3, align 4
  br label %61

61:                                               ; preds = %57
  %62 = add nsw i32 %21, 208
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  store i32 4, ptr %3, align 4
  br label %65

65:                                               ; preds = %61
  %66 = add nsw i32 %21, 272
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  store i32 5, ptr %3, align 4
  br label %69

69:                                               ; preds = %65
  %70 = add nsw i32 %21, 336
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %73

73:                                               ; preds = %69
  store i32 3, ptr %2, align 4
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %73
  br label %74

74:                                               ; preds = %.preheader29.2
  store i32 1, ptr %3, align 4
  br label %75

75:                                               ; preds = %74
  %76 = add nsw i32 %21, 88
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  store i32 2, ptr %3, align 4
  br label %79

79:                                               ; preds = %75
  %80 = add nsw i32 %21, 152
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  store i32 3, ptr %3, align 4
  br label %83

83:                                               ; preds = %79
  %84 = add nsw i32 %21, 216
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  store i32 4, ptr %3, align 4
  br label %87

87:                                               ; preds = %83
  %88 = add nsw i32 %21, 280
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  store i32 5, ptr %3, align 4
  br label %91

91:                                               ; preds = %87
  %92 = add nsw i32 %21, 344
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %93
  store i32 0, ptr %94, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %95

95:                                               ; preds = %91
  store i32 4, ptr %2, align 4
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %95
  br label %96

96:                                               ; preds = %.preheader29.3
  store i32 1, ptr %3, align 4
  br label %97

97:                                               ; preds = %96
  %98 = add nsw i32 %21, 96
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  store i32 2, ptr %3, align 4
  br label %101

101:                                              ; preds = %97
  %102 = add nsw i32 %21, 160
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %103
  store i32 0, ptr %104, align 4
  store i32 3, ptr %3, align 4
  br label %105

105:                                              ; preds = %101
  %106 = add nsw i32 %21, 224
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  store i32 4, ptr %3, align 4
  br label %109

109:                                              ; preds = %105
  %110 = add nsw i32 %21, 288
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %111
  store i32 0, ptr %112, align 4
  store i32 5, ptr %3, align 4
  br label %113

113:                                              ; preds = %109
  %114 = add nsw i32 %21, 352
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %115
  store i32 0, ptr %116, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %117

117:                                              ; preds = %113
  store i32 5, ptr %2, align 4
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %117
  br label %118

118:                                              ; preds = %.preheader29.4
  store i32 1, ptr %3, align 4
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %21, 104
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %121
  store i32 0, ptr %122, align 4
  store i32 2, ptr %3, align 4
  br label %123

123:                                              ; preds = %119
  %124 = add nsw i32 %21, 168
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %125
  store i32 0, ptr %126, align 4
  store i32 3, ptr %3, align 4
  br label %127

127:                                              ; preds = %123
  %128 = add nsw i32 %21, 232
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %129
  store i32 0, ptr %130, align 4
  store i32 4, ptr %3, align 4
  br label %131

131:                                              ; preds = %127
  %132 = add nsw i32 %21, 296
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %133
  store i32 0, ptr %134, align 4
  store i32 5, ptr %3, align 4
  br label %135

135:                                              ; preds = %131
  %136 = add nsw i32 %21, 360
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %137
  store i32 0, ptr %138, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %.loopexit, label %139

139:                                              ; preds = %135
  store i32 6, ptr %2, align 4
  br i1 false, label %.preheader29.5, label %162

.preheader29.5:                                   ; preds = %139
  %.lcssa34 = phi i32 [ %21, %139 ]
  br label %140

140:                                              ; preds = %.preheader29.5
  store i32 1, ptr %3, align 4
  br label %141

141:                                              ; preds = %140
  %142 = add nsw i32 %.lcssa34, 112
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %143
  store i32 0, ptr %144, align 4
  store i32 2, ptr %3, align 4
  br label %145

145:                                              ; preds = %141
  %146 = add nsw i32 %.lcssa34, 176
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %147
  store i32 0, ptr %148, align 4
  store i32 3, ptr %3, align 4
  br label %149

149:                                              ; preds = %145
  %150 = add nsw i32 %.lcssa34, 240
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %151
  store i32 0, ptr %152, align 4
  store i32 4, ptr %3, align 4
  br label %153

153:                                              ; preds = %149
  %154 = add nsw i32 %.lcssa34, 304
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %155
  store i32 0, ptr %156, align 4
  store i32 5, ptr %3, align 4
  br label %157

157:                                              ; preds = %153
  %158 = add nsw i32 %.lcssa34, 368
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %159
  store i32 0, ptr %160, align 4
  store i32 6, ptr %3, align 4
  br i1 false, label %45, label %161

161:                                              ; preds = %157
  unreachable

162:                                              ; preds = %139
  %.lcssa27 = phi i32 [ %21, %139 ]
  %163 = add nsw i32 %.lcssa27, 1
  br label %20, !llvm.loop !14

164:                                              ; preds = %188, %.preheader28
  %165 = phi i32 [ %189, %188 ], [ 0, %.preheader28 ]
  store i32 %165, ptr %1, align 4
  %166 = icmp slt i32 %165, 13
  br i1 %166, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %164
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds [2048 x i8], ptr @p, i64 %167
  br label %169

.preheader26:                                     ; preds = %164
  br label %190

169:                                              ; preds = %182, %.preheader27
  %170 = phi i32 [ 0, %.preheader27 ], [ %187, %182 ]
  store i32 %170, ptr %4, align 4
  br label %171

171:                                              ; preds = %169
  %172 = sext i32 %165 to i64
  %173 = getelementptr inbounds [2048 x i8], ptr @p, i64 %172
  %174 = sext i32 %170 to i64
  %175 = getelementptr inbounds [4 x i8], ptr %173, i64 %174
  store i32 0, ptr %175, align 4
  %176 = add nuw nsw i32 %170, 1
  store i32 %176, ptr %4, align 4
  br label %177

177:                                              ; preds = %171
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds [4 x i8], ptr %168, i64 %178
  store i32 0, ptr %179, align 4
  %180 = add nuw nsw i32 %170, 2
  store i32 %180, ptr %4, align 4
  %181 = icmp samesign ult i32 %180, 512
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = sext i32 %165 to i64
  %184 = getelementptr inbounds [2048 x i8], ptr @p, i64 %183
  %185 = sext i32 %180 to i64
  %186 = getelementptr inbounds [4 x i8], ptr %184, i64 %185
  store i32 0, ptr %186, align 4
  %187 = add nuw nsw i32 %170, 3
  br label %169, !llvm.loop !15

188:                                              ; preds = %177
  %189 = add nsw i32 %165, 1
  br label %164, !llvm.loop !16

190:                                              ; preds = %.preheader26
  store i32 0, ptr %1, align 4
  br label %.preheader25

.preheader25:                                     ; preds = %190
  br label %191

191:                                              ; preds = %.preheader25
  store i32 0, ptr %2, align 4
  br label %.preheader24

.preheader24:                                     ; preds = %191
  br label %192

192:                                              ; preds = %.preheader24
  store i32 0, ptr %3, align 4
  br label %193

193:                                              ; preds = %192
  store i32 1, ptr @p, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %200

.loopexit42:                                      ; preds = %240, %237, %232, %229, %224, %221, %216, %213, %193, %202
  %.lcssa38.ph = phi i32 [ 0, %202 ], [ 0, %193 ], [ 1, %213 ], [ 1, %216 ], [ 2, %221 ], [ 2, %224 ], [ 3, %229 ], [ 3, %232 ], [ 4, %237 ], [ 4, %240 ]
  %.lcssa36.ph = phi i32 [ 1, %202 ], [ 0, %193 ], [ 0, %213 ], [ 1, %216 ], [ 0, %221 ], [ 1, %224 ], [ 0, %229 ], [ 1, %232 ], [ 0, %237 ], [ 1, %240 ]
  br label %194

194:                                              ; preds = %.loopexit42, %205
  %.lcssa38 = phi i32 [ %.lcssa41, %205 ], [ %.lcssa38.ph, %.loopexit42 ]
  %.lcssa36 = phi i32 [ 2, %205 ], [ %.lcssa36.ph, %.loopexit42 ]
  %195 = shl i32 %.lcssa36, 3
  %196 = add i32 64, %195
  %197 = add nsw i32 %.lcssa38, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i8], ptr @p, i64 %198
  store i32 1, ptr %199, align 4
  unreachable

200:                                              ; preds = %193
  store i32 1, ptr %2, align 4
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %200
  br label %201

201:                                              ; preds = %.preheader24.1
  store i32 0, ptr %3, align 4
  br label %202

202:                                              ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %203

203:                                              ; preds = %202
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.2, label %210

.preheader24.2:                                   ; preds = %241, %233, %225, %217, %203
  %.lcssa41 = phi i32 [ 0, %203 ], [ 1, %217 ], [ 2, %225 ], [ 3, %233 ], [ 4, %241 ]
  br label %204

204:                                              ; preds = %.preheader24.2
  store i32 0, ptr %3, align 4
  br label %205

205:                                              ; preds = %204
  %206 = add nsw i32 %.lcssa41, 16
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [4 x i8], ptr @p, i64 %207
  store i32 1, ptr %208, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %194, label %209

209:                                              ; preds = %205
  unreachable

210:                                              ; preds = %203
  store i32 1, ptr %1, align 4
  br label %.preheader25.1

.preheader25.1:                                   ; preds = %210
  br label %211

211:                                              ; preds = %.preheader25.1
  store i32 0, ptr %2, align 4
  br label %.preheader24.143

.preheader24.143:                                 ; preds = %211
  br label %212

212:                                              ; preds = %.preheader24.143
  store i32 0, ptr %3, align 4
  br label %213

213:                                              ; preds = %212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %214

214:                                              ; preds = %213
  store i32 1, ptr %2, align 4
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %214
  br label %215

215:                                              ; preds = %.preheader24.1.1
  store i32 0, ptr %3, align 4
  br label %216

216:                                              ; preds = %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %217

217:                                              ; preds = %216
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.2, label %218

218:                                              ; preds = %217
  store i32 2, ptr %1, align 4
  br label %.preheader25.2

.preheader25.2:                                   ; preds = %218
  br label %219

219:                                              ; preds = %.preheader25.2
  store i32 0, ptr %2, align 4
  br label %.preheader24.244

.preheader24.244:                                 ; preds = %219
  br label %220

220:                                              ; preds = %.preheader24.244
  store i32 0, ptr %3, align 4
  br label %221

221:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %222

222:                                              ; preds = %221
  store i32 1, ptr %2, align 4
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %222
  br label %223

223:                                              ; preds = %.preheader24.1.2
  store i32 0, ptr %3, align 4
  br label %224

224:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %225

225:                                              ; preds = %224
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.2, label %226

226:                                              ; preds = %225
  store i32 3, ptr %1, align 4
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %226
  br label %227

227:                                              ; preds = %.preheader25.3
  store i32 0, ptr %2, align 4
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %227
  br label %228

228:                                              ; preds = %.preheader24.3
  store i32 0, ptr %3, align 4
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %230

230:                                              ; preds = %229
  store i32 1, ptr %2, align 4
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %230
  br label %231

231:                                              ; preds = %.preheader24.1.3
  store i32 0, ptr %3, align 4
  br label %232

232:                                              ; preds = %231
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %233

233:                                              ; preds = %232
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.2, label %234

234:                                              ; preds = %233
  store i32 4, ptr %1, align 4
  br i1 false, label %.preheader25.4, label %243

.preheader25.4:                                   ; preds = %234
  br label %235

235:                                              ; preds = %.preheader25.4
  store i32 0, ptr %2, align 4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %235
  br label %236

236:                                              ; preds = %.preheader24.4
  store i32 0, ptr %3, align 4
  br label %237

237:                                              ; preds = %236
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %238

238:                                              ; preds = %237
  store i32 1, ptr %2, align 4
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %238
  br label %239

239:                                              ; preds = %.preheader24.1.4
  store i32 0, ptr %3, align 4
  br label %240

240:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit42, label %241

241:                                              ; preds = %240
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader24.2, label %242

242:                                              ; preds = %241
  unreachable

243:                                              ; preds = %234
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %244

244:                                              ; preds = %243
  store i32 0, ptr %1, align 4
  br label %.preheader23

.preheader23:                                     ; preds = %244
  br label %245

245:                                              ; preds = %.preheader23
  store i32 0, ptr %2, align 4
  br label %.preheader22

.preheader22:                                     ; preds = %245
  br label %246

246:                                              ; preds = %.preheader22
  store i32 0, ptr %3, align 4
  br label %247

247:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  store i32 1, ptr %3, align 4
  br label %248

248:                                              ; preds = %247
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  store i32 2, ptr %3, align 4
  br label %249

249:                                              ; preds = %248
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  store i32 3, ptr %3, align 4
  br label %250

250:                                              ; preds = %249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit52, label %257

.loopexit52:                                      ; preds = %290, %282, %250
  %.lcssa48.ph = phi i32 [ 0, %250 ], [ 1, %282 ], [ 2, %290 ]
  %.lcssa46.ph = phi i32 [ 0, %250 ], [ 0, %282 ], [ 0, %290 ]
  br label %251

251:                                              ; preds = %.loopexit52, %271
  %.lcssa48 = phi i32 [ %.lcssa50, %271 ], [ %.lcssa48.ph, %.loopexit52 ]
  %.lcssa46 = phi i32 [ 1, %271 ], [ %.lcssa46.ph, %.loopexit52 ]
  %252 = shl i32 %.lcssa46, 3
  %253 = add i32 256, %252
  %254 = add nsw i32 %.lcssa48, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %255
  store i32 1, ptr %256, align 4
  unreachable

257:                                              ; preds = %250
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.1, label %276

.preheader22.1:                                   ; preds = %291, %283, %257
  %.lcssa50 = phi i32 [ 0, %257 ], [ 1, %283 ], [ 2, %291 ]
  br label %258

258:                                              ; preds = %.preheader22.1
  store i32 0, ptr %3, align 4
  br label %259

259:                                              ; preds = %258
  %260 = add nsw i32 %.lcssa50, 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %261
  store i32 1, ptr %262, align 4
  store i32 1, ptr %3, align 4
  br label %263

263:                                              ; preds = %259
  %264 = add nsw i32 %.lcssa50, 72
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %265
  store i32 1, ptr %266, align 4
  store i32 2, ptr %3, align 4
  br label %267

267:                                              ; preds = %263
  %268 = add nsw i32 %.lcssa50, 136
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %269
  store i32 1, ptr %270, align 4
  store i32 3, ptr %3, align 4
  br label %271

271:                                              ; preds = %267
  %272 = add nsw i32 %.lcssa50, 200
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %273
  store i32 1, ptr %274, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %251, label %275

275:                                              ; preds = %271
  unreachable

276:                                              ; preds = %257
  store i32 1, ptr %1, align 4
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %276
  br label %277

277:                                              ; preds = %.preheader23.1
  store i32 0, ptr %2, align 4
  br label %.preheader22.153

.preheader22.153:                                 ; preds = %277
  br label %278

278:                                              ; preds = %.preheader22.153
  store i32 0, ptr %3, align 4
  br label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  store i32 1, ptr %3, align 4
  br label %280

280:                                              ; preds = %279
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  store i32 2, ptr %3, align 4
  br label %281

281:                                              ; preds = %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  store i32 3, ptr %3, align 4
  br label %282

282:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit52, label %283

283:                                              ; preds = %282
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.1, label %284

284:                                              ; preds = %283
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader23.2, label %293

.preheader23.2:                                   ; preds = %284
  br label %285

285:                                              ; preds = %.preheader23.2
  store i32 0, ptr %2, align 4
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %285
  br label %286

286:                                              ; preds = %.preheader22.2
  store i32 0, ptr %3, align 4
  br label %287

287:                                              ; preds = %286
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  store i32 1, ptr %3, align 4
  br label %288

288:                                              ; preds = %287
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  store i32 2, ptr %3, align 4
  br label %289

289:                                              ; preds = %288
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  store i32 3, ptr %3, align 4
  br label %290

290:                                              ; preds = %289
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit52, label %291

291:                                              ; preds = %290
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader22.1, label %292

292:                                              ; preds = %291
  unreachable

293:                                              ; preds = %284
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %294

294:                                              ; preds = %293
  store i32 0, ptr %1, align 4
  br label %.preheader21

.preheader21:                                     ; preds = %294
  br label %295

295:                                              ; preds = %.preheader21
  store i32 0, ptr %2, align 4
  br label %.preheader20

.preheader20:                                     ; preds = %295
  br label %296

296:                                              ; preds = %.preheader20
  store i32 0, ptr %3, align 4
  br label %297

297:                                              ; preds = %296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  store i32 1, ptr %3, align 4
  br label %298

298:                                              ; preds = %297
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %305

.loopexit61:                                      ; preds = %344, %340, %336, %332, %298, %308, %312, %316
  %.lcssa57.ph = phi i32 [ 0, %316 ], [ 0, %312 ], [ 0, %308 ], [ 0, %298 ], [ 1, %332 ], [ 1, %336 ], [ 1, %340 ], [ 1, %344 ]
  %.lcssa55.ph = phi i32 [ 3, %316 ], [ 2, %312 ], [ 1, %308 ], [ 0, %298 ], [ 0, %332 ], [ 1, %336 ], [ 2, %340 ], [ 3, %344 ]
  br label %299

299:                                              ; preds = %.loopexit61, %323
  %.lcssa57 = phi i32 [ %.lcssa60, %323 ], [ %.lcssa57.ph, %.loopexit61 ]
  %.lcssa55 = phi i32 [ 4, %323 ], [ %.lcssa55.ph, %.loopexit61 ]
  %300 = shl i32 %.lcssa55, 3
  %301 = add i32 128, %300
  %302 = add nsw i32 %.lcssa57, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %303
  store i32 1, ptr %304, align 4
  unreachable

305:                                              ; preds = %298
  store i32 1, ptr %2, align 4
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %305
  br label %306

306:                                              ; preds = %.preheader20.1
  store i32 0, ptr %3, align 4
  br label %307

307:                                              ; preds = %306
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  store i32 1, ptr %3, align 4
  br label %308

308:                                              ; preds = %307
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %309

309:                                              ; preds = %308
  store i32 2, ptr %2, align 4
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %309
  br label %310

310:                                              ; preds = %.preheader20.2
  store i32 0, ptr %3, align 4
  br label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  store i32 1, ptr %3, align 4
  br label %312

312:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %313

313:                                              ; preds = %312
  store i32 3, ptr %2, align 4
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %313
  br label %314

314:                                              ; preds = %.preheader20.3
  store i32 0, ptr %3, align 4
  br label %315

315:                                              ; preds = %314
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  store i32 1, ptr %3, align 4
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %317

317:                                              ; preds = %316
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader20.4, label %328

.preheader20.4:                                   ; preds = %345, %317
  %.lcssa60 = phi i32 [ 0, %317 ], [ 1, %345 ]
  br label %318

318:                                              ; preds = %.preheader20.4
  store i32 0, ptr %3, align 4
  br label %319

319:                                              ; preds = %318
  %320 = add nsw i32 %.lcssa60, 32
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %321
  store i32 1, ptr %322, align 4
  store i32 1, ptr %3, align 4
  br label %323

323:                                              ; preds = %319
  %324 = add nsw i32 %.lcssa60, 96
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %325
  store i32 1, ptr %326, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %299, label %327

327:                                              ; preds = %323
  unreachable

328:                                              ; preds = %317
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader21.1, label %347

.preheader21.1:                                   ; preds = %328
  br label %329

329:                                              ; preds = %.preheader21.1
  store i32 0, ptr %2, align 4
  br label %.preheader20.162

.preheader20.162:                                 ; preds = %329
  br label %330

330:                                              ; preds = %.preheader20.162
  store i32 0, ptr %3, align 4
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  store i32 1, ptr %3, align 4
  br label %332

332:                                              ; preds = %331
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %333

333:                                              ; preds = %332
  store i32 1, ptr %2, align 4
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %333
  br label %334

334:                                              ; preds = %.preheader20.1.1
  store i32 0, ptr %3, align 4
  br label %335

335:                                              ; preds = %334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  store i32 1, ptr %3, align 4
  br label %336

336:                                              ; preds = %335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %337

337:                                              ; preds = %336
  store i32 2, ptr %2, align 4
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %337
  br label %338

338:                                              ; preds = %.preheader20.2.1
  store i32 0, ptr %3, align 4
  br label %339

339:                                              ; preds = %338
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  store i32 1, ptr %3, align 4
  br label %340

340:                                              ; preds = %339
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %341

341:                                              ; preds = %340
  store i32 3, ptr %2, align 4
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %341
  br label %342

342:                                              ; preds = %.preheader20.3.1
  store i32 0, ptr %3, align 4
  br label %343

343:                                              ; preds = %342
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  store i32 1, ptr %3, align 4
  br label %344

344:                                              ; preds = %343
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit61, label %345

345:                                              ; preds = %344
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader20.4, label %346

346:                                              ; preds = %345
  unreachable

347:                                              ; preds = %328
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %348

348:                                              ; preds = %347
  store i32 0, ptr %1, align 4
  br label %.preheader19

.preheader19:                                     ; preds = %348
  br label %349

349:                                              ; preds = %.preheader19
  store i32 0, ptr %2, align 4
  br label %.preheader18

.preheader18:                                     ; preds = %349
  br label %350

350:                                              ; preds = %.preheader18
  store i32 0, ptr %3, align 4
  br label %351

351:                                              ; preds = %350
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %358

.loopexit70:                                      ; preds = %400, %397, %394, %391, %386, %383, %380, %377, %351, %360, %363, %366
  %.lcssa66.ph = phi i32 [ 0, %366 ], [ 0, %363 ], [ 0, %360 ], [ 0, %351 ], [ 1, %377 ], [ 1, %380 ], [ 1, %383 ], [ 1, %386 ], [ 2, %391 ], [ 2, %394 ], [ 2, %397 ], [ 2, %400 ]
  %.lcssa64.ph = phi i32 [ 3, %366 ], [ 2, %363 ], [ 1, %360 ], [ 0, %351 ], [ 0, %377 ], [ 1, %380 ], [ 2, %383 ], [ 3, %386 ], [ 0, %391 ], [ 1, %394 ], [ 2, %397 ], [ 3, %400 ]
  br label %352

352:                                              ; preds = %.loopexit70, %369
  %.lcssa66 = phi i32 [ %.lcssa69, %369 ], [ %.lcssa66.ph, %.loopexit70 ]
  %.lcssa64 = phi i32 [ 4, %369 ], [ %.lcssa64.ph, %.loopexit70 ]
  %353 = shl i32 %.lcssa64, 3
  %354 = add i32 64, %353
  %355 = add nsw i32 %.lcssa66, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %356
  store i32 1, ptr %357, align 4
  unreachable

358:                                              ; preds = %351
  store i32 1, ptr %2, align 4
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %358
  br label %359

359:                                              ; preds = %.preheader18.1
  store i32 0, ptr %3, align 4
  br label %360

360:                                              ; preds = %359
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %361

361:                                              ; preds = %360
  store i32 2, ptr %2, align 4
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %361
  br label %362

362:                                              ; preds = %.preheader18.2
  store i32 0, ptr %3, align 4
  br label %363

363:                                              ; preds = %362
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %364

364:                                              ; preds = %363
  store i32 3, ptr %2, align 4
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %364
  br label %365

365:                                              ; preds = %.preheader18.3
  store i32 0, ptr %3, align 4
  br label %366

366:                                              ; preds = %365
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %367

367:                                              ; preds = %366
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.4, label %374

.preheader18.4:                                   ; preds = %401, %387, %367
  %.lcssa69 = phi i32 [ 0, %367 ], [ 1, %387 ], [ 2, %401 ]
  br label %368

368:                                              ; preds = %.preheader18.4
  store i32 0, ptr %3, align 4
  br label %369

369:                                              ; preds = %368
  %370 = add nsw i32 %.lcssa69, 32
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %371
  store i32 1, ptr %372, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %352, label %373

373:                                              ; preds = %369
  unreachable

374:                                              ; preds = %367
  store i32 1, ptr %1, align 4
  br label %.preheader19.1

.preheader19.1:                                   ; preds = %374
  br label %375

375:                                              ; preds = %.preheader19.1
  store i32 0, ptr %2, align 4
  br label %.preheader18.171

.preheader18.171:                                 ; preds = %375
  br label %376

376:                                              ; preds = %.preheader18.171
  store i32 0, ptr %3, align 4
  br label %377

377:                                              ; preds = %376
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %378

378:                                              ; preds = %377
  store i32 1, ptr %2, align 4
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %378
  br label %379

379:                                              ; preds = %.preheader18.1.1
  store i32 0, ptr %3, align 4
  br label %380

380:                                              ; preds = %379
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %381

381:                                              ; preds = %380
  store i32 2, ptr %2, align 4
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %381
  br label %382

382:                                              ; preds = %.preheader18.2.1
  store i32 0, ptr %3, align 4
  br label %383

383:                                              ; preds = %382
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %384

384:                                              ; preds = %383
  store i32 3, ptr %2, align 4
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %384
  br label %385

385:                                              ; preds = %.preheader18.3.1
  store i32 0, ptr %3, align 4
  br label %386

386:                                              ; preds = %385
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %387

387:                                              ; preds = %386
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.4, label %388

388:                                              ; preds = %387
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader19.2, label %403

.preheader19.2:                                   ; preds = %388
  br label %389

389:                                              ; preds = %.preheader19.2
  store i32 0, ptr %2, align 4
  br label %.preheader18.272

.preheader18.272:                                 ; preds = %389
  br label %390

390:                                              ; preds = %.preheader18.272
  store i32 0, ptr %3, align 4
  br label %391

391:                                              ; preds = %390
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %392

392:                                              ; preds = %391
  store i32 1, ptr %2, align 4
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %392
  br label %393

393:                                              ; preds = %.preheader18.1.2
  store i32 0, ptr %3, align 4
  br label %394

394:                                              ; preds = %393
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %395

395:                                              ; preds = %394
  store i32 2, ptr %2, align 4
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %395
  br label %396

396:                                              ; preds = %.preheader18.2.2
  store i32 0, ptr %3, align 4
  br label %397

397:                                              ; preds = %396
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %398

398:                                              ; preds = %397
  store i32 3, ptr %2, align 4
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %398
  br label %399

399:                                              ; preds = %.preheader18.3.2
  store i32 0, ptr %3, align 4
  br label %400

400:                                              ; preds = %399
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit70, label %401

401:                                              ; preds = %400
  store i32 4, ptr %2, align 4
  br i1 false, label %.preheader18.4, label %402

402:                                              ; preds = %401
  unreachable

403:                                              ; preds = %388
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %404

404:                                              ; preds = %403
  store i32 0, ptr %1, align 4
  br label %.preheader17

.preheader17:                                     ; preds = %404
  br label %405

405:                                              ; preds = %.preheader17
  store i32 0, ptr %2, align 4
  br label %.preheader16

.preheader16:                                     ; preds = %405
  br label %406

406:                                              ; preds = %.preheader16
  store i32 0, ptr %3, align 4
  br label %407

407:                                              ; preds = %406
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  store i32 1, ptr %3, align 4
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit80, label %415

.loopexit80:                                      ; preds = %448, %442, %436, %430, %408
  %.lcssa76.ph = phi i32 [ 0, %408 ], [ 1, %430 ], [ 2, %436 ], [ 3, %442 ], [ 4, %448 ]
  %.lcssa74.ph = phi i32 [ 0, %408 ], [ 0, %430 ], [ 0, %436 ], [ 0, %442 ], [ 0, %448 ]
  br label %409

409:                                              ; preds = %.loopexit80, %421
  %.lcssa76 = phi i32 [ %.lcssa78, %421 ], [ %.lcssa76.ph, %.loopexit80 ]
  %.lcssa74 = phi i32 [ 1, %421 ], [ %.lcssa74.ph, %.loopexit80 ]
  %410 = shl i32 %.lcssa74, 3
  %411 = add i32 128, %410
  %412 = add nsw i32 %.lcssa76, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %413
  store i32 1, ptr %414, align 4
  unreachable

415:                                              ; preds = %408
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.1, label %426

.preheader16.1:                                   ; preds = %449, %443, %437, %431, %415
  %.lcssa78 = phi i32 [ 0, %415 ], [ 1, %431 ], [ 2, %437 ], [ 3, %443 ], [ 4, %449 ]
  br label %416

416:                                              ; preds = %.preheader16.1
  store i32 0, ptr %3, align 4
  br label %417

417:                                              ; preds = %416
  %418 = add nsw i32 %.lcssa78, 8
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %419
  store i32 1, ptr %420, align 4
  store i32 1, ptr %3, align 4
  br label %421

421:                                              ; preds = %417
  %422 = add nsw i32 %.lcssa78, 72
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %423
  store i32 1, ptr %424, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %409, label %425

425:                                              ; preds = %421
  unreachable

426:                                              ; preds = %415
  store i32 1, ptr %1, align 4
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %426
  br label %427

427:                                              ; preds = %.preheader17.1
  store i32 0, ptr %2, align 4
  br label %.preheader16.181

.preheader16.181:                                 ; preds = %427
  br label %428

428:                                              ; preds = %.preheader16.181
  store i32 0, ptr %3, align 4
  br label %429

429:                                              ; preds = %428
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  store i32 1, ptr %3, align 4
  br label %430

430:                                              ; preds = %429
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit80, label %431

431:                                              ; preds = %430
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.1, label %432

432:                                              ; preds = %431
  store i32 2, ptr %1, align 4
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %432
  br label %433

433:                                              ; preds = %.preheader17.2
  store i32 0, ptr %2, align 4
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %433
  br label %434

434:                                              ; preds = %.preheader16.2
  store i32 0, ptr %3, align 4
  br label %435

435:                                              ; preds = %434
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  store i32 1, ptr %3, align 4
  br label %436

436:                                              ; preds = %435
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit80, label %437

437:                                              ; preds = %436
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.1, label %438

438:                                              ; preds = %437
  store i32 3, ptr %1, align 4
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %438
  br label %439

439:                                              ; preds = %.preheader17.3
  store i32 0, ptr %2, align 4
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %439
  br label %440

440:                                              ; preds = %.preheader16.3
  store i32 0, ptr %3, align 4
  br label %441

441:                                              ; preds = %440
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  store i32 1, ptr %3, align 4
  br label %442

442:                                              ; preds = %441
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit80, label %443

443:                                              ; preds = %442
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.1, label %444

444:                                              ; preds = %443
  store i32 4, ptr %1, align 4
  br i1 false, label %.preheader17.4, label %451

.preheader17.4:                                   ; preds = %444
  br label %445

445:                                              ; preds = %.preheader17.4
  store i32 0, ptr %2, align 4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %445
  br label %446

446:                                              ; preds = %.preheader16.4
  store i32 0, ptr %3, align 4
  br label %447

447:                                              ; preds = %446
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  store i32 1, ptr %3, align 4
  br label %448

448:                                              ; preds = %447
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit80, label %449

449:                                              ; preds = %448
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader16.1, label %450

450:                                              ; preds = %449
  unreachable

451:                                              ; preds = %444
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %452

452:                                              ; preds = %451
  store i32 0, ptr %1, align 4
  br label %.preheader15

.preheader15:                                     ; preds = %452
  br label %453

453:                                              ; preds = %.preheader15
  store i32 0, ptr %2, align 4
  br label %.preheader14

.preheader14:                                     ; preds = %453
  br label %454

454:                                              ; preds = %.preheader14
  store i32 0, ptr %3, align 4
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  store i32 1, ptr %3, align 4
  br label %456

456:                                              ; preds = %455
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  store i32 2, ptr %3, align 4
  br label %457

457:                                              ; preds = %456
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  store i32 3, ptr %3, align 4
  br label %458

458:                                              ; preds = %457
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit89, label %465

.loopexit89:                                      ; preds = %502, %496, %458, %470
  %.lcssa85.ph = phi i32 [ 0, %470 ], [ 0, %458 ], [ 1, %496 ], [ 1, %502 ]
  %.lcssa83.ph = phi i32 [ 1, %470 ], [ 0, %458 ], [ 0, %496 ], [ 1, %502 ]
  br label %459

459:                                              ; preds = %.loopexit89, %485
  %.lcssa85 = phi i32 [ %.lcssa88, %485 ], [ %.lcssa85.ph, %.loopexit89 ]
  %.lcssa83 = phi i32 [ 2, %485 ], [ %.lcssa83.ph, %.loopexit89 ]
  %460 = shl i32 %.lcssa83, 3
  %461 = add i32 256, %460
  %462 = add nsw i32 %.lcssa85, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %463
  store i32 1, ptr %464, align 4
  unreachable

465:                                              ; preds = %458
  store i32 1, ptr %2, align 4
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %465
  br label %466

466:                                              ; preds = %.preheader14.1
  store i32 0, ptr %3, align 4
  br label %467

467:                                              ; preds = %466
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  store i32 1, ptr %3, align 4
  br label %468

468:                                              ; preds = %467
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  store i32 2, ptr %3, align 4
  br label %469

469:                                              ; preds = %468
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  store i32 3, ptr %3, align 4
  br label %470

470:                                              ; preds = %469
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit89, label %471

471:                                              ; preds = %470
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader14.2, label %490

.preheader14.2:                                   ; preds = %503, %471
  %.lcssa88 = phi i32 [ 0, %471 ], [ 1, %503 ]
  br label %472

472:                                              ; preds = %.preheader14.2
  store i32 0, ptr %3, align 4
  br label %473

473:                                              ; preds = %472
  %474 = add nsw i32 %.lcssa88, 16
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %475
  store i32 1, ptr %476, align 4
  store i32 1, ptr %3, align 4
  br label %477

477:                                              ; preds = %473
  %478 = add nsw i32 %.lcssa88, 80
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %479
  store i32 1, ptr %480, align 4
  store i32 2, ptr %3, align 4
  br label %481

481:                                              ; preds = %477
  %482 = add nsw i32 %.lcssa88, 144
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %483
  store i32 1, ptr %484, align 4
  store i32 3, ptr %3, align 4
  br label %485

485:                                              ; preds = %481
  %486 = add nsw i32 %.lcssa88, 208
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %487
  store i32 1, ptr %488, align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %459, label %489

489:                                              ; preds = %485
  unreachable

490:                                              ; preds = %471
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader15.1, label %505

.preheader15.1:                                   ; preds = %490
  br label %491

491:                                              ; preds = %.preheader15.1
  store i32 0, ptr %2, align 4
  br label %.preheader14.190

.preheader14.190:                                 ; preds = %491
  br label %492

492:                                              ; preds = %.preheader14.190
  store i32 0, ptr %3, align 4
  br label %493

493:                                              ; preds = %492
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  store i32 1, ptr %3, align 4
  br label %494

494:                                              ; preds = %493
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  store i32 2, ptr %3, align 4
  br label %495

495:                                              ; preds = %494
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  store i32 3, ptr %3, align 4
  br label %496

496:                                              ; preds = %495
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit89, label %497

497:                                              ; preds = %496
  store i32 1, ptr %2, align 4
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %497
  br label %498

498:                                              ; preds = %.preheader14.1.1
  store i32 0, ptr %3, align 4
  br label %499

499:                                              ; preds = %498
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  store i32 1, ptr %3, align 4
  br label %500

500:                                              ; preds = %499
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  store i32 2, ptr %3, align 4
  br label %501

501:                                              ; preds = %500
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  store i32 3, ptr %3, align 4
  br label %502

502:                                              ; preds = %501
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  store i32 4, ptr %3, align 4
  br i1 false, label %.loopexit89, label %503

503:                                              ; preds = %502
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader14.2, label %504

504:                                              ; preds = %503
  unreachable

505:                                              ; preds = %490
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %506

506:                                              ; preds = %505
  store i32 0, ptr %1, align 4
  br label %.preheader13

.preheader13:                                     ; preds = %506
  br label %507

507:                                              ; preds = %.preheader13
  store i32 0, ptr %2, align 4
  br label %.preheader12

.preheader12:                                     ; preds = %507
  br label %508

508:                                              ; preds = %.preheader12
  store i32 0, ptr %3, align 4
  br label %509

509:                                              ; preds = %508
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %516

.loopexit98:                                      ; preds = %536, %531, %526, %509
  %.lcssa94.ph = phi i32 [ 0, %509 ], [ 1, %526 ], [ 2, %531 ], [ 3, %536 ]
  %.lcssa92.ph = phi i32 [ 0, %509 ], [ 0, %526 ], [ 0, %531 ], [ 0, %536 ]
  br label %510

510:                                              ; preds = %.loopexit98, %518
  %.lcssa94 = phi i32 [ %.lcssa96, %518 ], [ %.lcssa94.ph, %.loopexit98 ]
  %.lcssa92 = phi i32 [ 1, %518 ], [ %.lcssa92.ph, %.loopexit98 ]
  %511 = shl i32 %.lcssa92, 3
  %512 = add i32 64, %511
  %513 = add nsw i32 %.lcssa94, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %514
  store i32 1, ptr %515, align 4
  unreachable

516:                                              ; preds = %509
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.1, label %523

.preheader12.1:                                   ; preds = %537, %532, %527, %516
  %.lcssa96 = phi i32 [ 0, %516 ], [ 1, %527 ], [ 2, %532 ], [ 3, %537 ]
  br label %517

517:                                              ; preds = %.preheader12.1
  store i32 0, ptr %3, align 4
  br label %518

518:                                              ; preds = %517
  %519 = add nsw i32 %.lcssa96, 8
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %520
  store i32 1, ptr %521, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %510, label %522

522:                                              ; preds = %518
  unreachable

523:                                              ; preds = %516
  store i32 1, ptr %1, align 4
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %523
  br label %524

524:                                              ; preds = %.preheader13.1
  store i32 0, ptr %2, align 4
  br label %.preheader12.199

.preheader12.199:                                 ; preds = %524
  br label %525

525:                                              ; preds = %.preheader12.199
  store i32 0, ptr %3, align 4
  br label %526

526:                                              ; preds = %525
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %527

527:                                              ; preds = %526
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.1, label %528

528:                                              ; preds = %527
  store i32 2, ptr %1, align 4
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %528
  br label %529

529:                                              ; preds = %.preheader13.2
  store i32 0, ptr %2, align 4
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %529
  br label %530

530:                                              ; preds = %.preheader12.2
  store i32 0, ptr %3, align 4
  br label %531

531:                                              ; preds = %530
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %532

532:                                              ; preds = %531
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.1, label %533

533:                                              ; preds = %532
  store i32 3, ptr %1, align 4
  br i1 false, label %.preheader13.3, label %539

.preheader13.3:                                   ; preds = %533
  br label %534

534:                                              ; preds = %.preheader13.3
  store i32 0, ptr %2, align 4
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %534
  br label %535

535:                                              ; preds = %.preheader12.3
  store i32 0, ptr %3, align 4
  br label %536

536:                                              ; preds = %535
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit98, label %537

537:                                              ; preds = %536
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader12.1, label %538

538:                                              ; preds = %537
  unreachable

539:                                              ; preds = %533
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %540

540:                                              ; preds = %539
  store i32 0, ptr %1, align 4
  br label %.preheader11

.preheader11:                                     ; preds = %540
  br label %541

541:                                              ; preds = %.preheader11
  store i32 0, ptr %2, align 4
  br label %.preheader10

.preheader10:                                     ; preds = %541
  br label %542

542:                                              ; preds = %.preheader10
  store i32 0, ptr %3, align 4
  br label %543

543:                                              ; preds = %542
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %550

.loopexit107:                                     ; preds = %572, %569, %566, %543, %552, %555
  %.lcssa103.ph = phi i32 [ 0, %555 ], [ 0, %552 ], [ 0, %543 ], [ 1, %566 ], [ 1, %569 ], [ 1, %572 ]
  %.lcssa101.ph = phi i32 [ 2, %555 ], [ 1, %552 ], [ 0, %543 ], [ 0, %566 ], [ 1, %569 ], [ 2, %572 ]
  br label %544

544:                                              ; preds = %.loopexit107, %558
  %.lcssa103 = phi i32 [ %.lcssa106, %558 ], [ %.lcssa103.ph, %.loopexit107 ]
  %.lcssa101 = phi i32 [ 3, %558 ], [ %.lcssa101.ph, %.loopexit107 ]
  %545 = shl i32 %.lcssa101, 3
  %546 = add i32 64, %545
  %547 = add nsw i32 %.lcssa103, %546
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %548
  store i32 1, ptr %549, align 4
  unreachable

550:                                              ; preds = %543
  store i32 1, ptr %2, align 4
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %550
  br label %551

551:                                              ; preds = %.preheader10.1
  store i32 0, ptr %3, align 4
  br label %552

552:                                              ; preds = %551
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %553

553:                                              ; preds = %552
  store i32 2, ptr %2, align 4
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %553
  br label %554

554:                                              ; preds = %.preheader10.2
  store i32 0, ptr %3, align 4
  br label %555

555:                                              ; preds = %554
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %556

556:                                              ; preds = %555
  store i32 3, ptr %2, align 4
  br i1 false, label %.preheader10.3, label %563

.preheader10.3:                                   ; preds = %573, %556
  %.lcssa106 = phi i32 [ 0, %556 ], [ 1, %573 ]
  br label %557

557:                                              ; preds = %.preheader10.3
  store i32 0, ptr %3, align 4
  br label %558

558:                                              ; preds = %557
  %559 = add nsw i32 %.lcssa106, 24
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %560
  store i32 1, ptr %561, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %544, label %562

562:                                              ; preds = %558
  unreachable

563:                                              ; preds = %556
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader11.1, label %575

.preheader11.1:                                   ; preds = %563
  br label %564

564:                                              ; preds = %.preheader11.1
  store i32 0, ptr %2, align 4
  br label %.preheader10.1108

.preheader10.1108:                                ; preds = %564
  br label %565

565:                                              ; preds = %.preheader10.1108
  store i32 0, ptr %3, align 4
  br label %566

566:                                              ; preds = %565
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %567

567:                                              ; preds = %566
  store i32 1, ptr %2, align 4
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %567
  br label %568

568:                                              ; preds = %.preheader10.1.1
  store i32 0, ptr %3, align 4
  br label %569

569:                                              ; preds = %568
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %570

570:                                              ; preds = %569
  store i32 2, ptr %2, align 4
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %570
  br label %571

571:                                              ; preds = %.preheader10.2.1
  store i32 0, ptr %3, align 4
  br label %572

572:                                              ; preds = %571
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit107, label %573

573:                                              ; preds = %572
  store i32 3, ptr %2, align 4
  br i1 false, label %.preheader10.3, label %574

574:                                              ; preds = %573
  unreachable

575:                                              ; preds = %563
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %576

576:                                              ; preds = %575
  store i32 0, ptr %1, align 4
  br label %.preheader9

.preheader9:                                      ; preds = %576
  br label %577

577:                                              ; preds = %.preheader9
  store i32 0, ptr %2, align 4
  br label %.preheader8

.preheader8:                                      ; preds = %577
  br label %578

578:                                              ; preds = %.preheader8
  store i32 0, ptr %3, align 4
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  store i32 1, ptr %3, align 4
  br label %580

580:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  store i32 2, ptr %3, align 4
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit116, label %588

.loopexit116:                                     ; preds = %608, %581
  %.lcssa112.ph = phi i32 [ 0, %581 ], [ 1, %608 ]
  %.lcssa110.ph = phi i32 [ 0, %581 ], [ 0, %608 ]
  br label %582

582:                                              ; preds = %.loopexit116, %598
  %.lcssa112 = phi i32 [ %.lcssa114, %598 ], [ %.lcssa112.ph, %.loopexit116 ]
  %.lcssa110 = phi i32 [ 1, %598 ], [ %.lcssa110.ph, %.loopexit116 ]
  %583 = shl i32 %.lcssa110, 3
  %584 = add i32 192, %583
  %585 = add nsw i32 %.lcssa112, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %586
  store i32 1, ptr %587, align 4
  unreachable

588:                                              ; preds = %581
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader8.1, label %603

.preheader8.1:                                    ; preds = %609, %588
  %.lcssa114 = phi i32 [ 0, %588 ], [ 1, %609 ]
  br label %589

589:                                              ; preds = %.preheader8.1
  store i32 0, ptr %3, align 4
  br label %590

590:                                              ; preds = %589
  %591 = add nsw i32 %.lcssa114, 8
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %592
  store i32 1, ptr %593, align 4
  store i32 1, ptr %3, align 4
  br label %594

594:                                              ; preds = %590
  %595 = add nsw i32 %.lcssa114, 72
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %596
  store i32 1, ptr %597, align 4
  store i32 2, ptr %3, align 4
  br label %598

598:                                              ; preds = %594
  %599 = add nsw i32 %.lcssa114, 136
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %600
  store i32 1, ptr %601, align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %582, label %602

602:                                              ; preds = %598
  unreachable

603:                                              ; preds = %588
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader9.1, label %611

.preheader9.1:                                    ; preds = %603
  br label %604

604:                                              ; preds = %.preheader9.1
  store i32 0, ptr %2, align 4
  br label %.preheader8.1117

.preheader8.1117:                                 ; preds = %604
  br label %605

605:                                              ; preds = %.preheader8.1117
  store i32 0, ptr %3, align 4
  br label %606

606:                                              ; preds = %605
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  store i32 1, ptr %3, align 4
  br label %607

607:                                              ; preds = %606
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  store i32 2, ptr %3, align 4
  br label %608

608:                                              ; preds = %607
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  store i32 3, ptr %3, align 4
  br i1 false, label %.loopexit116, label %609

609:                                              ; preds = %608
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader8.1, label %610

610:                                              ; preds = %609
  unreachable

611:                                              ; preds = %603
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %612

612:                                              ; preds = %611
  store i32 0, ptr %1, align 4
  br label %.preheader7

.preheader7:                                      ; preds = %612
  br label %613

613:                                              ; preds = %.preheader7
  store i32 0, ptr %2, align 4
  br label %.preheader6

.preheader6:                                      ; preds = %613
  br label %614

614:                                              ; preds = %.preheader6
  store i32 0, ptr %3, align 4
  br label %615

615:                                              ; preds = %614
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %622

.loopexit125:                                     ; preds = %646, %643, %638, %635, %615, %624
  %.lcssa121.ph = phi i32 [ 0, %624 ], [ 0, %615 ], [ 1, %635 ], [ 1, %638 ], [ 2, %643 ], [ 2, %646 ]
  %.lcssa119.ph = phi i32 [ 1, %624 ], [ 0, %615 ], [ 0, %635 ], [ 1, %638 ], [ 0, %643 ], [ 1, %646 ]
  br label %616

616:                                              ; preds = %.loopexit125, %627
  %.lcssa121 = phi i32 [ %.lcssa124, %627 ], [ %.lcssa121.ph, %.loopexit125 ]
  %.lcssa119 = phi i32 [ 2, %627 ], [ %.lcssa119.ph, %.loopexit125 ]
  %617 = shl i32 %.lcssa119, 3
  %618 = add i32 64, %617
  %619 = add nsw i32 %.lcssa121, %618
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %620
  store i32 1, ptr %621, align 4
  unreachable

622:                                              ; preds = %615
  store i32 1, ptr %2, align 4
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %622
  br label %623

623:                                              ; preds = %.preheader6.1
  store i32 0, ptr %3, align 4
  br label %624

624:                                              ; preds = %623
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %625

625:                                              ; preds = %624
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.2, label %632

.preheader6.2:                                    ; preds = %647, %639, %625
  %.lcssa124 = phi i32 [ 0, %625 ], [ 1, %639 ], [ 2, %647 ]
  br label %626

626:                                              ; preds = %.preheader6.2
  store i32 0, ptr %3, align 4
  br label %627

627:                                              ; preds = %626
  %628 = add nsw i32 %.lcssa124, 16
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %629
  store i32 1, ptr %630, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %616, label %631

631:                                              ; preds = %627
  unreachable

632:                                              ; preds = %625
  store i32 1, ptr %1, align 4
  br label %.preheader7.1

.preheader7.1:                                    ; preds = %632
  br label %633

633:                                              ; preds = %.preheader7.1
  store i32 0, ptr %2, align 4
  br label %.preheader6.1126

.preheader6.1126:                                 ; preds = %633
  br label %634

634:                                              ; preds = %.preheader6.1126
  store i32 0, ptr %3, align 4
  br label %635

635:                                              ; preds = %634
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %636

636:                                              ; preds = %635
  store i32 1, ptr %2, align 4
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %636
  br label %637

637:                                              ; preds = %.preheader6.1.1
  store i32 0, ptr %3, align 4
  br label %638

638:                                              ; preds = %637
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %639

639:                                              ; preds = %638
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.2, label %640

640:                                              ; preds = %639
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader7.2, label %649

.preheader7.2:                                    ; preds = %640
  br label %641

641:                                              ; preds = %.preheader7.2
  store i32 0, ptr %2, align 4
  br label %.preheader6.2127

.preheader6.2127:                                 ; preds = %641
  br label %642

642:                                              ; preds = %.preheader6.2127
  store i32 0, ptr %3, align 4
  br label %643

643:                                              ; preds = %642
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %644

644:                                              ; preds = %643
  store i32 1, ptr %2, align 4
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %644
  br label %645

645:                                              ; preds = %.preheader6.1.2
  store i32 0, ptr %3, align 4
  br label %646

646:                                              ; preds = %645
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %.loopexit125, label %647

647:                                              ; preds = %646
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader6.2, label %648

648:                                              ; preds = %647
  unreachable

649:                                              ; preds = %640
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %650

650:                                              ; preds = %649
  store i32 0, ptr %1, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %650
  br label %651

651:                                              ; preds = %.preheader5
  store i32 0, ptr %2, align 4
  br label %.preheader4

.preheader4:                                      ; preds = %651
  br label %652

652:                                              ; preds = %.preheader4
  store i32 0, ptr %3, align 4
  br label %653

653:                                              ; preds = %652
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  store i32 1, ptr %3, align 4
  br label %654

654:                                              ; preds = %653
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit135, label %661

.loopexit135:                                     ; preds = %682, %676, %654
  %.lcssa131.ph = phi i32 [ 0, %654 ], [ 1, %676 ], [ 2, %682 ]
  %.lcssa129.ph = phi i32 [ 0, %654 ], [ 0, %676 ], [ 0, %682 ]
  br label %655

655:                                              ; preds = %.loopexit135, %667
  %.lcssa131 = phi i32 [ %.lcssa133, %667 ], [ %.lcssa131.ph, %.loopexit135 ]
  %.lcssa129 = phi i32 [ 1, %667 ], [ %.lcssa129.ph, %.loopexit135 ]
  %656 = shl i32 %.lcssa129, 3
  %657 = add i32 128, %656
  %658 = add nsw i32 %.lcssa131, %657
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %659
  store i32 1, ptr %660, align 4
  unreachable

661:                                              ; preds = %654
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.1, label %672

.preheader4.1:                                    ; preds = %683, %677, %661
  %.lcssa133 = phi i32 [ 0, %661 ], [ 1, %677 ], [ 2, %683 ]
  br label %662

662:                                              ; preds = %.preheader4.1
  store i32 0, ptr %3, align 4
  br label %663

663:                                              ; preds = %662
  %664 = add nsw i32 %.lcssa133, 8
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %665
  store i32 1, ptr %666, align 4
  store i32 1, ptr %3, align 4
  br label %667

667:                                              ; preds = %663
  %668 = add nsw i32 %.lcssa133, 72
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %669
  store i32 1, ptr %670, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %655, label %671

671:                                              ; preds = %667
  unreachable

672:                                              ; preds = %661
  store i32 1, ptr %1, align 4
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %672
  br label %673

673:                                              ; preds = %.preheader5.1
  store i32 0, ptr %2, align 4
  br label %.preheader4.1136

.preheader4.1136:                                 ; preds = %673
  br label %674

674:                                              ; preds = %.preheader4.1136
  store i32 0, ptr %3, align 4
  br label %675

675:                                              ; preds = %674
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  store i32 1, ptr %3, align 4
  br label %676

676:                                              ; preds = %675
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit135, label %677

677:                                              ; preds = %676
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.1, label %678

678:                                              ; preds = %677
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader5.2, label %685

.preheader5.2:                                    ; preds = %678
  br label %679

679:                                              ; preds = %.preheader5.2
  store i32 0, ptr %2, align 4
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %679
  br label %680

680:                                              ; preds = %.preheader4.2
  store i32 0, ptr %3, align 4
  br label %681

681:                                              ; preds = %680
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  store i32 1, ptr %3, align 4
  br label %682

682:                                              ; preds = %681
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit135, label %683

683:                                              ; preds = %682
  store i32 1, ptr %2, align 4
  br i1 false, label %.preheader4.1, label %684

684:                                              ; preds = %683
  unreachable

685:                                              ; preds = %678
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %686

686:                                              ; preds = %685
  store i32 0, ptr %1, align 4
  br label %.preheader3

.preheader3:                                      ; preds = %686
  br label %687

687:                                              ; preds = %.preheader3
  store i32 0, ptr %2, align 4
  br label %.preheader2

.preheader2:                                      ; preds = %687
  br label %688

688:                                              ; preds = %.preheader2
  store i32 0, ptr %3, align 4
  br label %689

689:                                              ; preds = %688
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  store i32 1, ptr %3, align 4
  br label %690

690:                                              ; preds = %689
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit144, label %697

.loopexit144:                                     ; preds = %720, %716, %690, %700
  %.lcssa140.ph = phi i32 [ 0, %700 ], [ 0, %690 ], [ 1, %716 ], [ 1, %720 ]
  %.lcssa138.ph = phi i32 [ 1, %700 ], [ 0, %690 ], [ 0, %716 ], [ 1, %720 ]
  br label %691

691:                                              ; preds = %.loopexit144, %707
  %.lcssa140 = phi i32 [ %.lcssa143, %707 ], [ %.lcssa140.ph, %.loopexit144 ]
  %.lcssa138 = phi i32 [ 2, %707 ], [ %.lcssa138.ph, %.loopexit144 ]
  %692 = shl i32 %.lcssa138, 3
  %693 = add i32 128, %692
  %694 = add nsw i32 %.lcssa140, %693
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %695
  store i32 1, ptr %696, align 4
  unreachable

697:                                              ; preds = %690
  store i32 1, ptr %2, align 4
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %697
  br label %698

698:                                              ; preds = %.preheader2.1
  store i32 0, ptr %3, align 4
  br label %699

699:                                              ; preds = %698
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  store i32 1, ptr %3, align 4
  br label %700

700:                                              ; preds = %699
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit144, label %701

701:                                              ; preds = %700
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader2.2, label %712

.preheader2.2:                                    ; preds = %721, %701
  %.lcssa143 = phi i32 [ 0, %701 ], [ 1, %721 ]
  br label %702

702:                                              ; preds = %.preheader2.2
  store i32 0, ptr %3, align 4
  br label %703

703:                                              ; preds = %702
  %704 = add nsw i32 %.lcssa143, 16
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %705
  store i32 1, ptr %706, align 4
  store i32 1, ptr %3, align 4
  br label %707

707:                                              ; preds = %703
  %708 = add nsw i32 %.lcssa143, 80
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %709
  store i32 1, ptr %710, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %691, label %711

711:                                              ; preds = %707
  unreachable

712:                                              ; preds = %701
  store i32 1, ptr %1, align 4
  br i1 false, label %.preheader3.1, label %723

.preheader3.1:                                    ; preds = %712
  br label %713

713:                                              ; preds = %.preheader3.1
  store i32 0, ptr %2, align 4
  br label %.preheader2.1145

.preheader2.1145:                                 ; preds = %713
  br label %714

714:                                              ; preds = %.preheader2.1145
  store i32 0, ptr %3, align 4
  br label %715

715:                                              ; preds = %714
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  store i32 1, ptr %3, align 4
  br label %716

716:                                              ; preds = %715
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit144, label %717

717:                                              ; preds = %716
  store i32 1, ptr %2, align 4
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %717
  br label %718

718:                                              ; preds = %.preheader2.1.1
  store i32 0, ptr %3, align 4
  br label %719

719:                                              ; preds = %718
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  store i32 1, ptr %3, align 4
  br label %720

720:                                              ; preds = %719
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit144, label %721

721:                                              ; preds = %720
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader2.2, label %722

722:                                              ; preds = %721
  unreachable

723:                                              ; preds = %712
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %724

724:                                              ; preds = %723
  store i32 0, ptr %1, align 4
  br label %.preheader1

.preheader1:                                      ; preds = %724
  br label %725

725:                                              ; preds = %.preheader1
  store i32 0, ptr %2, align 4
  br label %.preheader

.preheader:                                       ; preds = %725
  br label %726

726:                                              ; preds = %.preheader
  store i32 0, ptr %3, align 4
  br label %727

727:                                              ; preds = %726
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  store i32 1, ptr %3, align 4
  br label %728

728:                                              ; preds = %727
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %735

.loopexit152:                                     ; preds = %768, %764, %758, %754, %728, %738
  %.lcssa149.ph = phi i32 [ 0, %738 ], [ 0, %728 ], [ 1, %754 ], [ 1, %758 ], [ 2, %764 ], [ 2, %768 ]
  %.lcssa147.ph = phi i32 [ 1, %738 ], [ 0, %728 ], [ 0, %754 ], [ 1, %758 ], [ 0, %764 ], [ 1, %768 ]
  br label %729

729:                                              ; preds = %.loopexit152, %745
  %.lcssa149 = phi i32 [ %.lcssa151, %745 ], [ %.lcssa149.ph, %.loopexit152 ]
  %.lcssa147 = phi i32 [ 2, %745 ], [ %.lcssa147.ph, %.loopexit152 ]
  %730 = shl i32 %.lcssa147, 3
  %731 = add i32 128, %730
  %732 = add nsw i32 %.lcssa149, %731
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %733
  store i32 1, ptr %734, align 4
  unreachable

735:                                              ; preds = %728
  store i32 1, ptr %2, align 4
  br label %.preheader.1

.preheader.1:                                     ; preds = %735
  br label %736

736:                                              ; preds = %.preheader.1
  store i32 0, ptr %3, align 4
  br label %737

737:                                              ; preds = %736
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  store i32 1, ptr %3, align 4
  br label %738

738:                                              ; preds = %737
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %739

739:                                              ; preds = %738
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.2, label %750

.preheader.2:                                     ; preds = %769, %759, %739
  %.lcssa151 = phi i32 [ 0, %739 ], [ 1, %759 ], [ 2, %769 ]
  br label %740

740:                                              ; preds = %.preheader.2
  store i32 0, ptr %3, align 4
  br label %741

741:                                              ; preds = %740
  %742 = add nsw i32 %.lcssa151, 16
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %743
  store i32 1, ptr %744, align 4
  store i32 1, ptr %3, align 4
  br label %745

745:                                              ; preds = %741
  %746 = add nsw i32 %.lcssa151, 80
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %747
  store i32 1, ptr %748, align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %729, label %749

749:                                              ; preds = %745
  unreachable

750:                                              ; preds = %739
  store i32 1, ptr %1, align 4
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %750
  br label %751

751:                                              ; preds = %.preheader1.1
  store i32 0, ptr %2, align 4
  br label %.preheader.1153

.preheader.1153:                                  ; preds = %751
  br label %752

752:                                              ; preds = %.preheader.1153
  store i32 0, ptr %3, align 4
  br label %753

753:                                              ; preds = %752
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  store i32 1, ptr %3, align 4
  br label %754

754:                                              ; preds = %753
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %755

755:                                              ; preds = %754
  store i32 1, ptr %2, align 4
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %755
  br label %756

756:                                              ; preds = %.preheader.1.1
  store i32 0, ptr %3, align 4
  br label %757

757:                                              ; preds = %756
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  store i32 1, ptr %3, align 4
  br label %758

758:                                              ; preds = %757
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %759

759:                                              ; preds = %758
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.2, label %760

760:                                              ; preds = %759
  store i32 2, ptr %1, align 4
  br i1 false, label %.preheader1.2, label %771

.preheader1.2:                                    ; preds = %760
  br label %761

761:                                              ; preds = %.preheader1.2
  store i32 0, ptr %2, align 4
  br label %.preheader.2154

.preheader.2154:                                  ; preds = %761
  br label %762

762:                                              ; preds = %.preheader.2154
  store i32 0, ptr %3, align 4
  br label %763

763:                                              ; preds = %762
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  store i32 1, ptr %3, align 4
  br label %764

764:                                              ; preds = %763
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %765

765:                                              ; preds = %764
  store i32 1, ptr %2, align 4
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %765
  br label %766

766:                                              ; preds = %.preheader.1.2
  store i32 0, ptr %3, align 4
  br label %767

767:                                              ; preds = %766
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  store i32 1, ptr %3, align 4
  br label %768

768:                                              ; preds = %767
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  store i32 2, ptr %3, align 4
  br i1 false, label %.loopexit152, label %769

769:                                              ; preds = %768
  store i32 2, ptr %2, align 4
  br i1 false, label %.preheader.2, label %770

770:                                              ; preds = %769
  unreachable

771:                                              ; preds = %760
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %772 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %772, 0
  br i1 %.not, label %775, label %773

773:                                              ; preds = %771
  %774 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %774, ptr @n, align 4
  br label %776

775:                                              ; preds = %771
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %776

776:                                              ; preds = %775, %773
  %777 = phi i32 [ %.pre, %775 ], [ %774, %773 ]
  %778 = call i32 @Trial(i32 noundef %777)
  %.not16 = icmp eq i32 %778, 0
  br i1 %.not16, label %779, label %780

779:                                              ; preds = %776
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %783

780:                                              ; preds = %776
  %781 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %781, 2005
  br i1 %.not18, label %783, label %782

782:                                              ; preds = %780
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %783

783:                                              ; preds = %782, %780, %779
  %784 = load i32, ptr @n, align 4
  %785 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %784) #4
  %786 = load i32, ptr @kount, align 4
  %787 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %786) #4
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
  br label %2, !llvm.loop !17

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
