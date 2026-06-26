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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = sitofp i32 15625 to double
  %4 = fdiv double 1.000000e+06, %3
  store double %4, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %5 = load double, ptr @one, align 8
  store double %5, ptr @scale, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %8 = call i32 @dtime(ptr noundef @TimeArray)
  %9 = call i32 @dtime(ptr noundef @TimeArray)
  store double 0.000000e+00, ptr @sa, align 8
  %10 = load double, ptr @sa, align 8
  %11 = load double, ptr @TLimit, align 8
  %12 = fcmp olt double %10, %11
  br i1 %12, label %.lr.ph300, label %.loopexit

.lr.ph300:                                        ; preds = %0
  br label %17

13:                                               ; preds = %45
  %.0284 = phi double [ %21, %45 ]
  %.0273 = phi double [ %.2275.lcssa, %45 ]
  %.0 = phi i32 [ %18, %45 ]
  %14 = load double, ptr @sa, align 8
  %15 = load double, ptr @TLimit, align 8
  %16 = fcmp olt double %14, %15
  br i1 %16, label %17, label %..loopexit_crit_edge, !llvm.loop !7

17:                                               ; preds = %.lr.ph300, %13
  %.0298 = phi i32 [ 15625, %.lr.ph300 ], [ %.0, %13 ]
  %18 = mul nsw i32 2, %.0298
  %19 = load double, ptr @one, align 8
  %20 = sitofp i32 %18 to double
  %21 = fdiv double %19, %20
  %22 = load double, ptr @one, align 8
  %23 = call i32 @dtime(ptr noundef @TimeArray)
  %24 = sub nsw i32 %18, 1
  %25 = icmp sle i32 1, %24
  br i1 %25, label %.lr.ph, label %45

.lr.ph:                                           ; preds = %17
  br label %26

26:                                               ; preds = %.lr.ph, %42
  %.0271297 = phi i32 [ 1, %.lr.ph ], [ %43, %42 ]
  %.2275296 = phi double [ 0.000000e+00, %.lr.ph ], [ %41, %42 ]
  %.0288295 = phi double [ 0.000000e+00, %.lr.ph ], [ %27, %42 ]
  %27 = fadd double %.0288295, %22
  %28 = fmul double %27, %21
  %29 = load double, ptr @D1, align 8
  %30 = load double, ptr @D2, align 8
  %31 = load double, ptr @D3, align 8
  %32 = call double @llvm.fmuladd.f64(double %28, double %31, double %30)
  %33 = call double @llvm.fmuladd.f64(double %28, double %32, double %29)
  %34 = load double, ptr @D1, align 8
  %35 = load double, ptr @E2, align 8
  %36 = load double, ptr @E3, align 8
  %37 = call double @llvm.fmuladd.f64(double %28, double %36, double %35)
  %38 = call double @llvm.fmuladd.f64(double %28, double %37, double %34)
  %39 = call double @llvm.fmuladd.f64(double %28, double %38, double %22)
  %40 = fdiv double %33, %39
  %41 = fadd double %.2275296, %40
  br label %42

42:                                               ; preds = %26
  %43 = add nsw i32 %.0271297, 1
  %44 = icmp sle i32 %43, %24
  br i1 %44, label %26, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %42
  %split = phi double [ %41, %42 ]
  br label %45

45:                                               ; preds = %._crit_edge, %17
  %.2275.lcssa = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %17 ]
  %46 = call i32 @dtime(ptr noundef @TimeArray)
  %47 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %47, ptr @sa, align 8
  %48 = icmp eq i32 %18, 512000000
  br i1 %48, label %49, label %13

49:                                               ; preds = %45
  %.lcssa294 = phi i32 [ %18, %45 ]
  %.lcssa = phi double [ %21, %45 ]
  %.2275.lcssa.lcssa = phi double [ %.2275.lcssa, %45 ]
  br label %50

