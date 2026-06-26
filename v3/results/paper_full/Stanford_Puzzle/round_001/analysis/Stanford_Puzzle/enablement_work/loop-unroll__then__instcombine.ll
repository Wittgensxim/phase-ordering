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

3:                                                ; preds = %17, %2
  %4 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %5
  %18 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 1, %19 ], [ 0, %15 ]
  ret i32 %21
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

23:                                               ; preds = %31, %16
  %24 = phi i32 [ %32, %31 ], [ %1, %16 ]
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %30, label %31

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 0, %33 ], [ %24, %30 ]
  ret i32 %35
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

4:                                                ; preds = %24, %1
  %5 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %24, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %23, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %19, label %21

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %16
  br label %27

22:                                               ; preds = %19
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %7
  %25 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 0, %26 ], [ 1, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %11 ]
  br label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %9, align 4
  %10 = icmp samesign ult i32 %2, 510
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = zext nneg i32 %2 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %12
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 1, ptr %14, align 4
  %15 = add nuw nsw i32 %2, 3
  br label %1, !llvm.loop !13

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %146, %16
  %18 = phi i32 [ %147, %146 ], [ 1, %16 ]
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %20, label %148

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = zext nneg i32 %18 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 288
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = zext nneg i32 %18 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 544
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %28
  %33 = zext nneg i32 %18 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %33
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 800
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = zext nneg i32 %18 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 1056
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %36
  %41 = zext nneg i32 %18 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 1312
  store i32 0, ptr %43, align 4
  br i1 false, label %.loopexit, label %45

.loopexit:                                        ; preds = %40, %64, %87, %110, %133
  br label %44

44:                                               ; preds = %.loopexit, %144
  unreachable

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  %49 = zext nneg i32 %18 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 320
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = zext nneg i32 %18 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 576
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %52
  %57 = zext nneg i32 %18 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 832
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %56
  %61 = zext nneg i32 %18 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 1088
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = zext nneg i32 %18 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 1344
  store i32 0, ptr %67, align 4
  br i1 false, label %.loopexit, label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = zext nneg i32 %18 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 352
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = zext nneg i32 %18 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 608
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %75
  %80 = zext nneg i32 %18 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 864
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %79
  %84 = zext nneg i32 %18 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1120
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %83
  %88 = zext nneg i32 %18 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %88
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 1376
  store i32 0, ptr %90, align 4
  br i1 false, label %.loopexit, label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = zext nneg i32 %18 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %95
  %97 = getelementptr inbounds nuw i8, ptr %96, i64 384
  store i32 0, ptr %97, align 4
  br label %98

98:                                               ; preds = %94
  %99 = zext nneg i32 %18 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 640
  store i32 0, ptr %101, align 4
  br label %102

102:                                              ; preds = %98
  %103 = zext nneg i32 %18 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 896
  store i32 0, ptr %105, align 4
  br label %106

106:                                              ; preds = %102
  %107 = zext nneg i32 %18 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 1152
  store i32 0, ptr %109, align 4
  br label %110

110:                                              ; preds = %106
  %111 = zext nneg i32 %18 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %111
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 1408
  store i32 0, ptr %113, align 4
  br i1 false, label %.loopexit, label %114

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %118 = zext nneg i32 %18 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 416
  store i32 0, ptr %120, align 4
  br label %121

121:                                              ; preds = %117
  %122 = zext nneg i32 %18 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 672
  store i32 0, ptr %124, align 4
  br label %125

125:                                              ; preds = %121
  %126 = zext nneg i32 %18 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %126
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 928
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %125
  %130 = zext nneg i32 %18 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 1184
  store i32 0, ptr %132, align 4
  br label %133

133:                                              ; preds = %129
  %134 = zext nneg i32 %18 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %134
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 1440
  store i32 0, ptr %136, align 4
  br i1 false, label %.loopexit, label %137

137:                                              ; preds = %133
  br i1 false, label %138, label %146

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br i1 false, label %44, label %145

145:                                              ; preds = %144
  unreachable

146:                                              ; preds = %137
  %147 = add nuw nsw i32 %18, 1
  br label %17, !llvm.loop !14

148:                                              ; preds = %17
  br label %149

149:                                              ; preds = %174, %148
  %150 = phi i32 [ %175, %174 ], [ 0, %148 ]
  %151 = icmp samesign ult i32 %150, 13
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = zext nneg i32 %150 to i64
  %154 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %153
  br label %155

