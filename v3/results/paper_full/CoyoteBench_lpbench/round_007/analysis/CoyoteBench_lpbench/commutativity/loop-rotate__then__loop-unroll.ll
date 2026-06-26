; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_006\input.ll'
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
  %5 = zext nneg i32 %.04 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = zext nneg i32 %.015 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %8
  store double %4, ptr %9, align 8
  %10 = add nuw nsw i32 %.04, 1
  %11 = icmp samesign ult i32 %10, 2000
  br i1 %11, label %3, label %12, !llvm.loop !7

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.015, 1
  %14 = icmp samesign ult i32 %13, 2000
  br i1 %14, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %15
  br label %.preheader

15:                                               ; preds = %15, %.preheader2
  %.126 = phi i32 [ 0, %.preheader2 ], [ %39, %15 ]
  %16 = zext nneg i32 %.126 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nuw nsw i32 %.126, 1
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %19
  store double 0.000000e+00, ptr %20, align 8
  %21 = add nuw nsw i32 %.126, 2
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %22
  store double 0.000000e+00, ptr %23, align 8
  %24 = add nuw nsw i32 %.126, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %25
  store double 0.000000e+00, ptr %26, align 8
  %27 = add nuw nsw i32 %.126, 4
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %28
  store double 0.000000e+00, ptr %29, align 8
  %30 = add nuw nsw i32 %.126, 5
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = add nuw nsw i32 %.126, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %34
  store double 0.000000e+00, ptr %35, align 8
  %36 = add nuw nsw i32 %.126, 7
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %37
  store double 0.000000e+00, ptr %38, align 8
  %39 = add nuw nsw i32 %.126, 8
  %40 = icmp samesign ult i32 %39, 2000
  br i1 %40, label %15, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %63
  %.18 = phi i32 [ 0, %.preheader1 ], [ %64, %63 ]
  br label %41

41:                                               ; preds = %41, %.preheader
  %.27 = phi i32 [ 0, %.preheader ], [ %61, %41 ]
  %42 = zext nneg i32 %.18 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %42
  %44 = load ptr, ptr %43, align 8
  %45 = zext nneg i32 %.27 to i64
  %46 = getelementptr inbounds nuw [8 x i8], ptr %44, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %45
  %49 = load double, ptr %48, align 8
  %50 = fadd double %49, %47
  store double %50, ptr %48, align 8
  %51 = add nuw nsw i32 %.27, 1
  %52 = zext nneg i32 %.18 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %52
  %54 = load ptr, ptr %53, align 8
  %55 = zext nneg i32 %51 to i64
  %56 = getelementptr inbounds nuw [8 x i8], ptr %54, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %55
  %59 = load double, ptr %58, align 8
  %60 = fadd double %59, %57
  store double %60, ptr %58, align 8
  %61 = add nuw nsw i32 %.27, 2
  %62 = icmp samesign ult i32 %61, 2000
  br i1 %62, label %41, label %63, !llvm.loop !11

63:                                               ; preds = %41
  %64 = add nuw nsw i32 %.18, 1
  %65 = icmp samesign ult i32 %64, 2000
  br i1 %65, label %.preheader, label %66, !llvm.loop !12

66:                                               ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %72, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %72, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %36, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add nsw i32 %3, 1
  %15 = icmp slt i32 1, %0
  br i1 %15, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  %16 = add i32 %0, -1
  %17 = add i32 %0, -2
  %xtraiter = and i32 %16, 1
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = sub i32 %16, %xtraiter
  br label %19

