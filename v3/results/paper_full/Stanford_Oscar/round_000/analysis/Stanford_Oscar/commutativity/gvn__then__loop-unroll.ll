; ModuleID = 'results\paper_full\Stanford_Oscar\Stanford_Oscar.ll'
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
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, ptr %2, align 4
  store float 1.000000e+00, ptr %5, align 4
  store i32 1, ptr %4, align 4
  store float %0, ptr %6, align 4
  store i32 2, ptr %3, align 4
  br label %7

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7
  store i32 2, ptr %4, align 4
  %9 = fmul float %0, %0
  store float %9, ptr %6, align 4
  br i1 true, label %10, label %19

10:                                               ; preds = %8
  br i1 false, label %11, label %14

11:                                               ; preds = %10
  %12 = fdiv float %9, 2.000000e+00
  %13 = fadd float 1.000000e+00, %12
  store float %13, ptr %5, align 4
  br label %17

14:                                               ; preds = %10
  %15 = fdiv float %9, 2.000000e+00
  %16 = fsub float 1.000000e+00, %15
  store float %16, ptr %5, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi float [ %16, %14 ], [ %13, %11 ]
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi float [ %18, %17 ], [ 1.000000e+00, %8 ]
  store i32 3, ptr %3, align 4
  br label %21

21:                                               ; preds = %19
  store i32 6, ptr %4, align 4
  %22 = fmul float %9, %0
  store float %22, ptr %6, align 4
  br i1 false, label %23, label %32

23:                                               ; preds = %21
  br i1 false, label %27, label %24

24:                                               ; preds = %23
  %25 = fdiv float %22, 6.000000e+00
  %26 = fsub float %20, %25
  store float %26, ptr %5, align 4
  br label %30

27:                                               ; preds = %23
  %28 = fdiv float %22, 6.000000e+00
  %29 = fadd float %20, %28
  store float %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi float [ %26, %24 ], [ %29, %27 ]
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi float [ %31, %30 ], [ %20, %21 ]
  store i32 4, ptr %3, align 4
  br label %34

34:                                               ; preds = %32
  store i32 24, ptr %4, align 4
  %35 = fmul float %22, %0
  store float %35, ptr %6, align 4
  br i1 true, label %36, label %45

36:                                               ; preds = %34
  br i1 true, label %40, label %37

37:                                               ; preds = %36
  %38 = fdiv float %35, 2.400000e+01
  %39 = fsub float %33, %38
  store float %39, ptr %5, align 4
  br label %43

