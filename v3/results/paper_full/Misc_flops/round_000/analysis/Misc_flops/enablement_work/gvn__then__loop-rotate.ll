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
  store double 6.400000e+01, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i32 512000000, ptr %8, align 4
  store double f0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  store double 1.000000e+00, ptr @scale, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %16 = call i32 @dtime(ptr noundef @TimeArray)
  %17 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 15625, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %18 = load double, ptr @TLimit, align 8
  %19 = fcmp olt double 0.000000e+00, %18
  br i1 %19, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %0
  br label %27

20:                                               ; preds = %57
  %21 = phi double [ %.lcssa10, %57 ]
  %22 = phi double [ %32, %57 ]
  %23 = phi i32 [ %29, %57 ]
  %24 = phi double [ %59, %57 ]
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %..loopexit_crit_edge, !llvm.loop !7

27:                                               ; preds = %.lr.ph19, %20
  %28 = phi i32 [ 15625, %.lr.ph19 ], [ %23, %20 ]
  %29 = mul nsw i32 2, %28
  store i32 %29, ptr %11, align 4
  %30 = load double, ptr @one, align 8
  %31 = sitofp i32 %29 to double
  %32 = fdiv double %30, %31
  store double %32, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double %30, ptr %5, align 8
  %33 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %34 = sub nsw i32 %29, 1
  %35 = icmp sle i32 1, %34
  br i1 %35, label %.lr.ph, label %57

.lr.ph:                                           ; preds = %27
  br label %36

36:                                               ; preds = %.lr.ph, %36
  %37 = phi i32 [ 1, %.lr.ph ], [ %55, %36 ]
  %38 = phi double [ 0.000000e+00, %.lr.ph ], [ %54, %36 ]
  %39 = phi double [ 0.000000e+00, %.lr.ph ], [ %41, %36 ]
  %40 = load double, ptr %5, align 8
  %41 = fadd double %39, %40
  store double %41, ptr %4, align 8
  %42 = fmul double %41, %32
  store double %42, ptr %3, align 8
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @D2, align 8
  %45 = load double, ptr @D3, align 8
  %46 = call double @llvm.fmuladd.f64(double %42, double %45, double %44)
  %47 = call double @llvm.fmuladd.f64(double %42, double %46, double %43)
  %48 = load double, ptr @E2, align 8
  %49 = load double, ptr @E3, align 8
  %50 = call double @llvm.fmuladd.f64(double %42, double %49, double %48)
  %51 = call double @llvm.fmuladd.f64(double %42, double %50, double %43)
  %52 = call double @llvm.fmuladd.f64(double %42, double %51, double %40)
  %53 = fdiv double %47, %52
  %54 = fadd double %38, %53
  store double %54, ptr %2, align 8
  %55 = add nsw i32 %37, 1
  store i32 %55, ptr %9, align 4
  %56 = icmp sle i32 %55, %34
  br i1 %56, label %36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %36
  %split = phi double [ %54, %36 ]
  br label %57

57:                                               ; preds = %._crit_edge, %27
  %.lcssa10 = phi double [ %split, %._crit_edge ], [ 0.000000e+00, %27 ]
  %58 = call i32 @dtime(ptr noundef @TimeArray)
  %59 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %59, ptr @sa, align 8
  %60 = icmp eq i32 %29, 512000000
  br i1 %60, label %61, label %20

61:                                               ; preds = %57
  %.lcssa17 = phi double [ %32, %57 ]
  %.lcssa10.lcssa = phi double [ %.lcssa10, %57 ]
  br label %62

