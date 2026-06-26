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
  %3 = fmul float %0, %0
  br i1 true, label %4, label %12

4:                                                ; preds = %2
  br i1 false, label %5, label %8

5:                                                ; preds = %4
  %6 = fdiv float %3, 2.000000e+00
  %7 = fadd float 1.000000e+00, %6
  br label %11

8:                                                ; preds = %4
  %9 = fdiv float %3, 2.000000e+00
  %10 = fsub float 1.000000e+00, %9
  br label %11

11:                                               ; preds = %8, %5
  %.2 = phi float [ %7, %5 ], [ %10, %8 ]
  br label %12

12:                                               ; preds = %11, %2
  %.1 = phi float [ %.2, %11 ], [ 1.000000e+00, %2 ]
  br label %13

13:                                               ; preds = %12
  %14 = fmul float %3, %0
  br i1 false, label %15, label %23

15:                                               ; preds = %13
  br i1 false, label %19, label %16

16:                                               ; preds = %15
  %17 = fdiv float %14, 6.000000e+00
  %18 = fsub float %.1, %17
  br label %22

19:                                               ; preds = %15
  %20 = fdiv float %14, 6.000000e+00
  %21 = fadd float %.1, %20
  br label %22

22:                                               ; preds = %19, %16
  %.2.1 = phi float [ %21, %19 ], [ %18, %16 ]
  br label %23

23:                                               ; preds = %22, %13
  %.1.1 = phi float [ %.2.1, %22 ], [ %.1, %13 ]
  br label %24

24:                                               ; preds = %23
  %25 = fmul float %14, %0
  br i1 true, label %26, label %34

26:                                               ; preds = %24
  br i1 true, label %30, label %27

27:                                               ; preds = %26
  %28 = fdiv float %25, 2.400000e+01
  %29 = fsub float %.1.1, %28
  br label %33

30:                                               ; preds = %26
  %31 = fdiv float %25, 2.400000e+01
  %32 = fadd float %.1.1, %31
  br label %33

33:                                               ; preds = %30, %27
  %.2.2 = phi float [ %32, %30 ], [ %29, %27 ]
  br label %34

34:                                               ; preds = %33, %24
  %.1.2 = phi float [ %.2.2, %33 ], [ %.1.1, %24 ]
  br label %35

35:                                               ; preds = %34
  %36 = fmul float %25, %0
  br i1 false, label %37, label %45

37:                                               ; preds = %35
  br i1 false, label %41, label %38

38:                                               ; preds = %37
  %39 = fdiv float %36, 1.200000e+02
  %40 = fsub float %.1.2, %39
  br label %44

41:                                               ; preds = %37
  %42 = fdiv float %36, 1.200000e+02
  %43 = fadd float %.1.2, %42
  br label %44

44:                                               ; preds = %41, %38
  %.2.3 = phi float [ %43, %41 ], [ %40, %38 ]
  br label %45

45:                                               ; preds = %44, %35
  %.1.3 = phi float [ %.2.3, %44 ], [ %.1.2, %35 ]
  br label %46

46:                                               ; preds = %45
  %47 = fmul float %36, %0
  br i1 true, label %48, label %56

48:                                               ; preds = %46
  br i1 false, label %52, label %49

49:                                               ; preds = %48
  %50 = fdiv float %47, 7.200000e+02
  %51 = fsub float %.1.3, %50
  br label %55

52:                                               ; preds = %48
  %53 = fdiv float %47, 7.200000e+02
  %54 = fadd float %.1.3, %53
  br label %55

55:                                               ; preds = %52, %49
  %.2.4 = phi float [ %54, %52 ], [ %51, %49 ]
  br label %56

56:                                               ; preds = %55, %46
  %.1.4 = phi float [ %.2.4, %55 ], [ %.1.3, %46 ]
  br label %57

57:                                               ; preds = %56
  %58 = fmul float %47, %0
  br i1 false, label %59, label %67

59:                                               ; preds = %57
  br i1 false, label %63, label %60

60:                                               ; preds = %59
  %61 = fdiv float %58, 5.040000e+03
  %62 = fsub float %.1.4, %61
  br label %66

63:                                               ; preds = %59
  %64 = fdiv float %58, 5.040000e+03
  %65 = fadd float %.1.4, %64
  br label %66

66:                                               ; preds = %63, %60
  %.2.5 = phi float [ %65, %63 ], [ %62, %60 ]
  br label %67

