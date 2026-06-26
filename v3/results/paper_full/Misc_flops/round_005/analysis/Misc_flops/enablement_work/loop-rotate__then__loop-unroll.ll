; ModuleID = 'results\paper_full\Misc_flops\round_004\output.ll'
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
  %19 = load double, ptr @D1, align 8
  %20 = load double, ptr @D2, align 8
  %21 = load double, ptr @D3, align 8
  %22 = load double, ptr @E2, align 8
  %23 = load double, ptr @E3, align 8
  %.not.not18 = icmp slt i32 1, %14
  br i1 %.not.not18, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %12
  br label %24

24:                                               ; preds = %.lr.ph, %24
  %25 = phi i32 [ 1, %.lr.ph ], [ %37, %24 ]
  %26 = phi double [ 0.000000e+00, %.lr.ph ], [ %36, %24 ]
  %27 = phi double [ 0.000000e+00, %.lr.ph ], [ %28, %24 ]
  %28 = fadd double %27, %15
  %29 = fmul double %28, %17
  %30 = call double @llvm.fmuladd.f64(double %29, double %21, double %20)
  %31 = call double @llvm.fmuladd.f64(double %29, double %30, double %19)
  %32 = call double @llvm.fmuladd.f64(double %29, double %23, double %22)
  %33 = call double @llvm.fmuladd.f64(double %29, double %32, double %19)
  %34 = call double @llvm.fmuladd.f64(double %29, double %33, double %15)
  %35 = fdiv double %31, %34
  %36 = fadd double %26, %35
  %37 = add nuw nsw i32 %25, 1
  %.not.not = icmp slt i32 %37, %14
  br i1 %.not.not, label %24, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %24
  %split = phi double [ %36, %24 ]
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
  %sa.promoted = load double, ptr @sa, align 8
  %.not24 = icmp sgt i32 1, %92
  br i1 %.not24, label %124, label %.lr.ph26

.lr.ph26:                                         ; preds = %63
  %104 = add i32 %92, -1
  %xtraiter68 = and i32 %92, 3
  %105 = icmp ult i32 %104, 3
  br i1 %105, label %.epil.preheader67, label %.lr.ph26.new

.lr.ph26.new:                                     ; preds = %.lr.ph26
  %unroll_iter79 = sub i32 %92, %xtraiter68
  br label %106

106:                                              ; preds = %106, %.lr.ph26.new
  %107 = phi i32 [ 1, %.lr.ph26.new ], [ %116, %106 ]
  %108 = phi double [ %100, %.lr.ph26.new ], [ %108, %106 ]
  %109 = phi double [ %sa.promoted, %.lr.ph26.new ], [ %115, %106 ]
  %niter80 = phi i32 [ 0, %.lr.ph26.new ], [ %niter80.next.3, %106 ]
  %110 = fneg double %108
  %111 = fsub double %109, %108
  store double %111, ptr @sa, align 8
  %112 = fsub double %111, %110
  store double %112, ptr @sa, align 8
  %113 = fneg double %108
  %114 = fsub double %112, %108
  store double %114, ptr @sa, align 8
  %115 = fsub double %114, %113
  store double %115, ptr @sa, align 8
  %116 = add nuw nsw i32 %107, 4
  %niter80.next.3 = add i32 %niter80, 4
  %niter80.ncmp.3 = icmp eq i32 %niter80.next.3, %unroll_iter79
  br i1 %niter80.ncmp.3, label %._crit_edge27.unr-lcssa, label %106, !llvm.loop !13

._crit_edge27.unr-lcssa:                          ; preds = %106
  %split28.ph = phi double [ %108, %106 ]
  %.unr70 = phi i32 [ %116, %106 ]
  %.unr72 = phi double [ %108, %106 ]
  %.unr74 = phi double [ %115, %106 ]
  %lcmp.mod76 = icmp ne i32 %xtraiter68, 0
  br i1 %lcmp.mod76, label %.epil.preheader67, label %._crit_edge27

.epil.preheader67:                                ; preds = %._crit_edge27.unr-lcssa, %.lr.ph26
  %.epil.init71 = phi i32 [ 1, %.lr.ph26 ], [ %.unr70, %._crit_edge27.unr-lcssa ]
  %.epil.init73 = phi double [ %100, %.lr.ph26 ], [ %.unr72, %._crit_edge27.unr-lcssa ]
  %.epil.init75 = phi double [ %sa.promoted, %.lr.ph26 ], [ %.unr74, %._crit_edge27.unr-lcssa ]
  %lcmp.mod78 = icmp ne i32 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %117

117:                                              ; preds = %117, %.epil.preheader67
  %118 = phi i32 [ %.epil.init71, %.epil.preheader67 ], [ %123, %117 ]
  %119 = phi double [ %.epil.init73, %.epil.preheader67 ], [ %121, %117 ]
  %120 = phi double [ %.epil.init75, %.epil.preheader67 ], [ %122, %117 ]
  %epil.iter69 = phi i32 [ 0, %.epil.preheader67 ], [ %epil.iter69.next, %117 ]
  %121 = fneg double %119
  %122 = fsub double %120, %119
  store double %122, ptr @sa, align 8
  %123 = add nuw nsw i32 %118, 1
  %.not.epil = icmp sgt i32 %123, %92
  %epil.iter69.next = add i32 %epil.iter69, 1
  %epil.iter69.cmp = icmp ne i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp, label %117, label %._crit_edge27.epilog-lcssa, !llvm.loop !14

