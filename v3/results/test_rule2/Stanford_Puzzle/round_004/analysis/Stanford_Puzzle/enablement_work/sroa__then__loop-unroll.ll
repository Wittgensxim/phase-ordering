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
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %12, %3
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %26

26:                                               ; preds = %33, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %25, %18 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %28, label %.loopexit

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %33

31:                                               ; preds = %28
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %28 ]
  %32 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %34

33:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  br label %34

34:                                               ; preds = %.loopexit, %31
  %storemerge2 = phi i32 [ %32, %31 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = select i1 %.not3, i1 true, i1 %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %14, %11 ]
  br label %2

.preheader31:                                     ; preds = %6
  br label %15

2:                                                ; preds = %1
  %3 = sext i32 %storemerge to i64
  %4 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %storemerge, 1
  br label %6

6:                                                ; preds = %2
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nuw nsw i32 %storemerge, 2
  %10 = icmp samesign ult i32 %9, 512
  br i1 %10, label %11, label %.preheader31

11:                                               ; preds = %6
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  %14 = add nuw nsw i32 %storemerge, 3
  br label %1, !llvm.loop !13

15:                                               ; preds = %156, %.preheader31
  %storemerge1 = phi i32 [ %157, %156 ], [ 1, %.preheader31 ]
  %16 = icmp slt i32 %storemerge1, 6
  br i1 %16, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %15
  br label %17

.preheader28:                                     ; preds = %15
  br label %158

17:                                               ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %17
  br label %18

18:                                               ; preds = %.preheader29
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %storemerge1, 72
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nsw i32 %storemerge1, 136
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %storemerge1, 200
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %27
  %32 = add nsw i32 %storemerge1, 264
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %storemerge1, 328
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br i1 false, label %.loopexit, label %45

.loopexit:                                        ; preds = %35, %63, %85, %107, %129
  %storemerge1.lcssa76.ph = phi i32 [ %storemerge1, %129 ], [ %storemerge1, %107 ], [ %storemerge1, %85 ], [ %storemerge1, %63 ], [ %storemerge1, %35 ]
  %storemerge47.lcssa75.ph = phi i32 [ 5, %129 ], [ 4, %107 ], [ 3, %85 ], [ 2, %63 ], [ 1, %35 ]
  br label %39

39:                                               ; preds = %.loopexit, %151
  %storemerge1.lcssa76 = phi i32 [ %storemerge1.lcssa78, %151 ], [ %storemerge1.lcssa76.ph, %.loopexit ]
  %storemerge47.lcssa75 = phi i32 [ 6, %151 ], [ %storemerge47.lcssa75.ph, %.loopexit ]
  %40 = shl i32 %storemerge47.lcssa75, 3
  %41 = add i32 384, %40
  %42 = add nsw i32 %storemerge1.lcssa76, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %43
  store i32 0, ptr %44, align 4
  unreachable

45:                                               ; preds = %35
  br label %.preheader29.1

.preheader29.1:                                   ; preds = %45
  br label %46

46:                                               ; preds = %.preheader29.1
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %storemerge1, 80
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %47
  %52 = add nsw i32 %storemerge1, 144
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %51
  %56 = add nsw i32 %storemerge1, 208
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %55
  %60 = add nsw i32 %storemerge1, 272
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %59
  %64 = add nsw i32 %storemerge1, 336
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br i1 false, label %.loopexit, label %67

67:                                               ; preds = %63
  br label %.preheader29.2

.preheader29.2:                                   ; preds = %67
  br label %68

68:                                               ; preds = %.preheader29.2
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %storemerge1, 88
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %69
  %74 = add nsw i32 %storemerge1, 152
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %75
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %73
  %78 = add nsw i32 %storemerge1, 216
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %79
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %77
  %82 = add nsw i32 %storemerge1, 280
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %81
  %86 = add nsw i32 %storemerge1, 344
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %87
  store i32 0, ptr %88, align 4
  br i1 false, label %.loopexit, label %89

89:                                               ; preds = %85
  br label %.preheader29.3

.preheader29.3:                                   ; preds = %89
  br label %90

90:                                               ; preds = %.preheader29.3
  br label %91

91:                                               ; preds = %90
  %92 = add nsw i32 %storemerge1, 96
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %93
  store i32 0, ptr %94, align 4
  br label %95

95:                                               ; preds = %91
  %96 = add nsw i32 %storemerge1, 160
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %97
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %95
  %100 = add nsw i32 %storemerge1, 224
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %99
  %104 = add nsw i32 %storemerge1, 288
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %105
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %103
  %108 = add nsw i32 %storemerge1, 352
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %109
  store i32 0, ptr %110, align 4
  br i1 false, label %.loopexit, label %111

111:                                              ; preds = %107
  br label %.preheader29.4

.preheader29.4:                                   ; preds = %111
  br label %112

112:                                              ; preds = %.preheader29.4
  br label %113

113:                                              ; preds = %112
  %114 = add nsw i32 %storemerge1, 104
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %115
  store i32 0, ptr %116, align 4
  br label %117

117:                                              ; preds = %113
  %118 = add nsw i32 %storemerge1, 168
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %119
  store i32 0, ptr %120, align 4
  br label %121

121:                                              ; preds = %117
  %122 = add nsw i32 %storemerge1, 232
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %123
  store i32 0, ptr %124, align 4
  br label %125

125:                                              ; preds = %121
  %126 = add nsw i32 %storemerge1, 296
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %127
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %125
  %130 = add nsw i32 %storemerge1, 360
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %131
  store i32 0, ptr %132, align 4
  br i1 false, label %.loopexit, label %133

133:                                              ; preds = %129
  br i1 false, label %.preheader29.5, label %156

.preheader29.5:                                   ; preds = %133
  %storemerge1.lcssa78 = phi i32 [ %storemerge1, %133 ]
  br label %134

134:                                              ; preds = %.preheader29.5
  br label %135

135:                                              ; preds = %134
  %136 = add nsw i32 %storemerge1.lcssa78, 112
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %137
  store i32 0, ptr %138, align 4
  br label %139

139:                                              ; preds = %135
  %140 = add nsw i32 %storemerge1.lcssa78, 176
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %141
  store i32 0, ptr %142, align 4
  br label %143

143:                                              ; preds = %139
  %144 = add nsw i32 %storemerge1.lcssa78, 240
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %145
  store i32 0, ptr %146, align 4
  br label %147

147:                                              ; preds = %143
  %148 = add nsw i32 %storemerge1.lcssa78, 304
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %149
  store i32 0, ptr %150, align 4
  br label %151

151:                                              ; preds = %147
  %152 = add nsw i32 %storemerge1.lcssa78, 368
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %153
  store i32 0, ptr %154, align 4
  br i1 false, label %39, label %155

155:                                              ; preds = %151
  unreachable

156:                                              ; preds = %133
  %157 = add nsw i32 %storemerge1, 1
  br label %15, !llvm.loop !14

158:                                              ; preds = %180, %.preheader28
  %storemerge2 = phi i32 [ %181, %180 ], [ 0, %.preheader28 ]
  %159 = icmp slt i32 %storemerge2, 13
  br i1 %159, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %158
  %160 = sext i32 %storemerge2 to i64
  %161 = getelementptr inbounds [2048 x i8], ptr @p, i64 %160
  br label %162

.preheader26:                                     ; preds = %158
  br label %182

162:                                              ; preds = %174, %.preheader27
  %storemerge46 = phi i32 [ 0, %.preheader27 ], [ %179, %174 ]
  br label %163

