; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_000\output.ll'
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

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %19, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %6
  %18 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

19:                                               ; preds = %4
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

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %7, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 512
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %29, %8
  %10 = phi i32 [ %30, %29 ], [ 1, %8 ]
  %11 = icmp samesign ult i32 %10, 6
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %27, %12
  %14 = phi i32 [ %28, %27 ], [ 1, %12 ]
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = shl nuw nsw i32 %14, 3
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %26, %21 ], [ 1, %16 ]
  %20 = icmp samesign ult i32 %19, 6
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = shl nuw nsw i32 %19, 6
  %23 = or disjoint i32 %17, %22
  %.reass = or disjoint i32 %23, %10
  %24 = zext nneg i32 %.reass to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  %26 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !14

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !15

29:                                               ; preds = %13
  %30 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !16

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %45, %31
  %33 = phi i32 [ %46, %45 ], [ 0, %31 ]
  %34 = icmp samesign ult i32 %33, 13
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %36
  br label %38

38:                                               ; preds = %41, %35
  %39 = phi i32 [ %44, %41 ], [ 0, %35 ]
  %40 = icmp samesign ult i32 %39, 512
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %42
  store i32 0, ptr %43, align 4
  %44 = add nuw nsw i32 %39, 1
  br label %38, !llvm.loop !17

45:                                               ; preds = %38
  %46 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !18

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %65, %47
  %49 = phi i32 [ %66, %65 ], [ 0, %47 ]
  %50 = icmp samesign ult i32 %49, 4
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %63, %51
  %53 = phi i32 [ %64, %63 ], [ 0, %51 ]
  %54 = icmp samesign ult i32 %53, 2
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = shl nuw nsw i32 %53, 3
  %57 = or disjoint i32 %49, %56
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %58
  br label %60

60:                                               ; preds = %62, %55
  %61 = phi i1 [ false, %62 ], [ true, %55 ]
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  store i32 1, ptr %59, align 4
  br label %60, !llvm.loop !19

63:                                               ; preds = %60
  %64 = add nuw nsw i32 %53, 1
  br label %52, !llvm.loop !20

65:                                               ; preds = %52
  %66 = add nuw nsw i32 %49, 1
  br label %48, !llvm.loop !21

67:                                               ; preds = %48
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %68

68:                                               ; preds = %85, %67
  %69 = phi i32 [ %86, %85 ], [ 0, %67 ]
  %70 = icmp samesign ult i32 %69, 2
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %84, %71
  %73 = phi i1 [ false, %84 ], [ true, %71 ]
  br i1 %73, label %74, label %85

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %78, %74
  %76 = phi i32 [ %83, %78 ], [ 0, %74 ]
  %77 = icmp samesign ult i32 %76, 4
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = shl nuw nsw i32 %76, 6
  %80 = or disjoint i32 %69, %79
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nuw nsw i32 %76, 1
  br label %75, !llvm.loop !22

84:                                               ; preds = %75
  br label %72, !llvm.loop !23

85:                                               ; preds = %72
  %86 = add nuw nsw i32 %69, 1
  br label %68, !llvm.loop !24

87:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = phi i1 [ false, %107 ], [ true, %87 ]
  br i1 %89, label %90, label %108

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %105, %90
  %92 = phi i32 [ %106, %105 ], [ 0, %90 ]
  %93 = icmp samesign ult i32 %92, 4
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = shl nuw nsw i32 %92, 3
  br label %96

96:                                               ; preds = %99, %94
  %97 = phi i32 [ %104, %99 ], [ 0, %94 ]
  %98 = icmp samesign ult i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = shl nuw nsw i32 %97, 6
  %101 = or disjoint i32 %100, %95
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %102
  store i32 1, ptr %103, align 4
  %104 = add nuw nsw i32 %97, 1
  br label %96, !llvm.loop !25

105:                                              ; preds = %96
  %106 = add nuw nsw i32 %92, 1
  br label %91, !llvm.loop !26

107:                                              ; preds = %91
  br label %88, !llvm.loop !27

108:                                              ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %109

109:                                              ; preds = %126, %108
  %110 = phi i32 [ %127, %126 ], [ 0, %108 ]
  %111 = icmp samesign ult i32 %110, 2
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %124, %112
  %114 = phi i32 [ %125, %124 ], [ 0, %112 ]
  %115 = icmp samesign ult i32 %114, 4
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = shl nuw nsw i32 %114, 3
  %118 = or disjoint i32 %110, %117
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %119
  br label %121

121:                                              ; preds = %123, %116
  %122 = phi i1 [ false, %123 ], [ true, %116 ]
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  store i32 1, ptr %120, align 4
  br label %121, !llvm.loop !28

124:                                              ; preds = %121
  %125 = add nuw nsw i32 %114, 1
  br label %113, !llvm.loop !29

126:                                              ; preds = %113
  %127 = add nuw nsw i32 %110, 1
  br label %109, !llvm.loop !30

128:                                              ; preds = %109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %129

