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
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 15625, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = sitofp i32 %14 to double
  %16 = fdiv double 1.000000e+06, %15
  store double %16, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %17 = load double, ptr @one, align 8
  store double %17, ptr @scale, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %20 = call i32 @dtime(ptr noundef @TimeArray)
  %21 = call i32 @dtime(ptr noundef @TimeArray)
  %22 = load i32, ptr %7, align 4
  store i32 %22, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %23 = load double, ptr @sa, align 8
  %24 = load double, ptr @TLimit, align 8
  %25 = fcmp olt double %23, %24
  br i1 %25, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  %26 = load i32, ptr %8, align 4
  %.promoted36 = load i32, ptr %11, align 4
  %.promoted = load double, ptr %3, align 1
  br label %31

27:                                               ; preds = %66
  %28 = load double, ptr @sa, align 8
  %29 = load double, ptr @TLimit, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %..loopexit_crit_edge, !llvm.loop !7

31:                                               ; preds = %.lr.ph2, %27
  %.lcssa3150 = phi double [ %.promoted, %.lr.ph2 ], [ %.lcssa3151, %27 ]
  %32 = phi i32 [ %.promoted36, %.lr.ph2 ], [ %33, %27 ]
  %33 = mul nsw i32 2, %32
  %34 = load double, ptr @one, align 8
  %35 = sitofp i32 %33 to double
  %36 = fdiv double %34, %35
  %37 = load double, ptr @one, align 8
  store double %37, ptr %5, align 8
  %38 = call i32 @dtime(ptr noundef @TimeArray)
  %39 = sub nsw i32 %33, 1
  %40 = icmp sle i32 1, %39
  br i1 %40, label %.lr.ph, label %66

.lr.ph:                                           ; preds = %31
  %41 = load double, ptr %5, align 8
  %42 = load double, ptr @D1, align 8
  %43 = load double, ptr @D2, align 8
  %44 = load double, ptr @D3, align 8
  %45 = load double, ptr %5, align 8
  %46 = load double, ptr @D1, align 8
  %47 = load double, ptr @E2, align 8
  %48 = load double, ptr @E3, align 8
  %49 = sub nsw i32 %33, 1
  br label %50

50:                                               ; preds = %.lr.ph, %63
  %51 = phi i32 [ 1, %.lr.ph ], [ %64, %63 ]
  %52 = phi double [ 0.000000e+00, %.lr.ph ], [ %62, %63 ]
  %53 = phi double [ 0.000000e+00, %.lr.ph ], [ %54, %63 ]
  %54 = fadd double %53, %41
  %55 = fmul double %54, %36
  %56 = call double @llvm.fmuladd.f64(double %55, double %44, double %43)
  %57 = call double @llvm.fmuladd.f64(double %55, double %56, double %42)
  %58 = call double @llvm.fmuladd.f64(double %55, double %48, double %47)
  %59 = call double @llvm.fmuladd.f64(double %55, double %58, double %46)
  %60 = call double @llvm.fmuladd.f64(double %55, double %59, double %45)
  %61 = fdiv double %57, %60
  %62 = fadd double %52, %61
  br label %63

63:                                               ; preds = %50
  %64 = add nsw i32 %51, 1
  %65 = icmp sle i32 %64, %49
  br i1 %65, label %50, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %63
  %.lcssa35 = phi i32 [ %64, %63 ]
  %.lcssa33 = phi double [ %62, %63 ]
  %.lcssa31 = phi double [ %55, %63 ]
  %.lcssa = phi double [ %54, %63 ]
  br label %66

66:                                               ; preds = %._crit_edge, %31
  %.lcssa3151 = phi double [ %.lcssa31, %._crit_edge ], [ %.lcssa3150, %31 ]
  %.lcssa3548 = phi i32 [ %.lcssa35, %._crit_edge ], [ 1, %31 ]
  %.lcssa46 = phi double [ %.lcssa, %._crit_edge ], [ 0.000000e+00, %31 ]
  %.lcssa3343 = phi double [ %.lcssa33, %._crit_edge ], [ 0.000000e+00, %31 ]
  %67 = call i32 @dtime(ptr noundef @TimeArray)
  %68 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %68, ptr @sa, align 8
  %69 = icmp eq i32 %33, %26
  br i1 %69, label %70, label %27

70:                                               ; preds = %66
  %.lcssa3151.lcssa52 = phi double [ %.lcssa3151, %66 ]
  %.lcssa3548.lcssa49 = phi i32 [ %.lcssa3548, %66 ]
  %.lcssa46.lcssa47 = phi double [ %.lcssa46, %66 ]
  %.lcssa3343.lcssa44 = phi double [ %.lcssa3343, %66 ]
  %.lcssa41 = phi double [ %36, %66 ]
  %.lcssa38 = phi i32 [ %33, %66 ]
  store i32 %.lcssa38, ptr %11, align 4
  store double %.lcssa41, ptr %6, align 8
  store double %.lcssa3343.lcssa44, ptr %2, align 8
  store double %.lcssa46.lcssa47, ptr %4, align 8
  store i32 %.lcssa3548.lcssa49, ptr %9, align 4
  store double %.lcssa3151.lcssa52, ptr %3, align 1
  br label %71

..loopexit_crit_edge:                             ; preds = %27
  %.lcssa3151.lcssa = phi double [ %.lcssa3151, %27 ]
  %.lcssa3548.lcssa = phi i32 [ %.lcssa3548, %27 ]
  %.lcssa46.lcssa = phi double [ %.lcssa46, %27 ]
  %.lcssa3343.lcssa = phi double [ %.lcssa3343, %27 ]
  %.lcssa40 = phi double [ %36, %27 ]
  %.lcssa37 = phi i32 [ %33, %27 ]
  store i32 %.lcssa37, ptr %11, align 4
  store double %.lcssa40, ptr %6, align 8
  store double %.lcssa3343.lcssa, ptr %2, align 8
  store double %.lcssa46.lcssa, ptr %4, align 8
  store i32 %.lcssa3548.lcssa, ptr %9, align 4
  store double %.lcssa3151.lcssa, ptr %3, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %71

71:                                               ; preds = %.loopexit, %70
  store double 1.589500e-02, ptr @scale, align 8
  %72 = load double, ptr @scale, align 8
  store double %72, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %73 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %74 = load i32, ptr %9, align 4
  %75 = load i32, ptr %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %.lr.ph4, label %85

.lr.ph4:                                          ; preds = %71
  %78 = load i32, ptr %11, align 4
  %79 = sub nsw i32 %78, 1
  %.promoted53 = load i32, ptr %9, align 4
  br label %80

80:                                               ; preds = %.lr.ph4, %82
  %81 = phi i32 [ %.promoted53, %.lr.ph4 ], [ %83, %82 ]
  br label %82

82:                                               ; preds = %80
  %83 = add nsw i32 %81, 1
  %84 = icmp sle i32 %83, %79
  br i1 %84, label %80, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %82
  %.lcssa54 = phi i32 [ %83, %82 ]
  store i32 %.lcssa54, ptr %9, align 4
  br label %85

85:                                               ; preds = %._crit_edge5, %71
  %86 = call i32 @dtime(ptr noundef @TimeArray)
  %87 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %88 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %89 = fmul double %87, %88
  store double %89, ptr @nulltime, align 8
  %90 = load double, ptr @nulltime, align 8
  %91 = fcmp olt double %90, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %93

