; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_001\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %0, ptr noundef %1) #0 {
  br label %.preheader3

.preheader3:                                      ; preds = %2, %12
  %.015 = phi i32 [ 0, %2 ], [ %13, %12 ]
  br label %3

.preheader2:                                      ; preds = %12
  br label %15

3:                                                ; preds = %.preheader3, %3
  %.04 = phi i32 [ 0, %.preheader3 ], [ %10, %3 ]
  %4 = call double @random_double()
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = sext i32 %.015 to i64
  %9 = getelementptr inbounds double, ptr %7, i64 %8
  store double %4, ptr %9, align 8
  %10 = add nsw i32 %.04, 1
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %3, label %12, !llvm.loop !7

12:                                               ; preds = %3
  %13 = add nsw i32 %.015, 1
  %14 = icmp slt i32 %13, 2000
  br i1 %14, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %15
  br label %.preheader

15:                                               ; preds = %15, %.preheader2
  %.126 = phi i32 [ 0, %.preheader2 ], [ %30, %15 ]
  %16 = sext i32 %.126 to i64
  %17 = getelementptr inbounds double, ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nuw nsw i32 %.126, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %1, i64 %19
  store double 0.000000e+00, ptr %20, align 8
  %21 = add nuw nsw i32 %.126, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  store double 0.000000e+00, ptr %23, align 8
  %24 = add nuw nsw i32 %.126, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %1, i64 %25
  store double 0.000000e+00, ptr %26, align 8
  %27 = add nuw nsw i32 %.126, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  store double 0.000000e+00, ptr %29, align 8
  %30 = add nuw nsw i32 %.126, 5
  %31 = icmp samesign ult i32 %30, 2000
  br i1 %31, label %15, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %54
  %.18 = phi i32 [ 0, %.preheader1 ], [ %55, %54 ]
  br label %32

32:                                               ; preds = %32, %.preheader
  %.27 = phi i32 [ 0, %.preheader ], [ %52, %32 ]
  %33 = sext i32 %.18 to i64
  %34 = getelementptr inbounds ptr, ptr %0, i64 %33
  %35 = load ptr, ptr %34, align 8
  %36 = sext i32 %.27 to i64
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = getelementptr inbounds double, ptr %1, i64 %36
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, %38
  store double %41, ptr %39, align 8
  %42 = add nuw nsw i32 %.27, 1
  %43 = sext i32 %.18 to i64
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds double, ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %1, i64 %46
  %50 = load double, ptr %49, align 8
  %51 = fadd double %50, %48
  store double %51, ptr %49, align 8
  %52 = add nuw nsw i32 %.27, 2
  %53 = icmp samesign ult i32 %52, 2000
  br i1 %53, label %32, label %54, !llvm.loop !11

54:                                               ; preds = %32
  %55 = add nsw i32 %.18, 1
  %56 = icmp slt i32 %55, 2000
  br i1 %56, label %.preheader, label %57, !llvm.loop !12

57:                                               ; preds = %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %73, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %73, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %37

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add nsw i32 1, %3
  %16 = icmp slt i32 1, %0
  br i1 %16, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %10
  %17 = add i32 %0, -1
  %18 = add i32 %0, -2
  %xtraiter14 = and i32 %17, 1
  %19 = icmp ult i32 %18, 1
  br i1 %19, label %.epil.preheader13, label %.lr.ph9.new

.lr.ph9.new:                                      ; preds = %.lr.ph9
  %unroll_iter18 = sub i32 %17, %xtraiter14
  br label %20

20:                                               ; preds = %20, %.lr.ph9.new
  %.28 = phi i32 [ 0, %.lr.ph9.new ], [ %.3.1, %20 ]
  %.017 = phi i32 [ %15, %.lr.ph9.new ], [ %35, %20 ]
  %.026 = phi i32 [ 1, %.lr.ph9.new ], [ %36, %20 ]
  %.045 = phi double [ %14, %.lr.ph9.new ], [ %.15.1, %20 ]
  %niter19 = phi i32 [ 0, %.lr.ph9.new ], [ %niter19.next.1, %20 ]
  %21 = add nsw i32 %.017, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.045
  %.15 = select i1 %26, double %25, double %.045
  %.3 = select i1 %26, i32 %.026, i32 %.28
  %27 = add nsw i32 %.017, %3
  %28 = add nsw i32 %.026, 1
  %29 = add nsw i32 %27, %2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %1, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fcmp ogt double %33, %.15
  %.15.1 = select i1 %34, double %33, double %.15
  %.3.1 = select i1 %34, i32 %28, i32 %.3
  %35 = add nsw i32 %27, %3
  %36 = add nsw i32 %.026, 2
  %niter19.next.1 = add i32 %niter19, 2
  %niter19.ncmp.1 = icmp ne i32 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %20, label %..loopexit_crit_edge.unr-lcssa, !llvm.loop !13