129:                                              ; preds = %146, %128
  %130 = phi i32 [ %147, %146 ], [ 0, %128 ]
  %131 = icmp samesign ult i32 %130, 4
  br i1 %131, label %132, label %148

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %145, %132
  %134 = phi i1 [ false, %145 ], [ true, %132 ]
  br i1 %134, label %135, label %146

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %139, %135
  %137 = phi i32 [ %144, %139 ], [ 0, %135 ]
  %138 = icmp samesign ult i32 %137, 2
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = shl nuw nsw i32 %137, 6
  %141 = or disjoint i32 %130, %140
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %142
  store i32 1, ptr %143, align 4
  %144 = add nuw nsw i32 %137, 1
  br label %136, !llvm.loop !31

145:                                              ; preds = %136
  br label %133, !llvm.loop !32

146:                                              ; preds = %133
  %147 = add nuw nsw i32 %130, 1
  br label %129, !llvm.loop !33

148:                                              ; preds = %129
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %149

149:                                              ; preds = %168, %148
  %150 = phi i1 [ false, %168 ], [ true, %148 ]
  br i1 %150, label %151, label %169

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %166, %151
  %153 = phi i32 [ %167, %166 ], [ 0, %151 ]
  %154 = icmp samesign ult i32 %153, 2
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = shl nuw nsw i32 %153, 3
  br label %157

157:                                              ; preds = %160, %155
  %158 = phi i32 [ %165, %160 ], [ 0, %155 ]
  %159 = icmp samesign ult i32 %158, 4
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = shl nuw nsw i32 %158, 6
  %162 = or disjoint i32 %161, %156
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %158, 1
  br label %157, !llvm.loop !34

166:                                              ; preds = %157
  %167 = add nuw nsw i32 %153, 1
  br label %152, !llvm.loop !35

168:                                              ; preds = %152
  br label %149, !llvm.loop !36

169:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %170

170:                                              ; preds = %183, %169
  %171 = phi i32 [ %184, %183 ], [ 0, %169 ]
  %172 = icmp samesign ult i32 %171, 3
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = zext nneg i32 %171 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %174
  br label %176

176:                                              ; preds = %182, %173
  %177 = phi i1 [ false, %182 ], [ true, %173 ]
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %181, %178
  %180 = phi i1 [ false, %181 ], [ true, %178 ]
  br i1 %180, label %181, label %182

181:                                              ; preds = %179
  store i32 1, ptr %175, align 4
  br label %179, !llvm.loop !37

182:                                              ; preds = %179
  br label %176, !llvm.loop !38

183:                                              ; preds = %176
  %184 = add nuw nsw i32 %171, 1
  br label %170, !llvm.loop !39

185:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %186

186:                                              ; preds = %201, %185
  %187 = phi i1 [ false, %201 ], [ true, %185 ]
  br i1 %187, label %188, label %202

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %199, %188
  %190 = phi i32 [ %200, %199 ], [ 0, %188 ]
  %191 = icmp samesign ult i32 %190, 3
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = shl nuw nsw i32 %190, 3
  %194 = zext nneg i32 %193 to i64
  %195 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %194
  br label %196

196:                                              ; preds = %198, %192
  %197 = phi i1 [ false, %198 ], [ true, %192 ]
  br i1 %197, label %198, label %199

198:                                              ; preds = %196
  store i32 1, ptr %195, align 4
  br label %196, !llvm.loop !40

199:                                              ; preds = %196
  %200 = add nuw nsw i32 %190, 1
  br label %189, !llvm.loop !41

201:                                              ; preds = %189
  br label %186, !llvm.loop !42

202:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %203

203:                                              ; preds = %218, %202
  %204 = phi i1 [ false, %218 ], [ true, %202 ]
  br i1 %204, label %205, label %219

205:                                              ; preds = %203
  br label %206

206:                                              ; preds = %217, %205
  %207 = phi i1 [ false, %217 ], [ true, %205 ]
  br i1 %207, label %208, label %218

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %212, %208
  %210 = phi i32 [ %216, %212 ], [ 0, %208 ]
  %211 = icmp samesign ult i32 %210, 3
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = shl nuw nsw i32 %210, 6
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %214
  store i32 1, ptr %215, align 4
  %216 = add nuw nsw i32 %210, 1
  br label %209, !llvm.loop !43

217:                                              ; preds = %209
  br label %206, !llvm.loop !44

218:                                              ; preds = %206
  br label %203, !llvm.loop !45

219:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %220

220:                                              ; preds = %237, %219
  %221 = phi i32 [ %238, %237 ], [ 0, %219 ]
  %222 = icmp samesign ult i32 %221, 2
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %235, %223
  %225 = phi i32 [ %236, %235 ], [ 0, %223 ]
  %226 = icmp samesign ult i32 %225, 2
  br i1 %226, label %227, label %237

227:                                              ; preds = %224
  %228 = shl nuw nsw i32 %225, 3
  %229 = or disjoint i32 %221, %228
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %230
  br label %232

232:                                              ; preds = %234, %227
  %233 = phi i1 [ false, %234 ], [ true, %227 ]
  br i1 %233, label %234, label %235