93:                                               ; preds = %92, %85
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %95 = load double, ptr @sa, align 8
  %96 = load double, ptr @nulltime, align 8
  %97 = fneg double %96
  %98 = call double @llvm.fmuladd.f64(double %94, double %95, double %97)
  store double %98, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %99 = load double, ptr @D1, align 8
  %100 = load double, ptr @D2, align 8
  %101 = fadd double %99, %100
  %102 = load double, ptr @D3, align 8
  %103 = fadd double %101, %102
  %104 = load double, ptr @one, align 8
  %105 = load double, ptr @D1, align 8
  %106 = fadd double %104, %105
  %107 = load double, ptr @E2, align 8
  %108 = fadd double %106, %107
  %109 = load double, ptr @E3, align 8
  %110 = fadd double %108, %109
  %111 = fdiv double %103, %110
  store double %111, ptr @sa, align 8
  %112 = load double, ptr @D1, align 8
  store double %112, ptr @sb, align 8
  %113 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %114 = fdiv double %113, 1.400000e+01
  store double %114, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %115 = load double, ptr %6, align 8
  %116 = load double, ptr @sa, align 8
  %117 = load double, ptr @sb, align 8
  %118 = fadd double %116, %117
  %119 = load double, ptr @two, align 8
  %120 = load double, ptr %2, align 8
  %121 = call double @llvm.fmuladd.f64(double %119, double %120, double %118)
  %122 = fmul double %115, %121
  %123 = load double, ptr @two, align 8
  %124 = fdiv double %122, %123
  store double %124, ptr @sa, align 8
  %125 = load double, ptr @one, align 8
  %126 = load double, ptr @sa, align 8
  %127 = fdiv double %125, %126
  store double %127, ptr @sb, align 8
  %128 = load double, ptr @sb, align 8
  %129 = fptosi double %128 to i32
  %130 = mul nsw i32 40000, %129
  %131 = sitofp i32 %130 to double
  %132 = load double, ptr @scale, align 8
  %133 = fdiv double %131, %132
  %134 = fptosi double %133 to i32
  store i32 %134, ptr %11, align 4
  %135 = load double, ptr @sb, align 8
  %136 = fsub double %135, 2.520000e+01
  store double %136, ptr @sc, align 8
  %137 = load double, ptr @one, align 8
  %138 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %139 = fdiv double %137, %138
  store double %139, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %140 = load double, ptr @sc, align 8
  %141 = fmul double %140, 1.000000e-30
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %143 = fmul double %142, 1.000000e-30
  %144 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %145 = fmul double %144, 1.000000e-30
  %146 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %141, double noundef %143, double noundef %145)
  %147 = load i32, ptr %11, align 4
  store i32 %147, ptr %10, align 4
  %148 = load double, ptr @five, align 8
  %149 = fneg double %148
  store double %149, ptr %2, align 8
  %150 = load double, ptr @one, align 8
  %151 = fneg double %150
  store double %151, ptr @sa, align 8
  %152 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %153 = load i32, ptr %9, align 4
  %154 = load i32, ptr %10, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %.lr.ph7, label %166

.lr.ph7:                                          ; preds = %93
  %156 = load i32, ptr %10, align 4
  %.promoted55 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  %.promoted58 = load i32, ptr %9, align 4
  br label %157

157:                                              ; preds = %.lr.ph7, %163
  %158 = phi i32 [ %.promoted58, %.lr.ph7 ], [ %164, %163 ]
  %159 = phi double [ %sa.promoted, %.lr.ph7 ], [ %162, %163 ]
  %160 = phi double [ %.promoted55, %.lr.ph7 ], [ %161, %163 ]
  %161 = fneg double %160
  %162 = fadd double %159, %161
  br label %163

163:                                              ; preds = %157
  %164 = add nsw i32 %158, 1
  %165 = icmp sle i32 %164, %156
  br i1 %165, label %157, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %163
  %.lcssa59 = phi i32 [ %164, %163 ]
  %.lcssa57 = phi double [ %162, %163 ]
  %.lcssa56 = phi double [ %161, %163 ]
  store double %.lcssa56, ptr %2, align 8
  store double %.lcssa57, ptr @sa, align 8
  store i32 %.lcssa59, ptr %9, align 4
  br label %166

166:                                              ; preds = %._crit_edge8, %93
  %167 = call i32 @dtime(ptr noundef @TimeArray)
  %168 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %169 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %170 = fmul double %168, %169
  store double %170, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %171 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %172 = fcmp olt double %171, 0.000000e+00
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %174

174:                                              ; preds = %173, %166
  %175 = load i32, ptr %10, align 4
  %176 = sitofp i32 %175 to double
  store double %176, ptr @sc, align 8
  %177 = load double, ptr @sa, align 8
  store double %177, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %178 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %179 = load i32, ptr %9, align 4
  %180 = load i32, ptr %10, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %.lr.ph10, label %204

.lr.ph10:                                         ; preds = %174
  %182 = load double, ptr @two, align 8
  %183 = load i32, ptr %10, align 4
  %.promoted60 = load double, ptr %2, align 8
  %sa.promoted62 = load double, ptr @sa, align 8
  %.promoted64 = load double, ptr %3, align 8
  %.promoted66 = load double, ptr %6, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %5, align 8
  %.promoted72 = load i32, ptr %9, align 4
  br label %184

184:                                              ; preds = %.lr.ph10, %201
  %185 = phi i32 [ %.promoted72, %.lr.ph10 ], [ %202, %201 ]
  %186 = phi double [ %.promoted70, %.lr.ph10 ], [ %200, %201 ]
  %187 = phi double [ %.promoted68, %.lr.ph10 ], [ %198, %201 ]
  %188 = phi double [ %.promoted66, %.lr.ph10 ], [ %196, %201 ]
  %189 = phi double [ %.promoted64, %.lr.ph10 ], [ %194, %201 ]
  %190 = phi double [ %sa.promoted62, %.lr.ph10 ], [ %193, %201 ]
  %191 = phi double [ %.promoted60, %.lr.ph10 ], [ %192, %201 ]
  %192 = fneg double %191
  %193 = fadd double %190, %192
  %194 = fadd double %189, %182
  %195 = fsub double %192, %194
  %196 = fadd double %188, %195
  %197 = fneg double %192
  %198 = call double @llvm.fmuladd.f64(double %197, double %194, double %187)
  %199 = fdiv double %192, %194
  %200 = fadd double %186, %199
  br label %201

201:                                              ; preds = %184
  %202 = add nsw i32 %185, 1
  %203 = icmp sle i32 %202, %183
  br i1 %203, label %184, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %201
  %.lcssa73 = phi i32 [ %202, %201 ]
  %.lcssa71 = phi double [ %200, %201 ]
  %.lcssa69 = phi double [ %198, %201 ]
  %.lcssa67 = phi double [ %196, %201 ]
  %.lcssa65 = phi double [ %194, %201 ]
  %.lcssa63 = phi double [ %193, %201 ]
  %.lcssa61 = phi double [ %192, %201 ]
  store double %.lcssa61, ptr %2, align 8
  store double %.lcssa63, ptr @sa, align 8
  store double %.lcssa65, ptr %3, align 8
  store double %.lcssa67, ptr %6, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %5, align 8
  store i32 %.lcssa73, ptr %9, align 4
  br label %204

