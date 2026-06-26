; ModuleID = 'results\paper_full\Misc_flops\round_000\output.ll'
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
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
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
  %3 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %4 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  %5 = load double, ptr @TLimit, align 8
  %6 = fcmp olt double 0.000000e+00, %5
  br i1 %6, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %0
  br label %14

7:                                                ; preds = %41
  %8 = phi double [ %.lcssa9, %41 ]
  %9 = phi double [ %19, %41 ]
  %10 = phi i32 [ %16, %41 ]
  %11 = phi double [ %43, %41 ]
  %12 = load double, ptr @TLimit, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %..loopexit_crit_edge, !llvm.loop !7

14:                                               ; preds = %.lr.ph19, %7
  %15 = phi i32 [ 15625, %.lr.ph19 ], [ %10, %7 ]
  %16 = shl nsw i32 %15, 1
  %17 = load double, ptr @one, align 8
  %18 = sitofp i32 %16 to double
  %19 = fdiv double %17, %18
  store double %17, ptr %1, align 8
  %20 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not17 = icmp slt i32 1, %16
  br i1 %.not.not17, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %14
  br label %21

21:                                               ; preds = %.lr.ph, %21
  %22 = phi i32 [ 1, %.lr.ph ], [ %40, %21 ]
  %23 = phi double [ 0.000000e+00, %.lr.ph ], [ %39, %21 ]
  %24 = phi double [ 0.000000e+00, %.lr.ph ], [ %26, %21 ]
  %25 = load double, ptr %1, align 8
  %26 = fadd double %24, %25
  %27 = fmul double %26, %19
  %28 = load double, ptr @D1, align 8
  %29 = load double, ptr @D2, align 8
  %30 = load double, ptr @D3, align 8
  %31 = call double @llvm.fmuladd.f64(double %27, double %30, double %29)
  %32 = call double @llvm.fmuladd.f64(double %27, double %31, double %28)
  %33 = load double, ptr @E2, align 8
  %34 = load double, ptr @E3, align 8
  %35 = call double @llvm.fmuladd.f64(double %27, double %34, double %33)
  %36 = call double @llvm.fmuladd.f64(double %27, double %35, double %28)
  %37 = call double @llvm.fmuladd.f64(double %27, double %36, double %25)
  %38 = fdiv double %32, %37
  %39 = fadd double %23, %38
  %40 = add nuw nsw i32 %22, 1
  %.not.not = icmp slt i32 %40, %16
  br i1 %.not.not, label %21, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi double [ %39, %21 ]
  br label %41

41:                                               ; preds = %._crit_edge, %14
  %.lcssa9 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %14 ]
  %42 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %43 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %43, ptr @sa, align 8
  %44 = icmp eq i32 %15, 256000000
  br i1 %44, label %45, label %7

45:                                               ; preds = %41
  %.lcssa16 = phi double [ %19, %41 ]
  %.lcssa9.lcssa = phi double [ %.lcssa9, %41 ]
  br label %46

