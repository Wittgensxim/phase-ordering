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
  %23 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted10 = load double, ptr %6, align 8
  %.promoted13 = load double, ptr %2, align 8
  %.promoted15 = load double, ptr %4, align 8
  %.promoted17 = load i32, ptr %9, align 4
  %.promoted = load double, ptr %3, align 8
  %24 = load double, ptr @sa, align 8
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %0
  br label %33

27:                                               ; preds = %67
  %.lcssa419 = phi double [ %.lcssa4, %67 ]
  %.lcssa18 = phi i32 [ %.lcssa, %67 ]
  %.lcssa216 = phi double [ %.lcssa2, %67 ]
  %.lcssa614 = phi double [ %.lcssa6, %67 ]
  %28 = phi double [ %38, %67 ]
  %29 = phi i32 [ %35, %67 ]
  %30 = load double, ptr @sa, align 8
  %31 = load double, ptr @TLimit, align 8
  %32 = fcmp olt double %30, %31
  br i1 %32, label %33, label %..loopexit_crit_edge, !llvm.loop !7

33:                                               ; preds = %.lr.ph97, %27
  %34 = phi i32 [ %.promoted7, %.lr.ph97 ], [ %29, %27 ]
  %.lcssa41995 = phi double [ %.promoted, %.lr.ph97 ], [ %.lcssa419, %27 ]
  %35 = mul nsw i32 2, %34
  %36 = load double, ptr @one, align 8
  %37 = sitofp i32 %35 to double
  %38 = fdiv double %36, %37
  %39 = load double, ptr @one, align 8
  store double %39, ptr %5, align 8
  %40 = call i32 @dtime(ptr noundef @TimeArray)
  %41 = sub nsw i32 %35, 1
  %42 = load double, ptr %5, align 8
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @D2, align 8
  %45 = load double, ptr @D3, align 8
  %46 = load double, ptr %5, align 8
  %47 = load double, ptr @D1, align 8
  %48 = load double, ptr @E2, align 8
  %49 = load double, ptr @E3, align 8
  %50 = icmp sle i32 1, %41
  br i1 %50, label %.lr.ph, label %67

.lr.ph:                                           ; preds = %33
  br label %51

51:                                               ; preds = %.lr.ph, %64
  %52 = phi i32 [ 1, %.lr.ph ], [ %65, %64 ]
  %53 = phi double [ 0.000000e+00, %.lr.ph ], [ %55, %64 ]
  %54 = phi double [ 0.000000e+00, %.lr.ph ], [ %63, %64 ]
  %55 = fadd double %53, %42
  %56 = fmul double %55, %38
  %57 = call double @llvm.fmuladd.f64(double %56, double %45, double %44)
  %58 = call double @llvm.fmuladd.f64(double %56, double %57, double %43)
  %59 = call double @llvm.fmuladd.f64(double %56, double %49, double %48)
  %60 = call double @llvm.fmuladd.f64(double %56, double %59, double %47)
  %61 = call double @llvm.fmuladd.f64(double %56, double %60, double %46)
  %62 = fdiv double %58, %61
  %63 = fadd double %54, %62
  br label %64

64:                                               ; preds = %51
  %65 = add nsw i32 %52, 1
  %66 = icmp sle i32 %65, %41
  br i1 %66, label %51, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %64
  %split = phi double [ %63, %64 ]
  %split92 = phi double [ %56, %64 ]
  %split93 = phi double [ %55, %64 ]
  %split94 = phi i32 [ %65, %64 ]
  br label %67

67:                                               ; preds = %._crit_edge, %33
  %.lcssa6 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %33 ]
  %.lcssa4 = phi double [ %split92, %._crit_edge ], [ %.lcssa41995, %33 ]
  %.lcssa2 = phi double [ %split93, %._crit_edge ], [ 0.000000e+00, %33 ]
  %.lcssa = phi i32 [ %split94, %._crit_edge ], [ 1, %33 ]
  %68 = call i32 @dtime(ptr noundef @TimeArray)
  %69 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %69, ptr @sa, align 8
  %70 = icmp eq i32 %35, %23
  br i1 %70, label %71, label %27

71:                                               ; preds = %67
  %.lcssa4.lcssa = phi double [ %.lcssa4, %67 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %67 ]
  %.lcssa2.lcssa = phi double [ %.lcssa2, %67 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %67 ]
  %.lcssa12 = phi double [ %38, %67 ]
  %.lcssa9 = phi i32 [ %35, %67 ]
  store i32 %.lcssa9, ptr %11, align 4
  store double %.lcssa12, ptr %6, align 8
  store double %.lcssa6.lcssa, ptr %2, align 8
  store double %.lcssa2.lcssa, ptr %4, align 8
  store i32 %.lcssa.lcssa, ptr %9, align 4
  store double %.lcssa4.lcssa, ptr %3, align 8
  br label %72

..loopexit_crit_edge:                             ; preds = %27
  %split98 = phi double [ %.lcssa419, %27 ]
  %split99 = phi i32 [ %.lcssa18, %27 ]
  %split100 = phi double [ %.lcssa216, %27 ]
  %split101 = phi double [ %.lcssa614, %27 ]
  %split102 = phi double [ %28, %27 ]
  %split103 = phi i32 [ %29, %27 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa419.lcssa = phi double [ %split98, %..loopexit_crit_edge ], [ %.promoted, %0 ]
  %.lcssa18.lcssa = phi i32 [ %split99, %..loopexit_crit_edge ], [ %.promoted17, %0 ]
  %.lcssa216.lcssa = phi double [ %split100, %..loopexit_crit_edge ], [ %.promoted15, %0 ]
  %.lcssa614.lcssa = phi double [ %split101, %..loopexit_crit_edge ], [ %.promoted13, %0 ]
  %.lcssa11 = phi double [ %split102, %..loopexit_crit_edge ], [ %.promoted10, %0 ]
  %.lcssa8 = phi i32 [ %split103, %..loopexit_crit_edge ], [ %.promoted7, %0 ]
  store i32 %.lcssa8, ptr %11, align 4
  store double %.lcssa11, ptr %6, align 8
  store double %.lcssa614.lcssa, ptr %2, align 8
  store double %.lcssa216.lcssa, ptr %4, align 8
  store i32 %.lcssa18.lcssa, ptr %9, align 4
  store double %.lcssa419.lcssa, ptr %3, align 8
  br label %72

72:                                               ; preds = %.loopexit, %71
  store double 1.589500e-02, ptr @scale, align 8
  %73 = load double, ptr @scale, align 8
  store double %73, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %74 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %75 = load i32, ptr %11, align 4
  %76 = sub nsw i32 %75, 1
  %.promoted20 = load i32, ptr %9, align 4
  %77 = icmp sle i32 %.promoted20, %76
  br i1 %77, label %.lr.ph105, label %83

.lr.ph105:                                        ; preds = %72
  br label %78

78:                                               ; preds = %.lr.ph105, %80
  %79 = phi i32 [ %.promoted20, %.lr.ph105 ], [ %81, %80 ]
  br label %80

80:                                               ; preds = %78
  %81 = add nsw i32 %79, 1
  %82 = icmp sle i32 %81, %76
  br i1 %82, label %78, label %._crit_edge106, !llvm.loop !10

._crit_edge106:                                   ; preds = %80
  %split107 = phi i32 [ %81, %80 ]
  br label %83

83:                                               ; preds = %._crit_edge106, %72
  %.lcssa21 = phi i32 [ %split107, %._crit_edge106 ], [ %.promoted20, %72 ]
  store i32 %.lcssa21, ptr %9, align 4
  %84 = call i32 @dtime(ptr noundef @TimeArray)
  %85 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %86 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %87 = fmul double %85, %86
  store double %87, ptr @nulltime, align 8
  %88 = load double, ptr @nulltime, align 8
  %89 = fcmp olt double %88, 0.000000e+00
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %91

91:                                               ; preds = %90, %83
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %93 = load double, ptr @sa, align 8
  %94 = load double, ptr @nulltime, align 8
  %95 = fneg double %94
  %96 = call double @llvm.fmuladd.f64(double %92, double %93, double %95)
  store double %96, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %97 = load double, ptr @D1, align 8
  %98 = load double, ptr @D2, align 8
  %99 = fadd double %97, %98
  %100 = load double, ptr @D3, align 8
  %101 = fadd double %99, %100
  %102 = load double, ptr @one, align 8
  %103 = load double, ptr @D1, align 8
  %104 = fadd double %102, %103
  %105 = load double, ptr @E2, align 8
  %106 = fadd double %104, %105
  %107 = load double, ptr @E3, align 8
  %108 = fadd double %106, %107
  %109 = fdiv double %101, %108
  store double %109, ptr @sa, align 8
  %110 = load double, ptr @D1, align 8
  store double %110, ptr @sb, align 8
  %111 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %112 = fdiv double %111, 1.400000e+01
  store double %112, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %113 = load double, ptr %6, align 8
  %114 = load double, ptr @sa, align 8
  %115 = load double, ptr @sb, align 8
  %116 = fadd double %114, %115
  %117 = load double, ptr @two, align 8
  %118 = load double, ptr %2, align 8
  %119 = call double @llvm.fmuladd.f64(double %117, double %118, double %116)
  %120 = fmul double %113, %119
  %121 = load double, ptr @two, align 8
  %122 = fdiv double %120, %121
  store double %122, ptr @sa, align 8
  %123 = load double, ptr @one, align 8
  %124 = load double, ptr @sa, align 8
  %125 = fdiv double %123, %124
  store double %125, ptr @sb, align 8
  %126 = load double, ptr @sb, align 8
  %127 = fptosi double %126 to i32
  %128 = mul nsw i32 40000, %127
  %129 = sitofp i32 %128 to double
  %130 = load double, ptr @scale, align 8
  %131 = fdiv double %129, %130
  %132 = fptosi double %131 to i32
  store i32 %132, ptr %11, align 4
  %133 = load double, ptr @sb, align 8
  %134 = fsub double %133, 2.520000e+01
  store double %134, ptr @sc, align 8
  %135 = load double, ptr @one, align 8
  %136 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %137 = fdiv double %135, %136
  store double %137, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %138 = load double, ptr @sc, align 8
  %139 = fmul double %138, 1.000000e-30
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %141 = fmul double %140, 1.000000e-30
  %142 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %143 = fmul double %142, 1.000000e-30
  %144 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %139, double noundef %141, double noundef %143)
  %145 = load i32, ptr %11, align 4
  store i32 %145, ptr %10, align 4
  %146 = load double, ptr @five, align 8
  %147 = fneg double %146
  store double %147, ptr %2, align 8
  %148 = load double, ptr @one, align 8
  %149 = fneg double %148
  store double %149, ptr @sa, align 8
  %150 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %151 = load i32, ptr %10, align 4
  %.promoted22 = load i32, ptr %9, align 4
  %.promoted24 = load double, ptr %2, align 8
  %sa.promoted = load double, ptr @sa, align 8
  %152 = icmp sle i32 %.promoted22, %151
  br i1 %152, label %.lr.ph109, label %162

