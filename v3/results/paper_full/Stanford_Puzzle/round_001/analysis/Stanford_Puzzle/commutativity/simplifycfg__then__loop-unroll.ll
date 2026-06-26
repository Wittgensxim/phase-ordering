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

1:                                                ; preds = %12, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %12 ]
  br label %3

.preheader40:                                     ; preds = %7
  br label %16

3:                                                ; preds = %1
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %2, 1
  br label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nuw nsw i32 %2, 2
  %11 = icmp samesign ult i32 %10, 512
  br i1 %11, label %12, label %.preheader40

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  %15 = add nuw nsw i32 %2, 3
  br label %1, !llvm.loop !13

16:                                               ; preds = %.preheader40, %158
  %17 = phi i32 [ %159, %158 ], [ 1, %.preheader40 ]
  %18 = icmp samesign ult i32 %17, 6
  br i1 %18, label %.preheader39, label %.preheader37

.preheader39:                                     ; preds = %16
  br label %19

.preheader37:                                     ; preds = %16
  br label %160

19:                                               ; preds = %.preheader39
  br label %.preheader38

.preheader38:                                     ; preds = %19
  br label %20

20:                                               ; preds = %.preheader38
  br label %21

21:                                               ; preds = %20
  %22 = or disjoint i32 %17, 72
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %21
  %26 = or disjoint i32 %17, 136
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %25
  %30 = or disjoint i32 %17, 200
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %29
  %34 = or disjoint i32 %17, 264
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %35
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %33
  %38 = or disjoint i32 %17, 328
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %39
  store i32 0, ptr %40, align 4
  br i1 false, label %.loopexit45, label %47

.loopexit45:                                      ; preds = %37, %65, %87, %109, %131
  %.lcssa42.ph = phi i32 [ %17, %131 ], [ %17, %109 ], [ %17, %87 ], [ %17, %65 ], [ %17, %37 ]
  %.lcssa41.ph = phi i32 [ 5, %131 ], [ 4, %109 ], [ 3, %87 ], [ 2, %65 ], [ 1, %37 ]
  br label %41

41:                                               ; preds = %.loopexit45, %153
  %.lcssa42 = phi i32 [ %.lcssa44, %153 ], [ %.lcssa42.ph, %.loopexit45 ]
  %.lcssa41 = phi i32 [ 6, %153 ], [ %.lcssa41.ph, %.loopexit45 ]
  %42 = shl nuw nsw i32 %.lcssa41, 3
  %43 = or disjoint i32 384, %42
  %44 = or disjoint i32 %.lcssa42, %43
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  unreachable

47:                                               ; preds = %37
  br label %.preheader38.1

.preheader38.1:                                   ; preds = %47
  br label %48

48:                                               ; preds = %.preheader38.1
  br label %49

49:                                               ; preds = %48
  %50 = or disjoint i32 %17, 80
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %49
  %54 = or disjoint i32 %17, 144
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %53
  %58 = or disjoint i32 %17, 208
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %57
  %62 = or disjoint i32 %17, 272
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %61
  %66 = or disjoint i32 %17, 336
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br i1 false, label %.loopexit45, label %69

69:                                               ; preds = %65
  br label %.preheader38.2

.preheader38.2:                                   ; preds = %69
  br label %70

70:                                               ; preds = %.preheader38.2
  br label %71

71:                                               ; preds = %70
  %72 = or disjoint i32 %17, 88
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = or disjoint i32 %17, 152
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %75
  %80 = or disjoint i32 %17, 216
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %79
  %84 = or disjoint i32 %17, 280
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %83
  %88 = or disjoint i32 %17, 344
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %89
  store i32 0, ptr %90, align 4
  br i1 false, label %.loopexit45, label %91

91:                                               ; preds = %87
  br label %.preheader38.3

.preheader38.3:                                   ; preds = %91
  br label %92

92:                                               ; preds = %.preheader38.3
  br label %93

93:                                               ; preds = %92
  %94 = or disjoint i32 %17, 96
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  br label %97

97:                                               ; preds = %93
  %98 = or disjoint i32 %17, 160
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  br label %101

101:                                              ; preds = %97
  %102 = or disjoint i32 %17, 224
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %103
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %101
  %106 = or disjoint i32 %17, 288
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  br label %109

109:                                              ; preds = %105
  %110 = or disjoint i32 %17, 352
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %111
  store i32 0, ptr %112, align 4
  br i1 false, label %.loopexit45, label %113

113:                                              ; preds = %109
  br label %.preheader38.4

.preheader38.4:                                   ; preds = %113
  br label %114

114:                                              ; preds = %.preheader38.4
  br label %115

115:                                              ; preds = %114
  %116 = or disjoint i32 %17, 104
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %117
  store i32 0, ptr %118, align 4
  br label %119

119:                                              ; preds = %115
  %120 = or disjoint i32 %17, 168
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %121
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %119
  %124 = or disjoint i32 %17, 232
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %125
  store i32 0, ptr %126, align 4
  br label %127

127:                                              ; preds = %123
  %128 = or disjoint i32 %17, 296
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %129
  store i32 0, ptr %130, align 4
  br label %131

131:                                              ; preds = %127
  %132 = or disjoint i32 %17, 360
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %133
  store i32 0, ptr %134, align 4
  br i1 false, label %.loopexit45, label %135

135:                                              ; preds = %131
  br i1 false, label %.preheader38.5, label %158

.preheader38.5:                                   ; preds = %135
  %.lcssa44 = phi i32 [ %17, %135 ]
  br label %136

136:                                              ; preds = %.preheader38.5
  br label %137

137:                                              ; preds = %136
  %138 = or disjoint i32 %.lcssa44, 112
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %139
  store i32 0, ptr %140, align 4
  br label %141

141:                                              ; preds = %137
  %142 = or disjoint i32 %.lcssa44, 176
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %143
  store i32 0, ptr %144, align 4
  br label %145

145:                                              ; preds = %141
  %146 = or disjoint i32 %.lcssa44, 240
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %147
  store i32 0, ptr %148, align 4
  br label %149

149:                                              ; preds = %145
  %150 = or disjoint i32 %.lcssa44, 304
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %151
  store i32 0, ptr %152, align 4
  br label %153

153:                                              ; preds = %149
  %154 = or disjoint i32 %.lcssa44, 368
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %155
  store i32 0, ptr %156, align 4
  br i1 false, label %41, label %157

157:                                              ; preds = %153
  unreachable

158:                                              ; preds = %135
  %159 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !14

160:                                              ; preds = %.preheader37, %184
  %161 = phi i32 [ %185, %184 ], [ 0, %.preheader37 ]
  %162 = icmp samesign ult i32 %161, 13
  br i1 %162, label %.preheader36, label %.preheader35

.preheader36:                                     ; preds = %160
  %163 = zext nneg i32 %161 to i64
  %164 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %163
  br label %165

.preheader35:                                     ; preds = %160
  br label %186

