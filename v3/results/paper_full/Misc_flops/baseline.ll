; ModuleID = 'results\paper_full\Misc_flops\Misc_flops.ll'
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
  %puts21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %puts22 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %1 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %2 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  %3 = load double, ptr @TLimit, align 8
  %4 = fcmp olt double 0.000000e+00, %3
  br i1 %4, label %.lr.ph43, label %35

.lr.ph43:                                         ; preds = %0
  br label %9

5:                                                ; preds = %31
  %6 = phi double [ %33, %31 ]
  %.08 = phi double [ %13, %31 ]
  %.01 = phi double [ %.2.lcssa, %31 ]
  %.0 = phi i32 [ %10, %31 ]
  %7 = load double, ptr @TLimit, align 8
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %._crit_edge48, !llvm.loop !7

9:                                                ; preds = %.lr.ph43, %5
  %.041 = phi i32 [ 15625, %.lr.ph43 ], [ %.0, %5 ]
  %10 = shl nsw i32 %.041, 1
  %11 = load double, ptr @one, align 8
  %12 = sitofp i32 %10 to double
  %13 = fdiv double %11, %12
  %14 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not.not37 = icmp slt i32 1, %10
  br i1 %.not.not37, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %9
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %.240 = phi double [ 0.000000e+00, %.lr.ph ], [ %29, %15 ]
  %.0439 = phi double [ 0.000000e+00, %.lr.ph ], [ %16, %15 ]
  %.01138 = phi i32 [ 1, %.lr.ph ], [ %30, %15 ]
  %16 = fadd double %.0439, %11
  %17 = fmul double %16, %13
  %18 = load double, ptr @D3, align 8
  %19 = load double, ptr @D2, align 8
  %20 = call double @llvm.fmuladd.f64(double %17, double %18, double %19)
  %21 = load double, ptr @D1, align 8
  %22 = call double @llvm.fmuladd.f64(double %17, double %20, double %21)
  %23 = load double, ptr @E3, align 8
  %24 = load double, ptr @E2, align 8
  %25 = call double @llvm.fmuladd.f64(double %17, double %23, double %24)
  %26 = call double @llvm.fmuladd.f64(double %17, double %25, double %21)
  %27 = call double @llvm.fmuladd.f64(double %17, double %26, double %11)
  %28 = fdiv double %22, %27
  %29 = fadd double %.240, %28
  %30 = add nuw nsw i32 %.01138, 1
  %.not.not = icmp slt i32 %30, %10
  br i1 %.not.not, label %15, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  %split = phi double [ %29, %15 ]
  br label %31

31:                                               ; preds = %._crit_edge, %9
  %.2.lcssa = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %9 ]
  %32 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %33 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %33, ptr @sa, align 8
  %34 = icmp eq i32 %.041, 256000000
  br i1 %34, label %._crit_edge44, label %5, !llvm.loop !7

._crit_edge44:                                    ; preds = %31
  %split45 = phi double [ %13, %31 ]
  %split46 = phi double [ %.2.lcssa, %31 ]
  %split47 = phi i32 [ %10, %31 ]
  br label %35, !llvm.loop !7

._crit_edge48:                                    ; preds = %5
  %split49 = phi double [ %.08, %5 ]
  %split50 = phi double [ %.01, %5 ]
  %split51 = phi i32 [ %.0, %5 ]
  br label %35

35:                                               ; preds = %._crit_edge48, %._crit_edge44, %0
  %.19 = phi double [ %split49, %._crit_edge48 ], [ %split45, %._crit_edge44 ], [ undef, %0 ]
  %.12 = phi double [ %split50, %._crit_edge48 ], [ %split46, %._crit_edge44 ], [ undef, %0 ]
  %.1 = phi i32 [ %split51, %._crit_edge48 ], [ %split47, %._crit_edge44 ], [ 15625, %0 ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %36 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  br label %37

37:                                               ; preds = %37, %35
  %.112 = phi i32 [ 1, %35 ], [ %38, %37 ]
  %.not.not23 = icmp slt i32 %.112, %.1
  %38 = add nuw nsw i32 %.112, 1
  br i1 %.not.not23, label %37, label %39, !llvm.loop !10

39:                                               ; preds = %37
  %40 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %41 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %42 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %43 = fmul double %41, %42
  %44 = fcmp olt double %43, 0.000000e+00
  %storemerge = select i1 %44, double 0.000000e+00, double %43
  store double %storemerge, ptr @nulltime, align 8
  %45 = load double, ptr @sa, align 8
  %46 = fneg double %storemerge
  %47 = call double @llvm.fmuladd.f64(double %41, double %45, double %46)
  store double %47, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %48 = load double, ptr @D1, align 8
  %49 = load double, ptr @D2, align 8
  %50 = fadd double %48, %49
  %51 = load double, ptr @D3, align 8
  %52 = fadd double %50, %51
  %53 = load double, ptr @one, align 8
  %54 = fadd double %53, %48
  %55 = load double, ptr @E2, align 8
  %56 = fadd double %54, %55
  %57 = load double, ptr @E3, align 8
  %58 = fadd double %56, %57
  %59 = fdiv double %52, %58
  store double %59, ptr @sa, align 8
  store double %48, ptr @sb, align 8
  %60 = fdiv double %47, 1.400000e+01
  store double %60, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %61 = fadd double %59, %48
  %62 = load double, ptr @two, align 8
  %63 = call double @llvm.fmuladd.f64(double %62, double %.12, double %61)
  %64 = fmul double %.19, %63
  %65 = fdiv double %64, %62
  store double %65, ptr @sa, align 8
  %66 = fdiv double %53, %65
  store double %66, ptr @sb, align 8
  %67 = fptosi double %66 to i32
  %68 = mul nsw i32 %67, 40000
  %69 = sitofp i32 %68 to double
  %70 = load double, ptr @scale, align 8
  %71 = fdiv double %69, %70
  %72 = fptosi double %71 to i32
  %73 = fadd double %66, -2.520000e+01
  store double %73, ptr @sc, align 8
  %74 = fdiv double %53, %60
  store double %74, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %75 = fmul double %73, 1.000000e-30
  %76 = fmul double %47, 1.000000e-30
  %77 = fmul double %74, 1.000000e-30
  %78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %75, double noundef %76, double noundef %77) #4
  %79 = load double, ptr @five, align 8
  %80 = fneg double %79
  %81 = load double, ptr @one, align 8
  %82 = fneg double %81
  store double %82, ptr @sa, align 8
  %83 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not52 = icmp sgt i32 1, %72
  br i1 %.not52, label %89, label %.lr.ph56