._crit_edge27.epilog-lcssa:                       ; preds = %117
  %split28.ph77 = phi double [ %121, %117 ]
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.unr-lcssa, %._crit_edge27.epilog-lcssa
  %split28 = phi double [ %split28.ph, %._crit_edge27.unr-lcssa ], [ %split28.ph77, %._crit_edge27.epilog-lcssa ]
  br label %124

124:                                              ; preds = %._crit_edge27, %63
  %.lcssa9 = phi double [ %split28, %._crit_edge27 ], [ %100, %63 ]
  %125 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %128 = fmul double %126, %127
  %129 = fcmp olt double %128, 0.000000e+00
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %124
  %storemerge = phi double [ 0.000000e+00, %130 ], [ %128, %124 ]
  store double %storemerge, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %132 = sitofp i32 %92 to double
  store double %132, ptr @sc, align 8
  %133 = load double, ptr @sa, align 8
  %134 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %135 = load double, ptr @two, align 8
  %sa.promoted18 = load double, ptr @sa, align 8
  %.not429 = icmp sgt i32 1, %92
  br i1 %.not429, label %170, label %.lr.ph31

.lr.ph31:                                         ; preds = %131
  %136 = add i32 %92, -1
  %xtraiter82 = and i32 %92, 1
  %137 = icmp ult i32 %136, 1
  br i1 %137, label %.epil.preheader81, label %.lr.ph31.new

.lr.ph31.new:                                     ; preds = %.lr.ph31
  %unroll_iter103 = sub i32 %92, %xtraiter82
  br label %138

138:                                              ; preds = %138, %.lr.ph31.new
  %139 = phi i32 [ 1, %.lr.ph31.new ], [ %161, %138 ]
  %140 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %157, %138 ]
  %141 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %158, %138 ]
  %142 = phi double [ %.lcssa9, %.lr.ph31.new ], [ %142, %138 ]
  %143 = phi double [ %133, %.lr.ph31.new ], [ %155, %138 ]
  %144 = phi double [ 0.000000e+00, %.lr.ph31.new ], [ %160, %138 ]
  %145 = phi double [ %sa.promoted18, %.lr.ph31.new ], [ %154, %138 ]
  %niter104 = phi i32 [ 0, %.lr.ph31.new ], [ %niter104.next.1, %138 ]
  %146 = fneg double %142
  %147 = fsub double %145, %142
  store double %147, ptr @sa, align 8
  %148 = fadd double %143, %135
  %149 = fsub double %146, %148
  %150 = fadd double %140, %149
  %151 = call double @llvm.fmuladd.f64(double %142, double %148, double %141)
  %152 = fdiv double %142, %148
  %153 = fsub double %144, %152
  %154 = fsub double %147, %146
  store double %154, ptr @sa, align 8
  %155 = fadd double %148, %135
  %156 = fsub double %142, %155
  %157 = fadd double %150, %156
  %158 = call double @llvm.fmuladd.f64(double %146, double %155, double %151)
  %159 = fdiv double %146, %155
  %160 = fsub double %153, %159
  %161 = add nuw nsw i32 %139, 2
  %niter104.next.1 = add i32 %niter104, 2
  %niter104.ncmp.1 = icmp eq i32 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %._crit_edge32.unr-lcssa, label %138, !llvm.loop !15

._crit_edge32.unr-lcssa:                          ; preds = %138
  %split33.ph = phi double [ %160, %138 ]
  %split34.ph = phi double [ %158, %138 ]
  %split35.ph = phi double [ %157, %138 ]
  %.unr86 = phi double [ %157, %138 ]
  %.unr88 = phi double [ %158, %138 ]
  %.unr90 = phi double [ %142, %138 ]
  %.unr92 = phi double [ %155, %138 ]
  %.unr94 = phi double [ %160, %138 ]
  %.unr96 = phi double [ %154, %138 ]
  %lcmp.mod98 = icmp ne i32 %xtraiter82, 0
  br i1 %lcmp.mod98, label %.epil.preheader81, label %._crit_edge32

.epil.preheader81:                                ; preds = %._crit_edge32.unr-lcssa, %.lr.ph31
  %.epil.init87 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr86, %._crit_edge32.unr-lcssa ]
  %.epil.init89 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr88, %._crit_edge32.unr-lcssa ]
  %.epil.init91 = phi double [ %.lcssa9, %.lr.ph31 ], [ %.unr90, %._crit_edge32.unr-lcssa ]
  %.epil.init93 = phi double [ %133, %.lr.ph31 ], [ %.unr92, %._crit_edge32.unr-lcssa ]
  %.epil.init95 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %.unr94, %._crit_edge32.unr-lcssa ]
  %.epil.init97 = phi double [ %sa.promoted18, %.lr.ph31 ], [ %.unr96, %._crit_edge32.unr-lcssa ]
  %lcmp.mod102 = icmp ne i32 %xtraiter82, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %._crit_edge32.epilog-lcssa

._crit_edge32.epilog-lcssa:                       ; preds = %.epil.preheader81
  %162 = fneg double %.epil.init91
  %163 = fsub double %.epil.init97, %.epil.init91
  store double %163, ptr @sa, align 8
  %164 = fadd double %.epil.init93, %135
  %165 = fsub double %162, %164
  %166 = fadd double %.epil.init87, %165
  %167 = call double @llvm.fmuladd.f64(double %.epil.init91, double %164, double %.epil.init89)
  %168 = fdiv double %.epil.init91, %164
  %169 = fsub double %.epil.init95, %168
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.unr-lcssa, %._crit_edge32.epilog-lcssa
  %split33 = phi double [ %split33.ph, %._crit_edge32.unr-lcssa ], [ %169, %._crit_edge32.epilog-lcssa ]
  %split34 = phi double [ %split34.ph, %._crit_edge32.unr-lcssa ], [ %167, %._crit_edge32.epilog-lcssa ]
  %split35 = phi double [ %split35.ph, %._crit_edge32.unr-lcssa ], [ %166, %._crit_edge32.epilog-lcssa ]
  br label %170