..loopexit_crit_edge:                             ; preds = %7
  %split20 = phi double [ %8, %7 ]
  %split21 = phi double [ %9, %7 ]
  %split22 = phi i32 [ %10, %7 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa14 = phi double [ %split20, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa12 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa10 = phi i32 [ %split22, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %46

46:                                               ; preds = %.loopexit, %45
  %47 = phi double [ %.lcssa9.lcssa, %45 ], [ %.lcssa14, %.loopexit ]
  %48 = phi double [ %.lcssa16, %45 ], [ %.lcssa12, %.loopexit ]
  %49 = phi i32 [ 512000000, %45 ], [ %.lcssa10, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %50 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %smax = call i32 @llvm.smax.i32(i32 %49, i32 1)
  %51 = add nsw i32 %smax, -1
  %xtraiter = and i32 %smax, 7
  %52 = icmp ult i32 %51, 7
  br i1 %52, label %.epil.preheader, label %.new

.new:                                             ; preds = %46
  %unroll_iter = sub i32 %smax, %xtraiter
  br label %53

53:                                               ; preds = %53, %.new
  %54 = phi i32 [ 1, %.new ], [ %55, %53 ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %53 ]
  %55 = add nuw nsw i32 %54, 8
  %niter.next.7 = add i32 %niter, 8
  %niter.ncmp.7 = icmp ne i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %53, label %.unr-lcssa, !llvm.loop !10

.unr-lcssa:                                       ; preds = %53
  %.unr = phi i32 [ %55, %53 ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.epil.preheader, label %59

.epil.preheader:                                  ; preds = %.unr-lcssa, %46
  %.epil.init = phi i32 [ 1, %46 ], [ %.unr, %.unr-lcssa ]
  %lcmp.mod64 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod64)
  br label %56

56:                                               ; preds = %56, %.epil.preheader
  %57 = phi i32 [ %58, %56 ], [ %.epil.init, %.epil.preheader ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %56 ]
  %.not.not3.epil = icmp slt i32 %57, %49
  %58 = add nuw nsw i32 %57, 1
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp, label %56, label %.epilog-lcssa, !llvm.loop !11

.epilog-lcssa:                                    ; preds = %56
  br label %59

59:                                               ; preds = %.unr-lcssa, %.epilog-lcssa
  %60 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %63 = fmul double %61, %62
  %64 = fcmp olt double %63, 0.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi double [ 0.000000e+00, %65 ], [ %63, %59 ]
  store double %67, ptr @nulltime, align 8
  %68 = load double, ptr @sa, align 8
  %69 = fneg double %67
  %70 = call double @llvm.fmuladd.f64(double %61, double %68, double %69)
  store double %70, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %71 = load double, ptr @D1, align 8
  %72 = load double, ptr @D2, align 8
  %73 = fadd double %71, %72
  %74 = load double, ptr @D3, align 8
  %75 = fadd double %73, %74
  %76 = load double, ptr @one, align 8
  %77 = fadd double %76, %71
  %78 = load double, ptr @E2, align 8
  %79 = fadd double %77, %78
  %80 = load double, ptr @E3, align 8
  %81 = fadd double %79, %80
  %82 = fdiv double %75, %81
  store double %82, ptr @sa, align 8
  store double %71, ptr @sb, align 8
  %83 = fdiv double %70, 1.400000e+01
  store double %83, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %84 = fadd double %82, %71
  %85 = load double, ptr @two, align 8
  %86 = call double @llvm.fmuladd.f64(double %85, double %47, double %84)
  %87 = fmul double %48, %86
  %88 = fdiv double %87, %85
  store double %88, ptr @sa, align 8
  %89 = fdiv double %76, %88
  store double %89, ptr @sb, align 8
  %90 = fptosi double %89 to i32
  %91 = mul nsw i32 %90, 40000
  %92 = sitofp i32 %91 to double
  %93 = load double, ptr @scale, align 8
  %94 = fdiv double %92, %93
  %95 = fptosi double %94 to i32
  %96 = fadd double %89, -2.520000e+01
  store double %96, ptr @sc, align 8
  %97 = fdiv double %76, %83
  store double %97, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %98 = fmul double %96, 1.000000e-30
  %99 = fmul double %70, 1.000000e-30
  %100 = fmul double %97, 1.000000e-30
  %101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %98, double noundef %99, double noundef %100) #5
  store i32 %95, ptr %2, align 4
  %102 = load double, ptr @five, align 8
  %103 = fneg double %102
  %104 = load double, ptr @one, align 8
  %105 = fneg double %104
  store double %105, ptr @sa, align 8
  %106 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not23 = icmp sgt i32 1, %95
  br i1 %.not23, label %130, label %.lr.ph25

.lr.ph25:                                         ; preds = %66
  %107 = add i32 %95, -1
  %xtraiter66 = and i32 %95, 3
  %108 = icmp ult i32 %107, 3
  br i1 %108, label %.epil.preheader65, label %.lr.ph25.new

.lr.ph25.new:                                     ; preds = %.lr.ph25
  %unroll_iter75 = sub i32 %95, %xtraiter66
  br label %109

109:                                              ; preds = %109, %.lr.ph25.new
  %110 = phi i32 [ 1, %.lr.ph25.new ], [ %122, %109 ]
  %111 = phi double [ %103, %.lr.ph25.new ], [ %111, %109 ]
  %niter76 = phi i32 [ 0, %.lr.ph25.new ], [ %niter76.next.3, %109 ]
  %112 = fneg double %111
  %113 = load double, ptr @sa, align 8
  %114 = fsub double %113, %111
  store double %114, ptr @sa, align 8
  %115 = load double, ptr @sa, align 8
  %116 = fsub double %115, %112
  store double %116, ptr @sa, align 8
  %117 = fneg double %111
  %118 = load double, ptr @sa, align 8
  %119 = fsub double %118, %111
  store double %119, ptr @sa, align 8
  %120 = load double, ptr @sa, align 8
  %121 = fsub double %120, %117
  store double %121, ptr @sa, align 8
  %122 = add nuw nsw i32 %110, 4
  %niter76.next.3 = add i32 %niter76, 4
  %niter76.ncmp.3 = icmp eq i32 %niter76.next.3, %unroll_iter75
  br i1 %niter76.ncmp.3, label %._crit_edge26.unr-lcssa, label %109, !llvm.loop !13

._crit_edge26.unr-lcssa:                          ; preds = %109
  %split27.ph = phi double [ %111, %109 ]
  %.unr68 = phi i32 [ %122, %109 ]
  %.unr70 = phi double [ %111, %109 ]
  %lcmp.mod72 = icmp ne i32 %xtraiter66, 0
  br i1 %lcmp.mod72, label %.epil.preheader65, label %._crit_edge26

.epil.preheader65:                                ; preds = %._crit_edge26.unr-lcssa, %.lr.ph25
  %.epil.init69 = phi i32 [ 1, %.lr.ph25 ], [ %.unr68, %._crit_edge26.unr-lcssa ]
  %.epil.init71 = phi double [ %103, %.lr.ph25 ], [ %.unr70, %._crit_edge26.unr-lcssa ]
  %lcmp.mod74 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %123

123:                                              ; preds = %123, %.epil.preheader65
  %124 = phi i32 [ %.epil.init69, %.epil.preheader65 ], [ %129, %123 ]
  %125 = phi double [ %.epil.init71, %.epil.preheader65 ], [ %126, %123 ]
  %epil.iter67 = phi i32 [ 0, %.epil.preheader65 ], [ %epil.iter67.next, %123 ]
  %126 = fneg double %125
  %127 = load double, ptr @sa, align 8
  %128 = fsub double %127, %125
  store double %128, ptr @sa, align 8
  %129 = add nuw nsw i32 %124, 1
  %.not.epil = icmp sgt i32 %129, %95
  %epil.iter67.next = add i32 %epil.iter67, 1
  %epil.iter67.cmp = icmp ne i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp, label %123, label %._crit_edge26.epilog-lcssa, !llvm.loop !14

._crit_edge26.epilog-lcssa:                       ; preds = %123
  %split27.ph73 = phi double [ %126, %123 ]
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.unr-lcssa, %._crit_edge26.epilog-lcssa
  %split27 = phi double [ %split27.ph, %._crit_edge26.unr-lcssa ], [ %split27.ph73, %._crit_edge26.epilog-lcssa ]
  br label %130

130:                                              ; preds = %._crit_edge26, %66
  %.lcssa8 = phi double [ %split27, %._crit_edge26 ], [ %103, %66 ]
  %131 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  %135 = fcmp olt double %134, 0.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %130
  %storemerge = phi double [ 0.000000e+00, %136 ], [ %134, %130 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %138 = sitofp i32 %95 to double
  store double %138, ptr @sc, align 8
  %139 = load double, ptr @sa, align 8
  store double 0.000000e+00, ptr %1, align 8
  %140 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not428 = icmp sgt i32 1, %95
  br i1 %.not428, label %159, label %.lr.ph30

.lr.ph30:                                         ; preds = %137
  br label %141

141:                                              ; preds = %.lr.ph30, %141
  %142 = phi i32 [ 1, %.lr.ph30 ], [ %158, %141 ]
  %143 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %153, %141 ]
  %144 = phi double [ 0.000000e+00, %.lr.ph30 ], [ %154, %141 ]
  %145 = phi double [ %.lcssa8, %.lr.ph30 ], [ %147, %141 ]
  %146 = phi double [ %139, %.lr.ph30 ], [ %151, %141 ]
  %147 = fneg double %145
  %148 = load double, ptr @sa, align 8
  %149 = fsub double %148, %145
  store double %149, ptr @sa, align 8
  %150 = load double, ptr @two, align 8
  %151 = fadd double %146, %150
  %152 = fsub double %147, %151
  %153 = fadd double %143, %152
  %154 = call double @llvm.fmuladd.f64(double %145, double %151, double %144)
  %155 = load double, ptr %1, align 8
  %156 = fdiv double %145, %151
  %157 = fsub double %155, %156
  store double %157, ptr %1, align 8
  %158 = add nuw nsw i32 %142, 1
  %.not4 = icmp sgt i32 %158, %95
  br i1 %.not4, label %._crit_edge31, label %141, !llvm.loop !15

._crit_edge31:                                    ; preds = %141
  %split32 = phi double [ %154, %141 ]
  %split33 = phi double [ %153, %141 ]
  br label %159

159:                                              ; preds = %._crit_edge31, %137
  %.lcssa7 = phi double [ %split32, %._crit_edge31 ], [ 0.000000e+00, %137 ]
  %.lcssa6 = phi double [ %split33, %._crit_edge31 ], [ 0.000000e+00, %137 ]
  %160 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %161 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %163 = fmul double %161, %162
  store double %163, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %165 = fsub double %163, %164
  %166 = fdiv double %165, 7.000000e+00
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %167 = load double, ptr @sa, align 8
  %168 = fmul double %167, %.lcssa6
  %169 = load double, ptr @sc, align 8
  %170 = fdiv double %168, %169
  %171 = fptosi double %170 to i32
  store i32 %171, ptr %2, align 4
  %172 = load double, ptr @four, align 8
  %173 = load double, ptr %1, align 8
  %174 = fmul double %172, %173
  %175 = load double, ptr @five, align 8
  %176 = fdiv double %174, %175
  store double %176, ptr @sa, align 8
  %177 = fdiv double %175, %.lcssa7
  %178 = fadd double %176, %177
  store double %178, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %179 = fmul double %.lcssa7, %.lcssa7
  %180 = fmul double %179, %.lcssa7
  %181 = fdiv double 3.125000e+01, %180
  %182 = fsub double %178, %181
  store double %182, ptr @piprg, align 8
  %183 = load double, ptr @piref, align 8
  %184 = fsub double %182, %183
  store double %184, ptr @pierr, align 8
  %185 = load double, ptr @one, align 8
  %186 = fdiv double %185, %166
  store double %186, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %187 = fmul double %184, 1.000000e-30
  %188 = fmul double %165, 1.000000e-30
  %189 = fmul double %186, 1.000000e-30
  %190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %187, double noundef %188, double noundef %189) #5
  %191 = load double, ptr @piref, align 8
  %192 = load double, ptr @three, align 8
  %193 = sitofp i32 %171 to double
  %194 = fmul double %192, %193
  %195 = fdiv double %191, %194
  %196 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not5.not34 = icmp slt i32 1, %171
  br i1 %.not5.not34, label %.lr.ph36, label %221

.lr.ph36:                                         ; preds = %159
  br label %197

197:                                              ; preds = %.lr.ph36, %197
  %198 = phi i32 [ 1, %.lr.ph36 ], [ %220, %197 ]
  %199 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %219, %197 ]
  %200 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %202, %197 ]
  %201 = load double, ptr @one, align 8
  %202 = fadd double %200, %201
  %203 = fmul double %202, %195
  %204 = fmul double %203, %203
  store double %204, ptr %1, align 8
  %205 = load double, ptr @A6, align 8
  %206 = load double, ptr @A5, align 8
  %207 = fneg double %206
  %208 = call double @llvm.fmuladd.f64(double %205, double %204, double %207)
  %209 = load double, ptr @A4, align 8
  %210 = call double @llvm.fmuladd.f64(double %208, double %204, double %209)
  %211 = load double, ptr @A3, align 8
  %212 = fneg double %211
  %213 = call double @llvm.fmuladd.f64(double %210, double %204, double %212)
  %214 = load double, ptr @A2, align 8
  %215 = call double @llvm.fmuladd.f64(double %213, double %204, double %214)
  %216 = load double, ptr @A1, align 8
  %217 = call double @llvm.fmuladd.f64(double %215, double %204, double %216)
  %218 = call double @llvm.fmuladd.f64(double %217, double %204, double %201)
  %219 = call double @llvm.fmuladd.f64(double %203, double %218, double %199)
  %220 = add nuw nsw i32 %198, 1
  %.not5.not = icmp slt i32 %220, %171
  br i1 %.not5.not, label %197, label %._crit_edge37, !llvm.loop !16

