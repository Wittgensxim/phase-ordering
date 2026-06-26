; ModuleID = 'results\paper_full\Stanford_Oscar\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.complex = type { float, float }
%struct.element = type { i32, i32 }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
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
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

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
define dso_local float @Cos(float noundef %0) #0 {
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = fmul float %0, %0
  br i1 true, label %5, label %13

5:                                                ; preds = %3
  br i1 false, label %6, label %9

6:                                                ; preds = %5
  %7 = fdiv float %4, 2.000000e+00
  %8 = fadd float 1.000000e+00, %7
  br label %12

9:                                                ; preds = %5
  %10 = fdiv float %4, 2.000000e+00
  %11 = fsub float 1.000000e+00, %10
  br label %12

12:                                               ; preds = %9, %6
  %.2 = phi float [ %8, %6 ], [ %11, %9 ]
  br label %13

13:                                               ; preds = %12, %3
  %.1 = phi float [ %.2, %12 ], [ 1.000000e+00, %3 ]
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  %16 = fmul float %4, %0
  br i1 false, label %17, label %25

17:                                               ; preds = %15
  br i1 false, label %21, label %18

18:                                               ; preds = %17
  %19 = fdiv float %16, 6.000000e+00
  %20 = fsub float %.1, %19
  br label %24

21:                                               ; preds = %17
  %22 = fdiv float %16, 6.000000e+00
  %23 = fadd float %.1, %22
  br label %24

24:                                               ; preds = %21, %18
  %.2.1 = phi float [ %23, %21 ], [ %20, %18 ]
  br label %25

25:                                               ; preds = %24, %15
  %.1.1 = phi float [ %.2.1, %24 ], [ %.1, %15 ]
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = fmul float %16, %0
  br i1 true, label %29, label %37

29:                                               ; preds = %27
  br i1 true, label %33, label %30

30:                                               ; preds = %29
  %31 = fdiv float %28, 2.400000e+01
  %32 = fsub float %.1.1, %31
  br label %36

33:                                               ; preds = %29
  %34 = fdiv float %28, 2.400000e+01
  %35 = fadd float %.1.1, %34
  br label %36

36:                                               ; preds = %33, %30
  %.2.2 = phi float [ %35, %33 ], [ %32, %30 ]
  br label %37

37:                                               ; preds = %36, %27
  %.1.2 = phi float [ %.2.2, %36 ], [ %.1.1, %27 ]
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = fmul float %28, %0
  br i1 false, label %41, label %49

41:                                               ; preds = %39
  br i1 true, label %45, label %42

42:                                               ; preds = %41
  %43 = fdiv float %40, 1.200000e+02
  %44 = fsub float %.1.2, %43
  br label %48

45:                                               ; preds = %41
  %46 = fdiv float %40, 1.200000e+02
  %47 = fadd float %.1.2, %46
  br label %48

48:                                               ; preds = %45, %42
  %.2.3 = phi float [ %47, %45 ], [ %44, %42 ]
  br label %49

49:                                               ; preds = %48, %39
  %.1.3 = phi float [ %.2.3, %48 ], [ %.1.2, %39 ]
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = fmul float %40, %0
  br i1 true, label %53, label %61

53:                                               ; preds = %51
  br i1 false, label %57, label %54

54:                                               ; preds = %53
  %55 = fdiv float %52, 7.200000e+02
  %56 = fsub float %.1.3, %55
  br label %60

57:                                               ; preds = %53
  %58 = fdiv float %52, 7.200000e+02
  %59 = fadd float %.1.3, %58
  br label %60

60:                                               ; preds = %57, %54
  %.2.4 = phi float [ %59, %57 ], [ %56, %54 ]
  br label %61

61:                                               ; preds = %60, %51
  %.1.4 = phi float [ %.2.4, %60 ], [ %.1.3, %51 ]
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = fmul float %52, %0
  br i1 false, label %65, label %73

65:                                               ; preds = %63
  br i1 false, label %69, label %66

66:                                               ; preds = %65
  %67 = fdiv float %64, 5.040000e+03
  %68 = fsub float %.1.4, %67
  br label %72

69:                                               ; preds = %65
  %70 = fdiv float %64, 5.040000e+03
  %71 = fadd float %.1.4, %70
  br label %72

72:                                               ; preds = %69, %66
  %.2.5 = phi float [ %71, %69 ], [ %68, %66 ]
  br label %73