.lr.ph56:                                         ; preds = %39
  br label %84

84:                                               ; preds = %.lr.ph56, %84
  %.354 = phi double [ %80, %.lr.ph56 ], [ %87, %84 ]
  %.21353 = phi i32 [ 1, %.lr.ph56 ], [ %88, %84 ]
  %85 = load double, ptr @sa, align 8
  %86 = fsub double %85, %.354
  store double %86, ptr @sa, align 8
  %87 = fneg double %.354
  %88 = add nuw nsw i32 %.21353, 1
  %.not = icmp sgt i32 %88, %72
  br i1 %.not, label %._crit_edge57, label %84, !llvm.loop !11

._crit_edge57:                                    ; preds = %84
  %split58 = phi double [ %87, %84 ]
  br label %89

89:                                               ; preds = %._crit_edge57, %39
  %.3.lcssa = phi double [ %split58, %._crit_edge57 ], [ %80, %39 ]
  %90 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %91 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %93 = fmul double %91, %92
  %94 = fcmp olt double %93, 0.000000e+00
  %storemerge24 = select i1 %94, double 0.000000e+00, double %93
  store double %storemerge24, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %95 = sitofp i32 %72 to double
  store double %95, ptr @sc, align 8
  %96 = load double, ptr @sa, align 8
  %97 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not2559 = icmp sgt i32 1, %72
  br i1 %.not2559, label %110, label %.lr.ph67

.lr.ph67:                                         ; preds = %89
  br label %98

98:                                               ; preds = %.lr.ph67, %98
  %.465 = phi double [ %.3.lcssa, %.lr.ph67 ], [ %103, %98 ]
  %.0364 = phi double [ %96, %.lr.ph67 ], [ %102, %98 ]
  %.1563 = phi double [ 0.000000e+00, %.lr.ph67 ], [ %106, %98 ]
  %.0762 = phi double [ 0.000000e+00, %.lr.ph67 ], [ %105, %98 ]
  %.21061 = phi double [ 0.000000e+00, %.lr.ph67 ], [ %108, %98 ]
  %.31460 = phi i32 [ 1, %.lr.ph67 ], [ %109, %98 ]
  %99 = load double, ptr @sa, align 8
  %100 = fsub double %99, %.465
  store double %100, ptr @sa, align 8
  %101 = load double, ptr @two, align 8
  %102 = fadd double %.0364, %101
  %103 = fneg double %.465
  %104 = fdiv double %.465, %102
  %105 = fsub double %.0762, %104
  %106 = call double @llvm.fmuladd.f64(double %.465, double %102, double %.1563)
  %107 = fsub double %103, %102
  %108 = fadd double %.21061, %107
  %109 = add nuw nsw i32 %.31460, 1
  %.not25 = icmp sgt i32 %109, %72
  br i1 %.not25, label %._crit_edge68, label %98, !llvm.loop !12

._crit_edge68:                                    ; preds = %98
  %split69 = phi double [ %108, %98 ]
  %split70 = phi double [ %105, %98 ]
  %split71 = phi double [ %106, %98 ]
  br label %110