._crit_edge37:                                    ; preds = %197
  %split38 = phi double [ %219, %197 ]
  br label %221

221:                                              ; preds = %._crit_edge37, %159
  %.lcssa5 = phi double [ %split38, %._crit_edge37 ], [ 0.000000e+00, %159 ]
  %222 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %223 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %224 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %225 = load double, ptr @nulltime, align 8
  %226 = fneg double %225
  %227 = call double @llvm.fmuladd.f64(double %223, double %224, double %226)
  store double %227, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %228 = load double, ptr @piref, align 8
  %229 = load double, ptr @three, align 8
  %230 = fdiv double %228, %229
  %231 = fmul double %230, %230
  store double %231, ptr %1, align 8
  %232 = load double, ptr @A6, align 8
  %233 = load double, ptr @A5, align 8
  %234 = fneg double %233
  %235 = call double @llvm.fmuladd.f64(double %232, double %231, double %234)
  %236 = load double, ptr @A4, align 8
  %237 = call double @llvm.fmuladd.f64(double %235, double %231, double %236)
  %238 = load double, ptr @A3, align 8
  %239 = fneg double %238
  %240 = call double @llvm.fmuladd.f64(double %237, double %231, double %239)
  %241 = load double, ptr @A2, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %231, double %241)
  %243 = load double, ptr @A1, align 8
  %244 = call double @llvm.fmuladd.f64(double %242, double %231, double %243)
  %245 = load double, ptr @one, align 8
  %246 = call double @llvm.fmuladd.f64(double %244, double %231, double %245)
  %247 = fmul double %230, %246
  store double %247, ptr @sa, align 8
  %248 = fdiv double %227, 1.700000e+01
  store double %248, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %249 = load double, ptr @two, align 8
  %250 = call double @llvm.fmuladd.f64(double %249, double %.lcssa5, double %247)
  %251 = fmul double %195, %250
  %252 = fdiv double %251, %249
  store double %252, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %253 = fadd double %252, -5.000000e-01
  store double %253, ptr @sc, align 8
  %254 = fdiv double %245, %248
  store double %254, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %255 = fmul double %253, 1.000000e-30
  %256 = fmul double %227, 1.000000e-30
  %257 = fmul double %254, 1.000000e-30
  %258 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %255, double noundef %256, double noundef %257) #5
  %259 = load double, ptr @A3, align 8
  %260 = fneg double %259
  store double %260, ptr @A3, align 8
  %261 = load double, ptr @A5, align 8
  %262 = fneg double %261
  store double %262, ptr @A5, align 8
  %263 = load double, ptr @piref, align 8
  %264 = load double, ptr @three, align 8
  %265 = fmul double %264, %193
  %266 = fdiv double %263, %265
  %267 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not6.not39 = icmp slt i32 1, %171
  br i1 %.not6.not39, label %.lr.ph41, label %289