..loopexit_crit_edge:                             ; preds = %13
  %split301 = phi double [ %.0284, %13 ]
  %split302 = phi double [ %.0273, %13 ]
  %split303 = phi i32 [ %.0, %13 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.0284.lcssa = phi double [ %split301, %..loopexit_crit_edge ], [ undef, %0 ]
  %.0273.lcssa = phi double [ %split302, %..loopexit_crit_edge ], [ undef, %0 ]
  %.0.lcssa = phi i32 [ %split303, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %50

50:                                               ; preds = %.loopexit, %49
  %.1285 = phi double [ %.lcssa, %49 ], [ %.0284.lcssa, %.loopexit ]
  %.1274 = phi double [ %.2275.lcssa.lcssa, %49 ], [ %.0273.lcssa, %.loopexit ]
  %.1 = phi i32 [ %.lcssa294, %49 ], [ %.0.lcssa, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  %51 = load double, ptr @scale, align 8
  store double %51, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %52 = call i32 @dtime(ptr noundef @TimeArray)
  %53 = sub nsw i32 %.1, 1
  %54 = icmp sle i32 1, %53
  br i1 %54, label %.lr.ph306, label %59

.lr.ph306:                                        ; preds = %50
  br label %55

55:                                               ; preds = %.lr.ph306, %56
  %.1272304 = phi i32 [ 1, %.lr.ph306 ], [ %57, %56 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.1272304, 1
  %58 = icmp sle i32 %57, %53
  br i1 %58, label %55, label %._crit_edge307, !llvm.loop !10

._crit_edge307:                                   ; preds = %56
  br label %59

59:                                               ; preds = %._crit_edge307, %50
  %60 = call i32 @dtime(ptr noundef @TimeArray)
  %61 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %63 = fmul double %61, %62
  store double %63, ptr @nulltime, align 8
  %64 = load double, ptr @nulltime, align 8
  %65 = fcmp olt double %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %69 = load double, ptr @sa, align 8
  %70 = load double, ptr @nulltime, align 8
  %71 = fneg double %70
  %72 = call double @llvm.fmuladd.f64(double %68, double %69, double %71)
  store double %72, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %73 = load double, ptr @D1, align 8
  %74 = load double, ptr @D2, align 8
  %75 = fadd double %73, %74
  %76 = load double, ptr @D3, align 8
  %77 = fadd double %75, %76
  %78 = load double, ptr @one, align 8
  %79 = load double, ptr @D1, align 8
  %80 = fadd double %78, %79
  %81 = load double, ptr @E2, align 8
  %82 = fadd double %80, %81
  %83 = load double, ptr @E3, align 8
  %84 = fadd double %82, %83
  %85 = fdiv double %77, %84
  store double %85, ptr @sa, align 8
  %86 = load double, ptr @D1, align 8
  store double %86, ptr @sb, align 8
  %87 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %88 = fdiv double %87, 1.400000e+01
  store double %88, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %89 = load double, ptr @sa, align 8
  %90 = load double, ptr @sb, align 8
  %91 = fadd double %89, %90
  %92 = load double, ptr @two, align 8
  %93 = call double @llvm.fmuladd.f64(double %92, double %.1274, double %91)
  %94 = fmul double %.1285, %93
  %95 = load double, ptr @two, align 8
  %96 = fdiv double %94, %95
  store double %96, ptr @sa, align 8
  %97 = load double, ptr @one, align 8
  %98 = load double, ptr @sa, align 8
  %99 = fdiv double %97, %98
  store double %99, ptr @sb, align 8
  %100 = load double, ptr @sb, align 8
  %101 = fptosi double %100 to i32
  %102 = mul nsw i32 40000, %101
  %103 = sitofp i32 %102 to double
  %104 = load double, ptr @scale, align 8
  %105 = fdiv double %103, %104
  %106 = fptosi double %105 to i32
  %107 = load double, ptr @sb, align 8
  %108 = fsub double %107, 2.520000e+01
  store double %108, ptr @sc, align 8
  %109 = load double, ptr @one, align 8
  %110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %111 = fdiv double %109, %110
  store double %111, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %112 = load double, ptr @sc, align 8
  %113 = fmul double %112, 1.000000e-30
  %114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %115 = fmul double %114, 1.000000e-30
  %116 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %117 = fmul double %116, 1.000000e-30
  %118 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %113, double noundef %115, double noundef %117)
  %119 = load double, ptr @five, align 8
  %120 = fneg double %119
  %121 = load double, ptr @one, align 8
  %122 = fneg double %121
  store double %122, ptr @sa, align 8
  %123 = call i32 @dtime(ptr noundef @TimeArray)
  %124 = icmp sle i32 1, %106
  br i1 %124, label %.lr.ph311, label %132

.lr.ph311:                                        ; preds = %67
  br label %125

125:                                              ; preds = %.lr.ph311, %129
  %.2309 = phi i32 [ 1, %.lr.ph311 ], [ %130, %129 ]
  %.3276308 = phi double [ %120, %.lr.ph311 ], [ %126, %129 ]
  %126 = fneg double %.3276308
  %127 = load double, ptr @sa, align 8
  %128 = fadd double %127, %126
  store double %128, ptr @sa, align 8
  br label %129

129:                                              ; preds = %125
  %130 = add nsw i32 %.2309, 1
  %131 = icmp sle i32 %130, %106
  br i1 %131, label %125, label %._crit_edge312, !llvm.loop !11

._crit_edge312:                                   ; preds = %129
  %split313 = phi double [ %126, %129 ]
  br label %132

132:                                              ; preds = %._crit_edge312, %67
  %.3276.lcssa = phi double [ %split313, %._crit_edge312 ], [ %120, %67 ]
  %133 = call i32 @dtime(ptr noundef @TimeArray)
  %134 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %136 = fmul double %134, %135
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %137 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %138 = fcmp olt double %137, 0.000000e+00
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %140

140:                                              ; preds = %139, %132
  %141 = sitofp i32 %106 to double
  store double %141, ptr @sc, align 8
  %142 = load double, ptr @sa, align 8
  %143 = call i32 @dtime(ptr noundef @TimeArray)
  %144 = icmp sle i32 1, %106
  br i1 %144, label %.lr.ph321, label %160

.lr.ph321:                                        ; preds = %140
  br label %145

145:                                              ; preds = %.lr.ph321, %157
  %.3319 = phi i32 [ 1, %.lr.ph321 ], [ %158, %157 ]
  %.4277318 = phi double [ %.3276.lcssa, %.lr.ph321 ], [ %146, %157 ]
  %.0283317 = phi double [ %142, %.lr.ph321 ], [ %150, %157 ]
  %.2286316 = phi double [ 0.000000e+00, %.lr.ph321 ], [ %152, %157 ]
  %.0287315 = phi double [ 0.000000e+00, %.lr.ph321 ], [ %156, %157 ]
  %.1289314 = phi double [ 0.000000e+00, %.lr.ph321 ], [ %154, %157 ]
  %146 = fneg double %.4277318
  %147 = load double, ptr @sa, align 8
  %148 = fadd double %147, %146
  store double %148, ptr @sa, align 8
  %149 = load double, ptr @two, align 8
  %150 = fadd double %.0283317, %149
  %151 = fsub double %146, %150
  %152 = fadd double %.2286316, %151
  %153 = fneg double %146
  %154 = call double @llvm.fmuladd.f64(double %153, double %150, double %.1289314)
  %155 = fdiv double %146, %150
  %156 = fadd double %.0287315, %155
  br label %157

157:                                              ; preds = %145
  %158 = add nsw i32 %.3319, 1
  %159 = icmp sle i32 %158, %106
  br i1 %159, label %145, label %._crit_edge322, !llvm.loop !12

._crit_edge322:                                   ; preds = %157
  %split323 = phi double [ %154, %157 ]
  %split324 = phi double [ %156, %157 ]
  %split325 = phi double [ %152, %157 ]
  br label %160

160:                                              ; preds = %._crit_edge322, %140
  %.1289.lcssa = phi double [ %split323, %._crit_edge322 ], [ 0.000000e+00, %140 ]
  %.0287.lcssa = phi double [ %split324, %._crit_edge322 ], [ 0.000000e+00, %140 ]
  %.2286.lcssa = phi double [ %split325, %._crit_edge322 ], [ 0.000000e+00, %140 ]
  %161 = call i32 @dtime(ptr noundef @TimeArray)
  %162 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %164 = fmul double %162, %163
  store double %164, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %165 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %166 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %167 = fsub double %165, %166
  %168 = fdiv double %167, 7.000000e+00
  store double %168, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %169 = load double, ptr @sa, align 8
  %170 = fmul double %169, %.2286.lcssa
  %171 = load double, ptr @sc, align 8
  %172 = fdiv double %170, %171
  %173 = fptosi double %172 to i32
  %174 = load double, ptr @four, align 8
  %175 = fmul double %174, %.0287.lcssa
  %176 = load double, ptr @five, align 8
  %177 = fdiv double %175, %176
  store double %177, ptr @sa, align 8
  %178 = load double, ptr @sa, align 8
  %179 = load double, ptr @five, align 8
  %180 = fdiv double %179, %.1289.lcssa
  %181 = fadd double %178, %180
  store double %181, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %182 = load double, ptr @sb, align 8
  %183 = load double, ptr @sc, align 8
  %184 = fmul double %.1289.lcssa, %.1289.lcssa
  %185 = fmul double %184, %.1289.lcssa
  %186 = fdiv double %183, %185
  %187 = fsub double %182, %186
  store double %187, ptr @piprg, align 8
  %188 = load double, ptr @piprg, align 8
  %189 = load double, ptr @piref, align 8
  %190 = fsub double %188, %189
  store double %190, ptr @pierr, align 8
  %191 = load double, ptr @one, align 8
  %192 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %193 = fdiv double %191, %192
  store double %193, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %194 = load double, ptr @pierr, align 8
  %195 = fmul double %194, 1.000000e-30
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %197 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %198 = fsub double %196, %197
  %199 = fmul double %198, 1.000000e-30
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %201 = fmul double %200, 1.000000e-30
  %202 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %195, double noundef %199, double noundef %201)
  %203 = load double, ptr @piref, align 8
  %204 = load double, ptr @three, align 8
  %205 = sitofp i32 %173 to double
  %206 = fmul double %204, %205
  %207 = fdiv double %203, %206
  %208 = call i32 @dtime(ptr noundef @TimeArray)
  %209 = sub nsw i32 %173, 1
  %210 = icmp sle i32 1, %209
  br i1 %210, label %.lr.ph330, label %235

.lr.ph330:                                        ; preds = %160
  br label %211

211:                                              ; preds = %.lr.ph330, %232
  %.4328 = phi i32 [ 1, %.lr.ph330 ], [ %233, %232 ]
  %.5278327 = phi double [ 0.000000e+00, %.lr.ph330 ], [ %231, %232 ]
  %.2290326 = phi double [ 0.000000e+00, %.lr.ph330 ], [ %213, %232 ]
  %212 = load double, ptr @one, align 8
  %213 = fadd double %.2290326, %212
  %214 = fmul double %213, %207
  %215 = fmul double %214, %214
  %216 = load double, ptr @A6, align 8
  %217 = load double, ptr @A5, align 8
  %218 = fneg double %217
  %219 = call double @llvm.fmuladd.f64(double %216, double %215, double %218)
  %220 = load double, ptr @A4, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %215, double %220)
  %222 = load double, ptr @A3, align 8
  %223 = fneg double %222
  %224 = call double @llvm.fmuladd.f64(double %221, double %215, double %223)
  %225 = load double, ptr @A2, align 8
  %226 = call double @llvm.fmuladd.f64(double %224, double %215, double %225)
  %227 = load double, ptr @A1, align 8
  %228 = call double @llvm.fmuladd.f64(double %226, double %215, double %227)
  %229 = load double, ptr @one, align 8
  %230 = call double @llvm.fmuladd.f64(double %228, double %215, double %229)
  %231 = call double @llvm.fmuladd.f64(double %214, double %230, double %.5278327)
  br label %232

232:                                              ; preds = %211
  %233 = add nsw i32 %.4328, 1
  %234 = icmp sle i32 %233, %209
  br i1 %234, label %211, label %._crit_edge331, !llvm.loop !13

._crit_edge331:                                   ; preds = %232
  %split332 = phi double [ %231, %232 ]
  br label %235

235:                                              ; preds = %._crit_edge331, %160
  %.5278.lcssa = phi double [ %split332, %._crit_edge331 ], [ 0.000000e+00, %160 ]
  %236 = call i32 @dtime(ptr noundef @TimeArray)
  %237 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %238 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %239 = load double, ptr @nulltime, align 8
  %240 = fneg double %239
  %241 = call double @llvm.fmuladd.f64(double %237, double %238, double %240)
  store double %241, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %242 = load double, ptr @piref, align 8
  %243 = load double, ptr @three, align 8
  %244 = fdiv double %242, %243
  %245 = fmul double %244, %244
  %246 = load double, ptr @A6, align 8
  %247 = load double, ptr @A5, align 8
  %248 = fneg double %247
  %249 = call double @llvm.fmuladd.f64(double %246, double %245, double %248)
  %250 = load double, ptr @A4, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %245, double %250)
  %252 = load double, ptr @A3, align 8
  %253 = fneg double %252
  %254 = call double @llvm.fmuladd.f64(double %251, double %245, double %253)
  %255 = load double, ptr @A2, align 8
  %256 = call double @llvm.fmuladd.f64(double %254, double %245, double %255)
  %257 = load double, ptr @A1, align 8
  %258 = call double @llvm.fmuladd.f64(double %256, double %245, double %257)
  %259 = load double, ptr @one, align 8
  %260 = call double @llvm.fmuladd.f64(double %258, double %245, double %259)
  %261 = fmul double %244, %260
  store double %261, ptr @sa, align 8
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %263 = fdiv double %262, 1.700000e+01
  store double %263, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %264 = load double, ptr @sa, align 8
  %265 = load double, ptr @two, align 8
  %266 = call double @llvm.fmuladd.f64(double %265, double %.5278.lcssa, double %264)
  %267 = fmul double %207, %266
  %268 = load double, ptr @two, align 8
  %269 = fdiv double %267, %268
  store double %269, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %270 = load double, ptr @sa, align 8
  %271 = load double, ptr @sb, align 8
  %272 = fsub double %270, %271
  store double %272, ptr @sc, align 8
  %273 = load double, ptr @one, align 8
  %274 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %275 = fdiv double %273, %274
  store double %275, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %276 = load double, ptr @sc, align 8
  %277 = fmul double %276, 1.000000e-30
  %278 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %279 = fmul double %278, 1.000000e-30
  %280 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %281 = fmul double %280, 1.000000e-30
  %282 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %277, double noundef %279, double noundef %281)
  %283 = load double, ptr @A3, align 8
  %284 = fneg double %283
  store double %284, ptr @A3, align 8
  %285 = load double, ptr @A5, align 8
  %286 = fneg double %285
  store double %286, ptr @A5, align 8
  %287 = load double, ptr @piref, align 8
  %288 = load double, ptr @three, align 8
  %289 = sitofp i32 %173 to double
  %290 = fmul double %288, %289
  %291 = fdiv double %287, %290
  %292 = call i32 @dtime(ptr noundef @TimeArray)
  %293 = sub nsw i32 %173, 1
  %294 = icmp sle i32 1, %293
  br i1 %294, label %.lr.ph336, label %316