67:                                               ; preds = %66, %57
  %.1.5 = phi float [ %.2.5, %66 ], [ %.1.4, %57 ]
  br label %68

68:                                               ; preds = %67
  %69 = fmul float %58, %0
  br i1 true, label %70, label %78

70:                                               ; preds = %68
  br i1 true, label %74, label %71

71:                                               ; preds = %70
  %72 = fdiv float %69, 4.032000e+04
  %73 = fsub float %.1.5, %72
  br label %77

74:                                               ; preds = %70
  %75 = fdiv float %69, 4.032000e+04
  %76 = fadd float %.1.5, %75
  br label %77

77:                                               ; preds = %74, %71
  %.2.6 = phi float [ %76, %74 ], [ %73, %71 ]
  br label %78

78:                                               ; preds = %77, %68
  %.1.6 = phi float [ %.2.6, %77 ], [ %.1.5, %68 ]
  br label %79

79:                                               ; preds = %78
  %80 = fmul float %69, %0
  br i1 false, label %81, label %89

81:                                               ; preds = %79
  br i1 false, label %85, label %82

82:                                               ; preds = %81
  %83 = fdiv float %80, 3.628800e+05
  %84 = fsub float %.1.6, %83
  br label %88

85:                                               ; preds = %81
  %86 = fdiv float %80, 3.628800e+05
  %87 = fadd float %.1.6, %86
  br label %88

88:                                               ; preds = %85, %82
  %.2.7 = phi float [ %87, %85 ], [ %84, %82 ]
  br label %89

89:                                               ; preds = %88, %79
  %.1.7 = phi float [ %.2.7, %88 ], [ %.1.6, %79 ]
  br label %90

90:                                               ; preds = %89
  %91 = fmul float %80, %0
  br i1 true, label %92, label %100

92:                                               ; preds = %90
  br i1 false, label %96, label %93

93:                                               ; preds = %92
  %94 = fdiv float %91, 3.628800e+06
  %95 = fsub float %.1.7, %94
  br label %99

96:                                               ; preds = %92
  %97 = fdiv float %91, 3.628800e+06
  %98 = fadd float %.1.7, %97
  br label %99

99:                                               ; preds = %96, %93
  %.2.8 = phi float [ %98, %96 ], [ %95, %93 ]
  br label %100

100:                                              ; preds = %99, %90
  %.1.8 = phi float [ %.2.8, %99 ], [ %.1.7, %90 ]
  br label %101

101:                                              ; preds = %100
  ret float %.1.8
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

