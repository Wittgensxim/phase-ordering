; ModuleID = 'results\paper_full\Stanford_Oscar\round_003\output.ll'
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
  %13 = fmul float %3, %0
  br i1 false, label %14, label %22

14:                                               ; preds = %12
  br i1 false, label %18, label %15

15:                                               ; preds = %14
  %16 = fdiv float %13, 6.000000e+00
  %17 = fsub float %.1, %16
  br label %21

18:                                               ; preds = %14
  %19 = fdiv float %13, 6.000000e+00
  %20 = fadd float %.1, %19
  br label %21

21:                                               ; preds = %18, %15
  %.2.1 = phi float [ %20, %18 ], [ %17, %15 ]
  br label %22

22:                                               ; preds = %21, %12
  %.1.1 = phi float [ %.2.1, %21 ], [ %.1, %12 ]
  %23 = fmul float %13, %0
  br i1 true, label %24, label %32

24:                                               ; preds = %22
  br i1 true, label %28, label %25

25:                                               ; preds = %24
  %26 = fdiv float %23, 2.400000e+01
  %27 = fsub float %.1.1, %26
  br label %31

28:                                               ; preds = %24
  %29 = fdiv float %23, 2.400000e+01
  %30 = fadd float %.1.1, %29
  br label %31

31:                                               ; preds = %28, %25
  %.2.2 = phi float [ %30, %28 ], [ %27, %25 ]
  br label %32

32:                                               ; preds = %31, %22
  %.1.2 = phi float [ %.2.2, %31 ], [ %.1.1, %22 ]
  %33 = fmul float %23, %0
  br i1 false, label %34, label %42

34:                                               ; preds = %32
  br i1 false, label %38, label %35

35:                                               ; preds = %34
  %36 = fdiv float %33, 1.200000e+02
  %37 = fsub float %.1.2, %36
  br label %41

38:                                               ; preds = %34
  %39 = fdiv float %33, 1.200000e+02
  %40 = fadd float %.1.2, %39
  br label %41

41:                                               ; preds = %38, %35
  %.2.3 = phi float [ %40, %38 ], [ %37, %35 ]
  br label %42

42:                                               ; preds = %41, %32
  %.1.3 = phi float [ %.2.3, %41 ], [ %.1.2, %32 ]
  %43 = fmul float %33, %0
  br i1 true, label %44, label %52

44:                                               ; preds = %42
  br i1 false, label %48, label %45

45:                                               ; preds = %44
  %46 = fdiv float %43, 7.200000e+02
  %47 = fsub float %.1.3, %46
  br label %51

48:                                               ; preds = %44
  %49 = fdiv float %43, 7.200000e+02
  %50 = fadd float %.1.3, %49
  br label %51

51:                                               ; preds = %48, %45
  %.2.4 = phi float [ %50, %48 ], [ %47, %45 ]
  br label %52

52:                                               ; preds = %51, %42
  %.1.4 = phi float [ %.2.4, %51 ], [ %.1.3, %42 ]
  %53 = fmul float %43, %0
  br i1 false, label %54, label %62

54:                                               ; preds = %52
  br i1 false, label %58, label %55

55:                                               ; preds = %54
  %56 = fdiv float %53, 5.040000e+03
  %57 = fsub float %.1.4, %56
  br label %61

58:                                               ; preds = %54
  %59 = fdiv float %53, 5.040000e+03
  %60 = fadd float %.1.4, %59
  br label %61

61:                                               ; preds = %58, %55
  %.2.5 = phi float [ %60, %58 ], [ %57, %55 ]
  br label %62

62:                                               ; preds = %61, %52
  %.1.5 = phi float [ %.2.5, %61 ], [ %.1.4, %52 ]
  %63 = fmul float %53, %0
  br i1 true, label %64, label %72

64:                                               ; preds = %62
  br i1 true, label %68, label %65

