; ModuleID = 'results\paper_full\Misc_flops\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double f0xBFC5555555559705, align 8
@A2 = dso_local global double f0x3F811111113AE9A3, align 8
@A3 = dso_local global double f0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double f0x3EC71DF284AA3566, align 8
@A5 = dso_local global double f0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double f0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double f0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double f0x3FA5555555290224, align 8
@B3 = dso_local global double f0xBF56C16BFFE76516, align 8
@B4 = dso_local global double f0x3EFA019528242DB7, align 8
@B5 = dso_local global double f0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double f0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double f0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double f0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double f0x3FC555587C476915, align 8
@C4 = dso_local global double f0x3FA5555B7E795548, align 8
@C5 = dso_local global double f0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double f0x3F5713187EDB8C05, align 8
@C7 = dso_local global double f0x3F26C077C8173F3A, align 8
@C8 = dso_local global double f0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double f0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double f0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@T = dso_local global [36 x double] zeroinitializer, align 16
@TLimit = dso_local global double 0.000000e+00, align 8
@piref = dso_local global double 0.000000e+00, align 8
@one = dso_local global double 0.000000e+00, align 8
@two = dso_local global double 0.000000e+00, align 8
@three = dso_local global double 0.000000e+00, align 8
@four = dso_local global double 0.000000e+00, align 8
@five = dso_local global double 0.000000e+00, align 8
@scale = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@sa = dso_local global double 0.000000e+00, align 8
@nulltime = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"   Iterations      = %10ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00", align 1
@sd = dso_local global double 0.000000e+00, align 8
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.1 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.2 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %puts1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %1 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %2 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  %3 = load double, ptr @TLimit, align 8
  %4 = fcmp olt double 0.000000e+00, %3
  br i1 %4, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %0
  br label %12

5:                                                ; preds = %38
  %6 = phi double [ %.lcssa10, %38 ]
  %7 = phi double [ %17, %38 ]
  %8 = phi i32 [ %14, %38 ]
  %9 = phi double [ %40, %38 ]
  %10 = load double, ptr @TLimit, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %..loopexit_crit_edge, !llvm.loop !7

12:                                               ; preds = %.lr.ph20, %5
  %13 = phi i32 [ 15625, %.lr.ph20 ], [ %8, %5 ]
  %14 = shl nsw i32 %13, 1
  %15 = load double, ptr @one, align 8
  %16 = sitofp i32 %14 to double
  %17 = fdiv double %15, %16
  %18 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not18 = icmp slt i32 1, %14
  br i1 %.not.not18, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph, %19
  %20 = phi i32 [ 1, %.lr.ph ], [ %37, %19 ]
  %21 = phi double [ 0.000000e+00, %.lr.ph ], [ %36, %19 ]
  %22 = phi double [ 0.000000e+00, %.lr.ph ], [ %23, %19 ]
  %23 = fadd double %22, %15
  %24 = fmul double %23, %17
  %25 = load double, ptr @D1, align 8
  %26 = load double, ptr @D2, align 8
  %27 = load double, ptr @D3, align 8
  %28 = call double @llvm.fmuladd.f64(double %24, double %27, double %26)
  %29 = call double @llvm.fmuladd.f64(double %24, double %28, double %25)
  %30 = load double, ptr @E2, align 8
  %31 = load double, ptr @E3, align 8
  %32 = call double @llvm.fmuladd.f64(double %24, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %24, double %32, double %25)
  %34 = call double @llvm.fmuladd.f64(double %24, double %33, double %15)
  %35 = fdiv double %29, %34
  %36 = fadd double %21, %35
  %37 = add nuw nsw i32 %20, 1
  %.not.not = icmp slt i32 %37, %14
  br i1 %.not.not, label %19, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  %split = phi double [ %36, %19 ]
  br label %38

38:                                               ; preds = %._crit_edge, %12
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %12 ]
  %39 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %40 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %40, ptr @sa, align 8
  %41 = icmp eq i32 %13, 256000000
  br i1 %41, label %42, label %5

42:                                               ; preds = %38
  %.lcssa17 = phi double [ %17, %38 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %38 ]
  br label %43