..loopexit_crit_edge:                             ; preds = %20
  %split20 = phi double [ %21, %20 ]
  %split21 = phi double [ %22, %20 ]
  %split22 = phi i32 [ %23, %20 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  %.lcssa15 = phi double [ %split20, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa13 = phi double [ %split21, %..loopexit_crit_edge ], [ undef, %0 ]
  %.lcssa11 = phi i32 [ %split22, %..loopexit_crit_edge ], [ 15625, %0 ]
  br label %62

62:                                               ; preds = %.loopexit, %61
  %63 = phi double [ %.lcssa10.lcssa, %61 ], [ %.lcssa15, %.loopexit ]
  %64 = phi double [ %.lcssa17, %61 ], [ %.lcssa13, %.loopexit ]
  %65 = phi i32 [ 512000000, %61 ], [ %.lcssa11, %.loopexit ]
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %66 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %67 = sub nsw i32 %65, 1
  %68 = icmp sle i32 1, %67
  br i1 %68, label %.lr.ph24, label %73

.lr.ph24:                                         ; preds = %62
  br label %69

69:                                               ; preds = %.lr.ph24, %69
  %70 = phi i32 [ 1, %.lr.ph24 ], [ %71, %69 ]
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %9, align 4
  %72 = icmp sle i32 %71, %67
  br i1 %72, label %69, label %._crit_edge25, !llvm.loop !10

._crit_edge25:                                    ; preds = %69
  br label %73

73:                                               ; preds = %._crit_edge25, %62
  %74 = call i32 @dtime(ptr noundef @TimeArray)
  %75 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %76 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %77 = fmul double %75, %76
  store double %77, ptr @nulltime, align 8
  %78 = fcmp olt double %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi double [ 0.000000e+00, %79 ], [ %77, %73 ]
  %82 = load double, ptr @sa, align 8
  %83 = fneg double %81
  %84 = call double @llvm.fmuladd.f64(double %75, double %82, double %83)
  store double %84, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %85 = load double, ptr @D1, align 8
  %86 = load double, ptr @D2, align 8
  %87 = fadd double %85, %86
  %88 = load double, ptr @D3, align 8
  %89 = fadd double %87, %88
  %90 = load double, ptr @one, align 8
  %91 = fadd double %90, %85
  %92 = load double, ptr @E2, align 8
  %93 = fadd double %91, %92
  %94 = load double, ptr @E3, align 8
  %95 = fadd double %93, %94
  %96 = fdiv double %89, %95
  store double %96, ptr @sa, align 8
  store double %85, ptr @sb, align 8
  %97 = fdiv double %84, 1.400000e+01
  store double %97, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %98 = fadd double %96, %85
  %99 = load double, ptr @two, align 8
  %100 = call double @llvm.fmuladd.f64(double %99, double %63, double %98)
  %101 = fmul double %64, %100
  %102 = fdiv double %101, %99
  store double %102, ptr @sa, align 8
  %103 = fdiv double %90, %102
  store double %103, ptr @sb, align 8
  %104 = fptosi double %103 to i32
  %105 = mul nsw i32 40000, %104
  %106 = sitofp i32 %105 to double
  %107 = load double, ptr @scale, align 8
  %108 = fdiv double %106, %107
  %109 = fptosi double %108 to i32
  store i32 %109, ptr %11, align 4
  %110 = fsub double %103, 2.520000e+01
  store double %110, ptr @sc, align 8
  %111 = fdiv double %90, %97
  store double %111, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %112 = fmul double %110, 1.000000e-30
  %113 = fmul double %84, 1.000000e-30
  %114 = fmul double %111, 1.000000e-30
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %112, double noundef %113, double noundef %114)
  store i32 %109, ptr %10, align 4
  %116 = load double, ptr @five, align 8
  %117 = fneg double %116
  store double %117, ptr %2, align 8
  %118 = load double, ptr @one, align 8
  %119 = fneg double %118
  store double %119, ptr @sa, align 8
  %120 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %121 = icmp sle i32 1, %109
  br i1 %121, label %.lr.ph27, label %130

.lr.ph27:                                         ; preds = %80
  br label %122

122:                                              ; preds = %.lr.ph27, %122
  %123 = phi i32 [ 1, %.lr.ph27 ], [ %128, %122 ]
  %124 = phi double [ %117, %.lr.ph27 ], [ %125, %122 ]
  %125 = fneg double %124
  store double %125, ptr %2, align 8
  %126 = load double, ptr @sa, align 8
  %127 = fadd double %126, %125
  store double %127, ptr @sa, align 8
  %128 = add nsw i32 %123, 1
  store i32 %128, ptr %9, align 4
  %129 = icmp sle i32 %128, %109
  br i1 %129, label %122, label %._crit_edge28, !llvm.loop !11

._crit_edge28:                                    ; preds = %122
  %split29 = phi double [ %125, %122 ]
  br label %130

130:                                              ; preds = %._crit_edge28, %80
  %.lcssa9 = phi double [ %split29, %._crit_edge28 ], [ %117, %80 ]
  %131 = call i32 @dtime(ptr noundef @TimeArray)
  %132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %134 = fmul double %132, %133
  store double %134, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %135 = fcmp olt double %134, 0.000000e+00
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %137

137:                                              ; preds = %136, %130
  %138 = sitofp i32 %109 to double
  store double %138, ptr @sc, align 8
  %139 = load double, ptr @sa, align 8
  store double %139, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %140 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %141 = icmp sle i32 1, %109
  br i1 %141, label %.lr.ph31, label %161

.lr.ph31:                                         ; preds = %137
  br label %142

142:                                              ; preds = %.lr.ph31, %142
  %143 = phi i32 [ 1, %.lr.ph31 ], [ %159, %142 ]
  %144 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %154, %142 ]
  %145 = phi double [ 0.000000e+00, %.lr.ph31 ], [ %155, %142 ]
  %146 = phi double [ %.lcssa9, %.lr.ph31 ], [ %148, %142 ]
  %147 = phi double [ %139, %.lr.ph31 ], [ %152, %142 ]
  %148 = fneg double %146
  store double %148, ptr %2, align 8
  %149 = load double, ptr @sa, align 8
  %150 = fadd double %149, %148
  store double %150, ptr @sa, align 8
  %151 = load double, ptr @two, align 8
  %152 = fadd double %147, %151
  store double %152, ptr %3, align 8
  %153 = fsub double %148, %152
  %154 = fadd double %144, %153
  store double %154, ptr %6, align 8
  %155 = call double @llvm.fmuladd.f64(double %146, double %152, double %145)
  store double %155, ptr %4, align 8
  %156 = load double, ptr %5, align 8
  %157 = fdiv double %148, %152
  %158 = fadd double %156, %157
  store double %158, ptr %5, align 8
  %159 = add nsw i32 %143, 1
  store i32 %159, ptr %9, align 4
  %160 = icmp sle i32 %159, %109
  br i1 %160, label %142, label %._crit_edge32, !llvm.loop !12

._crit_edge32:                                    ; preds = %142
  %split33 = phi double [ %155, %142 ]
  %split34 = phi double [ %154, %142 ]
  br label %161