.lr.ph109:                                        ; preds = %91
  br label %153

153:                                              ; preds = %.lr.ph109, %159
  %154 = phi i32 [ %.promoted22, %.lr.ph109 ], [ %160, %159 ]
  %155 = phi double [ %.promoted24, %.lr.ph109 ], [ %157, %159 ]
  %156 = phi double [ %sa.promoted, %.lr.ph109 ], [ %158, %159 ]
  %157 = fneg double %155
  %158 = fadd double %156, %157
  store double %158, ptr @sa, align 8
  br label %159

159:                                              ; preds = %153
  %160 = add nsw i32 %154, 1
  %161 = icmp sle i32 %160, %151
  br i1 %161, label %153, label %._crit_edge110, !llvm.loop !11

._crit_edge110:                                   ; preds = %159
  %split111 = phi double [ %157, %159 ]
  %split112 = phi i32 [ %160, %159 ]
  br label %162

162:                                              ; preds = %._crit_edge110, %91
  %.lcssa25 = phi double [ %split111, %._crit_edge110 ], [ %.promoted24, %91 ]
  %.lcssa23 = phi i32 [ %split112, %._crit_edge110 ], [ %.promoted22, %91 ]
  store i32 %.lcssa23, ptr %9, align 4
  store double %.lcssa25, ptr %2, align 8
  %163 = call i32 @dtime(ptr noundef @TimeArray)
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %165 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %166 = fmul double %164, %165
  store double %166, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %167 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %168 = fcmp olt double %167, 0.000000e+00
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %170

170:                                              ; preds = %169, %162
  %171 = load i32, ptr %10, align 4
  %172 = sitofp i32 %171 to double
  store double %172, ptr @sc, align 8
  %173 = load double, ptr @sa, align 8
  store double %173, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %174 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %175 = load i32, ptr %10, align 4
  %176 = load double, ptr @two, align 8
  %.promoted26 = load i32, ptr %9, align 4
  %.promoted28 = load double, ptr %2, align 8
  %sa.promoted30 = load double, ptr @sa, align 8
  %.promoted31 = load double, ptr %3, align 8
  %.promoted33 = load double, ptr %6, align 8
  %.promoted35 = load double, ptr %4, align 8
  %.promoted37 = load double, ptr %5, align 8
  %177 = icmp sle i32 %.promoted26, %175
  br i1 %177, label %.lr.ph114, label %198

.lr.ph114:                                        ; preds = %170
  br label %178

178:                                              ; preds = %.lr.ph114, %195
  %179 = phi i32 [ %.promoted26, %.lr.ph114 ], [ %196, %195 ]
  %180 = phi double [ %.promoted28, %.lr.ph114 ], [ %186, %195 ]
  %181 = phi double [ %sa.promoted30, %.lr.ph114 ], [ %187, %195 ]
  %182 = phi double [ %.promoted31, %.lr.ph114 ], [ %188, %195 ]
  %183 = phi double [ %.promoted33, %.lr.ph114 ], [ %190, %195 ]
  %184 = phi double [ %.promoted35, %.lr.ph114 ], [ %192, %195 ]
  %185 = phi double [ %.promoted37, %.lr.ph114 ], [ %194, %195 ]
  %186 = fneg double %180
  %187 = fadd double %181, %186
  store double %187, ptr @sa, align 8
  %188 = fadd double %182, %176
  %189 = fsub double %186, %188
  %190 = fadd double %183, %189
  %191 = fneg double %186
  %192 = call double @llvm.fmuladd.f64(double %191, double %188, double %184)
  %193 = fdiv double %186, %188
  %194 = fadd double %185, %193
  store double %194, ptr %5, align 8
  br label %195

195:                                              ; preds = %178
  %196 = add nsw i32 %179, 1
  %197 = icmp sle i32 %196, %175
  br i1 %197, label %178, label %._crit_edge115, !llvm.loop !12

._crit_edge115:                                   ; preds = %195
  %split116 = phi double [ %192, %195 ]
  %split117 = phi double [ %190, %195 ]
  %split118 = phi double [ %188, %195 ]
  %split119 = phi double [ %186, %195 ]
  %split120 = phi i32 [ %196, %195 ]
  br label %198