..loopexit_crit_edge:                             ; preds = %5
  %split21 = phi double [ %6, %5 ]
  %split22 = phi double [ %7, %5 ]
  %split23 = phi i32 [ %8, %5 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %split22, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %split23, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %43

43:                                               ; preds = %.loopexit, %42
  %44 = phi double [ %.lcssa10.lcssa, %42 ], [ %.lcssa15, %.loopexit ]
  %45 = phi double [ %.lcssa17, %42 ], [ %.lcssa13, %.loopexit ]
  %46 = phi i32 [ 512000000, %42 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %47 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %46, i32 1)
  %48 = add nsw i32 %smax, -1
  %xtraiter = and i32 %smax, 7
  %49 = icmp ult i32 %48, 7
  br i1 %49, label %.epil.preheader, label %.new

.new:                                             ; preds = %43
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %50

50:                                               ; preds = %50, %.new
  %51 = phi i32 [ 1, %.new ], [ %52, %50 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %50 ]
  %52 = add nuw nsw i32 %51, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %50, label %.unr-lcssa, !llvm.loop !10

.unr-lcssa:                                       ; preds = %50
  %.unr = phi i32 [ %52, %50 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %56

.epil.preheader:                                  ; preds = %.unr-lcssa, %43
  %.epil.init = phi i32 [ 1, %43 ], [ %.unr, %.unr-lcssa ]
  %lcmp.mod66 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %53

53:                                               ; preds = %53, %.epil.preheader
  %54 = phi i32 [ %55, %53 ], [ %.epil.init, %.epil.preheader ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %53 ]
  %.not.not3.epil = icmp slt i32 %54, %46
  %55 = add nuw nsw i32 %54, 1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %53, label %.epilog-lcssa, !llvm.loop !11

.epilog-lcssa:                                    ; preds = %53
  br label %56

56:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %57 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %58 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %59 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %60 = fmul double %58, %59
  %61 = fcmp olt double %60, 0.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi double [ 0.000000e+00, %62 ], [ %60, %56 ]
  store double %64, ptr @nulltime, align 8
  %65 = load double, ptr @sa, align 8
  %66 = fneg double %64
  %67 = call double @llvm.fmuladd.f64(double %58, double %65, double %66)
  store double %67, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %68 = load double, ptr @D1, align 8
  %69 = load double, ptr @D2, align 8
  %70 = fadd double %68, %69
  %71 = load double, ptr @D3, align 8
  %72 = fadd double %70, %71
  %73 = load double, ptr @one, align 8
  %74 = fadd double %73, %68
  %75 = load double, ptr @E2, align 8
  %76 = fadd double %74, %75
  %77 = load double, ptr @E3, align 8
  %78 = fadd double %76, %77
  %79 = fdiv double %72, %78
  store double %79, ptr @sa, align 8
  store double %68, ptr @sb, align 8
  %80 = fdiv double %67, 1.400000e+01
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %81 = fadd double %79, %68
  %82 = load double, ptr @two, align 8
  %83 = call double @llvm.fmuladd.f64(double %82, double %44, double %81)
  %84 = fmul double %45, %83
  %85 = fdiv double %84, %82
  store double %85, ptr @sa, align 8
  %86 = fdiv double %73, %85
  store double %86, ptr @sb, align 8
  %87 = fptosi double %86 to i32
  %88 = mul nsw i32 %87, 40000
  %89 = sitofp i32 %88 to double
  %90 = load double, ptr @scale, align 8
  %91 = fdiv double %89, %90
  %92 = fptosi double %91 to i32
  %93 = fadd double %86, -2.520000e+01
  store double %93, ptr @sc, align 8
  %94 = fdiv double %73, %80
  store double %94, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %95 = fmul double %93, 1.000000e-30
  %96 = fmul double %67, 1.000000e-30
  %97 = fmul double %94, 1.000000e-30
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %95, double noundef %96, double noundef %97) #5
  %99 = load double, ptr @five, align 8
  %100 = fneg double %99
  %101 = load double, ptr @one, align 8
  %102 = fneg double %101
  store double %102, ptr @sa, align 8
  %103 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not24 = icmp sgt i32 1, %92
  br i1 %.not24, label %127, label %.lr.ph26

.lr.ph26:                                         ; preds = %63
  %104 = add i32 %92, -1
  %xtraiter68 = and i32 %92, 3
  %105 = icmp ult i32 %104, 3
  br i1 %105, label %.epil.preheader67, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter77 = sub i32 %92, %xtraiter68
  br label %106

106:                                              ; preds = %106, %.lr.ph26.new
  %107 = phi i32 [ 1, %.lr.ph26.new ], [ %119, %106 ]
  %108 = phi double [ %100, %.lr.ph26.new ], [ %108, %106 ]
  %niter78 = phi i32 [ 0, %.lr.ph26.new ], [ %niter78.next.3, %106 ]
  %109 = fneg double %108
  %110 = load double, ptr @sa, align 8
  %111 = fsub double %110, %108
  store double %111, ptr @sa, align 8
  %112 = load double, ptr @sa, align 8
  %113 = fsub double %112, %109
  store double %113, ptr @sa, align 8
  %114 = fneg double %108
  %115 = load double, ptr @sa, align 8
  %116 = fsub double %115, %108
  store double %116, ptr @sa, align 8
  %117 = load double, ptr @sa, align 8
  %118 = fsub double %117, %114
  store double %118, ptr @sa, align 8
  %119 = add nuw nsw i32 %107, 4
  %niter78.next.3 = add i32 %niter78, 4
  %niter78.ncmp.3 = icmp eq i32 %niter78.next.3, %unroll_iter77
  br i1 %niter78.ncmp.3, label %._crit_edge27.unr-lcssa, label %106, !llvm.loop !13

._crit_edge27.unr-lcssa:                          ; preds = %106
  %split28.ph = phi double [ %108, %106 ]
  %.unr70 = phi i32 [ %119, %106 ]
  %.unr72 = phi double [ %108, %106 ]
  %lcmp.mod74 = icmp ne i32 %xtraiter68, 0
  br i1 %lcmp.mod74, label %.epil.preheader67, label %._crit_edge27

.epil.preheader67:                                ; preds = %._crit_edge27.unr-lcssa, %.lr.ph26
  %.epil.init71 = phi i32 [ 1, %.lr.ph26 ], [ %.unr70, %._crit_edge27.unr-lcssa ]
  %.epil.init73 = phi double [ %100, %.lr.ph26 ], [ %.unr72, %._crit_edge27.unr-lcssa ]
  %lcmp.mod76 = icmp ne i32 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %120

120:                                              ; preds = %120, %.epil.preheader67
  %121 = phi i32 [ %.epil.init71, %.epil.preheader67 ], [ %126, %120 ]
  %122 = phi double [ %.epil.init73, %.epil.preheader67 ], [ %123, %120 ]
  %epil.iter69 = phi i32 [ 0, %.epil.preheader67 ], [ %epil.iter69.next, %120 ]
  %123 = fneg double %122
  %124 = load double, ptr @sa, align 8
  %125 = fsub double %124, %122
  store double %125, ptr @sa, align 8
  %126 = add nuw nsw i32 %121, 1
  %.not.epil = icmp sgt i32 %126, %92
  %epil.iter69.next = add i32 %epil.iter69, 1
  %epil.iter69.cmp = icmp ne i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp, label %120, label %._crit_edge27.epilog-lcssa, !llvm.loop !14

._crit_edge27.epilog-lcssa:                       ; preds = %120
  %split28.ph75 = phi double [ %123, %120 ]
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.unr-lcssa, %._crit_edge27.epilog-lcssa
  %split28 = phi double [ %split28.ph, %._crit_edge27.unr-lcssa ], [ %split28.ph75, %._crit_edge27.epilog-lcssa ]
  br label %127

127:                                              ; preds = %._crit_edge27, %63
  %.lcssa9 = phi double [ %split28, %._crit_edge27 ], [ %100, %63 ]
  %128 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %131 = fmul double %129, %130
  %132 = fcmp olt double %131, 0.000000e+00
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %127
  %storemerge = phi double [ 0.000000e+00, %133 ], [ %131, %127 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = sitofp i32 %92 to double
  store double %135, ptr @sc, align 8
  %136 = load double, ptr @sa, align 8
  %137 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not429 = icmp sgt i32 1, %92
  br i1 %.not429, label %176, label %.lr.ph31

.lr.ph31:                                         ; preds = %134
  %138 = add i32 %92, -1
  %xtraiter80 = and i32 %92, 1
  %139 = icmp ult i32 %138, 1
  br i1 %139, label %.epil.preheader79, label %.lr.ph31.new

.lr.ph31.new:                                     ; preds = %.lr.ph31
  %unroll_iter99 = sub i32 %92, %xtraiter80
  br label %140

140:                                              ; preds = %140, %.lr.ph31.new
  %141 = phi i32 [ 1, %.lr.ph31.new ], [ %165, %140 ]
  %142 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %161, %140 ]
  %143 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %162, %140 ]
  %144 = phi double [ %.lcssa9, %.lr.ph31.new ], [ %144, %140 ]
  %145 = phi double [ %136, %.lr.ph31.new ], [ %159, %140 ]
  %146 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %164, %140 ]
  %niter100 = phi i32 [ 0, %.lr.ph31.new ], [ %niter100.next.1, %140 ]
  %147 = fneg double %144
  %148 = load double, ptr @sa, align 8
  %149 = fsub double %148, %144
  store double %149, ptr @sa, align 8
  %150 = load double, ptr @two, align 8
  %151 = fadd double %145, %150
  %152 = fsub double %147, %151
  %153 = fadd double %142, %152
  %154 = call double @llvm.fmuladd.f64(double %144, double %151, double %143)
  %155 = fdiv double %144, %151
  %156 = fsub double %146, %155
  %157 = load double, ptr @sa, align 8
  %158 = fsub double %157, %147
  store double %158, ptr @sa, align 8
  %159 = fadd double %151, %150
  %160 = fsub double %144, %159
  %161 = fadd double %153, %160
  %162 = call double @llvm.fmuladd.f64(double %147, double %159, double %154)
  %163 = fdiv double %147, %159
  %164 = fsub double %156, %163
  %165 = add nuw nsw i32 %141, 2
  %niter100.next.1 = add i32 %niter100, 2
  %niter100.ncmp.1 = icmp eq i32 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %._crit_edge32.unr-lcssa, label %140, !llvm.loop !15