19:                                               ; preds = %19, %.lr.ph.new
  %.25 = phi i32 [ 0, %.lr.ph.new ], [ %.3.1, %19 ]
  %.014 = phi i32 [ %14, %.lr.ph.new ], [ %34, %19 ]
  %.023 = phi i32 [ 1, %.lr.ph.new ], [ %35, %19 ]
  %.042 = phi double [ %13, %.lr.ph.new ], [ %.15.1, %19 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %19 ]
  %20 = add nsw i32 %.014, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.042
  %.15 = select i1 %25, double %24, double %.042
  %.3 = select i1 %25, i32 %.023, i32 %.25
  %26 = add nsw i32 %.014, %3
  %27 = add nuw nsw i32 %.023, 1
  %28 = add nsw i32 %26, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %1, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = call double @llvm.fabs.f64(double %31)
  %33 = fcmp ogt double %32, %.15
  %.15.1 = select i1 %33, double %32, double %.15
  %.3.1 = select i1 %33, i32 %27, i32 %.3
  %34 = add nsw i32 %26, %3
  %35 = add nuw nsw i32 %.023, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %19, label %..loopexit1_crit_edge.unr-lcssa, !llvm.loop !13

36:                                               ; preds = %8
  %37 = sext i32 %2 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %1, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = icmp slt i32 1, %0
  br i1 %41, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %36
  %42 = add i32 %0, -1
  %43 = add i32 %0, -2
  %xtraiter14 = and i32 %42, 1
  %44 = icmp ult i32 %43, 1
  br i1 %44, label %.epil.preheader13, label %.lr.ph9.new

.lr.ph9.new:                                      ; preds = %.lr.ph9
  %unroll_iter18 = sub i32 %42, %xtraiter14
  br label %45

45:                                               ; preds = %45, %.lr.ph9.new
  %.58 = phi i32 [ 0, %.lr.ph9.new ], [ %.6.1, %45 ]
  %.137 = phi i32 [ 1, %.lr.ph9.new ], [ %59, %45 ]
  %.266 = phi double [ %40, %.lr.ph9.new ], [ %.37.1, %45 ]
  %niter19 = phi i32 [ 0, %.lr.ph9.new ], [ %niter19.next.1, %45 ]
  %46 = add nsw i32 %.137, %2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %1, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ogt double %50, %.266
  %.37 = select i1 %51, double %50, double %.266
  %.6 = select i1 %51, i32 %.137, i32 %.58
  %52 = add nuw nsw i32 %.137, 1
  %53 = add nsw i32 %52, %2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %1, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = call double @llvm.fabs.f64(double %56)
  %58 = fcmp ogt double %57, %.37
  %.37.1 = select i1 %58, double %57, double %.37
  %.6.1 = select i1 %58, i32 %52, i32 %.6
  %59 = add nuw nsw i32 %.137, 2
  %niter19.next.1 = add i32 %niter19, 2
  %niter19.ncmp.1 = icmp ne i32 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %45, label %..loopexit_crit_edge.unr-lcssa, !llvm.loop !14

..loopexit_crit_edge.unr-lcssa:                   ; preds = %45
  %split10.ph = phi i32 [ %.6.1, %45 ]
  %.58.unr = phi i32 [ %.6.1, %45 ]
  %.137.unr = phi i32 [ %59, %45 ]
  %.266.unr = phi double [ %.37.1, %45 ]
  %lcmp.mod15 = icmp ne i32 %xtraiter14, 0
  br i1 %lcmp.mod15, label %.epil.preheader13, label %..loopexit_crit_edge