110:                                              ; preds = %._crit_edge68, %89
  %.210.lcssa = phi double [ %split69, %._crit_edge68 ], [ 0.000000e+00, %89 ]
  %.07.lcssa = phi double [ %split70, %._crit_edge68 ], [ 0.000000e+00, %89 ]
  %.15.lcssa = phi double [ %split71, %._crit_edge68 ], [ 0.000000e+00, %89 ]
  %111 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %113 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %114 = fmul double %112, %113
  store double %114, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %115 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %116 = fsub double %114, %115
  %117 = fdiv double %116, 7.000000e+00
  store double %117, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %118 = load double, ptr @sa, align 8
  %119 = fmul double %118, %.210.lcssa
  %120 = load double, ptr @sc, align 8
  %121 = fdiv double %119, %120
  %122 = fptosi double %121 to i32
  %123 = load double, ptr @four, align 8
  %124 = fmul double %123, %.07.lcssa
  %125 = load double, ptr @five, align 8
  %126 = fdiv double %124, %125
  store double %126, ptr @sa, align 8
  %127 = fdiv double %125, %.15.lcssa
  %128 = fadd double %126, %127
  store double %128, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %129 = fmul double %.15.lcssa, %.15.lcssa
  %130 = fmul double %129, %.15.lcssa
  %131 = fdiv double 3.125000e+01, %130
  %132 = fsub double %128, %131
  store double %132, ptr @piprg, align 8
  %133 = load double, ptr @piref, align 8
  %134 = fsub double %132, %133
  store double %134, ptr @pierr, align 8
  %135 = load double, ptr @one, align 8
  %136 = fdiv double %135, %117
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %137 = fmul double %134, 1.000000e-30
  %138 = fmul double %116, 1.000000e-30
  %139 = fmul double %136, 1.000000e-30
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %137, double noundef %138, double noundef %139) #4
  %141 = load double, ptr @piref, align 8
  %142 = load double, ptr @three, align 8
  %143 = sitofp i32 %122 to double
  %144 = fmul double %142, %143
  %145 = fdiv double %141, %144
  %146 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not26.not72 = icmp slt i32 1, %122
  br i1 %.not26.not72, label %.lr.ph77, label %168

.lr.ph77:                                         ; preds = %110
  br label %147

147:                                              ; preds = %.lr.ph77, %147
  %.575 = phi double [ 0.000000e+00, %.lr.ph77 ], [ %166, %147 ]
  %.2674 = phi double [ 0.000000e+00, %.lr.ph77 ], [ %149, %147 ]
  %.41573 = phi i32 [ 1, %.lr.ph77 ], [ %167, %147 ]
  %148 = load double, ptr @one, align 8
  %149 = fadd double %.2674, %148
  %150 = fmul double %149, %145
  %151 = load double, ptr @A6, align 8
  %152 = fmul double %150, %150
  %153 = load double, ptr @A5, align 8
  %154 = fneg double %153
  %155 = call double @llvm.fmuladd.f64(double %151, double %152, double %154)
  %156 = load double, ptr @A4, align 8
  %157 = call double @llvm.fmuladd.f64(double %155, double %152, double %156)
  %158 = load double, ptr @A3, align 8
  %159 = fneg double %158
  %160 = call double @llvm.fmuladd.f64(double %157, double %152, double %159)
  %161 = load double, ptr @A2, align 8
  %162 = call double @llvm.fmuladd.f64(double %160, double %152, double %161)
  %163 = load double, ptr @A1, align 8
  %164 = call double @llvm.fmuladd.f64(double %162, double %152, double %163)
  %165 = call double @llvm.fmuladd.f64(double %164, double %152, double %148)
  %166 = call double @llvm.fmuladd.f64(double %150, double %165, double %.575)
  %167 = add nuw nsw i32 %.41573, 1
  %.not26.not = icmp slt i32 %167, %122
  br i1 %.not26.not, label %147, label %._crit_edge78, !llvm.loop !13

._crit_edge78:                                    ; preds = %147
  %split79 = phi double [ %166, %147 ]
  br label %168

168:                                              ; preds = %._crit_edge78, %110
  %.5.lcssa = phi double [ %split79, %._crit_edge78 ], [ 0.000000e+00, %110 ]
  %169 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %170 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %171 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %172 = load double, ptr @nulltime, align 8
  %173 = fneg double %172
  %174 = call double @llvm.fmuladd.f64(double %170, double %171, double %173)
  store double %174, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %175 = load double, ptr @piref, align 8
  %176 = load double, ptr @three, align 8
  %177 = fdiv double %175, %176
  %178 = fmul double %177, %177
  %179 = load double, ptr @A6, align 8
  %180 = load double, ptr @A5, align 8
  %181 = fneg double %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %178, double %181)
  %183 = load double, ptr @A4, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %178, double %183)
  %185 = load double, ptr @A3, align 8
  %186 = fneg double %185
  %187 = call double @llvm.fmuladd.f64(double %184, double %178, double %186)
  %188 = load double, ptr @A2, align 8
  %189 = call double @llvm.fmuladd.f64(double %187, double %178, double %188)
  %190 = load double, ptr @A1, align 8
  %191 = call double @llvm.fmuladd.f64(double %189, double %178, double %190)
  %192 = load double, ptr @one, align 8
  %193 = call double @llvm.fmuladd.f64(double %191, double %178, double %192)
  %194 = fmul double %177, %193
  store double %194, ptr @sa, align 8
  %195 = fdiv double %174, 1.700000e+01
  store double %195, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %196 = load double, ptr @two, align 8
  %197 = call double @llvm.fmuladd.f64(double %196, double %.5.lcssa, double %194)
  %198 = fmul double %145, %197
  %199 = fdiv double %198, %196
  store double %199, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %200 = fadd double %199, -5.000000e-01
  store double %200, ptr @sc, align 8
  %201 = fdiv double %192, %195
  store double %201, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %202 = fmul double %200, 1.000000e-30
  %203 = fmul double %174, 1.000000e-30
  %204 = fmul double %201, 1.000000e-30
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %202, double noundef %203, double noundef %204) #4
  %206 = load double, ptr @A3, align 8
  %207 = fneg double %206
  store double %207, ptr @A3, align 8
  %208 = load double, ptr @A5, align 8
  %209 = fneg double %208
  store double %209, ptr @A5, align 8
  %210 = load double, ptr @piref, align 8
  %211 = load double, ptr @three, align 8
  %212 = fmul double %211, %143
  %213 = fdiv double %210, %212
  %214 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not27.not80 = icmp slt i32 1, %122
  br i1 %.not27.not80, label %.lr.ph84, label %234