._crit_edge32.unr-lcssa:                          ; preds = %140
  %split33.ph = phi double [ %164, %140 ]
  %split34.ph = phi double [ %162, %140 ]
  %split35.ph = phi double [ %161, %140 ]
  %.unr84 = phi double [ %161, %140 ]
  %.unr86 = phi double [ %162, %140 ]
  %.unr88 = phi double [ %144, %140 ]
  %.unr90 = phi double [ %159, %140 ]
  %.unr92 = phi double [ %164, %140 ]
  %lcmp.mod94 = icmp ne i32 %xtraiter80, 0
  br i1 %lcmp.mod94, label %.epil.preheader79, label %._crit_edge32

.epil.preheader79:                                ; preds = %._crit_edge32.unr-lcssa, %.lr.ph31
  %.epil.init85 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr84, %._crit_edge32.unr-lcssa ]
  %.epil.init87 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr86, %._crit_edge32.unr-lcssa ]
  %.epil.init89 = phi double [ %.lcssa9, %.lr.ph31 ], [ %.unr88, %._crit_edge32.unr-lcssa ]
  %.epil.init91 = phi double [ %136, %.lr.ph31 ], [ %.unr90, %._crit_edge32.unr-lcssa ]
  %.epil.init93 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr92, %._crit_edge32.unr-lcssa ]
  %lcmp.mod98 = icmp ne i32 %xtraiter80, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %._crit_edge32.epilog-lcssa

._crit_edge32.epilog-lcssa:                       ; preds = %.epil.preheader79
  %166 = fneg double %.epil.init89
  %167 = load double, ptr @sa, align 8
  %168 = fsub double %167, %.epil.init89
  store double %168, ptr @sa, align 8
  %169 = load double, ptr @two, align 8
  %170 = fadd double %.epil.init91, %169
  %171 = fsub double %166, %170
  %172 = fadd double %.epil.init85, %171
  %173 = call double @llvm.fmuladd.f64(double %.epil.init89, double %170, double %.epil.init87)
  %174 = fdiv double %.epil.init89, %170
  %175 = fsub double %.epil.init93, %174
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.unr-lcssa, %._crit_edge32.epilog-lcssa
  %split33 = phi double [ %split33.ph, %._crit_edge32.unr-lcssa ], [ %175, %._crit_edge32.epilog-lcssa ]
  %split34 = phi double [ %split34.ph, %._crit_edge32.unr-lcssa ], [ %173, %._crit_edge32.epilog-lcssa ]
  %split35 = phi double [ %split35.ph, %._crit_edge32.unr-lcssa ], [ %172, %._crit_edge32.epilog-lcssa ]
  br label %176