37:                                               ; preds = %8
  %38 = sext i32 %2 to i64
  %39 = getelementptr inbounds double, ptr %1, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  %42 = icmp slt i32 1, %0
  br i1 %42, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %37
  %43 = add i32 %0, -1
  %44 = add i32 %0, -2
  %xtraiter = and i32 %43, 1
  %45 = icmp ult i32 %44, 1
  br i1 %45, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %43, %xtraiter
  br label %46

46:                                               ; preds = %46, %.lr.ph.new
  %.54 = phi i32 [ 0, %.lr.ph.new ], [ %.6.1, %46 ]
  %.133 = phi i32 [ 1, %.lr.ph.new ], [ %60, %46 ]
  %.262 = phi double [ %41, %.lr.ph.new ], [ %.37.1, %46 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %46 ]
  %47 = add nsw i32 %.133, %2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  %52 = fcmp ogt double %51, %.262
  %.37 = select i1 %52, double %51, double %.262
  %.6 = select i1 %52, i32 %.133, i32 %.54
  %53 = add nsw i32 %.133, 1
  %54 = add nsw i32 %53, %2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %1, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fabs.f64(double %57)
  %59 = fcmp ogt double %58, %.37
  %.37.1 = select i1 %59, double %58, double %.37
  %.6.1 = select i1 %59, i32 %53, i32 %.6
  %60 = add nsw i32 %.133, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %46, label %..loopexit1_crit_edge.unr-lcssa, !llvm.loop !14

..loopexit_crit_edge.unr-lcssa:                   ; preds = %20
  %split10.ph = phi i32 [ %.3.1, %20 ]
  %.28.unr = phi i32 [ %.3.1, %20 ]
  %.017.unr = phi i32 [ %35, %20 ]
  %.026.unr = phi i32 [ %36, %20 ]
  %.045.unr = phi double [ %.15.1, %20 ]
  %lcmp.mod15 = icmp ne i32 %xtraiter14, 0
  br i1 %lcmp.mod15, label %.epil.preheader13, label %..loopexit_crit_edge