40:                                               ; preds = %36
  %41 = fdiv float %35, 2.400000e+01
  %42 = fadd float %33, %41
  store float %42, ptr %5, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi float [ %39, %37 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %34
  %46 = phi float [ %44, %43 ], [ %33, %34 ]
  store i32 5, ptr %3, align 4
  br label %47

47:                                               ; preds = %45
  store i32 120, ptr %4, align 4
  %48 = fmul float %35, %0
  store float %48, ptr %6, align 4
  br i1 false, label %49, label %58

49:                                               ; preds = %47
  br i1 false, label %53, label %50

50:                                               ; preds = %49
  %51 = fdiv float %48, 1.200000e+02
  %52 = fsub float %46, %51
  store float %52, ptr %5, align 4
  br label %56

53:                                               ; preds = %49
  %54 = fdiv float %48, 1.200000e+02
  %55 = fadd float %46, %54
  store float %55, ptr %5, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi float [ %52, %50 ], [ %55, %53 ]
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi float [ %57, %56 ], [ %46, %47 ]
  store i32 6, ptr %3, align 4
  br label %60

60:                                               ; preds = %58
  store i32 720, ptr %4, align 4
  %61 = fmul float %48, %0
  store float %61, ptr %6, align 4
  br i1 true, label %62, label %71

62:                                               ; preds = %60
  br i1 false, label %66, label %63

63:                                               ; preds = %62
  %64 = fdiv float %61, 7.200000e+02
  %65 = fsub float %59, %64
  store float %65, ptr %5, align 4
  br label %69

66:                                               ; preds = %62
  %67 = fdiv float %61, 7.200000e+02
  %68 = fadd float %59, %67
  store float %68, ptr %5, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi float [ %65, %63 ], [ %68, %66 ]
  br label %71

71:                                               ; preds = %69, %60
  %72 = phi float [ %70, %69 ], [ %59, %60 ]
  store i32 7, ptr %3, align 4
  br label %73

73:                                               ; preds = %71
  store i32 5040, ptr %4, align 4
  %74 = fmul float %61, %0
  store float %74, ptr %6, align 4
  br i1 false, label %75, label %84

75:                                               ; preds = %73
  br i1 false, label %79, label %76

76:                                               ; preds = %75
  %77 = fdiv float %74, 5.040000e+03
  %78 = fsub float %72, %77
  store float %78, ptr %5, align 4
  br label %82

79:                                               ; preds = %75
  %80 = fdiv float %74, 5.040000e+03
  %81 = fadd float %72, %80
  store float %81, ptr %5, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi float [ %78, %76 ], [ %81, %79 ]
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi float [ %83, %82 ], [ %72, %73 ]
  store i32 8, ptr %3, align 4
  br label %86

86:                                               ; preds = %84
  store i32 40320, ptr %4, align 4
  %87 = fmul float %74, %0
  store float %87, ptr %6, align 4
  br i1 true, label %88, label %97

88:                                               ; preds = %86
  br i1 true, label %92, label %89

89:                                               ; preds = %88
  %90 = fdiv float %87, 4.032000e+04
  %91 = fsub float %85, %90
  store float %91, ptr %5, align 4
  br label %95

92:                                               ; preds = %88
  %93 = fdiv float %87, 4.032000e+04
  %94 = fadd float %85, %93
  store float %94, ptr %5, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi float [ %91, %89 ], [ %94, %92 ]
  br label %97

97:                                               ; preds = %95, %86
  %98 = phi float [ %96, %95 ], [ %85, %86 ]
  store i32 9, ptr %3, align 4
  br label %99

99:                                               ; preds = %97
  store i32 362880, ptr %4, align 4
  %100 = fmul float %87, %0
  store float %100, ptr %6, align 4
  br i1 false, label %101, label %110

101:                                              ; preds = %99
  br i1 false, label %105, label %102

102:                                              ; preds = %101
  %103 = fdiv float %100, 3.628800e+05
  %104 = fsub float %98, %103
  store float %104, ptr %5, align 4
  br label %108

105:                                              ; preds = %101
  %106 = fdiv float %100, 3.628800e+05
  %107 = fadd float %98, %106
  store float %107, ptr %5, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi float [ %104, %102 ], [ %107, %105 ]
  br label %110

110:                                              ; preds = %108, %99
  %111 = phi float [ %109, %108 ], [ %98, %99 ]
  store i32 10, ptr %3, align 4
  br label %112

112:                                              ; preds = %110
  store i32 3628800, ptr %4, align 4
  %113 = fmul float %100, %0
  store float %113, ptr %6, align 4
  br i1 true, label %114, label %123

114:                                              ; preds = %112
  br i1 false, label %118, label %115

115:                                              ; preds = %114
  %116 = fdiv float %113, 3.628800e+06
  %117 = fsub float %111, %116
  store float %117, ptr %5, align 4
  br label %121

118:                                              ; preds = %114
  %119 = fdiv float %113, 3.628800e+06
  %120 = fadd float %111, %119
  store float %120, ptr %5, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi float [ %117, %115 ], [ %120, %118 ]
  br label %123

123:                                              ; preds = %121, %112
  %124 = phi float [ %122, %121 ], [ %111, %112 ]
  store i32 11, ptr %3, align 4
  br i1 false, label %125, label %136

125:                                              ; preds = %123
  store i32 39916800, ptr %4, align 4
  %126 = fmul float %113, %0
  store float %126, ptr %6, align 4
  br i1 false, label %127, label %135

127:                                              ; preds = %125
  br i1 false, label %131, label %128

128:                                              ; preds = %127
  %129 = fdiv float %126, 3.991680e+07
  %130 = fsub float %124, %129
  store float %130, ptr %5, align 4
  br label %134

131:                                              ; preds = %127
  %132 = fdiv float %126, 3.991680e+07
  %133 = fadd float %124, %132
  store float %133, ptr %5, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %125
  store i32 12, ptr %3, align 4
  unreachable

136:                                              ; preds = %123
  %.lcssa = phi float [ %124, %123 ]
  ret float %.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = icmp slt i32 %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 %0, ptr %3, align 4
  br label %9

8:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ %1, %8 ], [ %0, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %1, ptr %9, align 4
  br label %11

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %31, %11 ], [ %1, %4 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.complex, ptr %0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %16, double noundef %19)
  %21 = add nsw i32 %12, %3
  store i32 %21, ptr %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %25, double noundef %28)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %31 = add nsw i32 %21, %3
  store i32 %31, ptr %9, align 4
  %32 = icmp sle i32 %31, %2
  br i1 %32, label %11, label %33, !llvm.loop !7

33:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %0, align 4
  %6 = mul nsw i32 4855, %5
  %7 = add nsw i32 %6, 1731
  %8 = and i32 %7, 8191
  store i32 %8, ptr %0, align 4
  %9 = sitofp i32 %8 to float
  %10 = fdiv float %9, 8.192000e+03
  store float %10, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [26 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store float f0x40490FDB, ptr %5, align 4
  store float 4.000000e+00, ptr %6, align 4
  store i32 1, ptr %8, align 4
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi float [ %24, %17 ], [ 4.000000e+00, %2 ]
  %15 = phi i32 [ %25, %17 ], [ 1, %2 ]
  %16 = icmp sle i32 %15, 25
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = fdiv float f0x40490FDB, %14
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float 2.000000e+00, %19
  %21 = fdiv float 1.000000e+00, %20
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %22
  store float %21, ptr %23, align 4
  %24 = fadd float %14, %14
  store float %24, ptr %6, align 4
  %25 = add nsw i32 %15, 1
  store i32 %25, ptr %8, align 4
  br label %13, !llvm.loop !9

26:                                               ; preds = %13
  %27 = sdiv i32 %0, 2
  store i32 %27, ptr %12, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %29 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  store float 0.000000e+00, ptr %30, align 4
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %1, i64 %32
  store float 0.000000e+00, ptr %33, align 4
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 1
  store float 1.000000e+00, ptr %34, align 4
  %35 = add nsw i32 %27, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  store float -1.000000e+00, ptr %37, align 4
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  br label %39

39:                                               ; preds = %96, %26
  %40 = phi ptr [ %.lcssa2, %96 ], [ %1, %26 ]
  %41 = phi i32 [ %98, %96 ], [ 1, %26 ]
  %42 = phi i32 [ %.lcssa, %96 ], [ %28, %26 ]
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %8, align 4
  store i32 %43, ptr %10, align 4
  %.phi.trans.insert = sext i32 %41 to i64
  %.phi.trans.insert1 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi i32 [ %73, %44 ], [ %43, %39 ]
  %46 = phi i32 [ %93, %44 ], [ %43, %39 ]
  %47 = phi ptr [ %71, %44 ], [ %40, %39 ]
  %48 = phi float [ %70, %44 ], [ %.pre, %39 ]
  %49 = phi i32 [ %67, %44 ], [ %41, %39 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %50
  %52 = add nsw i32 %46, %45
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %47, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = sub nsw i32 %46, %45
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %47, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = fadd float %56, %61
  %63 = fmul float %48, %62
  %64 = add nsw i32 %46, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %47, i64 %65
  store float %63, ptr %66, align 4
  %67 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %10, align 4
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %71, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  %79 = load float, ptr %78, align 4
  %80 = sub nsw i32 %72, %73
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, ptr %71, i64 %82
  %84 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 1
  %85 = load float, ptr %84, align 4
  %86 = fadd float %79, %85
  %87 = fmul float %70, %86
  %88 = add nsw i32 %72, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.complex, ptr %71, i64 %89
  %91 = getelementptr inbounds nuw %struct.complex, ptr %90, i32 0, i32 1
  store float %87, ptr %91, align 4
  %92 = load i32, ptr %11, align 4
  %93 = add nsw i32 %72, %92
  store i32 %93, ptr %10, align 4
  %94 = load i32, ptr %12, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %44, label %96, !llvm.loop !10

96:                                               ; preds = %44
  %.lcssa3 = phi i32 [ %67, %44 ]
  %.lcssa2 = phi ptr [ %71, %44 ]
  %.lcssa = phi i32 [ %73, %44 ]
  %97 = add nsw i32 %.lcssa3, 1
  %98 = call i32 @Min0(i32 noundef %97, i32 noundef 25)
  store i32 %98, ptr %9, align 4
  store i32 %.lcssa, ptr %11, align 4
  %99 = icmp sgt i32 %.lcssa, 1
  br i1 %99, label %39, label %100, !llvm.loop !11

100:                                              ; preds = %96
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store float %4, ptr %10, align 4
  %17 = sdiv i32 %0, 2
  store i32 %17, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %18

18:                                               ; preds = %119, %5
  %19 = phi ptr [ %.lcssa2.lcssa, %119 ], [ %2, %5 ]
  %20 = phi i32 [ %.lcssa3.lcssa, %119 ], [ %17, %5 ]
  %21 = phi ptr [ %.lcssa4.lcssa, %119 ], [ %1, %5 ]
  %22 = phi i32 [ %120, %119 ], [ 1, %5 ]
  store i32 0, ptr %13, align 4
  store i32 %22, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %23

23:                                               ; preds = %98, %18
  %24 = phi i32 [ %.lcssa1, %98 ], [ 0, %18 ]
  %25 = phi ptr [ %.lcssa2, %98 ], [ %19, %18 ]
  %26 = phi i32 [ %.lcssa3, %98 ], [ %20, %18 ]
  %27 = phi i32 [ %.lcssa, %98 ], [ 1, %18 ]
  %28 = phi ptr [ %.lcssa4, %98 ], [ %21, %18 ]
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %60, %29 ], [ %24, %23 ]
  %31 = phi ptr [ %59, %29 ], [ %25, %23 ]
  %32 = phi i32 [ %52, %29 ], [ %26, %23 ]
  %33 = phi i32 [ %96, %29 ], [ %27, %23 ]
  %34 = phi ptr [ %46, %29 ], [ %28, %23 ]
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %34, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = add nsw i32 %32, %33
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %34, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = fadd float %37, %41
  %43 = add nsw i32 %33, %30
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %31, i64 %44
  store float %42, ptr %45, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = load i32, ptr %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.complex, ptr %46, i64 %48
  %50 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %15, align 4
  %53 = add nsw i32 %52, %47
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %46, i64 %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %55, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = fadd float %51, %57
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %13, align 4
  %61 = add nsw i32 %47, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.complex, ptr %59, i64 %62
  %64 = getelementptr inbounds nuw %struct.complex, ptr %63, i32 0, i32 1
  store float %58, ptr %64, align 4
  %65 = load ptr, ptr %9, align 8
  %66 = add nsw i32 %60, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.complex, ptr %65, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = load float, ptr %49, align 4
  %71 = load float, ptr %55, align 4
  %72 = fsub float %70, %71
  %73 = getelementptr inbounds nuw %struct.complex, ptr %68, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  %75 = load float, ptr %50, align 4
  %76 = load float, ptr %56, align 4
  %77 = fsub float %75, %76
  %78 = fmul float %74, %77
  %79 = fneg float %78
  %80 = call float @llvm.fmuladd.f32(float %69, float %72, float %79)
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %47, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.complex, ptr %59, i64 %83
  store float %80, ptr %84, align 4
  %85 = load float, ptr %68, align 4
  %86 = load float, ptr %50, align 4
  %87 = load float, ptr %56, align 4
  %88 = fsub float %86, %87
  %89 = load float, ptr %73, align 4
  %90 = load float, ptr %49, align 4
  %91 = load float, ptr %55, align 4
  %92 = fsub float %90, %91
  %93 = fmul float %89, %92
  %94 = call float @llvm.fmuladd.f32(float %85, float %88, float %93)
  %95 = getelementptr inbounds nuw %struct.complex, ptr %84, i32 0, i32 1
  store float %94, ptr %95, align 4
  %96 = add nsw i32 %47, 1
  store i32 %96, ptr %11, align 4
  %97 = icmp sle i32 %96, %81
  br i1 %97, label %29, label %98, !llvm.loop !12

98:                                               ; preds = %29
  %.lcssa4 = phi ptr [ %46, %29 ]
  %.lcssa3 = phi i32 [ %52, %29 ]
  %.lcssa2 = phi ptr [ %59, %29 ]
  %.lcssa1 = phi i32 [ %81, %29 ]
  %.lcssa = phi i32 [ %96, %29 ]
  store i32 %.lcssa1, ptr %13, align 4
  %99 = load i32, ptr %14, align 4
  %100 = add nsw i32 %.lcssa1, %99
  store i32 %100, ptr %12, align 4
  %101 = icmp sle i32 %100, %.lcssa3
  br i1 %101, label %23, label %102, !llvm.loop !13

102:                                              ; preds = %98
  %.lcssa5 = phi i32 [ %99, %98 ]
  %.lcssa4.lcssa = phi ptr [ %.lcssa4, %98 ]
  %.lcssa3.lcssa = phi i32 [ %.lcssa3, %98 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %98 ]
  store i32 1, ptr %16, align 4
  %.pre = load i32, ptr %6, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %103 = add nsw i32 %smax, -1
  %xtraiter = and i32 %smax, 1
  %104 = icmp ult i32 %103, 1
  br i1 %104, label %.epil.preheader, label %.new

.new:                                             ; preds = %102
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %105

105:                                              ; preds = %105, %.new
  %106 = phi i32 [ 1, %.new ], [ %114, %105 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %105 ]
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.complex, ptr %.lcssa4.lcssa, i64 %107
  %109 = getelementptr inbounds %struct.complex, ptr %.lcssa2.lcssa, i64 %107
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %108, ptr align 4 %109, i64 8, i1 false)
  %110 = add nsw i32 %106, 1
  store i32 %110, ptr %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.complex, ptr %.lcssa4.lcssa, i64 %111
  %113 = getelementptr inbounds %struct.complex, ptr %.lcssa2.lcssa, i64 %111
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %112, ptr align 4 %113, i64 8, i1 false)
  %114 = add nsw i32 %106, 2
  store i32 %114, ptr %16, align 4
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %105, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %105
  %.unr = phi i32 [ %114, %105 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %119

.epil.preheader:                                  ; preds = %.unr-lcssa, %102
  %.epil.init = phi i32 [ 1, %102 ], [ %.unr, %.unr-lcssa ]
  %lcmp.mod6 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader
  %115 = sext i32 %.epil.init to i64
  %116 = getelementptr inbounds %struct.complex, ptr %.lcssa4.lcssa, i64 %115
  %117 = getelementptr inbounds %struct.complex, ptr %.lcssa2.lcssa, i64 %115
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %116, ptr align 4 %117, i64 8, i1 false)
  %118 = add nsw i32 %.epil.init, 1
  store i32 %118, ptr %16, align 4
  br label %119

