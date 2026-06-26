; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_000\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %15
  %.013 = phi i32 [ 0, %2 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %3, %11
  %.02 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = call double @random_double()
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  store double %5, ptr %10, align 8
  br label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %.02, 1
  %13 = icmp slt i32 %12, 2000
  br i1 %13, label %4, label %14, !llvm.loop !7

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %.013, 1
  %17 = icmp slt i32 %16, 2000
  br i1 %17, label %3, label %18, !llvm.loop !9

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %38, %18
  %.124 = phi i32 [ 0, %18 ], [ %39, %38 ]
  %20 = sext i32 %.124 to i64
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  store double 0.000000e+00, ptr %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %.124, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  store double 0.000000e+00, ptr %25, align 8
  br label %26

26:                                               ; preds = %22
  %27 = add nuw nsw i32 %.124, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  store double 0.000000e+00, ptr %29, align 8
  br label %30

30:                                               ; preds = %26
  %31 = add nuw nsw i32 %.124, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %1, i64 %32
  store double 0.000000e+00, ptr %33, align 8
  br label %34

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %.124, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %1, i64 %36
  store double 0.000000e+00, ptr %37, align 8
  br label %38

38:                                               ; preds = %34
  %39 = add nuw nsw i32 %.124, 5
  %40 = icmp samesign ult i32 %39, 2000
  br i1 %40, label %19, label %41, !llvm.loop !10

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %68
  %.16 = phi i32 [ 0, %41 ], [ %69, %68 ]
  br label %43

43:                                               ; preds = %64, %42
  %.25 = phi i32 [ 0, %42 ], [ %65, %64 ]
  %44 = sext i32 %.16 to i64
  %45 = getelementptr inbounds ptr, ptr %0, i64 %44
  %46 = load ptr, ptr %45, align 8
  %47 = sext i32 %.25 to i64
  %48 = getelementptr inbounds double, ptr %46, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %1, i64 %47
  %51 = load double, ptr %50, align 8
  %52 = fadd double %51, %49
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %43
  %54 = add nuw nsw i32 %.25, 1
  %55 = sext i32 %.16 to i64
  %56 = getelementptr inbounds ptr, ptr %0, i64 %55
  %57 = load ptr, ptr %56, align 8
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds double, ptr %57, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = getelementptr inbounds double, ptr %1, i64 %58
  %62 = load double, ptr %61, align 8
  %63 = fadd double %62, %60
  store double %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %53
  %65 = add nuw nsw i32 %.25, 2
  %66 = icmp samesign ult i32 %65, 2000
  br i1 %66, label %43, label %67, !llvm.loop !11

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %.16, 1
  %70 = icmp slt i32 %69, 2000
  br i1 %70, label %42, label %71, !llvm.loop !12

71:                                               ; preds = %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %97

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %96

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %55

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  %18 = icmp slt i32 1, %0
  br i1 %18, label %.lr.ph9, label %54

.lr.ph9:                                          ; preds = %12
  %19 = add i32 %0, -1
  %20 = add i32 %0, -2
  %xtraiter15 = and i32 %19, 1
  %21 = icmp ult i32 %20, 1
  br i1 %21, label %.epil.preheader14, label %.lr.ph9.new

.lr.ph9.new:                                      ; preds = %.lr.ph9
  %unroll_iter19 = sub i32 %19, %xtraiter15
  br label %22

22:                                               ; preds = %43, %.lr.ph9.new
  %.27 = phi i32 [ 0, %.lr.ph9.new ], [ %.3.1, %43 ]
  %.016 = phi i32 [ %17, %.lr.ph9.new ], [ %42, %43 ]
  %.025 = phi i32 [ 1, %.lr.ph9.new ], [ %44, %43 ]
  %.044 = phi double [ %16, %.lr.ph9.new ], [ %.15.1, %43 ]
  %niter20 = phi i32 [ 0, %.lr.ph9.new ], [ %niter20.next.1, %43 ]
  %23 = add nsw i32 %.016, %2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = call double @llvm.fabs.f64(double %26)
  %28 = fcmp ogt double %27, %.044
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %22
  %.15 = phi double [ %27, %29 ], [ %.044, %22 ]
  %.3 = phi i32 [ %.025, %29 ], [ %.27, %22 ]
  %31 = add nsw i32 %.016, %3
  br label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %.025, 1
  %34 = add nsw i32 %31, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %1, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  %39 = fcmp ogt double %38, %.15
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %32
  %.15.1 = phi double [ %38, %40 ], [ %.15, %32 ]
  %.3.1 = phi i32 [ %33, %40 ], [ %.3, %32 ]
  %42 = add nsw i32 %31, %3
  br label %43

43:                                               ; preds = %41
  %44 = add nsw i32 %.025, 2
  %niter20.next.1 = add i32 %niter20, 2
  %niter20.ncmp.1 = icmp ne i32 %niter20.next.1, %unroll_iter19
  br i1 %niter20.ncmp.1, label %22, label %._crit_edge10.unr-lcssa, !llvm.loop !13

._crit_edge10.unr-lcssa:                          ; preds = %43
  %split11.ph = phi i32 [ %.3.1, %43 ]
  %.27.unr = phi i32 [ %.3.1, %43 ]
  %.016.unr = phi i32 [ %42, %43 ]
  %.025.unr = phi i32 [ %44, %43 ]
  %.044.unr = phi double [ %.15.1, %43 ]
  %lcmp.mod16 = icmp ne i32 %xtraiter15, 0
  br i1 %lcmp.mod16, label %.epil.preheader14, label %._crit_edge10

.epil.preheader14:                                ; preds = %._crit_edge10.unr-lcssa, %.lr.ph9
  %.27.epil.init = phi i32 [ 0, %.lr.ph9 ], [ %.27.unr, %._crit_edge10.unr-lcssa ]
  %.016.epil.init = phi i32 [ %17, %.lr.ph9 ], [ %.016.unr, %._crit_edge10.unr-lcssa ]
  %.025.epil.init = phi i32 [ 1, %.lr.ph9 ], [ %.025.unr, %._crit_edge10.unr-lcssa ]
  %.044.epil.init = phi double [ %16, %.lr.ph9 ], [ %.044.unr, %._crit_edge10.unr-lcssa ]
  %lcmp.mod18 = icmp ne i32 %xtraiter15, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %45

45:                                               ; preds = %.epil.preheader14
  %46 = add nsw i32 %.016.epil.init, %2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %1, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ogt double %50, %.044.epil.init
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %45
  %.3.epil = phi i32 [ %.025.epil.init, %52 ], [ %.27.epil.init, %45 ]
  br label %._crit_edge10.epilog-lcssa

._crit_edge10.epilog-lcssa:                       ; preds = %53
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10.unr-lcssa, %._crit_edge10.epilog-lcssa
  %split11 = phi i32 [ %split11.ph, %._crit_edge10.unr-lcssa ], [ %.3.epil, %._crit_edge10.epilog-lcssa ]
  br label %54

54:                                               ; preds = %._crit_edge10, %12
  %.2.lcssa = phi i32 [ %split11, %._crit_edge10 ], [ 0, %12 ]
  br label %95

55:                                               ; preds = %10
  %56 = sext i32 %2 to i64
  %57 = getelementptr inbounds double, ptr %1, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fabs.f64(double %58)
  %60 = icmp slt i32 1, %0
  br i1 %60, label %.lr.ph, label %94

.lr.ph:                                           ; preds = %55
  %61 = add i32 %0, -1
  %62 = add i32 %0, -2
  %xtraiter = and i32 %61, 1
  %63 = icmp ult i32 %62, 1
  br i1 %63, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %61, %xtraiter
  br label %64

64:                                               ; preds = %83, %.lr.ph.new
  %.53 = phi i32 [ 0, %.lr.ph.new ], [ %.6.1, %83 ]
  %.132 = phi i32 [ 1, %.lr.ph.new ], [ %84, %83 ]
  %.261 = phi double [ %59, %.lr.ph.new ], [ %.37.1, %83 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %83 ]
  %65 = add nsw i32 %.132, %2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %1, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fabs.f64(double %68)
  %70 = fcmp ogt double %69, %.261
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %64
  %.37 = phi double [ %69, %71 ], [ %.261, %64 ]
  %.6 = phi i32 [ %.132, %71 ], [ %.53, %64 ]
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %.132, 1
  %75 = add nsw i32 %74, %2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %1, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = call double @llvm.fabs.f64(double %78)
  %80 = fcmp ogt double %79, %.37
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %73
  %.37.1 = phi double [ %79, %81 ], [ %.37, %73 ]
  %.6.1 = phi i32 [ %74, %81 ], [ %.6, %73 ]
  br label %83

83:                                               ; preds = %82
  %84 = add nsw i32 %.132, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %64, label %._crit_edge.unr-lcssa, !llvm.loop !14

._crit_edge.unr-lcssa:                            ; preds = %83
  %split.ph = phi i32 [ %.6.1, %83 ]
  %.53.unr = phi i32 [ %.6.1, %83 ]
  %.132.unr = phi i32 [ %84, %83 ]
  %.261.unr = phi double [ %.37.1, %83 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.53.epil.init = phi i32 [ 0, %.lr.ph ], [ %.53.unr, %._crit_edge.unr-lcssa ]
  %.132.epil.init = phi i32 [ 1, %.lr.ph ], [ %.132.unr, %._crit_edge.unr-lcssa ]
  %.261.epil.init = phi double [ %59, %.lr.ph ], [ %.261.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod13 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod13)
  br label %85

85:                                               ; preds = %.epil.preheader
  %86 = add nsw i32 %.132.epil.init, %2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %1, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = call double @llvm.fabs.f64(double %89)
  %91 = fcmp ogt double %90, %.261.epil.init
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %85
  %.6.epil = phi i32 [ %.132.epil.init, %92 ], [ %.53.epil.init, %85 ]
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %._crit_edge.unr-lcssa ], [ %.6.epil, %._crit_edge.epilog-lcssa ]
  br label %94

94:                                               ; preds = %._crit_edge, %55
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %55 ]
  br label %95