204:                                              ; preds = %._crit_edge11, %174
  %205 = call i32 @dtime(ptr noundef @TimeArray)
  %206 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %207 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %208 = fmul double %206, %207
  store double %208, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %209 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %210 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %211 = fsub double %209, %210
  %212 = fdiv double %211, 7.000000e+00
  store double %212, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %213 = load double, ptr @sa, align 8
  %214 = load double, ptr %6, align 8
  %215 = fmul double %213, %214
  %216 = load double, ptr @sc, align 8
  %217 = fdiv double %215, %216
  %218 = fptosi double %217 to i32
  store i32 %218, ptr %10, align 4
  %219 = load double, ptr @four, align 8
  %220 = load double, ptr %5, align 8
  %221 = fmul double %219, %220
  %222 = load double, ptr @five, align 8
  %223 = fdiv double %221, %222
  store double %223, ptr @sa, align 8
  %224 = load double, ptr @sa, align 8
  %225 = load double, ptr @five, align 8
  %226 = load double, ptr %4, align 8
  %227 = fdiv double %225, %226
  %228 = fadd double %224, %227
  store double %228, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %229 = load double, ptr @sb, align 8
  %230 = load double, ptr @sc, align 8
  %231 = load double, ptr %4, align 8
  %232 = load double, ptr %4, align 8
  %233 = fmul double %231, %232
  %234 = load double, ptr %4, align 8
  %235 = fmul double %233, %234
  %236 = fdiv double %230, %235
  %237 = fsub double %229, %236
  store double %237, ptr @piprg, align 8
  %238 = load double, ptr @piprg, align 8
  %239 = load double, ptr @piref, align 8
  %240 = fsub double %238, %239
  store double %240, ptr @pierr, align 8
  %241 = load double, ptr @one, align 8
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %243 = fdiv double %241, %242
  store double %243, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %244 = load double, ptr @pierr, align 8
  %245 = fmul double %244, 1.000000e-30
  %246 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %247 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %248 = fsub double %246, %247
  %249 = fmul double %248, 1.000000e-30
  %250 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %251 = fmul double %250, 1.000000e-30
  %252 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %245, double noundef %249, double noundef %251)
  %253 = load double, ptr @piref, align 8
  %254 = load double, ptr @three, align 8
  %255 = load i32, ptr %10, align 4
  %256 = sitofp i32 %255 to double
  %257 = fmul double %254, %256
  %258 = fdiv double %253, %257
  store double %258, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %259 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %260 = load i32, ptr %9, align 4
  %261 = load i32, ptr %10, align 4
  %262 = sub nsw i32 %261, 1
  %263 = icmp sle i32 %260, %262
  br i1 %263, label %.lr.ph13, label %294

.lr.ph13:                                         ; preds = %204
  %264 = load double, ptr @one, align 8
  %265 = load double, ptr %6, align 8
  %266 = load double, ptr @A6, align 8
  %267 = load double, ptr @A5, align 8
  %268 = fneg double %267
  %269 = load double, ptr @A4, align 8
  %270 = load double, ptr @A3, align 8
  %271 = fneg double %270
  %272 = load double, ptr @A2, align 8
  %273 = load double, ptr @A1, align 8
  %274 = load double, ptr @one, align 8
  %275 = load i32, ptr %10, align 4
  %276 = sub nsw i32 %275, 1
  %.promoted74 = load double, ptr %4, align 8
  %.promoted80 = load double, ptr %2, align 8
  %.promoted82 = load i32, ptr %9, align 4
  br label %277

277:                                              ; preds = %.lr.ph13, %291
  %278 = phi i32 [ %.promoted82, %.lr.ph13 ], [ %292, %291 ]
  %279 = phi double [ %.promoted80, %.lr.ph13 ], [ %290, %291 ]
  %280 = phi double [ %.promoted74, %.lr.ph13 ], [ %281, %291 ]
  %281 = fadd double %280, %264
  %282 = fmul double %281, %265
  %283 = fmul double %282, %282
  %284 = call double @llvm.fmuladd.f64(double %266, double %283, double %268)
  %285 = call double @llvm.fmuladd.f64(double %284, double %283, double %269)
  %286 = call double @llvm.fmuladd.f64(double %285, double %283, double %271)
  %287 = call double @llvm.fmuladd.f64(double %286, double %283, double %272)
  %288 = call double @llvm.fmuladd.f64(double %287, double %283, double %273)
  %289 = call double @llvm.fmuladd.f64(double %288, double %283, double %274)
  %290 = call double @llvm.fmuladd.f64(double %282, double %289, double %279)
  br label %291

291:                                              ; preds = %277
  %292 = add nsw i32 %278, 1
  %293 = icmp sle i32 %292, %276
  br i1 %293, label %277, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %291
  %.lcssa83 = phi i32 [ %292, %291 ]
  %.lcssa81 = phi double [ %290, %291 ]
  %.lcssa79 = phi double [ %283, %291 ]
  %.lcssa77 = phi double [ %282, %291 ]
  %.lcssa75 = phi double [ %281, %291 ]
  store double %.lcssa75, ptr %4, align 8
  store double %.lcssa77, ptr %3, align 8
  store double %.lcssa79, ptr %5, align 8
  store double %.lcssa81, ptr %2, align 8
  store i32 %.lcssa83, ptr %9, align 4
  br label %294

294:                                              ; preds = %._crit_edge14, %204
  %295 = call i32 @dtime(ptr noundef @TimeArray)
  %296 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %297 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %298 = load double, ptr @nulltime, align 8
  %299 = fneg double %298
  %300 = call double @llvm.fmuladd.f64(double %296, double %297, double %299)
  store double %300, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %301 = load double, ptr @piref, align 8
  %302 = load double, ptr @three, align 8
  %303 = fdiv double %301, %302
  store double %303, ptr %3, align 8
  %304 = load double, ptr %3, align 8
  %305 = load double, ptr %3, align 8
  %306 = fmul double %304, %305
  store double %306, ptr %5, align 8
  %307 = load double, ptr %3, align 8
  %308 = load double, ptr @A6, align 8
  %309 = load double, ptr %5, align 8
  %310 = load double, ptr @A5, align 8
  %311 = fneg double %310
  %312 = call double @llvm.fmuladd.f64(double %308, double %309, double %311)
  %313 = load double, ptr %5, align 8
  %314 = load double, ptr @A4, align 8
  %315 = call double @llvm.fmuladd.f64(double %312, double %313, double %314)
  %316 = load double, ptr %5, align 8
  %317 = load double, ptr @A3, align 8
  %318 = fneg double %317
  %319 = call double @llvm.fmuladd.f64(double %315, double %316, double %318)
  %320 = load double, ptr %5, align 8
  %321 = load double, ptr @A2, align 8
  %322 = call double @llvm.fmuladd.f64(double %319, double %320, double %321)
  %323 = load double, ptr %5, align 8
  %324 = load double, ptr @A1, align 8
  %325 = call double @llvm.fmuladd.f64(double %322, double %323, double %324)
  %326 = load double, ptr %5, align 8
  %327 = load double, ptr @one, align 8
  %328 = call double @llvm.fmuladd.f64(double %325, double %326, double %327)
  %329 = fmul double %307, %328
  store double %329, ptr @sa, align 8
  %330 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %331 = fdiv double %330, 1.700000e+01
  store double %331, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %332 = load double, ptr %6, align 8
  %333 = load double, ptr @sa, align 8
  %334 = load double, ptr @two, align 8
  %335 = load double, ptr %2, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %335, double %333)
  %337 = fmul double %332, %336
  %338 = load double, ptr @two, align 8
  %339 = fdiv double %337, %338
  store double %339, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %340 = load double, ptr @sa, align 8
  %341 = load double, ptr @sb, align 8
  %342 = fsub double %340, %341
  store double %342, ptr @sc, align 8
  %343 = load double, ptr @one, align 8
  %344 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %345 = fdiv double %343, %344
  store double %345, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %346 = load double, ptr @sc, align 8
  %347 = fmul double %346, 1.000000e-30
  %348 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %349 = fmul double %348, 1.000000e-30
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %351 = fmul double %350, 1.000000e-30
  %352 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %347, double noundef %349, double noundef %351)
  %353 = load double, ptr @A3, align 8
  %354 = fneg double %353
  store double %354, ptr @A3, align 8
  %355 = load double, ptr @A5, align 8
  %356 = fneg double %355
  store double %356, ptr @A5, align 8
  %357 = load double, ptr @piref, align 8
  %358 = load double, ptr @three, align 8
  %359 = load i32, ptr %10, align 4
  %360 = sitofp i32 %359 to double
  %361 = fmul double %358, %360
  %362 = fdiv double %357, %361
  store double %362, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %363 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %364 = load i32, ptr %9, align 4
  %365 = load i32, ptr %10, align 4
  %366 = sub nsw i32 %365, 1
  %367 = icmp sle i32 %364, %366
  br i1 %367, label %.lr.ph16, label %394