161:                                              ; preds = %._crit_edge32, %137
  %.lcssa8 = phi double [ %split33, %._crit_edge32 ], [ 0.000000e+00, %137 ]
  %.lcssa7 = phi double [ %split34, %._crit_edge32 ], [ 0.000000e+00, %137 ]
  %162 = call i32 @dtime(ptr noundef @TimeArray)
  %163 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %164 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %165 = fmul double %163, %164
  store double %165, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %166 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %167 = fsub double %165, %166
  %168 = fdiv double %167, 7.000000e+00
  store double %168, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %169 = load double, ptr @sa, align 8
  %170 = fmul double %169, %.lcssa7
  %171 = load double, ptr @sc, align 8
  %172 = fdiv double %170, %171
  %173 = fptosi double %172 to i32
  store i32 %173, ptr %10, align 4
  %174 = load double, ptr @four, align 8
  %175 = load double, ptr %5, align 8
  %176 = fmul double %174, %175
  %177 = load double, ptr @five, align 8
  %178 = fdiv double %176, %177
  store double %178, ptr @sa, align 8
  %179 = fdiv double %177, %.lcssa8
  %180 = fadd double %178, %179
  store double %180, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %181 = fmul double %.lcssa8, %.lcssa8
  %182 = fmul double %181, %.lcssa8
  %183 = fdiv double 3.125000e+01, %182
  %184 = fsub double %180, %183
  store double %184, ptr @piprg, align 8
  %185 = load double, ptr @piref, align 8
  %186 = fsub double %184, %185
  store double %186, ptr @pierr, align 8
  %187 = load double, ptr @one, align 8
  %188 = fdiv double %187, %168
  store double %188, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %189 = fmul double %186, 1.000000e-30
  %190 = fmul double %167, 1.000000e-30
  %191 = fmul double %188, 1.000000e-30
  %192 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %189, double noundef %190, double noundef %191)
  %193 = load double, ptr @piref, align 8
  %194 = load double, ptr @three, align 8
  %195 = sitofp i32 %173 to double
  %196 = fmul double %194, %195
  %197 = fdiv double %193, %196
  store double %197, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %198 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %199 = sub nsw i32 %173, 1
  %200 = icmp sle i32 1, %199
  br i1 %200, label %.lr.ph36, label %226

.lr.ph36:                                         ; preds = %161
  br label %201

201:                                              ; preds = %.lr.ph36, %201
  %202 = phi i32 [ 1, %.lr.ph36 ], [ %224, %201 ]
  %203 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %223, %201 ]
  %204 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %206, %201 ]
  %205 = load double, ptr @one, align 8
  %206 = fadd double %204, %205
  store double %206, ptr %4, align 8
  %207 = fmul double %206, %197
  store double %207, ptr %3, align 8
  %208 = fmul double %207, %207
  store double %208, ptr %5, align 8
  %209 = load double, ptr @A6, align 8
  %210 = load double, ptr @A5, align 8
  %211 = fneg double %210
  %212 = call double @llvm.fmuladd.f64(double %209, double %208, double %211)
  %213 = load double, ptr @A4, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %208, double %213)
  %215 = load double, ptr @A3, align 8
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %214, double %208, double %216)
  %218 = load double, ptr @A2, align 8
  %219 = call double @llvm.fmuladd.f64(double %217, double %208, double %218)
  %220 = load double, ptr @A1, align 8
  %221 = call double @llvm.fmuladd.f64(double %219, double %208, double %220)
  %222 = call double @llvm.fmuladd.f64(double %221, double %208, double %205)
  %223 = call double @llvm.fmuladd.f64(double %207, double %222, double %203)
  store double %223, ptr %2, align 8
  %224 = add nsw i32 %202, 1
  store i32 %224, ptr %9, align 4
  %225 = icmp sle i32 %224, %199
  br i1 %225, label %201, label %._crit_edge37, !llvm.loop !13

._crit_edge37:                                    ; preds = %201
  %split38 = phi double [ %223, %201 ]
  %split39 = phi i32 [ %199, %201 ]
  br label %226

226:                                              ; preds = %._crit_edge37, %161
  %.lcssa6 = phi double [ %split38, %._crit_edge37 ], [ 0.000000e+00, %161 ]
  %.lcssa5 = phi i32 [ %split39, %._crit_edge37 ], [ %199, %161 ]
  %227 = call i32 @dtime(ptr noundef @TimeArray)
  %228 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %229 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %230 = load double, ptr @nulltime, align 8
  %231 = fneg double %230
  %232 = call double @llvm.fmuladd.f64(double %228, double %229, double %231)
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %233 = load double, ptr @piref, align 8
  %234 = load double, ptr @three, align 8
  %235 = fdiv double %233, %234
  store double %235, ptr %3, align 8
  %236 = fmul double %235, %235
  store double %236, ptr %5, align 8
  %237 = load double, ptr @A6, align 8
  %238 = load double, ptr @A5, align 8
  %239 = fneg double %238
  %240 = call double @llvm.fmuladd.f64(double %237, double %236, double %239)
  %241 = load double, ptr @A4, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %236, double %241)
  %243 = load double, ptr @A3, align 8
  %244 = fneg double %243
  %245 = call double @llvm.fmuladd.f64(double %242, double %236, double %244)
  %246 = load double, ptr @A2, align 8
  %247 = call double @llvm.fmuladd.f64(double %245, double %236, double %246)
  %248 = load double, ptr @A1, align 8
  %249 = call double @llvm.fmuladd.f64(double %247, double %236, double %248)
  %250 = load double, ptr @one, align 8
  %251 = call double @llvm.fmuladd.f64(double %249, double %236, double %250)
  %252 = fmul double %235, %251
  store double %252, ptr @sa, align 8
  %253 = fdiv double %232, 1.700000e+01
  store double %253, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %254 = load double, ptr @two, align 8
  %255 = call double @llvm.fmuladd.f64(double %254, double %.lcssa6, double %252)
  %256 = fmul double %197, %255
  %257 = fdiv double %256, %254
  store double %257, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %258 = fsub double %257, 5.000000e-01
  store double %258, ptr @sc, align 8
  %259 = fdiv double %250, %253
  store double %259, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %260 = fmul double %258, 1.000000e-30
  %261 = fmul double %232, 1.000000e-30
  %262 = fmul double %259, 1.000000e-30
  %263 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %260, double noundef %261, double noundef %262)
  %264 = load double, ptr @A3, align 8
  %265 = fneg double %264
  store double %265, ptr @A3, align 8
  %266 = load double, ptr @A5, align 8
  %267 = fneg double %266
  store double %267, ptr @A5, align 8
  %268 = load double, ptr @piref, align 8
  %269 = load double, ptr @three, align 8
  %270 = fmul double %269, %195
  %271 = fdiv double %268, %270
  store double %271, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %272 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %273 = icmp sle i32 1, %.lcssa5
  br i1 %273, label %.lr.ph41, label %296