170:                                              ; preds = %._crit_edge32, %131
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %131 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %131 ]
  %.lcssa6 = phi double [ %split35, %._crit_edge32 ], [ 0.000000e+00, %131 ]
  %171 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %172 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %173 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %174 = fmul double %172, %173
  store double %174, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %176 = fsub double %174, %175
  %177 = fdiv double %176, 7.000000e+00
  store double %177, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %178 = load double, ptr @sa, align 8
  %179 = fmul double %178, %.lcssa6
  %180 = load double, ptr @sc, align 8
  %181 = fdiv double %179, %180
  %182 = fptosi double %181 to i32
  %183 = load double, ptr @four, align 8
  %184 = fmul double %183, %.lcssa8
  %185 = load double, ptr @five, align 8
  %186 = fdiv double %184, %185
  store double %186, ptr @sa, align 8
  %187 = fdiv double %185, %.lcssa7
  %188 = fadd double %186, %187
  store double %188, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %189 = fmul double %.lcssa7, %.lcssa7
  %190 = fmul double %189, %.lcssa7
  %191 = fdiv double 3.125000e+01, %190
  %192 = fsub double %188, %191
  store double %192, ptr @piprg, align 8
  %193 = load double, ptr @piref, align 8
  %194 = fsub double %192, %193
  store double %194, ptr @pierr, align 8
  %195 = load double, ptr @one, align 8
  %196 = fdiv double %195, %177
  store double %196, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %197 = fmul double %194, 1.000000e-30
  %198 = fmul double %176, 1.000000e-30
  %199 = fmul double %196, 1.000000e-30
  %200 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %197, double noundef %198, double noundef %199) #5
  %201 = load double, ptr @piref, align 8
  %202 = load double, ptr @three, align 8
  %203 = sitofp i32 %182 to double
  %204 = fmul double %202, %203
  %205 = fdiv double %201, %204
  %206 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %207 = load double, ptr @one, align 8
  %208 = load double, ptr @A6, align 8
  %209 = load double, ptr @A5, align 8
  %210 = fneg double %209
  %211 = load double, ptr @A4, align 8
  %212 = load double, ptr @A3, align 8
  %213 = fneg double %212
  %214 = load double, ptr @A2, align 8
  %215 = load double, ptr @A1, align 8
  %.not5.not36 = icmp slt i32 1, %182
  br i1 %.not5.not36, label %.lr.ph38, label %231

.lr.ph38:                                         ; preds = %170
  br label %216

216:                                              ; preds = %.lr.ph38, %216
  %217 = phi i32 [ 1, %.lr.ph38 ], [ %230, %216 ]
  %218 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %229, %216 ]
  %219 = phi double [ 0.000000e+00, %.lr.ph38 ], [ %220, %216 ]
  %220 = fadd double %219, %207
  %221 = fmul double %220, %205
  %222 = fmul double %221, %221
  %223 = call double @llvm.fmuladd.f64(double %208, double %222, double %210)
  %224 = call double @llvm.fmuladd.f64(double %223, double %222, double %211)
  %225 = call double @llvm.fmuladd.f64(double %224, double %222, double %213)
  %226 = call double @llvm.fmuladd.f64(double %225, double %222, double %214)
  %227 = call double @llvm.fmuladd.f64(double %226, double %222, double %215)
  %228 = call double @llvm.fmuladd.f64(double %227, double %222, double %207)
  %229 = call double @llvm.fmuladd.f64(double %221, double %228, double %218)
  %230 = add nuw nsw i32 %217, 1
  %.not5.not = icmp slt i32 %230, %182
  br i1 %.not5.not, label %216, label %._crit_edge39, !llvm.loop !16

._crit_edge39:                                    ; preds = %216
  %split40 = phi double [ %229, %216 ]
  br label %231