.epil.preheader13:                                ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph9
  %.28.epil.init = phi i32 [ 0, %.lr.ph9 ], [ %.28.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.017.epil.init = phi i32 [ %15, %.lr.ph9 ], [ %.017.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.026.epil.init = phi i32 [ 1, %.lr.ph9 ], [ %.026.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.045.epil.init = phi double [ %14, %.lr.ph9 ], [ %.045.unr, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod17 = icmp ne i32 %xtraiter14, 0
  call void @llvm.assume(i1 %lcmp.mod17)
  br label %..loopexit_crit_edge.epilog-lcssa

..loopexit_crit_edge.epilog-lcssa:                ; preds = %.epil.preheader13
  %61 = add nsw i32 %.017.epil.init, %2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %1, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  %66 = fcmp ogt double %65, %.045.epil.init
  %.3.epil = select i1 %66, i32 %.026.epil.init, i32 %.28.epil.init
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %..loopexit_crit_edge.epilog-lcssa
  %split10 = phi i32 [ %split10.ph, %..loopexit_crit_edge.unr-lcssa ], [ %.3.epil, %..loopexit_crit_edge.epilog-lcssa ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  %.2.lcssa = phi i32 [ %split10, %..loopexit_crit_edge ], [ 0, %10 ]
  br label %73

..loopexit1_crit_edge.unr-lcssa:                  ; preds = %46
  %split.ph = phi i32 [ %.6.1, %46 ]
  %.54.unr = phi i32 [ %.6.1, %46 ]
  %.133.unr = phi i32 [ %60, %46 ]
  %.262.unr = phi double [ %.37.1, %46 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..loopexit1_crit_edge

.epil.preheader:                                  ; preds = %..loopexit1_crit_edge.unr-lcssa, %.lr.ph
  %.54.epil.init = phi i32 [ 0, %.lr.ph ], [ %.54.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %.133.epil.init = phi i32 [ 1, %.lr.ph ], [ %.133.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %.262.epil.init = phi double [ %41, %.lr.ph ], [ %.262.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod12)
  br label %..loopexit1_crit_edge.epilog-lcssa

..loopexit1_crit_edge.epilog-lcssa:               ; preds = %.epil.preheader
  %67 = add nsw i32 %.133.epil.init, %2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, ptr %1, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = call double @llvm.fabs.f64(double %70)
  %72 = fcmp ogt double %71, %.262.epil.init
  %.6.epil = select i1 %72, i32 %.133.epil.init, i32 %.54.epil.init
  br label %..loopexit1_crit_edge

..loopexit1_crit_edge:                            ; preds = %..loopexit1_crit_edge.unr-lcssa, %..loopexit1_crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %..loopexit1_crit_edge.unr-lcssa ], [ %.6.epil, %..loopexit1_crit_edge.epilog-lcssa ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %37
  %.5.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %37 ]
  br label %73

73:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.2.lcssa, %.loopexit ], [ %.5.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %12, label %.preheader

.preheader:                                       ; preds = %7
  %9 = icmp slt i32 0, %0
  br i1 %9, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %.preheader
  %10 = add i32 %0, -1
  %xtraiter = and i32 %0, 1
  %11 = icmp ult i32 %10, 1
  br i1 %11, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %0, %xtraiter
  br label %23

12:                                               ; preds = %7
  %13 = mul nsw i32 %0, %4
  %14 = icmp slt i32 0, %13
  br i1 %14, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %12
  br label %15

15:                                               ; preds = %.lr.ph4, %15
  %.03 = phi i32 [ 0, %.lr.ph4 ], [ %21, %15 ]
  %16 = add nsw i32 %.03, %3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  %21 = add nsw i32 %.03, %4
  %22 = icmp slt i32 %21, %13
  br i1 %22, label %15, label %..loopexit_crit_edge, !llvm.loop !15

23:                                               ; preds = %23, %.lr.ph.new
  %.12 = phi i32 [ 0, %.lr.ph.new ], [ %35, %23 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %23 ]
  %24 = add nsw i32 %.12, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %2, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fmul double %27, %1
  store double %28, ptr %26, align 8
  %29 = add nuw nsw i32 %.12, 1
  %30 = add nsw i32 %29, %3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %2, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fmul double %33, %1
  store double %34, ptr %32, align 8
  %35 = add nsw i32 %.12, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %23, label %..loopexit1_crit_edge.unr-lcssa, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %15
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %12
  br label %41

..loopexit1_crit_edge.unr-lcssa:                  ; preds = %23
  %.12.unr = phi i32 [ %35, %23 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..loopexit1_crit_edge

.epil.preheader:                                  ; preds = %..loopexit1_crit_edge.unr-lcssa, %.lr.ph
  %.12.epil.init = phi i32 [ 0, %.lr.ph ], [ %.12.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %..loopexit1_crit_edge.epilog-lcssa

..loopexit1_crit_edge.epilog-lcssa:               ; preds = %.epil.preheader
  %36 = add nsw i32 %.12.epil.init, %3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %2, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = fmul double %39, %1
  store double %40, ptr %38, align 8
  br label %..loopexit1_crit_edge

..loopexit1_crit_edge:                            ; preds = %..loopexit1_crit_edge.unr-lcssa, %..loopexit1_crit_edge.epilog-lcssa
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %.preheader
  br label %41

41:                                               ; preds = %.loopexit1, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %89

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %17, label %.preheader

.preheader:                                       ; preds = %11
  %14 = icmp slt i32 0, %0
  br i1 %14, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %.preheader
  %15 = add i32 %0, -1
  %xtraiter = and i32 %0, 1
  %16 = icmp ult i32 %15, 1
  br i1 %16, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %0, %xtraiter
  br label %50

17:                                               ; preds = %11
  %18 = icmp slt i32 %4, 0
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  %.01 = select i1 %18, i32 %20, i32 0
  %21 = icmp slt i32 %7, 0
  %22 = mul nsw i32 %19, %7
  %.0 = select i1 %21, i32 %22, i32 0
  %23 = icmp slt i32 0, %0
  br i1 %23, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %17
  %24 = add i32 %0, -1
  %xtraiter9 = and i32 %0, 1
  %25 = icmp ult i32 %24, 1
  br i1 %25, label %.epil.preheader8, label %.lr.ph6.new

.lr.ph6.new:                                      ; preds = %.lr.ph6
  %unroll_iter12 = sub i32 %0, %xtraiter9
  br label %26

26:                                               ; preds = %26, %.lr.ph6.new
  %.15 = phi i32 [ %.0, %.lr.ph6.new ], [ %48, %26 ]
  %.124 = phi i32 [ %.01, %.lr.ph6.new ], [ %47, %26 ]
  %.033 = phi i32 [ 0, %.lr.ph6.new ], [ %49, %26 ]
  %niter13 = phi i32 [ 0, %.lr.ph6.new ], [ %niter13.next.1, %26 ]
  %27 = add nsw i32 %.124, %3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %2, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = add nsw i32 %.15, %6
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %5, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %1, double %30, double %34)
  store double %35, ptr %33, align 8
  %36 = add nsw i32 %.124, %4
  %37 = add nsw i32 %.15, %7
  %38 = add nsw i32 %36, %3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %2, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = add nsw i32 %37, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %41, double %45)
  store double %46, ptr %44, align 8
  %47 = add nsw i32 %36, %4
  %48 = add nsw i32 %37, %7
  %49 = add nsw i32 %.033, 2
  %niter13.next.1 = add i32 %niter13, 2
  %niter13.ncmp.1 = icmp ne i32 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %26, label %..loopexit_crit_edge.unr-lcssa, !llvm.loop !17

50:                                               ; preds = %50, %.lr.ph.new
  %.142 = phi i32 [ 0, %.lr.ph.new ], [ %70, %50 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %50 ]
  %51 = add nsw i32 %.142, %3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %2, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = add nsw i32 %.142, %6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %5, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %1, double %54, double %58)
  store double %59, ptr %57, align 8
  %60 = add nuw nsw i32 %.142, 1
  %61 = add nsw i32 %60, %3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %2, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = add nsw i32 %60, %6
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %5, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fmuladd.f64(double %1, double %64, double %68)
  store double %69, ptr %67, align 8
  %70 = add nsw i32 %.142, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %50, label %..loopexit1_crit_edge.unr-lcssa, !llvm.loop !18

..loopexit_crit_edge.unr-lcssa:                   ; preds = %26
  %.15.unr = phi i32 [ %48, %26 ]
  %.124.unr = phi i32 [ %47, %26 ]
  %lcmp.mod10 = icmp ne i32 %xtraiter9, 0
  br i1 %lcmp.mod10, label %.epil.preheader8, label %..loopexit_crit_edge

.epil.preheader8:                                 ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph6
  %.15.epil.init = phi i32 [ %.0, %.lr.ph6 ], [ %.15.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.124.epil.init = phi i32 [ %.01, %.lr.ph6 ], [ %.124.unr, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod11 = icmp ne i32 %xtraiter9, 0
  call void @llvm.assume(i1 %lcmp.mod11)
  br label %..loopexit_crit_edge.epilog-lcssa

..loopexit_crit_edge.epilog-lcssa:                ; preds = %.epil.preheader8
  %71 = add nsw i32 %.124.epil.init, %3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %2, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = add nsw i32 %.15.epil.init, %6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %5, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = call double @llvm.fmuladd.f64(double %1, double %74, double %78)
  store double %79, ptr %77, align 8
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %..loopexit_crit_edge.epilog-lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %17
  br label %89

..loopexit1_crit_edge.unr-lcssa:                  ; preds = %50
  %.142.unr = phi i32 [ %70, %50 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..loopexit1_crit_edge

.epil.preheader:                                  ; preds = %..loopexit1_crit_edge.unr-lcssa, %.lr.ph
  %.142.epil.init = phi i32 [ 0, %.lr.ph ], [ %.142.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %lcmp.mod7 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7)
  br label %..loopexit1_crit_edge.epilog-lcssa

..loopexit1_crit_edge.epilog-lcssa:               ; preds = %.epil.preheader
  %80 = add nsw i32 %.142.epil.init, %3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, ptr %2, i64 %81
  %83 = load double, ptr %82, align 8
  %84 = add nsw i32 %.142.epil.init, %6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %5, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = call double @llvm.fmuladd.f64(double %1, double %83, double %87)
  store double %88, ptr %86, align 8
  br label %..loopexit1_crit_edge

..loopexit1_crit_edge:                            ; preds = %..loopexit1_crit_edge.unr-lcssa, %..loopexit1_crit_edge.epilog-lcssa
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %.preheader
  br label %89

89:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %39
  %.013 = phi i32 [ 0, %2 ], [ %7, %39 ]
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
  br i1 %15, label %16, label %39

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
  br i1 %26, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %21
  br label %27

27:                                               ; preds = %.lr.ph, %36
  %.02 = phi i32 [ %7, %.lr.ph ], [ %37, %36 ]
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
  %37 = add nsw i32 %.02, 1
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %27, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %36
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %21
  br label %39

39:                                               ; preds = %.loopexit, %3
  %40 = icmp slt i32 %7, 1999
  br i1 %40, label %3, label %41, !llvm.loop !20

41:                                               ; preds = %39
  %42 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %42, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %15
  br label %21

4:                                                ; preds = %3, %15
  %.011 = phi i32 [ 0, %3 ], [ %16, %15 ]
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
  %20 = icmp slt i32 %16, 1999
  br i1 %20, label %4, label %.preheader, !llvm.loop !21

21:                                               ; preds = %.preheader, %21
  %.02 = phi i32 [ 0, %.preheader ], [ %22, %21 ]
  %22 = add nsw i32 %.02, 1
  %23 = sub nsw i32 2000, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %26, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %2, i64 %24
  %30 = load double, ptr %29, align 8
  %31 = fdiv double %30, %28
  store double %31, ptr %29, align 8
  %32 = fneg double %31
  %33 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %34 = icmp slt i32 %22, 2000
  br i1 %34, label %21, label %35, !llvm.loop !22

35:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !23

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #6
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @malloc(i64 noundef 16000) #7
  br label %14

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %18, %14 ]
  %15 = call ptr @malloc(i64 noundef 16008) #7
  %16 = sext i32 %.122 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %15, ptr %17, align 8
  %18 = add nsw i32 %.122, 1
  %19 = icmp slt i32 %18, 2000
  br i1 %19, label %14, label %20, !llvm.loop !24

20:                                               ; preds = %14
  %21 = call ptr @malloc(i64 noundef 16000) #7
  %22 = call ptr @malloc(i64 noundef 16000) #7
  %23 = call ptr @malloc(i64 noundef 8000) #7
  call void @matgen(ptr noundef %13, ptr noundef %21)
  call void @dgefa(ptr noundef %13, ptr noundef %23)
  call void @dgesl(ptr noundef %13, ptr noundef %23, ptr noundef %21)
  call void @free(ptr noundef %23)
  call void @free(ptr noundef %22)
  call void @free(ptr noundef %21)
  br label %24

24:                                               ; preds = %20, %24
  %.23 = phi i32 [ 0, %20 ], [ %28, %24 ]
  %25 = sext i32 %.23 to i64
  %26 = getelementptr inbounds ptr, ptr %13, i64 %25
  %27 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %27)
  %28 = add nsw i32 %.23, 1
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %24, label %30, !llvm.loop !25

30:                                               ; preds = %24
  call void @free(ptr noundef %13)
  %31 = icmp ne i8 %.0, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = call ptr @__acrt_iob_func(i32 noundef 1)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1, double noundef 0.000000e+00) #6
  br label %38

35:                                               ; preds = %30
  %36 = call ptr @__acrt_iob_func(i32 noundef 1)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, double noundef 0.000000e+00) #6
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 @fflush(ptr noundef %39)
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