.lr.ph84:                                         ; preds = %168
  br label %215

215:                                              ; preds = %.lr.ph84, %215
  %.682 = phi double [ 0.000000e+00, %.lr.ph84 ], [ %232, %215 ]
  %.51681 = phi i32 [ 1, %.lr.ph84 ], [ %233, %215 ]
  %216 = uitofp nneg i32 %.51681 to double
  %217 = fmul double %213, %216
  %218 = fmul double %217, %217
  %219 = load double, ptr @B6, align 8
  %220 = load double, ptr @B5, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %218, double %220)
  %222 = load double, ptr @B4, align 8
  %223 = call double @llvm.fmuladd.f64(double %218, double %221, double %222)
  %224 = load double, ptr @B3, align 8
  %225 = call double @llvm.fmuladd.f64(double %218, double %223, double %224)
  %226 = load double, ptr @B2, align 8
  %227 = call double @llvm.fmuladd.f64(double %218, double %225, double %226)
  %228 = load double, ptr @B1, align 8
  %229 = call double @llvm.fmuladd.f64(double %218, double %227, double %228)
  %230 = call double @llvm.fmuladd.f64(double %218, double %229, double %.682)
  %231 = load double, ptr @one, align 8
  %232 = fadd double %230, %231
  %233 = add nuw nsw i32 %.51681, 1
  %.not27.not = icmp slt i32 %233, %122
  br i1 %.not27.not, label %215, label %._crit_edge85, !llvm.loop !14

._crit_edge85:                                    ; preds = %215
  %split86 = phi double [ %232, %215 ]
  br label %234

234:                                              ; preds = %._crit_edge85, %168
  %.6.lcssa = phi double [ %split86, %._crit_edge85 ], [ 0.000000e+00, %168 ]
  %235 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %236 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %237 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %238 = load double, ptr @nulltime, align 8
  %239 = fneg double %238
  %240 = call double @llvm.fmuladd.f64(double %236, double %237, double %239)
  store double %240, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %241 = load double, ptr @piref, align 8
  %242 = load double, ptr @three, align 8
  %243 = fdiv double %241, %242
  %244 = fmul double %243, %243
  %245 = load double, ptr @B6, align 8
  %246 = load double, ptr @B5, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %244, double %246)
  %248 = load double, ptr @B4, align 8
  %249 = call double @llvm.fmuladd.f64(double %244, double %247, double %248)
  %250 = load double, ptr @B3, align 8
  %251 = call double @llvm.fmuladd.f64(double %244, double %249, double %250)
  %252 = load double, ptr @B2, align 8
  %253 = call double @llvm.fmuladd.f64(double %244, double %251, double %252)
  %254 = load double, ptr @B1, align 8
  %255 = call double @llvm.fmuladd.f64(double %244, double %253, double %254)
  %256 = load double, ptr @one, align 8
  %257 = call double @llvm.fmuladd.f64(double %244, double %255, double %256)
  store double %257, ptr @sa, align 8
  %258 = fdiv double %240, 1.500000e+01
  store double %258, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %259 = fadd double %257, %256
  %260 = load double, ptr @two, align 8
  %261 = call double @llvm.fmuladd.f64(double %260, double %.6.lcssa, double %259)
  %262 = fmul double %213, %261
  %263 = fdiv double %262, %260
  store double %263, ptr @sa, align 8
  %264 = load double, ptr @A6, align 8
  %265 = load double, ptr @A5, align 8
  %266 = call double @llvm.fmuladd.f64(double %264, double %244, double %265)
  %267 = load double, ptr @A4, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %244, double %267)
  %269 = load double, ptr @A3, align 8
  %270 = call double @llvm.fmuladd.f64(double %268, double %244, double %269)
  %271 = load double, ptr @A2, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %244, double %271)
  %273 = load double, ptr @A1, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %244, double %273)
  %275 = load double, ptr @A0, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %244, double %275)
  %277 = fmul double %243, %276
  store double %277, ptr @sb, align 8
  %278 = fsub double %263, %277
  store double %278, ptr @sc, align 8
  %279 = fdiv double %256, %258
  store double %279, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %280 = fmul double %278, 1.000000e-30
  %281 = fmul double %240, 1.000000e-30
  %282 = fmul double %279, 1.000000e-30
  %283 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %280, double noundef %281, double noundef %282) #4
  %284 = load double, ptr @piref, align 8
  %285 = load double, ptr @three, align 8
  %286 = fmul double %285, %143
  %287 = fdiv double %284, %286
  %288 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not28.not87 = icmp slt i32 1, %122
  br i1 %.not28.not87, label %.lr.ph91, label %322

.lr.ph91:                                         ; preds = %234
  br label %289