95:                                               ; preds = %94, %54
  %.4 = phi i32 [ %.2.lcssa, %54 ], [ %.5.lcssa, %94 ]
  br label %96

96:                                               ; preds = %95, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %95 ]
  br label %97

97:                                               ; preds = %96, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %96 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph4, label %21

.lr.ph4:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph4, %18
  %.02 = phi i32 [ 0, %.lr.ph4 ], [ %19, %18 ]
  %13 = add nsw i32 %.02, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %.02, %4
  %20 = icmp slt i32 %19, %10
  br i1 %20, label %12, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %18
  br label %21

21:                                               ; preds = %._crit_edge5, %9
  br label %48

22:                                               ; preds = %7
  %23 = icmp slt i32 0, %0
  br i1 %23, label %.lr.ph, label %47

.lr.ph:                                           ; preds = %22
  %24 = add i32 %0, -1
  %xtraiter = and i32 %0, 1
  %25 = icmp ult i32 %24, 1
  br i1 %25, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %0, %xtraiter
  br label %26

26:                                               ; preds = %39, %.lr.ph.new
  %.11 = phi i32 [ 0, %.lr.ph.new ], [ %40, %39 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %39 ]
  %27 = add nsw i32 %.11, %3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %2, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fmul double %30, %1
  store double %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %26
  %33 = add nuw nsw i32 %.11, 1
  %34 = add nsw i32 %33, %3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %2, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = fmul double %37, %1
  store double %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %32
  %40 = add nsw i32 %.11, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %26, label %._crit_edge.unr-lcssa, !llvm.loop !16