.lr.ph41:                                         ; preds = %221
  br label %268

268:                                              ; preds = %.lr.ph41, %268
  %269 = phi i32 [ 1, %.lr.ph41 ], [ %288, %268 ]
  %270 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %287, %268 ]
  %271 = uitofp nneg i32 %269 to double
  %272 = fmul double %266, %271
  %273 = fmul double %272, %272
  store double %273, ptr %1, align 8
  %274 = load double, ptr @B6, align 8
  %275 = load double, ptr @B5, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %273, double %275)
  %277 = load double, ptr @B4, align 8
  %278 = call double @llvm.fmuladd.f64(double %273, double %276, double %277)
  %279 = load double, ptr @B3, align 8
  %280 = call double @llvm.fmuladd.f64(double %273, double %278, double %279)
  %281 = load double, ptr @B2, align 8
  %282 = call double @llvm.fmuladd.f64(double %273, double %280, double %281)
  %283 = load double, ptr @B1, align 8
  %284 = call double @llvm.fmuladd.f64(double %273, double %282, double %283)
  %285 = call double @llvm.fmuladd.f64(double %273, double %284, double %270)
  %286 = load double, ptr @one, align 8
  %287 = fadd double %285, %286
  %288 = add nuw nsw i32 %269, 1
  %.not6.not = icmp slt i32 %288, %171
  br i1 %.not6.not, label %268, label %._crit_edge42, !llvm.loop !17

._crit_edge42:                                    ; preds = %268
  %split43 = phi double [ %287, %268 ]
  br label %289

