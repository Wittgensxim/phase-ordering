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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %.015.lcssa = phi float [ %.1.8, %110 ]
  ret float %.015.lcssa
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

6:                                                ; preds = %32, %4
  %.0 = phi i32 [ %1, %4 ], [ %31, %32 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = fpext float %10 to double
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.complex, ptr %0, i64 %12
  %14 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %11, double noundef %16)
  %18 = add nsw i32 %.0, %3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %0, i64 %19
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 0
  %22 = load float, ptr %21, align 4
  %23 = fpext float %22 to double
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %23, double noundef %28)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %31 = add nsw i32 %18, %3
  br label %32

32:                                               ; preds = %6
  %33 = icmp sle i32 %31, %2
  br i1 %33, label %6, label %34, !llvm.loop !7

34:                                               ; preds = %32
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
  %7 = load i32, ptr %0, align 4
  %8 = sitofp i32 %7 to float
  %9 = fdiv float %8, 8.192000e+03
  store float %9, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %14, %2
  %.048 = phi i32 [ 1, %2 ], [ %15, %14 ]
  %.0 = phi float [ 4.000000e+00, %2 ], [ %13, %14 ]
  %5 = icmp sle i32 %.048, 25
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.0
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.048 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.0, %.0
  br label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %.048, 1
  br label %4, !llvm.loop !9

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 0
  store float 1.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  store float 0.000000e+00, ptr %22, align 4
  %23 = add nsw i32 %18, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %1, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 0
  store float 0.000000e+00, ptr %26, align 4
  %27 = add nsw i32 %18, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, ptr %1, i64 %28
  %30 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  store float 1.000000e+00, ptr %30, align 4
  %31 = add nsw i32 %17, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %1, i64 %32
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 0
  store float -1.000000e+00, ptr %34, align 4
  %35 = add nsw i32 %17, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  br label %39

39:                                               ; preds = %90, %16
  %.047 = phi i32 [ 1, %16 ], [ %89, %90 ]
  %.045 = phi i32 [ %18, %16 ], [ %40, %90 ]
  %40 = sdiv i32 %.045, 2
  br label %41

41:                                               ; preds = %85, %39
  %.046 = phi i32 [ %40, %39 ], [ %84, %85 ]
  %42 = sext i32 %.047 to i64
  %43 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = add nsw i32 %.046, %40
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %1, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = sub nsw i32 %.046, %40
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.complex, ptr %1, i64 %53
  %55 = getelementptr inbounds nuw %struct.complex, ptr %54, i32 0, i32 0
  %56 = load float, ptr %55, align 4
  %57 = fadd float %50, %56
  %58 = fmul float %44, %57
  %59 = add nsw i32 %.046, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, ptr %1, i64 %60
  %62 = getelementptr inbounds nuw %struct.complex, ptr %61, i32 0, i32 0
  store float %58, ptr %62, align 4
  %63 = sext i32 %.047 to i64
  %64 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %63
  %65 = load float, ptr %64, align 4
  %66 = add nsw i32 %.046, %40
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %1, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = sub nsw i32 %.046, %40
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.complex, ptr %1, i64 %74
  %76 = getelementptr inbounds nuw %struct.complex, ptr %75, i32 0, i32 1
  %77 = load float, ptr %76, align 4
  %78 = fadd float %71, %77
  %79 = fmul float %65, %78
  %80 = add nsw i32 %.046, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.complex, ptr %1, i64 %81
  %83 = getelementptr inbounds nuw %struct.complex, ptr %82, i32 0, i32 1
  store float %79, ptr %83, align 4
  %84 = add nsw i32 %.046, %.045
  br label %85

85:                                               ; preds = %41
  %86 = icmp sle i32 %84, %17
  br i1 %86, label %41, label %87, !llvm.loop !10

87:                                               ; preds = %85
  %88 = add nsw i32 %.047, 1
  %89 = call i32 @Min0(i32 noundef %88, i32 noundef 25)
  br label %90

90:                                               ; preds = %87
  %91 = icmp sgt i32 %40, 1
  br i1 %91, label %39, label %92, !llvm.loop !11

92:                                               ; preds = %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %141, %5
  %.084 = phi i32 [ 1, %5 ], [ %140, %141 ]
  br label %9