.lr.ph336:                                        ; preds = %235
  br label %295

295:                                              ; preds = %.lr.ph336, %313
  %.5334 = phi i32 [ 1, %.lr.ph336 ], [ %314, %313 ]
  %.6279333 = phi double [ 0.000000e+00, %.lr.ph336 ], [ %312, %313 ]
  %296 = sitofp i32 %.5334 to double
  %297 = fmul double %296, %291
  %298 = fmul double %297, %297
  %299 = load double, ptr @B6, align 8
  %300 = load double, ptr @B5, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %298, double %300)
  %302 = load double, ptr @B4, align 8
  %303 = call double @llvm.fmuladd.f64(double %298, double %301, double %302)
  %304 = load double, ptr @B3, align 8
  %305 = call double @llvm.fmuladd.f64(double %298, double %303, double %304)
  %306 = load double, ptr @B2, align 8
  %307 = call double @llvm.fmuladd.f64(double %298, double %305, double %306)
  %308 = load double, ptr @B1, align 8
  %309 = call double @llvm.fmuladd.f64(double %298, double %307, double %308)
  %310 = call double @llvm.fmuladd.f64(double %298, double %309, double %.6279333)
  %311 = load double, ptr @one, align 8
  %312 = fadd double %310, %311
  br label %313

313:                                              ; preds = %295
  %314 = add nsw i32 %.5334, 1
  %315 = icmp sle i32 %314, %293
  br i1 %315, label %295, label %._crit_edge337, !llvm.loop !14