198:                                              ; preds = %._crit_edge115, %170
  %.lcssa36 = phi double [ %split116, %._crit_edge115 ], [ %.promoted35, %170 ]
  %.lcssa34 = phi double [ %split117, %._crit_edge115 ], [ %.promoted33, %170 ]
  %.lcssa32 = phi double [ %split118, %._crit_edge115 ], [ %.promoted31, %170 ]
  %.lcssa29 = phi double [ %split119, %._crit_edge115 ], [ %.promoted28, %170 ]
  %.lcssa27 = phi i32 [ %split120, %._crit_edge115 ], [ %.promoted26, %170 ]
  store i32 %.lcssa27, ptr %9, align 4
  store double %.lcssa29, ptr %2, align 8
  store double %.lcssa32, ptr %3, align 8
  store double %.lcssa34, ptr %6, align 8
  store double %.lcssa36, ptr %4, align 8
  %199 = call i32 @dtime(ptr noundef @TimeArray)
  %200 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %202 = fmul double %200, %201
  store double %202, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %203 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %204 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %205 = fsub double %203, %204
  %206 = fdiv double %205, 7.000000e+00
  store double %206, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %207 = load double, ptr @sa, align 8
  %208 = load double, ptr %6, align 8
  %209 = fmul double %207, %208
  %210 = load double, ptr @sc, align 8
  %211 = fdiv double %209, %210
  %212 = fptosi double %211 to i32
  store i32 %212, ptr %10, align 4
  %213 = load double, ptr @four, align 8
  %214 = load double, ptr %5, align 8
  %215 = fmul double %213, %214
  %216 = load double, ptr @five, align 8
  %217 = fdiv double %215, %216
  store double %217, ptr @sa, align 8
  %218 = load double, ptr @sa, align 8
  %219 = load double, ptr @five, align 8
  %220 = load double, ptr %4, align 8
  %221 = fdiv double %219, %220
  %222 = fadd double %218, %221
  store double %222, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %223 = load double, ptr @sb, align 8
  %224 = load double, ptr @sc, align 8
  %225 = load double, ptr %4, align 8
  %226 = load double, ptr %4, align 8
  %227 = fmul double %225, %226
  %228 = load double, ptr %4, align 8
  %229 = fmul double %227, %228
  %230 = fdiv double %224, %229
  %231 = fsub double %223, %230
  store double %231, ptr @piprg, align 8
  %232 = load double, ptr @piprg, align 8
  %233 = load double, ptr @piref, align 8
  %234 = fsub double %232, %233
  store double %234, ptr @pierr, align 8
  %235 = load double, ptr @one, align 8
  %236 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %237 = fdiv double %235, %236
  store double %237, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %238 = load double, ptr @pierr, align 8
  %239 = fmul double %238, 1.000000e-30
  %240 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %241 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %242 = fsub double %240, %241
  %243 = fmul double %242, 1.000000e-30
  %244 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %245 = fmul double %244, 1.000000e-30
  %246 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %239, double noundef %243, double noundef %245)
  %247 = load double, ptr @piref, align 8
  %248 = load double, ptr @three, align 8
  %249 = load i32, ptr %10, align 4
  %250 = sitofp i32 %249 to double
  %251 = fmul double %248, %250
  %252 = fdiv double %247, %251
  store double %252, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %253 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %254 = load i32, ptr %10, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load double, ptr @one, align 8
  %257 = load double, ptr %6, align 8
  %258 = load double, ptr @A6, align 8
  %259 = load double, ptr @A5, align 8
  %260 = fneg double %259
  %261 = load double, ptr @A4, align 8
  %262 = load double, ptr @A3, align 8
  %263 = fneg double %262
  %264 = load double, ptr @A2, align 8
  %265 = load double, ptr @A1, align 8
  %266 = load double, ptr @one, align 8
  %.promoted38 = load i32, ptr %9, align 4
  %.promoted40 = load double, ptr %4, align 8
  %.promoted42 = load double, ptr %3, align 8
  %.promoted45 = load double, ptr %2, align 8
  %267 = icmp sle i32 %.promoted38, %255
  br i1 %267, label %.lr.ph122, label %285

.lr.ph122:                                        ; preds = %198
  br label %268

268:                                              ; preds = %.lr.ph122, %282
  %269 = phi i32 [ %.promoted38, %.lr.ph122 ], [ %283, %282 ]
  %270 = phi double [ %.promoted40, %.lr.ph122 ], [ %272, %282 ]
  %271 = phi double [ %.promoted45, %.lr.ph122 ], [ %281, %282 ]
  %272 = fadd double %270, %256
  %273 = fmul double %272, %257
  %274 = fmul double %273, %273
  store double %274, ptr %5, align 8
  %275 = call double @llvm.fmuladd.f64(double %258, double %274, double %260)
  %276 = call double @llvm.fmuladd.f64(double %275, double %274, double %261)
  %277 = call double @llvm.fmuladd.f64(double %276, double %274, double %263)
  %278 = call double @llvm.fmuladd.f64(double %277, double %274, double %264)
  %279 = call double @llvm.fmuladd.f64(double %278, double %274, double %265)
  %280 = call double @llvm.fmuladd.f64(double %279, double %274, double %266)
  %281 = call double @llvm.fmuladd.f64(double %273, double %280, double %271)
  br label %282

282:                                              ; preds = %268
  %283 = add nsw i32 %269, 1
  %284 = icmp sle i32 %283, %255
  br i1 %284, label %268, label %._crit_edge123, !llvm.loop !13

._crit_edge123:                                   ; preds = %282
  %split124 = phi double [ %281, %282 ]
  %split125 = phi double [ %273, %282 ]
  %split126 = phi double [ %272, %282 ]
  %split127 = phi i32 [ %283, %282 ]
  br label %285

285:                                              ; preds = %._crit_edge123, %198
  %.lcssa46 = phi double [ %split124, %._crit_edge123 ], [ %.promoted45, %198 ]
  %.lcssa43 = phi double [ %split125, %._crit_edge123 ], [ %.promoted42, %198 ]
  %.lcssa41 = phi double [ %split126, %._crit_edge123 ], [ %.promoted40, %198 ]
  %.lcssa39 = phi i32 [ %split127, %._crit_edge123 ], [ %.promoted38, %198 ]
  store i32 %.lcssa39, ptr %9, align 4
  store double %.lcssa41, ptr %4, align 8
  store double %.lcssa43, ptr %3, align 8
  store double %.lcssa46, ptr %2, align 8
  %286 = call i32 @dtime(ptr noundef @TimeArray)
  %287 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %288 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %289 = load double, ptr @nulltime, align 8
  %290 = fneg double %289
  %291 = call double @llvm.fmuladd.f64(double %287, double %288, double %290)
  store double %291, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %292 = load double, ptr @piref, align 8
  %293 = load double, ptr @three, align 8
  %294 = fdiv double %292, %293
  store double %294, ptr %3, align 8
  %295 = load double, ptr %3, align 8
  %296 = load double, ptr %3, align 8
  %297 = fmul double %295, %296
  store double %297, ptr %5, align 8
  %298 = load double, ptr %3, align 8
  %299 = load double, ptr @A6, align 8
  %300 = load double, ptr %5, align 8
  %301 = load double, ptr @A5, align 8
  %302 = fneg double %301
  %303 = call double @llvm.fmuladd.f64(double %299, double %300, double %302)
  %304 = load double, ptr %5, align 8
  %305 = load double, ptr @A4, align 8
  %306 = call double @llvm.fmuladd.f64(double %303, double %304, double %305)
  %307 = load double, ptr %5, align 8
  %308 = load double, ptr @A3, align 8
  %309 = fneg double %308
  %310 = call double @llvm.fmuladd.f64(double %306, double %307, double %309)
  %311 = load double, ptr %5, align 8
  %312 = load double, ptr @A2, align 8
  %313 = call double @llvm.fmuladd.f64(double %310, double %311, double %312)
  %314 = load double, ptr %5, align 8
  %315 = load double, ptr @A1, align 8
  %316 = call double @llvm.fmuladd.f64(double %313, double %314, double %315)
  %317 = load double, ptr %5, align 8
  %318 = load double, ptr @one, align 8
  %319 = call double @llvm.fmuladd.f64(double %316, double %317, double %318)
  %320 = fmul double %298, %319
  store double %320, ptr @sa, align 8
  %321 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %322 = fdiv double %321, 1.700000e+01
  store double %322, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %323 = load double, ptr %6, align 8
  %324 = load double, ptr @sa, align 8
  %325 = load double, ptr @two, align 8
  %326 = load double, ptr %2, align 8
  %327 = call double @llvm.fmuladd.f64(double %325, double %326, double %324)
  %328 = fmul double %323, %327
  %329 = load double, ptr @two, align 8
  %330 = fdiv double %328, %329
  store double %330, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %331 = load double, ptr @sa, align 8
  %332 = load double, ptr @sb, align 8
  %333 = fsub double %331, %332
  store double %333, ptr @sc, align 8
  %334 = load double, ptr @one, align 8
  %335 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %336 = fdiv double %334, %335
  store double %336, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %337 = load double, ptr @sc, align 8
  %338 = fmul double %337, 1.000000e-30
  %339 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %340 = fmul double %339, 1.000000e-30
  %341 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %342 = fmul double %341, 1.000000e-30
  %343 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %338, double noundef %340, double noundef %342)
  %344 = load double, ptr @A3, align 8
  %345 = fneg double %344
  store double %345, ptr @A3, align 8
  %346 = load double, ptr @A5, align 8
  %347 = fneg double %346
  store double %347, ptr @A5, align 8
  %348 = load double, ptr @piref, align 8
  %349 = load double, ptr @three, align 8
  %350 = load i32, ptr %10, align 4
  %351 = sitofp i32 %350 to double
  %352 = fmul double %349, %351
  %353 = fdiv double %348, %352
  store double %353, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %354 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %355 = load i32, ptr %10, align 4
  %356 = sub nsw i32 %355, 1
  %357 = load double, ptr %6, align 8
  %358 = load double, ptr @B6, align 8
  %359 = load double, ptr @B5, align 8
  %360 = load double, ptr @B4, align 8
  %361 = load double, ptr @B3, align 8
  %362 = load double, ptr @B2, align 8
  %363 = load double, ptr @B1, align 8
  %364 = load double, ptr @one, align 8
  %.promoted47 = load i32, ptr %9, align 4
  %.promoted49 = load double, ptr %3, align 8
  %.promoted52 = load double, ptr %2, align 8
  %365 = icmp sle i32 %.promoted47, %356
  br i1 %365, label %.lr.ph129, label %382