176:                                              ; preds = %._crit_edge32, %134
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %134 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %134 ]
  %.lcssa6 = phi double [ %split35, %._crit_edge32 ], [ 0.000000e+00, %134 ]
  %177 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %178 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %179 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %180 = fmul double %178, %179
  store double %180, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %181 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %182 = fsub double %180, %181
  %183 = fdiv double %182, 7.000000e+00
  store double %183, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %184 = load double, ptr @sa, align 8
  %185 = fmul double %184, %.lcssa6
  %186 = load double, ptr @sc, align 8
  %187 = fdiv double %185, %186
  %188 = fptosi double %187 to i32
  %189 = load double, ptr @four, align 8
  %190 = fmul double %189, %.lcssa8
  %191 = load double, ptr @five, align 8
  %192 = fdiv double %190, %191
  store double %192, ptr @sa, align 8
  %193 = fdiv double %191, %.lcssa7
  %194 = fadd double %192, %193
  store double %194, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %195 = fmul double %.lcssa7, %.lcssa7
  %196 = fmul double %195, %.lcssa7
  %197 = fdiv double 3.125000e+01, %196
  %198 = fsub double %194, %197
  store double %198, ptr @piprg, align 8
  %199 = load double, ptr @piref, align 8
  %200 = fsub double %198, %199
  store double %200, ptr @pierr, align 8
  %201 = load double, ptr @one, align 8
  %202 = fdiv double %201, %183
  store double %202, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %203 = fmul double %200, 1.000000e-30
  %204 = fmul double %182, 1.000000e-30
  %205 = fmul double %202, 1.000000e-30
  %206 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %203, double noundef %204, double noundef %205) #5
  %207 = load double, ptr @piref, align 8
  %208 = load double, ptr @three, align 8
  %209 = sitofp i32 %188 to double
  %210 = fmul double %208, %209
  %211 = fdiv double %207, %210
  %212 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not36 = icmp slt i32 1, %188
  br i1 %.not5.not36, label %.lr.ph38, label %237

.lr.ph38:                                         ; preds = %176
  br label %213

213:                                              ; preds = %.lr.ph38, %213
  %214 = phi i32 [ 1, %.lr.ph38 ], [ %236, %213 ]
  %215 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %235, %213 ]
  %216 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %218, %213 ]
  %217 = load double, ptr @one, align 8
  %218 = fadd double %216, %217
  %219 = fmul double %218, %211
  %220 = fmul double %219, %219
  %221 = load double, ptr @A6, align 8
  %222 = load double, ptr @A5, align 8
  %223 = fneg double %222
  %224 = call double @llvm.fmuladd.f64(double %221, double %220, double %223)
  %225 = load double, ptr @A4, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %220, double %225)
  %227 = load double, ptr @A3, align 8
  %228 = fneg double %227
  %229 = call double @llvm.fmuladd.f64(double %226, double %220, double %228)
  %230 = load double, ptr @A2, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %220, double %230)
  %232 = load double, ptr @A1, align 8
  %233 = call double @llvm.fmuladd.f64(double %231, double %220, double %232)
  %234 = call double @llvm.fmuladd.f64(double %233, double %220, double %217)
  %235 = call double @llvm.fmuladd.f64(double %219, double %234, double %215)
  %236 = add nuw nsw i32 %214, 1
  %.not5.not = icmp slt i32 %236, %188
  br i1 %.not5.not, label %213, label %._crit_edge39, !llvm.loop !16

._crit_edge39:                                    ; preds = %213
  %split40 = phi double [ %235, %213 ]
  br label %237

237:                                              ; preds = %._crit_edge39, %176
  %.lcssa5 = phi double [ %split40, %._crit_edge39 ], [ 0.000000e+00, %176 ]
  %238 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %239 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %240 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %241 = load double, ptr @nulltime, align 8
  %242 = fneg double %241
  %243 = call double @llvm.fmuladd.f64(double %239, double %240, double %242)
  store double %243, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %244 = load double, ptr @piref, align 8
  %245 = load double, ptr @three, align 8
  %246 = fdiv double %244, %245
  %247 = fmul double %246, %246
  %248 = load double, ptr @A6, align 8
  %249 = load double, ptr @A5, align 8
  %250 = fneg double %249
  %251 = call double @llvm.fmuladd.f64(double %248, double %247, double %250)
  %252 = load double, ptr @A4, align 8
  %253 = call double @llvm.fmuladd.f64(double %251, double %247, double %252)
  %254 = load double, ptr @A3, align 8
  %255 = fneg double %254
  %256 = call double @llvm.fmuladd.f64(double %253, double %247, double %255)
  %257 = load double, ptr @A2, align 8
  %258 = call double @llvm.fmuladd.f64(double %256, double %247, double %257)
  %259 = load double, ptr @A1, align 8
  %260 = call double @llvm.fmuladd.f64(double %258, double %247, double %259)
  %261 = load double, ptr @one, align 8
  %262 = call double @llvm.fmuladd.f64(double %260, double %247, double %261)
  %263 = fmul double %246, %262
  store double %263, ptr @sa, align 8
  %264 = fdiv double %243, 1.700000e+01
  store double %264, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %265 = load double, ptr @two, align 8
  %266 = call double @llvm.fmuladd.f64(double %265, double %.lcssa5, double %263)
  %267 = fmul double %211, %266
  %268 = fdiv double %267, %265
  store double %268, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %269 = fadd double %268, -5.000000e-01
  store double %269, ptr @sc, align 8
  %270 = fdiv double %261, %264
  store double %270, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %271 = fmul double %269, 1.000000e-30
  %272 = fmul double %243, 1.000000e-30
  %273 = fmul double %270, 1.000000e-30
  %274 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %271, double noundef %272, double noundef %273) #5
  %275 = load double, ptr @A3, align 8
  %276 = fneg double %275
  store double %276, ptr @A3, align 8
  %277 = load double, ptr @A5, align 8
  %278 = fneg double %277
  store double %278, ptr @A5, align 8
  %279 = load double, ptr @piref, align 8
  %280 = load double, ptr @three, align 8
  %281 = fmul double %280, %209
  %282 = fdiv double %279, %281
  %283 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not41 = icmp slt i32 1, %188
  br i1 %.not6.not41, label %.lr.ph43, label %305

.lr.ph43:                                         ; preds = %237
  br label %284