73:                                               ; preds = %72, %63
  %.1.5 = phi float [ %.2.5, %72 ], [ %.1.4, %63 ]
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = fmul float %64, %0
  br i1 true, label %77, label %85

77:                                               ; preds = %75
  br i1 true, label %81, label %78

78:                                               ; preds = %77
  %79 = fdiv float %76, 4.032000e+04
  %80 = fsub float %.1.5, %79
  br label %84

81:                                               ; preds = %77
  %82 = fdiv float %76, 4.032000e+04
  %83 = fadd float %.1.5, %82
  br label %84

84:                                               ; preds = %81, %78
  %.2.6 = phi float [ %83, %81 ], [ %80, %78 ]
  br label %85

85:                                               ; preds = %84, %75
  %.1.6 = phi float [ %.2.6, %84 ], [ %.1.5, %75 ]
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = fmul float %76, %0
  br i1 false, label %89, label %97

89:                                               ; preds = %87
  br i1 true, label %93, label %90

90:                                               ; preds = %89
  %91 = fdiv float %88, 3.628800e+05
  %92 = fsub float %.1.6, %91
  br label %96

93:                                               ; preds = %89
  %94 = fdiv float %88, 3.628800e+05
  %95 = fadd float %.1.6, %94
  br label %96

96:                                               ; preds = %93, %90
  %.2.7 = phi float [ %95, %93 ], [ %92, %90 ]
  br label %97

97:                                               ; preds = %96, %87
  %.1.7 = phi float [ %.2.7, %96 ], [ %.1.6, %87 ]
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = fmul float %88, %0
  br i1 true, label %101, label %109

101:                                              ; preds = %99
  br i1 false, label %105, label %102

102:                                              ; preds = %101
  %103 = fdiv float %100, 3.628800e+06
  %104 = fsub float %.1.7, %103
  br label %108

105:                                              ; preds = %101
  %106 = fdiv float %100, 3.628800e+06
  %107 = fadd float %.1.7, %106
  br label %108

108:                                              ; preds = %105, %102
  %.2.8 = phi float [ %107, %105 ], [ %104, %102 ]
  br label %109

109:                                              ; preds = %108, %99
  %.1.8 = phi float [ %.2.8, %108 ], [ %.1.7, %99 ]
  br label %110

110:                                              ; preds = %109
  br i1 false, label %111, label %118

111:                                              ; preds = %110
  br i1 false, label %112, label %116

112:                                              ; preds = %111
  br i1 false, label %114, label %113

113:                                              ; preds = %112
  br label %115

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116
  unreachable

118:                                              ; preds = %110
  %.03.lcssa = phi float [ %.1.8, %110 ]
  ret float %.03.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %23, %4
  %.0 = phi i32 [ %1, %4 ], [ %24, %23 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %11 = load float, ptr %10, align 4
  %12 = fpext float %11 to double
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %9, double noundef %12) #6
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %20 = load float, ptr %19, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %18, double noundef %21) #6
  %putchar1 = call i32 @putchar(i32 10)
  br label %23

23:                                               ; preds = %5
  %24 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %24, %2
  br i1 %.not, label %25, label %5, !llvm.loop !7

25:                                               ; preds = %23
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 %3, 4855
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = uitofp nneg i32 %6 to float
  %8 = fmul nnan float %7, f0x39000000
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %13, %2
  %.04 = phi i32 [ 1, %2 ], [ %15, %13 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %14, %13 ]
  %5 = icmp samesign ult i32 %.04, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float %8, 2.000000e+00
  %10 = fdiv float 1.000000e+00, %9
  %11 = zext nneg i32 %.04 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  store float %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %6
  %14 = fadd float %.03, %.03
  %15 = add nuw nsw i32 %.04, 1
  br label %4, !llvm.loop !9

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %0, 4
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %20, align 4
  %21 = sext i32 %18 to i64
  %22 = getelementptr [8 x i8], ptr %1, i64 %21
  %23 = getelementptr i8, ptr %22, i64 8
  store float 0.000000e+00, ptr %23, align 4
  %24 = getelementptr i8, ptr %22, i64 12
  store float 1.000000e+00, ptr %24, align 4
  %25 = sext i32 %17 to i64
  %26 = getelementptr [8 x i8], ptr %1, i64 %25
  %27 = getelementptr i8, ptr %26, i64 8
  store float -1.000000e+00, ptr %27, align 4
  %28 = getelementptr i8, ptr %26, i64 12
  store float 0.000000e+00, ptr %28, align 4
  br label %29