165:                                              ; preds = %178, %.preheader36
  %166 = phi i32 [ 0, %.preheader36 ], [ %183, %178 ]
  br label %167

167:                                              ; preds = %165
  %168 = zext nneg i32 %161 to i64
  %169 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %168
  %170 = zext nneg i32 %166 to i64
  %171 = getelementptr inbounds nuw [4 x i8], ptr %169, i64 %170
  store i32 0, ptr %171, align 4
  %172 = add nuw nsw i32 %166, 1
  br label %173

173:                                              ; preds = %167
  %174 = zext nneg i32 %172 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr %164, i64 %174
  store i32 0, ptr %175, align 4
  %176 = add nuw nsw i32 %166, 2
  %177 = icmp samesign ult i32 %176, 512
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = zext nneg i32 %161 to i64
  %180 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %179
  %181 = zext nneg i32 %176 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr %180, i64 %181
  store i32 0, ptr %182, align 4
  %183 = add nuw nsw i32 %166, 3
  br label %165, !llvm.loop !15

184:                                              ; preds = %173
  %185 = add nuw nsw i32 %161, 1
  br label %160, !llvm.loop !16

186:                                              ; preds = %.preheader35
  br label %.preheader34

.preheader34:                                     ; preds = %186
  br label %187

187:                                              ; preds = %.preheader34
  br label %.preheader33

.preheader33:                                     ; preds = %187
  br label %188

188:                                              ; preds = %.preheader33
  br label %189

189:                                              ; preds = %188
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit50, label %195

.loopexit50:                                      ; preds = %235, %232, %227, %224, %219, %216, %211, %208, %189, %197
  %.lcssa47.ph = phi i32 [ 0, %197 ], [ 0, %189 ], [ 1, %208 ], [ 1, %211 ], [ 2, %216 ], [ 2, %219 ], [ 3, %224 ], [ 3, %227 ], [ 4, %232 ], [ 4, %235 ]
  %.lcssa46.ph = phi i32 [ 1, %197 ], [ 0, %189 ], [ 0, %208 ], [ 1, %211 ], [ 0, %216 ], [ 1, %219 ], [ 0, %224 ], [ 1, %227 ], [ 0, %232 ], [ 1, %235 ]
  br label %190

190:                                              ; preds = %.loopexit50, %200
  %.lcssa47 = phi i32 [ %.lcssa49, %200 ], [ %.lcssa47.ph, %.loopexit50 ]
  %.lcssa46 = phi i32 [ 2, %200 ], [ %.lcssa46.ph, %.loopexit50 ]
  %191 = shl nuw nsw i32 %.lcssa46, 3
  %192 = or disjoint i32 %.lcssa47, %191
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %193
  store i32 1, ptr %194, align 4
  unreachable

195:                                              ; preds = %189
  br label %.preheader33.1

.preheader33.1:                                   ; preds = %195
  br label %196

196:                                              ; preds = %.preheader33.1
  br label %197

197:                                              ; preds = %196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit50, label %198

198:                                              ; preds = %197
  br i1 false, label %.preheader33.2, label %205

.preheader33.2:                                   ; preds = %236, %228, %220, %212, %198
  %.lcssa49 = phi i32 [ 0, %198 ], [ 1, %212 ], [ 2, %220 ], [ 3, %228 ], [ 4, %236 ]
  br label %199

199:                                              ; preds = %.preheader33.2
  br label %200

200:                                              ; preds = %199
  %201 = or disjoint i32 %.lcssa49, 16
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %202
  store i32 1, ptr %203, align 4
  br i1 false, label %190, label %204

204:                                              ; preds = %200
  unreachable

205:                                              ; preds = %198
  br label %.preheader34.1

.preheader34.1:                                   ; preds = %205
  br label %206

206:                                              ; preds = %.preheader34.1
  br label %.preheader33.151

.preheader33.151:                                 ; preds = %206
  br label %207

207:                                              ; preds = %.preheader33.151
  br label %208

208:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit50, label %209

209:                                              ; preds = %208
  br label %.preheader33.1.1

.preheader33.1.1:                                 ; preds = %209
  br label %210

210:                                              ; preds = %.preheader33.1.1
  br label %211

211:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit50, label %212

212:                                              ; preds = %211
  br i1 false, label %.preheader33.2, label %213

213:                                              ; preds = %212
  br label %.preheader34.2

.preheader34.2:                                   ; preds = %213
  br label %214

214:                                              ; preds = %.preheader34.2
  br label %.preheader33.252

.preheader33.252:                                 ; preds = %214
  br label %215

215:                                              ; preds = %.preheader33.252
  br label %216

216:                                              ; preds = %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit50, label %217

217:                                              ; preds = %216
  br label %.preheader33.1.2

.preheader33.1.2:                                 ; preds = %217
  br label %218

218:                                              ; preds = %.preheader33.1.2
  br label %219

219:                                              ; preds = %218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit50, label %220

220:                                              ; preds = %219
  br i1 false, label %.preheader33.2, label %221

221:                                              ; preds = %220
  br label %.preheader34.3

.preheader34.3:                                   ; preds = %221
  br label %222

222:                                              ; preds = %.preheader34.3
  br label %.preheader33.3

.preheader33.3:                                   ; preds = %222
  br label %223

223:                                              ; preds = %.preheader33.3
  br label %224

224:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit50, label %225

225:                                              ; preds = %224
  br label %.preheader33.1.3

.preheader33.1.3:                                 ; preds = %225
  br label %226

226:                                              ; preds = %.preheader33.1.3
  br label %227

227:                                              ; preds = %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit50, label %228

228:                                              ; preds = %227
  br i1 false, label %.preheader33.2, label %229

229:                                              ; preds = %228
  br i1 false, label %.preheader34.4, label %238

.preheader34.4:                                   ; preds = %229
  br label %230

230:                                              ; preds = %.preheader34.4
  br label %.preheader33.4

.preheader33.4:                                   ; preds = %230
  br label %231

231:                                              ; preds = %.preheader33.4
  br label %232

232:                                              ; preds = %231
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit50, label %233

233:                                              ; preds = %232
  br label %.preheader33.1.4

.preheader33.1.4:                                 ; preds = %233
  br label %234

234:                                              ; preds = %.preheader33.1.4
  br label %235

235:                                              ; preds = %234
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit50, label %236

236:                                              ; preds = %235
  br i1 false, label %.preheader33.2, label %237

237:                                              ; preds = %236
  unreachable

238:                                              ; preds = %229
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %239

239:                                              ; preds = %238
  br label %.preheader32

.preheader32:                                     ; preds = %239
  br label %256

.loopexit31:                                      ; preds = %261
  br i1 false, label %.preheader30.1, label %266

.preheader30.1:                                   ; preds = %.loopexit31.2, %.loopexit31.158, %.loopexit31
  %.lcssa54 = phi i32 [ 0, %.loopexit31 ], [ 1, %.loopexit31.158 ], [ 2, %.loopexit31.2 ]
  br label %240

240:                                              ; preds = %.preheader30.1
  br label %241

