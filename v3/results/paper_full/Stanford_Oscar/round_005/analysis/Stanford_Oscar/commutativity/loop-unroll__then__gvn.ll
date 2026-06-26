; ModuleID = 'results\paper_full\Stanford_Oscar\round_004\output.ll'
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

8:                                                ; preds = %87, %5
  %.01 = phi i32 [ 1, %5 ], [ %88, %87 ]
  br label %9

9:                                                ; preds = %59, %8
  %.04 = phi i32 [ 1, %8 ], [ %57, %59 ]
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
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %87

.epil.preheader:                                  ; preds = %.unr-lcssa, %62
  %.0.epil.init = phi i32 [ 1, %62 ], [ %80, %.unr-lcssa ]
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
  %86 = icmp sle i32 %85, %0
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %81, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %81
  br label %87

87:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %88 = add nsw i32 %.01, %.01
  %89 = icmp sle i32 %88, %6
  br i1 %89, label %8, label %90, !llvm.loop !17

90:                                               ; preds = %87
  %91 = icmp sle i32 1, %0
  br i1 %91, label %.lr.ph, label %119

.lr.ph:                                           ; preds = %90
  %92 = fneg float %4
  %93 = add i32 %0, -1
  %xtraiter3 = and i32 %0, 1
  %94 = icmp ult i32 %93, 1
  br i1 %94, label %.epil.preheader2, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter7 = sub i32 %0, %xtraiter3
  br label %95

95:                                               ; preds = %95, %.lr.ph.new
  %.21 = phi i32 [ 1, %.lr.ph.new ], [ %111, %95 ]
  %niter8 = phi i32 [ 0, %.lr.ph.new ], [ %niter8.next.1, %95 ]
  %96 = sext i32 %.21 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %1, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = fmul float %4, %98
  store float %99, ptr %97, align 4
  %100 = getelementptr inbounds nuw %struct.complex, ptr %97, i32 0, i32 1
  %101 = load float, ptr %100, align 4
  %102 = fmul float %92, %101
  store float %102, ptr %100, align 4
  %103 = add nsw i32 %.21, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.complex, ptr %1, i64 %104
  %106 = load float, ptr %105, align 4
  %107 = fmul float %4, %106
  store float %107, ptr %105, align 4
  %108 = getelementptr inbounds nuw %struct.complex, ptr %105, i32 0, i32 1
  %109 = load float, ptr %108, align 4
  %110 = fmul float %92, %109
  store float %110, ptr %108, align 4
  %111 = add nsw i32 %.21, 2
  %niter8.next.1 = add i32 %niter8, 2
  %niter8.ncmp.1 = icmp ne i32 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1, label %95, label %._crit_edge.unr-lcssa, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %95
  %lcmp.mod5 = icmp ne i32 %xtraiter3, 0
  br i1 %lcmp.mod5, label %.epil.preheader2, label %._crit_edge

.epil.preheader2:                                 ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.21.epil.init = phi i32 [ 1, %.lr.ph ], [ %111, %._crit_edge.unr-lcssa ]
  %lcmp.mod6 = icmp ne i32 %xtraiter3, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  %112 = sext i32 %.21.epil.init to i64
  %113 = getelementptr inbounds %struct.complex, ptr %1, i64 %112
  %114 = load float, ptr %113, align 4
  %115 = fmul float %4, %114
  store float %115, ptr %113, align 4
  %116 = getelementptr inbounds nuw %struct.complex, ptr %113, i32 0, i32 1
  %117 = load float, ptr %116, align 4
  %118 = fmul float %92, %117
  store float %118, ptr %116, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader2
  br label %119

119:                                              ; preds = %._crit_edge, %90
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