.lr.ph41:                                         ; preds = %226
  br label %274

274:                                              ; preds = %.lr.ph41, %274
  %275 = phi i32 [ 1, %.lr.ph41 ], [ %294, %274 ]
  %276 = phi double [ 0.000000e+00, %.lr.ph41 ], [ %293, %274 ]
  %277 = sitofp i32 %275 to double
  %278 = fmul double %277, %271
  store double %278, ptr %3, align 8
  %279 = fmul double %278, %278
  store double %279, ptr %5, align 8
  %280 = load double, ptr @B6, align 8
  %281 = load double, ptr @B5, align 8
  %282 = call double @llvm.fmuladd.f64(double %280, double %279, double %281)
  %283 = load double, ptr @B4, align 8
  %284 = call double @llvm.fmuladd.f64(double %279, double %282, double %283)
  %285 = load double, ptr @B3, align 8
  %286 = call double @llvm.fmuladd.f64(double %279, double %284, double %285)
  %287 = load double, ptr @B2, align 8
  %288 = call double @llvm.fmuladd.f64(double %279, double %286, double %287)
  %289 = load double, ptr @B1, align 8
  %290 = call double @llvm.fmuladd.f64(double %279, double %288, double %289)
  %291 = call double @llvm.fmuladd.f64(double %279, double %290, double %276)
  %292 = load double, ptr @one, align 8
  %293 = fadd double %291, %292
  store double %293, ptr %2, align 8
  %294 = add nsw i32 %275, 1
  store i32 %294, ptr %9, align 4
  %295 = icmp sle i32 %294, %.lcssa5
  br i1 %295, label %274, label %._crit_edge42, !llvm.loop !14

._crit_edge42:                                    ; preds = %274
  %split43 = phi double [ %293, %274 ]
  br label %296

296:                                              ; preds = %._crit_edge42, %226
  %.lcssa4 = phi double [ %split43, %._crit_edge42 ], [ 0.000000e+00, %226 ]
  %297 = call i32 @dtime(ptr noundef @TimeArray)
  %298 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %299 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %300 = load double, ptr @nulltime, align 8
  %301 = fneg double %300
  %302 = call double @llvm.fmuladd.f64(double %298, double %299, double %301)
  store double %302, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %303 = load double, ptr @piref, align 8
  %304 = load double, ptr @three, align 8
  %305 = fdiv double %303, %304
  store double %305, ptr %3, align 8
  %306 = fmul double %305, %305
  store double %306, ptr %5, align 8
  %307 = load double, ptr @B6, align 8
  %308 = load double, ptr @B5, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %306, double %308)
  %310 = load double, ptr @B4, align 8
  %311 = call double @llvm.fmuladd.f64(double %306, double %309, double %310)
  %312 = load double, ptr @B3, align 8
  %313 = call double @llvm.fmuladd.f64(double %306, double %311, double %312)
  %314 = load double, ptr @B2, align 8
  %315 = call double @llvm.fmuladd.f64(double %306, double %313, double %314)
  %316 = load double, ptr @B1, align 8
  %317 = call double @llvm.fmuladd.f64(double %306, double %315, double %316)
  %318 = load double, ptr @one, align 8
  %319 = call double @llvm.fmuladd.f64(double %306, double %317, double %318)
  store double %319, ptr @sa, align 8
  %320 = fdiv double %302, 1.500000e+01
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %321 = fadd double %319, %318
  %322 = load double, ptr @two, align 8
  %323 = call double @llvm.fmuladd.f64(double %322, double %.lcssa4, double %321)
  %324 = fmul double %271, %323
  %325 = fdiv double %324, %322
  store double %325, ptr @sa, align 8
  store double %305, ptr %3, align 8
  store double %306, ptr %5, align 8
  %326 = load double, ptr @A6, align 8
  %327 = load double, ptr @A5, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %306, double %327)
  %329 = load double, ptr @A4, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %306, double %329)
  %331 = load double, ptr @A3, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %306, double %331)
  %333 = load double, ptr @A2, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %306, double %333)
  %335 = load double, ptr @A1, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %306, double %335)
  %337 = load double, ptr @A0, align 8
  %338 = call double @llvm.fmuladd.f64(double %336, double %306, double %337)
  %339 = fmul double %305, %338
  store double %339, ptr @sb, align 8
  %340 = fsub double %325, %339
  store double %340, ptr @sc, align 8
  %341 = fdiv double %318, %320
  store double %341, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %342 = fmul double %340, 1.000000e-30
  %343 = fmul double %302, 1.000000e-30
  %344 = fmul double %341, 1.000000e-30
  %345 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %342, double noundef %343, double noundef %344)
  %346 = load double, ptr @piref, align 8
  %347 = load double, ptr @three, align 8
  %348 = fmul double %347, %195
  %349 = fdiv double %346, %348
  store double %349, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %350 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %351 = icmp sle i32 1, %.lcssa5
  br i1 %351, label %.lr.ph45, label %388

.lr.ph45:                                         ; preds = %296
  br label %352