.lr.ph16:                                         ; preds = %294
  %368 = load double, ptr %6, align 8
  %369 = load double, ptr @B6, align 8
  %370 = load double, ptr @B5, align 8
  %371 = load double, ptr @B4, align 8
  %372 = load double, ptr @B3, align 8
  %373 = load double, ptr @B2, align 8
  %374 = load double, ptr @B1, align 8
  %375 = load double, ptr @one, align 8
  %376 = load i32, ptr %10, align 4
  %377 = sub nsw i32 %376, 1
  %.promoted84 = load i32, ptr %9, align 4
  %.promoted90 = load double, ptr %2, align 8
  br label %378

378:                                              ; preds = %.lr.ph16, %391
  %379 = phi double [ %.promoted90, %.lr.ph16 ], [ %390, %391 ]
  %380 = phi i32 [ %.promoted84, %.lr.ph16 ], [ %392, %391 ]
  %381 = sitofp i32 %380 to double
  %382 = fmul double %381, %368
  %383 = fmul double %382, %382
  %384 = call double @llvm.fmuladd.f64(double %369, double %383, double %370)
  %385 = call double @llvm.fmuladd.f64(double %383, double %384, double %371)
  %386 = call double @llvm.fmuladd.f64(double %383, double %385, double %372)
  %387 = call double @llvm.fmuladd.f64(double %383, double %386, double %373)
  %388 = call double @llvm.fmuladd.f64(double %383, double %387, double %374)
  %389 = call double @llvm.fmuladd.f64(double %383, double %388, double %379)
  %390 = fadd double %389, %375
  br label %391

391:                                              ; preds = %378
  %392 = add nsw i32 %380, 1
  %393 = icmp sle i32 %392, %377
  br i1 %393, label %378, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %391
  %.lcssa91 = phi double [ %390, %391 ]
  %.lcssa89 = phi double [ %383, %391 ]
  %.lcssa87 = phi double [ %382, %391 ]
  %.lcssa85 = phi i32 [ %392, %391 ]
  store i32 %.lcssa85, ptr %9, align 4
  store double %.lcssa87, ptr %3, align 8
  store double %.lcssa89, ptr %5, align 8
  store double %.lcssa91, ptr %2, align 8
  br label %394

394:                                              ; preds = %._crit_edge17, %294
  %395 = call i32 @dtime(ptr noundef @TimeArray)
  %396 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %397 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %398 = load double, ptr @nulltime, align 8
  %399 = fneg double %398
  %400 = call double @llvm.fmuladd.f64(double %396, double %397, double %399)
  store double %400, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %401 = load double, ptr @piref, align 8
  %402 = load double, ptr @three, align 8
  %403 = fdiv double %401, %402
  store double %403, ptr %3, align 8
  %404 = load double, ptr %3, align 8
  %405 = load double, ptr %3, align 8
  %406 = fmul double %404, %405
  store double %406, ptr %5, align 8
  %407 = load double, ptr %5, align 8
  %408 = load double, ptr %5, align 8
  %409 = load double, ptr %5, align 8
  %410 = load double, ptr %5, align 8
  %411 = load double, ptr %5, align 8
  %412 = load double, ptr @B6, align 8
  %413 = load double, ptr %5, align 8
  %414 = load double, ptr @B5, align 8
  %415 = call double @llvm.fmuladd.f64(double %412, double %413, double %414)
  %416 = load double, ptr @B4, align 8
  %417 = call double @llvm.fmuladd.f64(double %411, double %415, double %416)
  %418 = load double, ptr @B3, align 8
  %419 = call double @llvm.fmuladd.f64(double %410, double %417, double %418)
  %420 = load double, ptr @B2, align 8
  %421 = call double @llvm.fmuladd.f64(double %409, double %419, double %420)
  %422 = load double, ptr @B1, align 8
  %423 = call double @llvm.fmuladd.f64(double %408, double %421, double %422)
  %424 = load double, ptr @one, align 8
  %425 = call double @llvm.fmuladd.f64(double %407, double %423, double %424)
  store double %425, ptr @sa, align 8
  %426 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %427 = fdiv double %426, 1.500000e+01
  store double %427, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %428 = load double, ptr %6, align 8
  %429 = load double, ptr @sa, align 8
  %430 = load double, ptr @one, align 8
  %431 = fadd double %429, %430
  %432 = load double, ptr @two, align 8
  %433 = load double, ptr %2, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %433, double %431)
  %435 = fmul double %428, %434
  %436 = load double, ptr @two, align 8
  %437 = fdiv double %435, %436
  store double %437, ptr @sa, align 8
  %438 = load double, ptr @piref, align 8
  %439 = load double, ptr @three, align 8
  %440 = fdiv double %438, %439
  store double %440, ptr %3, align 8
  %441 = load double, ptr %3, align 8
  %442 = load double, ptr %3, align 8
  %443 = fmul double %441, %442
  store double %443, ptr %5, align 8
  %444 = load double, ptr %3, align 8
  %445 = load double, ptr @A6, align 8
  %446 = load double, ptr %5, align 8
  %447 = load double, ptr @A5, align 8
  %448 = call double @llvm.fmuladd.f64(double %445, double %446, double %447)
  %449 = load double, ptr %5, align 8
  %450 = load double, ptr @A4, align 8
  %451 = call double @llvm.fmuladd.f64(double %448, double %449, double %450)
  %452 = load double, ptr %5, align 8
  %453 = load double, ptr @A3, align 8
  %454 = call double @llvm.fmuladd.f64(double %451, double %452, double %453)
  %455 = load double, ptr %5, align 8
  %456 = load double, ptr @A2, align 8
  %457 = call double @llvm.fmuladd.f64(double %454, double %455, double %456)
  %458 = load double, ptr %5, align 8
  %459 = load double, ptr @A1, align 8
  %460 = call double @llvm.fmuladd.f64(double %457, double %458, double %459)
  %461 = load double, ptr %5, align 8
  %462 = load double, ptr @A0, align 8
  %463 = call double @llvm.fmuladd.f64(double %460, double %461, double %462)
  %464 = fmul double %444, %463
  store double %464, ptr @sb, align 8
  %465 = load double, ptr @sa, align 8
  %466 = load double, ptr @sb, align 8
  %467 = fsub double %465, %466
  store double %467, ptr @sc, align 8
  %468 = load double, ptr @one, align 8
  %469 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %470 = fdiv double %468, %469
  store double %470, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %471 = load double, ptr @sc, align 8
  %472 = fmul double %471, 1.000000e-30
  %473 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %474 = fmul double %473, 1.000000e-30
  %475 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %476 = fmul double %475, 1.000000e-30
  %477 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %472, double noundef %474, double noundef %476)
  %478 = load double, ptr @piref, align 8
  %479 = load double, ptr @three, align 8
  %480 = load i32, ptr %10, align 4
  %481 = sitofp i32 %480 to double
  %482 = fmul double %479, %481
  %483 = fdiv double %478, %482
  store double %483, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %484 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %485 = load i32, ptr %9, align 4
  %486 = load i32, ptr %10, align 4
  %487 = sub nsw i32 %486, 1
  %488 = icmp sle i32 %485, %487
  br i1 %488, label %.lr.ph19, label %530

.lr.ph19:                                         ; preds = %394
  %489 = load double, ptr %6, align 8
  %490 = load double, ptr @A6, align 8
  %491 = load double, ptr @A5, align 8
  %492 = load double, ptr @A4, align 8
  %493 = load double, ptr @A3, align 8
  %494 = load double, ptr @A2, align 8
  %495 = load double, ptr @A1, align 8
  %496 = load double, ptr @one, align 8
  %497 = load double, ptr @B6, align 8
  %498 = load double, ptr @B5, align 8
  %499 = load double, ptr @B4, align 8
  %500 = load double, ptr @B3, align 8
  %501 = load double, ptr @B2, align 8
  %502 = load double, ptr @B1, align 8
  %503 = load double, ptr @one, align 8
  %504 = load i32, ptr %10, align 4
  %505 = sub nsw i32 %504, 1
  %.promoted92 = load i32, ptr %9, align 4
  %.promoted100 = load double, ptr %2, align 8
  br label %506