155:                                              ; preds = %167, %152
  %156 = phi i32 [ 0, %152 ], [ %173, %167 ]
  br label %157

157:                                              ; preds = %155
  %158 = zext nneg i32 %150 to i64
  %159 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %158
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds nuw [4 x i8], ptr %159, i64 %160
  store i32 0, ptr %161, align 4
  br label %162

162:                                              ; preds = %157
  %163 = zext nneg i32 %156 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr %154, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 4
  store i32 0, ptr %165, align 4
  %166 = icmp samesign ult i32 %156, 510
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = zext nneg i32 %150 to i64
  %169 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %168
  %170 = zext nneg i32 %156 to i64
  %171 = getelementptr inbounds nuw [4 x i8], ptr %169, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 8
  store i32 0, ptr %172, align 4
  %173 = add nuw nsw i32 %156, 3
  br label %155, !llvm.loop !15

174:                                              ; preds = %162
  %175 = add nuw nsw i32 %150, 1
  br label %149, !llvm.loop !16

176:                                              ; preds = %149
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit9, label %184

.loopexit9:                                       ; preds = %235, %231, %224, %220, %213, %209, %202, %198, %182, %187
  br label %183

183:                                              ; preds = %.loopexit9, %191
  unreachable

184:                                              ; preds = %182
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit9, label %188

188:                                              ; preds = %187
  br i1 false, label %189, label %193

189:                                              ; preds = %236, %225, %214, %203, %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br i1 false, label %183, label %192

192:                                              ; preds = %191
  unreachable

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit9, label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit9, label %203

203:                                              ; preds = %202
  br i1 false, label %189, label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit9, label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit9, label %214

214:                                              ; preds = %213
  br i1 false, label %189, label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit9, label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit9, label %225

225:                                              ; preds = %224
  br i1 false, label %189, label %226

226:                                              ; preds = %225
  br i1 false, label %227, label %238

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br i1 false, label %.loopexit9, label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  br i1 false, label %.loopexit9, label %236

236:                                              ; preds = %235
  br i1 false, label %189, label %237

237:                                              ; preds = %236
  unreachable

238:                                              ; preds = %226
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %245

245:                                              ; preds = %244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %246

246:                                              ; preds = %245
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %247

247:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit13, label %249

.loopexit13:                                      ; preds = %275, %265, %247
  br label %248

248:                                              ; preds = %.loopexit13, %255
  unreachable

249:                                              ; preds = %247
  br i1 false, label %250, label %257

250:                                              ; preds = %276, %266, %249
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br i1 false, label %248, label %256

256:                                              ; preds = %255
  unreachable

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %264

264:                                              ; preds = %263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %265

265:                                              ; preds = %264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit13, label %266

266:                                              ; preds = %265
  br i1 false, label %250, label %267

267:                                              ; preds = %266
  br i1 false, label %268, label %278

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  br i1 false, label %.loopexit13, label %276

276:                                              ; preds = %275
  br i1 false, label %250, label %277

277:                                              ; preds = %276
  unreachable

278:                                              ; preds = %267
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %285

285:                                              ; preds = %284
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %287

.loopexit15:                                      ; preds = %329, %324, %319, %314, %285, %291, %296, %301
  br label %286

286:                                              ; preds = %.loopexit15, %306
  unreachable

287:                                              ; preds = %285
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %291

291:                                              ; preds = %290
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %296

296:                                              ; preds = %295
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %301

301:                                              ; preds = %300
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %302

302:                                              ; preds = %301
  br i1 false, label %303, label %308

303:                                              ; preds = %330, %302
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br i1 false, label %286, label %307

307:                                              ; preds = %306
  unreachable

308:                                              ; preds = %302
  br i1 false, label %309, label %332

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  br i1 false, label %.loopexit15, label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br i1 false, label %.loopexit15, label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  br i1 false, label %.loopexit15, label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br i1 false, label %.loopexit15, label %330

330:                                              ; preds = %329
  br i1 false, label %303, label %331

331:                                              ; preds = %330
  unreachable

332:                                              ; preds = %308
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit20, label %340

.loopexit20:                                      ; preds = %393, %389, %385, %381, %374, %370, %366, %362, %338, %343, %347, %351
  br label %339

339:                                              ; preds = %.loopexit20, %355
  unreachable