29:                                               ; preds = %63, %16
  %.02 = phi i32 [ 1, %16 ], [ %62, %63 ]
  %.0 = phi i32 [ %18, %16 ], [ %30, %63 ]
  %30 = sdiv i32 %.0, 2
  br label %31

31:                                               ; preds = %58, %29
  %.01 = phi i32 [ %30, %29 ], [ %59, %58 ]
  %32 = sext i32 %.02 to i64
  %33 = getelementptr inbounds [4 x i8], ptr %3, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = add nsw i32 %.01, %30
  %36 = sext i32 %35 to i64
  %37 = getelementptr [8 x i8], ptr %1, i64 %36
  %38 = getelementptr i8, ptr %37, i64 8
  %39 = load float, ptr %38, align 4
  %40 = sub nsw i32 %.01, %30
  %41 = sext i32 %40 to i64
  %42 = getelementptr [8 x i8], ptr %1, i64 %41
  %43 = getelementptr i8, ptr %42, i64 8
  %44 = load float, ptr %43, align 4
  %45 = fadd float %39, %44
  %46 = fmul float %34, %45
  %47 = sext i32 %.01 to i64
  %48 = getelementptr [8 x i8], ptr %1, i64 %47
  %49 = getelementptr i8, ptr %48, i64 8
  store float %46, ptr %49, align 4
  %50 = load float, ptr %33, align 4
  %51 = getelementptr i8, ptr %37, i64 12
  %52 = load float, ptr %51, align 4
  %53 = getelementptr i8, ptr %42, i64 12
  %54 = load float, ptr %53, align 4
  %55 = fadd float %52, %54
  %56 = fmul float %50, %55
  %57 = getelementptr i8, ptr %48, i64 12
  store float %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %31
  %59 = add nsw i32 %.01, %.0
  %.not = icmp sgt i32 %59, %17
  br i1 %.not, label %60, label %31, !llvm.loop !10

60:                                               ; preds = %58
  %61 = add nsw i32 %.02, 1
  %62 = call i32 @Min0(i32 noundef %61, i32 noundef 25)
  br label %63

63:                                               ; preds = %60
  %64 = icmp sgt i32 %.0, 3
  br i1 %64, label %29, label %65, !llvm.loop !11

65:                                               ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %97, %5
  %.01 = phi i32 [ 1, %5 ], [ %98, %97 ]
  br label %9

9:                                                ; preds = %60, %8
  %.04 = phi i32 [ 1, %8 ], [ %.lcssa, %60 ]
  %.03 = phi i32 [ %.01, %8 ], [ %61, %60 ]
  %.02 = phi i32 [ 0, %8 ], [ %.03, %60 ]
  br label %10

10:                                               ; preds = %58, %9
  %.1 = phi i32 [ %.04, %9 ], [ %57, %58 ]
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %1, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = add nsw i32 %6, %.1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %1, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %13, %17
  %19 = add nsw i32 %.1, %.02
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %2, i64 %20
  store float %18, ptr %21, align 4
  %22 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %25 = load float, ptr %24, align 4
  %26 = fadd float %23, %25
  %27 = getelementptr inbounds nuw i8, ptr %21, i64 4
  store float %26, ptr %27, align 4
  %28 = sext i32 %.02 to i64
  %29 = getelementptr [8 x i8], ptr %3, i64 %28
  %30 = getelementptr i8, ptr %29, i64 8
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %12, align 4
  %33 = load float, ptr %16, align 4
  %34 = fsub float %32, %33
  %35 = getelementptr i8, ptr %29, i64 12
  %36 = load float, ptr %35, align 4
  %37 = load float, ptr %22, align 4
  %38 = load float, ptr %24, align 4
  %39 = fsub float %37, %38
  %40 = fneg float %39
  %41 = fmul float %36, %40
  %42 = call float @llvm.fmuladd.f32(float %31, float %34, float %41)
  %43 = add nsw i32 %.1, %.03
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %2, i64 %44
  store float %42, ptr %45, align 4
  %46 = load float, ptr %30, align 4
  %47 = load float, ptr %22, align 4
  %48 = load float, ptr %24, align 4
  %49 = fsub float %47, %48
  %50 = load float, ptr %35, align 4
  %51 = load float, ptr %12, align 4
  %52 = load float, ptr %16, align 4
  %53 = fsub float %51, %52
  %54 = fmul float %50, %53
  %55 = call float @llvm.fmuladd.f32(float %46, float %49, float %54)
  %56 = getelementptr inbounds nuw i8, ptr %45, i64 4
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.1, 1
  br label %58