._crit_edge.unr-lcssa:                            ; preds = %39
  %.11.unr = phi i32 [ %40, %39 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.11.epil.init = phi i32 [ 0, %.lr.ph ], [ %.11.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod6 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %41

41:                                               ; preds = %.epil.preheader
  %42 = add nsw i32 %.11.epil.init, %3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %2, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fmul double %45, %1
  store double %46, ptr %44, align 8
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %47

47:                                               ; preds = %._crit_edge, %22
  br label %48

48:                                               ; preds = %47, %21
  br label %49

49:                                               ; preds = %48, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %83

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %83

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %14, %12
  %17 = icmp slt i32 %4, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  br label %21

21:                                               ; preds = %18, %16
  %.01 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  %27 = icmp slt i32 0, %0
  br i1 %27, label %.lr.ph6, label %43

.lr.ph6:                                          ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph6, %40
  %.14 = phi i32 [ %.0, %.lr.ph6 ], [ %39, %40 ]
  %.123 = phi i32 [ %.01, %.lr.ph6 ], [ %38, %40 ]
  %.032 = phi i32 [ 0, %.lr.ph6 ], [ %41, %40 ]
  %29 = add nsw i32 %.123, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = add nsw i32 %.14, %6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %5, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %1, double %32, double %36)
  store double %37, ptr %35, align 8
  %38 = add nsw i32 %.123, %4
  %39 = add nsw i32 %.14, %7
  br label %40

40:                                               ; preds = %28
  %41 = add nsw i32 %.032, 1
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %28, label %._crit_edge7, !llvm.loop !17

._crit_edge7:                                     ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge7, %26
  br label %83

44:                                               ; preds = %14
  %45 = icmp slt i32 0, %0
  br i1 %45, label %.lr.ph, label %81

.lr.ph:                                           ; preds = %44
  %46 = add i32 %0, -1
  %xtraiter = and i32 %0, 1
  %47 = icmp ult i32 %46, 1
  br i1 %47, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %0, %xtraiter
  br label %48

48:                                               ; preds = %69, %.lr.ph.new
  %.141 = phi i32 [ 0, %.lr.ph.new ], [ %70, %69 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %69 ]
  %49 = add nsw i32 %.141, %3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %2, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = add nsw i32 %.141, %6
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %5, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = call double @llvm.fmuladd.f64(double %1, double %52, double %56)
  store double %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %48
  %59 = add nuw nsw i32 %.141, 1
  %60 = add nsw i32 %59, %3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %2, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = add nsw i32 %59, %6
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %5, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = call double @llvm.fmuladd.f64(double %1, double %63, double %67)
  store double %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %58
  %70 = add nsw i32 %.141, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %48, label %._crit_edge.unr-lcssa, !llvm.loop !18

._crit_edge.unr-lcssa:                            ; preds = %69
  %.141.unr = phi i32 [ %70, %69 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.141.epil.init = phi i32 [ 0, %.lr.ph ], [ %.141.unr, %._crit_edge.unr-lcssa ]
  %lcmp.mod8 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod8)
  br label %71

71:                                               ; preds = %.epil.preheader
  %72 = add nsw i32 %.141.epil.init, %3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %2, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = add nsw i32 %.141.epil.init, %6
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %5, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = call double @llvm.fmuladd.f64(double %1, double %75, double %79)
  store double %80, ptr %78, align 8
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  br label %81

81:                                               ; preds = %._crit_edge, %44
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %43, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %42
  %.013 = phi i32 [ 0, %2 ], [ %7, %42 ]
  %4 = sext i32 %.013 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nsw i32 %.013, 1
  %8 = sub nsw i32 2000, %.013
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.013, i32 noundef 1)
  %10 = add nsw i32 %9, %.013
  %11 = getelementptr inbounds i32, ptr %1, i64 %4
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds double, ptr %6, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = icmp ne i32 %10, %.013
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %6, i64 %4
  %20 = load double, ptr %19, align 8
  store double %20, ptr %13, align 8
  store double %14, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds double, ptr %6, i64 %4
  %23 = load double, ptr %22, align 8
  %24 = fdiv double -1.000000e+00, %23
  %25 = sub nsw i32 2000, %7
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %26 = icmp slt i32 %7, 2000
  br i1 %26, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %21
  br label %27