284:                                              ; preds = %.lr.ph43, %284
  %285 = phi i32 [ 1, %.lr.ph43 ], [ %304, %284 ]
  %286 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %303, %284 ]
  %287 = uitofp nneg i32 %285 to double
  %288 = fmul double %282, %287
  %289 = fmul double %288, %288
  %290 = load double, ptr @B6, align 8
  %291 = load double, ptr @B5, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %289, double %291)
  %293 = load double, ptr @B4, align 8
  %294 = call double @llvm.fmuladd.f64(double %289, double %292, double %293)
  %295 = load double, ptr @B3, align 8
  %296 = call double @llvm.fmuladd.f64(double %289, double %294, double %295)
  %297 = load double, ptr @B2, align 8
  %298 = call double @llvm.fmuladd.f64(double %289, double %296, double %297)
  %299 = load double, ptr @B1, align 8
  %300 = call double @llvm.fmuladd.f64(double %289, double %298, double %299)
  %301 = call double @llvm.fmuladd.f64(double %289, double %300, double %286)
  %302 = load double, ptr @one, align 8
  %303 = fadd double %301, %302
  %304 = add nuw nsw i32 %285, 1
  %.not6.not = icmp slt i32 %304, %188
  br i1 %.not6.not, label %284, label %._crit_edge44, !llvm.loop !17

._crit_edge44:                                    ; preds = %284
  %split45 = phi double [ %303, %284 ]
  br label %305

305:                                              ; preds = %._crit_edge44, %237
  %.lcssa4 = phi double [ %split45, %._crit_edge44 ], [ 0.000000e+00, %237 ]
  %306 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %307 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %308 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %309 = load double, ptr @nulltime, align 8
  %310 = fneg double %309
  %311 = call double @llvm.fmuladd.f64(double %307, double %308, double %310)
  store double %311, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %312 = load double, ptr @piref, align 8
  %313 = load double, ptr @three, align 8
  %314 = fdiv double %312, %313
  %315 = fmul double %314, %314
  %316 = load double, ptr @B6, align 8
  %317 = load double, ptr @B5, align 8
  %318 = call double @llvm.fmuladd.f64(double %316, double %315, double %317)
  %319 = load double, ptr @B4, align 8
  %320 = call double @llvm.fmuladd.f64(double %315, double %318, double %319)
  %321 = load double, ptr @B3, align 8
  %322 = call double @llvm.fmuladd.f64(double %315, double %320, double %321)
  %323 = load double, ptr @B2, align 8
  %324 = call double @llvm.fmuladd.f64(double %315, double %322, double %323)
  %325 = load double, ptr @B1, align 8
  %326 = call double @llvm.fmuladd.f64(double %315, double %324, double %325)
  %327 = load double, ptr @one, align 8
  %328 = call double @llvm.fmuladd.f64(double %315, double %326, double %327)
  store double %328, ptr @sa, align 8
  %329 = fdiv double %311, 1.500000e+01
  store double %329, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %330 = fadd double %328, %327
  %331 = load double, ptr @two, align 8
  %332 = call double @llvm.fmuladd.f64(double %331, double %.lcssa4, double %330)
  %333 = fmul double %282, %332
  %334 = fdiv double %333, %331
  store double %334, ptr @sa, align 8
  %335 = load double, ptr @A6, align 8
  %336 = load double, ptr @A5, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %315, double %336)
  %338 = load double, ptr @A4, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %315, double %338)
  %340 = load double, ptr @A3, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %315, double %340)
  %342 = load double, ptr @A2, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %315, double %342)
  %344 = load double, ptr @A1, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %315, double %344)
  %346 = load double, ptr @A0, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %315, double %346)
  %348 = fmul double %314, %347
  store double %348, ptr @sb, align 8
  %349 = fsub double %334, %348
  store double %349, ptr @sc, align 8
  %350 = fdiv double %327, %329
  store double %350, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %351 = fmul double %349, 1.000000e-30
  %352 = fmul double %311, 1.000000e-30
  %353 = fmul double %350, 1.000000e-30
  %354 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %351, double noundef %352, double noundef %353) #5
  %355 = load double, ptr @piref, align 8
  %356 = load double, ptr @three, align 8
  %357 = fmul double %356, %209
  %358 = fdiv double %355, %357
  %359 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not46 = icmp slt i32 1, %188
  br i1 %.not7.not46, label %.lr.ph48, label %395

.lr.ph48:                                         ; preds = %305
  br label %360

360:                                              ; preds = %.lr.ph48, %360
  %361 = phi i32 [ 1, %.lr.ph48 ], [ %394, %360 ]
  %362 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %393, %360 ]
  %363 = uitofp nneg i32 %361 to double
  %364 = fmul double %358, %363
  %365 = fmul double %364, %364
  %366 = load double, ptr @A6, align 8
  %367 = load double, ptr @A5, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %365, double %367)
  %369 = load double, ptr @A4, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %365, double %369)
  %371 = load double, ptr @A3, align 8
  %372 = call double @llvm.fmuladd.f64(double %370, double %365, double %371)
  %373 = load double, ptr @A2, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %365, double %373)
  %375 = load double, ptr @A1, align 8
  %376 = call double @llvm.fmuladd.f64(double %374, double %365, double %375)
  %377 = load double, ptr @one, align 8
  %378 = call double @llvm.fmuladd.f64(double %376, double %365, double %377)
  %379 = fmul double %364, %378
  %380 = load double, ptr @B6, align 8
  %381 = load double, ptr @B5, align 8
  %382 = call double @llvm.fmuladd.f64(double %380, double %365, double %381)
  %383 = load double, ptr @B4, align 8
  %384 = call double @llvm.fmuladd.f64(double %365, double %382, double %383)
  %385 = load double, ptr @B3, align 8
  %386 = call double @llvm.fmuladd.f64(double %365, double %384, double %385)
  %387 = load double, ptr @B2, align 8
  %388 = call double @llvm.fmuladd.f64(double %365, double %386, double %387)
  %389 = load double, ptr @B1, align 8
  %390 = call double @llvm.fmuladd.f64(double %365, double %388, double %389)
  %391 = call double @llvm.fmuladd.f64(double %365, double %390, double %377)
  %392 = fdiv double %379, %391
  %393 = fadd double %362, %392
  %394 = add nuw nsw i32 %361, 1
  %.not7.not = icmp slt i32 %394, %188
  br i1 %.not7.not, label %360, label %._crit_edge49, !llvm.loop !18

._crit_edge49:                                    ; preds = %360
  %split50 = phi double [ %393, %360 ]
  br label %395