352:                                              ; preds = %.lr.ph45, %352
  %353 = phi i32 [ 1, %.lr.ph45 ], [ %386, %352 ]
  %354 = phi double [ 0.000000e+00, %.lr.ph45 ], [ %385, %352 ]
  %355 = sitofp i32 %353 to double
  %356 = fmul double %355, %349
  store double %356, ptr %3, align 8
  %357 = fmul double %356, %356
  store double %357, ptr %5, align 8
  %358 = load double, ptr @A6, align 8
  %359 = load double, ptr @A5, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %357, double %359)
  %361 = load double, ptr @A4, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %357, double %361)
  %363 = load double, ptr @A3, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %357, double %363)
  %365 = load double, ptr @A2, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %357, double %365)
  %367 = load double, ptr @A1, align 8
  %368 = call double @llvm.fmuladd.f64(double %366, double %357, double %367)
  %369 = load double, ptr @one, align 8
  %370 = call double @llvm.fmuladd.f64(double %368, double %357, double %369)
  %371 = fmul double %356, %370
  store double %371, ptr %4, align 8
  %372 = load double, ptr @B6, align 8
  %373 = load double, ptr @B5, align 8
  %374 = call double @llvm.fmuladd.f64(double %372, double %357, double %373)
  %375 = load double, ptr @B4, align 8
  %376 = call double @llvm.fmuladd.f64(double %357, double %374, double %375)
  %377 = load double, ptr @B3, align 8
  %378 = call double @llvm.fmuladd.f64(double %357, double %376, double %377)
  %379 = load double, ptr @B2, align 8
  %380 = call double @llvm.fmuladd.f64(double %357, double %378, double %379)
  %381 = load double, ptr @B1, align 8
  %382 = call double @llvm.fmuladd.f64(double %357, double %380, double %381)
  %383 = call double @llvm.fmuladd.f64(double %357, double %382, double %369)
  %384 = fdiv double %371, %383
  %385 = fadd double %354, %384
  store double %385, ptr %2, align 8
  %386 = add nsw i32 %353, 1
  store i32 %386, ptr %9, align 4
  %387 = icmp sle i32 %386, %.lcssa5
  br i1 %387, label %352, label %._crit_edge46, !llvm.loop !15

._crit_edge46:                                    ; preds = %352
  %split47 = phi double [ %385, %352 ]
  br label %388

388:                                              ; preds = %._crit_edge46, %296
  %.lcssa3 = phi double [ %split47, %._crit_edge46 ], [ 0.000000e+00, %296 ]
  %389 = call i32 @dtime(ptr noundef @TimeArray)
  %390 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %391 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %392 = load double, ptr @nulltime, align 8
  %393 = fneg double %392
  %394 = call double @llvm.fmuladd.f64(double %390, double %391, double %393)
  store double %394, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %395 = load double, ptr @piref, align 8
  %396 = load double, ptr @three, align 8
  %397 = fdiv double %395, %396
  store double %397, ptr %3, align 8
  %398 = fmul double %397, %397
  store double %398, ptr %5, align 8
  %399 = load double, ptr @A6, align 8
  %400 = load double, ptr @A5, align 8
  %401 = call double @llvm.fmuladd.f64(double %399, double %398, double %400)
  %402 = load double, ptr @A4, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %398, double %402)
  %404 = load double, ptr @A3, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %398, double %404)
  %406 = load double, ptr @A2, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %398, double %406)
  %408 = load double, ptr @A1, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %398, double %408)
  %410 = load double, ptr @one, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %398, double %410)
  %412 = fmul double %397, %411
  store double %412, ptr @sa, align 8
  %413 = load double, ptr @B6, align 8
  %414 = load double, ptr @B5, align 8
  %415 = call double @llvm.fmuladd.f64(double %413, double %398, double %414)
  %416 = load double, ptr @B4, align 8
  %417 = call double @llvm.fmuladd.f64(double %398, double %415, double %416)
  %418 = load double, ptr @B3, align 8
  %419 = call double @llvm.fmuladd.f64(double %398, double %417, double %418)
  %420 = load double, ptr @B2, align 8
  %421 = call double @llvm.fmuladd.f64(double %398, double %419, double %420)
  %422 = load double, ptr @B1, align 8
  %423 = call double @llvm.fmuladd.f64(double %398, double %421, double %422)
  %424 = call double @llvm.fmuladd.f64(double %398, double %423, double %410)
  store double %424, ptr @sb, align 8
  %425 = fdiv double %412, %424
  store double %425, ptr @sa, align 8
  %426 = fdiv double %394, 2.900000e+01
  store double %426, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %427 = load double, ptr @two, align 8
  %428 = call double @llvm.fmuladd.f64(double %427, double %.lcssa3, double %425)
  %429 = fmul double %349, %428
  %430 = fdiv double %429, %427
  store double %430, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %431 = fsub double %430, f0x3FE62E42FEFA39EF
  store double %431, ptr @sc, align 8
  %432 = fdiv double %410, %426
  store double %432, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %433 = fmul double %431, 1.000000e-30
  %434 = fmul double %394, 1.000000e-30
  %435 = fmul double %432, 1.000000e-30
  %436 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %433, double noundef %434, double noundef %435)
  %437 = load double, ptr @piref, align 8
  %438 = load double, ptr @four, align 8
  %439 = fmul double %438, %195
  %440 = fdiv double %437, %439
  store double %440, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %441 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %442 = icmp sle i32 1, %.lcssa5
  br i1 %442, label %.lr.ph49, label %478

.lr.ph49:                                         ; preds = %388
  br label %443

