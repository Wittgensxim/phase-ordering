; ModuleID = 'results\paper_full\Stanford_Oscar\round_005\output.ll'
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
  br i1 true, label %38, label %35

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
  br i1 true, label %78, label %75

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
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %5, %4
  %.0 = phi i32 [ %1, %4 ], [ %23, %5 ]
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
  %23 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %23, %2
  br i1 %.not, label %24, label %5, !llvm.loop !7

24:                                               ; preds = %5
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

4:                                                ; preds = %4, %2
  %.032 = phi float [ 4.000000e+00, %2 ], [ %11, %4 ]
  %.041 = phi i32 [ 1, %2 ], [ %12, %4 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float %6, 2.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = zext nneg i32 %.041 to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  store float %8, ptr %10, align 4
  %11 = fadd float %.032, %.032
  %12 = add nuw nsw i32 %.041, 1
  %13 = icmp samesign ult i32 %.041, 25
  br i1 %13, label %4, label %14, !llvm.loop !9

14:                                               ; preds = %4
  %15 = sdiv i32 %0, 2
  %16 = sdiv i32 %0, 4
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %18, align 4
  %19 = sext i32 %16 to i64
  %20 = getelementptr [8 x i8], ptr %1, i64 %19
  %21 = getelementptr i8, ptr %20, i64 8
  store float 0.000000e+00, ptr %21, align 4
  %22 = getelementptr i8, ptr %20, i64 12
  store float 1.000000e+00, ptr %22, align 4
  %23 = sext i32 %15 to i64
  %24 = getelementptr [8 x i8], ptr %1, i64 %23
  %25 = getelementptr i8, ptr %24, i64 8
  store float -1.000000e+00, ptr %25, align 4
  %26 = getelementptr i8, ptr %24, i64 12
  store float 0.000000e+00, ptr %26, align 4
  br label %27

27:                                               ; preds = %49, %14
  %.02 = phi i32 [ 1, %14 ], [ %51, %49 ]
  %.0 = phi i32 [ %16, %14 ], [ %28, %49 ]
  %28 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert3 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert3, align 4
  %invariant.op = add nsw i32 %28, 1
  br label %29

29:                                               ; preds = %29, %27
  %.01 = phi i32 [ %28, %27 ], [ %48, %29 ]
  %.reass = add i32 %.01, %invariant.op
  %30 = sext i32 %.reass to i64
  %31 = getelementptr inbounds [8 x i8], ptr %1, i64 %30
  %32 = load float, ptr %31, align 4
  %reass.sub = sub i32 %.01, %28
  %.reass2 = add i32 %reass.sub, 1
  %33 = sext i32 %.reass2 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = fadd float %32, %35
  %37 = fmul float %.pre, %36
  %38 = sext i32 %.01 to i64
  %39 = getelementptr [8 x i8], ptr %1, i64 %38
  %40 = getelementptr i8, ptr %39, i64 8
  store float %37, ptr %40, align 4
  %41 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %42 = load float, ptr %41, align 4
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %44 = load float, ptr %43, align 4
  %45 = fadd float %42, %44
  %46 = fmul float %.pre, %45
  %47 = getelementptr i8, ptr %39, i64 12
  store float %46, ptr %47, align 4
  %48 = add nsw i32 %.01, %.0
  %.not = icmp sgt i32 %48, %15
  br i1 %.not, label %49, label %29, !llvm.loop !10

49:                                               ; preds = %29
  %50 = add nsw i32 %.02, 1
  %51 = call i32 @Min0(i32 noundef %50, i32 noundef 25)
  %52 = icmp sgt i32 %.0, 3
  br i1 %52, label %27, label %53, !llvm.loop !11

53:                                               ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %7 = add nsw i32 %smax, -1
  br label %8

8:                                                ; preds = %89, %5
  %.01 = phi i32 [ 1, %5 ], [ %90, %89 ]
  br label %9

9:                                                ; preds = %58, %8
  %.04 = phi i32 [ 1, %8 ], [ %.lcssa, %58 ]
  %.03 = phi i32 [ %.01, %8 ], [ %59, %58 ]
  %.02 = phi i32 [ 0, %8 ], [ %.03, %58 ]
  %10 = sext i32 %.02 to i64
  %11 = getelementptr [8 x i8], ptr %3, i64 %10
  %12 = getelementptr i8, ptr %11, i64 8
  %13 = getelementptr i8, ptr %11, i64 12
  br label %14

14:                                               ; preds = %14, %9
  %.1 = phi i32 [ %.04, %9 ], [ %57, %14 ]
  %15 = sext i32 %.1 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %1, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = add nsw i32 %6, %.1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %1, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %17, %21
  %23 = add nsw i32 %.1, %.02
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  store float %22, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %29 = load float, ptr %28, align 4
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 4
  store float %30, ptr %31, align 4
  %32 = load float, ptr %12, align 4
  %33 = load float, ptr %16, align 4
  %34 = load float, ptr %20, align 4
  %35 = fsub float %33, %34
  %36 = load float, ptr %13, align 4
  %37 = load float, ptr %26, align 4
  %38 = load float, ptr %28, align 4
  %39 = fsub float %37, %38
  %40 = fneg float %39
  %41 = fmul float %36, %40
  %42 = call float @llvm.fmuladd.f32(float %32, float %35, float %41)
  %43 = add nsw i32 %.1, %.03
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %2, i64 %44
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
  %56 = getelementptr inbounds nuw i8, ptr %45, i64 4
  store float %55, ptr %56, align 4
  %57 = add nsw i32 %.1, 1
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %14, label %58, !llvm.loop !12

58:                                               ; preds = %14
  %.lcssa = phi i32 [ %57, %14 ]
  %59 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %59, %6
  br i1 %.not, label %60, label %9, !llvm.loop !13

60:                                               ; preds = %58
  %xtraiter = and i32 %smax, 3
  %61 = icmp ult i32 %7, 3
  br i1 %61, label %.epil.preheader, label %.new

.new:                                             ; preds = %60
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %62

62:                                               ; preds = %62, %.new
  %.0 = phi i32 [ 1, %.new ], [ %82, %62 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %62 ]
  %63 = zext nneg i32 %.0 to i64
  %64 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %63
  %65 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %63
  %66 = load i64, ptr %65, align 4
  store i64 %66, ptr %64, align 4
  %67 = add nuw nsw i32 %.0, 1
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %68
  %70 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %68
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %69, align 4
  %72 = add nuw nsw i32 %.0, 2
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %73
  %75 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %73
  %76 = load i64, ptr %75, align 4
  store i64 %76, ptr %74, align 4
  %77 = add nuw nsw i32 %.0, 3
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %78
  %80 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %78
  %81 = load i64, ptr %80, align 4
  store i64 %81, ptr %79, align 4
  %82 = add nuw nsw i32 %.0, 4
  %niter.next.3 = add nuw i32 %niter, 4
  %niter.ncmp.3 = icmp ne i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %62, label %.unr-lcssa, !llvm.loop !14

.unr-lcssa:                                       ; preds = %62
  %.0.unr = phi i32 [ %82, %62 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %89

.epil.preheader:                                  ; preds = %.unr-lcssa, %60
  %.0.epil.init = phi i32 [ 1, %60 ], [ %.0.unr, %.unr-lcssa ]
  %lcmp.mod4 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %83

83:                                               ; preds = %83, %.epil.preheader
  %.0.epil = phi i32 [ %.0.epil.init, %.epil.preheader ], [ %88, %83 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %83 ]
  %84 = zext nneg i32 %.0.epil to i64
  %85 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %84
  %86 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %84
  %87 = load i64, ptr %86, align 4
  store i64 %87, ptr %85, align 4
  %88 = add nuw nsw i32 %.0.epil, 1
  %.not1.not.epil = icmp slt i32 %.0.epil, %0
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %83, label %.epilog-lcssa, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %83
  br label %89

89:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %90 = shl nsw i32 %.01, 1
  %.not2 = icmp sgt i32 %90, %6
  br i1 %.not2, label %91, label %8, !llvm.loop !17

91:                                               ; preds = %89
  %92 = icmp sgt i32 %0, 0
  br i1 %92, label %.lr.ph, label %120

.lr.ph:                                           ; preds = %91
  %93 = fneg float %4
  %94 = add i32 %0, -1
  %xtraiter6 = and i32 %0, 1
  %95 = icmp ult i32 %94, 1
  br i1 %95, label %.epil.preheader5, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter10 = sub i32 %0, %xtraiter6
  br label %96

96:                                               ; preds = %96, %.lr.ph.new
  %.21 = phi i32 [ 1, %.lr.ph.new ], [ %112, %96 ]
  %niter11 = phi i32 [ 0, %.lr.ph.new ], [ %niter11.next.1, %96 ]
  %97 = zext nneg i32 %.21 to i64
  %98 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %97
  %99 = load float, ptr %98, align 4
  %100 = fmul float %4, %99
  store float %100, ptr %98, align 4
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %102 = load float, ptr %101, align 4
  %103 = fmul float %102, %93
  store float %103, ptr %101, align 4
  %104 = add nuw nsw i32 %.21, 1
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %105
  %107 = load float, ptr %106, align 4
  %108 = fmul float %4, %107
  store float %108, ptr %106, align 4
  %109 = getelementptr inbounds nuw i8, ptr %106, i64 4
  %110 = load float, ptr %109, align 4
  %111 = fmul float %110, %93
  store float %111, ptr %109, align 4
  %112 = add nuw nsw i32 %.21, 2
  %niter11.next.1 = add i32 %niter11, 2
  %niter11.ncmp.1 = icmp ne i32 %niter11.next.1, %unroll_iter10
  br i1 %niter11.ncmp.1, label %96, label %._crit_edge.unr-lcssa, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %96
  %.21.unr = phi i32 [ %112, %96 ]
  %lcmp.mod8 = icmp ne i32 %xtraiter6, 0
  br i1 %lcmp.mod8, label %.epil.preheader5, label %._crit_edge

.epil.preheader5:                                 ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.21.epil.init = phi i32 [ 1, %.lr.ph ], [ %.21.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod9 = icmp ne i32 %xtraiter6, 0
  call void @llvm.assume(i1 %lcmp.mod9)
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %.epil.preheader5
  %113 = zext nneg i32 %.21.epil.init to i64
  %114 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %113
  %115 = load float, ptr %114, align 4
  %116 = fmul float %4, %115
  store float %116, ptr %114, align 4
  %117 = getelementptr inbounds nuw i8, ptr %114, i64 4
  %118 = load float, ptr %117, align 4
  %119 = fmul float %118, %93
  store float %119, ptr %117, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %120

120:                                              ; preds = %._crit_edge, %91
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

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 5767, %0 ], [ %5, %2 ]
  %.01 = phi i32 [ 1, %0 ], [ %13, %2 ]
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float %6, float 2.000000e+01, float -1.000000e+01)
  %8 = zext nneg i32 %.01 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %8
  store float %7, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float %10, float 2.000000e+01, float -1.000000e+01)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %11, ptr %12, align 4
  %13 = add nuw nsw i32 %.01, 1
  %14 = icmp samesign ult i32 %.01, 256
  br i1 %14, label %2, label %15, !llvm.loop !19

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
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