._crit_edge337:                                   ; preds = %313
  %split338 = phi double [ %312, %313 ]
  br label %316

316:                                              ; preds = %._crit_edge337, %235
  %.6279.lcssa = phi double [ %split338, %._crit_edge337 ], [ 0.000000e+00, %235 ]
  %317 = call i32 @dtime(ptr noundef @TimeArray)
  %318 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %320 = load double, ptr @nulltime, align 8
  %321 = fneg double %320
  %322 = call double @llvm.fmuladd.f64(double %318, double %319, double %321)
  store double %322, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %323 = load double, ptr @piref, align 8
  %324 = load double, ptr @three, align 8
  %325 = fdiv double %323, %324
  %326 = fmul double %325, %325
  %327 = load double, ptr @B6, align 8
  %328 = load double, ptr @B5, align 8
  %329 = call double @llvm.fmuladd.f64(double %327, double %326, double %328)
  %330 = load double, ptr @B4, align 8
  %331 = call double @llvm.fmuladd.f64(double %326, double %329, double %330)
  %332 = load double, ptr @B3, align 8
  %333 = call double @llvm.fmuladd.f64(double %326, double %331, double %332)
  %334 = load double, ptr @B2, align 8
  %335 = call double @llvm.fmuladd.f64(double %326, double %333, double %334)
  %336 = load double, ptr @B1, align 8
  %337 = call double @llvm.fmuladd.f64(double %326, double %335, double %336)
  %338 = load double, ptr @one, align 8
  %339 = call double @llvm.fmuladd.f64(double %326, double %337, double %338)
  store double %339, ptr @sa, align 8
  %340 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %341 = fdiv double %340, 1.500000e+01
  store double %341, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %342 = load double, ptr @sa, align 8
  %343 = load double, ptr @one, align 8
  %344 = fadd double %342, %343
  %345 = load double, ptr @two, align 8
  %346 = call double @llvm.fmuladd.f64(double %345, double %.6279.lcssa, double %344)
  %347 = fmul double %291, %346
  %348 = load double, ptr @two, align 8
  %349 = fdiv double %347, %348
  store double %349, ptr @sa, align 8
  %350 = load double, ptr @piref, align 8
  %351 = load double, ptr @three, align 8
  %352 = fdiv double %350, %351
  %353 = fmul double %352, %352
  %354 = load double, ptr @A6, align 8
  %355 = load double, ptr @A5, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %353, double %355)
  %357 = load double, ptr @A4, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %353, double %357)
  %359 = load double, ptr @A3, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %353, double %359)
  %361 = load double, ptr @A2, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %353, double %361)
  %363 = load double, ptr @A1, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %353, double %363)
  %365 = load double, ptr @A0, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %353, double %365)
  %367 = fmul double %352, %366
  store double %367, ptr @sb, align 8
  %368 = load double, ptr @sa, align 8
  %369 = load double, ptr @sb, align 8
  %370 = fsub double %368, %369
  store double %370, ptr @sc, align 8
  %371 = load double, ptr @one, align 8
  %372 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %373 = fdiv double %371, %372
  store double %373, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %374 = load double, ptr @sc, align 8
  %375 = fmul double %374, 1.000000e-30
  %376 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %377 = fmul double %376, 1.000000e-30
  %378 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %379 = fmul double %378, 1.000000e-30
  %380 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %375, double noundef %377, double noundef %379)
  %381 = load double, ptr @piref, align 8
  %382 = load double, ptr @three, align 8
  %383 = sitofp i32 %173 to double
  %384 = fmul double %382, %383
  %385 = fdiv double %381, %384
  %386 = call i32 @dtime(ptr noundef @TimeArray)
  %387 = sub nsw i32 %173, 1
  %388 = icmp sle i32 1, %387
  br i1 %388, label %.lr.ph342, label %425

.lr.ph342:                                        ; preds = %316
  br label %389

