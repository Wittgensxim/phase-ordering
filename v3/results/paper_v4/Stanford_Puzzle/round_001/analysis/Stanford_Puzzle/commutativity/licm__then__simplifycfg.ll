; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_000\output.ll'
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

4:                                                ; preds = %15, %2
  %5 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %17, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %10, %6
  %16 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

17:                                               ; preds = %4, %10
  %18 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %18
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

8:                                                ; preds = %1, %26
  %9 = phi i32 [ %27, %26 ], [ 1, %1 ]
  %10 = icmp samesign ult i32 %9, 6
  br i1 %10, label %11, label %28

11:                                               ; preds = %8, %24
  %12 = phi i32 [ %25, %24 ], [ 1, %8 ]
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = shl nuw nsw i32 %12, 3
  %invariant.op = or disjoint i32 %15, %9
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi i32 [ %23, %19 ], [ 1, %14 ]
  %18 = icmp samesign ult i32 %17, 6
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = shl nuw nsw i32 %17, 6
  %.reass = or disjoint i32 %20, %invariant.op
  %21 = zext nneg i32 %.reass to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %23 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !14

24:                                               ; preds = %16
  %25 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !15

26:                                               ; preds = %11
  %27 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !16

28:                                               ; preds = %8, %41
  %29 = phi i32 [ %42, %41 ], [ 0, %8 ]
  %30 = icmp samesign ult i32 %29, 13
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %32
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi i32 [ %40, %37 ], [ 0, %31 ]
  %36 = icmp samesign ult i32 %35, 512
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %38
  store i32 0, ptr %39, align 4
  %40 = add nuw nsw i32 %35, 1
  br label %34, !llvm.loop !17

41:                                               ; preds = %34
  %42 = add nuw nsw i32 %29, 1
  br label %28, !llvm.loop !18

43:                                               ; preds = %28, %59
  %44 = phi i32 [ %60, %59 ], [ 0, %28 ]
  %45 = icmp samesign ult i32 %44, 4
  br i1 %45, label %46, label %61

46:                                               ; preds = %43, %57
  %47 = phi i32 [ %58, %57 ], [ 0, %43 ]
  %48 = icmp samesign ult i32 %47, 2
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = shl nuw nsw i32 %47, 3
  %51 = or disjoint i32 %44, %50
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %52
  br label %54

54:                                               ; preds = %56, %49
  %55 = phi i1 [ false, %56 ], [ true, %49 ]
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i32 1, ptr %53, align 4
  br label %54, !llvm.loop !19

57:                                               ; preds = %54
  %58 = add nuw nsw i32 %47, 1
  br label %46, !llvm.loop !20

59:                                               ; preds = %46
  %60 = add nuw nsw i32 %44, 1
  br label %43, !llvm.loop !21

61:                                               ; preds = %43
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %62

62:                                               ; preds = %76, %61
  %63 = phi i32 [ %77, %76 ], [ 0, %61 ]
  %64 = icmp samesign ult i32 %63, 2
  br i1 %64, label %65, label %78

65:                                               ; preds = %67, %62
  %66 = phi i1 [ true, %62 ], [ false, %67 ]
  br i1 %66, label %67, label %76

67:                                               ; preds = %65, %70
  %68 = phi i32 [ %75, %70 ], [ 0, %65 ]
  %69 = icmp samesign ult i32 %68, 4
  br i1 %69, label %70, label %65, !llvm.loop !22

70:                                               ; preds = %67
  %71 = shl nuw nsw i32 %68, 6
  %72 = or disjoint i32 %63, %71
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nuw nsw i32 %68, 1
  br label %67, !llvm.loop !23

76:                                               ; preds = %65
  %77 = add nuw nsw i32 %63, 1
  br label %62, !llvm.loop !24

78:                                               ; preds = %62
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %79

79:                                               ; preds = %81, %78
  %80 = phi i1 [ true, %78 ], [ false, %81 ]
  br i1 %80, label %81, label %97

