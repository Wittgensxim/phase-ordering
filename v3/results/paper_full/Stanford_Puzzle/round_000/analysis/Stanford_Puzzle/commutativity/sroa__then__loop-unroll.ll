; ModuleID = 'results\paper_full\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %24, %2
  %.0 = phi i32 [ 0, %2 ], [ %25, %24 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %27

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %8
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21
  %.08 = phi i32 [ 0, %21 ], [ 1, %26 ]
  ret i32 %.08
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %33
  store i32 %29, ptr %34, align 4
  br label %35

35:                                               ; preds = %44, %22
  %.1 = phi i32 [ %1, %22 ], [ %45, %44 ]
  %36 = icmp sle i32 %.1, 511
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = sext i32 %.1 to i64
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  %.1.lcssa16 = phi i32 [ %.1, %37 ]
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %.1, 1
  br label %35, !llvm.loop !10

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %42
  %.015 = phi i32 [ %.1.lcssa16, %42 ], [ 0, %46 ]
  ret i32 %.015
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

22:                                               ; preds = %3
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %33
  store i32 %29, ptr %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %28, %1
  %.012 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %5 = icmp sle i32 %.012, 12
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = sext i32 %.012 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = call i32 @Fit(i32 noundef %.012, i32 noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 @Place(i32 noundef %.012, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %17
  br label %31

24:                                               ; preds = %21
  call void @Remove(i32 noundef %.012, i32 noundef %0)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %14
  br label %27

27:                                               ; preds = %26, %6
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.012, 1
  br label %4, !llvm.loop !12

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %23
  %.0 = phi i32 [ 1, %23 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  br label %2

2:                                                ; preds = %1
  %3 = sext i32 %.0 to i64
  %4 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %3
  store i32 1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  %6 = add nuw nsw i32 %.0, 1
  br label %7

7:                                                ; preds = %5
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %8
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.0, 2
  %12 = icmp samesign ule i32 %11, 511
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %.0, 3
  br label %1, !llvm.loop !13

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %205, %18
  %.0153 = phi i32 [ 1, %18 ], [ %206, %205 ]
  %20 = icmp sle i32 %.0153, 5
  br i1 %20, label %21, label %207

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %.0153, 72
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.0153, 136
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %32
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.0153, 200
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %37
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.0153, 264
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %42
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = add nsw i32 %.0153, 328
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %47
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %45
  br i1 false, label %.loopexit, label %57

.loopexit:                                        ; preds = %49, %85, %114, %143, %172
  %.0153.lcssa168.ph = phi i32 [ %.0153, %172 ], [ %.0153, %143 ], [ %.0153, %114 ], [ %.0153, %85 ], [ %.0153, %49 ]
  %.0139.lcssa167.ph = phi i32 [ 5, %172 ], [ 4, %143 ], [ 3, %114 ], [ 2, %85 ], [ 1, %49 ]
  br label %50

50:                                               ; preds = %.loopexit, %201
  %.0153.lcssa168 = phi i32 [ %.0153.lcssa170, %201 ], [ %.0153.lcssa168.ph, %.loopexit ]
  %.0139.lcssa167 = phi i32 [ 6, %201 ], [ %.0139.lcssa167.ph, %.loopexit ]
  %51 = add nsw i32 %.0139.lcssa167, 48
  %52 = mul nsw i32 8, %51
  %53 = add nsw i32 %.0153.lcssa168, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %54
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %50
  unreachable

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %.0153, 80
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65
  %67 = add nsw i32 %.0153, 144
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %68
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = add nsw i32 %.0153, 208
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %73
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %.0153, 272
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %78
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80
  %82 = add nsw i32 %.0153, 336
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %83
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %81
  br i1 false, label %.loopexit, label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  %91 = add nsw i32 %.0153, 88
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %92
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  %96 = add nsw i32 %.0153, 152
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %97
  store i32 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  %101 = add nsw i32 %.0153, 216
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %102
  store i32 0, ptr %103, align 4
  br label %104

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = add nsw i32 %.0153, 280
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %107
  store i32 0, ptr %108, align 4
  br label %109

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = add nsw i32 %.0153, 344
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %112
  store i32 0, ptr %113, align 4
  br label %114

114:                                              ; preds = %110
  br i1 false, label %.loopexit, label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %.0153, 96
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %121
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = add nsw i32 %.0153, 160
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %126
  store i32 0, ptr %127, align 4
  br label %128

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128
  %130 = add nsw i32 %.0153, 224
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %131
  store i32 0, ptr %132, align 4
  br label %133

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = add nsw i32 %.0153, 288
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %136
  store i32 0, ptr %137, align 4
  br label %138

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138
  %140 = add nsw i32 %.0153, 352
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %141
  store i32 0, ptr %142, align 4
  br label %143

143:                                              ; preds = %139
  br i1 false, label %.loopexit, label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %.0153, 104
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %150
  store i32 0, ptr %151, align 4
  br label %152

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152
  %154 = add nsw i32 %.0153, 168
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %155
  store i32 0, ptr %156, align 4
  br label %157

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157
  %159 = add nsw i32 %.0153, 232
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %160
  store i32 0, ptr %161, align 4
  br label %162

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %162
  %164 = add nsw i32 %.0153, 296
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %165
  store i32 0, ptr %166, align 4
  br label %167

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167
  %169 = add nsw i32 %.0153, 360
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %170
  store i32 0, ptr %171, align 4
  br label %172

172:                                              ; preds = %168
  br i1 false, label %.loopexit, label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br i1 false, label %175, label %204

175:                                              ; preds = %174
  %.0153.lcssa170 = phi i32 [ %.0153, %174 ]
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  %178 = add nsw i32 %.0153.lcssa170, 112
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %179
  store i32 0, ptr %180, align 4
  br label %181

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181
  %183 = add nsw i32 %.0153.lcssa170, 176
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %184
  store i32 0, ptr %185, align 4
  br label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186
  %188 = add nsw i32 %.0153.lcssa170, 240
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %189
  store i32 0, ptr %190, align 4
  br label %191

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191
  %193 = add nsw i32 %.0153.lcssa170, 304
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %194
  store i32 0, ptr %195, align 4
  br label %196

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196
  %198 = add nsw i32 %.0153.lcssa170, 368
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %199
  store i32 0, ptr %200, align 4
  br label %201

201:                                              ; preds = %197
  br i1 false, label %50, label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  unreachable

204:                                              ; preds = %174
  br label %205

205:                                              ; preds = %204
  %206 = add nsw i32 %.0153, 1
  br label %19, !llvm.loop !14

207:                                              ; preds = %19
  br label %208

208:                                              ; preds = %235, %207
  %.1154 = phi i32 [ 0, %207 ], [ %236, %235 ]
  %209 = icmp sle i32 %.1154, 12
  br i1 %209, label %210, label %237

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %232, %210
  %.1 = phi i32 [ 0, %210 ], [ %233, %232 ]
  br label %212

212:                                              ; preds = %211
  %213 = sext i32 %.1154 to i64
  %214 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %213
  %215 = sext i32 %.1 to i64
  %216 = getelementptr inbounds [512 x i32], ptr %214, i64 0, i64 %215
  store i32 0, ptr %216, align 4
  br label %217

217:                                              ; preds = %212
  %218 = add nuw nsw i32 %.1, 1
  br label %219

219:                                              ; preds = %217
  %220 = sext i32 %.1154 to i64
  %221 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %220
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds [512 x i32], ptr %221, i64 0, i64 %222
  store i32 0, ptr %223, align 4
  br label %224

224:                                              ; preds = %219
  %225 = add nuw nsw i32 %.1, 2
  %226 = icmp samesign ule i32 %225, 511
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = sext i32 %.1154 to i64
  %229 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %228
  %230 = sext i32 %225 to i64
  %231 = getelementptr inbounds [512 x i32], ptr %229, i64 0, i64 %230
  store i32 0, ptr %231, align 4
  br label %232

232:                                              ; preds = %227
  %233 = add nuw nsw i32 %.1, 3
  br label %211, !llvm.loop !15

234:                                              ; preds = %224
  br label %235

235:                                              ; preds = %234
  %236 = add nsw i32 %.1154, 1
  br label %208, !llvm.loop !16

237:                                              ; preds = %208
  br label %238

238:                                              ; preds = %237
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
  store i32 1, ptr @p, align 4
  br label %244

244:                                              ; preds = %243
  br i1 false, label %.loopexit175, label %252

.loopexit175:                                     ; preds = %330, %324, %314, %308, %298, %292, %282, %276, %244, %257
  %.2155.lcssa172.ph = phi i32 [ 0, %257 ], [ 0, %244 ], [ 1, %276 ], [ 1, %282 ], [ 2, %292 ], [ 2, %298 ], [ 3, %308 ], [ 3, %314 ], [ 4, %324 ], [ 4, %330 ]
  %.1140.lcssa171.ph = phi i32 [ 1, %257 ], [ 0, %244 ], [ 0, %276 ], [ 1, %282 ], [ 0, %292 ], [ 1, %298 ], [ 0, %308 ], [ 1, %314 ], [ 0, %324 ], [ 1, %330 ]
  br label %245

245:                                              ; preds = %.loopexit175, %266
  %.2155.lcssa172 = phi i32 [ %.2155.lcssa174, %266 ], [ %.2155.lcssa172.ph, %.loopexit175 ]
  %.1140.lcssa171 = phi i32 [ 2, %266 ], [ %.1140.lcssa171.ph, %.loopexit175 ]
  %246 = add nsw i32 %.1140.lcssa171, 8
  %247 = mul nsw i32 8, %246
  %248 = add nsw i32 %.2155.lcssa172, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %249
  store i32 1, ptr %250, align 4
  br label %251

251:                                              ; preds = %245
  unreachable

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br label %257

257:                                              ; preds = %256
  br i1 false, label %.loopexit175, label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br i1 false, label %260, label %269

260:                                              ; preds = %332, %316, %300, %284, %259
  %.2155.lcssa174 = phi i32 [ 0, %259 ], [ 1, %284 ], [ 2, %300 ], [ 3, %316 ], [ 4, %332 ]
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  %263 = add nsw i32 %.2155.lcssa174, 16
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %264
  store i32 1, ptr %265, align 4
  br label %266

266:                                              ; preds = %262
  br i1 false, label %245, label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267
  unreachable

269:                                              ; preds = %259
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br label %276

276:                                              ; preds = %275
  br i1 false, label %.loopexit175, label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br label %282

282:                                              ; preds = %281
  br i1 false, label %.loopexit175, label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  br i1 false, label %260, label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br label %292

292:                                              ; preds = %291
  br i1 false, label %.loopexit175, label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br label %298

298:                                              ; preds = %297
  br i1 false, label %.loopexit175, label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  br i1 false, label %260, label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br label %308

308:                                              ; preds = %307
  br i1 false, label %.loopexit175, label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br label %314

314:                                              ; preds = %313
  br i1 false, label %.loopexit175, label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315
  br i1 false, label %260, label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br i1 false, label %319, label %335

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br label %324

324:                                              ; preds = %323
  br i1 false, label %.loopexit175, label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br label %330

330:                                              ; preds = %329
  br i1 false, label %.loopexit175, label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  br i1 false, label %260, label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  unreachable

335:                                              ; preds = %318
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br label %348

348:                                              ; preds = %347
  br i1 false, label %.loopexit180, label %356

.loopexit180:                                     ; preds = %411, %395, %348
  %.3156.lcssa177.ph = phi i32 [ 0, %348 ], [ 1, %395 ], [ 2, %411 ]
  %.2141.lcssa176.ph = phi i32 [ 0, %348 ], [ 0, %395 ], [ 0, %411 ]
  br label %349

349:                                              ; preds = %.loopexit180, %379
  %.3156.lcssa177 = phi i32 [ %.3156.lcssa178, %379 ], [ %.3156.lcssa177.ph, %.loopexit180 ]
  %.2141.lcssa176 = phi i32 [ 1, %379 ], [ %.2141.lcssa176.ph, %.loopexit180 ]
  %350 = add nsw i32 %.2141.lcssa176, 32
  %351 = mul nsw i32 8, %350
  %352 = add nsw i32 %.3156.lcssa177, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %353
  store i32 1, ptr %354, align 4
  br label %355

355:                                              ; preds = %349
  unreachable

356:                                              ; preds = %348
  br label %357

357:                                              ; preds = %356
  br i1 false, label %358, label %382

358:                                              ; preds = %413, %397, %357
  %.3156.lcssa178 = phi i32 [ 0, %357 ], [ 1, %397 ], [ 2, %413 ]
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359
  %361 = add nsw i32 %.3156.lcssa178, 8
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %362
  store i32 1, ptr %363, align 4
  br label %364

364:                                              ; preds = %360
  br label %365

365:                                              ; preds = %364
  %366 = add nsw i32 %.3156.lcssa178, 72
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %367
  store i32 1, ptr %368, align 4
  br label %369

369:                                              ; preds = %365
  br label %370

370:                                              ; preds = %369
  %371 = add nsw i32 %.3156.lcssa178, 136
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %372
  store i32 1, ptr %373, align 4
  br label %374

374:                                              ; preds = %370
  br label %375

375:                                              ; preds = %374
  %376 = add nsw i32 %.3156.lcssa178, 200
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %377
  store i32 1, ptr %378, align 4
  br label %379

379:                                              ; preds = %375
  br i1 false, label %349, label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  unreachable

382:                                              ; preds = %357
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br label %395

395:                                              ; preds = %394
  br i1 false, label %.loopexit180, label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  br i1 false, label %358, label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398
  br i1 false, label %400, label %416

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %405

405:                                              ; preds = %404
  br label %406

406:                                              ; preds = %405
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br label %411

411:                                              ; preds = %410
  br i1 false, label %.loopexit180, label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br i1 false, label %358, label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  unreachable

416:                                              ; preds = %399
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br label %425

425:                                              ; preds = %424
  br i1 false, label %.loopexit185, label %433

.loopexit185:                                     ; preds = %506, %498, %490, %482, %425, %440, %448, %456
  %.4157.lcssa182.ph = phi i32 [ 0, %456 ], [ 0, %448 ], [ 0, %440 ], [ 0, %425 ], [ 1, %482 ], [ 1, %490 ], [ 1, %498 ], [ 1, %506 ]
  %.3142.lcssa181.ph = phi i32 [ 3, %456 ], [ 2, %448 ], [ 1, %440 ], [ 0, %425 ], [ 0, %482 ], [ 1, %490 ], [ 2, %498 ], [ 3, %506 ]
  br label %426

426:                                              ; preds = %.loopexit185, %470
  %.4157.lcssa182 = phi i32 [ %.4157.lcssa184, %470 ], [ %.4157.lcssa182.ph, %.loopexit185 ]
  %.3142.lcssa181 = phi i32 [ 4, %470 ], [ %.3142.lcssa181.ph, %.loopexit185 ]
  %427 = add nsw i32 %.3142.lcssa181, 16
  %428 = mul nsw i32 8, %427
  %429 = add nsw i32 %.4157.lcssa182, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %430
  store i32 1, ptr %431, align 4
  br label %432

432:                                              ; preds = %426
  unreachable

433:                                              ; preds = %425
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br label %440

440:                                              ; preds = %439
  br i1 false, label %.loopexit185, label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br label %448

448:                                              ; preds = %447
  br i1 false, label %.loopexit185, label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  br label %453

453:                                              ; preds = %452
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %454

454:                                              ; preds = %453
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br label %456

456:                                              ; preds = %455
  br i1 false, label %.loopexit185, label %457

457:                                              ; preds = %456
  br label %458

458:                                              ; preds = %457
  br i1 false, label %459, label %473

459:                                              ; preds = %508, %458
  %.4157.lcssa184 = phi i32 [ 0, %458 ], [ 1, %508 ]
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  %462 = add nsw i32 %.4157.lcssa184, 32
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %463
  store i32 1, ptr %464, align 4
  br label %465

465:                                              ; preds = %461
  br label %466

466:                                              ; preds = %465
  %467 = add nsw i32 %.4157.lcssa184, 96
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %468
  store i32 1, ptr %469, align 4
  br label %470

470:                                              ; preds = %466
  br i1 false, label %426, label %471

471:                                              ; preds = %470
  br label %472

472:                                              ; preds = %471
  unreachable

473:                                              ; preds = %458
  br label %474

474:                                              ; preds = %473
  br i1 false, label %475, label %511

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4100), align 4
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4356), align 4
  br label %482

482:                                              ; preds = %481
  br i1 false, label %.loopexit185, label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  br label %485

485:                                              ; preds = %484
  br label %486

486:                                              ; preds = %485
  br label %487

487:                                              ; preds = %486
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4132), align 4
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4388), align 4
  br label %490