58:                                               ; preds = %10
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %10, label %59, !llvm.loop !12

59:                                               ; preds = %58
  %.lcssa = phi i32 [ %57, %58 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %61, %6
  br i1 %.not, label %62, label %9, !llvm.loop !13

62:                                               ; preds = %60
  %xtraiter = and i32 %smax, 3
  %63 = icmp ult i32 %7, 3
  br i1 %63, label %.epil.preheader, label %.new

.new:                                             ; preds = %62
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %64

64:                                               ; preds = %87, %.new
  %.0 = phi i32 [ 1, %.new ], [ %88, %87 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %87 ]
  %65 = zext nneg i32 %.0 to i64
  %66 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %65
  %67 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %65
  %68 = load i64, ptr %67, align 4
  store i64 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %64
  %70 = add nuw nsw i32 %.0, 1
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %71
  %73 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %71
  %74 = load i64, ptr %73, align 4
  store i64 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %69
  %76 = add nuw nsw i32 %.0, 2
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %77
  %79 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %77
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %75
  %82 = add nuw nsw i32 %.0, 3
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %83
  %85 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %83
  %86 = load i64, ptr %85, align 4
  store i64 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %81
  %88 = add nuw nsw i32 %.0, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %64, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %87
  %.0.unr = phi i32 [ %88, %87 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %96

.epil.preheader:                                  ; preds = %.unr-lcssa, %62
  %.0.epil.init = phi i32 [ 1, %62 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod4 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %89

89:                                               ; preds = %94, %.epil.preheader
  %.0.epil = phi i32 [ %.0.epil.init, %.epil.preheader ], [ %95, %94 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %94 ]
  %90 = zext nneg i32 %.0.epil to i64
  %91 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %90
  %92 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %90
  %93 = load i64, ptr %92, align 4
  store i64 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %89
  %95 = add nuw nsw i32 %.0.epil, 1
  %.not1.not.epil = icmp slt i32 %.0.epil, %0
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %89, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %94
  br label %96

96:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  br label %97

97:                                               ; preds = %96
  %98 = shl nsw i32 %.01, 1
  %.not2 = icmp sgt i32 %98, %6
  br i1 %.not2, label %99, label %8, !llvm.loop !17

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %110, %99
  %.2 = phi i32 [ 1, %99 ], [ %111, %110 ]
  %.not3 = icmp sgt i32 %.2, %0
  br i1 %.not3, label %112, label %101

101:                                              ; preds = %100
  %102 = zext nneg i32 %.2 to i64
  %103 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %102
  %104 = load float, ptr %103, align 4
  %105 = fmul float %4, %104
  store float %105, ptr %103, align 4
  %106 = fneg float %4
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %108 = load float, ptr %107, align 4
  %109 = fmul float %108, %106
  store float %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %101
  %111 = add nuw nsw i32 %.2, 1
  br label %100, !llvm.loop !18

112:                                              ; preds = %100
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef nonnull @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %15, %0
  %.0 = phi i32 [ 1, %0 ], [ %16, %15 ]
  %3 = icmp samesign ult i32 %.0, 257
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float %8, float 2.000000e+01, float -1.000000e+01)
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %10
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float %12, float 2.000000e+01, float -1.000000e+01)
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %4
  %16 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !19

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %.1 = phi i32 [ 1, %17 ], [ %22, %21 ]
  %19 = icmp samesign ult i32 %.1, 21
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !20

23:                                               ; preds = %18
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1
  call void @Oscar()
  br label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  call void @Oscar()
  br label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  call void @Oscar()
  br label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9
  call void @Oscar()
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  call void @Oscar()
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  call void @Oscar()
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  call void @Oscar()
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  call void @Oscar()
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  call void @Oscar()
  br label %21

21:                                               ; preds = %20
  br i1 false, label %22, label %24

22:                                               ; preds = %21
  call void @Oscar()
  br label %23

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c", directory: "E:/Phase Ordering/v3")
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