.lr.ph129:                                        ; preds = %285
  br label %366

366:                                              ; preds = %.lr.ph129, %379
  %367 = phi i32 [ %.promoted47, %.lr.ph129 ], [ %380, %379 ]
  %368 = phi double [ %.promoted52, %.lr.ph129 ], [ %378, %379 ]
  %369 = sitofp i32 %367 to double
  %370 = fmul double %369, %357
  %371 = fmul double %370, %370
  store double %371, ptr %5, align 8
  %372 = call double @llvm.fmuladd.f64(double %358, double %371, double %359)
  %373 = call double @llvm.fmuladd.f64(double %371, double %372, double %360)
  %374 = call double @llvm.fmuladd.f64(double %371, double %373, double %361)
  %375 = call double @llvm.fmuladd.f64(double %371, double %374, double %362)
  %376 = call double @llvm.fmuladd.f64(double %371, double %375, double %363)
  %377 = call double @llvm.fmuladd.f64(double %371, double %376, double %368)
  %378 = fadd double %377, %364
  br label %379

379:                                              ; preds = %366
  %380 = add nsw i32 %367, 1
  %381 = icmp sle i32 %380, %356
  br i1 %381, label %366, label %._crit_edge130, !llvm.loop !14

._crit_edge130:                                   ; preds = %379
  %split131 = phi double [ %378, %379 ]
  %split132 = phi double [ %370, %379 ]
  %split133 = phi i32 [ %380, %379 ]
  br label %382

382:                                              ; preds = %._crit_edge130, %285
  %.lcssa53 = phi double [ %split131, %._crit_edge130 ], [ %.promoted52, %285 ]
  %.lcssa50 = phi double [ %split132, %._crit_edge130 ], [ %.promoted49, %285 ]
  %.lcssa48 = phi i32 [ %split133, %._crit_edge130 ], [ %.promoted47, %285 ]
  store i32 %.lcssa48, ptr %9, align 4
  store double %.lcssa50, ptr %3, align 8
  store double %.lcssa53, ptr %2, align 8
  %383 = call i32 @dtime(ptr noundef @TimeArray)
  %384 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %385 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %386 = load double, ptr @nulltime, align 8
  %387 = fneg double %386
  %388 = call double @llvm.fmuladd.f64(double %384, double %385, double %387)
  store double %388, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %389 = load double, ptr @piref, align 8
  %390 = load double, ptr @three, align 8
  %391 = fdiv double %389, %390
  store double %391, ptr %3, align 8
  %392 = load double, ptr %3, align 8
  %393 = load double, ptr %3, align 8
  %394 = fmul double %392, %393
  store double %394, ptr %5, align 8
  %395 = load double, ptr %5, align 8
  %396 = load double, ptr %5, align 8
  %397 = load double, ptr %5, align 8
  %398 = load double, ptr %5, align 8
  %399 = load double, ptr %5, align 8
  %400 = load double, ptr @B6, align 8
  %401 = load double, ptr %5, align 8
  %402 = load double, ptr @B5, align 8
  %403 = call double @llvm.fmuladd.f64(double %400, double %401, double %402)
  %404 = load double, ptr @B4, align 8
  %405 = call double @llvm.fmuladd.f64(double %399, double %403, double %404)
  %406 = load double, ptr @B3, align 8
  %407 = call double @llvm.fmuladd.f64(double %398, double %405, double %406)
  %408 = load double, ptr @B2, align 8
  %409 = call double @llvm.fmuladd.f64(double %397, double %407, double %408)
  %410 = load double, ptr @B1, align 8
  %411 = call double @llvm.fmuladd.f64(double %396, double %409, double %410)
  %412 = load double, ptr @one, align 8
  %413 = call double @llvm.fmuladd.f64(double %395, double %411, double %412)
  store double %413, ptr @sa, align 8
  %414 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %415 = fdiv double %414, 1.500000e+01
  store double %415, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %416 = load double, ptr %6, align 8
  %417 = load double, ptr @sa, align 8
  %418 = load double, ptr @one, align 8
  %419 = fadd double %417, %418
  %420 = load double, ptr @two, align 8
  %421 = load double, ptr %2, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %421, double %419)
  %423 = fmul double %416, %422
  %424 = load double, ptr @two, align 8
  %425 = fdiv double %423, %424
  store double %425, ptr @sa, align 8
  %426 = load double, ptr @piref, align 8
  %427 = load double, ptr @three, align 8
  %428 = fdiv double %426, %427
  store double %428, ptr %3, align 8
  %429 = load double, ptr %3, align 8
  %430 = load double, ptr %3, align 8
  %431 = fmul double %429, %430
  store double %431, ptr %5, align 8
  %432 = load double, ptr %3, align 8
  %433 = load double, ptr @A6, align 8
  %434 = load double, ptr %5, align 8
  %435 = load double, ptr @A5, align 8
  %436 = call double @llvm.fmuladd.f64(double %433, double %434, double %435)
  %437 = load double, ptr %5, align 8
  %438 = load double, ptr @A4, align 8
  %439 = call double @llvm.fmuladd.f64(double %436, double %437, double %438)
  %440 = load double, ptr %5, align 8
  %441 = load double, ptr @A3, align 8
  %442 = call double @llvm.fmuladd.f64(double %439, double %440, double %441)
  %443 = load double, ptr %5, align 8
  %444 = load double, ptr @A2, align 8
  %445 = call double @llvm.fmuladd.f64(double %442, double %443, double %444)
  %446 = load double, ptr %5, align 8
  %447 = load double, ptr @A1, align 8
  %448 = call double @llvm.fmuladd.f64(double %445, double %446, double %447)
  %449 = load double, ptr %5, align 8
  %450 = load double, ptr @A0, align 8
  %451 = call double @llvm.fmuladd.f64(double %448, double %449, double %450)
  %452 = fmul double %432, %451
  store double %452, ptr @sb, align 8
  %453 = load double, ptr @sa, align 8
  %454 = load double, ptr @sb, align 8
  %455 = fsub double %453, %454
  store double %455, ptr @sc, align 8
  %456 = load double, ptr @one, align 8
  %457 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %458 = fdiv double %456, %457
  store double %458, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %459 = load double, ptr @sc, align 8
  %460 = fmul double %459, 1.000000e-30
  %461 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %462 = fmul double %461, 1.000000e-30
  %463 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %464 = fmul double %463, 1.000000e-30
  %465 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %460, double noundef %462, double noundef %464)
  %466 = load double, ptr @piref, align 8
  %467 = load double, ptr @three, align 8
  %468 = load i32, ptr %10, align 4
  %469 = sitofp i32 %468 to double
  %470 = fmul double %467, %469
  %471 = fdiv double %466, %470
  store double %471, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %472 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %473 = load i32, ptr %10, align 4
  %474 = sub nsw i32 %473, 1
  %475 = load double, ptr %6, align 8
  %476 = load double, ptr @A6, align 8
  %477 = load double, ptr @A5, align 8
  %478 = load double, ptr @A4, align 8
  %479 = load double, ptr @A3, align 8
  %480 = load double, ptr @A2, align 8
  %481 = load double, ptr @A1, align 8
  %482 = load double, ptr @one, align 8
  %483 = load double, ptr @B6, align 8
  %484 = load double, ptr @B5, align 8
  %485 = load double, ptr @B4, align 8
  %486 = load double, ptr @B3, align 8
  %487 = load double, ptr @B2, align 8
  %488 = load double, ptr @B1, align 8
  %489 = load double, ptr @one, align 8
  %.promoted54 = load i32, ptr %9, align 4
  %.promoted56 = load double, ptr %3, align 8
  %.promoted59 = load double, ptr %4, align 8
  %.promoted61 = load double, ptr %2, align 8
  %490 = icmp sle i32 %.promoted54, %474
  br i1 %490, label %.lr.ph135, label %515