9:                                                ; preds = %117, %8
  %.086 = phi i32 [ %.084, %8 ], [ %116, %117 ]
  %.085 = phi i32 [ 0, %8 ], [ %.086, %117 ]
  %.083 = phi i32 [ 1, %8 ], [ %.lcssa, %117 ]
  br label %10

10:                                               ; preds = %113, %9
  %.1 = phi i32 [ %.083, %9 ], [ %112, %113 ]
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds %struct.complex, ptr %1, i64 %11
  %13 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 0
  %14 = load float, ptr %13, align 4
  %15 = add nsw i32 %6, %.1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, ptr %1, i64 %16
  %18 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 0
  %19 = load float, ptr %18, align 4
  %20 = fadd float %14, %19
  %21 = add nsw i32 %.1, %.085
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %2, i64 %22
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 0
  store float %20, ptr %24, align 4
  %25 = sext i32 %.1 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %1, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = add nsw i32 %6, %.1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  %32 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  %33 = load float, ptr %32, align 4
  %34 = fadd float %28, %33
  %35 = add nsw i32 %.1, %.085
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %2, i64 %36
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float %34, ptr %38, align 4
  %39 = add nsw i32 %.085, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %3, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 0
  %43 = load float, ptr %42, align 4
  %44 = sext i32 %.1 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %1, i64 %44
  %46 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 0
  %47 = load float, ptr %46, align 4
  %48 = add nsw i32 %.1, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.complex, ptr %1, i64 %49
  %51 = getelementptr inbounds nuw %struct.complex, ptr %50, i32 0, i32 0
  %52 = load float, ptr %51, align 4
  %53 = fsub float %47, %52
  %54 = add nsw i32 %.085, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %3, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 1
  %58 = load float, ptr %57, align 4
  %59 = sext i32 %.1 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %1, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 1
  %62 = load float, ptr %61, align 4
  %63 = add nsw i32 %.1, %6
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 1
  %67 = load float, ptr %66, align 4
  %68 = fsub float %62, %67
  %69 = fmul float %58, %68
  %70 = fneg float %69
  %71 = call float @llvm.fmuladd.f32(float %43, float %53, float %70)
  %72 = add nsw i32 %.1, %.086
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %2, i64 %73
  %75 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 0
  store float %71, ptr %75, align 4
  %76 = add nsw i32 %.085, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.complex, ptr %3, i64 %77
  %79 = getelementptr inbounds nuw %struct.complex, ptr %78, i32 0, i32 0
  %80 = load float, ptr %79, align 4
  %81 = sext i32 %.1 to i64
  %82 = getelementptr inbounds %struct.complex, ptr %1, i64 %81
  %83 = getelementptr inbounds nuw %struct.complex, ptr %82, i32 0, i32 1
  %84 = load float, ptr %83, align 4
  %85 = add nsw i32 %.1, %6
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.complex, ptr %1, i64 %86
  %88 = getelementptr inbounds nuw %struct.complex, ptr %87, i32 0, i32 1
  %89 = load float, ptr %88, align 4
  %90 = fsub float %84, %89
  %91 = add nsw i32 %.085, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %3, i64 %92
  %94 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = sext i32 %.1 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %1, i64 %96
  %98 = getelementptr inbounds nuw %struct.complex, ptr %97, i32 0, i32 0
  %99 = load float, ptr %98, align 4
  %100 = add nsw i32 %.1, %6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.complex, ptr %1, i64 %101
  %103 = getelementptr inbounds nuw %struct.complex, ptr %102, i32 0, i32 0
  %104 = load float, ptr %103, align 4
  %105 = fsub float %99, %104
  %106 = fmul float %95, %105
  %107 = call float @llvm.fmuladd.f32(float %80, float %90, float %106)
  %108 = add nsw i32 %.1, %.086
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.complex, ptr %2, i64 %109
  %111 = getelementptr inbounds nuw %struct.complex, ptr %110, i32 0, i32 1
  store float %107, ptr %111, align 4
  %112 = add nsw i32 %.1, 1
  br label %113

113:                                              ; preds = %10
  %114 = icmp sle i32 %112, %.086
  br i1 %114, label %10, label %115, !llvm.loop !12

115:                                              ; preds = %113
  %.lcssa = phi i32 [ %112, %113 ]
  %116 = add nsw i32 %.086, %.084
  br label %117