289:                                              ; preds = %.lr.ph91, %289
  %.789 = phi double [ 0.000000e+00, %.lr.ph91 ], [ %320, %289 ]
  %.61788 = phi i32 [ 1, %.lr.ph91 ], [ %321, %289 ]
  %290 = uitofp nneg i32 %.61788 to double
  %291 = fmul double %287, %290
  %292 = load double, ptr @A6, align 8
  %293 = fmul double %291, %291
  %294 = load double, ptr @A5, align 8
  %295 = call double @llvm.fmuladd.f64(double %292, double %293, double %294)
  %296 = load double, ptr @A4, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %293, double %296)
  %298 = load double, ptr @A3, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %293, double %298)
  %300 = load double, ptr @A2, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %293, double %300)
  %302 = load double, ptr @A1, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %293, double %302)
  %304 = load double, ptr @one, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %293, double %304)
  %306 = fmul double %291, %305
  %307 = load double, ptr @B6, align 8
  %308 = load double, ptr @B5, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %293, double %308)
  %310 = load double, ptr @B4, align 8
  %311 = call double @llvm.fmuladd.f64(double %293, double %309, double %310)
  %312 = load double, ptr @B3, align 8
  %313 = call double @llvm.fmuladd.f64(double %293, double %311, double %312)
  %314 = load double, ptr @B2, align 8
  %315 = call double @llvm.fmuladd.f64(double %293, double %313, double %314)
  %316 = load double, ptr @B1, align 8
  %317 = call double @llvm.fmuladd.f64(double %293, double %315, double %316)
  %318 = call double @llvm.fmuladd.f64(double %293, double %317, double %304)
  %319 = fdiv double %306, %318
  %320 = fadd double %.789, %319
  %321 = add nuw nsw i32 %.61788, 1
  %.not28.not = icmp slt i32 %321, %122
  br i1 %.not28.not, label %289, label %._crit_edge92, !llvm.loop !15

._crit_edge92:                                    ; preds = %289
  %split93 = phi double [ %320, %289 ]
  br label %322

322:                                              ; preds = %._crit_edge92, %234
  %.7.lcssa = phi double [ %split93, %._crit_edge92 ], [ 0.000000e+00, %234 ]
  %323 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %324 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %325 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %326 = load double, ptr @nulltime, align 8
  %327 = fneg double %326
  %328 = call double @llvm.fmuladd.f64(double %324, double %325, double %327)
  store double %328, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %329 = load double, ptr @piref, align 8
  %330 = load double, ptr @three, align 8
  %331 = fdiv double %329, %330
  %332 = fmul double %331, %331
  %333 = load double, ptr @A6, align 8
  %334 = load double, ptr @A5, align 8
  %335 = call double @llvm.fmuladd.f64(double %333, double %332, double %334)
  %336 = load double, ptr @A4, align 8
  %337 = call double @llvm.fmuladd.f64(double %335, double %332, double %336)
  %338 = load double, ptr @A3, align 8
  %339 = call double @llvm.fmuladd.f64(double %337, double %332, double %338)
  %340 = load double, ptr @A2, align 8
  %341 = call double @llvm.fmuladd.f64(double %339, double %332, double %340)
  %342 = load double, ptr @A1, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %332, double %342)
  %344 = load double, ptr @one, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %332, double %344)
  %346 = fmul double %331, %345
  store double %346, ptr @sa, align 8
  %347 = load double, ptr @B6, align 8
  %348 = load double, ptr @B5, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %332, double %348)
  %350 = load double, ptr @B4, align 8
  %351 = call double @llvm.fmuladd.f64(double %332, double %349, double %350)
  %352 = load double, ptr @B3, align 8
  %353 = call double @llvm.fmuladd.f64(double %332, double %351, double %352)
  %354 = load double, ptr @B2, align 8
  %355 = call double @llvm.fmuladd.f64(double %332, double %353, double %354)
  %356 = load double, ptr @B1, align 8
  %357 = call double @llvm.fmuladd.f64(double %332, double %355, double %356)
  %358 = call double @llvm.fmuladd.f64(double %332, double %357, double %344)
  store double %358, ptr @sb, align 8
  %359 = fdiv double %346, %358
  store double %359, ptr @sa, align 8
  %360 = fdiv double %328, 2.900000e+01
  store double %360, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %361 = load double, ptr @two, align 8
  %362 = call double @llvm.fmuladd.f64(double %361, double %.7.lcssa, double %359)
  %363 = fmul double %287, %362
  %364 = fdiv double %363, %361
  store double %364, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %365 = fadd double %364, f0xBFE62E42FEFA39EF
  store double %365, ptr @sc, align 8
  %366 = fdiv double %344, %360
  store double %366, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %367 = fmul double %365, 1.000000e-30
  %368 = fmul double %328, 1.000000e-30
  %369 = fmul double %366, 1.000000e-30
  %370 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %367, double noundef %368, double noundef %369) #4
  %371 = load double, ptr @piref, align 8
  %372 = load double, ptr @four, align 8
  %373 = fmul double %372, %143
  %374 = fdiv double %371, %373
  %375 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not29.not94 = icmp slt i32 1, %122
  br i1 %.not29.not94, label %.lr.ph98, label %408

.lr.ph98:                                         ; preds = %322
  br label %376