.lr.ph135:                                        ; preds = %382
  br label %491

491:                                              ; preds = %.lr.ph135, %512
  %492 = phi i32 [ %.promoted54, %.lr.ph135 ], [ %513, %512 ]
  %493 = phi double [ %.promoted61, %.lr.ph135 ], [ %511, %512 ]
  %494 = sitofp i32 %492 to double
  %495 = fmul double %494, %475
  %496 = fmul double %495, %495
  store double %496, ptr %5, align 8
  %497 = call double @llvm.fmuladd.f64(double %476, double %496, double %477)
  %498 = call double @llvm.fmuladd.f64(double %497, double %496, double %478)
  %499 = call double @llvm.fmuladd.f64(double %498, double %496, double %479)
  %500 = call double @llvm.fmuladd.f64(double %499, double %496, double %480)
  %501 = call double @llvm.fmuladd.f64(double %500, double %496, double %481)
  %502 = call double @llvm.fmuladd.f64(double %501, double %496, double %482)
  %503 = fmul double %495, %502
  %504 = call double @llvm.fmuladd.f64(double %483, double %496, double %484)
  %505 = call double @llvm.fmuladd.f64(double %496, double %504, double %485)
  %506 = call double @llvm.fmuladd.f64(double %496, double %505, double %486)
  %507 = call double @llvm.fmuladd.f64(double %496, double %506, double %487)
  %508 = call double @llvm.fmuladd.f64(double %496, double %507, double %488)
  %509 = call double @llvm.fmuladd.f64(double %496, double %508, double %489)
  %510 = fdiv double %503, %509
  %511 = fadd double %493, %510
  br label %512

512:                                              ; preds = %491
  %513 = add nsw i32 %492, 1
  %514 = icmp sle i32 %513, %474
  br i1 %514, label %491, label %._crit_edge136, !llvm.loop !15

._crit_edge136:                                   ; preds = %512
  %split137 = phi double [ %511, %512 ]
  %split138 = phi double [ %503, %512 ]
  %split139 = phi double [ %495, %512 ]
  %split140 = phi i32 [ %513, %512 ]
  br label %515

515:                                              ; preds = %._crit_edge136, %382
  %.lcssa62 = phi double [ %split137, %._crit_edge136 ], [ %.promoted61, %382 ]
  %.lcssa60 = phi double [ %split138, %._crit_edge136 ], [ %.promoted59, %382 ]
  %.lcssa57 = phi double [ %split139, %._crit_edge136 ], [ %.promoted56, %382 ]
  %.lcssa55 = phi i32 [ %split140, %._crit_edge136 ], [ %.promoted54, %382 ]
  store i32 %.lcssa55, ptr %9, align 4
  store double %.lcssa57, ptr %3, align 8
  store double %.lcssa60, ptr %4, align 8
  store double %.lcssa62, ptr %2, align 8
  %516 = call i32 @dtime(ptr noundef @TimeArray)
  %517 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %518 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %519 = load double, ptr @nulltime, align 8
  %520 = fneg double %519
  %521 = call double @llvm.fmuladd.f64(double %517, double %518, double %520)
  store double %521, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %522 = load double, ptr @piref, align 8
  %523 = load double, ptr @three, align 8
  %524 = fdiv double %522, %523
  store double %524, ptr %3, align 8
  %525 = load double, ptr %3, align 8
  %526 = load double, ptr %3, align 8
  %527 = fmul double %525, %526
  store double %527, ptr %5, align 8
  %528 = load double, ptr %3, align 8
  %529 = load double, ptr @A6, align 8
  %530 = load double, ptr %5, align 8
  %531 = load double, ptr @A5, align 8
  %532 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %533 = load double, ptr %5, align 8
  %534 = load double, ptr @A4, align 8
  %535 = call double @llvm.fmuladd.f64(double %532, double %533, double %534)
  %536 = load double, ptr %5, align 8
  %537 = load double, ptr @A3, align 8
  %538 = call double @llvm.fmuladd.f64(double %535, double %536, double %537)
  %539 = load double, ptr %5, align 8
  %540 = load double, ptr @A2, align 8
  %541 = call double @llvm.fmuladd.f64(double %538, double %539, double %540)
  %542 = load double, ptr %5, align 8
  %543 = load double, ptr @A1, align 8
  %544 = call double @llvm.fmuladd.f64(double %541, double %542, double %543)
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr @one, align 8
  %547 = call double @llvm.fmuladd.f64(double %544, double %545, double %546)
  %548 = fmul double %528, %547
  store double %548, ptr @sa, align 8
  %549 = load double, ptr %5, align 8
  %550 = load double, ptr %5, align 8
  %551 = load double, ptr %5, align 8
  %552 = load double, ptr %5, align 8
  %553 = load double, ptr %5, align 8
  %554 = load double, ptr @B6, align 8
  %555 = load double, ptr %5, align 8
  %556 = load double, ptr @B5, align 8
  %557 = call double @llvm.fmuladd.f64(double %554, double %555, double %556)
  %558 = load double, ptr @B4, align 8
  %559 = call double @llvm.fmuladd.f64(double %553, double %557, double %558)
  %560 = load double, ptr @B3, align 8
  %561 = call double @llvm.fmuladd.f64(double %552, double %559, double %560)
  %562 = load double, ptr @B2, align 8
  %563 = call double @llvm.fmuladd.f64(double %551, double %561, double %562)
  %564 = load double, ptr @B1, align 8
  %565 = call double @llvm.fmuladd.f64(double %550, double %563, double %564)
  %566 = load double, ptr @one, align 8
  %567 = call double @llvm.fmuladd.f64(double %549, double %565, double %566)
  store double %567, ptr @sb, align 8
  %568 = load double, ptr @sa, align 8
  %569 = load double, ptr @sb, align 8
  %570 = fdiv double %568, %569
  store double %570, ptr @sa, align 8
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %572 = fdiv double %571, 2.900000e+01
  store double %572, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %573 = load double, ptr %6, align 8
  %574 = load double, ptr @sa, align 8
  %575 = load double, ptr @two, align 8
  %576 = load double, ptr %2, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %576, double %574)
  %578 = fmul double %573, %577
  %579 = load double, ptr @two, align 8
  %580 = fdiv double %578, %579
  store double %580, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %581 = load double, ptr @sa, align 8
  %582 = load double, ptr @sb, align 8
  %583 = fsub double %581, %582
  store double %583, ptr @sc, align 8
  %584 = load double, ptr @one, align 8
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %586 = fdiv double %584, %585
  store double %586, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %587 = load double, ptr @sc, align 8
  %588 = fmul double %587, 1.000000e-30
  %589 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %590 = fmul double %589, 1.000000e-30
  %591 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %592 = fmul double %591, 1.000000e-30
  %593 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %588, double noundef %590, double noundef %592)
  %594 = load double, ptr @piref, align 8
  %595 = load double, ptr @four, align 8
  %596 = load i32, ptr %10, align 4
  %597 = sitofp i32 %596 to double
  %598 = fmul double %595, %597
  %599 = fdiv double %594, %598
  store double %599, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %600 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %601 = load i32, ptr %10, align 4
  %602 = sub nsw i32 %601, 1
  %603 = load double, ptr %6, align 8
  %604 = load double, ptr @A6, align 8
  %605 = load double, ptr @A5, align 8
  %606 = load double, ptr @A4, align 8
  %607 = load double, ptr @A3, align 8
  %608 = load double, ptr @A2, align 8
  %609 = load double, ptr @A1, align 8
  %610 = load double, ptr @one, align 8
  %611 = load double, ptr @B6, align 8
  %612 = load double, ptr @B5, align 8
  %613 = load double, ptr @B4, align 8
  %614 = load double, ptr @B3, align 8
  %615 = load double, ptr @B2, align 8
  %616 = load double, ptr @B1, align 8
  %617 = load double, ptr @one, align 8
  %.promoted63 = load i32, ptr %9, align 4
  %.promoted65 = load double, ptr %3, align 8
  %.promoted68 = load double, ptr %4, align 8
  %.promoted70 = load double, ptr %2, align 8
  %.promoted72 = load double, ptr %5, align 1
  %618 = icmp sle i32 %.promoted63, %602
  br i1 %618, label %.lr.ph142, label %642