119:                                              ; preds = %.unr-lcssa, %.epilog-lcssa
  %120 = add nsw i32 %.lcssa5, %.lcssa5
  store i32 %120, ptr %14, align 4
  %121 = icmp sle i32 %120, %.lcssa3.lcssa
  br i1 %121, label %18, label %122, !llvm.loop !15

122:                                              ; preds = %119
  %.pre.lcssa = phi i32 [ %.pre, %119 ]
  %.lcssa4.lcssa.lcssa = phi ptr [ %.lcssa4.lcssa, %119 ]
  store i32 1, ptr %11, align 4
  br label %123

123:                                              ; preds = %126, %122
  %124 = phi i32 [ %136, %126 ], [ 1, %122 ]
  %125 = icmp sle i32 %124, %.pre.lcssa
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load float, ptr %10, align 4
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds %struct.complex, ptr %.lcssa4.lcssa.lcssa, i64 %128
  %130 = load float, ptr %129, align 4
  %131 = fmul float %127, %130
  store float %131, ptr %129, align 4
  %132 = fneg float %127
  %133 = getelementptr inbounds nuw %struct.complex, ptr %129, i32 0, i32 1
  %134 = load float, ptr %133, align 4
  %135 = fmul float %132, %134
  store float %135, ptr %133, align 4
  %136 = add nsw i32 %124, 1
  store i32 %136, ptr %11, align 4
  br label %123, !llvm.loop !16