389:                                              ; preds = %.lr.ph342, %422
  %.6340 = phi i32 [ 1, %.lr.ph342 ], [ %423, %422 ]
  %.7280339 = phi double [ 0.000000e+00, %.lr.ph342 ], [ %421, %422 ]
  %390 = sitofp i32 %.6340 to double
  %391 = fmul double %390, %385
  %392 = fmul double %391, %391
  %393 = load double, ptr @A6, align 8
  %394 = load double, ptr @A5, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %392, double %394)
  %396 = load double, ptr @A4, align 8
  %397 = call double @llvm.fmuladd.f64(double %395, double %392, double %396)
  %398 = load double, ptr @A3, align 8
  %399 = call double @llvm.fmuladd.f64(double %397, double %392, double %398)
  %400 = load double, ptr @A2, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %392, double %400)
  %402 = load double, ptr @A1, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %392, double %402)
  %404 = load double, ptr @one, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %392, double %404)
  %406 = fmul double %391, %405
  %407 = load double, ptr @B6, align 8
  %408 = load double, ptr @B5, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %392, double %408)
  %410 = load double, ptr @B4, align 8
  %411 = call double @llvm.fmuladd.f64(double %392, double %409, double %410)
  %412 = load double, ptr @B3, align 8
  %413 = call double @llvm.fmuladd.f64(double %392, double %411, double %412)
  %414 = load double, ptr @B2, align 8
  %415 = call double @llvm.fmuladd.f64(double %392, double %413, double %414)
  %416 = load double, ptr @B1, align 8
  %417 = call double @llvm.fmuladd.f64(double %392, double %415, double %416)
  %418 = load double, ptr @one, align 8
  %419 = call double @llvm.fmuladd.f64(double %392, double %417, double %418)
  %420 = fdiv double %406, %419
  %421 = fadd double %.7280339, %420
  br label %422

422:                                              ; preds = %389
  %423 = add nsw i32 %.6340, 1
  %424 = icmp sle i32 %423, %387
  br i1 %424, label %389, label %._crit_edge343, !llvm.loop !15

._crit_edge343:                                   ; preds = %422
  %split344 = phi double [ %421, %422 ]
  br label %425

425:                                              ; preds = %._crit_edge343, %316
  %.7280.lcssa = phi double [ %split344, %._crit_edge343 ], [ 0.000000e+00, %316 ]
  %426 = call i32 @dtime(ptr noundef @TimeArray)
  %427 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %428 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %429 = load double, ptr @nulltime, align 8
  %430 = fneg double %429
  %431 = call double @llvm.fmuladd.f64(double %427, double %428, double %430)
  store double %431, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %432 = load double, ptr @piref, align 8
  %433 = load double, ptr @three, align 8
  %434 = fdiv double %432, %433
  %435 = fmul double %434, %434
  %436 = load double, ptr @A6, align 8
  %437 = load double, ptr @A5, align 8
  %438 = call double @llvm.fmuladd.f64(double %436, double %435, double %437)
  %439 = load double, ptr @A4, align 8
  %440 = call double @llvm.fmuladd.f64(double %438, double %435, double %439)
  %441 = load double, ptr @A3, align 8
  %442 = call double @llvm.fmuladd.f64(double %440, double %435, double %441)
  %443 = load double, ptr @A2, align 8
  %444 = call double @llvm.fmuladd.f64(double %442, double %435, double %443)
  %445 = load double, ptr @A1, align 8
  %446 = call double @llvm.fmuladd.f64(double %444, double %435, double %445)
  %447 = load double, ptr @one, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %435, double %447)
  %449 = fmul double %434, %448
  store double %449, ptr @sa, align 8
  %450 = load double, ptr @B6, align 8
  %451 = load double, ptr @B5, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %435, double %451)
  %453 = load double, ptr @B4, align 8
  %454 = call double @llvm.fmuladd.f64(double %435, double %452, double %453)
  %455 = load double, ptr @B3, align 8
  %456 = call double @llvm.fmuladd.f64(double %435, double %454, double %455)
  %457 = load double, ptr @B2, align 8
  %458 = call double @llvm.fmuladd.f64(double %435, double %456, double %457)
  %459 = load double, ptr @B1, align 8
  %460 = call double @llvm.fmuladd.f64(double %435, double %458, double %459)
  %461 = load double, ptr @one, align 8
  %462 = call double @llvm.fmuladd.f64(double %435, double %460, double %461)
  store double %462, ptr @sb, align 8
  %463 = load double, ptr @sa, align 8
  %464 = load double, ptr @sb, align 8
  %465 = fdiv double %463, %464
  store double %465, ptr @sa, align 8
  %466 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %467 = fdiv double %466, 2.900000e+01
  store double %467, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %468 = load double, ptr @sa, align 8
  %469 = load double, ptr @two, align 8
  %470 = call double @llvm.fmuladd.f64(double %469, double %.7280.lcssa, double %468)
  %471 = fmul double %385, %470
  %472 = load double, ptr @two, align 8
  %473 = fdiv double %471, %472
  store double %473, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %474 = load double, ptr @sa, align 8
  %475 = load double, ptr @sb, align 8
  %476 = fsub double %474, %475
  store double %476, ptr @sc, align 8
  %477 = load double, ptr @one, align 8
  %478 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %479 = fdiv double %477, %478
  store double %479, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %480 = load double, ptr @sc, align 8
  %481 = fmul double %480, 1.000000e-30
  %482 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %483 = fmul double %482, 1.000000e-30
  %484 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %485 = fmul double %484, 1.000000e-30
  %486 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %481, double noundef %483, double noundef %485)
  %487 = load double, ptr @piref, align 8
  %488 = load double, ptr @four, align 8
  %489 = sitofp i32 %173 to double
  %490 = fmul double %488, %489
  %491 = fdiv double %487, %490
  %492 = call i32 @dtime(ptr noundef @TimeArray)
  %493 = sub nsw i32 %173, 1
  %494 = icmp sle i32 1, %493
  br i1 %494, label %.lr.ph348, label %530

.lr.ph348:                                        ; preds = %425
  br label %495