.lr.ph142:                                        ; preds = %515
  br label %619

619:                                              ; preds = %.lr.ph142, %639
  %620 = phi i32 [ %.promoted63, %.lr.ph142 ], [ %640, %639 ]
  %621 = phi double [ %.promoted70, %.lr.ph142 ], [ %638, %639 ]
  %622 = sitofp i32 %620 to double
  %623 = fmul double %622, %603
  %624 = fmul double %623, %623
  %625 = call double @llvm.fmuladd.f64(double %604, double %624, double %605)
  %626 = call double @llvm.fmuladd.f64(double %625, double %624, double %606)
  %627 = call double @llvm.fmuladd.f64(double %626, double %624, double %607)
  %628 = call double @llvm.fmuladd.f64(double %627, double %624, double %608)
  %629 = call double @llvm.fmuladd.f64(double %628, double %624, double %609)
  %630 = call double @llvm.fmuladd.f64(double %629, double %624, double %610)
  %631 = fmul double %623, %630
  %632 = call double @llvm.fmuladd.f64(double %611, double %624, double %612)
  %633 = call double @llvm.fmuladd.f64(double %624, double %632, double %613)
  %634 = call double @llvm.fmuladd.f64(double %624, double %633, double %614)
  %635 = call double @llvm.fmuladd.f64(double %624, double %634, double %615)
  %636 = call double @llvm.fmuladd.f64(double %624, double %635, double %616)
  %637 = call double @llvm.fmuladd.f64(double %624, double %636, double %617)
  %638 = call double @llvm.fmuladd.f64(double %631, double %637, double %621)
  br label %639

639:                                              ; preds = %619
  %640 = add nsw i32 %620, 1
  %641 = icmp sle i32 %640, %602
  br i1 %641, label %619, label %._crit_edge143, !llvm.loop !16

._crit_edge143:                                   ; preds = %639
  %split144 = phi double [ %624, %639 ]
  %split145 = phi double [ %638, %639 ]
  %split146 = phi double [ %631, %639 ]
  %split147 = phi double [ %623, %639 ]
  %split148 = phi i32 [ %640, %639 ]
  br label %642

642:                                              ; preds = %._crit_edge143, %515
  %.lcssa73 = phi double [ %split144, %._crit_edge143 ], [ %.promoted72, %515 ]
  %.lcssa71 = phi double [ %split145, %._crit_edge143 ], [ %.promoted70, %515 ]
  %.lcssa69 = phi double [ %split146, %._crit_edge143 ], [ %.promoted68, %515 ]
  %.lcssa66 = phi double [ %split147, %._crit_edge143 ], [ %.promoted65, %515 ]
  %.lcssa64 = phi i32 [ %split148, %._crit_edge143 ], [ %.promoted63, %515 ]
  store i32 %.lcssa64, ptr %9, align 4
  store double %.lcssa66, ptr %3, align 8
  store double %.lcssa69, ptr %4, align 8
  store double %.lcssa71, ptr %2, align 8
  store double %.lcssa73, ptr %5, align 1
  %643 = call i32 @dtime(ptr noundef @TimeArray)
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %646 = load double, ptr @nulltime, align 8
  %647 = fneg double %646
  %648 = call double @llvm.fmuladd.f64(double %644, double %645, double %647)
  store double %648, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %649 = load double, ptr @piref, align 8
  %650 = load double, ptr @four, align 8
  %651 = fdiv double %649, %650
  store double %651, ptr %3, align 8
  %652 = load double, ptr %3, align 8
  %653 = load double, ptr %3, align 8
  %654 = fmul double %652, %653
  store double %654, ptr %5, align 8
  %655 = load double, ptr %3, align 8
  %656 = load double, ptr @A6, align 8
  %657 = load double, ptr %5, align 8
  %658 = load double, ptr @A5, align 8
  %659 = call double @llvm.fmuladd.f64(double %656, double %657, double %658)
  %660 = load double, ptr %5, align 8
  %661 = load double, ptr @A4, align 8
  %662 = call double @llvm.fmuladd.f64(double %659, double %660, double %661)
  %663 = load double, ptr %5, align 8
  %664 = load double, ptr @A3, align 8
  %665 = call double @llvm.fmuladd.f64(double %662, double %663, double %664)
  %666 = load double, ptr %5, align 8
  %667 = load double, ptr @A2, align 8
  %668 = call double @llvm.fmuladd.f64(double %665, double %666, double %667)
  %669 = load double, ptr %5, align 8
  %670 = load double, ptr @A1, align 8
  %671 = call double @llvm.fmuladd.f64(double %668, double %669, double %670)
  %672 = load double, ptr %5, align 8
  %673 = load double, ptr @one, align 8
  %674 = call double @llvm.fmuladd.f64(double %671, double %672, double %673)
  %675 = fmul double %655, %674
  store double %675, ptr @sa, align 8
  %676 = load double, ptr %5, align 8
  %677 = load double, ptr %5, align 8
  %678 = load double, ptr %5, align 8
  %679 = load double, ptr %5, align 8
  %680 = load double, ptr %5, align 8
  %681 = load double, ptr @B6, align 8
  %682 = load double, ptr %5, align 8
  %683 = load double, ptr @B5, align 8
  %684 = call double @llvm.fmuladd.f64(double %681, double %682, double %683)
  %685 = load double, ptr @B4, align 8
  %686 = call double @llvm.fmuladd.f64(double %680, double %684, double %685)
  %687 = load double, ptr @B3, align 8
  %688 = call double @llvm.fmuladd.f64(double %679, double %686, double %687)
  %689 = load double, ptr @B2, align 8
  %690 = call double @llvm.fmuladd.f64(double %678, double %688, double %689)
  %691 = load double, ptr @B1, align 8
  %692 = call double @llvm.fmuladd.f64(double %677, double %690, double %691)
  %693 = load double, ptr @one, align 8
  %694 = call double @llvm.fmuladd.f64(double %676, double %692, double %693)
  store double %694, ptr @sb, align 8
  %695 = load double, ptr @sa, align 8
  %696 = load double, ptr @sb, align 8
  %697 = fmul double %695, %696
  store double %697, ptr @sa, align 8
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %699 = fdiv double %698, 2.900000e+01
  store double %699, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %700 = load double, ptr %6, align 8
  %701 = load double, ptr @sa, align 8
  %702 = load double, ptr @two, align 8
  %703 = load double, ptr %2, align 8
  %704 = call double @llvm.fmuladd.f64(double %702, double %703, double %701)
  %705 = fmul double %700, %704
  %706 = load double, ptr @two, align 8
  %707 = fdiv double %705, %706
  store double %707, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %708 = load double, ptr @sa, align 8
  %709 = load double, ptr @sb, align 8
  %710 = fsub double %708, %709
  store double %710, ptr @sc, align 8
  %711 = load double, ptr @one, align 8
  %712 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %713 = fdiv double %711, %712
  store double %713, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %714 = load double, ptr @sc, align 8
  %715 = fmul double %714, 1.000000e-30
  %716 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %717 = fmul double %716, 1.000000e-30
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %719 = fmul double %718, 1.000000e-30
  %720 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %715, double noundef %717, double noundef %719)
  store double 0.000000e+00, ptr %2, align 8
  %721 = load double, ptr @one, align 8
  store double %721, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %722 = load double, ptr @sa, align 8
  %723 = load i32, ptr %10, align 4
  %724 = sitofp i32 %723 to double
  %725 = fdiv double %722, %724
  store double %725, ptr %4, align 8
  %726 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %727 = load i32, ptr %10, align 4
  %728 = sub nsw i32 %727, 1
  %729 = load double, ptr %4, align 8
  %730 = load double, ptr %5, align 8
  %731 = load double, ptr %5, align 8
  %732 = load double, ptr %5, align 8
  %733 = load double, ptr %5, align 8
  %.promoted74 = load i32, ptr %9, align 4
  %.promoted76 = load double, ptr %6, align 8
  %.promoted78 = load double, ptr %3, align 8
  %.promoted80 = load double, ptr %2, align 8
  %734 = icmp sle i32 %.promoted74, %728
  br i1 %734, label %.lr.ph150, label %753