506:                                              ; preds = %.lr.ph19, %527
  %507 = phi double [ %.promoted100, %.lr.ph19 ], [ %526, %527 ]
  %508 = phi i32 [ %.promoted92, %.lr.ph19 ], [ %528, %527 ]
  %509 = sitofp i32 %508 to double
  %510 = fmul double %509, %489
  %511 = fmul double %510, %510
  %512 = call double @llvm.fmuladd.f64(double %490, double %511, double %491)
  %513 = call double @llvm.fmuladd.f64(double %512, double %511, double %492)
  %514 = call double @llvm.fmuladd.f64(double %513, double %511, double %493)
  %515 = call double @llvm.fmuladd.f64(double %514, double %511, double %494)
  %516 = call double @llvm.fmuladd.f64(double %515, double %511, double %495)
  %517 = call double @llvm.fmuladd.f64(double %516, double %511, double %496)
  %518 = fmul double %510, %517
  %519 = call double @llvm.fmuladd.f64(double %497, double %511, double %498)
  %520 = call double @llvm.fmuladd.f64(double %511, double %519, double %499)
  %521 = call double @llvm.fmuladd.f64(double %511, double %520, double %500)
  %522 = call double @llvm.fmuladd.f64(double %511, double %521, double %501)
  %523 = call double @llvm.fmuladd.f64(double %511, double %522, double %502)
  %524 = call double @llvm.fmuladd.f64(double %511, double %523, double %503)
  %525 = fdiv double %518, %524
  %526 = fadd double %507, %525
  br label %527

527:                                              ; preds = %506
  %528 = add nsw i32 %508, 1
  %529 = icmp sle i32 %528, %505
  br i1 %529, label %506, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %527
  %.lcssa101 = phi double [ %526, %527 ]
  %.lcssa99 = phi double [ %518, %527 ]
  %.lcssa97 = phi double [ %511, %527 ]
  %.lcssa95 = phi double [ %510, %527 ]
  %.lcssa93 = phi i32 [ %528, %527 ]
  store i32 %.lcssa93, ptr %9, align 4
  store double %.lcssa95, ptr %3, align 8
  store double %.lcssa97, ptr %5, align 8
  store double %.lcssa99, ptr %4, align 8
  store double %.lcssa101, ptr %2, align 8
  br label %530

530:                                              ; preds = %._crit_edge20, %394
  %531 = call i32 @dtime(ptr noundef @TimeArray)
  %532 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %533 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %534 = load double, ptr @nulltime, align 8
  %535 = fneg double %534
  %536 = call double @llvm.fmuladd.f64(double %532, double %533, double %535)
  store double %536, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %537 = load double, ptr @piref, align 8
  %538 = load double, ptr @three, align 8
  %539 = fdiv double %537, %538
  store double %539, ptr %3, align 8
  %540 = load double, ptr %3, align 8
  %541 = load double, ptr %3, align 8
  %542 = fmul double %540, %541
  store double %542, ptr %5, align 8
  %543 = load double, ptr %3, align 8
  %544 = load double, ptr @A6, align 8
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr @A5, align 8
  %547 = call double @llvm.fmuladd.f64(double %544, double %545, double %546)
  %548 = load double, ptr %5, align 8
  %549 = load double, ptr @A4, align 8
  %550 = call double @llvm.fmuladd.f64(double %547, double %548, double %549)
  %551 = load double, ptr %5, align 8
  %552 = load double, ptr @A3, align 8
  %553 = call double @llvm.fmuladd.f64(double %550, double %551, double %552)
  %554 = load double, ptr %5, align 8
  %555 = load double, ptr @A2, align 8
  %556 = call double @llvm.fmuladd.f64(double %553, double %554, double %555)
  %557 = load double, ptr %5, align 8
  %558 = load double, ptr @A1, align 8
  %559 = call double @llvm.fmuladd.f64(double %556, double %557, double %558)
  %560 = load double, ptr %5, align 8
  %561 = load double, ptr @one, align 8
  %562 = call double @llvm.fmuladd.f64(double %559, double %560, double %561)
  %563 = fmul double %543, %562
  store double %563, ptr @sa, align 8
  %564 = load double, ptr %5, align 8
  %565 = load double, ptr %5, align 8
  %566 = load double, ptr %5, align 8
  %567 = load double, ptr %5, align 8
  %568 = load double, ptr %5, align 8
  %569 = load double, ptr @B6, align 8
  %570 = load double, ptr %5, align 8
  %571 = load double, ptr @B5, align 8
  %572 = call double @llvm.fmuladd.f64(double %569, double %570, double %571)
  %573 = load double, ptr @B4, align 8
  %574 = call double @llvm.fmuladd.f64(double %568, double %572, double %573)
  %575 = load double, ptr @B3, align 8
  %576 = call double @llvm.fmuladd.f64(double %567, double %574, double %575)
  %577 = load double, ptr @B2, align 8
  %578 = call double @llvm.fmuladd.f64(double %566, double %576, double %577)
  %579 = load double, ptr @B1, align 8
  %580 = call double @llvm.fmuladd.f64(double %565, double %578, double %579)
  %581 = load double, ptr @one, align 8
  %582 = call double @llvm.fmuladd.f64(double %564, double %580, double %581)
  store double %582, ptr @sb, align 8
  %583 = load double, ptr @sa, align 8
  %584 = load double, ptr @sb, align 8
  %585 = fdiv double %583, %584
  store double %585, ptr @sa, align 8
  %586 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %587 = fdiv double %586, 2.900000e+01
  store double %587, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %588 = load double, ptr %6, align 8
  %589 = load double, ptr @sa, align 8
  %590 = load double, ptr @two, align 8
  %591 = load double, ptr %2, align 8
  %592 = call double @llvm.fmuladd.f64(double %590, double %591, double %589)
  %593 = fmul double %588, %592
  %594 = load double, ptr @two, align 8
  %595 = fdiv double %593, %594
  store double %595, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %596 = load double, ptr @sa, align 8
  %597 = load double, ptr @sb, align 8
  %598 = fsub double %596, %597
  store double %598, ptr @sc, align 8
  %599 = load double, ptr @one, align 8
  %600 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %601 = fdiv double %599, %600
  store double %601, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %602 = load double, ptr @sc, align 8
  %603 = fmul double %602, 1.000000e-30
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %605 = fmul double %604, 1.000000e-30
  %606 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %607 = fmul double %606, 1.000000e-30
  %608 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %603, double noundef %605, double noundef %607)
  %609 = load double, ptr @piref, align 8
  %610 = load double, ptr @four, align 8
  %611 = load i32, ptr %10, align 4
  %612 = sitofp i32 %611 to double
  %613 = fmul double %610, %612
  %614 = fdiv double %609, %613
  store double %614, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %615 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %616 = load i32, ptr %9, align 4
  %617 = load i32, ptr %10, align 4
  %618 = sub nsw i32 %617, 1
  %619 = icmp sle i32 %616, %618
  br i1 %619, label %.lr.ph22, label %660

