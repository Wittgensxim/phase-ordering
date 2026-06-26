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
  br i1 true, label %5, label %12

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

12:                                               ; preds = %3, %9, %6
  %.1 = phi float [ 1.000000e+00, %3 ], [ %8, %6 ], [ %11, %9 ]
  br label %13

13:                                               ; preds = %12
  %14 = fmul float %4, %0
  br i1 false, label %15, label %22

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

22:                                               ; preds = %19, %16, %13
  %.1.1 = phi float [ %.1, %13 ], [ %21, %19 ], [ %18, %16 ]
  br label %23

23:                                               ; preds = %22
  %24 = fmul float %14, %0
  br i1 true, label %25, label %32

25:                                               ; preds = %23
  br i1 true, label %29, label %26

26:                                               ; preds = %25
  %27 = fdiv float %24, 2.400000e+01
  %28 = fsub float %.1.1, %27
  br label %32

29:                                               ; preds = %25
  %30 = fdiv float %24, 2.400000e+01
  %31 = fadd float %.1.1, %30
  br label %32

32:                                               ; preds = %29, %26, %23
  %.1.2 = phi float [ %.1.1, %23 ], [ %31, %29 ], [ %28, %26 ]
  br label %33

33:                                               ; preds = %32
  %34 = fmul float %24, %0
  br i1 false, label %35, label %42

35:                                               ; preds = %33
  br i1 false, label %39, label %36

36:                                               ; preds = %35
  %37 = fdiv float %34, 1.200000e+02
  %38 = fsub float %.1.2, %37
  br label %42

39:                                               ; preds = %35
  %40 = fdiv float %34, 1.200000e+02
  %41 = fadd float %.1.2, %40
  br label %42

42:                                               ; preds = %39, %36, %33
  %.1.3 = phi float [ %.1.2, %33 ], [ %41, %39 ], [ %38, %36 ]
  br label %43

43:                                               ; preds = %42
  %44 = fmul float %34, %0
  br i1 true, label %45, label %52

45:                                               ; preds = %43
  br i1 false, label %49, label %46

46:                                               ; preds = %45
  %47 = fdiv float %44, 7.200000e+02
  %48 = fsub float %.1.3, %47
  br label %52

49:                                               ; preds = %45
  %50 = fdiv float %44, 7.200000e+02
  %51 = fadd float %.1.3, %50
  br label %52

52:                                               ; preds = %49, %46, %43
  %.1.4 = phi float [ %.1.3, %43 ], [ %51, %49 ], [ %48, %46 ]
  br label %53

53:                                               ; preds = %52
  %54 = fmul float %44, %0
  br i1 false, label %55, label %62

55:                                               ; preds = %53
  br i1 false, label %59, label %56

56:                                               ; preds = %55
  %57 = fdiv float %54, 5.040000e+03
  %58 = fsub float %.1.4, %57
  br label %62

59:                                               ; preds = %55
  %60 = fdiv float %54, 5.040000e+03
  %61 = fadd float %.1.4, %60
  br label %62

62:                                               ; preds = %59, %56, %53
  %.1.5 = phi float [ %.1.4, %53 ], [ %61, %59 ], [ %58, %56 ]
  br label %63

63:                                               ; preds = %62
  %64 = fmul float %54, %0
  br i1 true, label %65, label %72

65:                                               ; preds = %63
  br i1 true, label %69, label %66

66:                                               ; preds = %65
  %67 = fdiv float %64, 4.032000e+04
  %68 = fsub float %.1.5, %67
  br label %72

69:                                               ; preds = %65
  %70 = fdiv float %64, 4.032000e+04
  %71 = fadd float %.1.5, %70
  br label %72

72:                                               ; preds = %69, %66, %63
  %.1.6 = phi float [ %.1.5, %63 ], [ %71, %69 ], [ %68, %66 ]
  br label %73

73:                                               ; preds = %72
  %74 = fmul float %64, %0
  br i1 false, label %75, label %82

75:                                               ; preds = %73
  br i1 false, label %79, label %76

76:                                               ; preds = %75
  %77 = fdiv float %74, 3.628800e+05
  %78 = fsub float %.1.6, %77
  br label %82

79:                                               ; preds = %75
  %80 = fdiv float %74, 3.628800e+05
  %81 = fadd float %.1.6, %80
  br label %82

82:                                               ; preds = %79, %76, %73
  %.1.7 = phi float [ %.1.6, %73 ], [ %81, %79 ], [ %78, %76 ]
  br label %83

83:                                               ; preds = %82
  %84 = fmul float %74, %0
  br i1 true, label %85, label %92

85:                                               ; preds = %83
  br i1 false, label %89, label %86

86:                                               ; preds = %85
  %87 = fdiv float %84, 3.628800e+06
  %88 = fsub float %.1.7, %87
  br label %92

89:                                               ; preds = %85
  %90 = fdiv float %84, 3.628800e+06
  %91 = fadd float %.1.7, %90
  br label %92

92:                                               ; preds = %89, %86, %83
  %.1.8 = phi float [ %.1.7, %83 ], [ %91, %89 ], [ %88, %86 ]
  br i1 false, label %93, label %98

93:                                               ; preds = %92
  br i1 false, label %94, label %97

94:                                               ; preds = %93
  br i1 false, label %96, label %95

95:                                               ; preds = %94
  br label %97

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %95, %93
  unreachable

98:                                               ; preds = %92
  %.03.lcssa = phi float [ %.1.8, %92 ]
  ret float %.03.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  %. = select i1 %3, i32 %0, i32 %1
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %6, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %6 ]
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
  %26 = icmp sle i32 %25, %2
  br i1 %26, label %6, label %27, !llvm.loop !7

27:                                               ; preds = %6
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

