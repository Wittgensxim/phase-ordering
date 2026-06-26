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
  %2 = fmul float %0, %0
  br i1 true, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %1
  br label %11

3:                                                ; preds = %1
  br i1 false, label %4, label %7

4:                                                ; preds = %3
  %5 = fdiv float %2, 2.000000e+00
  %6 = fadd float 1.000000e+00, %5
  br label %10

7:                                                ; preds = %3
  %8 = fdiv float %2, 2.000000e+00
  %9 = fsub float 1.000000e+00, %8
  br label %10

10:                                               ; preds = %7, %4
  %.2 = phi float [ poison, %4 ], [ %9, %7 ]
  br label %11

11:                                               ; preds = %._crit_edge, %10
  %.1 = phi float [ %.2, %10 ], [ poison, %._crit_edge ]
  %12 = fmul float %2, %0
  br i1 false, label %13, label %21

13:                                               ; preds = %11
  br i1 false, label %17, label %14

14:                                               ; preds = %13
  %15 = fdiv float %12, 6.000000e+00
  %16 = fsub float %.1, %15
  br label %20

17:                                               ; preds = %13
  %18 = fdiv float %12, 6.000000e+00
  %19 = fadd float %.1, %18
  br label %20

20:                                               ; preds = %17, %14
  %.2.1 = phi float [ %19, %17 ], [ %16, %14 ]
  br label %21

21:                                               ; preds = %20, %11
  %22 = fmul float %12, %0
  br i1 true, label %23, label %._crit_edge1

._crit_edge1:                                     ; preds = %21
  br label %31

23:                                               ; preds = %21
  br i1 true, label %27, label %24

24:                                               ; preds = %23
  %25 = fdiv float %22, 2.400000e+01
  %26 = fsub float %.1, %25
  br label %30

27:                                               ; preds = %23
  %28 = fdiv float %22, 2.400000e+01
  %29 = fadd float %.1, %28
  br label %30

30:                                               ; preds = %27, %24
  %.2.2 = phi float [ %29, %27 ], [ poison, %24 ]
  br label %31

31:                                               ; preds = %._crit_edge1, %30
  %.1.2 = phi float [ %.2.2, %30 ], [ poison, %._crit_edge1 ]
  %32 = fmul float %22, %0
  br i1 false, label %33, label %41

33:                                               ; preds = %31
  br i1 false, label %37, label %34

34:                                               ; preds = %33
  %35 = fdiv float %32, 1.200000e+02
  %36 = fsub float %.1.2, %35
  br label %40

37:                                               ; preds = %33
  %38 = fdiv float %32, 1.200000e+02
  %39 = fadd float %.1.2, %38
  br label %40

40:                                               ; preds = %37, %34
  %.2.3 = phi float [ %39, %37 ], [ %36, %34 ]
  br label %41

41:                                               ; preds = %40, %31
  %42 = fmul float %32, %0
  br i1 true, label %43, label %._crit_edge2

._crit_edge2:                                     ; preds = %41
  br label %51

43:                                               ; preds = %41
  br i1 false, label %47, label %44

44:                                               ; preds = %43
  %45 = fdiv float %42, 7.200000e+02
  %46 = fsub float %.1.2, %45
  br label %50

47:                                               ; preds = %43
  %48 = fdiv float %42, 7.200000e+02
  %49 = fadd float %.1.2, %48
  br label %50

50:                                               ; preds = %47, %44
  %.2.4 = phi float [ poison, %47 ], [ %46, %44 ]
  br label %51

51:                                               ; preds = %._crit_edge2, %50
  %.1.4 = phi float [ %.2.4, %50 ], [ poison, %._crit_edge2 ]
  %52 = fmul float %42, %0
  br i1 false, label %53, label %61

53:                                               ; preds = %51
  br i1 false, label %57, label %54

54:                                               ; preds = %53
  %55 = fdiv float %52, 5.040000e+03
  %56 = fsub float %.1.4, %55
  br label %60

