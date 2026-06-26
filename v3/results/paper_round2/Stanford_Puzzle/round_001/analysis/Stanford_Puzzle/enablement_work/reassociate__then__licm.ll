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
  %11 = add nsw i32 %5, %1
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
  %11 = add nsw i32 %5, %1
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
  %.lcssa1 = phi i32 [ %24, %26 ]
  br label %34

31:                                               ; preds = %26
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 0, %33 ], [ %.lcssa1, %30 ]
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
  %11 = add nsw i32 %5, %1
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

9:                                                ; preds = %28, %8
  %10 = phi i32 [ %29, %28 ], [ 1, %8 ]
  %11 = icmp samesign ult i32 %10, 6
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %26, %12
  %14 = phi i32 [ %27, %26 ], [ 1, %12 ]
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = shl nuw nsw i32 %14, 3
  %invariant.op = add nuw nsw i32 %17, %10
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %25, %21 ], [ 1, %16 ]
  %20 = icmp samesign ult i32 %19, 6
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = shl nuw nsw i32 %19, 6
  %.reass = add nuw nsw i32 %22, %invariant.op
  %23 = zext nneg i32 %.reass to i64
  %24 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  %25 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !14

26:                                               ; preds = %18
  %27 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !15

28:                                               ; preds = %13
  %29 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !16

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %44, %30
  %32 = phi i32 [ %45, %44 ], [ 0, %30 ]
  %33 = icmp samesign ult i32 %32, 13
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %35
  br label %37

37:                                               ; preds = %40, %34
  %38 = phi i32 [ %43, %40 ], [ 0, %34 ]
  %39 = icmp samesign ult i32 %38, 512
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %36, i64 %41
  store i32 0, ptr %42, align 4
  %43 = add nuw nsw i32 %38, 1
  br label %37, !llvm.loop !17

44:                                               ; preds = %37
  %45 = add nuw nsw i32 %32, 1
  br label %31, !llvm.loop !18

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %64, %46
  %48 = phi i32 [ %65, %64 ], [ 0, %46 ]
  %49 = icmp samesign ult i32 %48, 4
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %62, %50
  %52 = phi i32 [ %63, %62 ], [ 0, %50 ]
  %53 = icmp samesign ult i32 %52, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = shl nuw nsw i32 %52, 3
  %56 = add nuw nsw i32 %55, %48
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %57
  br label %59