163:                                              ; preds = %162
  %164 = sext i32 %storemerge2 to i64
  %165 = getelementptr inbounds [2048 x i8], ptr @p, i64 %164
  %166 = sext i32 %storemerge46 to i64
  %167 = getelementptr inbounds [4 x i8], ptr %165, i64 %166
  store i32 0, ptr %167, align 4
  %168 = add nuw nsw i32 %storemerge46, 1
  br label %169

169:                                              ; preds = %163
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds [4 x i8], ptr %161, i64 %170
  store i32 0, ptr %171, align 4
  %172 = add nuw nsw i32 %storemerge46, 2
  %173 = icmp samesign ult i32 %172, 512
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = sext i32 %storemerge2 to i64
  %176 = getelementptr inbounds [2048 x i8], ptr @p, i64 %175
  %177 = sext i32 %172 to i64
  %178 = getelementptr inbounds [4 x i8], ptr %176, i64 %177
  store i32 0, ptr %178, align 4
  %179 = add nuw nsw i32 %storemerge46, 3
  br label %162, !llvm.loop !15

180:                                              ; preds = %169
  %181 = add nsw i32 %storemerge2, 1
  br label %158, !llvm.loop !16

182:                                              ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %182
  br label %183

183:                                              ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %183
  br label %184

184:                                              ; preds = %.preheader24
  br label %185

185:                                              ; preds = %184
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit83, label %192

.loopexit83:                                      ; preds = %232, %229, %224, %221, %216, %213, %208, %205, %185, %194
  %storemerge3.lcssa80.ph = phi i32 [ 0, %194 ], [ 0, %185 ], [ 1, %205 ], [ 1, %208 ], [ 2, %213 ], [ 2, %216 ], [ 3, %221 ], [ 3, %224 ], [ 4, %229 ], [ 4, %232 ]
  %storemerge44.lcssa79.ph = phi i32 [ 1, %194 ], [ 0, %185 ], [ 0, %205 ], [ 1, %208 ], [ 0, %213 ], [ 1, %216 ], [ 0, %221 ], [ 1, %224 ], [ 0, %229 ], [ 1, %232 ]
  br label %186

186:                                              ; preds = %.loopexit83, %197
  %storemerge3.lcssa80 = phi i32 [ %storemerge3.lcssa82, %197 ], [ %storemerge3.lcssa80.ph, %.loopexit83 ]
  %storemerge44.lcssa79 = phi i32 [ 2, %197 ], [ %storemerge44.lcssa79.ph, %.loopexit83 ]
  %187 = shl i32 %storemerge44.lcssa79, 3
  %188 = add i32 64, %187
  %189 = add nsw i32 %storemerge3.lcssa80, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], ptr @p, i64 %190
  store i32 1, ptr %191, align 4
  unreachable

192:                                              ; preds = %185
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %192
  br label %193

193:                                              ; preds = %.preheader24.1
  br label %194

194:                                              ; preds = %193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit83, label %195

195:                                              ; preds = %194
  br i1 false, label %.preheader24.2, label %202

.preheader24.2:                                   ; preds = %233, %225, %217, %209, %195
  %storemerge3.lcssa82 = phi i32 [ 0, %195 ], [ 1, %209 ], [ 2, %217 ], [ 3, %225 ], [ 4, %233 ]
  br label %196

196:                                              ; preds = %.preheader24.2
  br label %197

197:                                              ; preds = %196
  %198 = add nsw i32 %storemerge3.lcssa82, 16
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i8], ptr @p, i64 %199
  store i32 1, ptr %200, align 4
  br i1 false, label %186, label %201

201:                                              ; preds = %197
  unreachable

202:                                              ; preds = %195
  br label %.preheader25.1

.preheader25.1:                                   ; preds = %202
  br label %203

203:                                              ; preds = %.preheader25.1
  br label %.preheader24.184

.preheader24.184:                                 ; preds = %203
  br label %204

204:                                              ; preds = %.preheader24.184
  br label %205

205:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit83, label %206

206:                                              ; preds = %205
  br label %.preheader24.1.1

.preheader24.1.1:                                 ; preds = %206
  br label %207

207:                                              ; preds = %.preheader24.1.1
  br label %208

208:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit83, label %209

209:                                              ; preds = %208
  br i1 false, label %.preheader24.2, label %210

210:                                              ; preds = %209
  br label %.preheader25.2

.preheader25.2:                                   ; preds = %210
  br label %211

211:                                              ; preds = %.preheader25.2
  br label %.preheader24.285

.preheader24.285:                                 ; preds = %211
  br label %212

212:                                              ; preds = %.preheader24.285
  br label %213

213:                                              ; preds = %212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit83, label %214

214:                                              ; preds = %213
  br label %.preheader24.1.2

.preheader24.1.2:                                 ; preds = %214
  br label %215

215:                                              ; preds = %.preheader24.1.2
  br label %216

216:                                              ; preds = %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit83, label %217

217:                                              ; preds = %216
  br i1 false, label %.preheader24.2, label %218

218:                                              ; preds = %217
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %218
  br label %219

219:                                              ; preds = %.preheader25.3
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %219
  br label %220

220:                                              ; preds = %.preheader24.3
  br label %221

221:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit83, label %222

222:                                              ; preds = %221
  br label %.preheader24.1.3

.preheader24.1.3:                                 ; preds = %222
  br label %223

223:                                              ; preds = %.preheader24.1.3
  br label %224

224:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit83, label %225

225:                                              ; preds = %224
  br i1 false, label %.preheader24.2, label %226

226:                                              ; preds = %225
  br i1 false, label %.preheader25.4, label %235

.preheader25.4:                                   ; preds = %226
  br label %227

227:                                              ; preds = %.preheader25.4
  br label %.preheader24.4

.preheader24.4:                                   ; preds = %227
  br label %228

228:                                              ; preds = %.preheader24.4
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit83, label %230

230:                                              ; preds = %229
  br label %.preheader24.1.4

.preheader24.1.4:                                 ; preds = %230
  br label %231

231:                                              ; preds = %.preheader24.1.4
  br label %232

232:                                              ; preds = %231
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit83, label %233

233:                                              ; preds = %232
  br i1 false, label %.preheader24.2, label %234

234:                                              ; preds = %233
  unreachable

235:                                              ; preds = %226
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %236

236:                                              ; preds = %235
  br label %.preheader23

.preheader23:                                     ; preds = %236
  br label %237

237:                                              ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %237
  br label %238

238:                                              ; preds = %.preheader22
  br label %239

239:                                              ; preds = %238
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %240

240:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %241

241:                                              ; preds = %240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %242

242:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit90, label %249

.loopexit90:                                      ; preds = %282, %274, %242
  %storemerge4.lcssa87.ph = phi i32 [ 0, %242 ], [ 1, %274 ], [ 2, %282 ]
  %storemerge42.lcssa86.ph = phi i32 [ 0, %242 ], [ 0, %274 ], [ 0, %282 ]
  br label %243

243:                                              ; preds = %.loopexit90, %263
  %storemerge4.lcssa87 = phi i32 [ %storemerge4.lcssa88, %263 ], [ %storemerge4.lcssa87.ph, %.loopexit90 ]
  %storemerge42.lcssa86 = phi i32 [ 1, %263 ], [ %storemerge42.lcssa86.ph, %.loopexit90 ]
  %244 = shl i32 %storemerge42.lcssa86, 3
  %245 = add i32 256, %244
  %246 = add nsw i32 %storemerge4.lcssa87, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %247
  store i32 1, ptr %248, align 4
  unreachable

