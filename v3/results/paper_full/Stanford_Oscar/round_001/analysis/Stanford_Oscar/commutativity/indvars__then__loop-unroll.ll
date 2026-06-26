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
  br i1 false, label %45, label %42

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
  br i1 false, label %93, label %90

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
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %26, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %26 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %10, double noundef %13)
  %15 = add nsw i32 %.0, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %25 = add nsw i32 %15, %3
  br label %26

26:                                               ; preds = %6
  %27 = icmp sle i32 %25, %2
  br i1 %27, label %6, label %28, !llvm.loop !7

28:                                               ; preds = %26
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 4855, %3
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 8.192000e+03
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %12, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 1, %2 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %11, %12 ]
  %exitcond = icmp ne i64 %indvars.iv, 26
  br i1 %exitcond, label %5, label %13

5:                                                ; preds = %4
  %6 = fdiv float f0x40490FDB, %.03
  %7 = call float @Cos(float noundef %6)
  %8 = fmul float 2.000000e+00, %7
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %indvars.iv
  store float %9, ptr %10, align 4
  %11 = fadd float %.03, %.03
  br label %12

12:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = sdiv i32 %0, 2
  %15 = sdiv i32 %14, 2
  %16 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %16, align 4
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  store float 0.000000e+00, ptr %17, align 4
  %18 = add nsw i32 %15, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 %19
  store float 0.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float 1.000000e+00, ptr %21, align 4
  %22 = add nsw i32 %14, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.complex, ptr %1, i64 %23
  store float -1.000000e+00, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 1
  store float 0.000000e+00, ptr %25, align 4
  %26 = sext i32 %14 to i64
  br label %27

27:                                               ; preds = %62, %13
  %.02 = phi i32 [ 1, %13 ], [ %61, %62 ]
  %.0 = phi i32 [ %15, %13 ], [ %28, %62 ]
  %28 = sdiv i32 %.0, 2
  %29 = sext i32 %28 to i64
  %30 = sext i32 %.0 to i64
  %31 = sext i32 %28 to i64
  %32 = sext i32 %28 to i64
  br label %33

33:                                               ; preds = %57, %27
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %57 ], [ %29, %27 ]
  %34 = sext i32 %.02 to i64
  %35 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = add nsw i64 %indvars.iv2, %31
  %38 = add nsw i64 %37, 1
  %39 = getelementptr inbounds %struct.complex, ptr %1, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = sub nsw i64 %indvars.iv2, %32
  %42 = add nsw i64 %41, 1
  %43 = getelementptr inbounds %struct.complex, ptr %1, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = fadd float %40, %44
  %46 = fmul float %36, %45
  %47 = add nsw i64 %indvars.iv2, 1
  %48 = getelementptr inbounds %struct.complex, ptr %1, i64 %47
  store float %46, ptr %48, align 4
  %49 = load float, ptr %35, align 4
  %50 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds nuw %struct.complex, ptr %43, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = fadd float %51, %53
  %55 = fmul float %49, %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  store float %55, ptr %56, align 4
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %30
  br label %57

57:                                               ; preds = %33
  %58 = icmp sle i64 %indvars.iv.next3, %26
  br i1 %58, label %33, label %59, !llvm.loop !10

59:                                               ; preds = %57
  %60 = add nsw i32 %.02, 1
  %61 = call i32 @Min0(i32 noundef %60, i32 noundef 25)
  br label %62

62:                                               ; preds = %59
  %63 = icmp sgt i32 %28, 1
  br i1 %63, label %27, label %64, !llvm.loop !11

64:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %7 = sext i32 %6 to i64
  %8 = sext i32 %6 to i64
  %smax8 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %9 = add nuw i32 %smax8, 1
  %10 = add nsw i32 %smax8, -1
  br label %11

11:                                               ; preds = %87, %5
  %.01 = phi i32 [ 1, %5 ], [ %86, %87 ]
  %12 = sext i32 %.01 to i64
  br label %13

13:                                               ; preds = %63, %11
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %63 ], [ %12, %11 ]
  %.04 = phi i32 [ 1, %11 ], [ %62, %63 ]
  %.02 = phi i32 [ 0, %11 ], [ %65, %63 ]
  %14 = sext i32 %.04 to i64
  %15 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv2, i64 %14)
  %16 = add i64 %smax, 1
  br label %17