376:                                              ; preds = %.lr.ph98, %376
  %.896 = phi double [ 0.000000e+00, %.lr.ph98 ], [ %406, %376 ]
  %.71895 = phi i32 [ 1, %.lr.ph98 ], [ %407, %376 ]
  %377 = uitofp nneg i32 %.71895 to double
  %378 = fmul double %374, %377
  %379 = load double, ptr @A6, align 8
  %380 = fmul double %378, %378
  %381 = load double, ptr @A5, align 8
  %382 = call double @llvm.fmuladd.f64(double %379, double %380, double %381)
  %383 = load double, ptr @A4, align 8
  %384 = call double @llvm.fmuladd.f64(double %382, double %380, double %383)
  %385 = load double, ptr @A3, align 8
  %386 = call double @llvm.fmuladd.f64(double %384, double %380, double %385)
  %387 = load double, ptr @A2, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %380, double %387)
  %389 = load double, ptr @A1, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %380, double %389)
  %391 = load double, ptr @one, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %380, double %391)
  %393 = fmul double %378, %392
  %394 = load double, ptr @B6, align 8
  %395 = load double, ptr @B5, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %380, double %395)
  %397 = load double, ptr @B4, align 8
  %398 = call double @llvm.fmuladd.f64(double %380, double %396, double %397)
  %399 = load double, ptr @B3, align 8
  %400 = call double @llvm.fmuladd.f64(double %380, double %398, double %399)
  %401 = load double, ptr @B2, align 8
  %402 = call double @llvm.fmuladd.f64(double %380, double %400, double %401)
  %403 = load double, ptr @B1, align 8
  %404 = call double @llvm.fmuladd.f64(double %380, double %402, double %403)
  %405 = call double @llvm.fmuladd.f64(double %380, double %404, double %391)
  %406 = call double @llvm.fmuladd.f64(double %393, double %405, double %.896)
  %407 = add nuw nsw i32 %.71895, 1
  %.not29.not = icmp slt i32 %407, %122
  br i1 %.not29.not, label %376, label %._crit_edge99, !llvm.loop !16

._crit_edge99:                                    ; preds = %376
  %split100 = phi double [ %406, %376 ]
  br label %408

408:                                              ; preds = %._crit_edge99, %322
  %.8.lcssa = phi double [ %split100, %._crit_edge99 ], [ 0.000000e+00, %322 ]
  %409 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %410 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %411 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %412 = load double, ptr @nulltime, align 8
  %413 = fneg double %412
  %414 = call double @llvm.fmuladd.f64(double %410, double %411, double %413)
  store double %414, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %415 = load double, ptr @piref, align 8
  %416 = load double, ptr @four, align 8
  %417 = fdiv double %415, %416
  %418 = fmul double %417, %417
  %419 = load double, ptr @A6, align 8
  %420 = load double, ptr @A5, align 8
  %421 = call double @llvm.fmuladd.f64(double %419, double %418, double %420)
  %422 = load double, ptr @A4, align 8
  %423 = call double @llvm.fmuladd.f64(double %421, double %418, double %422)
  %424 = load double, ptr @A3, align 8
  %425 = call double @llvm.fmuladd.f64(double %423, double %418, double %424)
  %426 = load double, ptr @A2, align 8
  %427 = call double @llvm.fmuladd.f64(double %425, double %418, double %426)
  %428 = load double, ptr @A1, align 8
  %429 = call double @llvm.fmuladd.f64(double %427, double %418, double %428)
  %430 = load double, ptr @one, align 8
  %431 = call double @llvm.fmuladd.f64(double %429, double %418, double %430)
  %432 = fmul double %417, %431
  store double %432, ptr @sa, align 8
  %433 = load double, ptr @B6, align 8
  %434 = load double, ptr @B5, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %418, double %434)
  %436 = load double, ptr @B4, align 8
  %437 = call double @llvm.fmuladd.f64(double %418, double %435, double %436)
  %438 = load double, ptr @B3, align 8
  %439 = call double @llvm.fmuladd.f64(double %418, double %437, double %438)
  %440 = load double, ptr @B2, align 8
  %441 = call double @llvm.fmuladd.f64(double %418, double %439, double %440)
  %442 = load double, ptr @B1, align 8
  %443 = call double @llvm.fmuladd.f64(double %418, double %441, double %442)
  %444 = call double @llvm.fmuladd.f64(double %418, double %443, double %430)
  store double %444, ptr @sb, align 8
  %445 = fmul double %432, %444
  store double %445, ptr @sa, align 8
  %446 = fdiv double %414, 2.900000e+01
  store double %446, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %447 = load double, ptr @two, align 8
  %448 = call double @llvm.fmuladd.f64(double %447, double %.8.lcssa, double %445)
  %449 = fmul double %374, %448
  %450 = fdiv double %449, %447
  store double %450, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %451 = fadd double %450, -2.500000e-01
  store double %451, ptr @sc, align 8
  %452 = fdiv double %430, %446
  store double %452, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %453 = fmul double %451, 1.000000e-30
  %454 = fmul double %414, 1.000000e-30
  %455 = fmul double %452, 1.000000e-30
  %456 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %453, double noundef %454, double noundef %455) #4
  %457 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %458 = fdiv double f0x40599541F7F192A4, %143
  %459 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not30.not101 = icmp slt i32 1, %122
  br i1 %.not30.not101, label %.lr.ph105, label %474

.lr.ph105:                                        ; preds = %408
  br label %460