495:                                              ; preds = %.lr.ph348, %527
  %.7346 = phi i32 [ 1, %.lr.ph348 ], [ %528, %527 ]
  %.8281345 = phi double [ 0.000000e+00, %.lr.ph348 ], [ %526, %527 ]
  %496 = sitofp i32 %.7346 to double
  %497 = fmul double %496, %491
  %498 = fmul double %497, %497
  %499 = load double, ptr @A6, align 8
  %500 = load double, ptr @A5, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %498, double %500)
  %502 = load double, ptr @A4, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %498, double %502)
  %504 = load double, ptr @A3, align 8
  %505 = call double @llvm.fmuladd.f64(double %503, double %498, double %504)
  %506 = load double, ptr @A2, align 8
  %507 = call double @llvm.fmuladd.f64(double %505, double %498, double %506)
  %508 = load double, ptr @A1, align 8
  %509 = call double @llvm.fmuladd.f64(double %507, double %498, double %508)
  %510 = load double, ptr @one, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %498, double %510)
  %512 = fmul double %497, %511
  %513 = load double, ptr @B6, align 8
  %514 = load double, ptr @B5, align 8
  %515 = call double @llvm.fmuladd.f64(double %513, double %498, double %514)
  %516 = load double, ptr @B4, align 8
  %517 = call double @llvm.fmuladd.f64(double %498, double %515, double %516)
  %518 = load double, ptr @B3, align 8
  %519 = call double @llvm.fmuladd.f64(double %498, double %517, double %518)
  %520 = load double, ptr @B2, align 8
  %521 = call double @llvm.fmuladd.f64(double %498, double %519, double %520)
  %522 = load double, ptr @B1, align 8
  %523 = call double @llvm.fmuladd.f64(double %498, double %521, double %522)
  %524 = load double, ptr @one, align 8
  %525 = call double @llvm.fmuladd.f64(double %498, double %523, double %524)
  %526 = call double @llvm.fmuladd.f64(double %512, double %525, double %.8281345)
  br label %527

527:                                              ; preds = %495
  %528 = add nsw i32 %.7346, 1
  %529 = icmp sle i32 %528, %493
  br i1 %529, label %495, label %._crit_edge349, !llvm.loop !16

._crit_edge349:                                   ; preds = %527
  %split350 = phi double [ %526, %527 ]
  br label %530

530:                                              ; preds = %._crit_edge349, %425
  %.8281.lcssa = phi double [ %split350, %._crit_edge349 ], [ 0.000000e+00, %425 ]
  %531 = call i32 @dtime(ptr noundef @TimeArray)
  %532 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %533 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %534 = load double, ptr @nulltime, align 8
  %535 = fneg double %534
  %536 = call double @llvm.fmuladd.f64(double %532, double %533, double %535)
  store double %536, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %537 = load double, ptr @piref, align 8
  %538 = load double, ptr @four, align 8
  %539 = fdiv double %537, %538
  %540 = fmul double %539, %539
  %541 = load double, ptr @A6, align 8
  %542 = load double, ptr @A5, align 8
  %543 = call double @llvm.fmuladd.f64(double %541, double %540, double %542)
  %544 = load double, ptr @A4, align 8
  %545 = call double @llvm.fmuladd.f64(double %543, double %540, double %544)
  %546 = load double, ptr @A3, align 8
  %547 = call double @llvm.fmuladd.f64(double %545, double %540, double %546)
  %548 = load double, ptr @A2, align 8
  %549 = call double @llvm.fmuladd.f64(double %547, double %540, double %548)
  %550 = load double, ptr @A1, align 8
  %551 = call double @llvm.fmuladd.f64(double %549, double %540, double %550)
  %552 = load double, ptr @one, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %540, double %552)
  %554 = fmul double %539, %553
  store double %554, ptr @sa, align 8
  %555 = load double, ptr @B6, align 8
  %556 = load double, ptr @B5, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %540, double %556)
  %558 = load double, ptr @B4, align 8
  %559 = call double @llvm.fmuladd.f64(double %540, double %557, double %558)
  %560 = load double, ptr @B3, align 8
  %561 = call double @llvm.fmuladd.f64(double %540, double %559, double %560)
  %562 = load double, ptr @B2, align 8
  %563 = call double @llvm.fmuladd.f64(double %540, double %561, double %562)
  %564 = load double, ptr @B1, align 8
  %565 = call double @llvm.fmuladd.f64(double %540, double %563, double %564)
  %566 = load double, ptr @one, align 8
  %567 = call double @llvm.fmuladd.f64(double %540, double %565, double %566)
  store double %567, ptr @sb, align 8
  %568 = load double, ptr @sa, align 8
  %569 = load double, ptr @sb, align 8
  %570 = fmul double %568, %569
  store double %570, ptr @sa, align 8
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %572 = fdiv double %571, 2.900000e+01
  store double %572, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %573 = load double, ptr @sa, align 8
  %574 = load double, ptr @two, align 8
  %575 = call double @llvm.fmuladd.f64(double %574, double %.8281.lcssa, double %573)
  %576 = fmul double %491, %575
  %577 = load double, ptr @two, align 8
  %578 = fdiv double %576, %577
  store double %578, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %579 = load double, ptr @sa, align 8
  %580 = load double, ptr @sb, align 8
  %581 = fsub double %579, %580
  store double %581, ptr @sc, align 8
  %582 = load double, ptr @one, align 8
  %583 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %584 = fdiv double %582, %583
  store double %584, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %585 = load double, ptr @sc, align 8
  %586 = fmul double %585, 1.000000e-30
  %587 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %588 = fmul double %587, 1.000000e-30
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %590 = fmul double %589, 1.000000e-30
  %591 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %586, double noundef %588, double noundef %590)
  %592 = load double, ptr @one, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %593 = load double, ptr @sa, align 8
  %594 = sitofp i32 %173 to double
  %595 = fdiv double %593, %594
  %596 = call i32 @dtime(ptr noundef @TimeArray)
  %597 = sub nsw i32 %173, 1
  %598 = icmp sle i32 1, %597
  br i1 %598, label %.lr.ph354, label %615

.lr.ph354:                                        ; preds = %530
  br label %599