340:                                              ; preds = %338
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit20, label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit20, label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit20, label %352

352:                                              ; preds = %351
  br i1 false, label %353, label %357

353:                                              ; preds = %394, %375, %352
  br label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  br i1 false, label %339, label %356

356:                                              ; preds = %355
  unreachable

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359
  br label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit20, label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit20, label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit20, label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  br label %374

374:                                              ; preds = %373
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit20, label %375

375:                                              ; preds = %374
  br i1 false, label %353, label %376

376:                                              ; preds = %375
  br i1 false, label %377, label %396

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  br i1 false, label %.loopexit20, label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384
  br i1 false, label %.loopexit20, label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br i1 false, label %.loopexit20, label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br i1 false, label %.loopexit20, label %394

394:                                              ; preds = %393
  br i1 false, label %353, label %395

395:                                              ; preds = %394
  unreachable

396:                                              ; preds = %376
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %403

403:                                              ; preds = %402
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit24, label %405

.loopexit24:                                      ; preds = %441, %433, %425, %417, %403
  br label %404

404:                                              ; preds = %.loopexit24, %409
  unreachable

405:                                              ; preds = %403
  br i1 false, label %406, label %411

406:                                              ; preds = %442, %434, %426, %418, %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  br i1 false, label %404, label %410

410:                                              ; preds = %409
  unreachable

411:                                              ; preds = %405
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %417

417:                                              ; preds = %416
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit24, label %418

418:                                              ; preds = %417
  br i1 false, label %406, label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %425

425:                                              ; preds = %424
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit24, label %426

426:                                              ; preds = %425
  br i1 false, label %406, label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %433

433:                                              ; preds = %432
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit24, label %434

434:                                              ; preds = %433
  br i1 false, label %406, label %435

435:                                              ; preds = %434
  br i1 false, label %436, label %444

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %440
  br i1 false, label %.loopexit24, label %442

442:                                              ; preds = %441
  br i1 false, label %406, label %443

443:                                              ; preds = %442
  unreachable

444:                                              ; preds = %435
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %445

445:                                              ; preds = %444
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %451

451:                                              ; preds = %450
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %452

452:                                              ; preds = %451
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %453

453:                                              ; preds = %452
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %455

.loopexit26:                                      ; preds = %485, %478, %453, %461
  br label %454

454:                                              ; preds = %.loopexit26, %468
  unreachable

455:                                              ; preds = %453
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456
  br label %458

458:                                              ; preds = %457
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %459

459:                                              ; preds = %458
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %460

460:                                              ; preds = %459
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %461

461:                                              ; preds = %460
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %462

462:                                              ; preds = %461
  br i1 false, label %463, label %470

463:                                              ; preds = %486, %462
  br label %464

464:                                              ; preds = %463
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  br label %467

467:                                              ; preds = %466
  br label %468

468:                                              ; preds = %467
  br i1 false, label %454, label %469

469:                                              ; preds = %468
  unreachable

470:                                              ; preds = %462
  br i1 false, label %471, label %488

471:                                              ; preds = %470
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  br i1 false, label %.loopexit26, label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %481
  br label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  br label %485

485:                                              ; preds = %484
  br i1 false, label %.loopexit26, label %486

486:                                              ; preds = %485
  br i1 false, label %463, label %487

487:                                              ; preds = %486
  unreachable

488:                                              ; preds = %470
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489
  br label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit30, label %496

.loopexit30:                                      ; preds = %520, %513, %506, %494
  br label %495

495:                                              ; preds = %.loopexit30, %499
  unreachable

496:                                              ; preds = %494
  br i1 false, label %497, label %501

497:                                              ; preds = %521, %514, %507, %496
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  br i1 false, label %495, label %500

500:                                              ; preds = %499
  unreachable

501:                                              ; preds = %496
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  br label %504

504:                                              ; preds = %503
  br label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit30, label %507

507:                                              ; preds = %506
  br i1 false, label %497, label %508

508:                                              ; preds = %507
  br label %509

509:                                              ; preds = %508
  br label %510

510:                                              ; preds = %509
  br label %511

511:                                              ; preds = %510
  br label %512

512:                                              ; preds = %511
  br label %513

513:                                              ; preds = %512
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit30, label %514

514:                                              ; preds = %513
  br i1 false, label %497, label %515

515:                                              ; preds = %514
  br i1 false, label %516, label %523

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  br i1 false, label %.loopexit30, label %521

