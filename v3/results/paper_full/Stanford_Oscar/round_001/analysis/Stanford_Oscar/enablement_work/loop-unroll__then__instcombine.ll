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
  br i1 true, label %5, label %11

5:                                                ; preds = %3
  br i1 false, label %6, label %7

6:                                                ; preds = %5
  br label %10

7:                                                ; preds = %5
  %8 = fmul float %4, 5.000000e-01
  %9 = fsub float 1.000000e+00, %8
  br label %10

10:                                               ; preds = %7, %6
  %.2 = phi float [ poison, %6 ], [ %9, %7 ]
  br label %11

11:                                               ; preds = %10, %3
  %.1 = phi float [ %.2, %10 ], [ poison, %3 ]
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  %14 = fmul float %4, %0
  br i1 false, label %15, label %19

15:                                               ; preds = %13
  br i1 false, label %17, label %16

16:                                               ; preds = %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  %22 = fmul float %14, %0
  br i1 true, label %23, label %29

23:                                               ; preds = %21
  br i1 true, label %25, label %24

24:                                               ; preds = %23
  br label %28

25:                                               ; preds = %23
  %26 = fdiv float %22, 2.400000e+01
  %27 = fadd float %.1, %26
  br label %28

28:                                               ; preds = %25, %24
  %.2.2 = phi float [ %27, %25 ], [ poison, %24 ]
  br label %29

29:                                               ; preds = %28, %21
  %.1.2 = phi float [ %.2.2, %28 ], [ poison, %21 ]
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = fmul float %22, %0
  br i1 false, label %33, label %37

33:                                               ; preds = %31
  br i1 false, label %35, label %34

34:                                               ; preds = %33
  br label %36

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = fmul float %32, %0
  br i1 true, label %41, label %47

41:                                               ; preds = %39
  br i1 false, label %45, label %42

42:                                               ; preds = %41
  %43 = fdiv float %40, 7.200000e+02
  %44 = fsub float %.1.2, %43
  br label %46

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %42
  %.2.4 = phi float [ poison, %45 ], [ %44, %42 ]
  br label %47

47:                                               ; preds = %46, %39
  %.1.4 = phi float [ %.2.4, %46 ], [ poison, %39 ]
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = fmul float %40, %0
  br i1 false, label %51, label %55

51:                                               ; preds = %49
  br i1 false, label %53, label %52

52:                                               ; preds = %51
  br label %54

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = fmul float %50, %0
  br i1 true, label %59, label %65

59:                                               ; preds = %57
  br i1 true, label %61, label %60

60:                                               ; preds = %59
  br label %64

61:                                               ; preds = %59
  %62 = fdiv float %58, 4.032000e+04
  %63 = fadd float %.1.4, %62
  br label %64

64:                                               ; preds = %61, %60
  %.2.6 = phi float [ %63, %61 ], [ poison, %60 ]
  br label %65

65:                                               ; preds = %64, %57
  %.1.6 = phi float [ %.2.6, %64 ], [ poison, %57 ]
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = fmul float %58, %0
  br i1 false, label %69, label %73

69:                                               ; preds = %67
  br i1 false, label %71, label %70

70:                                               ; preds = %69
  br label %72

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %67
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = fmul float %68, %0
  br i1 true, label %77, label %83

77:                                               ; preds = %75
  br i1 false, label %81, label %78

78:                                               ; preds = %77
  %79 = fdiv float %76, 3.628800e+06
  %80 = fsub float %.1.6, %79
  br label %82

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %78
  %.2.8 = phi float [ poison, %81 ], [ %80, %78 ]
  br label %83

83:                                               ; preds = %82, %75
  %.1.8 = phi float [ %.2.8, %82 ], [ poison, %75 ]
  br label %84

84:                                               ; preds = %83
  br i1 false, label %85, label %92

85:                                               ; preds = %84
  br i1 false, label %86, label %90

86:                                               ; preds = %85
  br i1 false, label %88, label %87

87:                                               ; preds = %86
  br label %89

88:                                               ; preds = %86
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90
  unreachable

92:                                               ; preds = %84
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
  br label %7

7:                                                ; preds = %82, %5
  %.01 = phi i32 [ 1, %5 ], [ %83, %82 ]
  br label %8

8:                                                ; preds = %59, %7
  %.04 = phi i32 [ 1, %7 ], [ %57, %59 ]
  %.03 = phi i32 [ %.01, %7 ], [ %60, %59 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %59 ]
  br label %9