137:                                              ; preds = %123
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  store i32 1, ptr %1, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %9, %7 ], [ 5767, %0 ]
  %5 = phi i32 [ %17, %7 ], [ 1, %0 ]
  %6 = icmp sle i32 %5, 256
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr @seed, align 4
  %10 = load float, ptr @zr, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  store float %11, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 1
  store float %15, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  store i32 %17, ptr %1, align 4
  br label %3, !llvm.loop !17

18:                                               ; preds = %3
  store i32 1, ptr %1, align 4
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i32 [ %23, %22 ], [ 1, %18 ]
  %21 = icmp sle i32 %20, 20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %1, align 4
  br label %19, !llvm.loop !18

24:                                               ; preds = %19
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %3
  call void @Oscar()
  store i32 1, ptr %2, align 4
  br label %5

5:                                                ; preds = %4
  call void @Oscar()
  store i32 2, ptr %2, align 4
  br label %6

6:                                                ; preds = %5
  call void @Oscar()
  store i32 3, ptr %2, align 4
  br label %7

7:                                                ; preds = %6
  call void @Oscar()
  store i32 4, ptr %2, align 4
  br label %8

8:                                                ; preds = %7
  call void @Oscar()
  store i32 5, ptr %2, align 4
  br label %9

9:                                                ; preds = %8
  call void @Oscar()
  store i32 6, ptr %2, align 4
  br label %10

10:                                               ; preds = %9
  call void @Oscar()
  store i32 7, ptr %2, align 4
  br label %11

11:                                               ; preds = %10
  call void @Oscar()
  store i32 8, ptr %2, align 4
  br label %12

12:                                               ; preds = %11
  call void @Oscar()
  store i32 9, ptr %2, align 4
  br label %13

13:                                               ; preds = %12
  call void @Oscar()
  store i32 10, ptr %2, align 4
  br i1 false, label %14, label %15

14:                                               ; preds = %13
  call void @Oscar()
  store i32 11, ptr %2, align 4
  unreachable

15:                                               ; preds = %13
  ret i32 0
}

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
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