521:                                              ; preds = %520
  br i1 false, label %497, label %522

522:                                              ; preds = %521
  unreachable

523:                                              ; preds = %515
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  br label %526

526:                                              ; preds = %525
  br label %527

527:                                              ; preds = %526
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %531

.loopexit32:                                      ; preds = %557, %553, %549, %529, %534, %538
  br label %530

530:                                              ; preds = %.loopexit32, %542
  unreachable

531:                                              ; preds = %529
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  br label %537

537:                                              ; preds = %536
  br label %538

538:                                              ; preds = %537
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %539

539:                                              ; preds = %538
  br i1 false, label %540, label %544

540:                                              ; preds = %558, %539
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  br i1 false, label %530, label %543

543:                                              ; preds = %542
  unreachable

544:                                              ; preds = %539
  br i1 false, label %545, label %560

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545
  br label %547

547:                                              ; preds = %546
  br label %548

548:                                              ; preds = %547
  br label %549

549:                                              ; preds = %548
  br i1 false, label %.loopexit32, label %550

550:                                              ; preds = %549
  br label %551

551:                                              ; preds = %550
  br label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br i1 false, label %.loopexit32, label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  br label %556

556:                                              ; preds = %555
  br label %557

557:                                              ; preds = %556
  br i1 false, label %.loopexit32, label %558

558:                                              ; preds = %557
  br i1 false, label %540, label %559

559:                                              ; preds = %558
  unreachable

560:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %561

561:                                              ; preds = %560
  br label %562

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %562
  br label %564

564:                                              ; preds = %563
  br label %565

565:                                              ; preds = %564
  br label %566

566:                                              ; preds = %565
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %567

567:                                              ; preds = %566
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %568

568:                                              ; preds = %567
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %570

.loopexit33:                                      ; preds = %584, %568
  br label %569

569:                                              ; preds = %.loopexit33, %575
  unreachable

570:                                              ; preds = %568
  br i1 false, label %571, label %577

571:                                              ; preds = %585, %570
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  br label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574
  br i1 false, label %569, label %576

576:                                              ; preds = %575
  unreachable

577:                                              ; preds = %570
  br i1 false, label %578, label %587

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  br label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583
  br i1 false, label %.loopexit33, label %585

585:                                              ; preds = %584
  br i1 false, label %571, label %586

586:                                              ; preds = %585
  unreachable

587:                                              ; preds = %577
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %588

588:                                              ; preds = %587
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit38, label %595

.loopexit38:                                      ; preds = %624, %620, %613, %609, %593, %598
  br label %594

594:                                              ; preds = %.loopexit38, %602
  unreachable

595:                                              ; preds = %593
  br label %596

596:                                              ; preds = %595
  br label %597

597:                                              ; preds = %596
  br label %598

598:                                              ; preds = %597
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit38, label %599

599:                                              ; preds = %598
  br i1 false, label %600, label %604

600:                                              ; preds = %625, %614, %599
  br label %601

601:                                              ; preds = %600
  br label %602

602:                                              ; preds = %601
  br i1 false, label %594, label %603

603:                                              ; preds = %602
  unreachable

604:                                              ; preds = %599
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit38, label %610

610:                                              ; preds = %609
  br label %611

611:                                              ; preds = %610
  br label %612

612:                                              ; preds = %611
  br label %613

613:                                              ; preds = %612
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit38, label %614

614:                                              ; preds = %613
  br i1 false, label %600, label %615

615:                                              ; preds = %614
  br i1 false, label %616, label %627

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  br i1 false, label %.loopexit38, label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  br label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  br i1 false, label %.loopexit38, label %625

625:                                              ; preds = %624
  br i1 false, label %600, label %626

626:                                              ; preds = %625
  unreachable

627:                                              ; preds = %615
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %634

634:                                              ; preds = %633
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit42, label %636

.loopexit42:                                      ; preds = %656, %648, %634
  br label %635

635:                                              ; preds = %.loopexit42, %640
  unreachable

636:                                              ; preds = %634
  br i1 false, label %637, label %642

637:                                              ; preds = %657, %649, %636
  br label %638

638:                                              ; preds = %637
  br label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639
  br i1 false, label %635, label %641

641:                                              ; preds = %640
  unreachable

642:                                              ; preds = %636
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %648

648:                                              ; preds = %647
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit42, label %649

649:                                              ; preds = %648
  br i1 false, label %637, label %650