17:                                               ; preds = %60, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %60 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %19 = load float, ptr %18, align 4
  %20 = add nsw i64 %7, %indvars.iv
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fadd float %19, %22
  %24 = add nsw i64 %indvars.iv, %15
  %25 = getelementptr inbounds %struct.complex, ptr %2, i64 %24
  store float %23, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  store float %30, ptr %31, align 4
  %32 = add nsw i32 %.02, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %3, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %18, align 4
  %37 = load float, ptr %21, align 4
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %40 = load float, ptr %39, align 4
  %41 = load float, ptr %26, align 4
  %42 = load float, ptr %28, align 4
  %43 = fsub float %41, %42
  %44 = fmul float %40, %43
  %45 = fneg float %44
  %46 = call float @llvm.fmuladd.f32(float %35, float %38, float %45)
  %47 = add nsw i64 %indvars.iv, %indvars.iv2
  %48 = getelementptr inbounds %struct.complex, ptr %2, i64 %47
  store float %46, ptr %48, align 4
  %49 = load float, ptr %34, align 4
  %50 = load float, ptr %26, align 4
  %51 = load float, ptr %28, align 4
  %52 = fsub float %50, %51
  %53 = load float, ptr %39, align 4
  %54 = load float, ptr %18, align 4
  %55 = load float, ptr %21, align 4
  %56 = fsub float %54, %55
  %57 = fmul float %53, %56
  %58 = call float @llvm.fmuladd.f32(float %49, float %52, float %57)
  %59 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  store float %58, ptr %59, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %60

60:                                               ; preds = %17
  %exitcond = icmp ne i64 %indvars.iv.next, %16
  br i1 %exitcond, label %17, label %61, !llvm.loop !12

61:                                               ; preds = %60
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %60 ]
  %62 = trunc nsw i64 %.lcssa.wide to i32
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %12
  br label %63

63:                                               ; preds = %61
  %64 = icmp sle i64 %indvars.iv.next3, %8
  %65 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %64, label %13, label %66, !llvm.loop !13

66:                                               ; preds = %63
  %wide.trip.count = zext i32 %9 to i64
  %xtraiter = and i32 %smax8, 3
  %67 = icmp ult i32 %10, 3
  br i1 %67, label %.epil.preheader, label %.new

.new:                                             ; preds = %66
  %unroll_iter = sub i32 %smax8, %xtraiter
  br label %68

68:                                               ; preds = %80, %.new
  %indvars.iv5 = phi i64 [ 1, %.new ], [ %indvars.iv.next6.3, %80 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %80 ]
  %69 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv5
  %70 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %69, ptr align 4 %70, i64 8, i1 false)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv.next6
  %73 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv.next6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %73, i64 8, i1 false)
  %indvars.iv.next6.1 = add nuw nsw i64 %indvars.iv5, 2
  br label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv.next6.1
  %76 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv.next6.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %75, ptr align 4 %76, i64 8, i1 false)
  %indvars.iv.next6.2 = add nuw nsw i64 %indvars.iv5, 3
  br label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv.next6.2
  %79 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv.next6.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr align 4 %79, i64 8, i1 false)
  %indvars.iv.next6.3 = add nuw nsw i64 %indvars.iv5, 4
  br label %80

80:                                               ; preds = %77
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %68, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %80
  %indvars.iv5.unr = phi i64 [ %indvars.iv.next6.3, %80 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %85

.epil.preheader:                                  ; preds = %.unr-lcssa, %66
  %indvars.iv5.epil.init = phi i64 [ 1, %66 ], [ %indvars.iv5.unr, %.unr-lcssa ]
  %lcmp.mod16 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod16)
  br label %81

81:                                               ; preds = %84, %.epil.preheader
  %indvars.iv5.epil = phi i64 [ %indvars.iv.next6.epil, %84 ], [ %indvars.iv5.epil.init, %.epil.preheader ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %84 ]
  %82 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv5.epil
  %83 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv5.epil
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %82, ptr align 4 %83, i64 8, i1 false)
  %indvars.iv.next6.epil = add nuw nsw i64 %indvars.iv5.epil, 1
  br label %84

84:                                               ; preds = %81
  %exitcond9.epil = icmp ne i64 %indvars.iv.next6.epil, %wide.trip.count
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %81, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %84
  br label %85

85:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %86 = add nsw i32 %.01, %.01
  br label %87

87:                                               ; preds = %85
  %88 = icmp sle i32 %86, %6
  br i1 %88, label %11, label %89, !llvm.loop !17

89:                                               ; preds = %87
  %smax13 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %90 = add nuw i32 %smax13, 1
  %wide.trip.count14 = zext i32 %90 to i64
  br label %91

91:                                               ; preds = %100, %89
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %100 ], [ 1, %89 ]
  %exitcond15 = icmp ne i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15, label %92, label %101

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv10
  %94 = load float, ptr %93, align 4
  %95 = fmul float %4, %94
  store float %95, ptr %93, align 4
  %96 = fneg float %4
  %97 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = fmul float %96, %98
  store float %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %92
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %91, !llvm.loop !18

101:                                              ; preds = %91
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %13, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 257
  br i1 %exitcond, label %3, label %14

3:                                                ; preds = %2
  %4 = load i32, ptr @seed, align 4
  store i32 %4, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  %7 = load float, ptr @zr, align 4
  %8 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %7, float -1.000000e+01)
  %9 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  store float %8, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = getelementptr inbounds nuw %struct.complex, ptr %9, i32 0, i32 1
  store float %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !19

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %17, %14
  %.1 = phi i32 [ 1, %14 ], [ %18, %17 ]
  %exitcond2 = icmp ne i32 %.1, 21
  br i1 %exitcond2, label %16, label %19

16:                                               ; preds = %15
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !20

19:                                               ; preds = %15
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