443:                                              ; preds = %.lr.ph49, %443
  %444 = phi i32 [ 1, %.lr.ph49 ], [ %476, %443 ]
  %445 = phi double [ 0.000000e+00, %.lr.ph49 ], [ %475, %443 ]
  %446 = sitofp i32 %444 to double
  %447 = fmul double %446, %440
  store double %447, ptr %3, align 8
  %448 = fmul double %447, %447
  store double %448, ptr %5, align 8
  %449 = load double, ptr @A6, align 8
  %450 = load double, ptr @A5, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %448, double %450)
  %452 = load double, ptr @A4, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %448, double %452)
  %454 = load double, ptr @A3, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %448, double %454)
  %456 = load double, ptr @A2, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %448, double %456)
  %458 = load double, ptr @A1, align 8
  %459 = call double @llvm.fmuladd.f64(double %457, double %448, double %458)
  %460 = load double, ptr @one, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %448, double %460)
  %462 = fmul double %447, %461
  store double %462, ptr %4, align 8
  %463 = load double, ptr @B6, align 8
  %464 = load double, ptr @B5, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %448, double %464)
  %466 = load double, ptr @B4, align 8
  %467 = call double @llvm.fmuladd.f64(double %448, double %465, double %466)
  %468 = load double, ptr @B3, align 8
  %469 = call double @llvm.fmuladd.f64(double %448, double %467, double %468)
  %470 = load double, ptr @B2, align 8
  %471 = call double @llvm.fmuladd.f64(double %448, double %469, double %470)
  %472 = load double, ptr @B1, align 8
  %473 = call double @llvm.fmuladd.f64(double %448, double %471, double %472)
  %474 = call double @llvm.fmuladd.f64(double %448, double %473, double %460)
  %475 = call double @llvm.fmuladd.f64(double %462, double %474, double %445)
  store double %475, ptr %2, align 8
  %476 = add nsw i32 %444, 1
  store i32 %476, ptr %9, align 4
  %477 = icmp sle i32 %476, %.lcssa5
  br i1 %477, label %443, label %._crit_edge50, !llvm.loop !16

._crit_edge50:                                    ; preds = %443
  %split51 = phi double [ %475, %443 ]
  br label %478

478:                                              ; preds = %._crit_edge50, %388
  %.lcssa2 = phi double [ %split51, %._crit_edge50 ], [ 0.000000e+00, %388 ]
  %479 = call i32 @dtime(ptr noundef @TimeArray)
  %480 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %481 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %482 = load double, ptr @nulltime, align 8
  %483 = fneg double %482
  %484 = call double @llvm.fmuladd.f64(double %480, double %481, double %483)
  store double %484, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %485 = load double, ptr @piref, align 8
  %486 = load double, ptr @four, align 8
  %487 = fdiv double %485, %486
  store double %487, ptr %3, align 8
  %488 = fmul double %487, %487
  store double %488, ptr %5, align 8
  %489 = load double, ptr @A6, align 8
  %490 = load double, ptr @A5, align 8
  %491 = call double @llvm.fmuladd.f64(double %489, double %488, double %490)
  %492 = load double, ptr @A4, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %488, double %492)
  %494 = load double, ptr @A3, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %488, double %494)
  %496 = load double, ptr @A2, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %488, double %496)
  %498 = load double, ptr @A1, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %488, double %498)
  %500 = load double, ptr @one, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %488, double %500)
  %502 = fmul double %487, %501
  store double %502, ptr @sa, align 8
  %503 = load double, ptr @B6, align 8
  %504 = load double, ptr @B5, align 8
  %505 = call double @llvm.fmuladd.f64(double %503, double %488, double %504)
  %506 = load double, ptr @B4, align 8
  %507 = call double @llvm.fmuladd.f64(double %488, double %505, double %506)
  %508 = load double, ptr @B3, align 8
  %509 = call double @llvm.fmuladd.f64(double %488, double %507, double %508)
  %510 = load double, ptr @B2, align 8
  %511 = call double @llvm.fmuladd.f64(double %488, double %509, double %510)
  %512 = load double, ptr @B1, align 8
  %513 = call double @llvm.fmuladd.f64(double %488, double %511, double %512)
  %514 = call double @llvm.fmuladd.f64(double %488, double %513, double %500)
  store double %514, ptr @sb, align 8
  %515 = fmul double %502, %514
  store double %515, ptr @sa, align 8
  %516 = fdiv double %484, 2.900000e+01
  store double %516, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %517 = load double, ptr @two, align 8
  %518 = call double @llvm.fmuladd.f64(double %517, double %.lcssa2, double %515)
  %519 = fmul double %440, %518
  %520 = fdiv double %519, %517
  store double %520, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %521 = fsub double %520, 2.500000e-01
  store double %521, ptr @sc, align 8
  %522 = fdiv double %500, %516
  store double %522, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %523 = fmul double %521, 1.000000e-30
  %524 = fmul double %484, 1.000000e-30
  %525 = fmul double %522, 1.000000e-30
  %526 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %523, double noundef %524, double noundef %525)
  store double 0.000000e+00, ptr %2, align 8
  %527 = load double, ptr @one, align 8
  store double %527, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %528 = fdiv double f0x40599541F7F192A4, %195
  store double %528, ptr %4, align 8
  %529 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %530 = icmp sle i32 1, %.lcssa5
  br i1 %530, label %.lr.ph53, label %549

.lr.ph53:                                         ; preds = %478
  br label %531