81:                                               ; preds = %79, %95
  %82 = phi i32 [ %96, %95 ], [ 0, %79 ]
  %83 = icmp samesign ult i32 %82, 4
  br i1 %83, label %84, label %79, !llvm.loop !25

84:                                               ; preds = %81
  %85 = shl nuw nsw i32 %82, 3
  br label %86

86:                                               ; preds = %89, %84
  %87 = phi i32 [ %94, %89 ], [ 0, %84 ]
  %88 = icmp samesign ult i32 %87, 2
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = shl nuw nsw i32 %87, 6
  %91 = or disjoint i32 %90, %85
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %92
  store i32 1, ptr %93, align 4
  %94 = add nuw nsw i32 %87, 1
  br label %86, !llvm.loop !26

95:                                               ; preds = %86
  %96 = add nuw nsw i32 %82, 1
  br label %81, !llvm.loop !27

97:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %98

98:                                               ; preds = %114, %97
  %99 = phi i32 [ %115, %114 ], [ 0, %97 ]
  %100 = icmp samesign ult i32 %99, 2
  br i1 %100, label %101, label %116

101:                                              ; preds = %98, %112
  %102 = phi i32 [ %113, %112 ], [ 0, %98 ]
  %103 = icmp samesign ult i32 %102, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = shl nuw nsw i32 %102, 3
  %106 = or disjoint i32 %99, %105
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %107
  br label %109

109:                                              ; preds = %111, %104
  %110 = phi i1 [ false, %111 ], [ true, %104 ]
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  store i32 1, ptr %108, align 4
  br label %109, !llvm.loop !28

112:                                              ; preds = %109
  %113 = add nuw nsw i32 %102, 1
  br label %101, !llvm.loop !29

114:                                              ; preds = %101
  %115 = add nuw nsw i32 %99, 1
  br label %98, !llvm.loop !30

116:                                              ; preds = %98
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %117

117:                                              ; preds = %131, %116
  %118 = phi i32 [ %132, %131 ], [ 0, %116 ]
  %119 = icmp samesign ult i32 %118, 4
  br i1 %119, label %120, label %133

120:                                              ; preds = %122, %117
  %121 = phi i1 [ true, %117 ], [ false, %122 ]
  br i1 %121, label %122, label %131

122:                                              ; preds = %120, %125
  %123 = phi i32 [ %130, %125 ], [ 0, %120 ]
  %124 = icmp samesign ult i32 %123, 2
  br i1 %124, label %125, label %120, !llvm.loop !31

125:                                              ; preds = %122
  %126 = shl nuw nsw i32 %123, 6
  %127 = or disjoint i32 %118, %126
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %128
  store i32 1, ptr %129, align 4
  %130 = add nuw nsw i32 %123, 1
  br label %122, !llvm.loop !32

131:                                              ; preds = %120
  %132 = add nuw nsw i32 %118, 1
  br label %117, !llvm.loop !33

133:                                              ; preds = %117
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %134

134:                                              ; preds = %136, %133
  %135 = phi i1 [ true, %133 ], [ false, %136 ]
  br i1 %135, label %136, label %152

136:                                              ; preds = %134, %150
  %137 = phi i32 [ %151, %150 ], [ 0, %134 ]
  %138 = icmp samesign ult i32 %137, 2
  br i1 %138, label %139, label %134, !llvm.loop !34

139:                                              ; preds = %136
  %140 = shl nuw nsw i32 %137, 3
  br label %141

141:                                              ; preds = %144, %139
  %142 = phi i32 [ %149, %144 ], [ 0, %139 ]
  %143 = icmp samesign ult i32 %142, 4
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = shl nuw nsw i32 %142, 6
  %146 = or disjoint i32 %145, %140
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nuw nsw i32 %142, 1
  br label %141, !llvm.loop !35

150:                                              ; preds = %141
  %151 = add nuw nsw i32 %137, 1
  br label %136, !llvm.loop !36

152:                                              ; preds = %134
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %153