490:                                              ; preds = %489
  br i1 false, label %.loopexit185, label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  br label %495

495:                                              ; preds = %494
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4164), align 4
  br label %496

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %496
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4420), align 4
  br label %498

498:                                              ; preds = %497
  br i1 false, label %.loopexit185, label %499

499:                                              ; preds = %498
  br label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4196), align 4
  br label %504

504:                                              ; preds = %503
  br label %505

505:                                              ; preds = %504
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4452), align 4
  br label %506

506:                                              ; preds = %505
  br i1 false, label %.loopexit185, label %507

507:                                              ; preds = %506
  br label %508

508:                                              ; preds = %507
  br i1 false, label %459, label %509

509:                                              ; preds = %508
  br label %510

510:                                              ; preds = %509
  unreachable

511:                                              ; preds = %474
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %512

512:                                              ; preds = %511
  br label %513

513:                                              ; preds = %512
  br label %514

514:                                              ; preds = %513
  br label %515

515:                                              ; preds = %514
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br label %518

518:                                              ; preds = %517
  br i1 false, label %.loopexit190, label %526

.loopexit190:                                     ; preds = %608, %602, %596, %590, %580, %574, %568, %562, %518, %531, %537, %543
  %.5158.lcssa187.ph = phi i32 [ 0, %543 ], [ 0, %537 ], [ 0, %531 ], [ 0, %518 ], [ 1, %562 ], [ 1, %568 ], [ 1, %574 ], [ 1, %580 ], [ 2, %590 ], [ 2, %596 ], [ 2, %602 ], [ 2, %608 ]
  %.4143.lcssa186.ph = phi i32 [ 3, %543 ], [ 2, %537 ], [ 1, %531 ], [ 0, %518 ], [ 0, %562 ], [ 1, %568 ], [ 2, %574 ], [ 3, %580 ], [ 0, %590 ], [ 1, %596 ], [ 2, %602 ], [ 3, %608 ]
  br label %519