65:                                               ; preds = %64
  %66 = fdiv float %63, 4.032000e+04
  %67 = fsub float %.1.5, %66
  br label %71

68:                                               ; preds = %64
  %69 = fdiv float %63, 4.032000e+04
  %70 = fadd float %.1.5, %69
  br label %71

71:                                               ; preds = %68, %65
  %.2.6 = phi float [ %70, %68 ], [ %67, %65 ]
  br label %72

72:                                               ; preds = %71, %62
  %.1.6 = phi float [ %.2.6, %71 ], [ %.1.5, %62 ]
  %73 = fmul float %63, %0
  br i1 false, label %74, label %82

74:                                               ; preds = %72
  br i1 false, label %78, label %75

75:                                               ; preds = %74
  %76 = fdiv float %73, 3.628800e+05
  %77 = fsub float %.1.6, %76
  br label %81

78:                                               ; preds = %74
  %79 = fdiv float %73, 3.628800e+05
  %80 = fadd float %.1.6, %79
  br label %81

81:                                               ; preds = %78, %75
  %.2.7 = phi float [ %80, %78 ], [ %77, %75 ]
  br label %82

82:                                               ; preds = %81, %72
  %.1.7 = phi float [ %.2.7, %81 ], [ %.1.6, %72 ]
  %83 = fmul float %73, %0
  br i1 true, label %84, label %92

84:                                               ; preds = %82
  br i1 false, label %88, label %85

85:                                               ; preds = %84
  %86 = fdiv float %83, 3.628800e+06
  %87 = fsub float %.1.7, %86
  br label %91

88:                                               ; preds = %84
  %89 = fdiv float %83, 3.628800e+06
  %90 = fadd float %.1.7, %89
  br label %91

91:                                               ; preds = %88, %85
  %.2.8 = phi float [ %90, %88 ], [ %87, %85 ]
  br label %92

92:                                               ; preds = %91, %82
  %.1.8 = phi float [ %.2.8, %91 ], [ %.1.7, %82 ]
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