59:                                               ; preds = %61, %54
  %60 = phi i1 [ false, %61 ], [ true, %54 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  store i32 1, ptr %58, align 4
  br label %59, !llvm.loop !19

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %52, 1
  br label %51, !llvm.loop !20

64:                                               ; preds = %51
  %65 = add nuw nsw i32 %48, 1
  br label %47, !llvm.loop !21

66:                                               ; preds = %47
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %67

67:                                               ; preds = %84, %66
  %68 = phi i32 [ %85, %84 ], [ 0, %66 ]
  %69 = icmp samesign ult i32 %68, 2
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %83, %70
  %72 = phi i1 [ false, %83 ], [ true, %70 ]
  br i1 %72, label %73, label %84

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %77, %73
  %75 = phi i32 [ %82, %77 ], [ 0, %73 ]
  %76 = icmp samesign ult i32 %75, 4
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = shl nuw nsw i32 %75, 6
  %79 = add nuw nsw i32 %78, %68
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %80
  store i32 1, ptr %81, align 4
  %82 = add nuw nsw i32 %75, 1
  br label %74, !llvm.loop !22

83:                                               ; preds = %74
  br label %71, !llvm.loop !23

84:                                               ; preds = %71
  %85 = add nuw nsw i32 %68, 1
  br label %67, !llvm.loop !24

86:                                               ; preds = %67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = phi i1 [ false, %106 ], [ true, %86 ]
  br i1 %88, label %89, label %107

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %104, %89
  %91 = phi i32 [ %105, %104 ], [ 0, %89 ]
  %92 = icmp samesign ult i32 %91, 4
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = shl nuw nsw i32 %91, 3
  br label %95

95:                                               ; preds = %98, %93
  %96 = phi i32 [ %103, %98 ], [ 0, %93 ]
  %97 = icmp samesign ult i32 %96, 2
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = shl nuw nsw i32 %96, 6
  %100 = add nuw nsw i32 %99, %94
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nuw nsw i32 %96, 1
  br label %95, !llvm.loop !25

104:                                              ; preds = %95
  %105 = add nuw nsw i32 %91, 1
  br label %90, !llvm.loop !26

106:                                              ; preds = %90
  br label %87, !llvm.loop !27

107:                                              ; preds = %87
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %108

108:                                              ; preds = %125, %107
  %109 = phi i32 [ %126, %125 ], [ 0, %107 ]
  %110 = icmp samesign ult i32 %109, 2
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %123, %111
  %113 = phi i32 [ %124, %123 ], [ 0, %111 ]
  %114 = icmp samesign ult i32 %113, 4
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = shl nuw nsw i32 %113, 3
  %117 = add nuw nsw i32 %116, %109
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %118
  br label %120

120:                                              ; preds = %122, %115
  %121 = phi i1 [ false, %122 ], [ true, %115 ]
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  store i32 1, ptr %119, align 4
  br label %120, !llvm.loop !28

123:                                              ; preds = %120
  %124 = add nuw nsw i32 %113, 1
  br label %112, !llvm.loop !29

125:                                              ; preds = %112
  %126 = add nuw nsw i32 %109, 1
  br label %108, !llvm.loop !30

127:                                              ; preds = %108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %128

128:                                              ; preds = %145, %127
  %129 = phi i32 [ %146, %145 ], [ 0, %127 ]
  %130 = icmp samesign ult i32 %129, 4
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %144, %131
  %133 = phi i1 [ false, %144 ], [ true, %131 ]
  br i1 %133, label %134, label %145

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %138, %134
  %136 = phi i32 [ %143, %138 ], [ 0, %134 ]
  %137 = icmp samesign ult i32 %136, 2
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = shl nuw nsw i32 %136, 6
  %140 = add nuw nsw i32 %139, %129
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %141
  store i32 1, ptr %142, align 4
  %143 = add nuw nsw i32 %136, 1
  br label %135, !llvm.loop !31

144:                                              ; preds = %135
  br label %132, !llvm.loop !32

145:                                              ; preds = %132
  %146 = add nuw nsw i32 %129, 1
  br label %128, !llvm.loop !33

147:                                              ; preds = %128
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %148

148:                                              ; preds = %167, %147
  %149 = phi i1 [ false, %167 ], [ true, %147 ]
  br i1 %149, label %150, label %168

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %165, %150
  %152 = phi i32 [ %166, %165 ], [ 0, %150 ]
  %153 = icmp samesign ult i32 %152, 2
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = shl nuw nsw i32 %152, 3
  br label %156

156:                                              ; preds = %159, %154
  %157 = phi i32 [ %164, %159 ], [ 0, %154 ]
  %158 = icmp samesign ult i32 %157, 4
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = shl nuw nsw i32 %157, 6
  %161 = add nuw nsw i32 %160, %155
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %162
  store i32 1, ptr %163, align 4
  %164 = add nuw nsw i32 %157, 1
  br label %156, !llvm.loop !34

165:                                              ; preds = %156
  %166 = add nuw nsw i32 %152, 1
  br label %151, !llvm.loop !35

167:                                              ; preds = %151
  br label %148, !llvm.loop !36

168:                                              ; preds = %148
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %169

169:                                              ; preds = %182, %168
  %170 = phi i32 [ %183, %182 ], [ 0, %168 ]
  %171 = icmp samesign ult i32 %170, 3
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %173
  br label %175

175:                                              ; preds = %181, %172
  %176 = phi i1 [ false, %181 ], [ true, %172 ]
  br i1 %176, label %177, label %182

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %180, %177
  %179 = phi i1 [ false, %180 ], [ true, %177 ]
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  store i32 1, ptr %174, align 4
  br label %178, !llvm.loop !37

181:                                              ; preds = %178
  br label %175, !llvm.loop !38

182:                                              ; preds = %175
  %183 = add nuw nsw i32 %170, 1
  br label %169, !llvm.loop !39

184:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %185

185:                                              ; preds = %200, %184
  %186 = phi i1 [ false, %200 ], [ true, %184 ]
  br i1 %186, label %187, label %201

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %198, %187
  %189 = phi i32 [ %199, %198 ], [ 0, %187 ]
  %190 = icmp samesign ult i32 %189, 3
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = shl nuw nsw i32 %189, 3
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %193
  br label %195

195:                                              ; preds = %197, %191
  %196 = phi i1 [ false, %197 ], [ true, %191 ]
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  store i32 1, ptr %194, align 4
  br label %195, !llvm.loop !40

198:                                              ; preds = %195
  %199 = add nuw nsw i32 %189, 1
  br label %188, !llvm.loop !41

200:                                              ; preds = %188
  br label %185, !llvm.loop !42

201:                                              ; preds = %185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %202

202:                                              ; preds = %217, %201
  %203 = phi i1 [ false, %217 ], [ true, %201 ]
  br i1 %203, label %204, label %218

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %216, %204
  %206 = phi i1 [ false, %216 ], [ true, %204 ]
  br i1 %206, label %207, label %217

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %211, %207
  %209 = phi i32 [ %215, %211 ], [ 0, %207 ]
  %210 = icmp samesign ult i32 %209, 3
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = shl nuw nsw i32 %209, 6
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %213
  store i32 1, ptr %214, align 4
  %215 = add nuw nsw i32 %209, 1
  br label %208, !llvm.loop !43

216:                                              ; preds = %208
  br label %205, !llvm.loop !44

217:                                              ; preds = %205
  br label %202, !llvm.loop !45

218:                                              ; preds = %202
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %219

219:                                              ; preds = %236, %218
  %220 = phi i32 [ %237, %236 ], [ 0, %218 ]
  %221 = icmp samesign ult i32 %220, 2
  br i1 %221, label %222, label %238

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %234, %222
  %224 = phi i32 [ %235, %234 ], [ 0, %222 ]
  %225 = icmp samesign ult i32 %224, 2
  br i1 %225, label %226, label %236

226:                                              ; preds = %223
  %227 = shl nuw nsw i32 %224, 3
  %228 = add nuw nsw i32 %227, %220
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %229
  br label %231

231:                                              ; preds = %233, %226
  %232 = phi i1 [ false, %233 ], [ true, %226 ]
  br i1 %232, label %233, label %234

233:                                              ; preds = %231
  store i32 1, ptr %230, align 4
  br label %231, !llvm.loop !46

234:                                              ; preds = %231
  %235 = add nuw nsw i32 %224, 1
  br label %223, !llvm.loop !47

236:                                              ; preds = %223
  %237 = add nuw nsw i32 %220, 1
  br label %219, !llvm.loop !48

238:                                              ; preds = %219
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %239

239:                                              ; preds = %256, %238
  %240 = phi i32 [ %257, %256 ], [ 0, %238 ]
  %241 = icmp samesign ult i32 %240, 2
  br i1 %241, label %242, label %258

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %255, %242
  %244 = phi i1 [ false, %255 ], [ true, %242 ]
  br i1 %244, label %245, label %256

245:                                              ; preds = %243
  br label %246

246:                                              ; preds = %249, %245
  %247 = phi i32 [ %254, %249 ], [ 0, %245 ]
  %248 = icmp samesign ult i32 %247, 2
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = shl nuw nsw i32 %247, 6
  %251 = add nuw nsw i32 %250, %240
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %252
  store i32 1, ptr %253, align 4
  %254 = add nuw nsw i32 %247, 1
  br label %246, !llvm.loop !49

255:                                              ; preds = %246
  br label %243, !llvm.loop !50

256:                                              ; preds = %243
  %257 = add nuw nsw i32 %240, 1
  br label %239, !llvm.loop !51

258:                                              ; preds = %239
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %259

259:                                              ; preds = %278, %258
  %260 = phi i1 [ false, %278 ], [ true, %258 ]
  br i1 %260, label %261, label %279

261:                                              ; preds = %259
  br label %262

262:                                              ; preds = %276, %261
  %263 = phi i32 [ %277, %276 ], [ 0, %261 ]
  %264 = icmp samesign ult i32 %263, 2
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = shl nuw nsw i32 %263, 3
  br label %267

267:                                              ; preds = %270, %265
  %268 = phi i32 [ %275, %270 ], [ 0, %265 ]
  %269 = icmp samesign ult i32 %268, 2
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = shl nuw nsw i32 %268, 6
  %272 = add nuw nsw i32 %271, %266
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %273
  store i32 1, ptr %274, align 4
  %275 = add nuw nsw i32 %268, 1
  br label %267, !llvm.loop !52

276:                                              ; preds = %267
  %277 = add nuw nsw i32 %263, 1
  br label %262, !llvm.loop !53

278:                                              ; preds = %262
  br label %259, !llvm.loop !54

279:                                              ; preds = %259
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %280

280:                                              ; preds = %299, %279
  %281 = phi i32 [ %300, %299 ], [ 0, %279 ]
  %282 = icmp samesign ult i32 %281, 2
  br i1 %282, label %283, label %301

283:                                              ; preds = %280
  br label %284

284:                                              ; preds = %297, %283
  %285 = phi i32 [ %298, %297 ], [ 0, %283 ]
  %286 = icmp samesign ult i32 %285, 2
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = shl nuw nsw i32 %285, 3
  %invariant.op1 = add nuw nsw i32 %288, %281
  br label %289

289:                                              ; preds = %292, %287
  %290 = phi i32 [ %296, %292 ], [ 0, %287 ]
  %291 = icmp samesign ult i32 %290, 2
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = shl nuw nsw i32 %290, 6
  %.reass2 = add nuw nsw i32 %293, %invariant.op1
  %294 = zext nneg i32 %.reass2 to i64
  %295 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %294
  store i32 1, ptr %295, align 4
  %296 = add nuw nsw i32 %290, 1
  br label %289, !llvm.loop !55

297:                                              ; preds = %289
  %298 = add nuw nsw i32 %285, 1
  br label %284, !llvm.loop !56

299:                                              ; preds = %284
  %300 = add nuw nsw i32 %281, 1
  br label %280, !llvm.loop !57

301:                                              ; preds = %280
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %302 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %302, 0
  br i1 %.not, label %305, label %303

303:                                              ; preds = %301
  %304 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %304, ptr @n, align 4
  br label %306

305:                                              ; preds = %301
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %306

306:                                              ; preds = %305, %303
  %307 = phi i32 [ %.pre, %305 ], [ %304, %303 ]
  %308 = call i32 @Trial(i32 noundef %307)
  %.not1 = icmp eq i32 %308, 0
  br i1 %.not1, label %309, label %310

309:                                              ; preds = %306
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %314

310:                                              ; preds = %306
  %311 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %311, 2005
  br i1 %.not3, label %313, label %312

312:                                              ; preds = %310
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %313

313:                                              ; preds = %312, %310
  br label %314

314:                                              ; preds = %313, %309
  %315 = load i32, ptr @n, align 4
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %315) #3
  %317 = load i32, ptr @kount, align 4
  %318 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %317) #3
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