231:                                              ; preds = %._crit_edge39, %170
  %.lcssa5 = phi double [ %split40, %._crit_edge39 ], [ 0.000000e+00, %170 ]
  %232 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %235 = load double, ptr @nulltime, align 8
  %236 = fneg double %235
  %237 = call double @llvm.fmuladd.f64(double %233, double %234, double %236)
  store double %237, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %238 = load double, ptr @piref, align 8
  %239 = load double, ptr @three, align 8
  %240 = fdiv double %238, %239
  %241 = fmul double %240, %240
  %242 = load double, ptr @A6, align 8
  %243 = load double, ptr @A5, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %242, double %241, double %244)
  %246 = load double, ptr @A4, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %241, double %246)
  %248 = load double, ptr @A3, align 8
  %249 = fneg double %248
  %250 = call double @llvm.fmuladd.f64(double %247, double %241, double %249)
  %251 = load double, ptr @A2, align 8
  %252 = call double @llvm.fmuladd.f64(double %250, double %241, double %251)
  %253 = load double, ptr @A1, align 8
  %254 = call double @llvm.fmuladd.f64(double %252, double %241, double %253)
  %255 = load double, ptr @one, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %241, double %255)
  %257 = fmul double %240, %256
  store double %257, ptr @sa, align 8
  %258 = fdiv double %237, 1.700000e+01
  store double %258, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %259 = load double, ptr @two, align 8
  %260 = call double @llvm.fmuladd.f64(double %259, double %.lcssa5, double %257)
  %261 = fmul double %205, %260
  %262 = fdiv double %261, %259
  store double %262, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %263 = fadd double %262, -5.000000e-01
  store double %263, ptr @sc, align 8
  %264 = fdiv double %255, %258
  store double %264, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %265 = fmul double %263, 1.000000e-30
  %266 = fmul double %237, 1.000000e-30
  %267 = fmul double %264, 1.000000e-30
  %268 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %265, double noundef %266, double noundef %267) #5
  %269 = load double, ptr @A3, align 8
  %270 = fneg double %269
  store double %270, ptr @A3, align 8
  %271 = load double, ptr @A5, align 8
  %272 = fneg double %271
  store double %272, ptr @A5, align 8
  %273 = load double, ptr @piref, align 8
  %274 = load double, ptr @three, align 8
  %275 = fmul double %274, %203
  %276 = fdiv double %273, %275
  %277 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %278 = load double, ptr @B6, align 8
  %279 = load double, ptr @B5, align 8
  %280 = load double, ptr @B4, align 8
  %281 = load double, ptr @B3, align 8
  %282 = load double, ptr @B2, align 8
  %283 = load double, ptr @B1, align 8
  %284 = load double, ptr @one, align 8
  %.not6.not41 = icmp slt i32 1, %182
  br i1 %.not6.not41, label %.lr.ph43, label %299

.lr.ph43:                                         ; preds = %231
  br label %285

285:                                              ; preds = %.lr.ph43, %285
  %286 = phi i32 [ 1, %.lr.ph43 ], [ %298, %285 ]
  %287 = phi double [ 0.000000e+00, %.lr.ph43 ], [ %297, %285 ]
  %288 = uitofp nneg i32 %286 to double
  %289 = fmul double %276, %288
  %290 = fmul double %289, %289
  %291 = call double @llvm.fmuladd.f64(double %278, double %290, double %279)
  %292 = call double @llvm.fmuladd.f64(double %290, double %291, double %280)
  %293 = call double @llvm.fmuladd.f64(double %290, double %292, double %281)
  %294 = call double @llvm.fmuladd.f64(double %290, double %293, double %282)
  %295 = call double @llvm.fmuladd.f64(double %290, double %294, double %283)
  %296 = call double @llvm.fmuladd.f64(double %290, double %295, double %287)
  %297 = fadd double %296, %284
  %298 = add nuw nsw i32 %286, 1
  %.not6.not = icmp slt i32 %298, %182
  br i1 %.not6.not, label %285, label %._crit_edge44, !llvm.loop !17

._crit_edge44:                                    ; preds = %285
  %split45 = phi double [ %297, %285 ]
  br label %299

299:                                              ; preds = %._crit_edge44, %231
  %.lcssa4 = phi double [ %split45, %._crit_edge44 ], [ 0.000000e+00, %231 ]
  %300 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %301 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %302 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %303 = load double, ptr @nulltime, align 8
  %304 = fneg double %303
  %305 = call double @llvm.fmuladd.f64(double %301, double %302, double %304)
  store double %305, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %306 = load double, ptr @piref, align 8
  %307 = load double, ptr @three, align 8
  %308 = fdiv double %306, %307
  %309 = fmul double %308, %308
  %310 = load double, ptr @B6, align 8
  %311 = load double, ptr @B5, align 8
  %312 = call double @llvm.fmuladd.f64(double %310, double %309, double %311)
  %313 = load double, ptr @B4, align 8
  %314 = call double @llvm.fmuladd.f64(double %309, double %312, double %313)
  %315 = load double, ptr @B3, align 8
  %316 = call double @llvm.fmuladd.f64(double %309, double %314, double %315)
  %317 = load double, ptr @B2, align 8
  %318 = call double @llvm.fmuladd.f64(double %309, double %316, double %317)
  %319 = load double, ptr @B1, align 8
  %320 = call double @llvm.fmuladd.f64(double %309, double %318, double %319)
  %321 = load double, ptr @one, align 8
  %322 = call double @llvm.fmuladd.f64(double %309, double %320, double %321)
  store double %322, ptr @sa, align 8
  %323 = fdiv double %305, 1.500000e+01
  store double %323, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %324 = fadd double %322, %321
  %325 = load double, ptr @two, align 8
  %326 = call double @llvm.fmuladd.f64(double %325, double %.lcssa4, double %324)
  %327 = fmul double %276, %326
  %328 = fdiv double %327, %325
  store double %328, ptr @sa, align 8
  %329 = load double, ptr @A6, align 8
  %330 = load double, ptr @A5, align 8
  %331 = call double @llvm.fmuladd.f64(double %329, double %309, double %330)
  %332 = load double, ptr @A4, align 8
  %333 = call double @llvm.fmuladd.f64(double %331, double %309, double %332)
  %334 = load double, ptr @A3, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %309, double %334)
  %336 = load double, ptr @A2, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %309, double %336)
  %338 = load double, ptr @A1, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %309, double %338)
  %340 = load double, ptr @A0, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %309, double %340)
  %342 = fmul double %308, %341
  store double %342, ptr @sb, align 8
  %343 = fsub double %328, %342
  store double %343, ptr @sc, align 8
  %344 = fdiv double %321, %323
  store double %344, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %345 = fmul double %343, 1.000000e-30
  %346 = fmul double %305, 1.000000e-30
  %347 = fmul double %344, 1.000000e-30
  %348 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %345, double noundef %346, double noundef %347) #5
  %349 = load double, ptr @piref, align 8
  %350 = load double, ptr @three, align 8
  %351 = fmul double %350, %203
  %352 = fdiv double %349, %351
  %353 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %354 = load double, ptr @A6, align 8
  %355 = load double, ptr @A5, align 8
  %356 = load double, ptr @A4, align 8
  %357 = load double, ptr @A3, align 8
  %358 = load double, ptr @A2, align 8
  %359 = load double, ptr @A1, align 8
  %360 = load double, ptr @one, align 8
  %361 = load double, ptr @B6, align 8
  %362 = load double, ptr @B5, align 8
  %363 = load double, ptr @B4, align 8
  %364 = load double, ptr @B3, align 8
  %365 = load double, ptr @B2, align 8
  %366 = load double, ptr @B1, align 8
  %.not7.not46 = icmp slt i32 1, %182
  br i1 %.not7.not46, label %.lr.ph48, label %389