289:                                              ; preds = %._crit_edge42, %221
  %.lcssa4 = phi double [ %split43, %._crit_edge42 ], [ 0.000000e+00, %221 ]
  %290 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %291 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %292 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %293 = load double, ptr @nulltime, align 8
  %294 = fneg double %293
  %295 = call double @llvm.fmuladd.f64(double %291, double %292, double %294)
  store double %295, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %296 = load double, ptr @piref, align 8
  %297 = load double, ptr @three, align 8
  %298 = fdiv double %296, %297
  %299 = fmul double %298, %298
  store double %299, ptr %1, align 8
  %300 = load double, ptr @B6, align 8
  %301 = load double, ptr @B5, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %299, double %301)
  %303 = load double, ptr @B4, align 8
  %304 = call double @llvm.fmuladd.f64(double %299, double %302, double %303)
  %305 = load double, ptr @B3, align 8
  %306 = call double @llvm.fmuladd.f64(double %299, double %304, double %305)
  %307 = load double, ptr @B2, align 8
  %308 = call double @llvm.fmuladd.f64(double %299, double %306, double %307)
  %309 = load double, ptr @B1, align 8
  %310 = call double @llvm.fmuladd.f64(double %299, double %308, double %309)
  %311 = load double, ptr @one, align 8
  %312 = call double @llvm.fmuladd.f64(double %299, double %310, double %311)
  store double %312, ptr @sa, align 8
  %313 = fdiv double %295, 1.500000e+01
  store double %313, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %314 = fadd double %312, %311
  %315 = load double, ptr @two, align 8
  %316 = call double @llvm.fmuladd.f64(double %315, double %.lcssa4, double %314)
  %317 = fmul double %266, %316
  %318 = fdiv double %317, %315
  store double %318, ptr @sa, align 8
  store double %299, ptr %1, align 8
  %319 = load double, ptr @A6, align 8
  %320 = load double, ptr @A5, align 8
  %321 = call double @llvm.fmuladd.f64(double %319, double %299, double %320)
  %322 = load double, ptr @A4, align 8
  %323 = call double @llvm.fmuladd.f64(double %321, double %299, double %322)
  %324 = load double, ptr @A3, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %299, double %324)
  %326 = load double, ptr @A2, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %299, double %326)
  %328 = load double, ptr @A1, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %299, double %328)
  %330 = load double, ptr @A0, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %299, double %330)
  %332 = fmul double %298, %331
  store double %332, ptr @sb, align 8
  %333 = fsub double %318, %332
  store double %333, ptr @sc, align 8
  %334 = fdiv double %311, %313
  store double %334, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %335 = fmul double %333, 1.000000e-30
  %336 = fmul double %295, 1.000000e-30
  %337 = fmul double %334, 1.000000e-30
  %338 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %335, double noundef %336, double noundef %337) #5
  %339 = load double, ptr @piref, align 8
  %340 = load double, ptr @three, align 8
  %341 = fmul double %340, %193
  %342 = fdiv double %339, %341
  %343 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not7.not44 = icmp slt i32 1, %171
  br i1 %.not7.not44, label %.lr.ph46, label %379

.lr.ph46:                                         ; preds = %289
  br label %344

344:                                              ; preds = %.lr.ph46, %344
  %345 = phi i32 [ 1, %.lr.ph46 ], [ %378, %344 ]
  %346 = phi double [ 0.000000e+00, %.lr.ph46 ], [ %377, %344 ]
  %347 = uitofp nneg i32 %345 to double
  %348 = fmul double %342, %347
  %349 = fmul double %348, %348
  store double %349, ptr %1, align 8
  %350 = load double, ptr @A6, align 8
  %351 = load double, ptr @A5, align 8
  %352 = call double @llvm.fmuladd.f64(double %350, double %349, double %351)
  %353 = load double, ptr @A4, align 8
  %354 = call double @llvm.fmuladd.f64(double %352, double %349, double %353)
  %355 = load double, ptr @A3, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %349, double %355)
  %357 = load double, ptr @A2, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %349, double %357)
  %359 = load double, ptr @A1, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %349, double %359)
  %361 = load double, ptr @one, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %349, double %361)
  %363 = fmul double %348, %362
  %364 = load double, ptr @B6, align 8
  %365 = load double, ptr @B5, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %349, double %365)
  %367 = load double, ptr @B4, align 8
  %368 = call double @llvm.fmuladd.f64(double %349, double %366, double %367)
  %369 = load double, ptr @B3, align 8
  %370 = call double @llvm.fmuladd.f64(double %349, double %368, double %369)
  %371 = load double, ptr @B2, align 8
  %372 = call double @llvm.fmuladd.f64(double %349, double %370, double %371)
  %373 = load double, ptr @B1, align 8
  %374 = call double @llvm.fmuladd.f64(double %349, double %372, double %373)
  %375 = call double @llvm.fmuladd.f64(double %349, double %374, double %361)
  %376 = fdiv double %363, %375
  %377 = fadd double %346, %376
  %378 = add nuw nsw i32 %345, 1
  %.not7.not = icmp slt i32 %378, %171
  br i1 %.not7.not, label %344, label %._crit_edge47, !llvm.loop !18

._crit_edge47:                                    ; preds = %344
  %split48 = phi double [ %377, %344 ]
  br label %379

379:                                              ; preds = %._crit_edge47, %289
  %.lcssa3 = phi double [ %split48, %._crit_edge47 ], [ 0.000000e+00, %289 ]
  %380 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %381 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %382 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %383 = load double, ptr @nulltime, align 8
  %384 = fneg double %383
  %385 = call double @llvm.fmuladd.f64(double %381, double %382, double %384)
  store double %385, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %386 = load double, ptr @piref, align 8
  %387 = load double, ptr @three, align 8
  %388 = fdiv double %386, %387
  %389 = fmul double %388, %388
  store double %389, ptr %1, align 8
  %390 = load double, ptr @A6, align 8
  %391 = load double, ptr @A5, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %389, double %391)
  %393 = load double, ptr @A4, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %389, double %393)
  %395 = load double, ptr @A3, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %389, double %395)
  %397 = load double, ptr @A2, align 8
  %398 = call double @llvm.fmuladd.f64(double %396, double %389, double %397)
  %399 = load double, ptr @A1, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %389, double %399)
  %401 = load double, ptr @one, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %389, double %401)
  %403 = fmul double %388, %402
  store double %403, ptr @sa, align 8
  %404 = load double, ptr @B6, align 8
  %405 = load double, ptr @B5, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %389, double %405)
  %407 = load double, ptr @B4, align 8
  %408 = call double @llvm.fmuladd.f64(double %389, double %406, double %407)
  %409 = load double, ptr @B3, align 8
  %410 = call double @llvm.fmuladd.f64(double %389, double %408, double %409)
  %411 = load double, ptr @B2, align 8
  %412 = call double @llvm.fmuladd.f64(double %389, double %410, double %411)
  %413 = load double, ptr @B1, align 8
  %414 = call double @llvm.fmuladd.f64(double %389, double %412, double %413)
  %415 = call double @llvm.fmuladd.f64(double %389, double %414, double %401)
  store double %415, ptr @sb, align 8
  %416 = fdiv double %403, %415
  store double %416, ptr @sa, align 8
  %417 = fdiv double %385, 2.900000e+01
  store double %417, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %418 = load double, ptr @two, align 8
  %419 = call double @llvm.fmuladd.f64(double %418, double %.lcssa3, double %416)
  %420 = fmul double %342, %419
  %421 = fdiv double %420, %418
  store double %421, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %422 = fadd double %421, f0xBFE62E42FEFA39EF
  store double %422, ptr @sc, align 8
  %423 = fdiv double %401, %417
  store double %423, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %424 = fmul double %422, 1.000000e-30
  %425 = fmul double %385, 1.000000e-30
  %426 = fmul double %423, 1.000000e-30
  %427 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %424, double noundef %425, double noundef %426) #5
  %428 = load double, ptr @piref, align 8
  %429 = load double, ptr @four, align 8
  %430 = fmul double %429, %193
  %431 = fdiv double %428, %430
  %432 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not8.not49 = icmp slt i32 1, %171
  br i1 %.not8.not49, label %.lr.ph51, label %467