241:                                              ; preds = %240
  %242 = zext nneg i32 %.lcssa54 to i64
  %243 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %242
  store i32 1, ptr %243, align 4
  br label %244

244:                                              ; preds = %241
  %245 = or disjoint i32 %.lcssa54, 64
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %246
  store i32 1, ptr %247, align 4
  br label %248

248:                                              ; preds = %244
  %249 = or disjoint i32 %.lcssa54, 128
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %250
  store i32 1, ptr %251, align 4
  br label %252

252:                                              ; preds = %248
  %253 = or disjoint i32 %.lcssa54, 192
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %254
  store i32 1, ptr %255, align 4
  br i1 false, label %262, label %.loopexit31.1

.loopexit31.1:                                    ; preds = %252
  unreachable

256:                                              ; preds = %.preheader32
  br label %.preheader30

.preheader30:                                     ; preds = %256
  br label %257

257:                                              ; preds = %.preheader30
  br label %258

258:                                              ; preds = %257
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %259

259:                                              ; preds = %258
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %260

260:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %261

261:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit56, label %.loopexit31

.loopexit56:                                      ; preds = %279, %272, %261
  %.lcssa53.ph = phi i32 [ 0, %261 ], [ 1, %272 ], [ 2, %279 ]
  br label %262

262:                                              ; preds = %.loopexit56, %252
  %.lcssa53 = phi i32 [ %.lcssa54, %252 ], [ %.lcssa53.ph, %.loopexit56 ]
  %263 = or disjoint i32 %.lcssa53, 256
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %264
  store i32 1, ptr %265, align 4
  unreachable

266:                                              ; preds = %.loopexit31
  br label %.preheader32.1

.preheader32.1:                                   ; preds = %266
  br label %267

267:                                              ; preds = %.preheader32.1
  br label %.preheader30.157

.preheader30.157:                                 ; preds = %267
  br label %268

268:                                              ; preds = %.preheader30.157
  br label %269

269:                                              ; preds = %268
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %270

270:                                              ; preds = %269
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit56, label %.loopexit31.158

.loopexit31.158:                                  ; preds = %272
  br i1 false, label %.preheader30.1, label %273

273:                                              ; preds = %.loopexit31.158
  br i1 false, label %.preheader32.2, label %281

.preheader32.2:                                   ; preds = %273
  br label %274

274:                                              ; preds = %.preheader32.2
  br label %.preheader30.2

.preheader30.2:                                   ; preds = %274
  br label %275

275:                                              ; preds = %.preheader30.2
  br label %276

276:                                              ; preds = %275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %277

277:                                              ; preds = %276
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %278

278:                                              ; preds = %277
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %279

279:                                              ; preds = %278
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit56, label %.loopexit31.2

.loopexit31.2:                                    ; preds = %279
  br i1 false, label %.preheader30.1, label %280

280:                                              ; preds = %.loopexit31.2
  unreachable

281:                                              ; preds = %273
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %299

.loopexit29:                                      ; preds = %321
  br i1 false, label %.preheader28.1, label %326

.preheader28.1:                                   ; preds = %.loopexit29
  br label %282

282:                                              ; preds = %.preheader28.1
  br label %.preheader27.161

.preheader27.161:                                 ; preds = %282
  br label %283

283:                                              ; preds = %.preheader27.161
  br label %284

284:                                              ; preds = %283
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %285

285:                                              ; preds = %284
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit60, label %286

286:                                              ; preds = %285
  br label %.preheader27.1.1

.preheader27.1.1:                                 ; preds = %286
  br label %287

287:                                              ; preds = %.preheader27.1.1
  br label %288

288:                                              ; preds = %287
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %289

289:                                              ; preds = %288
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit60, label %290

290:                                              ; preds = %289
  br label %.preheader27.2.1

.preheader27.2.1:                                 ; preds = %290
  br label %291

291:                                              ; preds = %.preheader27.2.1
  br label %292

292:                                              ; preds = %291
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %293

293:                                              ; preds = %292
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit60, label %294

294:                                              ; preds = %293
  br label %.preheader27.3.1

.preheader27.3.1:                                 ; preds = %294
  br label %295

295:                                              ; preds = %.preheader27.3.1
  br label %296

296:                                              ; preds = %295
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %297

297:                                              ; preds = %296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit60, label %298

298:                                              ; preds = %297
  br i1 false, label %.preheader27.4, label %.loopexit29.1

.loopexit29.1:                                    ; preds = %298
  unreachable

299:                                              ; preds = %281
  br label %.preheader28

.preheader28:                                     ; preds = %299
  br label %300

300:                                              ; preds = %.preheader28
  br label %.preheader27

.preheader27:                                     ; preds = %300
  br label %301

301:                                              ; preds = %.preheader27
  br label %302

302:                                              ; preds = %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit60, label %309

.loopexit60:                                      ; preds = %297, %293, %289, %285, %303, %312, %316, %320
  %.lcssa59.ph = phi i32 [ 3, %320 ], [ 2, %316 ], [ 1, %312 ], [ 0, %303 ], [ 0, %285 ], [ 1, %289 ], [ 2, %293 ], [ 3, %297 ]
  br label %304

304:                                              ; preds = %.loopexit60, %324
  %.lcssa59 = phi i32 [ 4, %324 ], [ %.lcssa59.ph, %.loopexit60 ]
  %305 = shl nuw nsw i32 %.lcssa59, 3
  %306 = or disjoint i32 128, %305
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %307
  store i32 1, ptr %308, align 4
  unreachable

309:                                              ; preds = %303
  br label %.preheader27.1

.preheader27.1:                                   ; preds = %309
  br label %310

310:                                              ; preds = %.preheader27.1
  br label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %312

312:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit60, label %313

313:                                              ; preds = %312
  br label %.preheader27.2

.preheader27.2:                                   ; preds = %313
  br label %314

314:                                              ; preds = %.preheader27.2
  br label %315

315:                                              ; preds = %314
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit60, label %317

317:                                              ; preds = %316
  br label %.preheader27.3

.preheader27.3:                                   ; preds = %317
  br label %318

318:                                              ; preds = %.preheader27.3
  br label %319

319:                                              ; preds = %318
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %320

320:                                              ; preds = %319
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit60, label %321

321:                                              ; preds = %320
  br i1 false, label %.preheader27.4, label %.loopexit29

.preheader27.4:                                   ; preds = %298, %321
  br label %322

322:                                              ; preds = %.preheader27.4
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %324

324:                                              ; preds = %323
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %304, label %325

325:                                              ; preds = %324
  unreachable

326:                                              ; preds = %.loopexit29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %327

327:                                              ; preds = %326
  br label %.preheader26

.preheader26:                                     ; preds = %327
  br label %328

328:                                              ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %328
  br label %329

329:                                              ; preds = %.preheader25
  br label %330

330:                                              ; preds = %329
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit66, label %336