57:                                               ; preds = %53
  %58 = fdiv float %52, 5.040000e+03
  %59 = fadd float %.1.4, %58
  br label %60

60:                                               ; preds = %57, %54
  %.2.5 = phi float [ %59, %57 ], [ %56, %54 ]
  br label %61

61:                                               ; preds = %60, %51
  %62 = fmul float %52, %0
  br i1 true, label %63, label %._crit_edge3

._crit_edge3:                                     ; preds = %61
  br label %71

63:                                               ; preds = %61
  br i1 true, label %67, label %64

64:                                               ; preds = %63
  %65 = fdiv float %62, 4.032000e+04
  %66 = fsub float %.1.4, %65
  br label %70

67:                                               ; preds = %63
  %68 = fdiv float %62, 4.032000e+04
  %69 = fadd float %.1.4, %68
  br label %70

70:                                               ; preds = %67, %64
  %.2.6 = phi float [ %69, %67 ], [ poison, %64 ]
  br label %71

71:                                               ; preds = %._crit_edge3, %70
  %.1.6 = phi float [ %.2.6, %70 ], [ poison, %._crit_edge3 ]
  %72 = fmul float %62, %0
  br i1 false, label %73, label %81

73:                                               ; preds = %71
  br i1 false, label %77, label %74

74:                                               ; preds = %73
  %75 = fdiv float %72, 3.628800e+05
  %76 = fsub float %.1.6, %75
  br label %80

77:                                               ; preds = %73
  %78 = fdiv float %72, 3.628800e+05
  %79 = fadd float %.1.6, %78
  br label %80

80:                                               ; preds = %77, %74
  %.2.7 = phi float [ %79, %77 ], [ %76, %74 ]
  br label %81

81:                                               ; preds = %80, %71
  %82 = fmul float %72, %0
  br i1 true, label %83, label %._crit_edge4

._crit_edge4:                                     ; preds = %81
  br label %91

83:                                               ; preds = %81
  br i1 false, label %87, label %84

84:                                               ; preds = %83
  %85 = fdiv float %82, 3.628800e+06
  %86 = fsub float %.1.6, %85
  br label %90

87:                                               ; preds = %83
  %88 = fdiv float %82, 3.628800e+06
  %89 = fadd float %.1.6, %88
  br label %90

90:                                               ; preds = %87, %84
  %.2.8 = phi float [ poison, %87 ], [ %86, %84 ]
  br label %91

91:                                               ; preds = %._crit_edge4, %90
  %.1.8 = phi float [ %.2.8, %90 ], [ poison, %._crit_edge4 ]
  br i1 false, label %92, label %98

92:                                               ; preds = %91
  br i1 false, label %93, label %97

93:                                               ; preds = %92
  br i1 false, label %95, label %94

94:                                               ; preds = %93
  br label %96

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %94
  br label %97

97:                                               ; preds = %96, %92
  unreachable

98:                                               ; preds = %91
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

28:                                               ; preds = %55, %15
  %.02 = phi i32 [ 1, %15 ], [ %57, %55 ]
  %.0 = phi i32 [ %17, %15 ], [ %29, %55 ]
  %29 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert1 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %30

30:                                               ; preds = %30, %28
  %.01 = phi i32 [ %29, %28 ], [ %53, %30 ]
  %31 = add nsw i32 %.01, %29
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = sub nsw i32 %.01, %29
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.complex, ptr %1, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %35, %40
  %42 = fmul float %.pre, %41
  %43 = add nsw i32 %.01, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %1, i64 %44
  store float %42, ptr %45, align 4
  %46 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %47 = load float, ptr %46, align 4
  %48 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  %49 = load float, ptr %48, align 4
  %50 = fadd float %47, %49
  %51 = fmul float %.pre, %50
  %52 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  store float %51, ptr %52, align 4
  %53 = add nsw i32 %.01, %.0
  %54 = icmp sle i32 %53, %16
  br i1 %54, label %30, label %55, !llvm.loop !10