.lr.ph51:                                         ; preds = %379
  br label %433

433:                                              ; preds = %.lr.ph51, %433
  %434 = phi i32 [ 1, %.lr.ph51 ], [ %466, %433 ]
  %435 = phi double [ 0.000000e+00, %.lr.ph51 ], [ %465, %433 ]
  %436 = uitofp nneg i32 %434 to double
  %437 = fmul double %431, %436
  %438 = fmul double %437, %437
  store double %438, ptr %1, align 8
  %439 = load double, ptr @A6, align 8
  %440 = load double, ptr @A5, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %438, double %440)
  %442 = load double, ptr @A4, align 8
  %443 = call double @llvm.fmuladd.f64(double %441, double %438, double %442)
  %444 = load double, ptr @A3, align 8
  %445 = call double @llvm.fmuladd.f64(double %443, double %438, double %444)
  %446 = load double, ptr @A2, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %438, double %446)
  %448 = load double, ptr @A1, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %438, double %448)
  %450 = load double, ptr @one, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %438, double %450)
  %452 = fmul double %437, %451
  %453 = load double, ptr @B6, align 8
  %454 = load double, ptr @B5, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %438, double %454)
  %456 = load double, ptr @B4, align 8
  %457 = call double @llvm.fmuladd.f64(double %438, double %455, double %456)
  %458 = load double, ptr @B3, align 8
  %459 = call double @llvm.fmuladd.f64(double %438, double %457, double %458)
  %460 = load double, ptr @B2, align 8
  %461 = call double @llvm.fmuladd.f64(double %438, double %459, double %460)
  %462 = load double, ptr @B1, align 8
  %463 = call double @llvm.fmuladd.f64(double %438, double %461, double %462)
  %464 = call double @llvm.fmuladd.f64(double %438, double %463, double %450)
  %465 = call double @llvm.fmuladd.f64(double %452, double %464, double %435)
  %466 = add nuw nsw i32 %434, 1
  %.not8.not = icmp slt i32 %466, %171
  br i1 %.not8.not, label %433, label %._crit_edge52, !llvm.loop !19

._crit_edge52:                                    ; preds = %433
  %split53 = phi double [ %465, %433 ]
  br label %467

467:                                              ; preds = %._crit_edge52, %379
  %.lcssa2 = phi double [ %split53, %._crit_edge52 ], [ 0.000000e+00, %379 ]
  %468 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %469 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %470 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %471 = load double, ptr @nulltime, align 8
  %472 = fneg double %471
  %473 = call double @llvm.fmuladd.f64(double %469, double %470, double %472)
  store double %473, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %474 = load double, ptr @piref, align 8
  %475 = load double, ptr @four, align 8
  %476 = fdiv double %474, %475
  %477 = fmul double %476, %476
  store double %477, ptr %1, align 8
  %478 = load double, ptr @A6, align 8
  %479 = load double, ptr @A5, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %477, double %479)
  %481 = load double, ptr @A4, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %477, double %481)
  %483 = load double, ptr @A3, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %477, double %483)
  %485 = load double, ptr @A2, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %477, double %485)
  %487 = load double, ptr @A1, align 8
  %488 = call double @llvm.fmuladd.f64(double %486, double %477, double %487)
  %489 = load double, ptr @one, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %477, double %489)
  %491 = fmul double %476, %490
  store double %491, ptr @sa, align 8
  %492 = load double, ptr @B6, align 8
  %493 = load double, ptr @B5, align 8
  %494 = call double @llvm.fmuladd.f64(double %492, double %477, double %493)
  %495 = load double, ptr @B4, align 8
  %496 = call double @llvm.fmuladd.f64(double %477, double %494, double %495)
  %497 = load double, ptr @B3, align 8
  %498 = call double @llvm.fmuladd.f64(double %477, double %496, double %497)
  %499 = load double, ptr @B2, align 8
  %500 = call double @llvm.fmuladd.f64(double %477, double %498, double %499)
  %501 = load double, ptr @B1, align 8
  %502 = call double @llvm.fmuladd.f64(double %477, double %500, double %501)
  %503 = call double @llvm.fmuladd.f64(double %477, double %502, double %489)
  store double %503, ptr @sb, align 8
  %504 = fmul double %491, %503
  store double %504, ptr @sa, align 8
  %505 = fdiv double %473, 2.900000e+01
  store double %505, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %506 = load double, ptr @two, align 8
  %507 = call double @llvm.fmuladd.f64(double %506, double %.lcssa2, double %504)
  %508 = fmul double %431, %507
  %509 = fdiv double %508, %506
  store double %509, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %510 = fadd double %509, -2.500000e-01
  store double %510, ptr @sc, align 8
  %511 = fdiv double %489, %505
  store double %511, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %512 = fmul double %510, 1.000000e-30
  %513 = fmul double %473, 1.000000e-30
  %514 = fmul double %511, 1.000000e-30
  %515 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %512, double noundef %513, double noundef %514) #5
  %516 = load double, ptr @one, align 8
  store double %516, ptr %1, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %517 = fdiv double f0x40599541F7F192A4, %193
  %518 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not54 = icmp slt i32 1, %171
  br i1 %.not9.not54, label %.lr.ph56, label %536