.loopexit66:                                      ; preds = %378, %375, %372, %369, %364, %361, %358, %355, %330, %338, %341, %344
  %.lcssa63.ph = phi i32 [ 0, %344 ], [ 0, %341 ], [ 0, %338 ], [ 0, %330 ], [ 1, %355 ], [ 1, %358 ], [ 1, %361 ], [ 1, %364 ], [ 2, %369 ], [ 2, %372 ], [ 2, %375 ], [ 2, %378 ]
  %.lcssa62.ph = phi i32 [ 3, %344 ], [ 2, %341 ], [ 1, %338 ], [ 0, %330 ], [ 0, %355 ], [ 1, %358 ], [ 2, %361 ], [ 3, %364 ], [ 0, %369 ], [ 1, %372 ], [ 2, %375 ], [ 3, %378 ]
  br label %331

331:                                              ; preds = %.loopexit66, %347
  %.lcssa63 = phi i32 [ %.lcssa65, %347 ], [ %.lcssa63.ph, %.loopexit66 ]
  %.lcssa62 = phi i32 [ 4, %347 ], [ %.lcssa62.ph, %.loopexit66 ]
  %332 = shl nuw nsw i32 %.lcssa62, 3
  %333 = or disjoint i32 %.lcssa63, %332
  %334 = zext nneg i32 %333 to i64
  %335 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %334
  store i32 1, ptr %335, align 4
  unreachable

336:                                              ; preds = %330
  br label %.preheader25.1

.preheader25.1:                                   ; preds = %336
  br label %337

337:                                              ; preds = %.preheader25.1
  br label %338

338:                                              ; preds = %337
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit66, label %339

339:                                              ; preds = %338
  br label %.preheader25.2

.preheader25.2:                                   ; preds = %339
  br label %340

340:                                              ; preds = %.preheader25.2
  br label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit66, label %342

342:                                              ; preds = %341
  br label %.preheader25.3

.preheader25.3:                                   ; preds = %342
  br label %343

343:                                              ; preds = %.preheader25.3
  br label %344

344:                                              ; preds = %343
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit66, label %345

345:                                              ; preds = %344
  br i1 false, label %.preheader25.4, label %352

.preheader25.4:                                   ; preds = %379, %365, %345
  %.lcssa65 = phi i32 [ 0, %345 ], [ 1, %365 ], [ 2, %379 ]
  br label %346

346:                                              ; preds = %.preheader25.4
  br label %347

347:                                              ; preds = %346
  %348 = or disjoint i32 %.lcssa65, 32
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %349
  store i32 1, ptr %350, align 4
  br i1 false, label %331, label %351

351:                                              ; preds = %347
  unreachable

352:                                              ; preds = %345
  br label %.preheader26.1

.preheader26.1:                                   ; preds = %352
  br label %353

353:                                              ; preds = %.preheader26.1
  br label %.preheader25.167

.preheader25.167:                                 ; preds = %353
  br label %354

354:                                              ; preds = %.preheader25.167
  br label %355

355:                                              ; preds = %354
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit66, label %356

356:                                              ; preds = %355
  br label %.preheader25.1.1

.preheader25.1.1:                                 ; preds = %356
  br label %357

357:                                              ; preds = %.preheader25.1.1
  br label %358

358:                                              ; preds = %357
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit66, label %359

359:                                              ; preds = %358
  br label %.preheader25.2.1

.preheader25.2.1:                                 ; preds = %359
  br label %360

360:                                              ; preds = %.preheader25.2.1
  br label %361

361:                                              ; preds = %360
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit66, label %362

362:                                              ; preds = %361
  br label %.preheader25.3.1

.preheader25.3.1:                                 ; preds = %362
  br label %363

363:                                              ; preds = %.preheader25.3.1
  br label %364

364:                                              ; preds = %363
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit66, label %365

365:                                              ; preds = %364
  br i1 false, label %.preheader25.4, label %366

366:                                              ; preds = %365
  br i1 false, label %.preheader26.2, label %381

.preheader26.2:                                   ; preds = %366
  br label %367

367:                                              ; preds = %.preheader26.2
  br label %.preheader25.268

.preheader25.268:                                 ; preds = %367
  br label %368

368:                                              ; preds = %.preheader25.268
  br label %369

369:                                              ; preds = %368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit66, label %370

370:                                              ; preds = %369
  br label %.preheader25.1.2

.preheader25.1.2:                                 ; preds = %370
  br label %371

371:                                              ; preds = %.preheader25.1.2
  br label %372

372:                                              ; preds = %371
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit66, label %373

373:                                              ; preds = %372
  br label %.preheader25.2.2

.preheader25.2.2:                                 ; preds = %373
  br label %374

374:                                              ; preds = %.preheader25.2.2
  br label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit66, label %376

376:                                              ; preds = %375
  br label %.preheader25.3.2

.preheader25.3.2:                                 ; preds = %376
  br label %377

377:                                              ; preds = %.preheader25.3.2
  br label %378

378:                                              ; preds = %377
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit66, label %379

379:                                              ; preds = %378
  br i1 false, label %.preheader25.4, label %380

380:                                              ; preds = %379
  unreachable

381:                                              ; preds = %366
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %382

382:                                              ; preds = %381
  br label %.preheader24

.preheader24:                                     ; preds = %382
  br label %391

.loopexit23:                                      ; preds = %394
  br i1 false, label %.preheader22.1, label %399

.preheader22.1:                                   ; preds = %.loopexit23.4, %.loopexit23.3, %.loopexit23.2, %.loopexit23.174, %.loopexit23
  %.lcssa70 = phi i32 [ 0, %.loopexit23 ], [ 1, %.loopexit23.174 ], [ 2, %.loopexit23.2 ], [ 3, %.loopexit23.3 ], [ 4, %.loopexit23.4 ]
  br label %383

383:                                              ; preds = %.preheader22.1
  br label %384

384:                                              ; preds = %383
  %385 = zext nneg i32 %.lcssa70 to i64
  %386 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %385
  store i32 1, ptr %386, align 4
  br label %387

387:                                              ; preds = %384
  %388 = or disjoint i32 %.lcssa70, 64
  %389 = zext nneg i32 %388 to i64
  %390 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %389
  store i32 1, ptr %390, align 4
  br i1 false, label %395, label %.loopexit23.1

.loopexit23.1:                                    ; preds = %387
  unreachable

391:                                              ; preds = %.preheader24
  br label %.preheader22

.preheader22:                                     ; preds = %391
  br label %392

392:                                              ; preds = %.preheader22
  br label %393

393:                                              ; preds = %392
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %394

394:                                              ; preds = %393
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit72, label %.loopexit23

.loopexit72:                                      ; preds = %418, %413, %408, %403, %394
  %.lcssa69.ph = phi i32 [ 0, %394 ], [ 1, %403 ], [ 2, %408 ], [ 3, %413 ], [ 4, %418 ]
  br label %395

395:                                              ; preds = %.loopexit72, %387
  %.lcssa69 = phi i32 [ %.lcssa70, %387 ], [ %.lcssa69.ph, %.loopexit72 ]
  %396 = or disjoint i32 %.lcssa69, 128
  %397 = zext nneg i32 %396 to i64
  %398 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %397
  store i32 1, ptr %398, align 4
  unreachable