531:                                              ; preds = %.lr.ph53, %531
  %532 = phi i32 [ 1, %.lr.ph53 ], [ %547, %531 ]
  %533 = phi double [ 0.000000e+00, %.lr.ph53 ], [ %546, %531 ]
  %534 = sitofp i32 %532 to double
  %535 = fmul double %534, %528
  store double %535, ptr %6, align 8
  %536 = fmul double %535, %535
  store double %536, ptr %3, align 8
  %537 = load double, ptr %5, align 8
  %538 = fadd double %535, %537
  %539 = fdiv double %537, %538
  %540 = fsub double %533, %539
  %541 = fadd double %536, %537
  %542 = fdiv double %535, %541
  %543 = fsub double %540, %542
  %544 = call double @llvm.fmuladd.f64(double %535, double %536, double %537)
  %545 = fdiv double %536, %544
  %546 = fsub double %543, %545
  store double %546, ptr %2, align 8
  %547 = add nsw i32 %532, 1
  store i32 %547, ptr %9, align 4
  %548 = icmp sle i32 %547, %.lcssa5
  br i1 %548, label %531, label %._crit_edge54, !llvm.loop !17

._crit_edge54:                                    ; preds = %531
  %split55 = phi double [ %546, %531 ]
  br label %549

549:                                              ; preds = %._crit_edge54, %478
  %.lcssa1 = phi double [ %split55, %._crit_edge54 ], [ 0.000000e+00, %478 ]
  %550 = call i32 @dtime(ptr noundef @TimeArray)
  %551 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %552 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %553 = load double, ptr @nulltime, align 8
  %554 = fneg double %553
  %555 = call double @llvm.fmuladd.f64(double %551, double %552, double %554)
  store double %555, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %556 = fdiv double %555, 1.200000e+01
  store double %556, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %557 = load double, ptr @sa, align 8
  store double %557, ptr %6, align 8
  %558 = fmul double %557, %557
  store double %558, ptr %3, align 8
  %559 = load double, ptr %5, align 8
  %560 = fneg double %559
  %561 = fadd double %557, %559
  %562 = fdiv double %559, %561
  %563 = fsub double %560, %562
  %564 = fadd double %558, %559
  %565 = fdiv double %557, %564
  %566 = fsub double %563, %565
  %567 = call double @llvm.fmuladd.f64(double %557, double %558, double %559)
  %568 = fdiv double %558, %567
  %569 = fsub double %566, %568
  store double %569, ptr @sa, align 8
  %570 = fmul double 1.800000e+01, %528
  %571 = load double, ptr @two, align 8
  %572 = call double @llvm.fmuladd.f64(double %571, double %.lcssa1, double %569)
  %573 = fmul double %570, %572
  store double %573, ptr @sa, align 8
  %574 = fptosi double %573 to i32
  %575 = mul nsw i32 -2000, %574
  store i32 %575, ptr %10, align 4
  %576 = sitofp i32 %575 to double
  %577 = load double, ptr @scale, align 8
  %578 = fdiv double %576, %577
  %579 = fptosi double %578 to i32
  store i32 %579, ptr %10, align 4
  %580 = fadd double %573, 5.002000e+02
  store double %580, ptr @sc, align 8
  %581 = load double, ptr @one, align 8
  %582 = fdiv double %581, %556
  store double %582, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %583 = fmul double %580, 1.000000e-30
  %584 = fmul double %555, 1.000000e-30
  %585 = fmul double %582, 1.000000e-30
  %586 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %583, double noundef %584, double noundef %585)
  %587 = load double, ptr @piref, align 8
  %588 = load double, ptr @three, align 8
  %589 = sitofp i32 %579 to double
  %590 = fmul double %588, %589
  %591 = fdiv double %587, %590
  store double %591, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %592 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %593 = sub nsw i32 %579, 1
  %594 = icmp sle i32 1, %593
  br i1 %594, label %.lr.ph57, label %631

.lr.ph57:                                         ; preds = %549
  br label %595

595:                                              ; preds = %.lr.ph57, %595
  %596 = phi i32 [ 1, %.lr.ph57 ], [ %629, %595 ]
  %597 = phi double [ 0.000000e+00, %.lr.ph57 ], [ %628, %595 ]
  %598 = sitofp i32 %596 to double
  %599 = fmul double %598, %591
  store double %599, ptr %3, align 8
  %600 = fmul double %599, %599
  store double %600, ptr %5, align 8
  %601 = load double, ptr @B6, align 8
  %602 = load double, ptr @B5, align 8
  %603 = call double @llvm.fmuladd.f64(double %601, double %600, double %602)
  %604 = load double, ptr @B4, align 8
  %605 = call double @llvm.fmuladd.f64(double %600, double %603, double %604)
  %606 = load double, ptr @B3, align 8
  %607 = call double @llvm.fmuladd.f64(double %600, double %605, double %606)
  %608 = load double, ptr @B2, align 8
  %609 = call double @llvm.fmuladd.f64(double %600, double %607, double %608)
  %610 = load double, ptr @B1, align 8
  %611 = call double @llvm.fmuladd.f64(double %600, double %609, double %610)
  %612 = load double, ptr @one, align 8
  %613 = call double @llvm.fmuladd.f64(double %600, double %611, double %612)
  store double %613, ptr %4, align 8
  %614 = fmul double %613, %613
  %615 = fmul double %614, %599
  %616 = load double, ptr @A6, align 8
  %617 = load double, ptr @A5, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %600, double %617)
  %619 = load double, ptr @A4, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %600, double %619)
  %621 = load double, ptr @A3, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %600, double %621)
  %623 = load double, ptr @A2, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %600, double %623)
  %625 = load double, ptr @A1, align 8
  %626 = call double @llvm.fmuladd.f64(double %624, double %600, double %625)
  %627 = call double @llvm.fmuladd.f64(double %626, double %600, double %612)
  %628 = call double @llvm.fmuladd.f64(double %615, double %627, double %597)
  store double %628, ptr %2, align 8
  %629 = add nsw i32 %596, 1
  store i32 %629, ptr %9, align 4
  %630 = icmp sle i32 %629, %593
  br i1 %630, label %595, label %._crit_edge58, !llvm.loop !18