.lr.ph48:                                         ; preds = %299
  br label %367

367:                                              ; preds = %.lr.ph48, %367
  %368 = phi i32 [ 1, %.lr.ph48 ], [ %388, %367 ]
  %369 = phi double [ 0.000000e+00, %.lr.ph48 ], [ %387, %367 ]
  %370 = uitofp nneg i32 %368 to double
  %371 = fmul double %352, %370
  %372 = fmul double %371, %371
  %373 = call double @llvm.fmuladd.f64(double %354, double %372, double %355)
  %374 = call double @llvm.fmuladd.f64(double %373, double %372, double %356)
  %375 = call double @llvm.fmuladd.f64(double %374, double %372, double %357)
  %376 = call double @llvm.fmuladd.f64(double %375, double %372, double %358)
  %377 = call double @llvm.fmuladd.f64(double %376, double %372, double %359)
  %378 = call double @llvm.fmuladd.f64(double %377, double %372, double %360)
  %379 = fmul double %371, %378
  %380 = call double @llvm.fmuladd.f64(double %361, double %372, double %362)
  %381 = call double @llvm.fmuladd.f64(double %372, double %380, double %363)
  %382 = call double @llvm.fmuladd.f64(double %372, double %381, double %364)
  %383 = call double @llvm.fmuladd.f64(double %372, double %382, double %365)
  %384 = call double @llvm.fmuladd.f64(double %372, double %383, double %366)
  %385 = call double @llvm.fmuladd.f64(double %372, double %384, double %360)
  %386 = fdiv double %379, %385
  %387 = fadd double %369, %386
  %388 = add nuw nsw i32 %368, 1
  %.not7.not = icmp slt i32 %388, %182
  br i1 %.not7.not, label %367, label %._crit_edge49, !llvm.loop !18

._crit_edge49:                                    ; preds = %367
  %split50 = phi double [ %387, %367 ]
  br label %389

389:                                              ; preds = %._crit_edge49, %299
  %.lcssa3 = phi double [ %split50, %._crit_edge49 ], [ 0.000000e+00, %299 ]
  %390 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %391 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %392 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %393 = load double, ptr @nulltime, align 8
  %394 = fneg double %393
  %395 = call double @llvm.fmuladd.f64(double %391, double %392, double %394)
  store double %395, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %396 = load double, ptr @piref, align 8
  %397 = load double, ptr @three, align 8
  %398 = fdiv double %396, %397
  %399 = fmul double %398, %398
  %400 = load double, ptr @A6, align 8
  %401 = load double, ptr @A5, align 8
  %402 = call double @llvm.fmuladd.f64(double %400, double %399, double %401)
  %403 = load double, ptr @A4, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %399, double %403)
  %405 = load double, ptr @A3, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %399, double %405)
  %407 = load double, ptr @A2, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %399, double %407)
  %409 = load double, ptr @A1, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %399, double %409)
  %411 = load double, ptr @one, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %399, double %411)
  %413 = fmul double %398, %412
  store double %413, ptr @sa, align 8
  %414 = load double, ptr @B6, align 8
  %415 = load double, ptr @B5, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %399, double %415)
  %417 = load double, ptr @B4, align 8
  %418 = call double @llvm.fmuladd.f64(double %399, double %416, double %417)
  %419 = load double, ptr @B3, align 8
  %420 = call double @llvm.fmuladd.f64(double %399, double %418, double %419)
  %421 = load double, ptr @B2, align 8
  %422 = call double @llvm.fmuladd.f64(double %399, double %420, double %421)
  %423 = load double, ptr @B1, align 8
  %424 = call double @llvm.fmuladd.f64(double %399, double %422, double %423)
  %425 = call double @llvm.fmuladd.f64(double %399, double %424, double %411)
  store double %425, ptr @sb, align 8
  %426 = fdiv double %413, %425
  store double %426, ptr @sa, align 8
  %427 = fdiv double %395, 2.900000e+01
  store double %427, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %428 = load double, ptr @two, align 8
  %429 = call double @llvm.fmuladd.f64(double %428, double %.lcssa3, double %426)
  %430 = fmul double %352, %429
  %431 = fdiv double %430, %428
  store double %431, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %432 = fadd double %431, f0xBFE62E42FEFA39EF
  store double %432, ptr @sc, align 8
  %433 = fdiv double %411, %427
  store double %433, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %434 = fmul double %432, 1.000000e-30
  %435 = fmul double %395, 1.000000e-30
  %436 = fmul double %433, 1.000000e-30
  %437 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %434, double noundef %435, double noundef %436) #5
  %438 = load double, ptr @piref, align 8
  %439 = load double, ptr @four, align 8
  %440 = fmul double %439, %203
  %441 = fdiv double %438, %440
  %442 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %443 = load double, ptr @A6, align 8
  %444 = load double, ptr @A5, align 8
  %445 = load double, ptr @A4, align 8
  %446 = load double, ptr @A3, align 8
  %447 = load double, ptr @A2, align 8
  %448 = load double, ptr @A1, align 8
  %449 = load double, ptr @one, align 8
  %450 = load double, ptr @B6, align 8
  %451 = load double, ptr @B5, align 8
  %452 = load double, ptr @B4, align 8
  %453 = load double, ptr @B3, align 8
  %454 = load double, ptr @B2, align 8
  %455 = load double, ptr @B1, align 8
  %.not8.not51 = icmp slt i32 1, %182
  br i1 %.not8.not51, label %.lr.ph53, label %477