399:                                              ; preds = %.loopexit23
  br label %.preheader24.1

.preheader24.1:                                   ; preds = %399
  br label %400

400:                                              ; preds = %.preheader24.1
  br label %.preheader22.173

.preheader22.173:                                 ; preds = %400
  br label %401

401:                                              ; preds = %.preheader22.173
  br label %402

402:                                              ; preds = %401
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %403

403:                                              ; preds = %402
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit72, label %.loopexit23.174

.loopexit23.174:                                  ; preds = %403
  br i1 false, label %.preheader22.1, label %404

404:                                              ; preds = %.loopexit23.174
  br label %.preheader24.2

.preheader24.2:                                   ; preds = %404
  br label %405

405:                                              ; preds = %.preheader24.2
  br label %.preheader22.2

.preheader22.2:                                   ; preds = %405
  br label %406

406:                                              ; preds = %.preheader22.2
  br label %407

407:                                              ; preds = %406
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit72, label %.loopexit23.2

.loopexit23.2:                                    ; preds = %408
  br i1 false, label %.preheader22.1, label %409

409:                                              ; preds = %.loopexit23.2
  br label %.preheader24.3

.preheader24.3:                                   ; preds = %409
  br label %410

410:                                              ; preds = %.preheader24.3
  br label %.preheader22.3

.preheader22.3:                                   ; preds = %410
  br label %411

411:                                              ; preds = %.preheader22.3
  br label %412

412:                                              ; preds = %411
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %413

413:                                              ; preds = %412
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit72, label %.loopexit23.3

.loopexit23.3:                                    ; preds = %413
  br i1 false, label %.preheader22.1, label %414

414:                                              ; preds = %.loopexit23.3
  br i1 false, label %.preheader24.4, label %420

.preheader24.4:                                   ; preds = %414
  br label %415

415:                                              ; preds = %.preheader24.4
  br label %.preheader22.4

.preheader22.4:                                   ; preds = %415
  br label %416

416:                                              ; preds = %.preheader22.4
  br label %417

417:                                              ; preds = %416
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %418

418:                                              ; preds = %417
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit72, label %.loopexit23.4

.loopexit23.4:                                    ; preds = %418
  br i1 false, label %.preheader22.1, label %419

419:                                              ; preds = %.loopexit23.4
  unreachable

420:                                              ; preds = %414
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %434

.loopexit21:                                      ; preds = %452
  br i1 false, label %.preheader20.1, label %459

.preheader20.1:                                   ; preds = %.loopexit21
  br label %421

421:                                              ; preds = %.preheader20.1
  br label %.preheader19.177

.preheader19.177:                                 ; preds = %421
  br label %422

422:                                              ; preds = %.preheader19.177
  br label %423

423:                                              ; preds = %422
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %424

424:                                              ; preds = %423
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %425

425:                                              ; preds = %424
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %426

426:                                              ; preds = %425
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit76, label %427

427:                                              ; preds = %426
  br label %.preheader19.1.1

.preheader19.1.1:                                 ; preds = %427
  br label %428

428:                                              ; preds = %.preheader19.1.1
  br label %429

429:                                              ; preds = %428
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %430

430:                                              ; preds = %429
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %431

431:                                              ; preds = %430
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %432

432:                                              ; preds = %431
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit76, label %433

433:                                              ; preds = %432
  br i1 false, label %.preheader19.2, label %.loopexit21.1

.loopexit21.1:                                    ; preds = %433
  unreachable

434:                                              ; preds = %420
  br label %.preheader20

.preheader20:                                     ; preds = %434
  br label %435

435:                                              ; preds = %.preheader20
  br label %.preheader19

.preheader19:                                     ; preds = %435
  br label %436

436:                                              ; preds = %.preheader19
  br label %437

437:                                              ; preds = %436
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %438

438:                                              ; preds = %437
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %439

439:                                              ; preds = %438
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %440

440:                                              ; preds = %439
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit76, label %446

.loopexit76:                                      ; preds = %432, %426, %440, %451
  %.lcssa75.ph = phi i32 [ 1, %451 ], [ 0, %440 ], [ 0, %426 ], [ 1, %432 ]
  br label %441

441:                                              ; preds = %.loopexit76, %457
  %.lcssa75 = phi i32 [ 2, %457 ], [ %.lcssa75.ph, %.loopexit76 ]
  %442 = shl nuw nsw i32 %.lcssa75, 3
  %443 = or disjoint i32 256, %442
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %444
  store i32 1, ptr %445, align 4
  unreachable

446:                                              ; preds = %440
  br label %.preheader19.1

.preheader19.1:                                   ; preds = %446
  br label %447

447:                                              ; preds = %.preheader19.1
  br label %448

448:                                              ; preds = %447
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %449

449:                                              ; preds = %448
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %450

450:                                              ; preds = %449
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %451

451:                                              ; preds = %450
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit76, label %452

452:                                              ; preds = %451
  br i1 false, label %.preheader19.2, label %.loopexit21

.preheader19.2:                                   ; preds = %433, %452
  br label %453

453:                                              ; preds = %.preheader19.2
  br label %454

454:                                              ; preds = %453
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %456

456:                                              ; preds = %455
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %457

457:                                              ; preds = %456
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %441, label %458

458:                                              ; preds = %457
  unreachable

459:                                              ; preds = %.loopexit21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %460

460:                                              ; preds = %459
  br label %.preheader18

.preheader18:                                     ; preds = %460
  br label %465

.loopexit17:                                      ; preds = %467
  br i1 false, label %.preheader16.1, label %471

.preheader16.1:                                   ; preds = %.loopexit17.3, %.loopexit17.2, %.loopexit17.183, %.loopexit17
  %.lcssa80 = phi i32 [ 0, %.loopexit17 ], [ 1, %.loopexit17.183 ], [ 2, %.loopexit17.2 ], [ 3, %.loopexit17.3 ]
  br label %461

461:                                              ; preds = %.preheader16.1
  br label %462

462:                                              ; preds = %461
  %463 = zext nneg i32 %.lcssa80 to i64
  %464 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %463
  store i32 1, ptr %464, align 4
  br i1 false, label %468, label %.loopexit17.1

.loopexit17.1:                                    ; preds = %462
  unreachable

465:                                              ; preds = %.preheader18
  br label %.preheader16

.preheader16:                                     ; preds = %465
  br label %466

466:                                              ; preds = %.preheader16
  br label %467

467:                                              ; preds = %466
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit81, label %.loopexit17

.loopexit81:                                      ; preds = %482, %478, %474, %467
  %.lcssa78.ph = phi i32 [ 0, %467 ], [ 1, %474 ], [ 2, %478 ], [ 3, %482 ]
  br label %468