.lr.ph22:                                         ; preds = %530
  %620 = load double, ptr %6, align 8
  %621 = load double, ptr @A6, align 8
  %622 = load double, ptr @A5, align 8
  %623 = load double, ptr @A4, align 8
  %624 = load double, ptr @A3, align 8
  %625 = load double, ptr @A2, align 8
  %626 = load double, ptr @A1, align 8
  %627 = load double, ptr @one, align 8
  %628 = load double, ptr @B6, align 8
  %629 = load double, ptr @B5, align 8
  %630 = load double, ptr @B4, align 8
  %631 = load double, ptr @B3, align 8
  %632 = load double, ptr @B2, align 8
  %633 = load double, ptr @B1, align 8
  %634 = load double, ptr @one, align 8
  %635 = load i32, ptr %10, align 4
  %636 = sub nsw i32 %635, 1
  %.promoted102 = load i32, ptr %9, align 4
  %.promoted110 = load double, ptr %2, align 8
  br label %637

637:                                              ; preds = %.lr.ph22, %657
  %638 = phi double [ %.promoted110, %.lr.ph22 ], [ %656, %657 ]
  %639 = phi i32 [ %.promoted102, %.lr.ph22 ], [ %658, %657 ]
  %640 = sitofp i32 %639 to double
  %641 = fmul double %640, %620
  %642 = fmul double %641, %641
  %643 = call double @llvm.fmuladd.f64(double %621, double %642, double %622)
  %644 = call double @llvm.fmuladd.f64(double %643, double %642, double %623)
  %645 = call double @llvm.fmuladd.f64(double %644, double %642, double %624)
  %646 = call double @llvm.fmuladd.f64(double %645, double %642, double %625)
  %647 = call double @llvm.fmuladd.f64(double %646, double %642, double %626)
  %648 = call double @llvm.fmuladd.f64(double %647, double %642, double %627)
  %649 = fmul double %641, %648
  %650 = call double @llvm.fmuladd.f64(double %628, double %642, double %629)
  %651 = call double @llvm.fmuladd.f64(double %642, double %650, double %630)
  %652 = call double @llvm.fmuladd.f64(double %642, double %651, double %631)
  %653 = call double @llvm.fmuladd.f64(double %642, double %652, double %632)
  %654 = call double @llvm.fmuladd.f64(double %642, double %653, double %633)
  %655 = call double @llvm.fmuladd.f64(double %642, double %654, double %634)
  %656 = call double @llvm.fmuladd.f64(double %649, double %655, double %638)
  br label %657

657:                                              ; preds = %637
  %658 = add nsw i32 %639, 1
  %659 = icmp sle i32 %658, %636
  br i1 %659, label %637, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %657
  %.lcssa111 = phi double [ %656, %657 ]
  %.lcssa109 = phi double [ %649, %657 ]
  %.lcssa107 = phi double [ %642, %657 ]
  %.lcssa105 = phi double [ %641, %657 ]
  %.lcssa103 = phi i32 [ %658, %657 ]
  store i32 %.lcssa103, ptr %9, align 4
  store double %.lcssa105, ptr %3, align 8
  store double %.lcssa107, ptr %5, align 8
  store double %.lcssa109, ptr %4, align 8
  store double %.lcssa111, ptr %2, align 8
  br label %660

660:                                              ; preds = %._crit_edge23, %530
  %661 = call i32 @dtime(ptr noundef @TimeArray)
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %664 = load double, ptr @nulltime, align 8
  %665 = fneg double %664
  %666 = call double @llvm.fmuladd.f64(double %662, double %663, double %665)
  store double %666, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %667 = load double, ptr @piref, align 8
  %668 = load double, ptr @four, align 8
  %669 = fdiv double %667, %668
  store double %669, ptr %3, align 8
  %670 = load double, ptr %3, align 8
  %671 = load double, ptr %3, align 8
  %672 = fmul double %670, %671
  store double %672, ptr %5, align 8
  %673 = load double, ptr %3, align 8
  %674 = load double, ptr @A6, align 8
  %675 = load double, ptr %5, align 8
  %676 = load double, ptr @A5, align 8
  %677 = call double @llvm.fmuladd.f64(double %674, double %675, double %676)
  %678 = load double, ptr %5, align 8
  %679 = load double, ptr @A4, align 8
  %680 = call double @llvm.fmuladd.f64(double %677, double %678, double %679)
  %681 = load double, ptr %5, align 8
  %682 = load double, ptr @A3, align 8
  %683 = call double @llvm.fmuladd.f64(double %680, double %681, double %682)
  %684 = load double, ptr %5, align 8
  %685 = load double, ptr @A2, align 8
  %686 = call double @llvm.fmuladd.f64(double %683, double %684, double %685)
  %687 = load double, ptr %5, align 8
  %688 = load double, ptr @A1, align 8
  %689 = call double @llvm.fmuladd.f64(double %686, double %687, double %688)
  %690 = load double, ptr %5, align 8
  %691 = load double, ptr @one, align 8
  %692 = call double @llvm.fmuladd.f64(double %689, double %690, double %691)
  %693 = fmul double %673, %692
  store double %693, ptr @sa, align 8
  %694 = load double, ptr %5, align 8
  %695 = load double, ptr %5, align 8
  %696 = load double, ptr %5, align 8
  %697 = load double, ptr %5, align 8
  %698 = load double, ptr %5, align 8
  %699 = load double, ptr @B6, align 8
  %700 = load double, ptr %5, align 8
  %701 = load double, ptr @B5, align 8
  %702 = call double @llvm.fmuladd.f64(double %699, double %700, double %701)
  %703 = load double, ptr @B4, align 8
  %704 = call double @llvm.fmuladd.f64(double %698, double %702, double %703)
  %705 = load double, ptr @B3, align 8
  %706 = call double @llvm.fmuladd.f64(double %697, double %704, double %705)
  %707 = load double, ptr @B2, align 8
  %708 = call double @llvm.fmuladd.f64(double %696, double %706, double %707)
  %709 = load double, ptr @B1, align 8
  %710 = call double @llvm.fmuladd.f64(double %695, double %708, double %709)
  %711 = load double, ptr @one, align 8
  %712 = call double @llvm.fmuladd.f64(double %694, double %710, double %711)
  store double %712, ptr @sb, align 8
  %713 = load double, ptr @sa, align 8
  %714 = load double, ptr @sb, align 8
  %715 = fmul double %713, %714
  store double %715, ptr @sa, align 8
  %716 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %717 = fdiv double %716, 2.900000e+01
  store double %717, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %718 = load double, ptr %6, align 8
  %719 = load double, ptr @sa, align 8
  %720 = load double, ptr @two, align 8
  %721 = load double, ptr %2, align 8
  %722 = call double @llvm.fmuladd.f64(double %720, double %721, double %719)
  %723 = fmul double %718, %722
  %724 = load double, ptr @two, align 8
  %725 = fdiv double %723, %724
  store double %725, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %726 = load double, ptr @sa, align 8
  %727 = load double, ptr @sb, align 8
  %728 = fsub double %726, %727
  store double %728, ptr @sc, align 8
  %729 = load double, ptr @one, align 8
  %730 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %731 = fdiv double %729, %730
  store double %731, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %732 = load double, ptr @sc, align 8
  %733 = fmul double %732, 1.000000e-30
  %734 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %735 = fmul double %734, 1.000000e-30
  %736 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %737 = fmul double %736, 1.000000e-30
  %738 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %733, double noundef %735, double noundef %737)
  store double 0.000000e+00, ptr %2, align 8
  %739 = load double, ptr @one, align 8
  store double %739, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %740 = load double, ptr @sa, align 8
  %741 = load i32, ptr %10, align 4
  %742 = sitofp i32 %741 to double
  %743 = fdiv double %740, %742
  store double %743, ptr %4, align 8
  %744 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %745 = load i32, ptr %9, align 4
  %746 = load i32, ptr %10, align 4
  %747 = sub nsw i32 %746, 1
  %748 = icmp sle i32 %745, %747
  br i1 %748, label %.lr.ph25, label %774

.lr.ph25:                                         ; preds = %660
  %749 = load double, ptr %4, align 8
  %750 = load double, ptr %5, align 8
  %751 = load double, ptr %5, align 8
  %752 = load double, ptr %5, align 8
  %753 = load double, ptr %5, align 8
  %754 = load i32, ptr %10, align 4
  %755 = sub nsw i32 %754, 1
  %.promoted112 = load i32, ptr %9, align 4
  %.promoted118 = load double, ptr %2, align 8
  br label %756