153:                                              ; preds = %164, %152
  %154 = phi i32 [ %165, %164 ], [ 0, %152 ]
  %155 = icmp samesign ult i32 %154, 3
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = zext nneg i32 %154 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %157
  br label %159

159:                                              ; preds = %161, %156
  %160 = phi i1 [ true, %156 ], [ false, %161 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159, %163
  %162 = phi i1 [ false, %163 ], [ true, %159 ]
  br i1 %162, label %163, label %159, !llvm.loop !37

163:                                              ; preds = %161
  store i32 1, ptr %158, align 4
  br label %161, !llvm.loop !38

164:                                              ; preds = %159
  %165 = add nuw nsw i32 %154, 1
  br label %153, !llvm.loop !39

166:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %167

167:                                              ; preds = %169, %166
  %168 = phi i1 [ true, %166 ], [ false, %169 ]
  br i1 %168, label %169, label %181

169:                                              ; preds = %167, %179
  %170 = phi i32 [ %180, %179 ], [ 0, %167 ]
  %171 = icmp samesign ult i32 %170, 3
  br i1 %171, label %172, label %167, !llvm.loop !40

172:                                              ; preds = %169
  %173 = shl nuw nsw i32 %170, 3
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %174
  br label %176

176:                                              ; preds = %178, %172
  %177 = phi i1 [ false, %178 ], [ true, %172 ]
  br i1 %177, label %178, label %179

178:                                              ; preds = %176
  store i32 1, ptr %175, align 4
  br label %176, !llvm.loop !41

179:                                              ; preds = %176
  %180 = add nuw nsw i32 %170, 1
  br label %169, !llvm.loop !42

181:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %182

182:                                              ; preds = %184, %181
  %183 = phi i1 [ true, %181 ], [ false, %184 ]
  br i1 %183, label %184, label %194

184:                                              ; preds = %186, %182
  %185 = phi i1 [ true, %182 ], [ false, %186 ]
  br i1 %185, label %186, label %182, !llvm.loop !43

186:                                              ; preds = %184, %189
  %187 = phi i32 [ %193, %189 ], [ 0, %184 ]
  %188 = icmp samesign ult i32 %187, 3
  br i1 %188, label %189, label %184, !llvm.loop !44

189:                                              ; preds = %186
  %190 = shl nuw nsw i32 %187, 6
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %187, 1
  br label %186, !llvm.loop !45

194:                                              ; preds = %182
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %195

195:                                              ; preds = %211, %194
  %196 = phi i32 [ %212, %211 ], [ 0, %194 ]
  %197 = icmp samesign ult i32 %196, 2
  br i1 %197, label %198, label %213

198:                                              ; preds = %195, %209
  %199 = phi i32 [ %210, %209 ], [ 0, %195 ]
  %200 = icmp samesign ult i32 %199, 2
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = shl nuw nsw i32 %199, 3
  %203 = or disjoint i32 %196, %202
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %204
  br label %206

206:                                              ; preds = %208, %201
  %207 = phi i1 [ false, %208 ], [ true, %201 ]
  br i1 %207, label %208, label %209

208:                                              ; preds = %206
  store i32 1, ptr %205, align 4
  br label %206, !llvm.loop !46

209:                                              ; preds = %206
  %210 = add nuw nsw i32 %199, 1
  br label %198, !llvm.loop !47

211:                                              ; preds = %198
  %212 = add nuw nsw i32 %196, 1
  br label %195, !llvm.loop !48

213:                                              ; preds = %195
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %214

214:                                              ; preds = %228, %213
  %215 = phi i32 [ %229, %228 ], [ 0, %213 ]
  %216 = icmp samesign ult i32 %215, 2
  br i1 %216, label %217, label %230

217:                                              ; preds = %219, %214
  %218 = phi i1 [ true, %214 ], [ false, %219 ]
  br i1 %218, label %219, label %228

219:                                              ; preds = %217, %222
  %220 = phi i32 [ %227, %222 ], [ 0, %217 ]
  %221 = icmp samesign ult i32 %220, 2
  br i1 %221, label %222, label %217, !llvm.loop !49

222:                                              ; preds = %219
  %223 = shl nuw nsw i32 %220, 6
  %224 = or disjoint i32 %215, %223
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %225
  store i32 1, ptr %226, align 4
  %227 = add nuw nsw i32 %220, 1
  br label %219, !llvm.loop !50

228:                                              ; preds = %217
  %229 = add nuw nsw i32 %215, 1
  br label %214, !llvm.loop !51

230:                                              ; preds = %214
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %231

231:                                              ; preds = %233, %230
  %232 = phi i1 [ true, %230 ], [ false, %233 ]
  br i1 %232, label %233, label %249

233:                                              ; preds = %231, %247
  %234 = phi i32 [ %248, %247 ], [ 0, %231 ]
  %235 = icmp samesign ult i32 %234, 2
  br i1 %235, label %236, label %231, !llvm.loop !52

236:                                              ; preds = %233
  %237 = shl nuw nsw i32 %234, 3
  br label %238

238:                                              ; preds = %241, %236
  %239 = phi i32 [ %246, %241 ], [ 0, %236 ]
  %240 = icmp samesign ult i32 %239, 2
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = shl nuw nsw i32 %239, 6
  %243 = or disjoint i32 %242, %237
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %244
  store i32 1, ptr %245, align 4
  %246 = add nuw nsw i32 %239, 1
  br label %238, !llvm.loop !53

247:                                              ; preds = %238
  %248 = add nuw nsw i32 %234, 1
  br label %233, !llvm.loop !54

249:                                              ; preds = %231
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %250

250:                                              ; preds = %268, %249
  %251 = phi i32 [ %269, %268 ], [ 0, %249 ]
  %252 = icmp samesign ult i32 %251, 2
  br i1 %252, label %253, label %270

253:                                              ; preds = %250, %266
  %254 = phi i32 [ %267, %266 ], [ 0, %250 ]
  %255 = icmp samesign ult i32 %254, 2
  br i1 %255, label %256, label %268

256:                                              ; preds = %253
  %257 = shl nuw nsw i32 %254, 3
  %invariant.op1 = or disjoint i32 %257, %251
  br label %258

258:                                              ; preds = %261, %256
  %259 = phi i32 [ %265, %261 ], [ 0, %256 ]
  %260 = icmp samesign ult i32 %259, 2
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = shl nuw nsw i32 %259, 6
  %.reass2 = or disjoint i32 %262, %invariant.op1
  %263 = zext nneg i32 %.reass2 to i64
  %264 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %263
  store i32 1, ptr %264, align 4
  %265 = add nuw nsw i32 %259, 1
  br label %258, !llvm.loop !55

266:                                              ; preds = %258
  %267 = add nuw nsw i32 %254, 1
  br label %253, !llvm.loop !56

268:                                              ; preds = %253
  %269 = add nuw nsw i32 %251, 1
  br label %250, !llvm.loop !57

270:                                              ; preds = %250
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %271 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %271, 0
  br i1 %.not, label %274, label %272

272:                                              ; preds = %270
  %273 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %273, ptr @n, align 4
  br label %275

274:                                              ; preds = %270
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %275

275:                                              ; preds = %274, %272
  %276 = phi i32 [ %.pre, %274 ], [ %273, %272 ]
  %277 = call i32 @Trial(i32 noundef %276)
  %.not1 = icmp eq i32 %277, 0
  br i1 %.not1, label %278, label %279

278:                                              ; preds = %275
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %282

279:                                              ; preds = %275
  %280 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %280, 2005
  br i1 %.not3, label %282, label %281

281:                                              ; preds = %279
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %282

282:                                              ; preds = %279, %281, %278
  %283 = load i32, ptr @n, align 4
  %284 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %283) #3
  %285 = load i32, ptr @kount, align 4
  %286 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %285) #3
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