599:                                              ; preds = %.lr.ph354, %612
  %.8352 = phi i32 [ 1, %.lr.ph354 ], [ %613, %612 ]
  %.9282351 = phi double [ 0.000000e+00, %.lr.ph354 ], [ %611, %612 ]
  %600 = sitofp i32 %.8352 to double
  %601 = fmul double %600, %595
  %602 = fmul double %601, %601
  %603 = fadd double %601, %592
  %604 = fdiv double %592, %603
  %605 = fsub double %.9282351, %604
  %606 = fadd double %602, %592
  %607 = fdiv double %601, %606
  %608 = fsub double %605, %607
  %609 = call double @llvm.fmuladd.f64(double %601, double %602, double %592)
  %610 = fdiv double %602, %609
  %611 = fsub double %608, %610
  br label %612

612:                                              ; preds = %599
  %613 = add nsw i32 %.8352, 1
  %614 = icmp sle i32 %613, %597
  br i1 %614, label %599, label %._crit_edge355, !llvm.loop !17

._crit_edge355:                                   ; preds = %612
  %split356 = phi double [ %611, %612 ]
  br label %615

615:                                              ; preds = %._crit_edge355, %530
  %.9282.lcssa = phi double [ %split356, %._crit_edge355 ], [ 0.000000e+00, %530 ]
  %616 = call i32 @dtime(ptr noundef @TimeArray)
  %617 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %619 = load double, ptr @nulltime, align 8
  %620 = fneg double %619
  %621 = call double @llvm.fmuladd.f64(double %617, double %618, double %620)
  store double %621, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %622 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %623 = fdiv double %622, 1.200000e+01
  store double %623, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %624 = load double, ptr @sa, align 8
  %625 = fmul double %624, %624
  %626 = fneg double %592
  %627 = fadd double %624, %592
  %628 = fdiv double %592, %627
  %629 = fsub double %626, %628
  %630 = fadd double %625, %592
  %631 = fdiv double %624, %630
  %632 = fsub double %629, %631
  %633 = call double @llvm.fmuladd.f64(double %624, double %625, double %592)
  %634 = fdiv double %625, %633
  %635 = fsub double %632, %634
  store double %635, ptr @sa, align 8
  %636 = fmul double 1.800000e+01, %595
  %637 = load double, ptr @sa, align 8
  %638 = load double, ptr @two, align 8
  %639 = call double @llvm.fmuladd.f64(double %638, double %.9282.lcssa, double %637)
  %640 = fmul double %636, %639
  store double %640, ptr @sa, align 8
  %641 = load double, ptr @sa, align 8
  %642 = fptosi double %641 to i32
  %643 = mul nsw i32 -2000, %642
  %644 = sitofp i32 %643 to double
  %645 = load double, ptr @scale, align 8
  %646 = fdiv double %644, %645
  %647 = fptosi double %646 to i32
  %648 = load double, ptr @sa, align 8
  %649 = fadd double %648, 5.002000e+02
  store double %649, ptr @sc, align 8
  %650 = load double, ptr @one, align 8
  %651 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %652 = fdiv double %650, %651
  store double %652, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %653 = load double, ptr @sc, align 8
  %654 = fmul double %653, 1.000000e-30
  %655 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %656 = fmul double %655, 1.000000e-30
  %657 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %658 = fmul double %657, 1.000000e-30
  %659 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %654, double noundef %656, double noundef %658)
  %660 = load double, ptr @piref, align 8
  %661 = load double, ptr @three, align 8
  %662 = sitofp i32 %647 to double
  %663 = fmul double %661, %662
  %664 = fdiv double %660, %663
  %665 = call i32 @dtime(ptr noundef @TimeArray)
  %666 = sub nsw i32 %647, 1
  %667 = icmp sle i32 1, %666
  br i1 %667, label %.lr.ph360, label %704

.lr.ph360:                                        ; preds = %615
  br label %668

668:                                              ; preds = %.lr.ph360, %701
  %.9358 = phi i32 [ 1, %.lr.ph360 ], [ %702, %701 ]
  %.10357 = phi double [ 0.000000e+00, %.lr.ph360 ], [ %700, %701 ]
  %669 = sitofp i32 %.9358 to double
  %670 = fmul double %669, %664
  %671 = fmul double %670, %670
  %672 = load double, ptr @B6, align 8
  %673 = load double, ptr @B5, align 8
  %674 = call double @llvm.fmuladd.f64(double %672, double %671, double %673)
  %675 = load double, ptr @B4, align 8
  %676 = call double @llvm.fmuladd.f64(double %671, double %674, double %675)
  %677 = load double, ptr @B3, align 8
  %678 = call double @llvm.fmuladd.f64(double %671, double %676, double %677)
  %679 = load double, ptr @B2, align 8
  %680 = call double @llvm.fmuladd.f64(double %671, double %678, double %679)
  %681 = load double, ptr @B1, align 8
  %682 = call double @llvm.fmuladd.f64(double %671, double %680, double %681)
  %683 = load double, ptr @one, align 8
  %684 = call double @llvm.fmuladd.f64(double %671, double %682, double %683)
  %685 = fmul double %684, %684
  %686 = fmul double %685, %670
  %687 = load double, ptr @A6, align 8
  %688 = load double, ptr @A5, align 8
  %689 = call double @llvm.fmuladd.f64(double %687, double %671, double %688)
  %690 = load double, ptr @A4, align 8
  %691 = call double @llvm.fmuladd.f64(double %689, double %671, double %690)
  %692 = load double, ptr @A3, align 8
  %693 = call double @llvm.fmuladd.f64(double %691, double %671, double %692)
  %694 = load double, ptr @A2, align 8
  %695 = call double @llvm.fmuladd.f64(double %693, double %671, double %694)
  %696 = load double, ptr @A1, align 8
  %697 = call double @llvm.fmuladd.f64(double %695, double %671, double %696)
  %698 = load double, ptr @one, align 8
  %699 = call double @llvm.fmuladd.f64(double %697, double %671, double %698)
  %700 = call double @llvm.fmuladd.f64(double %686, double %699, double %.10357)
  br label %701

701:                                              ; preds = %668
  %702 = add nsw i32 %.9358, 1
  %703 = icmp sle i32 %702, %666
  br i1 %703, label %668, label %._crit_edge361, !llvm.loop !18

._crit_edge361:                                   ; preds = %701
  %split362 = phi double [ %700, %701 ]
  br label %704