650:                                              ; preds = %649
  br i1 false, label %651, label %659

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  br label %653

653:                                              ; preds = %652
  br label %654

654:                                              ; preds = %653
  br label %655

655:                                              ; preds = %654
  br label %656

656:                                              ; preds = %655
  br i1 false, label %.loopexit42, label %657

657:                                              ; preds = %656
  br i1 false, label %637, label %658

658:                                              ; preds = %657
  unreachable

659:                                              ; preds = %650
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %666

666:                                              ; preds = %665
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %668

.loopexit44:                                      ; preds = %690, %685, %666, %672
  br label %667

667:                                              ; preds = %.loopexit44, %677
  unreachable

668:                                              ; preds = %666
  br label %669

669:                                              ; preds = %668
  br label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %672

672:                                              ; preds = %671
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %673

673:                                              ; preds = %672
  br i1 false, label %674, label %679

674:                                              ; preds = %691, %673
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  br label %677

677:                                              ; preds = %676
  br i1 false, label %667, label %678

678:                                              ; preds = %677
  unreachable

679:                                              ; preds = %673
  br i1 false, label %680, label %693

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  br i1 false, label %.loopexit44, label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  br i1 false, label %.loopexit44, label %691

691:                                              ; preds = %690
  br i1 false, label %674, label %692

692:                                              ; preds = %691
  unreachable

693:                                              ; preds = %679
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %694

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  br label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  br label %699

699:                                              ; preds = %698
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %700

700:                                              ; preds = %699
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit49, label %702

.loopexit49:                                      ; preds = %737, %732, %724, %719, %700, %706
  br label %701

701:                                              ; preds = %.loopexit49, %711
  unreachable

702:                                              ; preds = %700
  br label %703

703:                                              ; preds = %702
  br label %704

704:                                              ; preds = %703
  br label %705

705:                                              ; preds = %704
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %706

706:                                              ; preds = %705
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit49, label %707

707:                                              ; preds = %706
  br i1 false, label %708, label %713

708:                                              ; preds = %738, %725, %707
  br label %709

709:                                              ; preds = %708
  br label %710

710:                                              ; preds = %709
  br label %711

711:                                              ; preds = %710
  br i1 false, label %701, label %712

712:                                              ; preds = %711
  unreachable

713:                                              ; preds = %707
  br label %714

714:                                              ; preds = %713
  br label %715

715:                                              ; preds = %714
  br label %716

716:                                              ; preds = %715
  br label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %719

719:                                              ; preds = %718
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit49, label %720

720:                                              ; preds = %719
  br label %721

721:                                              ; preds = %720
  br label %722

722:                                              ; preds = %721
  br label %723

723:                                              ; preds = %722
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %724

724:                                              ; preds = %723
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit49, label %725

725:                                              ; preds = %724
  br i1 false, label %708, label %726

726:                                              ; preds = %725
  br i1 false, label %727, label %740

727:                                              ; preds = %726
  br label %728

728:                                              ; preds = %727
  br label %729

729:                                              ; preds = %728
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %731
  br i1 false, label %.loopexit49, label %733

733:                                              ; preds = %732
  br label %734

734:                                              ; preds = %733
  br label %735

735:                                              ; preds = %734
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  br i1 false, label %.loopexit49, label %738

738:                                              ; preds = %737
  br i1 false, label %708, label %739

739:                                              ; preds = %738
  unreachable

740:                                              ; preds = %726
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %741 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %741, 0
  br i1 %.not, label %744, label %742

742:                                              ; preds = %740
  %743 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %743, ptr @n, align 4
  br label %745

744:                                              ; preds = %740
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %745

745:                                              ; preds = %744, %742
  %746 = phi i32 [ %.pre, %744 ], [ %743, %742 ]
  %747 = call i32 @Trial(i32 noundef %746)
  %.not1 = icmp eq i32 %747, 0
  br i1 %.not1, label %748, label %749

748:                                              ; preds = %745
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %753

749:                                              ; preds = %745
  %750 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %750, 2005
  br i1 %.not3, label %752, label %751

751:                                              ; preds = %749
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %752

752:                                              ; preds = %751, %749
  br label %753

753:                                              ; preds = %752, %748
  %754 = load i32, ptr @n, align 4
  %755 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %754) #3
  %756 = load i32, ptr @kount, align 4
  %757 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %756) #3
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