249:                                              ; preds = %242
  br i1 false, label %.preheader22.1, label %268

.preheader22.1:                                   ; preds = %283, %275, %249
  %storemerge4.lcssa88 = phi i32 [ 0, %249 ], [ 1, %275 ], [ 2, %283 ]
  br label %250

250:                                              ; preds = %.preheader22.1
  br label %251

251:                                              ; preds = %250
  %252 = add nsw i32 %storemerge4.lcssa88, 8
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %253
  store i32 1, ptr %254, align 4
  br label %255

255:                                              ; preds = %251
  %256 = add nsw i32 %storemerge4.lcssa88, 72
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %257
  store i32 1, ptr %258, align 4
  br label %259

259:                                              ; preds = %255
  %260 = add nsw i32 %storemerge4.lcssa88, 136
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %261
  store i32 1, ptr %262, align 4
  br label %263

263:                                              ; preds = %259
  %264 = add nsw i32 %storemerge4.lcssa88, 200
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %265
  store i32 1, ptr %266, align 4
  br i1 false, label %243, label %267

267:                                              ; preds = %263
  unreachable

268:                                              ; preds = %249
  br label %.preheader23.1

.preheader23.1:                                   ; preds = %268
  br label %269

269:                                              ; preds = %.preheader23.1
  br label %.preheader22.191

.preheader22.191:                                 ; preds = %269
  br label %270

270:                                              ; preds = %.preheader22.191
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %273

273:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %274

274:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit90, label %275

275:                                              ; preds = %274
  br i1 false, label %.preheader22.1, label %276

276:                                              ; preds = %275
  br i1 false, label %.preheader23.2, label %285

.preheader23.2:                                   ; preds = %276
  br label %277

277:                                              ; preds = %.preheader23.2
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %277
  br label %278

278:                                              ; preds = %.preheader22.2
  br label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %280

280:                                              ; preds = %279
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %281

281:                                              ; preds = %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %282

282:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit90, label %283

283:                                              ; preds = %282
  br i1 false, label %.preheader22.1, label %284

284:                                              ; preds = %283
  unreachable

285:                                              ; preds = %276
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %286

286:                                              ; preds = %285
  br label %.preheader21

.preheader21:                                     ; preds = %286
  br label %287

287:                                              ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %287
  br label %288

288:                                              ; preds = %.preheader20
  br label %289

289:                                              ; preds = %288
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %290

290:                                              ; preds = %289
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit96, label %297

.loopexit96:                                      ; preds = %336, %332, %328, %324, %290, %300, %304, %308
  %storemerge5.lcssa93.ph = phi i32 [ 0, %308 ], [ 0, %304 ], [ 0, %300 ], [ 0, %290 ], [ 1, %324 ], [ 1, %328 ], [ 1, %332 ], [ 1, %336 ]
  %storemerge40.lcssa92.ph = phi i32 [ 3, %308 ], [ 2, %304 ], [ 1, %300 ], [ 0, %290 ], [ 0, %324 ], [ 1, %328 ], [ 2, %332 ], [ 3, %336 ]
  br label %291

291:                                              ; preds = %.loopexit96, %315
  %storemerge5.lcssa93 = phi i32 [ %storemerge5.lcssa95, %315 ], [ %storemerge5.lcssa93.ph, %.loopexit96 ]
  %storemerge40.lcssa92 = phi i32 [ 4, %315 ], [ %storemerge40.lcssa92.ph, %.loopexit96 ]
  %292 = shl i32 %storemerge40.lcssa92, 3
  %293 = add i32 128, %292
  %294 = add nsw i32 %storemerge5.lcssa93, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %295
  store i32 1, ptr %296, align 4
  unreachable

297:                                              ; preds = %290
  br label %.preheader20.1

.preheader20.1:                                   ; preds = %297
  br label %298

298:                                              ; preds = %.preheader20.1
  br label %299

299:                                              ; preds = %298
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %300

300:                                              ; preds = %299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit96, label %301

301:                                              ; preds = %300
  br label %.preheader20.2

.preheader20.2:                                   ; preds = %301
  br label %302

302:                                              ; preds = %.preheader20.2
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %304

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit96, label %305

305:                                              ; preds = %304
  br label %.preheader20.3

.preheader20.3:                                   ; preds = %305
  br label %306

306:                                              ; preds = %.preheader20.3
  br label %307

307:                                              ; preds = %306
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %308

308:                                              ; preds = %307
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit96, label %309

309:                                              ; preds = %308
  br i1 false, label %.preheader20.4, label %320

.preheader20.4:                                   ; preds = %337, %309
  %storemerge5.lcssa95 = phi i32 [ 0, %309 ], [ 1, %337 ]
  br label %310

310:                                              ; preds = %.preheader20.4
  br label %311

311:                                              ; preds = %310
  %312 = add nsw i32 %storemerge5.lcssa95, 32
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %313
  store i32 1, ptr %314, align 4
  br label %315

315:                                              ; preds = %311
  %316 = add nsw i32 %storemerge5.lcssa95, 96
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %317
  store i32 1, ptr %318, align 4
  br i1 false, label %291, label %319

319:                                              ; preds = %315
  unreachable

320:                                              ; preds = %309
  br i1 false, label %.preheader21.1, label %339

.preheader21.1:                                   ; preds = %320
  br label %321

321:                                              ; preds = %.preheader21.1
  br label %.preheader20.197

.preheader20.197:                                 ; preds = %321
  br label %322

322:                                              ; preds = %.preheader20.197
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %324

324:                                              ; preds = %323
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br i1 false, label %.loopexit96, label %325

325:                                              ; preds = %324
  br label %.preheader20.1.1

.preheader20.1.1:                                 ; preds = %325
  br label %326

326:                                              ; preds = %.preheader20.1.1
  br label %327

327:                                              ; preds = %326
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %328

328:                                              ; preds = %327
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br i1 false, label %.loopexit96, label %329

329:                                              ; preds = %328
  br label %.preheader20.2.1

.preheader20.2.1:                                 ; preds = %329
  br label %330

330:                                              ; preds = %.preheader20.2.1
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %332

332:                                              ; preds = %331
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br i1 false, label %.loopexit96, label %333

333:                                              ; preds = %332
  br label %.preheader20.3.1

.preheader20.3.1:                                 ; preds = %333
  br label %334

334:                                              ; preds = %.preheader20.3.1
  br label %335

335:                                              ; preds = %334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %336

336:                                              ; preds = %335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br i1 false, label %.loopexit96, label %337

337:                                              ; preds = %336
  br i1 false, label %.preheader20.4, label %338

338:                                              ; preds = %337
  unreachable

339:                                              ; preds = %320
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %340

340:                                              ; preds = %339
  br label %.preheader19

.preheader19:                                     ; preds = %340
  br label %341

341:                                              ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %341
  br label %342

342:                                              ; preds = %.preheader18
  br label %343

343:                                              ; preds = %342
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit102, label %350