704:                                              ; preds = %._crit_edge361, %615
  %.10.lcssa = phi double [ %split362, %._crit_edge361 ], [ 0.000000e+00, %615 ]
  %705 = call i32 @dtime(ptr noundef @TimeArray)
  %706 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %707 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %708 = load double, ptr @nulltime, align 8
  %709 = fneg double %708
  %710 = call double @llvm.fmuladd.f64(double %706, double %707, double %709)
  store double %710, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %711 = load double, ptr @piref, align 8
  %712 = load double, ptr @three, align 8
  %713 = fdiv double %711, %712
  %714 = fmul double %713, %713
  %715 = load double, ptr @A6, align 8
  %716 = load double, ptr @A5, align 8
  %717 = call double @llvm.fmuladd.f64(double %715, double %714, double %716)
  %718 = load double, ptr @A4, align 8
  %719 = call double @llvm.fmuladd.f64(double %717, double %714, double %718)
  %720 = load double, ptr @A3, align 8
  %721 = call double @llvm.fmuladd.f64(double %719, double %714, double %720)
  %722 = load double, ptr @A2, align 8
  %723 = call double @llvm.fmuladd.f64(double %721, double %714, double %722)
  %724 = load double, ptr @A1, align 8
  %725 = call double @llvm.fmuladd.f64(double %723, double %714, double %724)
  %726 = load double, ptr @one, align 8
  %727 = call double @llvm.fmuladd.f64(double %725, double %714, double %726)
  %728 = fmul double %713, %727
  store double %728, ptr @sa, align 8
  %729 = load double, ptr @B6, align 8
  %730 = load double, ptr @B5, align 8
  %731 = call double @llvm.fmuladd.f64(double %729, double %714, double %730)
  %732 = load double, ptr @B4, align 8
  %733 = call double @llvm.fmuladd.f64(double %714, double %731, double %732)
  %734 = load double, ptr @B3, align 8
  %735 = call double @llvm.fmuladd.f64(double %714, double %733, double %734)
  %736 = load double, ptr @B2, align 8
  %737 = call double @llvm.fmuladd.f64(double %714, double %735, double %736)
  %738 = load double, ptr @B1, align 8
  %739 = call double @llvm.fmuladd.f64(double %714, double %737, double %738)
  %740 = load double, ptr @one, align 8
  %741 = call double @llvm.fmuladd.f64(double %714, double %739, double %740)
  store double %741, ptr @sb, align 8
  %742 = load double, ptr @sa, align 8
  %743 = load double, ptr @sb, align 8
  %744 = fmul double %742, %743
  %745 = load double, ptr @sb, align 8
  %746 = fmul double %744, %745
  store double %746, ptr @sa, align 8
  %747 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %748 = fdiv double %747, 3.000000e+01
  store double %748, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %749 = load double, ptr @sa, align 8
  %750 = load double, ptr @two, align 8
  %751 = call double @llvm.fmuladd.f64(double %750, double %.10.lcssa, double %749)
  %752 = fmul double %664, %751
  %753 = load double, ptr @two, align 8
  %754 = fdiv double %752, %753
  store double %754, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %755 = load double, ptr @sa, align 8
  %756 = load double, ptr @sb, align 8
  %757 = fsub double %755, %756
  store double %757, ptr @sc, align 8
  %758 = load double, ptr @one, align 8
  %759 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %760 = fdiv double %758, %759
  store double %760, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %761 = load double, ptr @sc, align 8
  %762 = fmul double %761, 1.000000e-30
  %763 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %764 = fmul double %763, 1.000000e-30
  %765 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %766 = fmul double %765, 1.000000e-30
  %767 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %762, double noundef %764, double noundef %766)
  %768 = load double, ptr @five, align 8
  %769 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %770 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %771 = fsub double %769, %770
  %772 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %773 = call double @llvm.fmuladd.f64(double %768, double %771, double %772)
  %774 = fdiv double %773, 5.200000e+01
  store double %774, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %775 = load double, ptr @one, align 8
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %777 = fdiv double %775, %776
  store double %777, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %778 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %779 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %780 = fadd double %778, %779
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %782 = fadd double %780, %781
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %784 = fadd double %782, %783
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %786 = fadd double %784, %785
  store double %786, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %788 = load double, ptr @four, align 8
  %789 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %790 = call double @llvm.fmuladd.f64(double %788, double %789, double %787)
  %791 = fdiv double %790, 1.520000e+02
  store double %791, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %792 = load double, ptr @one, align 8
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %794 = fdiv double %792, %793
  store double %794, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %795 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %796 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %797 = fadd double %795, %796
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %799 = fadd double %797, %798
  %800 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %801 = fadd double %799, %800
  %802 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %803 = fadd double %801, %802
  store double %803, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %804 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %805 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %806 = fadd double %804, %805
  %807 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %808 = fadd double %806, %807
  %809 = fdiv double %808, 1.460000e+02
  store double %809, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %810 = load double, ptr @one, align 8
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %812 = fdiv double %810, %811
  store double %812, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %813 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %814 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %815 = fadd double %813, %814
  %816 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %817 = fadd double %815, %816
  %818 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %819 = fadd double %817, %818
  %820 = fdiv double %819, 9.100000e+01
  store double %820, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %821 = load double, ptr @one, align 8
  %822 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %823 = fdiv double %821, %822
  store double %823, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %824 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %825 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %647)
  %826 = load double, ptr @nulltime, align 8
  %827 = fmul double %826, 1.000000e-30
  %828 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %827)
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %830 = fmul double %829, 1.000000e-30
  %831 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %830)
  %832 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %833 = fmul double %832, 1.000000e-30
  %834 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %833)
  %835 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %836 = fmul double %835, 1.000000e-30
  %837 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %836)
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %839 = fmul double %838, 1.000000e-30
  %840 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %839)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = getelementptr inbounds double, ptr %0, i64 2
  %3 = load double, ptr %2, align 8
  %4 = call i32 @GetTickCount()
  %5 = uitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e-03
  %7 = getelementptr inbounds double, ptr %0, i64 2
  store double %6, ptr %7, align 8
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8
  %10 = fsub double %9, %3
  %11 = getelementptr inbounds double, ptr %0, i64 1
  store double %10, ptr %11, align 8
  ret i32 0
}

declare dllimport i32 @GetTickCount() #1

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