519:                                              ; preds = %.loopexit190, %552
  %.5158.lcssa187 = phi i32 [ %.5158.lcssa189, %552 ], [ %.5158.lcssa187.ph, %.loopexit190 ]
  %.4143.lcssa186 = phi i32 [ 4, %552 ], [ %.4143.lcssa186.ph, %.loopexit190 ]
  %520 = add nsw i32 %.4143.lcssa186, 8
  %521 = mul nsw i32 8, %520
  %522 = add nsw i32 %.5158.lcssa187, %521
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %523
  store i32 1, ptr %524, align 4
  br label %525

525:                                              ; preds = %519
  unreachable

526:                                              ; preds = %518
  br label %527

527:                                              ; preds = %526
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br label %531

531:                                              ; preds = %530
  br i1 false, label %.loopexit190, label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br label %537

537:                                              ; preds = %536
  br i1 false, label %.loopexit190, label %538

538:                                              ; preds = %537
  br label %539

539:                                              ; preds = %538
  br label %540

540:                                              ; preds = %539
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br label %543

543:                                              ; preds = %542
  br i1 false, label %.loopexit190, label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  br i1 false, label %546, label %555

546:                                              ; preds = %610, %582, %545
  %.5158.lcssa189 = phi i32 [ 0, %545 ], [ 1, %582 ], [ 2, %610 ]
  br label %547

547:                                              ; preds = %546
  br label %548

548:                                              ; preds = %547
  %549 = add nsw i32 %.5158.lcssa189, 32
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %550
  store i32 1, ptr %551, align 4
  br label %552

552:                                              ; preds = %548
  br i1 false, label %519, label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  unreachable

555:                                              ; preds = %545
  br label %556

556:                                              ; preds = %555
  br label %557

557:                                              ; preds = %556
  br label %558

558:                                              ; preds = %557
  br label %559

559:                                              ; preds = %558
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br label %562

562:                                              ; preds = %561
  br i1 false, label %.loopexit190, label %563

563:                                              ; preds = %562
  br label %564

564:                                              ; preds = %563
  br label %565

565:                                              ; preds = %564
  br label %566

566:                                              ; preds = %565
  br label %567

567:                                              ; preds = %566
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br label %568

568:                                              ; preds = %567
  br i1 false, label %.loopexit190, label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br label %574

574:                                              ; preds = %573
  br i1 false, label %.loopexit190, label %575

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br label %580

580:                                              ; preds = %579
  br i1 false, label %.loopexit190, label %581

581:                                              ; preds = %580
  br label %582

582:                                              ; preds = %581
  br i1 false, label %546, label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583
  br i1 false, label %585, label %613

585:                                              ; preds = %584
  br label %586

586:                                              ; preds = %585
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  br label %589

589:                                              ; preds = %588
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br label %590

590:                                              ; preds = %589
  br i1 false, label %.loopexit190, label %591

591:                                              ; preds = %590
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  br label %594

594:                                              ; preds = %593
  br label %595

595:                                              ; preds = %594
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br label %596

596:                                              ; preds = %595
  br i1 false, label %.loopexit190, label %597

597:                                              ; preds = %596
  br label %598

598:                                              ; preds = %597
  br label %599

599:                                              ; preds = %598
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %600
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br label %602

602:                                              ; preds = %601
  br i1 false, label %.loopexit190, label %603

603:                                              ; preds = %602
  br label %604

604:                                              ; preds = %603
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br label %608

608:                                              ; preds = %607
  br i1 false, label %.loopexit190, label %609

609:                                              ; preds = %608
  br label %610

610:                                              ; preds = %609
  br i1 false, label %546, label %611

611:                                              ; preds = %610
  br label %612

612:                                              ; preds = %611
  unreachable

613:                                              ; preds = %584
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %614

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %620

620:                                              ; preds = %619
  br label %621

621:                                              ; preds = %620
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br label %622

622:                                              ; preds = %621
  br i1 false, label %.loopexit195, label %630