.lr.ph53:                                         ; preds = %389
  br label %456

456:                                              ; preds = %.lr.ph53, %456
  %457 = phi i32 [ 1, %.lr.ph53 ], [ %476, %456 ]
  %458 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %475, %456 ]
  %459 = uitofp nneg i32 %457 to double
  %460 = fmul double %441, %459
  %461 = fmul double %460, %460
  %462 = call double @llvm.fmuladd.f64(double %443, double %461, double %444)
  %463 = call double @llvm.fmuladd.f64(double %462, double %461, double %445)
  %464 = call double @llvm.fmuladd.f64(double %463, double %461, double %446)
  %465 = call double @llvm.fmuladd.f64(double %464, double %461, double %447)
  %466 = call double @llvm.fmuladd.f64(double %465, double %461, double %448)
  %467 = call double @llvm.fmuladd.f64(double %466, double %461, double %449)
  %468 = fmul double %460, %467
  %469 = call double @llvm.fmuladd.f64(double %450, double %461, double %451)
  %470 = call double @llvm.fmuladd.f64(double %461, double %469, double %452)
  %471 = call double @llvm.fmuladd.f64(double %461, double %470, double %453)
  %472 = call double @llvm.fmuladd.f64(double %461, double %471, double %454)
  %473 = call double @llvm.fmuladd.f64(double %461, double %472, double %455)
  %474 = call double @llvm.fmuladd.f64(double %461, double %473, double %449)
  %475 = call double @llvm.fmuladd.f64(double %468, double %474, double %458)
  %476 = add nuw nsw i32 %457, 1
  %.not8.not = icmp slt i32 %476, %182
  br i1 %.not8.not, label %456, label %._crit_edge54, !llvm.loop !19

._crit_edge54:                                    ; preds = %456
  %split55 = phi double [ %475, %456 ]
  br label %477

477:                                              ; preds = %._crit_edge54, %389
  %.lcssa2 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %389 ]
  %478 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %479 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %480 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %481 = load double, ptr @nulltime, align 8
  %482 = fneg double %481
  %483 = call double @llvm.fmuladd.f64(double %479, double %480, double %482)
  store double %483, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %484 = load double, ptr @piref, align 8
  %485 = load double, ptr @four, align 8
  %486 = fdiv double %484, %485
  %487 = fmul double %486, %486
  %488 = load double, ptr @A6, align 8
  %489 = load double, ptr @A5, align 8
  %490 = call double @llvm.fmuladd.f64(double %488, double %487, double %489)
  %491 = load double, ptr @A4, align 8
  %492 = call double @llvm.fmuladd.f64(double %490, double %487, double %491)
  %493 = load double, ptr @A3, align 8
  %494 = call double @llvm.fmuladd.f64(double %492, double %487, double %493)
  %495 = load double, ptr @A2, align 8
  %496 = call double @llvm.fmuladd.f64(double %494, double %487, double %495)
  %497 = load double, ptr @A1, align 8
  %498 = call double @llvm.fmuladd.f64(double %496, double %487, double %497)
  %499 = load double, ptr @one, align 8
  %500 = call double @llvm.fmuladd.f64(double %498, double %487, double %499)
  %501 = fmul double %486, %500
  store double %501, ptr @sa, align 8
  %502 = load double, ptr @B6, align 8
  %503 = load double, ptr @B5, align 8
  %504 = call double @llvm.fmuladd.f64(double %502, double %487, double %503)
  %505 = load double, ptr @B4, align 8
  %506 = call double @llvm.fmuladd.f64(double %487, double %504, double %505)
  %507 = load double, ptr @B3, align 8
  %508 = call double @llvm.fmuladd.f64(double %487, double %506, double %507)
  %509 = load double, ptr @B2, align 8
  %510 = call double @llvm.fmuladd.f64(double %487, double %508, double %509)
  %511 = load double, ptr @B1, align 8
  %512 = call double @llvm.fmuladd.f64(double %487, double %510, double %511)
  %513 = call double @llvm.fmuladd.f64(double %487, double %512, double %499)
  store double %513, ptr @sb, align 8
  %514 = fmul double %501, %513
  store double %514, ptr @sa, align 8
  %515 = fdiv double %483, 2.900000e+01
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %516 = load double, ptr @two, align 8
  %517 = call double @llvm.fmuladd.f64(double %516, double %.lcssa2, double %514)
  %518 = fmul double %441, %517
  %519 = fdiv double %518, %516
  store double %519, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %520 = fadd double %519, -2.500000e-01
  store double %520, ptr @sc, align 8
  %521 = fdiv double %499, %515
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %522 = fmul double %520, 1.000000e-30
  %523 = fmul double %483, 1.000000e-30
  %524 = fmul double %521, 1.000000e-30
  %525 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %522, double noundef %523, double noundef %524) #5
  %526 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %527 = fdiv double f0x40599541F7F192A4, %203
  %528 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not9.not56 = icmp slt i32 1, %182
  br i1 %.not9.not56, label %.lr.ph58, label %545