.lr.ph150:                                        ; preds = %642
  br label %735

735:                                              ; preds = %.lr.ph150, %750
  %736 = phi i32 [ %.promoted74, %.lr.ph150 ], [ %751, %750 ]
  %737 = phi double [ %.promoted80, %.lr.ph150 ], [ %749, %750 ]
  %738 = sitofp i32 %736 to double
  %739 = fmul double %738, %729
  %740 = fmul double %739, %739
  %741 = fadd double %739, %731
  %742 = fdiv double %730, %741
  %743 = fsub double %737, %742
  %744 = fadd double %740, %732
  %745 = fdiv double %739, %744
  %746 = fsub double %743, %745
  %747 = call double @llvm.fmuladd.f64(double %739, double %740, double %733)
  %748 = fdiv double %740, %747
  %749 = fsub double %746, %748
  br label %750

750:                                              ; preds = %735
  %751 = add nsw i32 %736, 1
  %752 = icmp sle i32 %751, %728
  br i1 %752, label %735, label %._crit_edge151, !llvm.loop !17

._crit_edge151:                                   ; preds = %750
  %split152 = phi double [ %749, %750 ]
  %split153 = phi double [ %740, %750 ]
  %split154 = phi double [ %739, %750 ]
  %split155 = phi i32 [ %751, %750 ]
  br label %753

753:                                              ; preds = %._crit_edge151, %642
  %.lcssa81 = phi double [ %split152, %._crit_edge151 ], [ %.promoted80, %642 ]
  %.lcssa79 = phi double [ %split153, %._crit_edge151 ], [ %.promoted78, %642 ]
  %.lcssa77 = phi double [ %split154, %._crit_edge151 ], [ %.promoted76, %642 ]
  %.lcssa75 = phi i32 [ %split155, %._crit_edge151 ], [ %.promoted74, %642 ]
  store i32 %.lcssa75, ptr %9, align 4
  store double %.lcssa77, ptr %6, align 8
  store double %.lcssa79, ptr %3, align 8
  store double %.lcssa81, ptr %2, align 8
  %754 = call i32 @dtime(ptr noundef @TimeArray)
  %755 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %756 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %757 = load double, ptr @nulltime, align 8
  %758 = fneg double %757
  %759 = call double @llvm.fmuladd.f64(double %755, double %756, double %758)
  store double %759, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %760 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %761 = fdiv double %760, 1.200000e+01
  store double %761, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %762 = load double, ptr @sa, align 8
  store double %762, ptr %6, align 8
  %763 = load double, ptr %6, align 8
  %764 = load double, ptr %6, align 8
  %765 = fmul double %763, %764
  store double %765, ptr %3, align 8
  %766 = load double, ptr %5, align 8
  %767 = fneg double %766
  %768 = load double, ptr %5, align 8
  %769 = load double, ptr %6, align 8
  %770 = load double, ptr %5, align 8
  %771 = fadd double %769, %770
  %772 = fdiv double %768, %771
  %773 = fsub double %767, %772
  %774 = load double, ptr %6, align 8
  %775 = load double, ptr %3, align 8
  %776 = load double, ptr %5, align 8
  %777 = fadd double %775, %776
  %778 = fdiv double %774, %777
  %779 = fsub double %773, %778
  %780 = load double, ptr %3, align 8
  %781 = load double, ptr %6, align 8
  %782 = load double, ptr %3, align 8
  %783 = load double, ptr %5, align 8
  %784 = call double @llvm.fmuladd.f64(double %781, double %782, double %783)
  %785 = fdiv double %780, %784
  %786 = fsub double %779, %785
  store double %786, ptr @sa, align 8
  %787 = load double, ptr %4, align 8
  %788 = fmul double 1.800000e+01, %787
  %789 = load double, ptr @sa, align 8
  %790 = load double, ptr @two, align 8
  %791 = load double, ptr %2, align 8
  %792 = call double @llvm.fmuladd.f64(double %790, double %791, double %789)
  %793 = fmul double %788, %792
  store double %793, ptr @sa, align 8
  %794 = load double, ptr @sa, align 8
  %795 = fptosi double %794 to i32
  %796 = mul nsw i32 -2000, %795
  store i32 %796, ptr %10, align 4
  %797 = load i32, ptr %10, align 4
  %798 = sitofp i32 %797 to double
  %799 = load double, ptr @scale, align 8
  %800 = fdiv double %798, %799
  %801 = fptosi double %800 to i32
  store i32 %801, ptr %10, align 4
  %802 = load double, ptr @sa, align 8
  %803 = fadd double %802, 5.002000e+02
  store double %803, ptr @sc, align 8
  %804 = load double, ptr @one, align 8
  %805 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %806 = fdiv double %804, %805
  store double %806, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %807 = load double, ptr @sc, align 8
  %808 = fmul double %807, 1.000000e-30
  %809 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %810 = fmul double %809, 1.000000e-30
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %812 = fmul double %811, 1.000000e-30
  %813 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %808, double noundef %810, double noundef %812)
  %814 = load double, ptr @piref, align 8
  %815 = load double, ptr @three, align 8
  %816 = load i32, ptr %10, align 4
  %817 = sitofp i32 %816 to double
  %818 = fmul double %815, %817
  %819 = fdiv double %814, %818
  store double %819, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %820 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %821 = load i32, ptr %10, align 4
  %822 = sub nsw i32 %821, 1
  %823 = load double, ptr %6, align 8
  %824 = load double, ptr @B6, align 8
  %825 = load double, ptr @B5, align 8
  %826 = load double, ptr @B4, align 8
  %827 = load double, ptr @B3, align 8
  %828 = load double, ptr @B2, align 8
  %829 = load double, ptr @B1, align 8
  %830 = load double, ptr @one, align 8
  %831 = load double, ptr @A6, align 8
  %832 = load double, ptr @A5, align 8
  %833 = load double, ptr @A4, align 8
  %834 = load double, ptr @A3, align 8
  %835 = load double, ptr @A2, align 8
  %836 = load double, ptr @A1, align 8
  %837 = load double, ptr @one, align 8
  %.promoted82 = load i32, ptr %9, align 4
  %.promoted84 = load double, ptr %3, align 8
  %.promoted86 = load double, ptr %5, align 8
  %.promoted88 = load double, ptr %4, align 8
  %.promoted90 = load double, ptr %2, align 8
  %838 = icmp sle i32 %.promoted82, %822
  br i1 %838, label %.lr.ph157, label %863

.lr.ph157:                                        ; preds = %753
  br label %839

839:                                              ; preds = %.lr.ph157, %860
  %840 = phi i32 [ %.promoted82, %.lr.ph157 ], [ %861, %860 ]
  %841 = phi double [ %.promoted90, %.lr.ph157 ], [ %859, %860 ]
  %842 = sitofp i32 %840 to double
  %843 = fmul double %842, %823
  %844 = fmul double %843, %843
  %845 = call double @llvm.fmuladd.f64(double %824, double %844, double %825)
  %846 = call double @llvm.fmuladd.f64(double %844, double %845, double %826)
  %847 = call double @llvm.fmuladd.f64(double %844, double %846, double %827)
  %848 = call double @llvm.fmuladd.f64(double %844, double %847, double %828)
  %849 = call double @llvm.fmuladd.f64(double %844, double %848, double %829)
  %850 = call double @llvm.fmuladd.f64(double %844, double %849, double %830)
  %851 = fmul double %850, %850
  %852 = fmul double %851, %843
  %853 = call double @llvm.fmuladd.f64(double %831, double %844, double %832)
  %854 = call double @llvm.fmuladd.f64(double %853, double %844, double %833)
  %855 = call double @llvm.fmuladd.f64(double %854, double %844, double %834)
  %856 = call double @llvm.fmuladd.f64(double %855, double %844, double %835)
  %857 = call double @llvm.fmuladd.f64(double %856, double %844, double %836)
  %858 = call double @llvm.fmuladd.f64(double %857, double %844, double %837)
  %859 = call double @llvm.fmuladd.f64(double %852, double %858, double %841)
  br label %860