.loopexit195:                                     ; preds = %691, %679, %667, %655, %622
  %.6159.lcssa192.ph = phi i32 [ 0, %622 ], [ 1, %655 ], [ 2, %667 ], [ 3, %679 ], [ 4, %691 ]
  %.5144.lcssa191.ph = phi i32 [ 0, %622 ], [ 0, %655 ], [ 0, %667 ], [ 0, %679 ], [ 0, %691 ]
  br label %623

623:                                              ; preds = %.loopexit195, %643
  %.6159.lcssa192 = phi i32 [ %.6159.lcssa193, %643 ], [ %.6159.lcssa192.ph, %.loopexit195 ]
  %.5144.lcssa191 = phi i32 [ 1, %643 ], [ %.5144.lcssa191.ph, %.loopexit195 ]
  %624 = add nsw i32 %.5144.lcssa191, 16
  %625 = mul nsw i32 8, %624
  %626 = add nsw i32 %.6159.lcssa192, %625
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %627
  store i32 1, ptr %628, align 4
  br label %629

629:                                              ; preds = %623
  unreachable

630:                                              ; preds = %622
  br label %631

631:                                              ; preds = %630
  br i1 false, label %632, label %646

632:                                              ; preds = %693, %681, %669, %657, %631
  %.6159.lcssa193 = phi i32 [ 0, %631 ], [ 1, %657 ], [ 2, %669 ], [ 3, %681 ], [ 4, %693 ]
  br label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  %635 = add nsw i32 %.6159.lcssa193, 8
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %636
  store i32 1, ptr %637, align 4
  br label %638

638:                                              ; preds = %634
  br label %639

639:                                              ; preds = %638
  %640 = add nsw i32 %.6159.lcssa193, 72
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %641
  store i32 1, ptr %642, align 4
  br label %643

643:                                              ; preds = %639
  br i1 false, label %623, label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  unreachable

646:                                              ; preds = %631
  br label %647

647:                                              ; preds = %646
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %653

653:                                              ; preds = %652
  br label %654

654:                                              ; preds = %653
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br label %655

655:                                              ; preds = %654
  br i1 false, label %.loopexit195, label %656

656:                                              ; preds = %655
  br label %657

657:                                              ; preds = %656
  br i1 false, label %632, label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %665

665:                                              ; preds = %664
  br label %666

666:                                              ; preds = %665
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br label %667

667:                                              ; preds = %666
  br i1 false, label %.loopexit195, label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  br i1 false, label %632, label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %677

677:                                              ; preds = %676
  br label %678

678:                                              ; preds = %677
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br label %679

679:                                              ; preds = %678
  br i1 false, label %.loopexit195, label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br i1 false, label %632, label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  br i1 false, label %684, label %696

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  br label %688

688:                                              ; preds = %687
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br label %691

691:                                              ; preds = %690
  br i1 false, label %.loopexit195, label %692

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  br i1 false, label %632, label %694

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  unreachable

696:                                              ; preds = %683
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  br label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %703

703:                                              ; preds = %702
  br label %704

704:                                              ; preds = %703
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br label %709

709:                                              ; preds = %708
  br i1 false, label %.loopexit200, label %717

.loopexit200:                                     ; preds = %780, %768, %709, %728
  %.7160.lcssa197.ph = phi i32 [ 0, %728 ], [ 0, %709 ], [ 1, %768 ], [ 1, %780 ]
  %.6145.lcssa196.ph = phi i32 [ 1, %728 ], [ 0, %709 ], [ 0, %768 ], [ 1, %780 ]
  br label %710

710:                                              ; preds = %.loopexit200, %752
  %.7160.lcssa197 = phi i32 [ %.7160.lcssa199, %752 ], [ %.7160.lcssa197.ph, %.loopexit200 ]
  %.6145.lcssa196 = phi i32 [ 2, %752 ], [ %.6145.lcssa196.ph, %.loopexit200 ]
  %711 = add nsw i32 %.6145.lcssa196, 32
  %712 = mul nsw i32 8, %711
  %713 = add nsw i32 %.7160.lcssa197, %712
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %714
  store i32 1, ptr %715, align 4
  br label %716

716:                                              ; preds = %710
  unreachable

717:                                              ; preds = %709
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718
  br label %720

720:                                              ; preds = %719
  br label %721

721:                                              ; preds = %720
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %722

722:                                              ; preds = %721
  br label %723

723:                                              ; preds = %722
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %724

724:                                              ; preds = %723
  br label %725

725:                                              ; preds = %724
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %726

726:                                              ; preds = %725
  br label %727

727:                                              ; preds = %726
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br label %728

728:                                              ; preds = %727
  br i1 false, label %.loopexit200, label %729

729:                                              ; preds = %728
  br label %730

730:                                              ; preds = %729
  br i1 false, label %731, label %755

731:                                              ; preds = %782, %730
  %.7160.lcssa199 = phi i32 [ 0, %730 ], [ 1, %782 ]
  br label %732

732:                                              ; preds = %731
  br label %733

733:                                              ; preds = %732
  %734 = add nsw i32 %.7160.lcssa199, 16
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %735
  store i32 1, ptr %736, align 4
  br label %737

737:                                              ; preds = %733
  br label %738

738:                                              ; preds = %737
  %739 = add nsw i32 %.7160.lcssa199, 80
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %740
  store i32 1, ptr %741, align 4
  br label %742

742:                                              ; preds = %738
  br label %743

743:                                              ; preds = %742
  %744 = add nsw i32 %.7160.lcssa199, 144
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %745
  store i32 1, ptr %746, align 4
  br label %747

747:                                              ; preds = %743
  br label %748

748:                                              ; preds = %747
  %749 = add nsw i32 %.7160.lcssa199, 208
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %750
  store i32 1, ptr %751, align 4
  br label %752

752:                                              ; preds = %748
  br i1 false, label %710, label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  unreachable

755:                                              ; preds = %730
  br label %756

756:                                              ; preds = %755
  br i1 false, label %757, label %785

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757
  br label %759

759:                                              ; preds = %758
  br label %760

760:                                              ; preds = %759
  br label %761

761:                                              ; preds = %760
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10244), align 4
  br label %762

762:                                              ; preds = %761
  br label %763

763:                                              ; preds = %762
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10500), align 4
  br label %764

764:                                              ; preds = %763
  br label %765

765:                                              ; preds = %764
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10756), align 4
  br label %766

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11012), align 4
  br label %768

768:                                              ; preds = %767
  br i1 false, label %.loopexit200, label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10276), align 4
  br label %774

774:                                              ; preds = %773
  br label %775

775:                                              ; preds = %774
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10532), align 4
  br label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10788), align 4
  br label %778

778:                                              ; preds = %777
  br label %779

779:                                              ; preds = %778
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11044), align 4
  br label %780

780:                                              ; preds = %779
  br i1 false, label %.loopexit200, label %781

781:                                              ; preds = %780
  br label %782

782:                                              ; preds = %781
  br i1 false, label %731, label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783
  unreachable

785:                                              ; preds = %756
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  br label %788

788:                                              ; preds = %787
  br label %789

789:                                              ; preds = %788
  br label %790

790:                                              ; preds = %789
  br label %791

791:                                              ; preds = %790
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br label %792

792:                                              ; preds = %791
  br i1 false, label %.loopexit205, label %800

.loopexit205:                                     ; preds = %838, %828, %818, %792
  %.8161.lcssa202.ph = phi i32 [ 0, %792 ], [ 1, %818 ], [ 2, %828 ], [ 3, %838 ]
  %.7146.lcssa201.ph = phi i32 [ 0, %792 ], [ 0, %818 ], [ 0, %828 ], [ 0, %838 ]
  br label %793