468:                                              ; preds = %.loopexit81, %462
  %.lcssa78 = phi i32 [ %.lcssa80, %462 ], [ %.lcssa78.ph, %.loopexit81 ]
  %469 = zext nneg i32 %.lcssa78 to i64
  %470 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %469
  store i32 1, ptr %470, align 4
  unreachable

471:                                              ; preds = %.loopexit17
  br label %.preheader18.1

.preheader18.1:                                   ; preds = %471
  br label %472

472:                                              ; preds = %.preheader18.1
  br label %.preheader16.182

.preheader16.182:                                 ; preds = %472
  br label %473

473:                                              ; preds = %.preheader16.182
  br label %474

474:                                              ; preds = %473
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit81, label %.loopexit17.183

.loopexit17.183:                                  ; preds = %474
  br i1 false, label %.preheader16.1, label %475

475:                                              ; preds = %.loopexit17.183
  br label %.preheader18.2

.preheader18.2:                                   ; preds = %475
  br label %476

476:                                              ; preds = %.preheader18.2
  br label %.preheader16.2

.preheader16.2:                                   ; preds = %476
  br label %477

477:                                              ; preds = %.preheader16.2
  br label %478

478:                                              ; preds = %477
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit81, label %.loopexit17.2

.loopexit17.2:                                    ; preds = %478
  br i1 false, label %.preheader16.1, label %479

479:                                              ; preds = %.loopexit17.2
  br i1 false, label %.preheader18.3, label %484

.preheader18.3:                                   ; preds = %479
  br label %480

480:                                              ; preds = %.preheader18.3
  br label %.preheader16.3

.preheader16.3:                                   ; preds = %480
  br label %481

481:                                              ; preds = %.preheader16.3
  br label %482

482:                                              ; preds = %481
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit81, label %.loopexit17.3

.loopexit17.3:                                    ; preds = %482
  br i1 false, label %.preheader16.1, label %483

483:                                              ; preds = %.loopexit17.3
  unreachable

484:                                              ; preds = %479
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %495

.loopexit15:                                      ; preds = %509
  br i1 false, label %.preheader14.1, label %513

.preheader14.1:                                   ; preds = %.loopexit15
  br label %485

485:                                              ; preds = %.preheader14.1
  br label %.preheader13.186

.preheader13.186:                                 ; preds = %485
  br label %486

486:                                              ; preds = %.preheader13.186
  br label %487

487:                                              ; preds = %486
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit85, label %488

488:                                              ; preds = %487
  br label %.preheader13.1.1

.preheader13.1.1:                                 ; preds = %488
  br label %489

489:                                              ; preds = %.preheader13.1.1
  br label %490

490:                                              ; preds = %489
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit85, label %491

491:                                              ; preds = %490
  br label %.preheader13.2.1

.preheader13.2.1:                                 ; preds = %491
  br label %492

492:                                              ; preds = %.preheader13.2.1
  br label %493

493:                                              ; preds = %492
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit85, label %494

494:                                              ; preds = %493
  br i1 false, label %.preheader13.3, label %.loopexit15.1

.loopexit15.1:                                    ; preds = %494
  unreachable

495:                                              ; preds = %484
  br label %.preheader14

.preheader14:                                     ; preds = %495
  br label %496

496:                                              ; preds = %.preheader14
  br label %.preheader13

.preheader13:                                     ; preds = %496
  br label %497

497:                                              ; preds = %.preheader13
  br label %498

498:                                              ; preds = %497
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit85, label %503

.loopexit85:                                      ; preds = %493, %490, %487, %498, %505, %508
  %.lcssa84.ph = phi i32 [ 2, %508 ], [ 1, %505 ], [ 0, %498 ], [ 0, %487 ], [ 1, %490 ], [ 2, %493 ]
  br label %499

499:                                              ; preds = %.loopexit85, %511
  %.lcssa84 = phi i32 [ 3, %511 ], [ %.lcssa84.ph, %.loopexit85 ]
  %500 = shl nuw nsw i32 %.lcssa84, 3
  %501 = zext nneg i32 %500 to i64
  %502 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %501
  store i32 1, ptr %502, align 4
  unreachable

503:                                              ; preds = %498
  br label %.preheader13.1

.preheader13.1:                                   ; preds = %503
  br label %504

504:                                              ; preds = %.preheader13.1
  br label %505

505:                                              ; preds = %504
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit85, label %506

506:                                              ; preds = %505
  br label %.preheader13.2

.preheader13.2:                                   ; preds = %506
  br label %507

507:                                              ; preds = %.preheader13.2
  br label %508

508:                                              ; preds = %507
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit85, label %509

509:                                              ; preds = %508
  br i1 false, label %.preheader13.3, label %.loopexit15

.preheader13.3:                                   ; preds = %494, %509
  br label %510

510:                                              ; preds = %.preheader13.3
  br label %511

511:                                              ; preds = %510
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %499, label %512

512:                                              ; preds = %511
  unreachable

513:                                              ; preds = %.loopexit15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %519

.loopexit12:                                      ; preds = %.loopexit10
  br i1 false, label %.preheader11.1, label %530

.preheader11.1:                                   ; preds = %.loopexit12
  br label %514

514:                                              ; preds = %.preheader11.1
  br label %.preheader9.188

.preheader9.188:                                  ; preds = %514
  br label %515

515:                                              ; preds = %.preheader9.188
  br label %516

516:                                              ; preds = %515
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %517

517:                                              ; preds = %516
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %518

518:                                              ; preds = %517
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit87, label %.loopexit10.189

.loopexit10.189:                                  ; preds = %518
  br i1 false, label %.preheader9.1, label %.loopexit12.1

.loopexit12.1:                                    ; preds = %.loopexit10.189
  unreachable

519:                                              ; preds = %513
  br label %.preheader11

.preheader11:                                     ; preds = %519
  br label %524

.loopexit10:                                      ; preds = %528
  br i1 false, label %.preheader9.1, label %.loopexit12

.preheader9.1:                                    ; preds = %.loopexit10.189, %.loopexit10
  br label %520

520:                                              ; preds = %.preheader9.1
  br label %521

521:                                              ; preds = %520
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %522

522:                                              ; preds = %521
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %523

523:                                              ; preds = %522
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %529, label %.loopexit10.1

.loopexit10.1:                                    ; preds = %523
  unreachable

524:                                              ; preds = %.preheader11
  br label %.preheader9

.preheader9:                                      ; preds = %524
  br label %525

525:                                              ; preds = %.preheader9
  br label %526

526:                                              ; preds = %525
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %527

527:                                              ; preds = %526
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %528

528:                                              ; preds = %527
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit87, label %.loopexit10

.loopexit87:                                      ; preds = %518, %528
  br label %529

529:                                              ; preds = %.loopexit87, %523
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

530:                                              ; preds = %.loopexit12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %531

531:                                              ; preds = %530
  br label %.preheader8

.preheader8:                                      ; preds = %531
  br label %532

532:                                              ; preds = %.preheader8
  br label %.preheader7

.preheader7:                                      ; preds = %532
  br label %533

533:                                              ; preds = %.preheader7
  br label %534