460:                                              ; preds = %.lr.ph105, %460
  %.9103 = phi double [ 0.000000e+00, %.lr.ph105 ], [ %472, %460 ]
  %.819102 = phi i32 [ 1, %.lr.ph105 ], [ %473, %460 ]
  %461 = uitofp nneg i32 %.819102 to double
  %462 = fmul double %458, %461
  %463 = fadd double %462, %457
  %464 = fdiv double %457, %463
  %465 = fsub double %.9103, %464
  %466 = fmul double %462, %462
  %467 = fadd double %466, %457
  %468 = fdiv double %462, %467
  %469 = fsub double %465, %468
  %470 = call double @llvm.fmuladd.f64(double %462, double %466, double %457)
  %471 = fdiv double %466, %470
  %472 = fsub double %469, %471
  %473 = add nuw nsw i32 %.819102, 1
  %.not30.not = icmp slt i32 %473, %122
  br i1 %.not30.not, label %460, label %._crit_edge106, !llvm.loop !17

._crit_edge106:                                   ; preds = %460
  %split107 = phi double [ %472, %460 ]
  br label %474

474:                                              ; preds = %._crit_edge106, %408
  %.9.lcssa = phi double [ %split107, %._crit_edge106 ], [ 0.000000e+00, %408 ]
  %475 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %476 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %477 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %478 = load double, ptr @nulltime, align 8
  %479 = fneg double %478
  %480 = call double @llvm.fmuladd.f64(double %476, double %477, double %479)
  store double %480, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %481 = fdiv double %480, 1.200000e+01
  store double %481, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %482 = load double, ptr @sa, align 8
  %483 = fmul double %482, %482
  %484 = fneg double %457
  %485 = fadd double %482, %457
  %486 = fdiv double %457, %485
  %487 = fsub double %484, %486
  %488 = fadd double %483, %457
  %489 = fdiv double %482, %488
  %490 = fsub double %487, %489
  %491 = call double @llvm.fmuladd.f64(double %482, double %483, double %457)
  %492 = fdiv double %483, %491
  %493 = fsub double %490, %492
  store double %493, ptr @sa, align 8
  %494 = fmul nnan double %458, 1.800000e+01
  %495 = load double, ptr @two, align 8
  %496 = call double @llvm.fmuladd.f64(double %495, double %.9.lcssa, double %493)
  %497 = fmul double %494, %496
  store double %497, ptr @sa, align 8
  %498 = fptosi double %497 to i32
  %499 = mul nsw i32 %498, -2000
  %500 = sitofp i32 %499 to double
  %501 = load double, ptr @scale, align 8
  %502 = fdiv double %500, %501
  %503 = fptosi double %502 to i32
  %504 = fadd double %497, 5.002000e+02
  store double %504, ptr @sc, align 8
  %505 = load double, ptr @one, align 8
  %506 = fdiv double %505, %481
  store double %506, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %507 = fmul double %504, 1.000000e-30
  %508 = fmul double %480, 1.000000e-30
  %509 = fmul double %506, 1.000000e-30
  %510 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %507, double noundef %508, double noundef %509) #4
  %511 = load double, ptr @piref, align 8
  %512 = load double, ptr @three, align 8
  %513 = sitofp i32 %503 to double
  %514 = fmul double %512, %513
  %515 = fdiv double %511, %514
  %516 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %.not31.not108 = icmp slt i32 1, %503
  br i1 %.not31.not108, label %.lr.ph112, label %550

.lr.ph112:                                        ; preds = %474
  br label %517

517:                                              ; preds = %.lr.ph112, %517
  %.10110 = phi double [ 0.000000e+00, %.lr.ph112 ], [ %548, %517 ]
  %.920109 = phi i32 [ 1, %.lr.ph112 ], [ %549, %517 ]
  %518 = uitofp nneg i32 %.920109 to double
  %519 = fmul double %515, %518
  %520 = fmul double %519, %519
  %521 = load double, ptr @B6, align 8
  %522 = load double, ptr @B5, align 8
  %523 = call double @llvm.fmuladd.f64(double %521, double %520, double %522)
  %524 = load double, ptr @B4, align 8
  %525 = call double @llvm.fmuladd.f64(double %520, double %523, double %524)
  %526 = load double, ptr @B3, align 8
  %527 = call double @llvm.fmuladd.f64(double %520, double %525, double %526)
  %528 = load double, ptr @B2, align 8
  %529 = call double @llvm.fmuladd.f64(double %520, double %527, double %528)
  %530 = load double, ptr @B1, align 8
  %531 = call double @llvm.fmuladd.f64(double %520, double %529, double %530)
  %532 = load double, ptr @one, align 8
  %533 = call double @llvm.fmuladd.f64(double %520, double %531, double %532)
  %534 = fmul double %533, %533
  %535 = fmul double %534, %519
  %536 = load double, ptr @A6, align 8
  %537 = load double, ptr @A5, align 8
  %538 = call double @llvm.fmuladd.f64(double %536, double %520, double %537)
  %539 = load double, ptr @A4, align 8
  %540 = call double @llvm.fmuladd.f64(double %538, double %520, double %539)
  %541 = load double, ptr @A3, align 8
  %542 = call double @llvm.fmuladd.f64(double %540, double %520, double %541)
  %543 = load double, ptr @A2, align 8
  %544 = call double @llvm.fmuladd.f64(double %542, double %520, double %543)
  %545 = load double, ptr @A1, align 8
  %546 = call double @llvm.fmuladd.f64(double %544, double %520, double %545)
  %547 = call double @llvm.fmuladd.f64(double %546, double %520, double %532)
  %548 = call double @llvm.fmuladd.f64(double %535, double %547, double %.10110)
  %549 = add nuw nsw i32 %.920109, 1
  %.not31.not = icmp slt i32 %549, %503
  br i1 %.not31.not, label %517, label %._crit_edge113, !llvm.loop !18

