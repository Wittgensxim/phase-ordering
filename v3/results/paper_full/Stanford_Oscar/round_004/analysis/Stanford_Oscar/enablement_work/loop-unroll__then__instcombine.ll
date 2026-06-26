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
  br i1 true, label %4, label %10

4:                                                ; preds = %2
  br i1 false, label %5, label %6

5:                                                ; preds = %4
  br label %9

6:                                                ; preds = %4
  %7 = fmul float %3, 5.000000e-01
  %8 = fsub float 1.000000e+00, %7
  br label %9

9:                                                ; preds = %6, %5
  %.2 = phi float [ poison, %5 ], [ %8, %6 ]
  br label %10

10:                                               ; preds = %9, %2
  %.1 = phi float [ %.2, %9 ], [ poison, %2 ]
  %11 = fmul float %3, %0
  br i1 false, label %12, label %16

12:                                               ; preds = %10
  br i1 false, label %14, label %13

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %10
  %17 = fmul float %11, %0
  br i1 true, label %18, label %24

18:                                               ; preds = %16
  br i1 true, label %20, label %19

19:                                               ; preds = %18
  br label %23

20:                                               ; preds = %18
  %21 = fdiv float %17, 2.400000e+01
  %22 = fadd float %.1, %21
  br label %23

23:                                               ; preds = %20, %19
  %.2.2 = phi float [ %22, %20 ], [ poison, %19 ]
  br label %24

24:                                               ; preds = %23, %16
  %.1.2 = phi float [ %.2.2, %23 ], [ poison, %16 ]
  %25 = fmul float %17, %0
  br i1 false, label %26, label %30

26:                                               ; preds = %24
  br i1 false, label %28, label %27

27:                                               ; preds = %26
  br label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %24
  %31 = fmul float %25, %0
  br i1 true, label %32, label %38

32:                                               ; preds = %30
  br i1 false, label %36, label %33

33:                                               ; preds = %32
  %34 = fdiv float %31, 7.200000e+02
  %35 = fsub float %.1.2, %34
  br label %37

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %33
  %.2.4 = phi float [ poison, %36 ], [ %35, %33 ]
  br label %38

38:                                               ; preds = %37, %30
  %.1.4 = phi float [ %.2.4, %37 ], [ poison, %30 ]
  %39 = fmul float %31, %0
  br i1 false, label %40, label %44

40:                                               ; preds = %38
  br i1 false, label %42, label %41

41:                                               ; preds = %40
  br label %43

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %38
  %45 = fmul float %39, %0
  br i1 true, label %46, label %52

46:                                               ; preds = %44
  br i1 true, label %48, label %47

47:                                               ; preds = %46
  br label %51

48:                                               ; preds = %46
  %49 = fdiv float %45, 4.032000e+04
  %50 = fadd float %.1.4, %49
  br label %51

51:                                               ; preds = %48, %47
  %.2.6 = phi float [ %50, %48 ], [ poison, %47 ]
  br label %52

52:                                               ; preds = %51, %44
  %.1.6 = phi float [ %.2.6, %51 ], [ poison, %44 ]
  %53 = fmul float %45, %0
  br i1 false, label %54, label %58

54:                                               ; preds = %52
  br i1 false, label %56, label %55

55:                                               ; preds = %54
  br label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %52
  %59 = fmul float %53, %0
  br i1 true, label %60, label %66

60:                                               ; preds = %58
  br i1 false, label %64, label %61

61:                                               ; preds = %60
  %62 = fdiv float %59, 3.628800e+06
  %63 = fsub float %.1.6, %62
  br label %65

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %61
  %.2.8 = phi float [ poison, %64 ], [ %63, %61 ]
  br label %66

66:                                               ; preds = %65, %58
  %.1.8 = phi float [ %.2.8, %65 ], [ poison, %58 ]
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
  br label %7

7:                                                ; preds = %88, %5
  %.01 = phi i32 [ 1, %5 ], [ %89, %88 ]
  br label %8

8:                                                ; preds = %57, %7
  %.04 = phi i32 [ 1, %7 ], [ %56, %57 ]
  %.03 = phi i32 [ %.01, %7 ], [ %58, %57 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %57 ]
  %9 = sext i32 %.02 to i64
  %10 = getelementptr [8 x i8], ptr %3, i64 %9
  %11 = getelementptr i8, ptr %10, i64 8
  %12 = getelementptr i8, ptr %10, i64 12
  br label %13

13:                                               ; preds = %13, %8
  %.1 = phi i32 [ %.04, %8 ], [ %56, %13 ]
  %14 = sext i32 %.1 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = add nsw i32 %6, %.1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %1, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fadd float %16, %20
  %22 = add nsw i32 %.1, %.02
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  store float %21, ptr %24, align 4
  %25 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %28 = load float, ptr %27, align 4
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds nuw i8, ptr %24, i64 4
  store float %29, ptr %30, align 4
  %31 = load float, ptr %11, align 4
  %32 = load float, ptr %15, align 4
  %33 = load float, ptr %19, align 4
  %34 = fsub float %32, %33
  %35 = load float, ptr %12, align 4
  %36 = load float, ptr %25, align 4
  %37 = load float, ptr %27, align 4
  %38 = fsub float %36, %37
  %39 = fneg float %38
  %40 = fmul float %35, %39
  %41 = call float @llvm.fmuladd.f32(float %31, float %34, float %40)
  %42 = add nsw i32 %.1, %.03
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %2, i64 %43
  store float %41, ptr %44, align 4
  %45 = load float, ptr %11, align 4
  %46 = load float, ptr %25, align 4
  %47 = load float, ptr %27, align 4
  %48 = fsub float %46, %47
  %49 = load float, ptr %12, align 4
  %50 = load float, ptr %15, align 4
  %51 = load float, ptr %19, align 4
  %52 = fsub float %50, %51
  %53 = fmul float %49, %52
  %54 = call float @llvm.fmuladd.f32(float %45, float %48, float %53)
  %55 = getelementptr inbounds nuw i8, ptr %44, i64 4
  store float %54, ptr %55, align 4
  %56 = add nsw i32 %.1, 1
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %13, label %57, !llvm.loop !12