793:                                              ; preds = %.loopexit205, %808
  %.8161.lcssa202 = phi i32 [ %.8161.lcssa203, %808 ], [ %.8161.lcssa202.ph, %.loopexit205 ]
  %.7146.lcssa201 = phi i32 [ 1, %808 ], [ %.7146.lcssa201.ph, %.loopexit205 ]
  %794 = add nsw i32 %.7146.lcssa201, 8
  %795 = mul nsw i32 8, %794
  %796 = add nsw i32 %.8161.lcssa202, %795
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %797
  store i32 1, ptr %798, align 4
  br label %799

799:                                              ; preds = %793
  unreachable

800:                                              ; preds = %792
  br label %801

801:                                              ; preds = %800
  br i1 false, label %802, label %811

802:                                              ; preds = %840, %830, %820, %801
  %.8161.lcssa203 = phi i32 [ 0, %801 ], [ 1, %820 ], [ 2, %830 ], [ 3, %840 ]
  br label %803

803:                                              ; preds = %802
  br label %804

804:                                              ; preds = %803
  %805 = add nsw i32 %.8161.lcssa203, 8
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %806
  store i32 1, ptr %807, align 4
  br label %808

808:                                              ; preds = %804
  br i1 false, label %793, label %809

809:                                              ; preds = %808
  br label %810

810:                                              ; preds = %809
  unreachable

811:                                              ; preds = %801
  br label %812

812:                                              ; preds = %811
  br label %813

813:                                              ; preds = %812
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814
  br label %816

816:                                              ; preds = %815
  br label %817

817:                                              ; preds = %816
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br label %818

818:                                              ; preds = %817
  br i1 false, label %.loopexit205, label %819

819:                                              ; preds = %818
  br label %820

820:                                              ; preds = %819
  br i1 false, label %802, label %821

821:                                              ; preds = %820
  br label %822

822:                                              ; preds = %821
  br label %823

823:                                              ; preds = %822
  br label %824

824:                                              ; preds = %823
  br label %825

825:                                              ; preds = %824
  br label %826

826:                                              ; preds = %825
  br label %827

827:                                              ; preds = %826
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br label %828

828:                                              ; preds = %827
  br i1 false, label %.loopexit205, label %829

829:                                              ; preds = %828
  br label %830

830:                                              ; preds = %829
  br i1 false, label %802, label %831

831:                                              ; preds = %830
  br label %832

832:                                              ; preds = %831
  br i1 false, label %833, label %843

833:                                              ; preds = %832
  br label %834

834:                                              ; preds = %833
  br label %835

835:                                              ; preds = %834
  br label %836

836:                                              ; preds = %835
  br label %837

837:                                              ; preds = %836
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br label %838

838:                                              ; preds = %837
  br i1 false, label %.loopexit205, label %839

839:                                              ; preds = %838
  br label %840

840:                                              ; preds = %839
  br i1 false, label %802, label %841

841:                                              ; preds = %840
  br label %842

842:                                              ; preds = %841
  unreachable

843:                                              ; preds = %832
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %844

844:                                              ; preds = %843
  br label %845

845:                                              ; preds = %844
  br label %846

846:                                              ; preds = %845
  br label %847

847:                                              ; preds = %846
  br label %848

848:                                              ; preds = %847
  br label %849

849:                                              ; preds = %848
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br label %850

850:                                              ; preds = %849
  br i1 false, label %.loopexit210, label %858

.loopexit210:                                     ; preds = %900, %894, %888, %850, %863, %869
  %.9162.lcssa207.ph = phi i32 [ 0, %869 ], [ 0, %863 ], [ 0, %850 ], [ 1, %888 ], [ 1, %894 ], [ 1, %900 ]
  %.8147.lcssa206.ph = phi i32 [ 2, %869 ], [ 1, %863 ], [ 0, %850 ], [ 0, %888 ], [ 1, %894 ], [ 2, %900 ]
  br label %851

851:                                              ; preds = %.loopexit210, %878
  %.9162.lcssa207 = phi i32 [ %.9162.lcssa209, %878 ], [ %.9162.lcssa207.ph, %.loopexit210 ]
  %.8147.lcssa206 = phi i32 [ 3, %878 ], [ %.8147.lcssa206.ph, %.loopexit210 ]
  %852 = add nsw i32 %.8147.lcssa206, 8
  %853 = mul nsw i32 8, %852
  %854 = add nsw i32 %.9162.lcssa207, %853
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %855
  store i32 1, ptr %856, align 4
  br label %857

857:                                              ; preds = %851
  unreachable

858:                                              ; preds = %850
  br label %859

859:                                              ; preds = %858
  br label %860

860:                                              ; preds = %859
  br label %861

861:                                              ; preds = %860
  br label %862

862:                                              ; preds = %861
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br label %863

863:                                              ; preds = %862
  br i1 false, label %.loopexit210, label %864

864:                                              ; preds = %863
  br label %865

865:                                              ; preds = %864
  br label %866

866:                                              ; preds = %865
  br label %867

867:                                              ; preds = %866
  br label %868

868:                                              ; preds = %867
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br label %869

869:                                              ; preds = %868
  br i1 false, label %.loopexit210, label %870

870:                                              ; preds = %869
  br label %871

871:                                              ; preds = %870
  br i1 false, label %872, label %881

872:                                              ; preds = %902, %871
  %.9162.lcssa209 = phi i32 [ 0, %871 ], [ 1, %902 ]
  br label %873

873:                                              ; preds = %872
  br label %874

874:                                              ; preds = %873
  %875 = add nsw i32 %.9162.lcssa209, 24
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %876
  store i32 1, ptr %877, align 4
  br label %878

878:                                              ; preds = %874
  br i1 false, label %851, label %879

879:                                              ; preds = %878
  br label %880

880:                                              ; preds = %879
  unreachable

881:                                              ; preds = %871
  br label %882

882:                                              ; preds = %881
  br i1 false, label %883, label %905

883:                                              ; preds = %882
  br label %884

884:                                              ; preds = %883
  br label %885

885:                                              ; preds = %884
  br label %886

886:                                              ; preds = %885
  br label %887

887:                                              ; preds = %886
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14340), align 4
  br label %888

888:                                              ; preds = %887
  br i1 false, label %.loopexit210, label %889

889:                                              ; preds = %888
  br label %890

890:                                              ; preds = %889
  br label %891

891:                                              ; preds = %890
  br label %892

892:                                              ; preds = %891
  br label %893

893:                                              ; preds = %892
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14372), align 4
  br label %894

894:                                              ; preds = %893
  br i1 false, label %.loopexit210, label %895

895:                                              ; preds = %894
  br label %896

896:                                              ; preds = %895
  br label %897

897:                                              ; preds = %896
  br label %898

898:                                              ; preds = %897
  br label %899

899:                                              ; preds = %898
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14404), align 4
  br label %900

900:                                              ; preds = %899
  br i1 false, label %.loopexit210, label %901

901:                                              ; preds = %900
  br label %902

902:                                              ; preds = %901
  br i1 false, label %872, label %903

903:                                              ; preds = %902
  br label %904

904:                                              ; preds = %903
  unreachable

905:                                              ; preds = %882
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %906

906:                                              ; preds = %905
  br label %907

907:                                              ; preds = %906
  br label %908

908:                                              ; preds = %907
  br label %909

909:                                              ; preds = %908
  br label %910

910:                                              ; preds = %909
  br label %911

911:                                              ; preds = %910
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %912

912:                                              ; preds = %911
  br label %913

913:                                              ; preds = %912
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %914

914:                                              ; preds = %913
  br label %915

915:                                              ; preds = %914
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br label %916

916:                                              ; preds = %915
  br i1 false, label %.loopexit215, label %924