.lr.ph58:                                         ; preds = %477
  br label %529

529:                                              ; preds = %.lr.ph58, %529
  %530 = phi i32 [ 1, %.lr.ph58 ], [ %544, %529 ]
  %531 = phi double [ 0.000000e+00, %.lr.ph58 ], [ %543, %529 ]
  %532 = uitofp nneg i32 %530 to double
  %533 = fmul double %527, %532
  %534 = fmul double %533, %533
  %535 = fadd double %533, %526
  %536 = fdiv double %526, %535
  %537 = fsub double %531, %536
  %538 = fadd double %534, %526
  %539 = fdiv double %533, %538
  %540 = fsub double %537, %539
  %541 = call double @llvm.fmuladd.f64(double %533, double %534, double %526)
  %542 = fdiv double %534, %541
  %543 = fsub double %540, %542
  %544 = add nuw nsw i32 %530, 1
  %.not9.not = icmp slt i32 %544, %182
  br i1 %.not9.not, label %529, label %._crit_edge59, !llvm.loop !20

._crit_edge59:                                    ; preds = %529
  %split60 = phi double [ %543, %529 ]
  br label %545

545:                                              ; preds = %._crit_edge59, %477
  %.lcssa1 = phi double [ %split60, %._crit_edge59 ], [ 0.000000e+00, %477 ]
  %546 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %547 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %548 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %549 = load double, ptr @nulltime, align 8
  %550 = fneg double %549
  %551 = call double @llvm.fmuladd.f64(double %547, double %548, double %550)
  store double %551, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %552 = fdiv double %551, 1.200000e+01
  store double %552, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %553 = load double, ptr @sa, align 8
  %554 = fmul double %553, %553
  %555 = fneg double %526
  %556 = fadd double %553, %526
  %557 = fdiv double %526, %556
  %558 = fsub double %555, %557
  %559 = fadd double %554, %526
  %560 = fdiv double %553, %559
  %561 = fsub double %558, %560
  %562 = call double @llvm.fmuladd.f64(double %553, double %554, double %526)
  %563 = fdiv double %554, %562
  %564 = fsub double %561, %563
  store double %564, ptr @sa, align 8
  %565 = fmul nnan double %527, 1.800000e+01
  %566 = load double, ptr @two, align 8
  %567 = call double @llvm.fmuladd.f64(double %566, double %.lcssa1, double %564)
  %568 = fmul double %565, %567
  store double %568, ptr @sa, align 8
  %569 = fptosi double %568 to i32
  %570 = mul nsw i32 %569, -2000
  %571 = sitofp i32 %570 to double
  %572 = load double, ptr @scale, align 8
  %573 = fdiv double %571, %572
  %574 = fptosi double %573 to i32
  %575 = fadd double %568, 5.002000e+02
  store double %575, ptr @sc, align 8
  %576 = load double, ptr @one, align 8
  %577 = fdiv double %576, %552
  store double %577, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %578 = fmul double %575, 1.000000e-30
  %579 = fmul double %551, 1.000000e-30
  %580 = fmul double %577, 1.000000e-30
  %581 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %578, double noundef %579, double noundef %580) #5
  %582 = load double, ptr @piref, align 8
  %583 = load double, ptr @three, align 8
  %584 = sitofp i32 %574 to double
  %585 = fmul double %583, %584
  %586 = fdiv double %582, %585
  %587 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %588 = load double, ptr @B6, align 8
  %589 = load double, ptr @B5, align 8
  %590 = load double, ptr @B4, align 8
  %591 = load double, ptr @B3, align 8
  %592 = load double, ptr @B2, align 8
  %593 = load double, ptr @B1, align 8
  %594 = load double, ptr @one, align 8
  %595 = load double, ptr @A6, align 8
  %596 = load double, ptr @A5, align 8
  %597 = load double, ptr @A4, align 8
  %598 = load double, ptr @A3, align 8
  %599 = load double, ptr @A2, align 8
  %600 = load double, ptr @A1, align 8
  %.not10.not61 = icmp slt i32 1, %574
  br i1 %.not10.not61, label %.lr.ph63, label %623

.lr.ph63:                                         ; preds = %545
  br label %601