534:                                              ; preds = %533
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit94, label %540

.loopexit94:                                      ; preds = %564, %561, %556, %553, %534, %542
  %.lcssa91.ph = phi i32 [ 0, %542 ], [ 0, %534 ], [ 1, %553 ], [ 1, %556 ], [ 2, %561 ], [ 2, %564 ]
  %.lcssa90.ph = phi i32 [ 1, %542 ], [ 0, %534 ], [ 0, %553 ], [ 1, %556 ], [ 0, %561 ], [ 1, %564 ]
  br label %535

535:                                              ; preds = %.loopexit94, %545
  %.lcssa91 = phi i32 [ %.lcssa93, %545 ], [ %.lcssa91.ph, %.loopexit94 ]
  %.lcssa90 = phi i32 [ 2, %545 ], [ %.lcssa90.ph, %.loopexit94 ]
  %536 = shl nuw nsw i32 %.lcssa90, 3
  %537 = or disjoint i32 %.lcssa91, %536
  %538 = zext nneg i32 %537 to i64
  %539 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %538
  store i32 1, ptr %539, align 4
  unreachable

540:                                              ; preds = %534
  br label %.preheader7.1

.preheader7.1:                                    ; preds = %540
  br label %541

541:                                              ; preds = %.preheader7.1
  br label %542

542:                                              ; preds = %541
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit94, label %543

543:                                              ; preds = %542
  br i1 false, label %.preheader7.2, label %550

.preheader7.2:                                    ; preds = %565, %557, %543
  %.lcssa93 = phi i32 [ 0, %543 ], [ 1, %557 ], [ 2, %565 ]
  br label %544

544:                                              ; preds = %.preheader7.2
  br label %545

545:                                              ; preds = %544
  %546 = or disjoint i32 %.lcssa93, 16
  %547 = zext nneg i32 %546 to i64
  %548 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %547
  store i32 1, ptr %548, align 4
  br i1 false, label %535, label %549

549:                                              ; preds = %545
  unreachable

550:                                              ; preds = %543
  br label %.preheader8.1

.preheader8.1:                                    ; preds = %550
  br label %551

551:                                              ; preds = %.preheader8.1
  br label %.preheader7.195

.preheader7.195:                                  ; preds = %551
  br label %552

552:                                              ; preds = %.preheader7.195
  br label %553

553:                                              ; preds = %552
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit94, label %554

554:                                              ; preds = %553
  br label %.preheader7.1.1

.preheader7.1.1:                                  ; preds = %554
  br label %555

555:                                              ; preds = %.preheader7.1.1
  br label %556

556:                                              ; preds = %555
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit94, label %557

557:                                              ; preds = %556
  br i1 false, label %.preheader7.2, label %558

558:                                              ; preds = %557
  br i1 false, label %.preheader8.2, label %567

.preheader8.2:                                    ; preds = %558
  br label %559

559:                                              ; preds = %.preheader8.2
  br label %.preheader7.296

.preheader7.296:                                  ; preds = %559
  br label %560

560:                                              ; preds = %.preheader7.296
  br label %561

561:                                              ; preds = %560
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit94, label %562

562:                                              ; preds = %561
  br label %.preheader7.1.2

.preheader7.1.2:                                  ; preds = %562
  br label %563

563:                                              ; preds = %.preheader7.1.2
  br label %564

564:                                              ; preds = %563
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit94, label %565

565:                                              ; preds = %564
  br i1 false, label %.preheader7.2, label %566

566:                                              ; preds = %565
  unreachable

567:                                              ; preds = %558
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %568

568:                                              ; preds = %567
  br label %.preheader6

.preheader6:                                      ; preds = %568
  br label %577

.loopexit5:                                       ; preds = %580
  br i1 false, label %.preheader4.1, label %585

.preheader4.1:                                    ; preds = %.loopexit5.2, %.loopexit5.1102, %.loopexit5
  %.lcssa98 = phi i32 [ 0, %.loopexit5 ], [ 1, %.loopexit5.1102 ], [ 2, %.loopexit5.2 ]
  br label %569

569:                                              ; preds = %.preheader4.1
  br label %570

570:                                              ; preds = %569
  %571 = zext nneg i32 %.lcssa98 to i64
  %572 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %571
  store i32 1, ptr %572, align 4
  br label %573

573:                                              ; preds = %570
  %574 = or disjoint i32 %.lcssa98, 64
  %575 = zext nneg i32 %574 to i64
  %576 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %575
  store i32 1, ptr %576, align 4
  br i1 false, label %581, label %.loopexit5.1

.loopexit5.1:                                     ; preds = %573
  unreachable

577:                                              ; preds = %.preheader6
  br label %.preheader4

.preheader4:                                      ; preds = %577
  br label %578

578:                                              ; preds = %.preheader4
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %580

580:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit100, label %.loopexit5

.loopexit100:                                     ; preds = %594, %589, %580
  %.lcssa97.ph = phi i32 [ 0, %580 ], [ 1, %589 ], [ 2, %594 ]
  br label %581

581:                                              ; preds = %.loopexit100, %573
  %.lcssa97 = phi i32 [ %.lcssa98, %573 ], [ %.lcssa97.ph, %.loopexit100 ]
  %582 = or disjoint i32 %.lcssa97, 128
  %583 = zext nneg i32 %582 to i64
  %584 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %583
  store i32 1, ptr %584, align 4
  unreachable

585:                                              ; preds = %.loopexit5
  br label %.preheader6.1

.preheader6.1:                                    ; preds = %585
  br label %586

586:                                              ; preds = %.preheader6.1
  br label %.preheader4.1101

.preheader4.1101:                                 ; preds = %586
  br label %587

587:                                              ; preds = %.preheader4.1101
  br label %588

588:                                              ; preds = %587
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %589

589:                                              ; preds = %588
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit100, label %.loopexit5.1102

.loopexit5.1102:                                  ; preds = %589
  br i1 false, label %.preheader4.1, label %590

590:                                              ; preds = %.loopexit5.1102
  br i1 false, label %.preheader6.2, label %596

.preheader6.2:                                    ; preds = %590
  br label %591

591:                                              ; preds = %.preheader6.2
  br label %.preheader4.2

.preheader4.2:                                    ; preds = %591
  br label %592

592:                                              ; preds = %.preheader4.2
  br label %593

593:                                              ; preds = %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %594

594:                                              ; preds = %593
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit100, label %.loopexit5.2

.loopexit5.2:                                     ; preds = %594
  br i1 false, label %.preheader4.1, label %595

595:                                              ; preds = %.loopexit5.2
  unreachable

596:                                              ; preds = %590
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %606

.loopexit:                                        ; preds = %620
  br i1 false, label %.preheader3.1, label %625

.preheader3.1:                                    ; preds = %.loopexit
  br label %597

597:                                              ; preds = %.preheader3.1
  br label %.preheader2.1105

.preheader2.1105:                                 ; preds = %597
  br label %598

598:                                              ; preds = %.preheader2.1105
  br label %599