.loopexit102:                                     ; preds = %392, %389, %386, %383, %378, %375, %372, %369, %343, %352, %355, %358
  %storemerge6.lcssa99.ph = phi i32 [ 0, %358 ], [ 0, %355 ], [ 0, %352 ], [ 0, %343 ], [ 1, %369 ], [ 1, %372 ], [ 1, %375 ], [ 1, %378 ], [ 2, %383 ], [ 2, %386 ], [ 2, %389 ], [ 2, %392 ]
  %storemerge38.lcssa98.ph = phi i32 [ 3, %358 ], [ 2, %355 ], [ 1, %352 ], [ 0, %343 ], [ 0, %369 ], [ 1, %372 ], [ 2, %375 ], [ 3, %378 ], [ 0, %383 ], [ 1, %386 ], [ 2, %389 ], [ 3, %392 ]
  br label %344

344:                                              ; preds = %.loopexit102, %361
  %storemerge6.lcssa99 = phi i32 [ %storemerge6.lcssa101, %361 ], [ %storemerge6.lcssa99.ph, %.loopexit102 ]
  %storemerge38.lcssa98 = phi i32 [ 4, %361 ], [ %storemerge38.lcssa98.ph, %.loopexit102 ]
  %345 = shl i32 %storemerge38.lcssa98, 3
  %346 = add i32 64, %345
  %347 = add nsw i32 %storemerge6.lcssa99, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %348
  store i32 1, ptr %349, align 4
  unreachable

350:                                              ; preds = %343
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %350
  br label %351

351:                                              ; preds = %.preheader18.1
  br label %352

352:                                              ; preds = %351
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit102, label %353

353:                                              ; preds = %352
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %353
  br label %354

354:                                              ; preds = %.preheader18.2
  br label %355

355:                                              ; preds = %354
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit102, label %356

356:                                              ; preds = %355
  br label %.preheader18.3

.preheader18.3:                                   ; preds = %356
  br label %357

357:                                              ; preds = %.preheader18.3
  br label %358

358:                                              ; preds = %357
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit102, label %359

359:                                              ; preds = %358
  br i1 false, label %.preheader18.4, label %366

.preheader18.4:                                   ; preds = %393, %379, %359
  %storemerge6.lcssa101 = phi i32 [ 0, %359 ], [ 1, %379 ], [ 2, %393 ]
  br label %360

360:                                              ; preds = %.preheader18.4
  br label %361

361:                                              ; preds = %360
  %362 = add nsw i32 %storemerge6.lcssa101, 32
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %363
  store i32 1, ptr %364, align 4
  br i1 false, label %344, label %365

365:                                              ; preds = %361
  unreachable

366:                                              ; preds = %359
  br label %.preheader19.1

.preheader19.1:                                   ; preds = %366
  br label %367

367:                                              ; preds = %.preheader19.1
  br label %.preheader18.1103

.preheader18.1103:                                ; preds = %367
  br label %368

368:                                              ; preds = %.preheader18.1103
  br label %369

369:                                              ; preds = %368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit102, label %370

370:                                              ; preds = %369
  br label %.preheader18.1.1

.preheader18.1.1:                                 ; preds = %370
  br label %371

371:                                              ; preds = %.preheader18.1.1
  br label %372

372:                                              ; preds = %371
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit102, label %373

373:                                              ; preds = %372
  br label %.preheader18.2.1

.preheader18.2.1:                                 ; preds = %373
  br label %374

374:                                              ; preds = %.preheader18.2.1
  br label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit102, label %376

376:                                              ; preds = %375
  br label %.preheader18.3.1

.preheader18.3.1:                                 ; preds = %376
  br label %377

377:                                              ; preds = %.preheader18.3.1
  br label %378

378:                                              ; preds = %377
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit102, label %379

379:                                              ; preds = %378
  br i1 false, label %.preheader18.4, label %380

380:                                              ; preds = %379
  br i1 false, label %.preheader19.2, label %395

.preheader19.2:                                   ; preds = %380
  br label %381

381:                                              ; preds = %.preheader19.2
  br label %.preheader18.2104

.preheader18.2104:                                ; preds = %381
  br label %382

382:                                              ; preds = %.preheader18.2104
  br label %383

383:                                              ; preds = %382
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit102, label %384

384:                                              ; preds = %383
  br label %.preheader18.1.2

.preheader18.1.2:                                 ; preds = %384
  br label %385

385:                                              ; preds = %.preheader18.1.2
  br label %386

386:                                              ; preds = %385
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit102, label %387

387:                                              ; preds = %386
  br label %.preheader18.2.2

.preheader18.2.2:                                 ; preds = %387
  br label %388

388:                                              ; preds = %.preheader18.2.2
  br label %389

389:                                              ; preds = %388
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit102, label %390

390:                                              ; preds = %389
  br label %.preheader18.3.2

.preheader18.3.2:                                 ; preds = %390
  br label %391

391:                                              ; preds = %.preheader18.3.2
  br label %392

392:                                              ; preds = %391
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit102, label %393

393:                                              ; preds = %392
  br i1 false, label %.preheader18.4, label %394

394:                                              ; preds = %393
  unreachable

395:                                              ; preds = %380
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %396

396:                                              ; preds = %395
  br label %.preheader17

.preheader17:                                     ; preds = %396
  br label %397

397:                                              ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %397
  br label %398

398:                                              ; preds = %.preheader16
  br label %399

399:                                              ; preds = %398
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %400

400:                                              ; preds = %399
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit109, label %407

.loopexit109:                                     ; preds = %440, %434, %428, %422, %400
  %storemerge7.lcssa106.ph = phi i32 [ 0, %400 ], [ 1, %422 ], [ 2, %428 ], [ 3, %434 ], [ 4, %440 ]
  %storemerge36.lcssa105.ph = phi i32 [ 0, %400 ], [ 0, %422 ], [ 0, %428 ], [ 0, %434 ], [ 0, %440 ]
  br label %401

401:                                              ; preds = %.loopexit109, %413
  %storemerge7.lcssa106 = phi i32 [ %storemerge7.lcssa107, %413 ], [ %storemerge7.lcssa106.ph, %.loopexit109 ]
  %storemerge36.lcssa105 = phi i32 [ 1, %413 ], [ %storemerge36.lcssa105.ph, %.loopexit109 ]
  %402 = shl i32 %storemerge36.lcssa105, 3
  %403 = add i32 128, %402
  %404 = add nsw i32 %storemerge7.lcssa106, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %405
  store i32 1, ptr %406, align 4
  unreachable

407:                                              ; preds = %400
  br i1 false, label %.preheader16.1, label %418

.preheader16.1:                                   ; preds = %441, %435, %429, %423, %407
  %storemerge7.lcssa107 = phi i32 [ 0, %407 ], [ 1, %423 ], [ 2, %429 ], [ 3, %435 ], [ 4, %441 ]
  br label %408

408:                                              ; preds = %.preheader16.1
  br label %409

409:                                              ; preds = %408
  %410 = add nsw i32 %storemerge7.lcssa107, 8
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %411
  store i32 1, ptr %412, align 4
  br label %413

413:                                              ; preds = %409
  %414 = add nsw i32 %storemerge7.lcssa107, 72
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %415
  store i32 1, ptr %416, align 4
  br i1 false, label %401, label %417

417:                                              ; preds = %413
  unreachable

418:                                              ; preds = %407
  br label %.preheader17.1

.preheader17.1:                                   ; preds = %418
  br label %419

419:                                              ; preds = %.preheader17.1
  br label %.preheader16.1110

.preheader16.1110:                                ; preds = %419
  br label %420

420:                                              ; preds = %.preheader16.1110
  br label %421

421:                                              ; preds = %420
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %422

422:                                              ; preds = %421
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit109, label %423