395:                                              ; preds = %._crit_edge49, %305
  %.lcssa3 = phi double [ %split50, %._crit_edge49 ], [ 0.000000e+00, %305 ]
  %396 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %397 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %398 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %399 = load double, ptr @nulltime, align 8
  %400 = fneg double %399
  %401 = call double @llvm.fmuladd.f64(double %397, double %398, double %400)
  store double %401, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %402 = load double, ptr @piref, align 8
  %403 = load double, ptr @three, align 8
  %404 = fdiv double %402, %403
  %405 = fmul double %404, %404
  %406 = load double, ptr @A6, align 8
  %407 = load double, ptr @A5, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %405, double %407)
  %409 = load double, ptr @A4, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %405, double %409)
  %411 = load double, ptr @A3, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %405, double %411)
  %413 = load double, ptr @A2, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %405, double %413)
  %415 = load double, ptr @A1, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %405, double %415)
  %417 = load double, ptr @one, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %405, double %417)
  %419 = fmul double %404, %418
  store double %419, ptr @sa, align 8
  %420 = load double, ptr @B6, align 8
  %421 = load double, ptr @B5, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %405, double %421)
  %423 = load double, ptr @B4, align 8
  %424 = call double @llvm.fmuladd.f64(double %405, double %422, double %423)
  %425 = load double, ptr @B3, align 8
  %426 = call double @llvm.fmuladd.f64(double %405, double %424, double %425)
  %427 = load double, ptr @B2, align 8
  %428 = call double @llvm.fmuladd.f64(double %405, double %426, double %427)
  %429 = load double, ptr @B1, align 8
  %430 = call double @llvm.fmuladd.f64(double %405, double %428, double %429)
  %431 = call double @llvm.fmuladd.f64(double %405, double %430, double %417)
  store double %431, ptr @sb, align 8
  %432 = fdiv double %419, %431
  store double %432, ptr @sa, align 8
  %433 = fdiv double %401, 2.900000e+01
  store double %433, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %434 = load double, ptr @two, align 8
  %435 = call double @llvm.fmuladd.f64(double %434, double %.lcssa3, double %432)
  %436 = fmul double %358, %435
  %437 = fdiv double %436, %434
  store double %437, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %438 = fadd double %437, f0xBFE62E42FEFA39EF
  store double %438, ptr @sc, align 8
  %439 = fdiv double %417, %433
  store double %439, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %440 = fmul double %438, 1.000000e-30
  %441 = fmul double %401, 1.000000e-30
  %442 = fmul double %439, 1.000000e-30
  %443 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %440, double noundef %441, double noundef %442) #5
  %444 = load double, ptr @piref, align 8
  %445 = load double, ptr @four, align 8
  %446 = fmul double %445, %209
  %447 = fdiv double %444, %446
  %448 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not51 = icmp slt i32 1, %188
  br i1 %.not8.not51, label %.lr.ph53, label %483

.lr.ph53:                                         ; preds = %395
  br label %449

449:                                              ; preds = %.lr.ph53, %449
  %450 = phi i32 [ 1, %.lr.ph53 ], [ %482, %449 ]
  %451 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %481, %449 ]
  %452 = uitofp nneg i32 %450 to double
  %453 = fmul double %447, %452
  %454 = fmul double %453, %453
  %455 = load double, ptr @A6, align 8
  %456 = load double, ptr @A5, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %454, double %456)
  %458 = load double, ptr @A4, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %454, double %458)
  %460 = load double, ptr @A3, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %454, double %460)
  %462 = load double, ptr @A2, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %454, double %462)
  %464 = load double, ptr @A1, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %454, double %464)
  %466 = load double, ptr @one, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %454, double %466)
  %468 = fmul double %453, %467
  %469 = load double, ptr @B6, align 8
  %470 = load double, ptr @B5, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %454, double %470)
  %472 = load double, ptr @B4, align 8
  %473 = call double @llvm.fmuladd.f64(double %454, double %471, double %472)
  %474 = load double, ptr @B3, align 8
  %475 = call double @llvm.fmuladd.f64(double %454, double %473, double %474)
  %476 = load double, ptr @B2, align 8
  %477 = call double @llvm.fmuladd.f64(double %454, double %475, double %476)
  %478 = load double, ptr @B1, align 8
  %479 = call double @llvm.fmuladd.f64(double %454, double %477, double %478)
  %480 = call double @llvm.fmuladd.f64(double %454, double %479, double %466)
  %481 = call double @llvm.fmuladd.f64(double %468, double %480, double %451)
  %482 = add nuw nsw i32 %450, 1
  %.not8.not = icmp slt i32 %482, %188
  br i1 %.not8.not, label %449, label %._crit_edge54, !llvm.loop !19

._crit_edge54:                                    ; preds = %449
  %split55 = phi double [ %481, %449 ]
  br label %483