.lr.ph56:                                         ; preds = %467
  br label %519

519:                                              ; preds = %.lr.ph56, %519
  %520 = phi i32 [ 1, %.lr.ph56 ], [ %535, %519 ]
  %521 = phi double [ 0.000000e+00, %.lr.ph56 ], [ %534, %519 ]
  %522 = uitofp nneg i32 %520 to double
  %523 = fmul double %517, %522
  %524 = fmul double %523, %523
  %525 = load double, ptr %1, align 8
  %526 = fadd double %523, %525
  %527 = fdiv double %525, %526
  %528 = fsub double %521, %527
  %529 = fadd double %524, %525
  %530 = fdiv double %523, %529
  %531 = fsub double %528, %530
  %532 = call double @llvm.fmuladd.f64(double %523, double %524, double %525)
  %533 = fdiv double %524, %532
  %534 = fsub double %531, %533
  %535 = add nuw nsw i32 %520, 1
  %.not9.not = icmp slt i32 %535, %171
  br i1 %.not9.not, label %519, label %._crit_edge57, !llvm.loop !20

._crit_edge57:                                    ; preds = %519
  %split58 = phi double [ %534, %519 ]
  br label %536

536:                                              ; preds = %._crit_edge57, %467
  %.lcssa1 = phi double [ %split58, %._crit_edge57 ], [ 0.000000e+00, %467 ]
  %537 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %538 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %539 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %540 = load double, ptr @nulltime, align 8
  %541 = fneg double %540
  %542 = call double @llvm.fmuladd.f64(double %538, double %539, double %541)
  store double %542, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %543 = fdiv double %542, 1.200000e+01
  store double %543, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %544 = load double, ptr @sa, align 8
  %545 = fmul double %544, %544
  %546 = load double, ptr %1, align 8
  %547 = fneg double %546
  %548 = fadd double %544, %546
  %549 = fdiv double %546, %548
  %550 = fsub double %547, %549
  %551 = fadd double %545, %546
  %552 = fdiv double %544, %551
  %553 = fsub double %550, %552
  %554 = call double @llvm.fmuladd.f64(double %544, double %545, double %546)
  %555 = fdiv double %545, %554
  %556 = fsub double %553, %555
  store double %556, ptr @sa, align 8
  %557 = fmul nnan double %517, 1.800000e+01
  %558 = load double, ptr @two, align 8
  %559 = call double @llvm.fmuladd.f64(double %558, double %.lcssa1, double %556)
  %560 = fmul double %557, %559
  store double %560, ptr @sa, align 8
  %561 = fptosi double %560 to i32
  %562 = mul nsw i32 %561, -2000
  store i32 %562, ptr %2, align 4
  %563 = sitofp i32 %562 to double
  %564 = load double, ptr @scale, align 8
  %565 = fdiv double %563, %564
  %566 = fptosi double %565 to i32
  store i32 %566, ptr %2, align 4
  %567 = fadd double %560, 5.002000e+02
  store double %567, ptr @sc, align 8
  %568 = load double, ptr @one, align 8
  %569 = fdiv double %568, %543
  store double %569, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %570 = fmul double %567, 1.000000e-30
  %571 = fmul double %542, 1.000000e-30
  %572 = fmul double %569, 1.000000e-30
  %573 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %570, double noundef %571, double noundef %572) #5
  %574 = load double, ptr @piref, align 8
  %575 = load double, ptr @three, align 8
  %576 = sitofp i32 %566 to double
  %577 = fmul double %575, %576
  %578 = fdiv double %574, %577
  %579 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not10.not59 = icmp slt i32 1, %566
  br i1 %.not10.not59, label %.lr.ph61, label %615

.lr.ph61:                                         ; preds = %536
  br label %580

580:                                              ; preds = %.lr.ph61, %580
  %581 = phi i32 [ 1, %.lr.ph61 ], [ %614, %580 ]
  %582 = phi double [ 0.000000e+00, %.lr.ph61 ], [ %613, %580 ]
  %583 = uitofp nneg i32 %581 to double
  %584 = fmul double %578, %583
  %585 = fmul double %584, %584
  store double %585, ptr %1, align 8
  %586 = load double, ptr @B6, align 8
  %587 = load double, ptr @B5, align 8
  %588 = call double @llvm.fmuladd.f64(double %586, double %585, double %587)
  %589 = load double, ptr @B4, align 8
  %590 = call double @llvm.fmuladd.f64(double %585, double %588, double %589)
  %591 = load double, ptr @B3, align 8
  %592 = call double @llvm.fmuladd.f64(double %585, double %590, double %591)
  %593 = load double, ptr @B2, align 8
  %594 = call double @llvm.fmuladd.f64(double %585, double %592, double %593)
  %595 = load double, ptr @B1, align 8
  %596 = call double @llvm.fmuladd.f64(double %585, double %594, double %595)
  %597 = load double, ptr @one, align 8
  %598 = call double @llvm.fmuladd.f64(double %585, double %596, double %597)
  %599 = fmul double %598, %598
  %600 = fmul double %599, %584
  %601 = load double, ptr @A6, align 8
  %602 = load double, ptr @A5, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %585, double %602)
  %604 = load double, ptr @A4, align 8
  %605 = call double @llvm.fmuladd.f64(double %603, double %585, double %604)
  %606 = load double, ptr @A3, align 8
  %607 = call double @llvm.fmuladd.f64(double %605, double %585, double %606)
  %608 = load double, ptr @A2, align 8
  %609 = call double @llvm.fmuladd.f64(double %607, double %585, double %608)
  %610 = load double, ptr @A1, align 8
  %611 = call double @llvm.fmuladd.f64(double %609, double %585, double %610)
  %612 = call double @llvm.fmuladd.f64(double %611, double %585, double %597)
  %613 = call double @llvm.fmuladd.f64(double %600, double %612, double %582)
  %614 = add nuw nsw i32 %581, 1
  %.not10.not = icmp slt i32 %614, %566
  br i1 %.not10.not, label %580, label %._crit_edge62, !llvm.loop !21