._crit_edge58:                                    ; preds = %595
  %split59 = phi double [ %628, %595 ]
  br label %631

631:                                              ; preds = %._crit_edge58, %549
  %.lcssa = phi double [ %split59, %._crit_edge58 ], [ 0.000000e+00, %549 ]
  %632 = call i32 @dtime(ptr noundef @TimeArray)
  %633 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %635 = load double, ptr @nulltime, align 8
  %636 = fneg double %635
  %637 = call double @llvm.fmuladd.f64(double %633, double %634, double %636)
  store double %637, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %638 = load double, ptr @piref, align 8
  %639 = load double, ptr @three, align 8
  %640 = fdiv double %638, %639
  store double %640, ptr %3, align 8
  %641 = fmul double %640, %640
  store double %641, ptr %5, align 8
  %642 = load double, ptr @A6, align 8
  %643 = load double, ptr @A5, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %641, double %643)
  %645 = load double, ptr @A4, align 8
  %646 = call double @llvm.fmuladd.f64(double %644, double %641, double %645)
  %647 = load double, ptr @A3, align 8
  %648 = call double @llvm.fmuladd.f64(double %646, double %641, double %647)
  %649 = load double, ptr @A2, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %641, double %649)
  %651 = load double, ptr @A1, align 8
  %652 = call double @llvm.fmuladd.f64(double %650, double %641, double %651)
  %653 = load double, ptr @one, align 8
  %654 = call double @llvm.fmuladd.f64(double %652, double %641, double %653)
  %655 = fmul double %640, %654
  store double %655, ptr @sa, align 8
  %656 = load double, ptr @B6, align 8
  %657 = load double, ptr @B5, align 8
  %658 = call double @llvm.fmuladd.f64(double %656, double %641, double %657)
  %659 = load double, ptr @B4, align 8
  %660 = call double @llvm.fmuladd.f64(double %641, double %658, double %659)
  %661 = load double, ptr @B3, align 8
  %662 = call double @llvm.fmuladd.f64(double %641, double %660, double %661)
  %663 = load double, ptr @B2, align 8
  %664 = call double @llvm.fmuladd.f64(double %641, double %662, double %663)
  %665 = load double, ptr @B1, align 8
  %666 = call double @llvm.fmuladd.f64(double %641, double %664, double %665)
  %667 = call double @llvm.fmuladd.f64(double %641, double %666, double %653)
  store double %667, ptr @sb, align 8
  %668 = fmul double %655, %667
  %669 = fmul double %668, %667
  store double %669, ptr @sa, align 8
  %670 = fdiv double %637, 3.000000e+01
  store double %670, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %671 = load double, ptr @two, align 8
  %672 = call double @llvm.fmuladd.f64(double %671, double %.lcssa, double %669)
  %673 = fmul double %591, %672
  %674 = fdiv double %673, %671
  store double %674, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %675 = fsub double %674, f0x3FD2AAAAAAAAAAAB
  store double %675, ptr @sc, align 8
  %676 = fdiv double %653, %670
  store double %676, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %677 = fmul double %675, 1.000000e-30
  %678 = fmul double %637, 1.000000e-30
  %679 = fmul double %676, 1.000000e-30
  %680 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %677, double noundef %678, double noundef %679)
  %681 = load double, ptr @five, align 8
  %682 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %683 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %684 = fsub double %682, %683
  %685 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %686 = call double @llvm.fmuladd.f64(double %681, double %684, double %685)
  %687 = fdiv double %686, 5.200000e+01
  store double %687, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %688 = load double, ptr @one, align 8
  %689 = fdiv double %688, %687
  store double %689, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %690 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %691 = fadd double %690, %685
  %692 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %693 = fadd double %691, %692
  %694 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %695 = fadd double %693, %694
  %696 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %697 = fadd double %695, %696
  store double %697, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %698 = load double, ptr @four, align 8
  %699 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %700 = call double @llvm.fmuladd.f64(double %698, double %699, double %697)
  %701 = fdiv double %700, 1.520000e+02
  store double %701, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %702 = fdiv double %688, %701
  store double %702, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  store double %697, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %703 = fadd double %697, %699
  %704 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %705 = fadd double %703, %704
  %706 = fdiv double %705, 1.460000e+02
  store double %706, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %707 = fdiv double %688, %706
  store double %707, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %708 = fadd double %685, %692
  %709 = fadd double %708, %696
  %710 = fadd double %709, %704
  %711 = fdiv double %710, 9.100000e+01
  store double %711, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %712 = fdiv double %688, %711
  store double %712, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %713 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %714 = load i32, ptr %10, align 4
  %715 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %714)
  %716 = load double, ptr @nulltime, align 8
  %717 = fmul double %716, 1.000000e-30
  %718 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %717)
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %720 = fmul double %719, 1.000000e-30
  %721 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %720)
  %722 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %723 = fmul double %722, 1.000000e-30
  %724 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %723)
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %726 = fmul double %725, 1.000000e-30
  %727 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %726)
  %728 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %729 = fmul double %728, 1.000000e-30
  %730 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %729)
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
  %4 = getelementptr inbounds double, ptr %0, i64 2
  %5 = load double, ptr %4, align 8
  store double %5, ptr %3, align 8
  %6 = call i32 @GetTickCount()
  %7 = uitofp i32 %6 to double
  %8 = fmul double %7, 1.000000e-03
  store double %8, ptr %4, align 8
  %9 = fsub double %8, %5
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8
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