483:                                              ; preds = %._crit_edge54, %395
  %.lcssa2 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %395 ]
  %484 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %485 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %486 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %487 = load double, ptr @nulltime, align 8
  %488 = fneg double %487
  %489 = call double @llvm.fmuladd.f64(double %485, double %486, double %488)
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %490 = load double, ptr @piref, align 8
  %491 = load double, ptr @four, align 8
  %492 = fdiv double %490, %491
  %493 = fmul double %492, %492
  %494 = load double, ptr @A6, align 8
  %495 = load double, ptr @A5, align 8
  %496 = call double @llvm.fmuladd.f64(double %494, double %493, double %495)
  %497 = load double, ptr @A4, align 8
  %498 = call double @llvm.fmuladd.f64(double %496, double %493, double %497)
  %499 = load double, ptr @A3, align 8
  %500 = call double @llvm.fmuladd.f64(double %498, double %493, double %499)
  %501 = load double, ptr @A2, align 8
  %502 = call double @llvm.fmuladd.f64(double %500, double %493, double %501)
  %503 = load double, ptr @A1, align 8
  %504 = call double @llvm.fmuladd.f64(double %502, double %493, double %503)
  %505 = load double, ptr @one, align 8
  %506 = call double @llvm.fmuladd.f64(double %504, double %493, double %505)
  %507 = fmul double %492, %506
  store double %507, ptr @sa, align 8
  %508 = load double, ptr @B6, align 8
  %509 = load double, ptr @B5, align 8
  %510 = call double @llvm.fmuladd.f64(double %508, double %493, double %509)
  %511 = load double, ptr @B4, align 8
  %512 = call double @llvm.fmuladd.f64(double %493, double %510, double %511)
  %513 = load double, ptr @B3, align 8
  %514 = call double @llvm.fmuladd.f64(double %493, double %512, double %513)
  %515 = load double, ptr @B2, align 8
  %516 = call double @llvm.fmuladd.f64(double %493, double %514, double %515)
  %517 = load double, ptr @B1, align 8
  %518 = call double @llvm.fmuladd.f64(double %493, double %516, double %517)
  %519 = call double @llvm.fmuladd.f64(double %493, double %518, double %505)
  store double %519, ptr @sb, align 8
  %520 = fmul double %507, %519
  store double %520, ptr @sa, align 8
  %521 = fdiv double %489, 2.900000e+01
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %522 = load double, ptr @two, align 8
  %523 = call double @llvm.fmuladd.f64(double %522, double %.lcssa2, double %520)
  %524 = fmul double %447, %523
  %525 = fdiv double %524, %522
  store double %525, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %526 = fadd double %525, -2.500000e-01
  store double %526, ptr @sc, align 8
  %527 = fdiv double %505, %521
  store double %527, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %528 = fmul double %526, 1.000000e-30
  %529 = fmul double %489, 1.000000e-30
  %530 = fmul double %527, 1.000000e-30
  %531 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %528, double noundef %529, double noundef %530) #5
  %532 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %533 = fdiv double f0x40599541F7F192A4, %209
  %534 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %188
  br i1 %.not9.not56, label %.lr.ph58, label %551

.lr.ph58:                                         ; preds = %483
  br label %535

535:                                              ; preds = %.lr.ph58, %535
  %536 = phi i32 [ 1, %.lr.ph58 ], [ %550, %535 ]
  %537 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %549, %535 ]
  %538 = uitofp nneg i32 %536 to double
  %539 = fmul double %533, %538
  %540 = fmul double %539, %539
  %541 = fadd double %539, %532
  %542 = fdiv double %532, %541
  %543 = fsub double %537, %542
  %544 = fadd double %540, %532
  %545 = fdiv double %539, %544
  %546 = fsub double %543, %545
  %547 = call double @llvm.fmuladd.f64(double %539, double %540, double %532)
  %548 = fdiv double %540, %547
  %549 = fsub double %546, %548
  %550 = add nuw nsw i32 %536, 1
  %.not9.not = icmp slt i32 %550, %188
  br i1 %.not9.not, label %535, label %._crit_edge59, !llvm.loop !20

._crit_edge59:                                    ; preds = %535
  %split60 = phi double [ %549, %535 ]
  br label %551

551:                                              ; preds = %._crit_edge59, %483
  %.lcssa1 = phi double [ %split60, %._crit_edge59 ], [ 0.000000e+00, %483 ]
  %552 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %553 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %554 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %555 = load double, ptr @nulltime, align 8
  %556 = fneg double %555
  %557 = call double @llvm.fmuladd.f64(double %553, double %554, double %556)
  store double %557, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %558 = fdiv double %557, 1.200000e+01
  store double %558, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %559 = load double, ptr @sa, align 8
  %560 = fmul double %559, %559
  %561 = fneg double %532
  %562 = fadd double %559, %532
  %563 = fdiv double %532, %562
  %564 = fsub double %561, %563
  %565 = fadd double %560, %532
  %566 = fdiv double %559, %565
  %567 = fsub double %564, %566
  %568 = call double @llvm.fmuladd.f64(double %559, double %560, double %532)
  %569 = fdiv double %560, %568
  %570 = fsub double %567, %569
  store double %570, ptr @sa, align 8
  %571 = fmul nnan double %533, 1.800000e+01
  %572 = load double, ptr @two, align 8
  %573 = call double @llvm.fmuladd.f64(double %572, double %.lcssa1, double %570)
  %574 = fmul double %571, %573
  store double %574, ptr @sa, align 8
  %575 = fptosi double %574 to i32
  %576 = mul nsw i32 %575, -2000
  %577 = sitofp i32 %576 to double
  %578 = load double, ptr @scale, align 8
  %579 = fdiv double %577, %578
  %580 = fptosi double %579 to i32
  %581 = fadd double %574, 5.002000e+02
  store double %581, ptr @sc, align 8
  %582 = load double, ptr @one, align 8
  %583 = fdiv double %582, %558
  store double %583, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %584 = fmul double %581, 1.000000e-30
  %585 = fmul double %557, 1.000000e-30
  %586 = fmul double %583, 1.000000e-30
  %587 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %584, double noundef %585, double noundef %586) #5
  %588 = load double, ptr @piref, align 8
  %589 = load double, ptr @three, align 8
  %590 = sitofp i32 %580 to double
  %591 = fmul double %589, %590
  %592 = fdiv double %588, %591
  %593 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not61 = icmp slt i32 1, %580
  br i1 %.not10.not61, label %.lr.ph63, label %629

.lr.ph63:                                         ; preds = %551
  br label %594