756:                                              ; preds = %.lr.ph25, %771
  %757 = phi double [ %.promoted118, %.lr.ph25 ], [ %770, %771 ]
  %758 = phi i32 [ %.promoted112, %.lr.ph25 ], [ %772, %771 ]
  %759 = sitofp i32 %758 to double
  %760 = fmul double %759, %749
  %761 = fmul double %760, %760
  %762 = fadd double %760, %751
  %763 = fdiv double %750, %762
  %764 = fsub double %757, %763
  %765 = fadd double %761, %752
  %766 = fdiv double %760, %765
  %767 = fsub double %764, %766
  %768 = call double @llvm.fmuladd.f64(double %760, double %761, double %753)
  %769 = fdiv double %761, %768
  %770 = fsub double %767, %769
  br label %771

771:                                              ; preds = %756
  %772 = add nsw i32 %758, 1
  %773 = icmp sle i32 %772, %755
  br i1 %773, label %756, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %771
  %.lcssa119 = phi double [ %770, %771 ]
  %.lcssa117 = phi double [ %761, %771 ]
  %.lcssa115 = phi double [ %760, %771 ]
  %.lcssa113 = phi i32 [ %772, %771 ]
  store i32 %.lcssa113, ptr %9, align 4
  store double %.lcssa115, ptr %6, align 8
  store double %.lcssa117, ptr %3, align 8
  store double %.lcssa119, ptr %2, align 8
  br label %774

774:                                              ; preds = %._crit_edge26, %660
  %775 = call i32 @dtime(ptr noundef @TimeArray)
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %778 = load double, ptr @nulltime, align 8
  %779 = fneg double %778
  %780 = call double @llvm.fmuladd.f64(double %776, double %777, double %779)
  store double %780, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %782 = fdiv double %781, 1.200000e+01
  store double %782, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %783 = load double, ptr @sa, align 8
  store double %783, ptr %6, align 8
  %784 = load double, ptr %6, align 8
  %785 = load double, ptr %6, align 8
  %786 = fmul double %784, %785
  store double %786, ptr %3, align 8
  %787 = load double, ptr %5, align 8
  %788 = fneg double %787
  %789 = load double, ptr %5, align 8
  %790 = load double, ptr %6, align 8
  %791 = load double, ptr %5, align 8
  %792 = fadd double %790, %791
  %793 = fdiv double %789, %792
  %794 = fsub double %788, %793
  %795 = load double, ptr %6, align 8
  %796 = load double, ptr %3, align 8
  %797 = load double, ptr %5, align 8
  %798 = fadd double %796, %797
  %799 = fdiv double %795, %798
  %800 = fsub double %794, %799
  %801 = load double, ptr %3, align 8
  %802 = load double, ptr %6, align 8
  %803 = load double, ptr %3, align 8
  %804 = load double, ptr %5, align 8
  %805 = call double @llvm.fmuladd.f64(double %802, double %803, double %804)
  %806 = fdiv double %801, %805
  %807 = fsub double %800, %806
  store double %807, ptr @sa, align 8
  %808 = load double, ptr %4, align 8
  %809 = fmul double 1.800000e+01, %808
  %810 = load double, ptr @sa, align 8
  %811 = load double, ptr @two, align 8
  %812 = load double, ptr %2, align 8
  %813 = call double @llvm.fmuladd.f64(double %811, double %812, double %810)
  %814 = fmul double %809, %813
  store double %814, ptr @sa, align 8
  %815 = load double, ptr @sa, align 8
  %816 = fptosi double %815 to i32
  %817 = mul nsw i32 -2000, %816
  store i32 %817, ptr %10, align 4
  %818 = load i32, ptr %10, align 4
  %819 = sitofp i32 %818 to double
  %820 = load double, ptr @scale, align 8
  %821 = fdiv double %819, %820
  %822 = fptosi double %821 to i32
  store i32 %822, ptr %10, align 4
  %823 = load double, ptr @sa, align 8
  %824 = fadd double %823, 5.002000e+02
  store double %824, ptr @sc, align 8
  %825 = load double, ptr @one, align 8
  %826 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %827 = fdiv double %825, %826
  store double %827, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %828 = load double, ptr @sc, align 8
  %829 = fmul double %828, 1.000000e-30
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %831 = fmul double %830, 1.000000e-30
  %832 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %833 = fmul double %832, 1.000000e-30
  %834 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %829, double noundef %831, double noundef %833)
  %835 = load double, ptr @piref, align 8
  %836 = load double, ptr @three, align 8
  %837 = load i32, ptr %10, align 4
  %838 = sitofp i32 %837 to double
  %839 = fmul double %836, %838
  %840 = fdiv double %835, %839
  store double %840, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %841 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %842 = load i32, ptr %9, align 4
  %843 = load i32, ptr %10, align 4
  %844 = sub nsw i32 %843, 1
  %845 = icmp sle i32 %842, %844
  br i1 %845, label %.lr.ph28, label %887

.lr.ph28:                                         ; preds = %774
  %846 = load double, ptr %6, align 8
  %847 = load double, ptr @B6, align 8
  %848 = load double, ptr @B5, align 8
  %849 = load double, ptr @B4, align 8
  %850 = load double, ptr @B3, align 8
  %851 = load double, ptr @B2, align 8
  %852 = load double, ptr @B1, align 8
  %853 = load double, ptr @one, align 8
  %854 = load double, ptr @A6, align 8
  %855 = load double, ptr @A5, align 8
  %856 = load double, ptr @A4, align 8
  %857 = load double, ptr @A3, align 8
  %858 = load double, ptr @A2, align 8
  %859 = load double, ptr @A1, align 8
  %860 = load double, ptr @one, align 8
  %861 = load i32, ptr %10, align 4
  %862 = sub nsw i32 %861, 1
  %.promoted120 = load i32, ptr %9, align 4
  %.promoted128 = load double, ptr %2, align 8
  br label %863

863:                                              ; preds = %.lr.ph28, %884
  %864 = phi double [ %.promoted128, %.lr.ph28 ], [ %883, %884 ]
  %865 = phi i32 [ %.promoted120, %.lr.ph28 ], [ %885, %884 ]
  %866 = sitofp i32 %865 to double
  %867 = fmul double %866, %846
  %868 = fmul double %867, %867
  %869 = call double @llvm.fmuladd.f64(double %847, double %868, double %848)
  %870 = call double @llvm.fmuladd.f64(double %868, double %869, double %849)
  %871 = call double @llvm.fmuladd.f64(double %868, double %870, double %850)
  %872 = call double @llvm.fmuladd.f64(double %868, double %871, double %851)
  %873 = call double @llvm.fmuladd.f64(double %868, double %872, double %852)
  %874 = call double @llvm.fmuladd.f64(double %868, double %873, double %853)
  %875 = fmul double %874, %874
  %876 = fmul double %875, %867
  %877 = call double @llvm.fmuladd.f64(double %854, double %868, double %855)
  %878 = call double @llvm.fmuladd.f64(double %877, double %868, double %856)
  %879 = call double @llvm.fmuladd.f64(double %878, double %868, double %857)
  %880 = call double @llvm.fmuladd.f64(double %879, double %868, double %858)
  %881 = call double @llvm.fmuladd.f64(double %880, double %868, double %859)
  %882 = call double @llvm.fmuladd.f64(double %881, double %868, double %860)
  %883 = call double @llvm.fmuladd.f64(double %876, double %882, double %864)
  br label %884