._crit_edge62:                                    ; preds = %580
  %split63 = phi double [ %613, %580 ]
  br label %615

615:                                              ; preds = %._crit_edge62, %536
  %.lcssa = phi double [ %split63, %._crit_edge62 ], [ 0.000000e+00, %536 ]
  %616 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %617 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %619 = load double, ptr @nulltime, align 8
  %620 = fneg double %619
  %621 = call double @llvm.fmuladd.f64(double %617, double %618, double %620)
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %622 = load double, ptr @piref, align 8
  %623 = load double, ptr @three, align 8
  %624 = fdiv double %622, %623
  %625 = fmul double %624, %624
  store double %625, ptr %1, align 8
  %626 = load double, ptr @A6, align 8
  %627 = load double, ptr @A5, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %625, double %627)
  %629 = load double, ptr @A4, align 8
  %630 = call double @llvm.fmuladd.f64(double %628, double %625, double %629)
  %631 = load double, ptr @A3, align 8
  %632 = call double @llvm.fmuladd.f64(double %630, double %625, double %631)
  %633 = load double, ptr @A2, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %625, double %633)
  %635 = load double, ptr @A1, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %625, double %635)
  %637 = load double, ptr @one, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %625, double %637)
  %639 = fmul double %624, %638
  store double %639, ptr @sa, align 8
  %640 = load double, ptr @B6, align 8
  %641 = load double, ptr @B5, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %625, double %641)
  %643 = load double, ptr @B4, align 8
  %644 = call double @llvm.fmuladd.f64(double %625, double %642, double %643)
  %645 = load double, ptr @B3, align 8
  %646 = call double @llvm.fmuladd.f64(double %625, double %644, double %645)
  %647 = load double, ptr @B2, align 8
  %648 = call double @llvm.fmuladd.f64(double %625, double %646, double %647)
  %649 = load double, ptr @B1, align 8
  %650 = call double @llvm.fmuladd.f64(double %625, double %648, double %649)
  %651 = call double @llvm.fmuladd.f64(double %625, double %650, double %637)
  store double %651, ptr @sb, align 8
  %652 = fmul double %639, %651
  %653 = fmul double %652, %651
  store double %653, ptr @sa, align 8
  %654 = fdiv double %621, 3.000000e+01
  store double %654, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %655 = load double, ptr @two, align 8
  %656 = call double @llvm.fmuladd.f64(double %655, double %.lcssa, double %653)
  %657 = fmul double %578, %656
  %658 = fdiv double %657, %655
  store double %658, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %659 = fadd double %658, f0xBFD2AAAAAAAAAAAB
  store double %659, ptr @sc, align 8
  %660 = fdiv double %637, %654
  store double %660, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %661 = fmul double %659, 1.000000e-30
  %662 = fmul double %621, 1.000000e-30
  %663 = fmul double %660, 1.000000e-30
  %664 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %661, double noundef %662, double noundef %663) #5
  %665 = load double, ptr @five, align 8
  %666 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %668 = fsub double %666, %667
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %670 = call double @llvm.fmuladd.f64(double %665, double %668, double %669)
  %671 = fdiv double %670, 5.200000e+01
  store double %671, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %672 = load double, ptr @one, align 8
  %673 = fdiv double %672, %671
  store double %673, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %675 = fadd double %674, %669
  %676 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %677 = fadd double %675, %676
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %679 = fadd double %677, %678
  %680 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %681 = fadd double %679, %680
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %682 = load double, ptr @four, align 8
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %684 = call double @llvm.fmuladd.f64(double %682, double %683, double %681)
  %685 = fdiv double %684, 1.520000e+02
  store double %685, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %686 = fdiv double %672, %685
  store double %686, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %687 = fadd double %681, %683
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %689 = fadd double %687, %688
  %690 = fdiv double %689, 1.460000e+02
  store double %690, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %691 = fdiv double %672, %690
  store double %691, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %692 = fadd double %669, %676
  %693 = fadd double %692, %680
  %694 = fadd double %693, %688
  %695 = fdiv double %694, 9.100000e+01
  store double %695, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %696 = fdiv double %672, %695
  store double %696, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %697 = load i32, ptr %2, align 4
  %698 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %697) #5
  %699 = load double, ptr @nulltime, align 8
  %700 = fmul double %699, 1.000000e-30
  %701 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %700) #5
  %702 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %703 = fmul double %702, 1.000000e-30
  %704 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %703) #5
  %705 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %706 = fmul double %705, 1.000000e-30
  %707 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %706) #5
  %708 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %709 = fmul double %708, 1.000000e-30
  %710 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %709) #5
  %711 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %712 = fmul double %711, 1.000000e-30
  %713 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %712) #5
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