594:                                              ; preds = %.lr.ph63, %594
  %595 = phi i32 [ 1, %.lr.ph63 ], [ %628, %594 ]
  %596 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %627, %594 ]
  %597 = uitofp nneg i32 %595 to double
  %598 = fmul double %592, %597
  %599 = fmul double %598, %598
  %600 = load double, ptr @B6, align 8
  %601 = load double, ptr @B5, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %599, double %601)
  %603 = load double, ptr @B4, align 8
  %604 = call double @llvm.fmuladd.f64(double %599, double %602, double %603)
  %605 = load double, ptr @B3, align 8
  %606 = call double @llvm.fmuladd.f64(double %599, double %604, double %605)
  %607 = load double, ptr @B2, align 8
  %608 = call double @llvm.fmuladd.f64(double %599, double %606, double %607)
  %609 = load double, ptr @B1, align 8
  %610 = call double @llvm.fmuladd.f64(double %599, double %608, double %609)
  %611 = load double, ptr @one, align 8
  %612 = call double @llvm.fmuladd.f64(double %599, double %610, double %611)
  %613 = fmul double %612, %612
  %614 = fmul double %613, %598
  %615 = load double, ptr @A6, align 8
  %616 = load double, ptr @A5, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %599, double %616)
  %618 = load double, ptr @A4, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %599, double %618)
  %620 = load double, ptr @A3, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %599, double %620)
  %622 = load double, ptr @A2, align 8
  %623 = call double @llvm.fmuladd.f64(double %621, double %599, double %622)
  %624 = load double, ptr @A1, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %599, double %624)
  %626 = call double @llvm.fmuladd.f64(double %625, double %599, double %611)
  %627 = call double @llvm.fmuladd.f64(double %614, double %626, double %596)
  %628 = add nuw nsw i32 %595, 1
  %.not10.not = icmp slt i32 %628, %580
  br i1 %.not10.not, label %594, label %._crit_edge64, !llvm.loop !21

._crit_edge64:                                    ; preds = %594
  %split65 = phi double [ %627, %594 ]
  br label %629

629:                                              ; preds = %._crit_edge64, %551
  %.lcssa = phi double [ %split65, %._crit_edge64 ], [ 0.000000e+00, %551 ]
  %630 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %631 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %632 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %633 = load double, ptr @nulltime, align 8
  %634 = fneg double %633
  %635 = call double @llvm.fmuladd.f64(double %631, double %632, double %634)
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %636 = load double, ptr @piref, align 8
  %637 = load double, ptr @three, align 8
  %638 = fdiv double %636, %637
  %639 = fmul double %638, %638
  %640 = load double, ptr @A6, align 8
  %641 = load double, ptr @A5, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %639, double %641)
  %643 = load double, ptr @A4, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %639, double %643)
  %645 = load double, ptr @A3, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %639, double %645)
  %647 = load double, ptr @A2, align 8
  %648 = call double @llvm.fmuladd.f64(double %646, double %639, double %647)
  %649 = load double, ptr @A1, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %639, double %649)
  %651 = load double, ptr @one, align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %639, double %651)
  %653 = fmul double %638, %652
  store double %653, ptr @sa, align 8
  %654 = load double, ptr @B6, align 8
  %655 = load double, ptr @B5, align 8
  %656 = call double @llvm.fmuladd.f64(double %654, double %639, double %655)
  %657 = load double, ptr @B4, align 8
  %658 = call double @llvm.fmuladd.f64(double %639, double %656, double %657)
  %659 = load double, ptr @B3, align 8
  %660 = call double @llvm.fmuladd.f64(double %639, double %658, double %659)
  %661 = load double, ptr @B2, align 8
  %662 = call double @llvm.fmuladd.f64(double %639, double %660, double %661)
  %663 = load double, ptr @B1, align 8
  %664 = call double @llvm.fmuladd.f64(double %639, double %662, double %663)
  %665 = call double @llvm.fmuladd.f64(double %639, double %664, double %651)
  store double %665, ptr @sb, align 8
  %666 = fmul double %653, %665
  %667 = fmul double %666, %665
  store double %667, ptr @sa, align 8
  %668 = fdiv double %635, 3.000000e+01
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %669 = load double, ptr @two, align 8
  %670 = call double @llvm.fmuladd.f64(double %669, double %.lcssa, double %667)
  %671 = fmul double %592, %670
  %672 = fdiv double %671, %669
  store double %672, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %673 = fadd double %672, f0xBFD2AAAAAAAAAAAB
  store double %673, ptr @sc, align 8
  %674 = fdiv double %651, %668
  store double %674, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %675 = fmul double %673, 1.000000e-30
  %676 = fmul double %635, 1.000000e-30
  %677 = fmul double %674, 1.000000e-30
  %678 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %675, double noundef %676, double noundef %677) #5
  %679 = load double, ptr @five, align 8
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %681 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %682 = fsub double %680, %681
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %684 = call double @llvm.fmuladd.f64(double %679, double %682, double %683)
  %685 = fdiv double %684, 5.200000e+01
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %686 = load double, ptr @one, align 8
  %687 = fdiv double %686, %685
  store double %687, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %689 = fadd double %688, %683
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %691 = fadd double %689, %690
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %693 = fadd double %691, %692
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %695 = fadd double %693, %694
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %696 = load double, ptr @four, align 8
  %697 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %698 = call double @llvm.fmuladd.f64(double %696, double %697, double %695)
  %699 = fdiv double %698, 1.520000e+02
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %700 = fdiv double %686, %699
  store double %700, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %701 = fadd double %695, %697
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %703 = fadd double %701, %702
  %704 = fdiv double %703, 1.460000e+02
  store double %704, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %705 = fdiv double %686, %704
  store double %705, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %706 = fadd double %683, %690
  %707 = fadd double %706, %694
  %708 = fadd double %707, %702
  %709 = fdiv double %708, 9.100000e+01
  store double %709, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %710 = fdiv double %686, %709
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %711 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %580) #5
  %712 = load double, ptr @nulltime, align 8
  %713 = fmul double %712, 1.000000e-30
  %714 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %713) #5
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %716 = fmul double %715, 1.000000e-30
  %717 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %716) #5
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %719 = fmul double %718, 1.000000e-30
  %720 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %719) #5
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %722 = fmul double %721, 1.000000e-30
  %723 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %722) #5
  %724 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %725 = fmul double %724, 1.000000e-30
  %726 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %725) #5
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount() #5
  %5 = uitofp i32 %4 to double
  %6 = fmul nnan double %5, 1.000000e-03
  store double %6, ptr %2, align 8
  %7 = fsub double %6, %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %7, ptr %8, align 8
  ret i32 0
}

declare dllimport i32 @GetTickCount() #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