423:                                              ; preds = %422
  br i1 false, label %.preheader16.1, label %424

424:                                              ; preds = %423
  br label %.preheader17.2

.preheader17.2:                                   ; preds = %424
  br label %425

425:                                              ; preds = %.preheader17.2
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %425
  br label %426

426:                                              ; preds = %.preheader16.2
  br label %427

427:                                              ; preds = %426
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %428

428:                                              ; preds = %427
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit109, label %429

429:                                              ; preds = %428
  br i1 false, label %.preheader16.1, label %430

430:                                              ; preds = %429
  br label %.preheader17.3

.preheader17.3:                                   ; preds = %430
  br label %431

431:                                              ; preds = %.preheader17.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %431
  br label %432

432:                                              ; preds = %.preheader16.3
  br label %433

433:                                              ; preds = %432
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %434

434:                                              ; preds = %433
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit109, label %435

435:                                              ; preds = %434
  br i1 false, label %.preheader16.1, label %436

436:                                              ; preds = %435
  br i1 false, label %.preheader17.4, label %443

.preheader17.4:                                   ; preds = %436
  br label %437

437:                                              ; preds = %.preheader17.4
  br label %.preheader16.4

.preheader16.4:                                   ; preds = %437
  br label %438

438:                                              ; preds = %.preheader16.4
  br label %439

439:                                              ; preds = %438
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %440

440:                                              ; preds = %439
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit109, label %441

441:                                              ; preds = %440
  br i1 false, label %.preheader16.1, label %442

442:                                              ; preds = %441
  unreachable

443:                                              ; preds = %436
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %444

444:                                              ; preds = %443
  br label %.preheader15

.preheader15:                                     ; preds = %444
  br label %445

445:                                              ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %445
  br label %446

446:                                              ; preds = %.preheader14
  br label %447

447:                                              ; preds = %446
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %448

448:                                              ; preds = %447
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %449

449:                                              ; preds = %448
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %450

450:                                              ; preds = %449
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit115, label %457

.loopexit115:                                     ; preds = %494, %488, %450, %462
  %storemerge8.lcssa112.ph = phi i32 [ 0, %462 ], [ 0, %450 ], [ 1, %488 ], [ 1, %494 ]
  %storemerge34.lcssa111.ph = phi i32 [ 1, %462 ], [ 0, %450 ], [ 0, %488 ], [ 1, %494 ]
  br label %451

451:                                              ; preds = %.loopexit115, %477
  %storemerge8.lcssa112 = phi i32 [ %storemerge8.lcssa114, %477 ], [ %storemerge8.lcssa112.ph, %.loopexit115 ]
  %storemerge34.lcssa111 = phi i32 [ 2, %477 ], [ %storemerge34.lcssa111.ph, %.loopexit115 ]
  %452 = shl i32 %storemerge34.lcssa111, 3
  %453 = add i32 256, %452
  %454 = add nsw i32 %storemerge8.lcssa112, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %455
  store i32 1, ptr %456, align 4
  unreachable

457:                                              ; preds = %450
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %457
  br label %458

458:                                              ; preds = %.preheader14.1
  br label %459

459:                                              ; preds = %458
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %460

460:                                              ; preds = %459
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %461

461:                                              ; preds = %460
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %462

462:                                              ; preds = %461
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit115, label %463

463:                                              ; preds = %462
  br i1 false, label %.preheader14.2, label %482

.preheader14.2:                                   ; preds = %495, %463
  %storemerge8.lcssa114 = phi i32 [ 0, %463 ], [ 1, %495 ]
  br label %464

464:                                              ; preds = %.preheader14.2
  br label %465

465:                                              ; preds = %464
  %466 = add nsw i32 %storemerge8.lcssa114, 16
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %467
  store i32 1, ptr %468, align 4
  br label %469

469:                                              ; preds = %465
  %470 = add nsw i32 %storemerge8.lcssa114, 80
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %471
  store i32 1, ptr %472, align 4
  br label %473

473:                                              ; preds = %469
  %474 = add nsw i32 %storemerge8.lcssa114, 144
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %475
  store i32 1, ptr %476, align 4
  br label %477

477:                                              ; preds = %473
  %478 = add nsw i32 %storemerge8.lcssa114, 208
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %479
  store i32 1, ptr %480, align 4
  br i1 false, label %451, label %481

481:                                              ; preds = %477
  unreachable

482:                                              ; preds = %463
  br i1 false, label %.preheader15.1, label %497

.preheader15.1:                                   ; preds = %482
  br label %483

483:                                              ; preds = %.preheader15.1
  br label %.preheader14.1116

.preheader14.1116:                                ; preds = %483
  br label %484

484:                                              ; preds = %.preheader14.1116
  br label %485

485:                                              ; preds = %484
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %486

486:                                              ; preds = %485
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %487

487:                                              ; preds = %486
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %488

488:                                              ; preds = %487
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br i1 false, label %.loopexit115, label %489

489:                                              ; preds = %488
  br label %.preheader14.1.1

.preheader14.1.1:                                 ; preds = %489
  br label %490

490:                                              ; preds = %.preheader14.1.1
  br label %491

491:                                              ; preds = %490
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %492

492:                                              ; preds = %491
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %493

493:                                              ; preds = %492
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %494

494:                                              ; preds = %493
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br i1 false, label %.loopexit115, label %495

495:                                              ; preds = %494
  br i1 false, label %.preheader14.2, label %496

496:                                              ; preds = %495
  unreachable

497:                                              ; preds = %482
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %498

498:                                              ; preds = %497
  br label %.preheader13

.preheader13:                                     ; preds = %498
  br label %499

499:                                              ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %499
  br label %500

500:                                              ; preds = %.preheader12
  br label %501

501:                                              ; preds = %500
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit121, label %508

.loopexit121:                                     ; preds = %528, %523, %518, %501
  %storemerge9.lcssa118.ph = phi i32 [ 0, %501 ], [ 1, %518 ], [ 2, %523 ], [ 3, %528 ]
  %storemerge32.lcssa117.ph = phi i32 [ 0, %501 ], [ 0, %518 ], [ 0, %523 ], [ 0, %528 ]
  br label %502

502:                                              ; preds = %.loopexit121, %510
  %storemerge9.lcssa118 = phi i32 [ %storemerge9.lcssa119, %510 ], [ %storemerge9.lcssa118.ph, %.loopexit121 ]
  %storemerge32.lcssa117 = phi i32 [ 1, %510 ], [ %storemerge32.lcssa117.ph, %.loopexit121 ]
  %503 = shl i32 %storemerge32.lcssa117, 3
  %504 = add i32 64, %503
  %505 = add nsw i32 %storemerge9.lcssa118, %504
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %506
  store i32 1, ptr %507, align 4
  unreachable

508:                                              ; preds = %501
  br i1 false, label %.preheader12.1, label %515

.preheader12.1:                                   ; preds = %529, %524, %519, %508
  %storemerge9.lcssa119 = phi i32 [ 0, %508 ], [ 1, %519 ], [ 2, %524 ], [ 3, %529 ]
  br label %509

509:                                              ; preds = %.preheader12.1
  br label %510

510:                                              ; preds = %509
  %511 = add nsw i32 %storemerge9.lcssa119, 8
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %512
  store i32 1, ptr %513, align 4
  br i1 false, label %502, label %514

514:                                              ; preds = %510
  unreachable

515:                                              ; preds = %508
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %515
  br label %516

516:                                              ; preds = %.preheader13.1
  br label %.preheader12.1122