.loopexit215:                                     ; preds = %956, %916
  %.10163.lcssa212.ph = phi i32 [ 0, %916 ], [ 1, %956 ]
  %.9148.lcssa211.ph = phi i32 [ 0, %916 ], [ 0, %956 ]
  br label %917

917:                                              ; preds = %.loopexit215, %942
  %.10163.lcssa212 = phi i32 [ %.10163.lcssa213, %942 ], [ %.10163.lcssa212.ph, %.loopexit215 ]
  %.9148.lcssa211 = phi i32 [ 1, %942 ], [ %.9148.lcssa211.ph, %.loopexit215 ]
  %918 = add nsw i32 %.9148.lcssa211, 24
  %919 = mul nsw i32 8, %918
  %920 = add nsw i32 %.10163.lcssa212, %919
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %921
  store i32 1, ptr %922, align 4
  br label %923

923:                                              ; preds = %917
  unreachable

924:                                              ; preds = %916
  br label %925

925:                                              ; preds = %924
  br i1 false, label %926, label %945

926:                                              ; preds = %958, %925
  %.10163.lcssa213 = phi i32 [ 0, %925 ], [ 1, %958 ]
  br label %927

927:                                              ; preds = %926
  br label %928

928:                                              ; preds = %927
  %929 = add nsw i32 %.10163.lcssa213, 8
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %930
  store i32 1, ptr %931, align 4
  br label %932

932:                                              ; preds = %928
  br label %933

933:                                              ; preds = %932
  %934 = add nsw i32 %.10163.lcssa213, 72
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %935
  store i32 1, ptr %936, align 4
  br label %937

937:                                              ; preds = %933
  br label %938

938:                                              ; preds = %937
  %939 = add nsw i32 %.10163.lcssa213, 136
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %940
  store i32 1, ptr %941, align 4
  br label %942

942:                                              ; preds = %938
  br i1 false, label %917, label %943

943:                                              ; preds = %942
  br label %944

944:                                              ; preds = %943
  unreachable

945:                                              ; preds = %925
  br label %946

946:                                              ; preds = %945
  br i1 false, label %947, label %961

947:                                              ; preds = %946
  br label %948

948:                                              ; preds = %947
  br label %949

949:                                              ; preds = %948
  br label %950

950:                                              ; preds = %949
  br label %951

951:                                              ; preds = %950
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16388), align 4
  br label %952

952:                                              ; preds = %951
  br label %953

953:                                              ; preds = %952
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16644), align 4
  br label %954

954:                                              ; preds = %953
  br label %955

955:                                              ; preds = %954
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16900), align 4
  br label %956

956:                                              ; preds = %955
  br i1 false, label %.loopexit215, label %957

957:                                              ; preds = %956
  br label %958

958:                                              ; preds = %957
  br i1 false, label %926, label %959

959:                                              ; preds = %958
  br label %960

960:                                              ; preds = %959
  unreachable

961:                                              ; preds = %946
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %962

962:                                              ; preds = %961
  br label %963

963:                                              ; preds = %962
  br label %964

964:                                              ; preds = %963
  br label %965

965:                                              ; preds = %964
  br label %966

966:                                              ; preds = %965
  br label %967

967:                                              ; preds = %966
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br label %968

968:                                              ; preds = %967
  br i1 false, label %.loopexit220, label %976

.loopexit220:                                     ; preds = %1022, %1016, %1006, %1000, %968, %981
  %.11164.lcssa217.ph = phi i32 [ 0, %981 ], [ 0, %968 ], [ 1, %1000 ], [ 1, %1006 ], [ 2, %1016 ], [ 2, %1022 ]
  %.10149.lcssa216.ph = phi i32 [ 1, %981 ], [ 0, %968 ], [ 0, %1000 ], [ 1, %1006 ], [ 0, %1016 ], [ 1, %1022 ]
  br label %969

969:                                              ; preds = %.loopexit220, %990
  %.11164.lcssa217 = phi i32 [ %.11164.lcssa219, %990 ], [ %.11164.lcssa217.ph, %.loopexit220 ]
  %.10149.lcssa216 = phi i32 [ 2, %990 ], [ %.10149.lcssa216.ph, %.loopexit220 ]
  %970 = add nsw i32 %.10149.lcssa216, 8
  %971 = mul nsw i32 8, %970
  %972 = add nsw i32 %.11164.lcssa217, %971
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %973
  store i32 1, ptr %974, align 4
  br label %975

975:                                              ; preds = %969
  unreachable

976:                                              ; preds = %968
  br label %977

977:                                              ; preds = %976
  br label %978

978:                                              ; preds = %977
  br label %979

979:                                              ; preds = %978
  br label %980

980:                                              ; preds = %979
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br label %981

981:                                              ; preds = %980
  br i1 false, label %.loopexit220, label %982

982:                                              ; preds = %981
  br label %983

983:                                              ; preds = %982
  br i1 false, label %984, label %993

984:                                              ; preds = %1024, %1008, %983
  %.11164.lcssa219 = phi i32 [ 0, %983 ], [ 1, %1008 ], [ 2, %1024 ]
  br label %985

985:                                              ; preds = %984
  br label %986

986:                                              ; preds = %985
  %987 = add nsw i32 %.11164.lcssa219, 16
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %988
  store i32 1, ptr %989, align 4
  br label %990

990:                                              ; preds = %986
  br i1 false, label %969, label %991

991:                                              ; preds = %990
  br label %992

992:                                              ; preds = %991
  unreachable

993:                                              ; preds = %983
  br label %994

994:                                              ; preds = %993
  br label %995

995:                                              ; preds = %994
  br label %996

996:                                              ; preds = %995
  br label %997

997:                                              ; preds = %996
  br label %998

998:                                              ; preds = %997
  br label %999

999:                                              ; preds = %998
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br label %1000

1000:                                             ; preds = %999
  br i1 false, label %.loopexit220, label %1001

1001:                                             ; preds = %1000
  br label %1002

1002:                                             ; preds = %1001
  br label %1003

1003:                                             ; preds = %1002
  br label %1004

1004:                                             ; preds = %1003
  br label %1005

1005:                                             ; preds = %1004
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br label %1006

1006:                                             ; preds = %1005
  br i1 false, label %.loopexit220, label %1007

1007:                                             ; preds = %1006
  br label %1008

1008:                                             ; preds = %1007
  br i1 false, label %984, label %1009

1009:                                             ; preds = %1008
  br label %1010

1010:                                             ; preds = %1009
  br i1 false, label %1011, label %1027

1011:                                             ; preds = %1010
  br label %1012

1012:                                             ; preds = %1011
  br label %1013

1013:                                             ; preds = %1012
  br label %1014

1014:                                             ; preds = %1013
  br label %1015

1015:                                             ; preds = %1014
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br label %1016

1016:                                             ; preds = %1015
  br i1 false, label %.loopexit220, label %1017

1017:                                             ; preds = %1016
  br label %1018

1018:                                             ; preds = %1017
  br label %1019

1019:                                             ; preds = %1018
  br label %1020

1020:                                             ; preds = %1019
  br label %1021

1021:                                             ; preds = %1020
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br label %1022

1022:                                             ; preds = %1021
  br i1 false, label %.loopexit220, label %1023

1023:                                             ; preds = %1022
  br label %1024

1024:                                             ; preds = %1023
  br i1 false, label %984, label %1025

1025:                                             ; preds = %1024
  br label %1026

1026:                                             ; preds = %1025
  unreachable

1027:                                             ; preds = %1010
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %1028

1028:                                             ; preds = %1027
  br label %1029

1029:                                             ; preds = %1028
  br label %1030

1030:                                             ; preds = %1029
  br label %1031