._crit_edge113:                                   ; preds = %517
  %split114 = phi double [ %548, %517 ]
  br label %550

550:                                              ; preds = %._crit_edge113, %474
  %.10.lcssa = phi double [ %split114, %._crit_edge113 ], [ 0.000000e+00, %474 ]
  %551 = call i32 @dtime(ptr noundef nonnull @TimeArray)
  %552 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %553 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %554 = load double, ptr @nulltime, align 8
  %555 = fneg double %554
  %556 = call double @llvm.fmuladd.f64(double %552, double %553, double %555)
  store double %556, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %557 = load double, ptr @piref, align 8
  %558 = load double, ptr @three, align 8
  %559 = fdiv double %557, %558
  %560 = fmul double %559, %559
  %561 = load double, ptr @A6, align 8
  %562 = load double, ptr @A5, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %560, double %562)
  %564 = load double, ptr @A4, align 8
  %565 = call double @llvm.fmuladd.f64(double %563, double %560, double %564)
  %566 = load double, ptr @A3, align 8
  %567 = call double @llvm.fmuladd.f64(double %565, double %560, double %566)
  %568 = load double, ptr @A2, align 8
  %569 = call double @llvm.fmuladd.f64(double %567, double %560, double %568)
  %570 = load double, ptr @A1, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %560, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %571, double %560, double %572)
  %574 = fmul double %559, %573
  store double %574, ptr @sa, align 8
  %575 = load double, ptr @B6, align 8
  %576 = load double, ptr @B5, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %560, double %576)
  %578 = load double, ptr @B4, align 8
  %579 = call double @llvm.fmuladd.f64(double %560, double %577, double %578)
  %580 = load double, ptr @B3, align 8
  %581 = call double @llvm.fmuladd.f64(double %560, double %579, double %580)
  %582 = load double, ptr @B2, align 8
  %583 = call double @llvm.fmuladd.f64(double %560, double %581, double %582)
  %584 = load double, ptr @B1, align 8
  %585 = call double @llvm.fmuladd.f64(double %560, double %583, double %584)
  %586 = call double @llvm.fmuladd.f64(double %560, double %585, double %572)
  store double %586, ptr @sb, align 8
  %587 = fmul double %574, %586
  %588 = fmul double %587, %586
  store double %588, ptr @sa, align 8
  %589 = fdiv double %556, 3.000000e+01
  store double %589, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %590 = load double, ptr @two, align 8
  %591 = call double @llvm.fmuladd.f64(double %590, double %.10.lcssa, double %588)
  %592 = fmul double %515, %591
  %593 = fdiv double %592, %590
  store double %593, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %594 = fadd double %593, f0xBFD2AAAAAAAAAAAB
  store double %594, ptr @sc, align 8
  %595 = fdiv double %572, %589
  store double %595, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %596 = fmul double %594, 1.000000e-30
  %597 = fmul double %556, 1.000000e-30
  %598 = fmul double %595, 1.000000e-30
  %599 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %596, double noundef %597, double noundef %598) #4
  %600 = load double, ptr @five, align 8
  %601 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %602 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %603 = fsub double %601, %602
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %605 = call double @llvm.fmuladd.f64(double %600, double %603, double %604)
  %606 = fdiv double %605, 5.200000e+01
  store double %606, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %607 = load double, ptr @one, align 8
  %608 = fdiv double %607, %606
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %609 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %610 = fadd double %609, %604
  %611 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %612 = fadd double %610, %611
  %613 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %614 = fadd double %612, %613
  %615 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %616 = fadd double %614, %615
  store double %616, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %617 = load double, ptr @four, align 8
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %618, double %616)
  %620 = fdiv double %619, 1.520000e+02
  store double %620, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %621 = fdiv double %607, %620
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %616, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %622 = fadd double %616, %618
  %623 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %624 = fadd double %622, %623
  %625 = fdiv double %624, 1.460000e+02
  store double %625, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %626 = fdiv double %607, %625
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %627 = fadd double %604, %611
  %628 = fadd double %627, %615
  %629 = fadd double %628, %623
  %630 = fdiv double %629, 9.100000e+01
  store double %630, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %631 = fdiv double %607, %630
  store double %631, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %putchar32 = call i32 @putchar(i32 10)
  %632 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %503) #4
  %633 = load double, ptr @nulltime, align 8
  %634 = fmul double %633, 1.000000e-30
  %635 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %634) #4
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %637 = fmul double %636, 1.000000e-30
  %638 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %637) #4
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %640 = fmul double %639, 1.000000e-30
  %641 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %640) #4
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %643 = fmul double %642, 1.000000e-30
  %644 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %643) #4
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %646 = fmul double %645, 1.000000e-30
  %647 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %646) #4
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount() #4
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

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