4:                                                ; preds = %2, %12
  %.032 = phi float [ 4.000000e+00, %2 ], [ %11, %12 ]
  %.041 = phi i32 [ 1, %2 ], [ %13, %12 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = sext i32 %.041 to i64
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.032, %.032
  br label %12

12:                                               ; preds = %4
  %13 = add nsw i32 %.041, 1
  %14 = icmp sle i32 %13, 25
  br i1 %14, label %4, label %15, !llvm.loop !9

15:                                               ; preds = %12
  %16 = sdiv i32 %0, 2
  %17 = sdiv i32 %16, 2
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float 0.000000e+00, ptr %19, align 4
  %20 = add nsw i32 %17, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %1, i64 %21
  store float 0.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 1
  store float 1.000000e+00, ptr %23, align 4
  %24 = add nsw i32 %16, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %1, i64 %25
  store float -1.000000e+00, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  store float 0.000000e+00, ptr %27, align 4
  br label %28

28:                                               ; preds = %63, %15
  %.02 = phi i32 [ 1, %15 ], [ %62, %63 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %63 ]
  %29 = sdiv i32 %.0, 2
  br label %30

30:                                               ; preds = %58, %28
  %.01 = phi i32 [ %29, %28 ], [ %57, %58 ]
  %31 = sext i32 %.02 to i64
  %32 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = add nsw i32 %.01, %29
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = sub nsw i32 %.01, %29
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, ptr %1, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %38, %43
  %45 = fmul float %33, %44
  %46 = add nsw i32 %.01, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %1, i64 %47
  store float %45, ptr %48, align 4
  %49 = load float, ptr %32, align 4
  %50 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 1
  %53 = load float, ptr %52, align 4
  %54 = fadd float %51, %53
  %55 = fmul float %49, %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.01, %.0
  br label %58

58:                                               ; preds = %30
  %59 = icmp sle i32 %57, %16
  br i1 %59, label %30, label %60, !llvm.loop !10

60:                                               ; preds = %58
  %61 = add nsw i32 %.02, 1
  %62 = call i32 @Min0(i32 noundef %61, i32 noundef 25)
  br label %63

63:                                               ; preds = %60
  %64 = icmp sgt i32 %29, 1
  br i1 %64, label %28, label %65, !llvm.loop !11

65:                                               ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %83, %5
  %.01 = phi i32 [ 1, %5 ], [ %82, %83 ]
  br label %9

9:                                                ; preds = %62, %8
  %.04 = phi i32 [ 1, %8 ], [ %.lcssa, %62 ]
  %.03 = phi i32 [ %.01, %8 ], [ %61, %62 ]
  %.02 = phi i32 [ 0, %8 ], [ %.03, %62 ]
  br label %10

10:                                               ; preds = %58, %9
  %.1 = phi i32 [ %.04, %9 ], [ %57, %58 ]
  %11 = sext i32 %.1 to i64
  %12 = getelementptr inbounds %struct.complex, ptr %1, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = add nsw i32 %6, %.1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.complex, ptr %1, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fadd float %13, %17
  %19 = add nsw i32 %.1, %.02
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.complex, ptr %2, i64 %20
  store float %18, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 1
  %23 = load float, ptr %22, align 4
  %24 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = fadd float %23, %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  store float %26, ptr %27, align 4
  %28 = add nsw i32 %.02, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.complex, ptr %3, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = load float, ptr %12, align 4
  %33 = load float, ptr %16, align 4
  %34 = fsub float %32, %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %30, i32 0, i32 1
  %36 = load float, ptr %35, align 4
  %37 = load float, ptr %22, align 4
  %38 = load float, ptr %24, align 4
  %39 = fsub float %37, %38
  %40 = fmul float %36, %39
  %41 = fneg float %40
  %42 = call float @llvm.fmuladd.f32(float %31, float %34, float %41)
  %43 = add nsw i32 %.1, %.03
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %2, i64 %44
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
  %56 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.1, 1
  br label %58

58:                                               ; preds = %10
  %59 = icmp sle i32 %57, %.03
  br i1 %59, label %10, label %60, !llvm.loop !12

60:                                               ; preds = %58
  %.lcssa = phi i32 [ %57, %58 ]
  %61 = add nsw i32 %.03, %.01
  br label %62

62:                                               ; preds = %60
  %63 = icmp sle i32 %61, %6
  br i1 %63, label %9, label %64, !llvm.loop !13

64:                                               ; preds = %62
  %xtraiter = and i32 %smax, 1
  %65 = icmp ult i32 %7, 1
  br i1 %65, label %.epil.preheader, label %.new

.new:                                             ; preds = %64
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %66

66:                                               ; preds = %76, %.new
  %.0 = phi i32 [ 1, %.new ], [ %75, %76 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %76 ]
  %67 = sext i32 %.0 to i64
  %68 = getelementptr inbounds %struct.complex, ptr %1, i64 %67
  %69 = getelementptr inbounds %struct.complex, ptr %2, i64 %67
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %68, ptr align 4 %69, i64 8, i1 false)
  %70 = add nsw i32 %.0, 1
  br label %71

71:                                               ; preds = %66
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.complex, ptr %1, i64 %72
  %74 = getelementptr inbounds %struct.complex, ptr %2, i64 %72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %74, i64 8, i1 false)
  %75 = add nsw i32 %.0, 2
  br label %76