.preheader12.1122:                                ; preds = %516
  br label %517

517:                                              ; preds = %.preheader12.1122
  br label %518

518:                                              ; preds = %517
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit121, label %519

519:                                              ; preds = %518
  br i1 false, label %.preheader12.1, label %520

520:                                              ; preds = %519
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %520
  br label %521

521:                                              ; preds = %.preheader13.2
  br label %.preheader12.2

.preheader12.2:                                   ; preds = %521
  br label %522

522:                                              ; preds = %.preheader12.2
  br label %523

523:                                              ; preds = %522
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit121, label %524

524:                                              ; preds = %523
  br i1 false, label %.preheader12.1, label %525

525:                                              ; preds = %524
  br i1 false, label %.preheader13.3, label %531

.preheader13.3:                                   ; preds = %525
  br label %526

526:                                              ; preds = %.preheader13.3
  br label %.preheader12.3

.preheader12.3:                                   ; preds = %526
  br label %527

527:                                              ; preds = %.preheader12.3
  br label %528

528:                                              ; preds = %527
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit121, label %529

529:                                              ; preds = %528
  br i1 false, label %.preheader12.1, label %530

530:                                              ; preds = %529
  unreachable

531:                                              ; preds = %525
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %532

532:                                              ; preds = %531
  br label %.preheader11

.preheader11:                                     ; preds = %532
  br label %533

533:                                              ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %533
  br label %534

534:                                              ; preds = %.preheader10
  br label %535

535:                                              ; preds = %534
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit127, label %542

.loopexit127:                                     ; preds = %564, %561, %558, %535, %544, %547
  %storemerge10.lcssa124.ph = phi i32 [ 0, %547 ], [ 0, %544 ], [ 0, %535 ], [ 1, %558 ], [ 1, %561 ], [ 1, %564 ]
  %storemerge30.lcssa123.ph = phi i32 [ 2, %547 ], [ 1, %544 ], [ 0, %535 ], [ 0, %558 ], [ 1, %561 ], [ 2, %564 ]
  br label %536

536:                                              ; preds = %.loopexit127, %550
  %storemerge10.lcssa124 = phi i32 [ %storemerge10.lcssa126, %550 ], [ %storemerge10.lcssa124.ph, %.loopexit127 ]
  %storemerge30.lcssa123 = phi i32 [ 3, %550 ], [ %storemerge30.lcssa123.ph, %.loopexit127 ]
  %537 = shl i32 %storemerge30.lcssa123, 3
  %538 = add i32 64, %537
  %539 = add nsw i32 %storemerge10.lcssa124, %538
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %540
  store i32 1, ptr %541, align 4
  unreachable

542:                                              ; preds = %535
  br label %.preheader10.1

.preheader10.1:                                   ; preds = %542
  br label %543

543:                                              ; preds = %.preheader10.1
  br label %544

544:                                              ; preds = %543
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit127, label %545

545:                                              ; preds = %544
  br label %.preheader10.2

.preheader10.2:                                   ; preds = %545
  br label %546

546:                                              ; preds = %.preheader10.2
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit127, label %548

548:                                              ; preds = %547
  br i1 false, label %.preheader10.3, label %555

.preheader10.3:                                   ; preds = %565, %548
  %storemerge10.lcssa126 = phi i32 [ 0, %548 ], [ 1, %565 ]
  br label %549

549:                                              ; preds = %.preheader10.3
  br label %550

550:                                              ; preds = %549
  %551 = add nsw i32 %storemerge10.lcssa126, 24
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %552
  store i32 1, ptr %553, align 4
  br i1 false, label %536, label %554

554:                                              ; preds = %550
  unreachable

555:                                              ; preds = %548
  br i1 false, label %.preheader11.1, label %567

.preheader11.1:                                   ; preds = %555
  br label %556

556:                                              ; preds = %.preheader11.1
  br label %.preheader10.1128

.preheader10.1128:                                ; preds = %556
  br label %557

557:                                              ; preds = %.preheader10.1128
  br label %558

558:                                              ; preds = %557
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br i1 false, label %.loopexit127, label %559

559:                                              ; preds = %558
  br label %.preheader10.1.1

.preheader10.1.1:                                 ; preds = %559
  br label %560

560:                                              ; preds = %.preheader10.1.1
  br label %561

561:                                              ; preds = %560
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br i1 false, label %.loopexit127, label %562

562:                                              ; preds = %561
  br label %.preheader10.2.1

.preheader10.2.1:                                 ; preds = %562
  br label %563

563:                                              ; preds = %.preheader10.2.1
  br label %564

564:                                              ; preds = %563
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br i1 false, label %.loopexit127, label %565

565:                                              ; preds = %564
  br i1 false, label %.preheader10.3, label %566

566:                                              ; preds = %565
  unreachable

567:                                              ; preds = %555
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %568

568:                                              ; preds = %567
  br label %.preheader9

.preheader9:                                      ; preds = %568
  br label %569

569:                                              ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %569
  br label %570

570:                                              ; preds = %.preheader8
  br label %571

571:                                              ; preds = %570
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %572

572:                                              ; preds = %571
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %573

573:                                              ; preds = %572
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit133, label %580

.loopexit133:                                     ; preds = %600, %573
  %storemerge11.lcssa130.ph = phi i32 [ 0, %573 ], [ 1, %600 ]
  %storemerge28.lcssa129.ph = phi i32 [ 0, %573 ], [ 0, %600 ]
  br label %574

574:                                              ; preds = %.loopexit133, %590
  %storemerge11.lcssa130 = phi i32 [ %storemerge11.lcssa131, %590 ], [ %storemerge11.lcssa130.ph, %.loopexit133 ]
  %storemerge28.lcssa129 = phi i32 [ 1, %590 ], [ %storemerge28.lcssa129.ph, %.loopexit133 ]
  %575 = shl i32 %storemerge28.lcssa129, 3
  %576 = add i32 192, %575
  %577 = add nsw i32 %storemerge11.lcssa130, %576
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %578
  store i32 1, ptr %579, align 4
  unreachable

580:                                              ; preds = %573
  br i1 false, label %.preheader8.1, label %595

.preheader8.1:                                    ; preds = %601, %580
  %storemerge11.lcssa131 = phi i32 [ 0, %580 ], [ 1, %601 ]
  br label %581

581:                                              ; preds = %.preheader8.1
  br label %582

582:                                              ; preds = %581
  %583 = add nsw i32 %storemerge11.lcssa131, 8
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %584
  store i32 1, ptr %585, align 4
  br label %586

586:                                              ; preds = %582
  %587 = add nsw i32 %storemerge11.lcssa131, 72
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %588
  store i32 1, ptr %589, align 4
  br label %590

590:                                              ; preds = %586
  %591 = add nsw i32 %storemerge11.lcssa131, 136
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %592
  store i32 1, ptr %593, align 4
  br i1 false, label %574, label %594

594:                                              ; preds = %590
  unreachable

595:                                              ; preds = %580
  br i1 false, label %.preheader9.1, label %603

.preheader9.1:                                    ; preds = %595
  br label %596

596:                                              ; preds = %.preheader9.1
  br label %.preheader8.1134

.preheader8.1134:                                 ; preds = %596
  br label %597

597:                                              ; preds = %.preheader8.1134
  br label %598

598:                                              ; preds = %597
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %599

599:                                              ; preds = %598
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %600

600:                                              ; preds = %599
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br i1 false, label %.loopexit133, label %601