55:                                               ; preds = %30
  %56 = add nsw i32 %.02, 1
  %57 = call i32 @Min0(i32 noundef %56, i32 noundef 25)
  %58 = icmp sgt i32 %29, 1
  br i1 %58, label %28, label %59, !llvm.loop !11

59:                                               ; preds = %55
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %76, %5
  %.01 = phi i32 [ 1, %5 ], [ %77, %76 ]
  br label %9

9:                                                ; preds = %59, %8
  %.04 = phi i32 [ 1, %8 ], [ %57, %59 ]
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
  %60 = add nsw i32 %.03, %.01
  %61 = icmp sle i32 %60, %6
  br i1 %61, label %9, label %62, !llvm.loop !13

62:                                               ; preds = %59
  %xtraiter = and i32 %smax, 1
  %63 = icmp ult i32 %7, 1
  br i1 %63, label %.epil.preheader, label %.new

.new:                                             ; preds = %62
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %64

64:                                               ; preds = %64, %.new
  %.0 = phi i32 [ 1, %.new ], [ %72, %64 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %64 ]
  %65 = sext i32 %.0 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %1, i64 %65
  %67 = getelementptr inbounds %struct.complex, ptr %2, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %66, ptr align 4 %67, i64 8, i1 false)
  %68 = add nsw i32 %.0, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.complex, ptr %1, i64 %69
  %71 = getelementptr inbounds %struct.complex, ptr %2, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %70, ptr align 4 %71, i64 8, i1 false)
  %72 = add nsw i32 %.0, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %64, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %64
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %76

.epil.preheader:                                  ; preds = %.unr-lcssa, %62
  %.0.epil.init = phi i32 [ 1, %62 ], [ %72, %.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  %73 = sext i32 %.0.epil.init to i64
  %74 = getelementptr inbounds %struct.complex, ptr %1, i64 %73
  %75 = getelementptr inbounds %struct.complex, ptr %2, i64 %73
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %74, ptr align 4 %75, i64 8, i1 false)
  br label %76

76:                                               ; preds = %.unr-lcssa, %.epil.preheader
  %77 = add nsw i32 %.01, %.01
  %78 = icmp sle i32 %77, %6
  br i1 %78, label %8, label %79, !llvm.loop !15

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %82, %79
  %.2 = phi i32 [ 1, %79 ], [ %91, %82 ]
  %81 = icmp sle i32 %.2, %0
  br i1 %81, label %82, label %92

82:                                               ; preds = %80
  %83 = sext i32 %.2 to i64
  %84 = getelementptr inbounds %struct.complex, ptr %1, i64 %83
  %85 = load float, ptr %84, align 4
  %86 = fmul float %4, %85
  store float %86, ptr %84, align 4
  %87 = fneg float %4
  %88 = getelementptr inbounds nuw %struct.complex, ptr %84, i32 0, i32 1
  %89 = load float, ptr %88, align 4
  %90 = fmul float %87, %89
  store float %90, ptr %88, align 4
  %91 = add nsw i32 %.2, 1
  br label %80, !llvm.loop !16

92:                                               ; preds = %80
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

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 5767, %0 ], [ %7, %5 ]
  %.0 = phi i32 [ 1, %0 ], [ %15, %5 ]
  %4 = icmp sle i32 %.0, 256
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  store i32 %3, ptr %1, align 4
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
  br label %2, !llvm.loop !17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %19, %16
  %.1 = phi i32 [ 1, %16 ], [ %20, %19 ]
  %18 = icmp sle i32 %.1, 20
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %20 = add nsw i32 %.1, 1
  br label %17, !llvm.loop !18

21:                                               ; preds = %17
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
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
  br i1 false, label %1, label %2

1:                                                ; preds = %0
  call void @Oscar()
  unreachable

2:                                                ; preds = %0
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