57:                                               ; preds = %13
  %58 = add nsw i32 %.03, %.01
  %.not = icmp sgt i32 %58, %6
  br i1 %.not, label %59, label %8, !llvm.loop !13

59:                                               ; preds = %57
  %xtraiter = and i32 %smax, 3
  %60 = icmp slt i32 %0, 4
  br i1 %60, label %.epil.preheader, label %.new

.new:                                             ; preds = %59
  %unroll_iter = and i32 %smax, 2147483644
  br label %61

61:                                               ; preds = %61, %.new
  %.0 = phi i32 [ 1, %.new ], [ %81, %61 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %61 ]
  %62 = zext nneg i32 %.0 to i64
  %63 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %62
  %64 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %62
  %65 = load i64, ptr %64, align 4
  store i64 %65, ptr %63, align 4
  %66 = add nuw nsw i32 %.0, 1
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %67
  %69 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %67
  %70 = load i64, ptr %69, align 4
  store i64 %70, ptr %68, align 4
  %71 = add nuw nsw i32 %.0, 2
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %72
  %74 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %72
  %75 = load i64, ptr %74, align 4
  store i64 %75, ptr %73, align 4
  %76 = add nuw nsw i32 %.0, 3
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %77
  %79 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %77
  %80 = load i64, ptr %79, align 4
  store i64 %80, ptr %78, align 4
  %81 = add nuw nsw i32 %.0, 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.unr-lcssa, label %61, !llvm.loop !14

.unr-lcssa:                                       ; preds = %61
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %88, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %59
  %.0.epil.init = phi i32 [ 1, %59 ], [ %81, %.unr-lcssa ]
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %82

82:                                               ; preds = %82, %.epil.preheader
  %.0.epil = phi i32 [ %.0.epil.init, %.epil.preheader ], [ %87, %82 ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %82 ]
  %83 = sext i32 %.0.epil to i64
  %84 = getelementptr inbounds [8 x i8], ptr %1, i64 %83
  %85 = getelementptr inbounds [8 x i8], ptr %2, i64 %83
  %86 = load i64, ptr %85, align 4
  store i64 %86, ptr %84, align 4
  %87 = add nsw i32 %.0.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %82, !llvm.loop !15

.epilog-lcssa:                                    ; preds = %82
  br label %88

88:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %89 = shl nsw i32 %.01, 1
  %.not9 = icmp sgt i32 %89, %6
  br i1 %.not9, label %90, label %7, !llvm.loop !17

90:                                               ; preds = %88
  %91 = icmp sgt i32 %0, 0
  br i1 %91, label %.lr.ph, label %118

.lr.ph:                                           ; preds = %90
  %92 = fneg float %4
  %xtraiter3 = and i32 %0, 1
  %93 = icmp eq i32 %0, 1
  br i1 %93, label %.epil.preheader2, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter7 = and i32 %0, 2147483646
  br label %94

94:                                               ; preds = %94, %.lr.ph.new
  %.21 = phi i32 [ 1, %.lr.ph.new ], [ %110, %94 ]
  %niter8 = phi i32 [ 0, %.lr.ph.new ], [ %niter8.next.1, %94 ]
  %95 = zext nneg i32 %.21 to i64
  %96 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %95
  %97 = load float, ptr %96, align 4
  %98 = fmul float %4, %97
  store float %98, ptr %96, align 4
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 4
  %100 = load float, ptr %99, align 4
  %101 = fmul float %100, %92
  store float %101, ptr %99, align 4
  %102 = zext nneg i32 %.21 to i64
  %103 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %105 = load float, ptr %104, align 4
  %106 = fmul float %4, %105
  store float %106, ptr %104, align 4
  %107 = getelementptr inbounds nuw i8, ptr %103, i64 12
  %108 = load float, ptr %107, align 4
  %109 = fmul float %108, %92
  store float %109, ptr %107, align 4
  %110 = add nuw nsw i32 %.21, 2
  %niter8.next.1 = add i32 %niter8, 2
  %niter8.ncmp.1.not = icmp eq i32 %niter8.next.1, %unroll_iter7
  br i1 %niter8.ncmp.1.not, label %._crit_edge.unr-lcssa, label %94, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %94
  %lcmp.mod5.not = icmp eq i32 %xtraiter3, 0
  br i1 %lcmp.mod5.not, label %._crit_edge, label %.epil.preheader2

.epil.preheader2:                                 ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.21.epil.init = phi i32 [ 1, %.lr.ph ], [ %110, %._crit_edge.unr-lcssa ]
  %lcmp.mod6 = trunc i32 %0 to i1
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %.epil.preheader2
  %111 = sext i32 %.21.epil.init to i64
  %112 = getelementptr inbounds [8 x i8], ptr %1, i64 %111
  %113 = load float, ptr %112, align 4
  %114 = fmul float %4, %113
  store float %114, ptr %112, align 4
  %115 = getelementptr inbounds nuw i8, ptr %112, i64 4
  %116 = load float, ptr %115, align 4
  %117 = fmul float %116, %92
  store float %117, ptr %115, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %118

118:                                              ; preds = %._crit_edge, %90
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