601:                                              ; preds = %600
  br i1 false, label %.preheader8.1, label %602

602:                                              ; preds = %601
  unreachable

603:                                              ; preds = %595
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %604

604:                                              ; preds = %603
  br label %.preheader7

.preheader7:                                      ; preds = %604
  br label %605

605:                                              ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %605
  br label %606

606:                                              ; preds = %.preheader6
  br label %607

607:                                              ; preds = %606
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit139, label %614

.loopexit139:                                     ; preds = %638, %635, %630, %627, %607, %616
  %storemerge12.lcssa136.ph = phi i32 [ 0, %616 ], [ 0, %607 ], [ 1, %627 ], [ 1, %630 ], [ 2, %635 ], [ 2, %638 ]
  %storemerge26.lcssa135.ph = phi i32 [ 1, %616 ], [ 0, %607 ], [ 0, %627 ], [ 1, %630 ], [ 0, %635 ], [ 1, %638 ]
  br label %608

608:                                              ; preds = %.loopexit139, %619
  %storemerge12.lcssa136 = phi i32 [ %storemerge12.lcssa138, %619 ], [ %storemerge12.lcssa136.ph, %.loopexit139 ]
  %storemerge26.lcssa135 = phi i32 [ 2, %619 ], [ %storemerge26.lcssa135.ph, %.loopexit139 ]
  %609 = shl i32 %storemerge26.lcssa135, 3
  %610 = add i32 64, %609
  %611 = add nsw i32 %storemerge12.lcssa136, %610
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %612
  store i32 1, ptr %613, align 4
  unreachable

614:                                              ; preds = %607
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %614
  br label %615

615:                                              ; preds = %.preheader6.1
  br label %616

616:                                              ; preds = %615
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit139, label %617

617:                                              ; preds = %616
  br i1 false, label %.preheader6.2, label %624

.preheader6.2:                                    ; preds = %639, %631, %617
  %storemerge12.lcssa138 = phi i32 [ 0, %617 ], [ 1, %631 ], [ 2, %639 ]
  br label %618

618:                                              ; preds = %.preheader6.2
  br label %619

619:                                              ; preds = %618
  %620 = add nsw i32 %storemerge12.lcssa138, 16
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %621
  store i32 1, ptr %622, align 4
  br i1 false, label %608, label %623

623:                                              ; preds = %619
  unreachable

624:                                              ; preds = %617
  br label %.preheader7.1

.preheader7.1:                                    ; preds = %624
  br label %625

625:                                              ; preds = %.preheader7.1
  br label %.preheader6.1140

.preheader6.1140:                                 ; preds = %625
  br label %626

626:                                              ; preds = %.preheader6.1140
  br label %627

627:                                              ; preds = %626
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit139, label %628

628:                                              ; preds = %627
  br label %.preheader6.1.1

.preheader6.1.1:                                  ; preds = %628
  br label %629

629:                                              ; preds = %.preheader6.1.1
  br label %630

630:                                              ; preds = %629
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit139, label %631

631:                                              ; preds = %630
  br i1 false, label %.preheader6.2, label %632

632:                                              ; preds = %631
  br i1 false, label %.preheader7.2, label %641

.preheader7.2:                                    ; preds = %632
  br label %633

633:                                              ; preds = %.preheader7.2
  br label %.preheader6.2141

.preheader6.2141:                                 ; preds = %633
  br label %634

634:                                              ; preds = %.preheader6.2141
  br label %635

635:                                              ; preds = %634
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit139, label %636

636:                                              ; preds = %635
  br label %.preheader6.1.2

.preheader6.1.2:                                  ; preds = %636
  br label %637

637:                                              ; preds = %.preheader6.1.2
  br label %638

638:                                              ; preds = %637
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit139, label %639

639:                                              ; preds = %638
  br i1 false, label %.preheader6.2, label %640

640:                                              ; preds = %639
  unreachable

641:                                              ; preds = %632
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %642

642:                                              ; preds = %641
  br label %.preheader5

.preheader5:                                      ; preds = %642
  br label %643

643:                                              ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %643
  br label %644

644:                                              ; preds = %.preheader4
  br label %645

645:                                              ; preds = %644
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %646

646:                                              ; preds = %645
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit146, label %653

.loopexit146:                                     ; preds = %674, %668, %646
  %storemerge13.lcssa143.ph = phi i32 [ 0, %646 ], [ 1, %668 ], [ 2, %674 ]
  %storemerge24.lcssa142.ph = phi i32 [ 0, %646 ], [ 0, %668 ], [ 0, %674 ]
  br label %647

647:                                              ; preds = %.loopexit146, %659
  %storemerge13.lcssa143 = phi i32 [ %storemerge13.lcssa144, %659 ], [ %storemerge13.lcssa143.ph, %.loopexit146 ]
  %storemerge24.lcssa142 = phi i32 [ 1, %659 ], [ %storemerge24.lcssa142.ph, %.loopexit146 ]
  %648 = shl i32 %storemerge24.lcssa142, 3
  %649 = add i32 128, %648
  %650 = add nsw i32 %storemerge13.lcssa143, %649
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %651
  store i32 1, ptr %652, align 4
  unreachable

653:                                              ; preds = %646
  br i1 false, label %.preheader4.1, label %664

.preheader4.1:                                    ; preds = %675, %669, %653
  %storemerge13.lcssa144 = phi i32 [ 0, %653 ], [ 1, %669 ], [ 2, %675 ]
  br label %654

654:                                              ; preds = %.preheader4.1
  br label %655

655:                                              ; preds = %654
  %656 = add nsw i32 %storemerge13.lcssa144, 8
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %657
  store i32 1, ptr %658, align 4
  br label %659

659:                                              ; preds = %655
  %660 = add nsw i32 %storemerge13.lcssa144, 72
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %661
  store i32 1, ptr %662, align 4
  br i1 false, label %647, label %663

663:                                              ; preds = %659
  unreachable

664:                                              ; preds = %653
  br label %.preheader5.1

.preheader5.1:                                    ; preds = %664
  br label %665

665:                                              ; preds = %.preheader5.1
  br label %.preheader4.1147

.preheader4.1147:                                 ; preds = %665
  br label %666

666:                                              ; preds = %.preheader4.1147
  br label %667

667:                                              ; preds = %666
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %668

668:                                              ; preds = %667
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit146, label %669

669:                                              ; preds = %668
  br i1 false, label %.preheader4.1, label %670

670:                                              ; preds = %669
  br i1 false, label %.preheader5.2, label %677

.preheader5.2:                                    ; preds = %670
  br label %671

671:                                              ; preds = %.preheader5.2
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %671
  br label %672

672:                                              ; preds = %.preheader4.2
  br label %673

673:                                              ; preds = %672
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %674

674:                                              ; preds = %673
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit146, label %675

675:                                              ; preds = %674
  br i1 false, label %.preheader4.1, label %676

676:                                              ; preds = %675
  unreachable

677:                                              ; preds = %670
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %678

678:                                              ; preds = %677
  br label %.preheader3

.preheader3:                                      ; preds = %678
  br label %679

679:                                              ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %679
  br label %680

680:                                              ; preds = %.preheader2
  br label %681

681:                                              ; preds = %680
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %682

682:                                              ; preds = %681
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit152, label %689