27:                                               ; preds = %.lr.ph, %37
  %.02 = phi i32 [ %7, %.lr.ph ], [ %38, %37 ]
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %12
  %32 = load double, ptr %31, align 8
  br i1 %17, label %33, label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds double, ptr %30, i64 %4
  %35 = load double, ptr %34, align 8
  store double %35, ptr %31, align 8
  store double %32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %27
  call void @daxpy(i32 noundef %25, double noundef %32, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %30, i32 noundef %7, i32 noundef 1)
  br label %37

37:                                               ; preds = %36
  %38 = add nsw i32 %.02, 1
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %27, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %37
  br label %40

40:                                               ; preds = %._crit_edge, %21
  br label %41

41:                                               ; preds = %40, %3
  br label %42

42:                                               ; preds = %41
  %43 = icmp slt i32 %7, 1999
  br i1 %43, label %3, label %44, !llvm.loop !20

44:                                               ; preds = %42
  %45 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %45, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %20
  %.011 = phi i32 [ 0, %3 ], [ %16, %20 ]
  %5 = sext i32 %.011 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = icmp ne i32 %7, %.011
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds double, ptr %2, i64 %5
  %14 = load double, ptr %13, align 8
  store double %14, ptr %9, align 8
  store double %10, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = add nsw i32 %.011, 1
  %17 = sub nsw i32 2000, %16
  %18 = getelementptr inbounds ptr, ptr %0, i64 %5
  %19 = load ptr, ptr %18, align 8
  call void @daxpy(i32 noundef %17, double noundef %10, ptr noundef %19, i32 noundef %16, i32 noundef 1, ptr noundef %2, i32 noundef %16, i32 noundef 1)
  br label %20