117:                                              ; preds = %115
  %118 = icmp sle i32 %116, %6
  br i1 %118, label %9, label %119, !llvm.loop !13

119:                                              ; preds = %117
  %xtraiter = and i32 %smax, 1
  %120 = icmp ult i32 %7, 1
  br i1 %120, label %.epil.preheader, label %.new

.new:                                             ; preds = %119
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %121

121:                                              ; preds = %133, %.new
  %.0 = phi i32 [ 1, %.new ], [ %132, %133 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %133 ]
  %122 = sext i32 %.0 to i64
  %123 = getelementptr inbounds %struct.complex, ptr %1, i64 %122
  %124 = sext i32 %.0 to i64
  %125 = getelementptr inbounds %struct.complex, ptr %2, i64 %124
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %123, ptr align 4 %125, i64 8, i1 false)
  %126 = add nsw i32 %.0, 1
  br label %127

127:                                              ; preds = %121
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.complex, ptr %1, i64 %128
  %130 = sext i32 %126 to i64
  %131 = getelementptr inbounds %struct.complex, ptr %2, i64 %130
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %129, ptr align 4 %131, i64 8, i1 false)
  %132 = add nsw i32 %.0, 2
  br label %133

133:                                              ; preds = %127
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %121, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %133
  %.0.unr = phi i32 [ %132, %133 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %139

.epil.preheader:                                  ; preds = %.unr-lcssa, %119
  %.0.epil.init = phi i32 [ 1, %119 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod87 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %134

134:                                              ; preds = %.epil.preheader
  %135 = sext i32 %.0.epil.init to i64
  %136 = getelementptr inbounds %struct.complex, ptr %1, i64 %135
  %137 = sext i32 %.0.epil.init to i64
  %138 = getelementptr inbounds %struct.complex, ptr %2, i64 %137
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %136, ptr align 4 %138, i64 8, i1 false)
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %134
  br label %139

139:                                              ; preds = %.unr-lcssa, %.epilog-lcssa
  %140 = add nsw i32 %.084, %.084
  br label %141

141:                                              ; preds = %139
  %142 = icmp sle i32 %140, %6
  br i1 %142, label %8, label %143, !llvm.loop !15

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %164, %143
  %.2 = phi i32 [ 1, %143 ], [ %165, %164 ]
  %145 = icmp sle i32 %.2, %0
  br i1 %145, label %146, label %166

146:                                              ; preds = %144
  %147 = sext i32 %.2 to i64
  %148 = getelementptr inbounds %struct.complex, ptr %1, i64 %147
  %149 = getelementptr inbounds nuw %struct.complex, ptr %148, i32 0, i32 0
  %150 = load float, ptr %149, align 4
  %151 = fmul float %4, %150
  %152 = sext i32 %.2 to i64
  %153 = getelementptr inbounds %struct.complex, ptr %1, i64 %152
  %154 = getelementptr inbounds nuw %struct.complex, ptr %153, i32 0, i32 0
  store float %151, ptr %154, align 4
  %155 = fneg float %4
  %156 = sext i32 %.2 to i64
  %157 = getelementptr inbounds %struct.complex, ptr %1, i64 %156
  %158 = getelementptr inbounds nuw %struct.complex, ptr %157, i32 0, i32 1
  %159 = load float, ptr %158, align 4
  %160 = fmul float %155, %159
  %161 = sext i32 %.2 to i64
  %162 = getelementptr inbounds %struct.complex, ptr %1, i64 %161
  %163 = getelementptr inbounds nuw %struct.complex, ptr %162, i32 0, i32 1
  store float %160, ptr %163, align 4
  br label %164

164:                                              ; preds = %146
  %165 = add nsw i32 %.2, 1
  br label %144, !llvm.loop !16

166:                                              ; preds = %144
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

2:                                                ; preds = %18, %0
  %.0 = phi i32 [ 1, %0 ], [ %19, %18 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %8, float -1.000000e+01)
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 0
  store float %9, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %13, float -1.000000e+01)
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %4
  %19 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !17

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %24, %20
  %.1 = phi i32 [ 1, %20 ], [ %25, %24 ]
  %22 = icmp sle i32 %.1, 20
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.1, 1
  br label %21, !llvm.loop !18

26:                                               ; preds = %21
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