4:                                                ; preds = %4, %2
  %.032 = phi float [ 4.000000e+00, %2 ], [ %11, %4 ]
  %.041 = phi i32 [ 1, %2 ], [ %12, %4 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = sext i32 %.041 to i64
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.032, %.032
  %12 = add nsw i32 %.041, 1
  %13 = icmp sle i32 %12, 25
  br i1 %13, label %4, label %14, !llvm.loop !9

14:                                               ; preds = %4
  %15 = sdiv i32 %0, 2
  %16 = sdiv i32 %15, 2
  %17 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  store float 0.000000e+00, ptr %18, align 4
  %19 = add nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 %20
  store float 0.000000e+00, ptr %21, align 4
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  store float 1.000000e+00, ptr %22, align 4
  %23 = add nsw i32 %15, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %1, i64 %24
  store float -1.000000e+00, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  store float 0.000000e+00, ptr %26, align 4
  br label %27

27:                                               ; preds = %50, %14
  %.02 = phi i32 [ 1, %14 ], [ %52, %50 ]
  %.0 = phi i32 [ %16, %14 ], [ %28, %50 ]
  %28 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert3 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert3, align 4
  %invariant.op = add i32 %28, 1
  %invariant.op1 = sub i32 1, %28
  br label %29

29:                                               ; preds = %29, %27
  %.01 = phi i32 [ %28, %27 ], [ %48, %29 ]
  %.reass = add i32 %.01, %invariant.op
  %30 = sext i32 %.reass to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  %32 = load float, ptr %31, align 4
  %.reass2 = add i32 %.01, %invariant.op1
  %33 = sext i32 %.reass2 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = fmul float %.pre, %36
  %38 = add nsw i32 %.01, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %1, i64 %39
  store float %37, ptr %40, align 4
  %41 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %44 = load float, ptr %43, align 4
  %45 = fadd float %42, %44
  %46 = fmul float %.pre, %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  store float %46, ptr %47, align 4
  %48 = add nsw i32 %.01, %.0
  %49 = icmp sle i32 %48, %15
  br i1 %49, label %29, label %50, !llvm.loop !10

50:                                               ; preds = %29
  %51 = add nsw i32 %.02, 1
  %52 = call i32 @Min0(i32 noundef %51, i32 noundef 25)
  %53 = icmp sgt i32 %28, 1
  br i1 %53, label %27, label %54, !llvm.loop !11

54:                                               ; preds = %50
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
  %10 = add nsw i32 %.02, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.complex, ptr %3, i64 %11
  %13 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 1
  br label %14

14:                                               ; preds = %14, %9
  %.1 = phi i32 [ %.04, %9 ], [ %57, %14 ]
  %15 = sext i32 %.1 to i64
  %16 = getelementptr inbounds %struct.complex, ptr %1, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = add nsw i32 %6, %.1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %17, %21
  %23 = add nsw i32 %.1, %.02
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %2, i64 %24
  store float %22, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  store float %30, ptr %31, align 4
  %32 = load float, ptr %12, align 4
  %33 = load float, ptr %16, align 4
  %34 = load float, ptr %20, align 4
  %35 = fsub float %33, %34
  %36 = load float, ptr %13, align 4
  %37 = load float, ptr %26, align 4
  %38 = load float, ptr %28, align 4
  %39 = fsub float %37, %38
  %40 = fmul float %36, %39
  %41 = fneg float %40
  %42 = call float @llvm.fmuladd.f32(float %32, float %35, float %41)
  %43 = add nsw i32 %.1, %.03
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %2, i64 %44
  store float %42, ptr %45, align 4
  %46 = load float, ptr %12, align 4
  %47 = load float, ptr %26, align 4
  %48 = load float, ptr %28, align 4
  %49 = fsub float %47, %48
  %50 = load float, ptr %13, align 4
  %51 = load float, ptr %16, align 4
  %52 = load float, ptr %20, align 4
  %53 = fsub float %51, %52
  %54 = fmul float %50, %53
  %55 = call float @llvm.fmuladd.f32(float %46, float %49, float %54)
  %56 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.1, 1
  %58 = icmp sle i32 %57, %.03
  br i1 %58, label %14, label %59, !llvm.loop !12

59:                                               ; preds = %14
  %.lcssa = phi i32 [ %57, %14 ]
  %60 = add nsw i32 %.03, %.01
  %61 = icmp sle i32 %60, %6
  br i1 %61, label %9, label %62, !llvm.loop !13

62:                                               ; preds = %59
  %xtraiter = and i32 %smax, 3
  %63 = icmp ult i32 %7, 3
  br i1 %63, label %.epil.preheader, label %.new

.new:                                             ; preds = %62
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %64

64:                                               ; preds = %64, %.new
  %.0 = phi i32 [ 1, %.new ], [ %80, %64 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %64 ]
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %1, i64 %65
  %67 = getelementptr inbounds %struct.complex, ptr %2, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %66, ptr align 4 %67, i64 8, i1 false)
  %68 = add nuw nsw i32 %.0, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.complex, ptr %1, i64 %69
  %71 = getelementptr inbounds %struct.complex, ptr %2, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %70, ptr align 4 %71, i64 8, i1 false)
  %72 = add nuw nsw i32 %.0, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %1, i64 %73
  %75 = getelementptr inbounds %struct.complex, ptr %2, i64 %73
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %75, i64 8, i1 false)
  %76 = add nsw i32 %.0, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.complex, ptr %1, i64 %77
  %79 = getelementptr inbounds %struct.complex, ptr %2, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr align 4 %79, i64 8, i1 false)
  %80 = add nsw i32 %.0, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %64, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %64
  %.0.unr = phi i32 [ %80, %64 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %86

.epil.preheader:                                  ; preds = %.unr-lcssa, %62
  %.0.epil.init = phi i32 [ 1, %62 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %81

81:                                               ; preds = %81, %.epil.preheader
  %.0.epil = phi i32 [ %.0.epil.init, %.epil.preheader ], [ %85, %81 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %81 ]
  %82 = sext i32 %.0.epil to i64
  %83 = getelementptr inbounds %struct.complex, ptr %1, i64 %82
  %84 = getelementptr inbounds %struct.complex, ptr %2, i64 %82
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %83, ptr align 4 %84, i64 8, i1 false)
  %85 = add nsw i32 %.0.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %81, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %81
  br label %86

86:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %87 = add nsw i32 %.01, %.01
  %88 = icmp sle i32 %87, %6
  br i1 %88, label %8, label %89, !llvm.loop !17

89:                                               ; preds = %86
  %90 = icmp sle i32 1, %0
  br i1 %90, label %.lr.ph, label %118

.lr.ph:                                           ; preds = %89
  %91 = fneg float %4
  %92 = add i32 %0, -1
  %xtraiter3 = and i32 %0, 1
  %93 = icmp ult i32 %92, 1
  br i1 %93, label %.epil.preheader2, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter7 = sub i32 %0, %xtraiter3
  br label %94

94:                                               ; preds = %94, %.lr.ph.new
  %.21 = phi i32 [ 1, %.lr.ph.new ], [ %110, %94 ]
  %niter8 = phi i32 [ 0, %.lr.ph.new ], [ %niter8.next.1, %94 ]
  %95 = sext i32 %.21 to i64
  %96 = getelementptr inbounds %struct.complex, ptr %1, i64 %95
  %97 = load float, ptr %96, align 4
  %98 = fmul float %4, %97
  store float %98, ptr %96, align 4
  %99 = getelementptr inbounds nuw %struct.complex, ptr %96, i32 0, i32 1
  %100 = load float, ptr %99, align 4
  %101 = fmul float %91, %100
  store float %101, ptr %99, align 4
  %102 = add nsw i32 %.21, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.complex, ptr %1, i64 %103
  %105 = load float, ptr %104, align 4
  %106 = fmul float %4, %105
  store float %106, ptr %104, align 4
  %107 = getelementptr inbounds nuw %struct.complex, ptr %104, i32 0, i32 1
  %108 = load float, ptr %107, align 4
  %109 = fmul float %91, %108
  store float %109, ptr %107, align 4
  %110 = add nsw i32 %.21, 2
  %niter8.next.1 = add i32 %niter8, 2
  %niter8.ncmp.1 = icmp ne i32 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1, label %94, label %._crit_edge.unr-lcssa, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %94
  %.21.unr = phi i32 [ %110, %94 ]
  %lcmp.mod5 = icmp ne i32 %xtraiter3, 0
  br i1 %lcmp.mod5, label %.epil.preheader2, label %._crit_edge

.epil.preheader2:                                 ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.21.epil.init = phi i32 [ 1, %.lr.ph ], [ %.21.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod6 = icmp ne i32 %xtraiter3, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %.epil.preheader2
  %111 = sext i32 %.21.epil.init to i64
  %112 = getelementptr inbounds %struct.complex, ptr %1, i64 %111
  %113 = load float, ptr %112, align 4
  %114 = fmul float %4, %113
  store float %114, ptr %112, align 4
  %115 = getelementptr inbounds nuw %struct.complex, ptr %112, i32 0, i32 1
  %116 = load float, ptr %115, align 4
  %117 = fmul float %91, %116
  store float %117, ptr %115, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %118

118:                                              ; preds = %._crit_edge, %89
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

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 5767, %0 ], [ %5, %2 ]
  %.01 = phi i32 [ 1, %0 ], [ %13, %2 ]
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
  %13 = add nsw i32 %.01, 1
  %14 = icmp sle i32 %13, 256
  br i1 %14, label %2, label %15, !llvm.loop !19

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
  call void @Oscar()
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