884:                                              ; preds = %863
  %885 = add nsw i32 %865, 1
  %886 = icmp sle i32 %885, %862
  br i1 %886, label %863, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %884
  %.lcssa129 = phi double [ %883, %884 ]
  %.lcssa127 = phi double [ %874, %884 ]
  %.lcssa125 = phi double [ %868, %884 ]
  %.lcssa123 = phi double [ %867, %884 ]
  %.lcssa121 = phi i32 [ %885, %884 ]
  store i32 %.lcssa121, ptr %9, align 4
  store double %.lcssa123, ptr %3, align 8
  store double %.lcssa125, ptr %5, align 8
  store double %.lcssa127, ptr %4, align 8
  store double %.lcssa129, ptr %2, align 8
  br label %887

887:                                              ; preds = %._crit_edge29, %774
  %888 = call i32 @dtime(ptr noundef @TimeArray)
  %889 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %890 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %891 = load double, ptr @nulltime, align 8
  %892 = fneg double %891
  %893 = call double @llvm.fmuladd.f64(double %889, double %890, double %892)
  store double %893, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %894 = load double, ptr @piref, align 8
  %895 = load double, ptr @three, align 8
  %896 = fdiv double %894, %895
  store double %896, ptr %3, align 8
  %897 = load double, ptr %3, align 8
  %898 = load double, ptr %3, align 8
  %899 = fmul double %897, %898
  store double %899, ptr %5, align 8
  %900 = load double, ptr %3, align 8
  %901 = load double, ptr @A6, align 8
  %902 = load double, ptr %5, align 8
  %903 = load double, ptr @A5, align 8
  %904 = call double @llvm.fmuladd.f64(double %901, double %902, double %903)
  %905 = load double, ptr %5, align 8
  %906 = load double, ptr @A4, align 8
  %907 = call double @llvm.fmuladd.f64(double %904, double %905, double %906)
  %908 = load double, ptr %5, align 8
  %909 = load double, ptr @A3, align 8
  %910 = call double @llvm.fmuladd.f64(double %907, double %908, double %909)
  %911 = load double, ptr %5, align 8
  %912 = load double, ptr @A2, align 8
  %913 = call double @llvm.fmuladd.f64(double %910, double %911, double %912)
  %914 = load double, ptr %5, align 8
  %915 = load double, ptr @A1, align 8
  %916 = call double @llvm.fmuladd.f64(double %913, double %914, double %915)
  %917 = load double, ptr %5, align 8
  %918 = load double, ptr @one, align 8
  %919 = call double @llvm.fmuladd.f64(double %916, double %917, double %918)
  %920 = fmul double %900, %919
  store double %920, ptr @sa, align 8
  %921 = load double, ptr %5, align 8
  %922 = load double, ptr %5, align 8
  %923 = load double, ptr %5, align 8
  %924 = load double, ptr %5, align 8
  %925 = load double, ptr %5, align 8
  %926 = load double, ptr @B6, align 8
  %927 = load double, ptr %5, align 8
  %928 = load double, ptr @B5, align 8
  %929 = call double @llvm.fmuladd.f64(double %926, double %927, double %928)
  %930 = load double, ptr @B4, align 8
  %931 = call double @llvm.fmuladd.f64(double %925, double %929, double %930)
  %932 = load double, ptr @B3, align 8
  %933 = call double @llvm.fmuladd.f64(double %924, double %931, double %932)
  %934 = load double, ptr @B2, align 8
  %935 = call double @llvm.fmuladd.f64(double %923, double %933, double %934)
  %936 = load double, ptr @B1, align 8
  %937 = call double @llvm.fmuladd.f64(double %922, double %935, double %936)
  %938 = load double, ptr @one, align 8
  %939 = call double @llvm.fmuladd.f64(double %921, double %937, double %938)
  store double %939, ptr @sb, align 8
  %940 = load double, ptr @sa, align 8
  %941 = load double, ptr @sb, align 8
  %942 = fmul double %940, %941
  %943 = load double, ptr @sb, align 8
  %944 = fmul double %942, %943
  store double %944, ptr @sa, align 8
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %946 = fdiv double %945, 3.000000e+01
  store double %946, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %947 = load double, ptr %6, align 8
  %948 = load double, ptr @sa, align 8
  %949 = load double, ptr @two, align 8
  %950 = load double, ptr %2, align 8
  %951 = call double @llvm.fmuladd.f64(double %949, double %950, double %948)
  %952 = fmul double %947, %951
  %953 = load double, ptr @two, align 8
  %954 = fdiv double %952, %953
  store double %954, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %955 = load double, ptr @sa, align 8
  %956 = load double, ptr @sb, align 8
  %957 = fsub double %955, %956
  store double %957, ptr @sc, align 8
  %958 = load double, ptr @one, align 8
  %959 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %960 = fdiv double %958, %959
  store double %960, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %961 = load double, ptr @sc, align 8
  %962 = fmul double %961, 1.000000e-30
  %963 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %964 = fmul double %963, 1.000000e-30
  %965 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %966 = fmul double %965, 1.000000e-30
  %967 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %962, double noundef %964, double noundef %966)
  %968 = load double, ptr @five, align 8
  %969 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %970 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %971 = fsub double %969, %970
  %972 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %973 = call double @llvm.fmuladd.f64(double %968, double %971, double %972)
  %974 = fdiv double %973, 5.200000e+01
  store double %974, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %975 = load double, ptr @one, align 8
  %976 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %977 = fdiv double %975, %976
  store double %977, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %978 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %979 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %980 = fadd double %978, %979
  %981 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %982 = fadd double %980, %981
  %983 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %984 = fadd double %982, %983
  %985 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %986 = fadd double %984, %985
  store double %986, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %987 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %988 = load double, ptr @four, align 8
  %989 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %990 = call double @llvm.fmuladd.f64(double %988, double %989, double %987)
  %991 = fdiv double %990, 1.520000e+02
  store double %991, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %992 = load double, ptr @one, align 8
  %993 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %994 = fdiv double %992, %993
  store double %994, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %995 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %996 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %997 = fadd double %995, %996
  %998 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %999 = fadd double %997, %998
  %1000 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1001 = fadd double %999, %1000
  %1002 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1003 = fadd double %1001, %1002
  store double %1003, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1004 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1005 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1006 = fadd double %1004, %1005
  %1007 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1008 = fadd double %1006, %1007
  %1009 = fdiv double %1008, 1.460000e+02
  store double %1009, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1010 = load double, ptr @one, align 8
  %1011 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1012 = fdiv double %1010, %1011
  store double %1012, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1013 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1014 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1015 = fadd double %1013, %1014
  %1016 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1017 = fadd double %1015, %1016
  %1018 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1019 = fadd double %1017, %1018
  %1020 = fdiv double %1019, 9.100000e+01
  store double %1020, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1021 = load double, ptr @one, align 8
  %1022 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1023 = fdiv double %1021, %1022
  store double %1023, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1024 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1025 = load i32, ptr %10, align 4
  %1026 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1025)
  %1027 = load double, ptr @nulltime, align 8
  %1028 = fmul double %1027, 1.000000e-30
  %1029 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1028)
  %1030 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1031 = fmul double %1030, 1.000000e-30
  %1032 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1031)
  %1033 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1034 = fmul double %1033, 1.000000e-30
  %1035 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1034)
  %1036 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1037 = fmul double %1036, 1.000000e-30
  %1038 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1037)
  %1039 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1040 = fmul double %1039, 1.000000e-30
  %1041 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1040)
  ret i32 0
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dtime(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds double, ptr %4, i64 2
  %6 = load double, ptr %5, align 8
  store double %6, ptr %3, align 8
  %7 = call i32 @GetTickCount()
  %8 = uitofp i32 %7 to double
  %9 = fmul double %8, 1.000000e-03
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds double, ptr %10, i64 2
  store double %9, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds double, ptr %12, i64 2
  %14 = load double, ptr %13, align 8
  %15 = load double, ptr %3, align 8
  %16 = fsub double %14, %15
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 1
  store double %16, ptr %18, align 8
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