599:                                              ; preds = %598
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %600

600:                                              ; preds = %599
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit104, label %601

601:                                              ; preds = %600
  br label %.preheader2.1.1

.preheader2.1.1:                                  ; preds = %601
  br label %602

602:                                              ; preds = %.preheader2.1.1
  br label %603

603:                                              ; preds = %602
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %604

604:                                              ; preds = %603
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit104, label %605

605:                                              ; preds = %604
  br i1 false, label %.preheader2.2, label %.loopexit.1

.loopexit.1:                                      ; preds = %605
  unreachable

606:                                              ; preds = %596
  br label %.preheader3

.preheader3:                                      ; preds = %606
  br label %607

607:                                              ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %607
  br label %608

608:                                              ; preds = %.preheader2
  br label %609

609:                                              ; preds = %608
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %610

610:                                              ; preds = %609
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit104, label %616

.loopexit104:                                     ; preds = %604, %600, %610, %619
  %.lcssa103.ph = phi i32 [ 1, %619 ], [ 0, %610 ], [ 0, %600 ], [ 1, %604 ]
  br label %611

611:                                              ; preds = %.loopexit104, %623
  %.lcssa103 = phi i32 [ 2, %623 ], [ %.lcssa103.ph, %.loopexit104 ]
  %612 = shl nuw nsw i32 %.lcssa103, 3
  %613 = or disjoint i32 128, %612
  %614 = zext nneg i32 %613 to i64
  %615 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %614
  store i32 1, ptr %615, align 4
  unreachable

616:                                              ; preds = %610
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %616
  br label %617

617:                                              ; preds = %.preheader2.1
  br label %618

618:                                              ; preds = %617
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %619

619:                                              ; preds = %618
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit104, label %620

620:                                              ; preds = %619
  br i1 false, label %.preheader2.2, label %.loopexit

.preheader2.2:                                    ; preds = %605, %620
  br label %621

621:                                              ; preds = %.preheader2.2
  br label %622

622:                                              ; preds = %621
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %623

623:                                              ; preds = %622
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %611, label %624

624:                                              ; preds = %623
  unreachable

625:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %626

626:                                              ; preds = %625
  br label %.preheader1

.preheader1:                                      ; preds = %626
  br label %627

627:                                              ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %627
  br label %628

628:                                              ; preds = %.preheader
  br label %629

629:                                              ; preds = %628
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %630

630:                                              ; preds = %629
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit110, label %637

.loopexit110:                                     ; preds = %670, %666, %660, %656, %630, %640
  %.lcssa107.ph = phi i32 [ 0, %640 ], [ 0, %630 ], [ 1, %656 ], [ 1, %660 ], [ 2, %666 ], [ 2, %670 ]
  %.lcssa106.ph = phi i32 [ 1, %640 ], [ 0, %630 ], [ 0, %656 ], [ 1, %660 ], [ 0, %666 ], [ 1, %670 ]
  br label %631

631:                                              ; preds = %.loopexit110, %647
  %.lcssa107 = phi i32 [ %.lcssa109, %647 ], [ %.lcssa107.ph, %.loopexit110 ]
  %.lcssa106 = phi i32 [ 2, %647 ], [ %.lcssa106.ph, %.loopexit110 ]
  %632 = shl nuw nsw i32 %.lcssa106, 3
  %633 = or disjoint i32 128, %632
  %634 = or disjoint i32 %.lcssa107, %633
  %635 = zext nneg i32 %634 to i64
  %636 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %635
  store i32 1, ptr %636, align 4
  unreachable

637:                                              ; preds = %630
  br label %.preheader.1

.preheader.1:                                     ; preds = %637
  br label %638

638:                                              ; preds = %.preheader.1
  br label %639

639:                                              ; preds = %638
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %640

640:                                              ; preds = %639
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit110, label %641

641:                                              ; preds = %640
  br i1 false, label %.preheader.2, label %652

.preheader.2:                                     ; preds = %671, %661, %641
  %.lcssa109 = phi i32 [ 0, %641 ], [ 1, %661 ], [ 2, %671 ]
  br label %642

642:                                              ; preds = %.preheader.2
  br label %643

643:                                              ; preds = %642
  %644 = or disjoint i32 %.lcssa109, 16
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %645
  store i32 1, ptr %646, align 4
  br label %647

647:                                              ; preds = %643
  %648 = or disjoint i32 %.lcssa109, 80
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %649
  store i32 1, ptr %650, align 4
  br i1 false, label %631, label %651

651:                                              ; preds = %647
  unreachable

652:                                              ; preds = %641
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %652
  br label %653

653:                                              ; preds = %.preheader1.1
  br label %.preheader.1111

.preheader.1111:                                  ; preds = %653
  br label %654

654:                                              ; preds = %.preheader.1111
  br label %655

655:                                              ; preds = %654
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %656

656:                                              ; preds = %655
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit110, label %657

657:                                              ; preds = %656
  br label %.preheader.1.1

.preheader.1.1:                                   ; preds = %657
  br label %658

658:                                              ; preds = %.preheader.1.1
  br label %659

659:                                              ; preds = %658
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %660

660:                                              ; preds = %659
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit110, label %661

661:                                              ; preds = %660
  br i1 false, label %.preheader.2, label %662

662:                                              ; preds = %661
  br i1 false, label %.preheader1.2, label %673

.preheader1.2:                                    ; preds = %662
  br label %663

663:                                              ; preds = %.preheader1.2
  br label %.preheader.2112

.preheader.2112:                                  ; preds = %663
  br label %664

664:                                              ; preds = %.preheader.2112
  br label %665

665:                                              ; preds = %664
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %666

666:                                              ; preds = %665
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit110, label %667

667:                                              ; preds = %666
  br label %.preheader.1.2

.preheader.1.2:                                   ; preds = %667
  br label %668

668:                                              ; preds = %.preheader.1.2
  br label %669

669:                                              ; preds = %668
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %670

670:                                              ; preds = %669
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit110, label %671

671:                                              ; preds = %670
  br i1 false, label %.preheader.2, label %672

672:                                              ; preds = %671
  unreachable

673:                                              ; preds = %662
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %674 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %674, 0
  br i1 %.not, label %677, label %675

675:                                              ; preds = %673
  %676 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %676, ptr @n, align 4
  br label %678

677:                                              ; preds = %673
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %678

678:                                              ; preds = %677, %675
  %679 = phi i32 [ %.pre, %677 ], [ %676, %675 ]
  %680 = call i32 @Trial(i32 noundef %679)
  %.not1 = icmp eq i32 %680, 0
  br i1 %.not1, label %681, label %682

681:                                              ; preds = %678
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %685

682:                                              ; preds = %678
  %683 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %683, 2005
  br i1 %.not3, label %685, label %684

684:                                              ; preds = %682
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %685

685:                                              ; preds = %682, %684, %681
  %686 = load i32, ptr @n, align 4
  %687 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %686) #3
  %688 = load i32, ptr @kount, align 4
  %689 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %688) #3
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