4:                                                ; preds = %6, %2
  %.04 = phi i32 [ 1, %2 ], [ %14, %6 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %13, %6 ]
  %5 = icmp sle i32 %.04, 25
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.03, %.03
  %14 = add nsw i32 %.04, 1
  br label %4, !llvm.loop !9

15:                                               ; preds = %4
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

28:                                               ; preds = %59, %15
  %.02 = phi i32 [ 1, %15 ], [ %61, %59 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %59 ]
  %29 = sdiv i32 %.0, 2
  br label %30

30:                                               ; preds = %30, %28
  %.01 = phi i32 [ %29, %28 ], [ %57, %30 ]
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
  %58 = icmp sle i32 %57, %16
  br i1 %58, label %30, label %59, !llvm.loop !10

59:                                               ; preds = %30
  %60 = add nsw i32 %.02, 1
  %61 = call i32 @Min0(i32 noundef %60, i32 noundef 25)
  %62 = icmp sgt i32 %29, 1
  br i1 %62, label %28, label %63, !llvm.loop !11

63:                                               ; preds = %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %86, %5
  %.01 = phi i32 [ 1, %5 ], [ %87, %86 ]
  br label %9

9:                                                ; preds = %59, %8
  %.04 = phi i32 [ 1, %8 ], [ %.lcssa, %59 ]
  %.03 = phi i32 [ %.01, %8 ], [ %60, %59 ]
  %.02 = phi i32 [ 0, %8 ], [ %.03, %59 ]
  br label %10

10:                                               ; preds = %10, %9
  %.1 = phi i32 [ %.04, %9 ], [ %57, %10 ]
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
  %58 = icmp sle i32 %57, %.03
  br i1 %58, label %10, label %59, !llvm.loop !12

59:                                               ; preds = %10
  %.lcssa = phi i32 [ %57, %10 ]
  %60 = add nsw i32 %.03, %.01
  %61 = icmp sle i32 %60, %6
  br i1 %61, label %9, label %.preheader1, !llvm.loop !13

.preheader1:                                      ; preds = %59
  %xtraiter = and i32 %smax, 3
  %62 = icmp ult i32 %7, 3
  br i1 %62, label %.epil.preheader, label %.preheader1.new

.preheader1.new:                                  ; preds = %.preheader1
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %63

63:                                               ; preds = %63, %.preheader1.new
  %.0 = phi i32 [ 1, %.preheader1.new ], [ %79, %63 ]
  %niter = phi i32 [ 0, %.preheader1.new ], [ %niter.next.3, %63 ]
  %64 = sext i32 %.0 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds %struct.complex, ptr %2, i64 %64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %65, ptr align 4 %66, i64 8, i1 false)
  %67 = add nuw nsw i32 %.0, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %1, i64 %68
  %70 = getelementptr inbounds %struct.complex, ptr %2, i64 %68
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %69, ptr align 4 %70, i64 8, i1 false)
  %71 = add nuw nsw i32 %.0, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.complex, ptr %1, i64 %72
  %74 = getelementptr inbounds %struct.complex, ptr %2, i64 %72
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %73, ptr align 4 %74, i64 8, i1 false)
  %75 = add nsw i32 %.0, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %1, i64 %76
  %78 = getelementptr inbounds %struct.complex, ptr %2, i64 %76
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %77, ptr align 4 %78, i64 8, i1 false)
  %79 = add nsw i32 %.0, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %63, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %63
  %.0.unr = phi i32 [ %79, %63 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %86

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader1
  %.0.epil.init = phi i32 [ 1, %.preheader1 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %80

80:                                               ; preds = %80, %.epil.preheader
  %.0.epil = phi i32 [ %84, %80 ], [ %.0.epil.init, %.epil.preheader ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %80 ]
  %81 = sext i32 %.0.epil to i64
  %82 = getelementptr inbounds %struct.complex, ptr %1, i64 %81
  %83 = getelementptr inbounds %struct.complex, ptr %2, i64 %81
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %82, ptr align 4 %83, i64 8, i1 false)
  %84 = add nsw i32 %.0.epil, 1
  %85 = icmp sle i32 %84, %0
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %80, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %80
  br label %86

86:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %87 = add nsw i32 %.01, %.01
  %88 = icmp sle i32 %87, %6
  br i1 %88, label %8, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %86
  br label %89

89:                                               ; preds = %.preheader, %91
  %.2 = phi i32 [ %100, %91 ], [ 1, %.preheader ]
  %90 = icmp sle i32 %.2, %0
  br i1 %90, label %91, label %101

91:                                               ; preds = %89
  %92 = sext i32 %.2 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %1, i64 %92
  %94 = load float, ptr %93, align 4
  %95 = fmul float %4, %94
  store float %95, ptr %93, align 4
  %96 = fneg float %4
  %97 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = fmul float %96, %98
  store float %99, ptr %97, align 4
  %100 = add nsw i32 %.2, 1
  br label %89, !llvm.loop !18

101:                                              ; preds = %89
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

2:                                                ; preds = %4, %0
  %.0 = phi i32 [ 1, %0 ], [ %15, %4 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %.preheader

.preheader:                                       ; preds = %2
  br label %16

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
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %12, float -1.000000e+01)
  %14 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 1
  store float %13, ptr %14, align 4
  %15 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !19

16:                                               ; preds = %.preheader, %18
  %.1 = phi i32 [ %19, %18 ], [ 1, %.preheader ]
  %17 = icmp sle i32 %.1, 20
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %19 = add nsw i32 %.1, 1
  br label %16, !llvm.loop !20

20:                                               ; preds = %16
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
  call void @Oscar()
  br i1 false, label %12, label %13

12:                                               ; preds = %11
  call void @Oscar()
  unreachable

13:                                               ; preds = %11
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