1031:                                             ; preds = %1030
  br label %1032

1032:                                             ; preds = %1031
  br label %1033

1033:                                             ; preds = %1032
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %1034

1034:                                             ; preds = %1033
  br label %1035

1035:                                             ; preds = %1034
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br label %1036

1036:                                             ; preds = %1035
  br i1 false, label %.loopexit225, label %1044

.loopexit225:                                     ; preds = %1081, %1069, %1036
  %.12165.lcssa222.ph = phi i32 [ 0, %1036 ], [ 1, %1069 ], [ 2, %1081 ]
  %.11150.lcssa221.ph = phi i32 [ 0, %1036 ], [ 0, %1069 ], [ 0, %1081 ]
  br label %1037

1037:                                             ; preds = %.loopexit225, %1057
  %.12165.lcssa222 = phi i32 [ %.12165.lcssa223, %1057 ], [ %.12165.lcssa222.ph, %.loopexit225 ]
  %.11150.lcssa221 = phi i32 [ 1, %1057 ], [ %.11150.lcssa221.ph, %.loopexit225 ]
  %1038 = add nsw i32 %.11150.lcssa221, 16
  %1039 = mul nsw i32 8, %1038
  %1040 = add nsw i32 %.12165.lcssa222, %1039
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %1041
  store i32 1, ptr %1042, align 4
  br label %1043

1043:                                             ; preds = %1037
  unreachable

1044:                                             ; preds = %1036
  br label %1045

1045:                                             ; preds = %1044
  br i1 false, label %1046, label %1060

1046:                                             ; preds = %1083, %1071, %1045
  %.12165.lcssa223 = phi i32 [ 0, %1045 ], [ 1, %1071 ], [ 2, %1083 ]
  br label %1047

1047:                                             ; preds = %1046
  br label %1048

1048:                                             ; preds = %1047
  %1049 = add nsw i32 %.12165.lcssa223, 8
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %1050
  store i32 1, ptr %1051, align 4
  br label %1052

1052:                                             ; preds = %1048
  br label %1053

1053:                                             ; preds = %1052
  %1054 = add nsw i32 %.12165.lcssa223, 72
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %1055
  store i32 1, ptr %1056, align 4
  br label %1057

1057:                                             ; preds = %1053
  br i1 false, label %1037, label %1058

1058:                                             ; preds = %1057
  br label %1059

1059:                                             ; preds = %1058
  unreachable

1060:                                             ; preds = %1045
  br label %1061

1061:                                             ; preds = %1060
  br label %1062

1062:                                             ; preds = %1061
  br label %1063

1063:                                             ; preds = %1062
  br label %1064

1064:                                             ; preds = %1063
  br label %1065

1065:                                             ; preds = %1064
  br label %1066

1066:                                             ; preds = %1065
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %1067

1067:                                             ; preds = %1066
  br label %1068

1068:                                             ; preds = %1067
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br label %1069

1069:                                             ; preds = %1068
  br i1 false, label %.loopexit225, label %1070

1070:                                             ; preds = %1069
  br label %1071

1071:                                             ; preds = %1070
  br i1 false, label %1046, label %1072

1072:                                             ; preds = %1071
  br label %1073

1073:                                             ; preds = %1072
  br i1 false, label %1074, label %1086

1074:                                             ; preds = %1073
  br label %1075

1075:                                             ; preds = %1074
  br label %1076

1076:                                             ; preds = %1075
  br label %1077

1077:                                             ; preds = %1076
  br label %1078

1078:                                             ; preds = %1077
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %1079

1079:                                             ; preds = %1078
  br label %1080

1080:                                             ; preds = %1079
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br label %1081

1081:                                             ; preds = %1080
  br i1 false, label %.loopexit225, label %1082

1082:                                             ; preds = %1081
  br label %1083

1083:                                             ; preds = %1082
  br i1 false, label %1046, label %1084

1084:                                             ; preds = %1083
  br label %1085

1085:                                             ; preds = %1084
  unreachable

1086:                                             ; preds = %1073
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %1087

1087:                                             ; preds = %1086
  br label %1088

1088:                                             ; preds = %1087
  br label %1089

1089:                                             ; preds = %1088
  br label %1090

1090:                                             ; preds = %1089
  br label %1091

1091:                                             ; preds = %1090
  br label %1092

1092:                                             ; preds = %1091
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %1093

1093:                                             ; preds = %1092
  br label %1094

1094:                                             ; preds = %1093
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br label %1095

1095:                                             ; preds = %1094
  br i1 false, label %.loopexit230, label %1103

.loopexit230:                                     ; preds = %1144, %1136, %1095, %1110
  %.13166.lcssa227.ph = phi i32 [ 0, %1110 ], [ 0, %1095 ], [ 1, %1136 ], [ 1, %1144 ]
  %.12151.lcssa226.ph = phi i32 [ 1, %1110 ], [ 0, %1095 ], [ 0, %1136 ], [ 1, %1144 ]
  br label %1096

1096:                                             ; preds = %.loopexit230, %1124
  %.13166.lcssa227 = phi i32 [ %.13166.lcssa229, %1124 ], [ %.13166.lcssa227.ph, %.loopexit230 ]
  %.12151.lcssa226 = phi i32 [ 2, %1124 ], [ %.12151.lcssa226.ph, %.loopexit230 ]
  %1097 = add nsw i32 %.12151.lcssa226, 16
  %1098 = mul nsw i32 8, %1097
  %1099 = add nsw i32 %.13166.lcssa227, %1098
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %1100
  store i32 1, ptr %1101, align 4
  br label %1102

1102:                                             ; preds = %1096
  unreachable

1103:                                             ; preds = %1095
  br label %1104

1104:                                             ; preds = %1103
  br label %1105

1105:                                             ; preds = %1104
  br label %1106

1106:                                             ; preds = %1105
  br label %1107

1107:                                             ; preds = %1106
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %1108

1108:                                             ; preds = %1107
  br label %1109

1109:                                             ; preds = %1108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br label %1110

1110:                                             ; preds = %1109
  br i1 false, label %.loopexit230, label %1111

1111:                                             ; preds = %1110
  br label %1112

1112:                                             ; preds = %1111
  br i1 false, label %1113, label %1127

1113:                                             ; preds = %1146, %1112
  %.13166.lcssa229 = phi i32 [ 0, %1112 ], [ 1, %1146 ]
  br label %1114

1114:                                             ; preds = %1113
  br label %1115

1115:                                             ; preds = %1114
  %1116 = add nsw i32 %.13166.lcssa229, 16
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %1117
  store i32 1, ptr %1118, align 4
  br label %1119

1119:                                             ; preds = %1115
  br label %1120

1120:                                             ; preds = %1119
  %1121 = add nsw i32 %.13166.lcssa229, 80
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %1122
  store i32 1, ptr %1123, align 4
  br label %1124

1124:                                             ; preds = %1120
  br i1 false, label %1096, label %1125

1125:                                             ; preds = %1124
  br label %1126

1126:                                             ; preds = %1125
  unreachable

1127:                                             ; preds = %1112
  br label %1128

1128:                                             ; preds = %1127
  br i1 false, label %1129, label %1149

1129:                                             ; preds = %1128
  br label %1130

1130:                                             ; preds = %1129
  br label %1131

1131:                                             ; preds = %1130
  br label %1132

1132:                                             ; preds = %1131
  br label %1133

1133:                                             ; preds = %1132
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22532), align 4
  br label %1134

1134:                                             ; preds = %1133
  br label %1135

1135:                                             ; preds = %1134
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22788), align 4
  br label %1136

1136:                                             ; preds = %1135
  br i1 false, label %.loopexit230, label %1137