9:                                                ; preds = %56, %8
  %.1 = phi i32 [ %.04, %8 ], [ %57, %56 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.02
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  store float %17, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %22 = load float, ptr %21, align 4
  %23 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %24 = load float, ptr %23, align 4
  %25 = fadd float %22, %24
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store float %25, ptr %26, align 4
  %27 = sext i32 %.02 to i64
  %28 = getelementptr [8 x i8], ptr %3, i64 %27
  %29 = getelementptr i8, ptr %28, i64 8
  %30 = load float, ptr %29, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = fsub float %31, %32
  %34 = getelementptr i8, ptr %28, i64 12
  %35 = load float, ptr %34, align 4
  %36 = load float, ptr %21, align 4
  %37 = load float, ptr %23, align 4
  %38 = fsub float %36, %37
  %39 = fneg float %38
  %40 = fmul float %35, %39
  %41 = call float @llvm.fmuladd.f32(float %30, float %33, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %2, i64 %43
  store float %41, ptr %44, align 4
  %45 = load float, ptr %29, align 4
  %46 = load float, ptr %21, align 4
  %47 = load float, ptr %23, align 4
  %48 = fsub float %46, %47
  %49 = load float, ptr %34, align 4
  %50 = load float, ptr %11, align 4
  %51 = load float, ptr %15, align 4
  %52 = fsub float %50, %51
  %53 = fmul float %49, %52
  %54 = call float @llvm.fmuladd.f32(float %45, float %48, float %53)
  %55 = getelementptr inbounds nuw i8, ptr %44, i64 4
  store float %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %9
  %57 = add nsw i32 %.1, 1
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %9, label %58, !llvm.loop !12

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %60, %6
  br i1 %.not, label %61, label %8, !llvm.loop !13

61:                                               ; preds = %59
  %xtraiter = and i32 %smax, 1
  %62 = icmp slt i32 %0, 2
  br i1 %62, label %.epil.preheader, label %.new

.new:                                             ; preds = %61
  %unroll_iter = and i32 %smax, 2147483646
  br label %63

63:                                               ; preds = %74, %.new
  %.0 = phi i32 [ 1, %.new ], [ %75, %74 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.1, %74 ]
  %64 = zext nneg i32 %.0 to i64
  %65 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %64
  %66 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %64
  %67 = load i64, ptr %66, align 4
  store i64 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %63
  %69 = add nuw nsw i32 %.0, 1
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %70
  %72 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %70
  %73 = load i64, ptr %72, align 4
  store i64 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %68
  %75 = add nuw nsw i32 %.0, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %63, !llvm.loop !14

.unr-lcssa:                                       ; preds = %74
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %81, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %61
  %.0.epil.init = phi i32 [ 1, %61 ], [ %75, %.unr-lcssa ]
  %lcmp.mod1 = trunc i32 %smax to i1
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %76

76:                                               ; preds = %.epil.preheader
  %77 = sext i32 %.0.epil.init to i64
  %78 = getelementptr inbounds [8 x i8], ptr %1, i64 %77
  %79 = getelementptr inbounds [8 x i8], ptr %2, i64 %77
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %78, align 4
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %76
  br label %81

81:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  br label %82

82:                                               ; preds = %81
  %83 = shl nsw i32 %.01, 1
  %.not2 = icmp sgt i32 %83, %6
  br i1 %.not2, label %84, label %7, !llvm.loop !15

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %95, %84
  %.2 = phi i32 [ 1, %84 ], [ %96, %95 ]
  %.not3 = icmp sgt i32 %.2, %0
  br i1 %.not3, label %97, label %86

86:                                               ; preds = %85
  %87 = zext nneg i32 %.2 to i64
  %88 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %87
  %89 = load float, ptr %88, align 4
  %90 = fmul float %4, %89
  store float %90, ptr %88, align 4
  %91 = fneg float %4
  %92 = getelementptr inbounds nuw i8, ptr %88, i64 4
  %93 = load float, ptr %92, align 4
  %94 = fmul float %93, %91
  store float %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %86
  %96 = add nuw nsw i32 %.2, 1
  br label %85, !llvm.loop !16

97:                                               ; preds = %85
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
  br label %2, !llvm.loop !17

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
  br label %18, !llvm.loop !18

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
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