234:                                              ; preds = %232
  store i32 1, ptr %231, align 4
  br label %232, !llvm.loop !46

235:                                              ; preds = %232
  %236 = add nuw nsw i32 %225, 1
  br label %224, !llvm.loop !47

237:                                              ; preds = %224
  %238 = add nuw nsw i32 %221, 1
  br label %220, !llvm.loop !48

239:                                              ; preds = %220
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %240

240:                                              ; preds = %257, %239
  %241 = phi i32 [ %258, %257 ], [ 0, %239 ]
  %242 = icmp samesign ult i32 %241, 2
  br i1 %242, label %243, label %259

243:                                              ; preds = %240
  br label %244

244:                                              ; preds = %256, %243
  %245 = phi i1 [ false, %256 ], [ true, %243 ]
  br i1 %245, label %246, label %257

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %250, %246
  %248 = phi i32 [ %255, %250 ], [ 0, %246 ]
  %249 = icmp samesign ult i32 %248, 2
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = shl nuw nsw i32 %248, 6
  %252 = or disjoint i32 %241, %251
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %253
  store i32 1, ptr %254, align 4
  %255 = add nuw nsw i32 %248, 1
  br label %247, !llvm.loop !49

256:                                              ; preds = %247
  br label %244, !llvm.loop !50

257:                                              ; preds = %244
  %258 = add nuw nsw i32 %241, 1
  br label %240, !llvm.loop !51

259:                                              ; preds = %240
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %260

260:                                              ; preds = %279, %259
  %261 = phi i1 [ false, %279 ], [ true, %259 ]
  br i1 %261, label %262, label %280

262:                                              ; preds = %260
  br label %263

263:                                              ; preds = %277, %262
  %264 = phi i32 [ %278, %277 ], [ 0, %262 ]
  %265 = icmp samesign ult i32 %264, 2
  br i1 %265, label %266, label %279

266:                                              ; preds = %263
  %267 = shl nuw nsw i32 %264, 3
  br label %268

268:                                              ; preds = %271, %266
  %269 = phi i32 [ %276, %271 ], [ 0, %266 ]
  %270 = icmp samesign ult i32 %269, 2
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = shl nuw nsw i32 %269, 6
  %273 = or disjoint i32 %272, %267
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %274
  store i32 1, ptr %275, align 4
  %276 = add nuw nsw i32 %269, 1
  br label %268, !llvm.loop !52

277:                                              ; preds = %268
  %278 = add nuw nsw i32 %264, 1
  br label %263, !llvm.loop !53

279:                                              ; preds = %263
  br label %260, !llvm.loop !54

280:                                              ; preds = %260
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %281

281:                                              ; preds = %301, %280
  %282 = phi i32 [ %302, %301 ], [ 0, %280 ]
  %283 = icmp samesign ult i32 %282, 2
  br i1 %283, label %284, label %303

284:                                              ; preds = %281
  br label %285

285:                                              ; preds = %299, %284
  %286 = phi i32 [ %300, %299 ], [ 0, %284 ]
  %287 = icmp samesign ult i32 %286, 2
  br i1 %287, label %288, label %301

288:                                              ; preds = %285
  %289 = shl nuw nsw i32 %286, 3
  br label %290

290:                                              ; preds = %293, %288
  %291 = phi i32 [ %298, %293 ], [ 0, %288 ]
  %292 = icmp samesign ult i32 %291, 2
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = shl nuw nsw i32 %291, 6
  %295 = or disjoint i32 %289, %294
  %.reass2 = or disjoint i32 %295, %282
  %296 = zext nneg i32 %.reass2 to i64
  %297 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %296
  store i32 1, ptr %297, align 4
  %298 = add nuw nsw i32 %291, 1
  br label %290, !llvm.loop !55

299:                                              ; preds = %290
  %300 = add nuw nsw i32 %286, 1
  br label %285, !llvm.loop !56

301:                                              ; preds = %285
  %302 = add nuw nsw i32 %282, 1
  br label %281, !llvm.loop !57

303:                                              ; preds = %281
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %304 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %304, 0
  br i1 %.not, label %307, label %305

305:                                              ; preds = %303
  %306 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %306, ptr @n, align 4
  br label %308

307:                                              ; preds = %303
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %308

308:                                              ; preds = %307, %305
  %309 = phi i32 [ %.pre, %307 ], [ %306, %305 ]
  %310 = call i32 @Trial(i32 noundef %309)
  %.not1 = icmp eq i32 %310, 0
  br i1 %.not1, label %311, label %312

311:                                              ; preds = %308
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %316

312:                                              ; preds = %308
  %313 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %313, 2005
  br i1 %.not3, label %315, label %314

314:                                              ; preds = %312
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %315

315:                                              ; preds = %314, %312
  br label %316

316:                                              ; preds = %315, %311
  %317 = load i32, ptr @n, align 4
  %318 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %317) #3
  %319 = load i32, ptr @kount, align 4
  %320 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %319) #3
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