76:                                               ; preds = %71
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %66, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %76
  %.0.unr = phi i32 [ %75, %76 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %81

.epil.preheader:                                  ; preds = %.unr-lcssa, %64
  %.0.epil.init = phi i32 [ 1, %64 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %77

77:                                               ; preds = %.epil.preheader
  %78 = sext i32 %.0.epil.init to i64
  %79 = getelementptr inbounds %struct.complex, ptr %1, i64 %78
  %80 = getelementptr inbounds %struct.complex, ptr %2, i64 %78
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %79, ptr align 4 %80, i64 8, i1 false)
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %77
  br label %81

81:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %82 = add nsw i32 %.01, %.01
  br label %83

83:                                               ; preds = %81
  %84 = icmp sle i32 %82, %6
  br i1 %84, label %8, label %85, !llvm.loop !15

85:                                               ; preds = %83
  %86 = icmp sle i32 1, %0
  br i1 %86, label %.lr.ph, label %119

.lr.ph:                                           ; preds = %85
  %87 = add i32 %0, -1
  %xtraiter4 = and i32 %0, 1
  %88 = icmp ult i32 %87, 1
  br i1 %88, label %.epil.preheader3, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter7 = sub i32 %0, %xtraiter4
  br label %89

89:                                               ; preds = %108, %.lr.ph.new
  %.21 = phi i32 [ 1, %.lr.ph.new ], [ %109, %108 ]
  %niter8 = phi i32 [ 0, %.lr.ph.new ], [ %niter8.next.1, %108 ]
  %90 = sext i32 %.21 to i64
  %91 = getelementptr inbounds %struct.complex, ptr %1, i64 %90
  %92 = load float, ptr %91, align 4
  %93 = fmul float %4, %92
  store float %93, ptr %91, align 4
  %94 = fneg float %4
  %95 = getelementptr inbounds nuw %struct.complex, ptr %91, i32 0, i32 1
  %96 = load float, ptr %95, align 4
  %97 = fmul float %94, %96
  store float %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %89
  %99 = add nsw i32 %.21, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.complex, ptr %1, i64 %100
  %102 = load float, ptr %101, align 4
  %103 = fmul float %4, %102
  store float %103, ptr %101, align 4
  %104 = fneg float %4
  %105 = getelementptr inbounds nuw %struct.complex, ptr %101, i32 0, i32 1
  %106 = load float, ptr %105, align 4
  %107 = fmul float %104, %106
  store float %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %98
  %109 = add nsw i32 %.21, 2
  %niter8.next.1 = add i32 %niter8, 2
  %niter8.ncmp.1 = icmp ne i32 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1, label %89, label %._crit_edge.unr-lcssa, !llvm.loop !16

._crit_edge.unr-lcssa:                            ; preds = %108
  %.21.unr = phi i32 [ %109, %108 ]
  %lcmp.mod5 = icmp ne i32 %xtraiter4, 0
  br i1 %lcmp.mod5, label %.epil.preheader3, label %._crit_edge

.epil.preheader3:                                 ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.21.epil.init = phi i32 [ 1, %.lr.ph ], [ %.21.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod6 = icmp ne i32 %xtraiter4, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %110

110:                                              ; preds = %.epil.preheader3
  %111 = sext i32 %.21.epil.init to i64
  %112 = getelementptr inbounds %struct.complex, ptr %1, i64 %111
  %113 = load float, ptr %112, align 4
  %114 = fmul float %4, %113
  store float %114, ptr %112, align 4
  %115 = fneg float %4
  %116 = getelementptr inbounds nuw %struct.complex, ptr %112, i32 0, i32 1
  %117 = load float, ptr %116, align 4
  %118 = fmul float %115, %117
  store float %118, ptr %116, align 4
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %110
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %119

119:                                              ; preds = %._crit_edge, %85
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

2:                                                ; preds = %0, %13
  %.01 = phi i32 [ 1, %0 ], [ %14, %13 ]
  %3 = load i32, ptr @seed, align 4
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %6, float -1.000000e+01)
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %8
  store float %7, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = getelementptr inbounds nuw %struct.complex, ptr %9, i32 0, i32 1
  store float %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %2
  %14 = add nsw i32 %.01, 1
  %15 = icmp sle i32 %14, 256
  br i1 %15, label %2, label %16, !llvm.loop !17

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %18
  %.12 = phi i32 [ 1, %16 ], [ %19, %18 ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %.12, 1
  %20 = icmp sle i32 %19, 20
  br i1 %20, label %17, label %21, !llvm.loop !18

21:                                               ; preds = %18
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  call void @Oscar()
  br label %2

2:                                                ; preds = %1
  call void @Oscar()
  br label %3

3:                                                ; preds = %2
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  call void @Oscar()
  br label %6

6:                                                ; preds = %5
  call void @Oscar()
  br label %7

7:                                                ; preds = %6
  call void @Oscar()
  br label %8

8:                                                ; preds = %7
  call void @Oscar()
  br label %9

9:                                                ; preds = %8
  call void @Oscar()
  br label %10

10:                                               ; preds = %9
  call void @Oscar()
  br label %11

11:                                               ; preds = %10
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