1137:                                             ; preds = %1136
  br label %1138

1138:                                             ; preds = %1137
  br label %1139

1139:                                             ; preds = %1138
  br label %1140

1140:                                             ; preds = %1139
  br label %1141

1141:                                             ; preds = %1140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22564), align 4
  br label %1142

1142:                                             ; preds = %1141
  br label %1143

1143:                                             ; preds = %1142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22820), align 4
  br label %1144

1144:                                             ; preds = %1143
  br i1 false, label %.loopexit230, label %1145

1145:                                             ; preds = %1144
  br label %1146

1146:                                             ; preds = %1145
  br i1 false, label %1113, label %1147

1147:                                             ; preds = %1146
  br label %1148

1148:                                             ; preds = %1147
  unreachable

1149:                                             ; preds = %1128
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %1150

1150:                                             ; preds = %1149
  br label %1151

1151:                                             ; preds = %1150
  br label %1152

1152:                                             ; preds = %1151
  br label %1153

1153:                                             ; preds = %1152
  br label %1154

1154:                                             ; preds = %1153
  br label %1155

1155:                                             ; preds = %1154
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %1156

1156:                                             ; preds = %1155
  br label %1157

1157:                                             ; preds = %1156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br label %1158

1158:                                             ; preds = %1157
  br i1 false, label %.loopexit235, label %1166

.loopexit235:                                     ; preds = %1227, %1219, %1207, %1199, %1158, %1173
  %.14.lcssa232.ph = phi i32 [ 0, %1173 ], [ 0, %1158 ], [ 1, %1199 ], [ 1, %1207 ], [ 2, %1219 ], [ 2, %1227 ]
  %.13152.lcssa231.ph = phi i32 [ 1, %1173 ], [ 0, %1158 ], [ 0, %1199 ], [ 1, %1207 ], [ 0, %1219 ], [ 1, %1227 ]
  br label %1159

1159:                                             ; preds = %.loopexit235, %1187
  %.14.lcssa232 = phi i32 [ %.14.lcssa234, %1187 ], [ %.14.lcssa232.ph, %.loopexit235 ]
  %.13152.lcssa231 = phi i32 [ 2, %1187 ], [ %.13152.lcssa231.ph, %.loopexit235 ]
  %1160 = add nsw i32 %.13152.lcssa231, 16
  %1161 = mul nsw i32 8, %1160
  %1162 = add nsw i32 %.14.lcssa232, %1161
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %1163
  store i32 1, ptr %1164, align 4
  br label %1165

1165:                                             ; preds = %1159
  unreachable

1166:                                             ; preds = %1158
  br label %1167

1167:                                             ; preds = %1166
  br label %1168

1168:                                             ; preds = %1167
  br label %1169

1169:                                             ; preds = %1168
  br label %1170

1170:                                             ; preds = %1169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %1171

1171:                                             ; preds = %1170
  br label %1172

1172:                                             ; preds = %1171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br label %1173

1173:                                             ; preds = %1172
  br i1 false, label %.loopexit235, label %1174

1174:                                             ; preds = %1173
  br label %1175

1175:                                             ; preds = %1174
  br i1 false, label %1176, label %1190

1176:                                             ; preds = %1229, %1209, %1175
  %.14.lcssa234 = phi i32 [ 0, %1175 ], [ 1, %1209 ], [ 2, %1229 ]
  br label %1177

1177:                                             ; preds = %1176
  br label %1178

1178:                                             ; preds = %1177
  %1179 = add nsw i32 %.14.lcssa234, 16
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %1180
  store i32 1, ptr %1181, align 4
  br label %1182

1182:                                             ; preds = %1178
  br label %1183

1183:                                             ; preds = %1182
  %1184 = add nsw i32 %.14.lcssa234, 80
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %1185
  store i32 1, ptr %1186, align 4
  br label %1187

1187:                                             ; preds = %1183
  br i1 false, label %1159, label %1188

1188:                                             ; preds = %1187
  br label %1189

1189:                                             ; preds = %1188
  unreachable

1190:                                             ; preds = %1175
  br label %1191

1191:                                             ; preds = %1190
  br label %1192

1192:                                             ; preds = %1191
  br label %1193

1193:                                             ; preds = %1192
  br label %1194

1194:                                             ; preds = %1193
  br label %1195

1195:                                             ; preds = %1194
  br label %1196

1196:                                             ; preds = %1195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %1197

1197:                                             ; preds = %1196
  br label %1198

1198:                                             ; preds = %1197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br label %1199

1199:                                             ; preds = %1198
  br i1 false, label %.loopexit235, label %1200

1200:                                             ; preds = %1199
  br label %1201

1201:                                             ; preds = %1200
  br label %1202

1202:                                             ; preds = %1201
  br label %1203

1203:                                             ; preds = %1202
  br label %1204

1204:                                             ; preds = %1203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %1205

1205:                                             ; preds = %1204
  br label %1206

1206:                                             ; preds = %1205
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br label %1207

1207:                                             ; preds = %1206
  br i1 false, label %.loopexit235, label %1208

1208:                                             ; preds = %1207
  br label %1209

1209:                                             ; preds = %1208
  br i1 false, label %1176, label %1210

1210:                                             ; preds = %1209
  br label %1211

1211:                                             ; preds = %1210
  br i1 false, label %1212, label %1232

1212:                                             ; preds = %1211
  br label %1213

1213:                                             ; preds = %1212
  br label %1214

1214:                                             ; preds = %1213
  br label %1215

1215:                                             ; preds = %1214
  br label %1216

1216:                                             ; preds = %1215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %1217

1217:                                             ; preds = %1216
  br label %1218

1218:                                             ; preds = %1217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br label %1219

1219:                                             ; preds = %1218
  br i1 false, label %.loopexit235, label %1220

1220:                                             ; preds = %1219
  br label %1221

1221:                                             ; preds = %1220
  br label %1222

1222:                                             ; preds = %1221
  br label %1223

1223:                                             ; preds = %1222
  br label %1224

1224:                                             ; preds = %1223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %1225

1225:                                             ; preds = %1224
  br label %1226

1226:                                             ; preds = %1225
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br label %1227

1227:                                             ; preds = %1226
  br i1 false, label %.loopexit235, label %1228

1228:                                             ; preds = %1227
  br label %1229

1229:                                             ; preds = %1228
  br i1 false, label %1176, label %1230

1230:                                             ; preds = %1229
  br label %1231

1231:                                             ; preds = %1230
  unreachable

1232:                                             ; preds = %1211
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %1233 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %1234 = icmp ne i32 %1233, 0
  br i1 %1234, label %1235, label %1237

1235:                                             ; preds = %1232
  %1236 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %1236, ptr @n, align 4
  br label %1239

1237:                                             ; preds = %1232
  %1238 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %1239

1239:                                             ; preds = %1237, %1235
  %1240 = load i32, ptr @n, align 4
  %1241 = call i32 @Trial(i32 noundef %1240)
  %1242 = icmp ne i32 %1241, 0
  br i1 %1242, label %1245, label %1243

1243:                                             ; preds = %1239
  %1244 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %1251

1245:                                             ; preds = %1239
  %1246 = load i32, ptr @kount, align 4
  %1247 = icmp ne i32 %1246, 2005
  br i1 %1247, label %1248, label %1250

1248:                                             ; preds = %1245
  %1249 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %1250

1250:                                             ; preds = %1248, %1245
  br label %1251

1251:                                             ; preds = %1250, %1243
  %1252 = load i32, ptr @n, align 4
  %1253 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %1252)
  %1254 = load i32, ptr @kount, align 4
  %1255 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %1254)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !17

6:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