20:                                               ; preds = %15
  %21 = icmp slt i32 %16, 1999
  br i1 %21, label %4, label %22, !llvm.loop !21

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %36
  %.02 = phi i32 [ 0, %22 ], [ %24, %36 ]
  %24 = add nsw i32 %.02, 1
  %25 = sub nsw i32 2000, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %28, i64 %26
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %2, i64 %26
  %32 = load double, ptr %31, align 8
  %33 = fdiv double %32, %30
  store double %33, ptr %31, align 8
  %34 = fneg double %33
  %35 = load ptr, ptr %27, align 8
  call void @daxpy(i32 noundef %25, double noundef %34, ptr noundef %35, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %36

36:                                               ; preds = %23
  %37 = icmp slt i32 %24, 2000
  br i1 %37, label %23, label %38, !llvm.loop !22

38:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #6
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.011, 1
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %5, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %12
  br label %15

15:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @malloc(i64 noundef 16000) #7
  br label %18

18:                                               ; preds = %16, %22
  %.122 = phi i32 [ 0, %16 ], [ %23, %22 ]
  %19 = call ptr @malloc(i64 noundef 16008) #7
  %20 = sext i32 %.122 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  store ptr %19, ptr %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %.122, 1
  %24 = icmp slt i32 %23, 2000
  br i1 %24, label %18, label %25, !llvm.loop !24

25:                                               ; preds = %22
  %26 = call ptr @malloc(i64 noundef 16000) #7
  %27 = call ptr @malloc(i64 noundef 16000) #7
  %28 = call ptr @malloc(i64 noundef 8000) #7
  call void @matgen(ptr noundef %17, ptr noundef %26)
  call void @dgefa(ptr noundef %17, ptr noundef %28)
  call void @dgesl(ptr noundef %17, ptr noundef %28, ptr noundef %26)
  call void @free(ptr noundef %28)
  call void @free(ptr noundef %27)
  call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %25, %33
  %.23 = phi i32 [ 0, %25 ], [ %34, %33 ]
  %30 = sext i32 %.23 to i64
  %31 = getelementptr inbounds ptr, ptr %17, i64 %30
  %32 = load ptr, ptr %31, align 8
  call void @free(ptr noundef %32)
  br label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %.23, 1
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %29, label %36, !llvm.loop !25

36:                                               ; preds = %33
  call void @free(ptr noundef %17)
  %37 = icmp ne i8 %.0, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.1, double noundef 0.000000e+00) #6
  br label %44

41:                                               ; preds = %36
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.2, double noundef 0.000000e+00) #6
  br label %44

44:                                               ; preds = %41, %38
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 @fflush(ptr noundef %45)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #3

declare dso_local void @free(ptr noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #4

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal double @random_double() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @seed, align 4
  %14 = sitofp i32 %13 to double
  %15 = fmul double f0x3E00000000200FE1, %14
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret double %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c", directory: "E:/Phase Ordering/v3")
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
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