.epil.preheader13:                                ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph9
  %.58.epil.init = phi i32 [ 0, %.lr.ph9 ], [ %.58.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.137.epil.init = phi i32 [ 1, %.lr.ph9 ], [ %.137.unr, %..loopexit_crit_edge.unr-lcssa ]
  %.266.epil.init = phi double [ %40, %.lr.ph9 ], [ %.266.unr, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod17 = icmp ne i32 %xtraiter14, 0
  call void @llvm.assume(i1 %lcmp.mod17)
  br label %..loopexit_crit_edge.epilog-lcssa

..loopexit_crit_edge.epilog-lcssa:                ; preds = %.epil.preheader13
  %60 = add nsw i32 %.137.epil.init, %2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %1, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fabs.f64(double %63)
  %65 = fcmp ogt double %64, %.266.epil.init
  %.6.epil = select i1 %65, i32 %.137.epil.init, i32 %.58.epil.init
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %..loopexit_crit_edge.epilog-lcssa
  %split10 = phi i32 [ %split10.ph, %..loopexit_crit_edge.unr-lcssa ], [ %.6.epil, %..loopexit_crit_edge.epilog-lcssa ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %36
  %.5.lcssa = phi i32 [ %split10, %..loopexit_crit_edge ], [ 0, %36 ]
  br label %72

..loopexit1_crit_edge.unr-lcssa:                  ; preds = %19
  %split.ph = phi i32 [ %.3.1, %19 ]
  %.25.unr = phi i32 [ %.3.1, %19 ]
  %.014.unr = phi i32 [ %34, %19 ]
  %.023.unr = phi i32 [ %35, %19 ]
  %.042.unr = phi double [ %.15.1, %19 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..loopexit1_crit_edge

.epil.preheader:                                  ; preds = %..loopexit1_crit_edge.unr-lcssa, %.lr.ph
  %.25.epil.init = phi i32 [ 0, %.lr.ph ], [ %.25.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %.014.epil.init = phi i32 [ %14, %.lr.ph ], [ %.014.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %.023.epil.init = phi i32 [ 1, %.lr.ph ], [ %.023.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %.042.epil.init = phi double [ %13, %.lr.ph ], [ %.042.unr, %..loopexit1_crit_edge.unr-lcssa ]
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod12)
  br label %..loopexit1_crit_edge.epilog-lcssa

..loopexit1_crit_edge.epilog-lcssa:               ; preds = %.epil.preheader
  %66 = add nsw i32 %.014.epil.init, %2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %1, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = call double @llvm.fabs.f64(double %69)
  %71 = fcmp ogt double %70, %.042.epil.init
  %.3.epil = select i1 %71, i32 %.023.epil.init, i32 %.25.epil.init
  br label %..loopexit1_crit_edge

..loopexit1_crit_edge:                            ; preds = %..loopexit1_crit_edge.unr-lcssa, %..loopexit1_crit_edge.epilog-lcssa
  %split = phi i32 [ %split.ph, %..loopexit1_crit_edge.unr-lcssa ], [ %.3.epil, %..loopexit1_crit_edge.epilog-lcssa ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  %.2.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %9 ]
  br label %72

72:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader, label %11

.preheader:                                       ; preds = %7
  %8 = icmp slt i32 0, %0
  br i1 %8, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %.preheader
  %9 = add i32 %0, -1
  %xtraiter = and i32 %0, 1
  %10 = icmp ult i32 %9, 1
  br i1 %10, label %.epil.preheader, label %.lr.ph4.new

.lr.ph4.new:                                      ; preds = %.lr.ph4
  %unroll_iter = sub i32 %0, %xtraiter
  br label %22

11:                                               ; preds = %7
  %12 = mul nsw i32 %0, %4
  %13 = icmp slt i32 0, %12
  br i1 %13, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %11
  br label %14

14:                                               ; preds = %.lr.ph, %14
  %.02 = phi i32 [ 0, %.lr.ph ], [ %20, %14 ]
  %15 = add nsw i32 %.02, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  %20 = add nsw i32 %.02, %4
  %21 = icmp slt i32 %20, %12
  br i1 %21, label %14, label %..loopexit1_crit_edge, !llvm.loop !15

22:                                               ; preds = %22, %.lr.ph4.new
  %.13 = phi i32 [ 0, %.lr.ph4.new ], [ %34, %22 ]
  %niter = phi i32 [ 0, %.lr.ph4.new ], [ %niter.next.1, %22 ]
  %23 = add nsw i32 %.13, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %28 = add nuw nsw i32 %.13, 1
  %29 = add nsw i32 %28, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %2, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = fmul double %32, %1
  store double %33, ptr %31, align 8
  %34 = add nuw nsw i32 %.13, 2
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp ne i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %22, label %..loopexit_crit_edge.unr-lcssa, !llvm.loop !16

..loopexit_crit_edge.unr-lcssa:                   ; preds = %22
  %.13.unr = phi i32 [ %34, %22 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %..loopexit_crit_edge

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph4
  %.13.epil.init = phi i32 [ 0, %.lr.ph4 ], [ %.13.unr, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod5 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %..loopexit_crit_edge.epilog-lcssa

..loopexit_crit_edge.epilog-lcssa:                ; preds = %.epil.preheader
  %35 = add nsw i32 %.13.epil.init, %3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %2, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = fmul double %38, %1
  store double %39, ptr %37, align 8
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %..loopexit_crit_edge.epilog-lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %40

..loopexit1_crit_edge:                            ; preds = %14
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %11
  br label %40

40:                                               ; preds = %.loopexit1, %.loopexit, %5
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
  %29 = getelementptr inbounds [8 x i8], ptr %2, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = add nsw i32 %.15, %6
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %5, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %1, double %30, double %34)
  store double %35, ptr %33, align 8
  %36 = add nsw i32 %.124, %4
  %37 = add nsw i32 %.15, %7
  %38 = add nsw i32 %36, %3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %2, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = add nsw i32 %37, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %41, double %45)
  store double %46, ptr %44, align 8
  %47 = add nsw i32 %36, %4
  %48 = add nsw i32 %37, %7
  %49 = add nuw nsw i32 %.033, 2
  %niter13.next.1 = add i32 %niter13, 2
  %niter13.ncmp.1 = icmp ne i32 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %26, label %..loopexit_crit_edge.unr-lcssa, !llvm.loop !17

50:                                               ; preds = %50, %.lr.ph.new
  %.142 = phi i32 [ 0, %.lr.ph.new ], [ %70, %50 ]
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %50 ]
  %51 = add nsw i32 %.142, %3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %2, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = add nsw i32 %.142, %6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %5, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %1, double %54, double %58)
  store double %59, ptr %57, align 8
  %60 = add nuw nsw i32 %.142, 1
  %61 = add nsw i32 %60, %3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %2, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = add nsw i32 %60, %6
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %5, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fmuladd.f64(double %1, double %64, double %68)
  store double %69, ptr %67, align 8
  %70 = add nuw nsw i32 %.142, 2
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
  %73 = getelementptr inbounds [8 x i8], ptr %2, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = add nsw i32 %.15.epil.init, %6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %5, i64 %76
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
  %82 = getelementptr inbounds [8 x i8], ptr %2, i64 %81
  %83 = load double, ptr %82, align 8
  %84 = add nsw i32 %.142.epil.init, %6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x i8], ptr %5, i64 %85
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

3:                                                ; preds = %2, %37
  %.014 = phi i32 [ 0, %2 ], [ %7, %37 ]
  %4 = zext nneg i32 %.014 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nuw nsw i32 %.014, 1
  %8 = sub nuw nsw i32 2000, %.014
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.014, i32 noundef 1)
  %10 = add nsw i32 %9, %.014
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %6, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %16
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %19 = load double, ptr %18, align 8
  store double %19, ptr %13, align 8
  store double %14, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %._crit_edge
  %21 = phi double [ %.pre, %._crit_edge ], [ %14, %17 ]
  %22 = fdiv double -1.000000e+00, %21
  %23 = sub nsw i32 1999, %.014
  call void @dscal(i32 noundef %23, double noundef %22, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %24 = icmp samesign ult i32 %7, 2000
  br i1 %24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph, %34
  %.02 = phi i32 [ %7, %.lr.ph ], [ %35, %34 ]
  %26 = zext nneg i32 %.02 to i64
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %12
  %30 = load double, ptr %29, align 8
  br i1 %.not, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %4
  %33 = load double, ptr %32, align 8
  store double %33, ptr %29, align 8
  store double %30, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %25
  call void @daxpy(i32 noundef %23, double noundef %30, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %28, i32 noundef %7, i32 noundef 1)
  %35 = add nuw nsw i32 %.02, 1
  %36 = icmp samesign ult i32 %35, 2000
  br i1 %36, label %25, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %34
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %20
  br label %37

37:                                               ; preds = %.loopexit, %3
  %38 = icmp samesign ult i32 %7, 1999
  br i1 %38, label %3, label %39, !llvm.loop !20

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %40, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %14
  br label %20

4:                                                ; preds = %3, %14
  %.011 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %5 = zext nneg i32 %.011 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %.not = icmp eq i32 %7, %.011
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %5
  %13 = load double, ptr %12, align 8
  store double %13, ptr %9, align 8
  store double %10, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = add nuw nsw i32 %.011, 1
  %16 = sub nsw i32 1999, %.011
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %18 = load ptr, ptr %17, align 8
  call void @daxpy(i32 noundef %16, double noundef %10, ptr noundef %18, i32 noundef %15, i32 noundef 1, ptr noundef %2, i32 noundef %15, i32 noundef 1)
  %19 = icmp samesign ult i32 %15, 1999
  br i1 %19, label %4, label %.preheader, !llvm.loop !21

20:                                               ; preds = %.preheader, %20
  %.02 = phi i32 [ 0, %.preheader ], [ %21, %20 ]
  %21 = add nuw nsw i32 %.02, 1
  %22 = sub nuw nsw i32 1999, %.02
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %23
  %29 = load double, ptr %28, align 8
  %30 = fdiv double %29, %27
  store double %30, ptr %28, align 8
  %31 = fneg double %30
  %32 = load ptr, ptr %24, align 8
  call void @daxpy(i32 noundef %22, double noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %33 = icmp samesign ult i32 %21, 2000
  br i1 %33, label %20, label %34, !llvm.loop !22

34:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %10, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !23

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #6
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %7
  %.not1.ph = phi i1 [ false, %7 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #7
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %14 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #7
  %15 = zext nneg i32 %.122 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %15
  store ptr %14, ptr %16, align 8
  %17 = add nuw nsw i32 %.122, 1
  %18 = icmp samesign ult i32 %17, 2000
  br i1 %18, label %13, label %19, !llvm.loop !24

19:                                               ; preds = %13
  %20 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #7
  %21 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #7
  %22 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #7
  call void @matgen(ptr noundef %12, ptr noundef %20)
  call void @dgefa(ptr noundef %12, ptr noundef %22)
  call void @dgesl(ptr noundef %12, ptr noundef %22, ptr noundef %20)
  call void @free(ptr noundef %22) #6
  call void @free(ptr noundef %21) #6
  call void @free(ptr noundef %20) #6
  br label %23

23:                                               ; preds = %19, %23
  %.23 = phi i32 [ 0, %19 ], [ %27, %23 ]
  %24 = zext nneg i32 %.23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26) #6
  %27 = add nuw nsw i32 %.23, 1
  %28 = icmp samesign ult i32 %27, 2000
  br i1 %28, label %23, label %29, !llvm.loop !25

29:                                               ; preds = %23
  call void @free(ptr noundef %12) #6
  br i1 %.not1, label %33, label %30

30:                                               ; preds = %29
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #6
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #6
  br label %36

33:                                               ; preds = %29
  %34 = call ptr @__acrt_iob_func(i32 noundef 1) #6
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #6
  br label %36

36:                                               ; preds = %33, %30
  %37 = call ptr @__acrt_iob_func(i32 noundef 1) #6
  %38 = call i32 @fflush(ptr noundef %37) #6
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
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = sitofp i32 %11 to double
  %13 = fmul nnan double %12, f0x3E00000000200FE1
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret double %13
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
attributes #7 = { nounwind allocsize(0) }

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