860:                                              ; preds = %839
  %861 = add nsw i32 %840, 1
  %862 = icmp sle i32 %861, %822
  br i1 %862, label %839, label %._crit_edge158, !llvm.loop !18

._crit_edge158:                                   ; preds = %860
  %split159 = phi double [ %859, %860 ]
  %split160 = phi double [ %850, %860 ]
  %split161 = phi double [ %844, %860 ]
  %split162 = phi double [ %843, %860 ]
  %split163 = phi i32 [ %861, %860 ]
  br label %863

863:                                              ; preds = %._crit_edge158, %753
  %.lcssa91 = phi double [ %split159, %._crit_edge158 ], [ %.promoted90, %753 ]
  %.lcssa89 = phi double [ %split160, %._crit_edge158 ], [ %.promoted88, %753 ]
  %.lcssa87 = phi double [ %split161, %._crit_edge158 ], [ %.promoted86, %753 ]
  %.lcssa85 = phi double [ %split162, %._crit_edge158 ], [ %.promoted84, %753 ]
  %.lcssa83 = phi i32 [ %split163, %._crit_edge158 ], [ %.promoted82, %753 ]
  store i32 %.lcssa83, ptr %9, align 4
  store double %.lcssa85, ptr %3, align 8
  store double %.lcssa87, ptr %5, align 8
  store double %.lcssa89, ptr %4, align 8
  store double %.lcssa91, ptr %2, align 8
  %864 = call i32 @dtime(ptr noundef @TimeArray)
  %865 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %866 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %867 = load double, ptr @nulltime, align 8
  %868 = fneg double %867
  %869 = call double @llvm.fmuladd.f64(double %865, double %866, double %868)
  store double %869, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %870 = load double, ptr @piref, align 8
  %871 = load double, ptr @three, align 8
  %872 = fdiv double %870, %871
  store double %872, ptr %3, align 8
  %873 = load double, ptr %3, align 8
  %874 = load double, ptr %3, align 8
  %875 = fmul double %873, %874
  store double %875, ptr %5, align 8
  %876 = load double, ptr %3, align 8
  %877 = load double, ptr @A6, align 8
  %878 = load double, ptr %5, align 8
  %879 = load double, ptr @A5, align 8
  %880 = call double @llvm.fmuladd.f64(double %877, double %878, double %879)
  %881 = load double, ptr %5, align 8
  %882 = load double, ptr @A4, align 8
  %883 = call double @llvm.fmuladd.f64(double %880, double %881, double %882)
  %884 = load double, ptr %5, align 8
  %885 = load double, ptr @A3, align 8
  %886 = call double @llvm.fmuladd.f64(double %883, double %884, double %885)
  %887 = load double, ptr %5, align 8
  %888 = load double, ptr @A2, align 8
  %889 = call double @llvm.fmuladd.f64(double %886, double %887, double %888)
  %890 = load double, ptr %5, align 8
  %891 = load double, ptr @A1, align 8
  %892 = call double @llvm.fmuladd.f64(double %889, double %890, double %891)
  %893 = load double, ptr %5, align 8
  %894 = load double, ptr @one, align 8
  %895 = call double @llvm.fmuladd.f64(double %892, double %893, double %894)
  %896 = fmul double %876, %895
  store double %896, ptr @sa, align 8
  %897 = load double, ptr %5, align 8
  %898 = load double, ptr %5, align 8
  %899 = load double, ptr %5, align 8
  %900 = load double, ptr %5, align 8
  %901 = load double, ptr %5, align 8
  %902 = load double, ptr @B6, align 8
  %903 = load double, ptr %5, align 8
  %904 = load double, ptr @B5, align 8
  %905 = call double @llvm.fmuladd.f64(double %902, double %903, double %904)
  %906 = load double, ptr @B4, align 8
  %907 = call double @llvm.fmuladd.f64(double %901, double %905, double %906)
  %908 = load double, ptr @B3, align 8
  %909 = call double @llvm.fmuladd.f64(double %900, double %907, double %908)
  %910 = load double, ptr @B2, align 8
  %911 = call double @llvm.fmuladd.f64(double %899, double %909, double %910)
  %912 = load double, ptr @B1, align 8
  %913 = call double @llvm.fmuladd.f64(double %898, double %911, double %912)
  %914 = load double, ptr @one, align 8
  %915 = call double @llvm.fmuladd.f64(double %897, double %913, double %914)
  store double %915, ptr @sb, align 8
  %916 = load double, ptr @sa, align 8
  %917 = load double, ptr @sb, align 8
  %918 = fmul double %916, %917
  %919 = load double, ptr @sb, align 8
  %920 = fmul double %918, %919
  store double %920, ptr @sa, align 8
  %921 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %922 = fdiv double %921, 3.000000e+01
  store double %922, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %923 = load double, ptr %6, align 8
  %924 = load double, ptr @sa, align 8
  %925 = load double, ptr @two, align 8
  %926 = load double, ptr %2, align 8
  %927 = call double @llvm.fmuladd.f64(double %925, double %926, double %924)
  %928 = fmul double %923, %927
  %929 = load double, ptr @two, align 8
  %930 = fdiv double %928, %929
  store double %930, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %931 = load double, ptr @sa, align 8
  %932 = load double, ptr @sb, align 8
  %933 = fsub double %931, %932
  store double %933, ptr @sc, align 8
  %934 = load double, ptr @one, align 8
  %935 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %936 = fdiv double %934, %935
  store double %936, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %937 = load double, ptr @sc, align 8
  %938 = fmul double %937, 1.000000e-30
  %939 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %940 = fmul double %939, 1.000000e-30
  %941 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %942 = fmul double %941, 1.000000e-30
  %943 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %938, double noundef %940, double noundef %942)
  %944 = load double, ptr @five, align 8
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %946 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %947 = fsub double %945, %946
  %948 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %949 = call double @llvm.fmuladd.f64(double %944, double %947, double %948)
  %950 = fdiv double %949, 5.200000e+01
  store double %950, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %951 = load double, ptr @one, align 8
  %952 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %953 = fdiv double %951, %952
  store double %953, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %954 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %955 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %956 = fadd double %954, %955
  %957 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %958 = fadd double %956, %957
  %959 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %960 = fadd double %958, %959
  %961 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %962 = fadd double %960, %961
  store double %962, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %963 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %964 = load double, ptr @four, align 8
  %965 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %966 = call double @llvm.fmuladd.f64(double %964, double %965, double %963)
  %967 = fdiv double %966, 1.520000e+02
  store double %967, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %968 = load double, ptr @one, align 8
  %969 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %970 = fdiv double %968, %969
  store double %970, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %971 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %972 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %973 = fadd double %971, %972
  %974 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %975 = fadd double %973, %974
  %976 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %977 = fadd double %975, %976
  %978 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %979 = fadd double %977, %978
  store double %979, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %980 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %981 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %982 = fadd double %980, %981
  %983 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %984 = fadd double %982, %983
  %985 = fdiv double %984, 1.460000e+02
  store double %985, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %986 = load double, ptr @one, align 8
  %987 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %988 = fdiv double %986, %987
  store double %988, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %989 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %990 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %991 = fadd double %989, %990
  %992 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %993 = fadd double %991, %992
  %994 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %995 = fadd double %993, %994
  %996 = fdiv double %995, 9.100000e+01
  store double %996, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %997 = load double, ptr @one, align 8
  %998 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %999 = fdiv double %997, %998
  store double %999, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1000 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1001 = load i32, ptr %10, align 4
  %1002 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1001)
  %1003 = load double, ptr @nulltime, align 8
  %1004 = fmul double %1003, 1.000000e-30
  %1005 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1004)
  %1006 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1007 = fmul double %1006, 1.000000e-30
  %1008 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1007)
  %1009 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1010 = fmul double %1009, 1.000000e-30
  %1011 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1010)
  %1012 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1013 = fmul double %1012, 1.000000e-30
  %1014 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1013)
  %1015 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1016 = fmul double %1015, 1.000000e-30
  %1017 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1016)
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