.loopexit152:                                     ; preds = %712, %708, %682, %692
  %storemerge14.lcssa149.ph = phi i32 [ 0, %692 ], [ 0, %682 ], [ 1, %708 ], [ 1, %712 ]
  %storemerge22.lcssa148.ph = phi i32 [ 1, %692 ], [ 0, %682 ], [ 0, %708 ], [ 1, %712 ]
  br label %683

683:                                              ; preds = %.loopexit152, %699
  %storemerge14.lcssa149 = phi i32 [ %storemerge14.lcssa151, %699 ], [ %storemerge14.lcssa149.ph, %.loopexit152 ]
  %storemerge22.lcssa148 = phi i32 [ 2, %699 ], [ %storemerge22.lcssa148.ph, %.loopexit152 ]
  %684 = shl i32 %storemerge22.lcssa148, 3
  %685 = add i32 128, %684
  %686 = add nsw i32 %storemerge14.lcssa149, %685
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %687
  store i32 1, ptr %688, align 4
  unreachable

689:                                              ; preds = %682
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %689
  br label %690

690:                                              ; preds = %.preheader2.1
  br label %691

691:                                              ; preds = %690
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %692

692:                                              ; preds = %691
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit152, label %693

693:                                              ; preds = %692
  br i1 false, label %.preheader2.2, label %704

.preheader2.2:                                    ; preds = %713, %693
  %storemerge14.lcssa151 = phi i32 [ 0, %693 ], [ 1, %713 ]
  br label %694

694:                                              ; preds = %.preheader2.2
  br label %695

695:                                              ; preds = %694
  %696 = add nsw i32 %storemerge14.lcssa151, 16
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %697
  store i32 1, ptr %698, align 4
  br label %699

699:                                              ; preds = %695
  %700 = add nsw i32 %storemerge14.lcssa151, 80
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %701
  store i32 1, ptr %702, align 4
  br i1 false, label %683, label %703

703:                                              ; preds = %699
  unreachable

704:                                              ; preds = %693
  br i1 false, label %.preheader3.1, label %715

.preheader3.1:                                    ; preds = %704
  br label %705

705:                                              ; preds = %.preheader3.1
  br label %.preheader2.1153

.preheader2.1153:                                 ; preds = %705
  br label %706

706:                                              ; preds = %.preheader2.1153
  br label %707

707:                                              ; preds = %706
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br i1 false, label %.loopexit152, label %709

709:                                              ; preds = %708
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %709
  br label %710

710:                                              ; preds = %.preheader2.1.1
  br label %711

711:                                              ; preds = %710
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %712

712:                                              ; preds = %711
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br i1 false, label %.loopexit152, label %713

713:                                              ; preds = %712
  br i1 false, label %.preheader2.2, label %714

714:                                              ; preds = %713
  unreachable

715:                                              ; preds = %704
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %716

716:                                              ; preds = %715
  br label %.preheader1

.preheader1:                                      ; preds = %716
  br label %717

717:                                              ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %717
  br label %718

718:                                              ; preds = %.preheader
  br label %719

719:                                              ; preds = %718
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %720

720:                                              ; preds = %719
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit158, label %727

.loopexit158:                                     ; preds = %760, %756, %750, %746, %720, %730
  %storemerge15.lcssa155.ph = phi i32 [ 0, %730 ], [ 0, %720 ], [ 1, %746 ], [ 1, %750 ], [ 2, %756 ], [ 2, %760 ]
  %storemerge20.lcssa154.ph = phi i32 [ 1, %730 ], [ 0, %720 ], [ 0, %746 ], [ 1, %750 ], [ 0, %756 ], [ 1, %760 ]
  br label %721

721:                                              ; preds = %.loopexit158, %737
  %storemerge15.lcssa155 = phi i32 [ %storemerge15.lcssa157, %737 ], [ %storemerge15.lcssa155.ph, %.loopexit158 ]
  %storemerge20.lcssa154 = phi i32 [ 2, %737 ], [ %storemerge20.lcssa154.ph, %.loopexit158 ]
  %722 = shl i32 %storemerge20.lcssa154, 3
  %723 = add i32 128, %722
  %724 = add nsw i32 %storemerge15.lcssa155, %723
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %725
  store i32 1, ptr %726, align 4
  unreachable

727:                                              ; preds = %720
  br label %.preheader.1

.preheader.1:                                     ; preds = %727
  br label %728

728:                                              ; preds = %.preheader.1
  br label %729

729:                                              ; preds = %728
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %730

730:                                              ; preds = %729
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit158, label %731

731:                                              ; preds = %730
  br i1 false, label %.preheader.2, label %742

.preheader.2:                                     ; preds = %761, %751, %731
  %storemerge15.lcssa157 = phi i32 [ 0, %731 ], [ 1, %751 ], [ 2, %761 ]
  br label %732

732:                                              ; preds = %.preheader.2
  br label %733

733:                                              ; preds = %732
  %734 = add nsw i32 %storemerge15.lcssa157, 16
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %735
  store i32 1, ptr %736, align 4
  br label %737

737:                                              ; preds = %733
  %738 = add nsw i32 %storemerge15.lcssa157, 80
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %739
  store i32 1, ptr %740, align 4
  br i1 false, label %721, label %741

741:                                              ; preds = %737
  unreachable

742:                                              ; preds = %731
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %742
  br label %743

743:                                              ; preds = %.preheader1.1
  br label %.preheader.1159

.preheader.1159:                                  ; preds = %743
  br label %744

744:                                              ; preds = %.preheader.1159
  br label %745

745:                                              ; preds = %744
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %746

746:                                              ; preds = %745
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit158, label %747

747:                                              ; preds = %746
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %747
  br label %748

748:                                              ; preds = %.preheader.1.1
  br label %749

749:                                              ; preds = %748
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %750

750:                                              ; preds = %749
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit158, label %751

751:                                              ; preds = %750
  br i1 false, label %.preheader.2, label %752

752:                                              ; preds = %751
  br i1 false, label %.preheader1.2, label %763

.preheader1.2:                                    ; preds = %752
  br label %753

753:                                              ; preds = %.preheader1.2
  br label %.preheader.2160

.preheader.2160:                                  ; preds = %753
  br label %754

754:                                              ; preds = %.preheader.2160
  br label %755

755:                                              ; preds = %754
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %756

756:                                              ; preds = %755
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit158, label %757

757:                                              ; preds = %756
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %757
  br label %758

758:                                              ; preds = %.preheader.1.2
  br label %759

759:                                              ; preds = %758
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %760

760:                                              ; preds = %759
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit158, label %761

761:                                              ; preds = %760
  br i1 false, label %.preheader.2, label %762

762:                                              ; preds = %761
  unreachable

763:                                              ; preds = %752
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %764 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %764, 0
  br i1 %.not, label %767, label %765

765:                                              ; preds = %763
  %766 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %766, ptr @n, align 4
  br label %768

767:                                              ; preds = %763
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %768

768:                                              ; preds = %767, %765
  %769 = load i32, ptr @n, align 4
  %770 = call i32 @Trial(i32 noundef %769)
  %.not16 = icmp eq i32 %770, 0
  br i1 %.not16, label %771, label %772

771:                                              ; preds = %768
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %775

772:                                              ; preds = %768
  %773 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %773, 2005
  br i1 %.not18, label %775, label %774

774:                                              ; preds = %772
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %775

775:                                              ; preds = %774, %772, %771
  %776 = load i32, ptr @n, align 4
  %777 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %776) #4
  %778 = load i32, ptr @kount, align 4
  %779 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %778) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !17

5:                                                ; preds = %1
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