601:                                              ; preds = %.lr.ph63, %601
  %602 = phi i32 [ 1, %.lr.ph63 ], [ %622, %601 ]
  %603 = phi double [ 0.000000e+00, %.lr.ph63 ], [ %621, %601 ]
  %604 = uitofp nneg i32 %602 to double
  %605 = fmul double %586, %604
  %606 = fmul double %605, %605
  %607 = call double @llvm.fmuladd.f64(double %588, double %606, double %589)
  %608 = call double @llvm.fmuladd.f64(double %606, double %607, double %590)
  %609 = call double @llvm.fmuladd.f64(double %606, double %608, double %591)
  %610 = call double @llvm.fmuladd.f64(double %606, double %609, double %592)
  %611 = call double @llvm.fmuladd.f64(double %606, double %610, double %593)
  %612 = call double @llvm.fmuladd.f64(double %606, double %611, double %594)
  %613 = fmul double %612, %612
  %614 = fmul double %613, %605
  %615 = call double @llvm.fmuladd.f64(double %595, double %606, double %596)
  %616 = call double @llvm.fmuladd.f64(double %615, double %606, double %597)
  %617 = call double @llvm.fmuladd.f64(double %616, double %606, double %598)
  %618 = call double @llvm.fmuladd.f64(double %617, double %606, double %599)
  %619 = call double @llvm.fmuladd.f64(double %618, double %606, double %600)
  %620 = call double @llvm.fmuladd.f64(double %619, double %606, double %594)
  %621 = call double @llvm.fmuladd.f64(double %614, double %620, double %603)
  %622 = add nuw nsw i32 %602, 1
  %.not10.not = icmp slt i32 %622, %574
  br i1 %.not10.not, label %601, label %._crit_edge64, !llvm.loop !21

._crit_edge64:                                    ; preds = %601
  %split65 = phi double [ %621, %601 ]
  br label %623

623:                                              ; preds = %._crit_edge64, %545
  %.lcssa = phi double [ %split65, %._crit_edge64 ], [ 0.000000e+00, %545 ]
  %624 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %626 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %627 = load double, ptr @nulltime, align 8
  %628 = fneg double %627
  %629 = call double @llvm.fmuladd.f64(double %625, double %626, double %628)
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %630 = load double, ptr @piref, align 8
  %631 = load double, ptr @three, align 8
  %632 = fdiv double %630, %631
  %633 = fmul double %632, %632
  %634 = load double, ptr @A6, align 8
  %635 = load double, ptr @A5, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %633, double %635)
  %637 = load double, ptr @A4, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %633, double %637)
  %639 = load double, ptr @A3, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %633, double %639)
  %641 = load double, ptr @A2, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %633, double %641)
  %643 = load double, ptr @A1, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %633, double %643)
  %645 = load double, ptr @one, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %633, double %645)
  %647 = fmul double %632, %646
  store double %647, ptr @sa, align 8
  %648 = load double, ptr @B6, align 8
  %649 = load double, ptr @B5, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %633, double %649)
  %651 = load double, ptr @B4, align 8
  %652 = call double @llvm.fmuladd.f64(double %633, double %650, double %651)
  %653 = load double, ptr @B3, align 8
  %654 = call double @llvm.fmuladd.f64(double %633, double %652, double %653)
  %655 = load double, ptr @B2, align 8
  %656 = call double @llvm.fmuladd.f64(double %633, double %654, double %655)
  %657 = load double, ptr @B1, align 8
  %658 = call double @llvm.fmuladd.f64(double %633, double %656, double %657)
  %659 = call double @llvm.fmuladd.f64(double %633, double %658, double %645)
  store double %659, ptr @sb, align 8
  %660 = fmul double %647, %659
  %661 = fmul double %660, %659
  store double %661, ptr @sa, align 8
  %662 = fdiv double %629, 3.000000e+01
  store double %662, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %663 = load double, ptr @two, align 8
  %664 = call double @llvm.fmuladd.f64(double %663, double %.lcssa, double %661)
  %665 = fmul double %586, %664
  %666 = fdiv double %665, %663
  store double %666, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %667 = fadd double %666, f0xBFD2AAAAAAAAAAAB
  store double %667, ptr @sc, align 8
  %668 = fdiv double %645, %662
  store double %668, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %669 = fmul double %667, 1.000000e-30
  %670 = fmul double %629, 1.000000e-30
  %671 = fmul double %668, 1.000000e-30
  %672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %669, double noundef %670, double noundef %671) #5
  %673 = load double, ptr @five, align 8
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %675 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %676 = fsub double %674, %675
  %677 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %678 = call double @llvm.fmuladd.f64(double %673, double %676, double %677)
  %679 = fdiv double %678, 5.200000e+01
  store double %679, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %680 = load double, ptr @one, align 8
  %681 = fdiv double %680, %679
  store double %681, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %683 = fadd double %682, %677
  %684 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %685 = fadd double %683, %684
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %687 = fadd double %685, %686
  %688 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %689 = fadd double %687, %688
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %690 = load double, ptr @four, align 8
  %691 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %691, double %689)
  %693 = fdiv double %692, 1.520000e+02
  store double %693, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %694 = fdiv double %680, %693
  store double %694, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %695 = fadd double %689, %691
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %697 = fadd double %695, %696
  %698 = fdiv double %697, 1.460000e+02
  store double %698, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %699 = fdiv double %680, %698
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %700 = fadd double %677, %684
  %701 = fadd double %700, %688
  %702 = fadd double %701, %696
  %703 = fdiv double %702, 9.100000e+01
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %704 = fdiv double %680, %703
  store double %704, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar11 = call i32 @putchar(i32 10)
  %705 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %574) #5
  %706 = load double, ptr @nulltime, align 8
  %707 = fmul double %706, 1.000000e-30
  %708 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %707) #5
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %710 = fmul double %709, 1.000000e-30
  %711 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %710) #5
  %712 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %713 = fmul double %712, 1.000000e-30
  %714 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %713) #5
  %715 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %716 = fmul double %715, 1.000000e-30
  %717 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %716) #5
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %719 = fmul double %718, 1.000000e-30
  %720 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %719) #5
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
