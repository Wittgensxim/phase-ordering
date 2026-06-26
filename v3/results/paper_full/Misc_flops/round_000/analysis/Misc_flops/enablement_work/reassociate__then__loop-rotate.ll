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
  br label %30

26:                                               ; preds = %77
  %27 = load double, ptr @sa, align 8
  %28 = load double, ptr @TLimit, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %..loopexit_crit_edge, !llvm.loop !7

30:                                               ; preds = %.lr.ph2, %26
  %31 = load i32, ptr %11, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, ptr %11, align 4
  %33 = load double, ptr @one, align 8
  %34 = load i32, ptr %11, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  store double %36, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %37 = load double, ptr @one, align 8
  store double %37, ptr %5, align 8
  %38 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load i32, ptr %11, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp sle i32 %39, %41
  br i1 %42, label %.lr.ph, label %77

.lr.ph:                                           ; preds = %30
  br label %43

43:                                               ; preds = %.lr.ph, %70
  %44 = load double, ptr %4, align 8
  %45 = load double, ptr %5, align 8
  %46 = fadd double %44, %45
  store double %46, ptr %4, align 8
  %47 = load double, ptr %4, align 8
  %48 = load double, ptr %6, align 8
  %49 = fmul double %47, %48
  store double %49, ptr %3, align 8
  %50 = load double, ptr %2, align 8
  %51 = load double, ptr @D1, align 8
  %52 = load double, ptr %3, align 8
  %53 = load double, ptr @D2, align 8
  %54 = load double, ptr %3, align 8
  %55 = load double, ptr @D3, align 8
  %56 = call double @llvm.fmuladd.f64(double %54, double %55, double %53)
  %57 = call double @llvm.fmuladd.f64(double %52, double %56, double %51)
  %58 = load double, ptr %5, align 8
  %59 = load double, ptr %3, align 8
  %60 = load double, ptr @D1, align 8
  %61 = load double, ptr %3, align 8
  %62 = load double, ptr @E2, align 8
  %63 = load double, ptr %3, align 8
  %64 = load double, ptr @E3, align 8
  %65 = call double @llvm.fmuladd.f64(double %63, double %64, double %62)
  %66 = call double @llvm.fmuladd.f64(double %61, double %65, double %60)
  %67 = call double @llvm.fmuladd.f64(double %59, double %66, double %58)
  %68 = fdiv double %57, %67
  %69 = fadd double %50, %68
  store double %69, ptr %2, align 8
  br label %70

70:                                               ; preds = %43
  %71 = load i32, ptr %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %9, align 4
  %73 = load i32, ptr %9, align 4
  %74 = load i32, ptr %11, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %43, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %70
  br label %77

77:                                               ; preds = %._crit_edge, %30
  %78 = call i32 @dtime(ptr noundef @TimeArray)
  %79 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %79, ptr @sa, align 8
  %80 = load i32, ptr %11, align 4
  %81 = load i32, ptr %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %26

83:                                               ; preds = %77
  br label %84

..loopexit_crit_edge:                             ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %84

84:                                               ; preds = %.loopexit, %83
  store double 1.589500e-02, ptr @scale, align 8
  %85 = load double, ptr @scale, align 8
  store double %85, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %86 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %87 = load i32, ptr %9, align 4
  %88 = load i32, ptr %11, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %.lr.ph4, label %99

.lr.ph4:                                          ; preds = %84
  br label %91

91:                                               ; preds = %.lr.ph4, %92
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %9, align 4
  %95 = load i32, ptr %9, align 4
  %96 = load i32, ptr %11, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp sle i32 %95, %97
  br i1 %98, label %91, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %92
  br label %99

99:                                               ; preds = %._crit_edge5, %84
  %100 = call i32 @dtime(ptr noundef @TimeArray)
  %101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %102 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %103 = fmul double %101, %102
  store double %103, ptr @nulltime, align 8
  %104 = load double, ptr @nulltime, align 8
  %105 = fcmp olt double %104, 0.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %107

107:                                              ; preds = %106, %99
  %108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %109 = load double, ptr @sa, align 8
  %110 = load double, ptr @nulltime, align 8
  %111 = fneg double %110
  %112 = call double @llvm.fmuladd.f64(double %108, double %109, double %111)
  store double %112, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %113 = load double, ptr @D1, align 8
  %114 = load double, ptr @D2, align 8
  %115 = fadd double %113, %114
  %116 = load double, ptr @D3, align 8
  %117 = fadd double %115, %116
  %118 = load double, ptr @one, align 8
  %119 = load double, ptr @D1, align 8
  %120 = fadd double %118, %119
  %121 = load double, ptr @E2, align 8
  %122 = fadd double %120, %121
  %123 = load double, ptr @E3, align 8
  %124 = fadd double %122, %123
  %125 = fdiv double %117, %124
  store double %125, ptr @sa, align 8
  %126 = load double, ptr @D1, align 8
  store double %126, ptr @sb, align 8
  %127 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %128 = fdiv double %127, 1.400000e+01
  store double %128, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %129 = load double, ptr %6, align 8
  %130 = load double, ptr @sa, align 8
  %131 = load double, ptr @sb, align 8
  %132 = fadd double %130, %131
  %133 = load double, ptr @two, align 8
  %134 = load double, ptr %2, align 8
  %135 = call double @llvm.fmuladd.f64(double %133, double %134, double %132)
  %136 = fmul double %129, %135
  %137 = load double, ptr @two, align 8
  %138 = fdiv double %136, %137
  store double %138, ptr @sa, align 8
  %139 = load double, ptr @one, align 8
  %140 = load double, ptr @sa, align 8
  %141 = fdiv double %139, %140
  store double %141, ptr @sb, align 8
  %142 = load double, ptr @sb, align 8
  %143 = fptosi double %142 to i32
  %144 = mul nsw i32 %143, 40000
  %145 = sitofp i32 %144 to double
  %146 = load double, ptr @scale, align 8
  %147 = fdiv double %145, %146
  %148 = fptosi double %147 to i32
  store i32 %148, ptr %11, align 4
  %149 = load double, ptr @sb, align 8
  %150 = fsub double %149, 2.520000e+01
  store double %150, ptr @sc, align 8
  %151 = load double, ptr @one, align 8
  %152 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %153 = fdiv double %151, %152
  store double %153, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %154 = load double, ptr @sc, align 8
  %155 = fmul double %154, 1.000000e-30
  %156 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %157 = fmul double %156, 1.000000e-30
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %159 = fmul double %158, 1.000000e-30
  %160 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %155, double noundef %157, double noundef %159)
  %161 = load i32, ptr %11, align 4
  store i32 %161, ptr %10, align 4
  %162 = load double, ptr @five, align 8
  %163 = fneg double %162
  store double %163, ptr %2, align 8
  %164 = load double, ptr @one, align 8
  %165 = fneg double %164
  store double %165, ptr @sa, align 8
  %166 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %167 = load i32, ptr %9, align 4
  %168 = load i32, ptr %10, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %.lr.ph7, label %182

.lr.ph7:                                          ; preds = %107
  br label %170

170:                                              ; preds = %.lr.ph7, %176
  %171 = load double, ptr %2, align 8
  %172 = fneg double %171
  store double %172, ptr %2, align 8
  %173 = load double, ptr @sa, align 8
  %174 = load double, ptr %2, align 8
  %175 = fadd double %173, %174
  store double %175, ptr @sa, align 8
  br label %176

176:                                              ; preds = %170
  %177 = load i32, ptr %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %9, align 4
  %179 = load i32, ptr %9, align 4
  %180 = load i32, ptr %10, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %170, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %176
  br label %182

182:                                              ; preds = %._crit_edge8, %107
  %183 = call i32 @dtime(ptr noundef @TimeArray)
  %184 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %185 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %186 = fmul double %184, %185
  store double %186, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %187 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %188 = fcmp olt double %187, 0.000000e+00
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %190

190:                                              ; preds = %189, %182
  %191 = load i32, ptr %10, align 4
  %192 = sitofp i32 %191 to double
  store double %192, ptr @sc, align 8
  %193 = load double, ptr @sa, align 8
  store double %193, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %194 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %195 = load i32, ptr %9, align 4
  %196 = load i32, ptr %10, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %.lr.ph10, label %228

.lr.ph10:                                         ; preds = %190
  br label %198

198:                                              ; preds = %.lr.ph10, %222
  %199 = load double, ptr %2, align 8
  %200 = fneg double %199
  store double %200, ptr %2, align 8
  %201 = load double, ptr @sa, align 8
  %202 = load double, ptr %2, align 8
  %203 = fadd double %201, %202
  store double %203, ptr @sa, align 8
  %204 = load double, ptr %3, align 8
  %205 = load double, ptr @two, align 8
  %206 = fadd double %204, %205
  store double %206, ptr %3, align 8
  %207 = load double, ptr %6, align 8
  %208 = load double, ptr %2, align 8
  %209 = load double, ptr %3, align 8
  %210 = fsub double %208, %209
  %211 = fadd double %207, %210
  store double %211, ptr %6, align 8
  %212 = load double, ptr %4, align 8
  %213 = load double, ptr %2, align 8
  %214 = load double, ptr %3, align 8
  %215 = fneg double %213
  %216 = call double @llvm.fmuladd.f64(double %215, double %214, double %212)
  store double %216, ptr %4, align 8
  %217 = load double, ptr %5, align 8
  %218 = load double, ptr %2, align 8
  %219 = load double, ptr %3, align 8
  %220 = fdiv double %218, %219
  %221 = fadd double %217, %220
  store double %221, ptr %5, align 8
  br label %222

222:                                              ; preds = %198
  %223 = load i32, ptr %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %9, align 4
  %225 = load i32, ptr %9, align 4
  %226 = load i32, ptr %10, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %198, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %222
  br label %228

228:                                              ; preds = %._crit_edge11, %190
  %229 = call i32 @dtime(ptr noundef @TimeArray)
  %230 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %231 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %232 = fmul double %230, %231
  store double %232, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %234 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %235 = fsub double %233, %234
  %236 = fdiv double %235, 7.000000e+00
  store double %236, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %237 = load double, ptr @sa, align 8
  %238 = load double, ptr %6, align 8
  %239 = fmul double %237, %238
  %240 = load double, ptr @sc, align 8
  %241 = fdiv double %239, %240
  %242 = fptosi double %241 to i32
  store i32 %242, ptr %10, align 4
  %243 = load double, ptr @four, align 8
  %244 = load double, ptr %5, align 8
  %245 = fmul double %243, %244
  %246 = load double, ptr @five, align 8
  %247 = fdiv double %245, %246
  store double %247, ptr @sa, align 8
  %248 = load double, ptr @sa, align 8
  %249 = load double, ptr @five, align 8
  %250 = load double, ptr %4, align 8
  %251 = fdiv double %249, %250
  %252 = fadd double %248, %251
  store double %252, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %253 = load double, ptr @sb, align 8
  %254 = load double, ptr @sc, align 8
  %255 = load double, ptr %4, align 8
  %256 = load double, ptr %4, align 8
  %257 = fmul double %255, %256
  %258 = load double, ptr %4, align 8
  %259 = fmul double %257, %258
  %260 = fdiv double %254, %259
  %261 = fsub double %253, %260
  store double %261, ptr @piprg, align 8
  %262 = load double, ptr @piprg, align 8
  %263 = load double, ptr @piref, align 8
  %264 = fsub double %262, %263
  store double %264, ptr @pierr, align 8
  %265 = load double, ptr @one, align 8
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %267 = fdiv double %265, %266
  store double %267, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %268 = load double, ptr @pierr, align 8
  %269 = fmul double %268, 1.000000e-30
  %270 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %271 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %272 = fsub double %270, %271
  %273 = fmul double %272, 1.000000e-30
  %274 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %275 = fmul double %274, 1.000000e-30
  %276 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %269, double noundef %273, double noundef %275)
  %277 = load double, ptr @piref, align 8
  %278 = load double, ptr @three, align 8
  %279 = load i32, ptr %10, align 4
  %280 = sitofp i32 %279 to double
  %281 = fmul double %278, %280
  %282 = fdiv double %277, %281
  store double %282, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %283 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %284 = load i32, ptr %9, align 4
  %285 = load i32, ptr %10, align 4
  %286 = sub nsw i32 %285, 1
  %287 = icmp sle i32 %284, %286
  br i1 %287, label %.lr.ph13, label %329

.lr.ph13:                                         ; preds = %228
  br label %288

288:                                              ; preds = %.lr.ph13, %322
  %289 = load double, ptr %4, align 8
  %290 = load double, ptr @one, align 8
  %291 = fadd double %289, %290
  store double %291, ptr %4, align 8
  %292 = load double, ptr %4, align 8
  %293 = load double, ptr %6, align 8
  %294 = fmul double %292, %293
  store double %294, ptr %3, align 8
  %295 = load double, ptr %3, align 8
  %296 = load double, ptr %3, align 8
  %297 = fmul double %295, %296
  store double %297, ptr %5, align 8
  %298 = load double, ptr %2, align 8
  %299 = load double, ptr %3, align 8
  %300 = load double, ptr @A6, align 8
  %301 = load double, ptr %5, align 8
  %302 = load double, ptr @A5, align 8
  %303 = fneg double %302
  %304 = call double @llvm.fmuladd.f64(double %300, double %301, double %303)
  %305 = load double, ptr %5, align 8
  %306 = load double, ptr @A4, align 8
  %307 = call double @llvm.fmuladd.f64(double %304, double %305, double %306)
  %308 = load double, ptr %5, align 8
  %309 = load double, ptr @A3, align 8
  %310 = fneg double %309
  %311 = call double @llvm.fmuladd.f64(double %307, double %308, double %310)
  %312 = load double, ptr %5, align 8
  %313 = load double, ptr @A2, align 8
  %314 = call double @llvm.fmuladd.f64(double %311, double %312, double %313)
  %315 = load double, ptr %5, align 8
  %316 = load double, ptr @A1, align 8
  %317 = call double @llvm.fmuladd.f64(double %314, double %315, double %316)
  %318 = load double, ptr %5, align 8
  %319 = load double, ptr @one, align 8
  %320 = call double @llvm.fmuladd.f64(double %317, double %318, double %319)
  %321 = call double @llvm.fmuladd.f64(double %299, double %320, double %298)
  store double %321, ptr %2, align 8
  br label %322

322:                                              ; preds = %288
  %323 = load i32, ptr %9, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, ptr %9, align 4
  %325 = load i32, ptr %9, align 4
  %326 = load i32, ptr %10, align 4
  %327 = sub nsw i32 %326, 1
  %328 = icmp sle i32 %325, %327
  br i1 %328, label %288, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %322
  br label %329

329:                                              ; preds = %._crit_edge14, %228
  %330 = call i32 @dtime(ptr noundef @TimeArray)
  %331 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %332 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %333 = load double, ptr @nulltime, align 8
  %334 = fneg double %333
  %335 = call double @llvm.fmuladd.f64(double %331, double %332, double %334)
  store double %335, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %336 = load double, ptr @piref, align 8
  %337 = load double, ptr @three, align 8
  %338 = fdiv double %336, %337
  store double %338, ptr %3, align 8
  %339 = load double, ptr %3, align 8
  %340 = load double, ptr %3, align 8
  %341 = fmul double %339, %340
  store double %341, ptr %5, align 8
  %342 = load double, ptr %3, align 8
  %343 = load double, ptr @A6, align 8
  %344 = load double, ptr %5, align 8
  %345 = load double, ptr @A5, align 8
  %346 = fneg double %345
  %347 = call double @llvm.fmuladd.f64(double %343, double %344, double %346)
  %348 = load double, ptr %5, align 8
  %349 = load double, ptr @A4, align 8
  %350 = call double @llvm.fmuladd.f64(double %347, double %348, double %349)
  %351 = load double, ptr %5, align 8
  %352 = load double, ptr @A3, align 8
  %353 = fneg double %352
  %354 = call double @llvm.fmuladd.f64(double %350, double %351, double %353)
  %355 = load double, ptr %5, align 8
  %356 = load double, ptr @A2, align 8
  %357 = call double @llvm.fmuladd.f64(double %354, double %355, double %356)
  %358 = load double, ptr %5, align 8
  %359 = load double, ptr @A1, align 8
  %360 = call double @llvm.fmuladd.f64(double %357, double %358, double %359)
  %361 = load double, ptr %5, align 8
  %362 = load double, ptr @one, align 8
  %363 = call double @llvm.fmuladd.f64(double %360, double %361, double %362)
  %364 = fmul double %342, %363
  store double %364, ptr @sa, align 8
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %366 = fdiv double %365, 1.700000e+01
  store double %366, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %367 = load double, ptr %6, align 8
  %368 = load double, ptr @sa, align 8
  %369 = load double, ptr @two, align 8
  %370 = load double, ptr %2, align 8
  %371 = call double @llvm.fmuladd.f64(double %369, double %370, double %368)
  %372 = fmul double %367, %371
  %373 = load double, ptr @two, align 8
  %374 = fdiv double %372, %373
  store double %374, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %375 = load double, ptr @sa, align 8
  %376 = load double, ptr @sb, align 8
  %377 = fsub double %375, %376
  store double %377, ptr @sc, align 8
  %378 = load double, ptr @one, align 8
  %379 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %380 = fdiv double %378, %379
  store double %380, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %381 = load double, ptr @sc, align 8
  %382 = fmul double %381, 1.000000e-30
  %383 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %384 = fmul double %383, 1.000000e-30
  %385 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %386 = fmul double %385, 1.000000e-30
  %387 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %382, double noundef %384, double noundef %386)
  %388 = load double, ptr @A3, align 8
  %389 = fneg double %388
  store double %389, ptr @A3, align 8
  %390 = load double, ptr @A5, align 8
  %391 = fneg double %390
  store double %391, ptr @A5, align 8
  %392 = load double, ptr @piref, align 8
  %393 = load double, ptr @three, align 8
  %394 = load i32, ptr %10, align 4
  %395 = sitofp i32 %394 to double
  %396 = fmul double %393, %395
  %397 = fdiv double %392, %396
  store double %397, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %398 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %399 = load i32, ptr %9, align 4
  %400 = load i32, ptr %10, align 4
  %401 = sub nsw i32 %400, 1
  %402 = icmp sle i32 %399, %401
  br i1 %402, label %.lr.ph16, label %439

.lr.ph16:                                         ; preds = %329
  br label %403

403:                                              ; preds = %.lr.ph16, %432
  %404 = load i32, ptr %9, align 4
  %405 = sitofp i32 %404 to double
  %406 = load double, ptr %6, align 8
  %407 = fmul double %405, %406
  store double %407, ptr %3, align 8
  %408 = load double, ptr %3, align 8
  %409 = load double, ptr %3, align 8
  %410 = fmul double %408, %409
  store double %410, ptr %5, align 8
  %411 = load double, ptr %2, align 8
  %412 = load double, ptr %5, align 8
  %413 = load double, ptr %5, align 8
  %414 = load double, ptr %5, align 8
  %415 = load double, ptr %5, align 8
  %416 = load double, ptr %5, align 8
  %417 = load double, ptr @B6, align 8
  %418 = load double, ptr %5, align 8
  %419 = load double, ptr @B5, align 8
  %420 = call double @llvm.fmuladd.f64(double %417, double %418, double %419)
  %421 = load double, ptr @B4, align 8
  %422 = call double @llvm.fmuladd.f64(double %416, double %420, double %421)
  %423 = load double, ptr @B3, align 8
  %424 = call double @llvm.fmuladd.f64(double %415, double %422, double %423)
  %425 = load double, ptr @B2, align 8
  %426 = call double @llvm.fmuladd.f64(double %414, double %424, double %425)
  %427 = load double, ptr @B1, align 8
  %428 = call double @llvm.fmuladd.f64(double %413, double %426, double %427)
  %429 = call double @llvm.fmuladd.f64(double %412, double %428, double %411)
  %430 = load double, ptr @one, align 8
  %431 = fadd double %430, %429
  store double %431, ptr %2, align 8
  br label %432

432:                                              ; preds = %403
  %433 = load i32, ptr %9, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, ptr %9, align 4
  %435 = load i32, ptr %9, align 4
  %436 = load i32, ptr %10, align 4
  %437 = sub nsw i32 %436, 1
  %438 = icmp sle i32 %435, %437
  br i1 %438, label %403, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %432
  br label %439

439:                                              ; preds = %._crit_edge17, %329
  %440 = call i32 @dtime(ptr noundef @TimeArray)
  %441 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %442 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %443 = load double, ptr @nulltime, align 8
  %444 = fneg double %443
  %445 = call double @llvm.fmuladd.f64(double %441, double %442, double %444)
  store double %445, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %446 = load double, ptr @piref, align 8
  %447 = load double, ptr @three, align 8
  %448 = fdiv double %446, %447
  store double %448, ptr %3, align 8
  %449 = load double, ptr %3, align 8
  %450 = load double, ptr %3, align 8
  %451 = fmul double %449, %450
  store double %451, ptr %5, align 8
  %452 = load double, ptr %5, align 8
  %453 = load double, ptr %5, align 8
  %454 = load double, ptr %5, align 8
  %455 = load double, ptr %5, align 8
  %456 = load double, ptr %5, align 8
  %457 = load double, ptr @B6, align 8
  %458 = load double, ptr %5, align 8
  %459 = load double, ptr @B5, align 8
  %460 = call double @llvm.fmuladd.f64(double %457, double %458, double %459)
  %461 = load double, ptr @B4, align 8
  %462 = call double @llvm.fmuladd.f64(double %456, double %460, double %461)
  %463 = load double, ptr @B3, align 8
  %464 = call double @llvm.fmuladd.f64(double %455, double %462, double %463)
  %465 = load double, ptr @B2, align 8
  %466 = call double @llvm.fmuladd.f64(double %454, double %464, double %465)
  %467 = load double, ptr @B1, align 8
  %468 = call double @llvm.fmuladd.f64(double %453, double %466, double %467)
  %469 = load double, ptr @one, align 8
  %470 = call double @llvm.fmuladd.f64(double %452, double %468, double %469)
  store double %470, ptr @sa, align 8
  %471 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %472 = fdiv double %471, 1.500000e+01
  store double %472, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %473 = load double, ptr %6, align 8
  %474 = load double, ptr @sa, align 8
  %475 = load double, ptr @one, align 8
  %476 = fadd double %474, %475
  %477 = load double, ptr @two, align 8
  %478 = load double, ptr %2, align 8
  %479 = call double @llvm.fmuladd.f64(double %477, double %478, double %476)
  %480 = fmul double %473, %479
  %481 = load double, ptr @two, align 8
  %482 = fdiv double %480, %481
  store double %482, ptr @sa, align 8
  %483 = load double, ptr @piref, align 8
  %484 = load double, ptr @three, align 8
  %485 = fdiv double %483, %484
  store double %485, ptr %3, align 8
  %486 = load double, ptr %3, align 8
  %487 = load double, ptr %3, align 8
  %488 = fmul double %486, %487
  store double %488, ptr %5, align 8
  %489 = load double, ptr %3, align 8
  %490 = load double, ptr @A6, align 8
  %491 = load double, ptr %5, align 8
  %492 = load double, ptr @A5, align 8
  %493 = call double @llvm.fmuladd.f64(double %490, double %491, double %492)
  %494 = load double, ptr %5, align 8
  %495 = load double, ptr @A4, align 8
  %496 = call double @llvm.fmuladd.f64(double %493, double %494, double %495)
  %497 = load double, ptr %5, align 8
  %498 = load double, ptr @A3, align 8
  %499 = call double @llvm.fmuladd.f64(double %496, double %497, double %498)
  %500 = load double, ptr %5, align 8
  %501 = load double, ptr @A2, align 8
  %502 = call double @llvm.fmuladd.f64(double %499, double %500, double %501)
  %503 = load double, ptr %5, align 8
  %504 = load double, ptr @A1, align 8
  %505 = call double @llvm.fmuladd.f64(double %502, double %503, double %504)
  %506 = load double, ptr %5, align 8
  %507 = load double, ptr @A0, align 8
  %508 = call double @llvm.fmuladd.f64(double %505, double %506, double %507)
  %509 = fmul double %489, %508
  store double %509, ptr @sb, align 8
  %510 = load double, ptr @sa, align 8
  %511 = load double, ptr @sb, align 8
  %512 = fsub double %510, %511
  store double %512, ptr @sc, align 8
  %513 = load double, ptr @one, align 8
  %514 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %515 = fdiv double %513, %514
  store double %515, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %516 = load double, ptr @sc, align 8
  %517 = fmul double %516, 1.000000e-30
  %518 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %519 = fmul double %518, 1.000000e-30
  %520 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %521 = fmul double %520, 1.000000e-30
  %522 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %517, double noundef %519, double noundef %521)
  %523 = load double, ptr @piref, align 8
  %524 = load double, ptr @three, align 8
  %525 = load i32, ptr %10, align 4
  %526 = sitofp i32 %525 to double
  %527 = fmul double %524, %526
  %528 = fdiv double %523, %527
  store double %528, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %529 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %530 = load i32, ptr %9, align 4
  %531 = load i32, ptr %10, align 4
  %532 = sub nsw i32 %531, 1
  %533 = icmp sle i32 %530, %532
  br i1 %533, label %.lr.ph19, label %593

.lr.ph19:                                         ; preds = %439
  br label %534

534:                                              ; preds = %.lr.ph19, %586
  %535 = load i32, ptr %9, align 4
  %536 = sitofp i32 %535 to double
  %537 = load double, ptr %6, align 8
  %538 = fmul double %536, %537
  store double %538, ptr %3, align 8
  %539 = load double, ptr %3, align 8
  %540 = load double, ptr %3, align 8
  %541 = fmul double %539, %540
  store double %541, ptr %5, align 8
  %542 = load double, ptr %3, align 8
  %543 = load double, ptr @A6, align 8
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr @A5, align 8
  %546 = call double @llvm.fmuladd.f64(double %543, double %544, double %545)
  %547 = load double, ptr %5, align 8
  %548 = load double, ptr @A4, align 8
  %549 = call double @llvm.fmuladd.f64(double %546, double %547, double %548)
  %550 = load double, ptr %5, align 8
  %551 = load double, ptr @A3, align 8
  %552 = call double @llvm.fmuladd.f64(double %549, double %550, double %551)
  %553 = load double, ptr %5, align 8
  %554 = load double, ptr @A2, align 8
  %555 = call double @llvm.fmuladd.f64(double %552, double %553, double %554)
  %556 = load double, ptr %5, align 8
  %557 = load double, ptr @A1, align 8
  %558 = call double @llvm.fmuladd.f64(double %555, double %556, double %557)
  %559 = load double, ptr %5, align 8
  %560 = load double, ptr @one, align 8
  %561 = call double @llvm.fmuladd.f64(double %558, double %559, double %560)
  %562 = fmul double %542, %561
  store double %562, ptr %4, align 8
  %563 = load double, ptr %2, align 8
  %564 = load double, ptr %4, align 8
  %565 = load double, ptr %5, align 8
  %566 = load double, ptr %5, align 8
  %567 = load double, ptr %5, align 8
  %568 = load double, ptr %5, align 8
  %569 = load double, ptr %5, align 8
  %570 = load double, ptr @B6, align 8
  %571 = load double, ptr %5, align 8
  %572 = load double, ptr @B5, align 8
  %573 = call double @llvm.fmuladd.f64(double %570, double %571, double %572)
  %574 = load double, ptr @B4, align 8
  %575 = call double @llvm.fmuladd.f64(double %569, double %573, double %574)
  %576 = load double, ptr @B3, align 8
  %577 = call double @llvm.fmuladd.f64(double %568, double %575, double %576)
  %578 = load double, ptr @B2, align 8
  %579 = call double @llvm.fmuladd.f64(double %567, double %577, double %578)
  %580 = load double, ptr @B1, align 8
  %581 = call double @llvm.fmuladd.f64(double %566, double %579, double %580)
  %582 = load double, ptr @one, align 8
  %583 = call double @llvm.fmuladd.f64(double %565, double %581, double %582)
  %584 = fdiv double %564, %583
  %585 = fadd double %563, %584
  store double %585, ptr %2, align 8
  br label %586

586:                                              ; preds = %534
  %587 = load i32, ptr %9, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, ptr %9, align 4
  %589 = load i32, ptr %9, align 4
  %590 = load i32, ptr %10, align 4
  %591 = sub nsw i32 %590, 1
  %592 = icmp sle i32 %589, %591
  br i1 %592, label %534, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %586
  br label %593

593:                                              ; preds = %._crit_edge20, %439
  %594 = call i32 @dtime(ptr noundef @TimeArray)
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %596 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %597 = load double, ptr @nulltime, align 8
  %598 = fneg double %597
  %599 = call double @llvm.fmuladd.f64(double %595, double %596, double %598)
  store double %599, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %600 = load double, ptr @piref, align 8
  %601 = load double, ptr @three, align 8
  %602 = fdiv double %600, %601
  store double %602, ptr %3, align 8
  %603 = load double, ptr %3, align 8
  %604 = load double, ptr %3, align 8
  %605 = fmul double %603, %604
  store double %605, ptr %5, align 8
  %606 = load double, ptr %3, align 8
  %607 = load double, ptr @A6, align 8
  %608 = load double, ptr %5, align 8
  %609 = load double, ptr @A5, align 8
  %610 = call double @llvm.fmuladd.f64(double %607, double %608, double %609)
  %611 = load double, ptr %5, align 8
  %612 = load double, ptr @A4, align 8
  %613 = call double @llvm.fmuladd.f64(double %610, double %611, double %612)
  %614 = load double, ptr %5, align 8
  %615 = load double, ptr @A3, align 8
  %616 = call double @llvm.fmuladd.f64(double %613, double %614, double %615)
  %617 = load double, ptr %5, align 8
  %618 = load double, ptr @A2, align 8
  %619 = call double @llvm.fmuladd.f64(double %616, double %617, double %618)
  %620 = load double, ptr %5, align 8
  %621 = load double, ptr @A1, align 8
  %622 = call double @llvm.fmuladd.f64(double %619, double %620, double %621)
  %623 = load double, ptr %5, align 8
  %624 = load double, ptr @one, align 8
  %625 = call double @llvm.fmuladd.f64(double %622, double %623, double %624)
  %626 = fmul double %606, %625
  store double %626, ptr @sa, align 8
  %627 = load double, ptr %5, align 8
  %628 = load double, ptr %5, align 8
  %629 = load double, ptr %5, align 8
  %630 = load double, ptr %5, align 8
  %631 = load double, ptr %5, align 8
  %632 = load double, ptr @B6, align 8
  %633 = load double, ptr %5, align 8
  %634 = load double, ptr @B5, align 8
  %635 = call double @llvm.fmuladd.f64(double %632, double %633, double %634)
  %636 = load double, ptr @B4, align 8
  %637 = call double @llvm.fmuladd.f64(double %631, double %635, double %636)
  %638 = load double, ptr @B3, align 8
  %639 = call double @llvm.fmuladd.f64(double %630, double %637, double %638)
  %640 = load double, ptr @B2, align 8
  %641 = call double @llvm.fmuladd.f64(double %629, double %639, double %640)
  %642 = load double, ptr @B1, align 8
  %643 = call double @llvm.fmuladd.f64(double %628, double %641, double %642)
  %644 = load double, ptr @one, align 8
  %645 = call double @llvm.fmuladd.f64(double %627, double %643, double %644)
  store double %645, ptr @sb, align 8
  %646 = load double, ptr @sa, align 8
  %647 = load double, ptr @sb, align 8
  %648 = fdiv double %646, %647
  store double %648, ptr @sa, align 8
  %649 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %650 = fdiv double %649, 2.900000e+01
  store double %650, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %651 = load double, ptr %6, align 8
  %652 = load double, ptr @sa, align 8
  %653 = load double, ptr @two, align 8
  %654 = load double, ptr %2, align 8
  %655 = call double @llvm.fmuladd.f64(double %653, double %654, double %652)
  %656 = fmul double %651, %655
  %657 = load double, ptr @two, align 8
  %658 = fdiv double %656, %657
  store double %658, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %659 = load double, ptr @sa, align 8
  %660 = load double, ptr @sb, align 8
  %661 = fsub double %659, %660
  store double %661, ptr @sc, align 8
  %662 = load double, ptr @one, align 8
  %663 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %664 = fdiv double %662, %663
  store double %664, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %665 = load double, ptr @sc, align 8
  %666 = fmul double %665, 1.000000e-30
  %667 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %668 = fmul double %667, 1.000000e-30
  %669 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %670 = fmul double %669, 1.000000e-30
  %671 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %666, double noundef %668, double noundef %670)
  %672 = load double, ptr @piref, align 8
  %673 = load double, ptr @four, align 8
  %674 = load i32, ptr %10, align 4
  %675 = sitofp i32 %674 to double
  %676 = fmul double %673, %675
  %677 = fdiv double %672, %676
  store double %677, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %678 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %679 = load i32, ptr %9, align 4
  %680 = load i32, ptr %10, align 4
  %681 = sub nsw i32 %680, 1
  %682 = icmp sle i32 %679, %681
  br i1 %682, label %.lr.ph22, label %741

.lr.ph22:                                         ; preds = %593
  br label %683

683:                                              ; preds = %.lr.ph22, %734
  %684 = load i32, ptr %9, align 4
  %685 = sitofp i32 %684 to double
  %686 = load double, ptr %6, align 8
  %687 = fmul double %685, %686
  store double %687, ptr %3, align 8
  %688 = load double, ptr %3, align 8
  %689 = load double, ptr %3, align 8
  %690 = fmul double %688, %689
  store double %690, ptr %5, align 8
  %691 = load double, ptr %3, align 8
  %692 = load double, ptr @A6, align 8
  %693 = load double, ptr %5, align 8
  %694 = load double, ptr @A5, align 8
  %695 = call double @llvm.fmuladd.f64(double %692, double %693, double %694)
  %696 = load double, ptr %5, align 8
  %697 = load double, ptr @A4, align 8
  %698 = call double @llvm.fmuladd.f64(double %695, double %696, double %697)
  %699 = load double, ptr %5, align 8
  %700 = load double, ptr @A3, align 8
  %701 = call double @llvm.fmuladd.f64(double %698, double %699, double %700)
  %702 = load double, ptr %5, align 8
  %703 = load double, ptr @A2, align 8
  %704 = call double @llvm.fmuladd.f64(double %701, double %702, double %703)
  %705 = load double, ptr %5, align 8
  %706 = load double, ptr @A1, align 8
  %707 = call double @llvm.fmuladd.f64(double %704, double %705, double %706)
  %708 = load double, ptr %5, align 8
  %709 = load double, ptr @one, align 8
  %710 = call double @llvm.fmuladd.f64(double %707, double %708, double %709)
  %711 = fmul double %691, %710
  store double %711, ptr %4, align 8
  %712 = load double, ptr %2, align 8
  %713 = load double, ptr %4, align 8
  %714 = load double, ptr %5, align 8
  %715 = load double, ptr %5, align 8
  %716 = load double, ptr %5, align 8
  %717 = load double, ptr %5, align 8
  %718 = load double, ptr %5, align 8
  %719 = load double, ptr @B6, align 8
  %720 = load double, ptr %5, align 8
  %721 = load double, ptr @B5, align 8
  %722 = call double @llvm.fmuladd.f64(double %719, double %720, double %721)
  %723 = load double, ptr @B4, align 8
  %724 = call double @llvm.fmuladd.f64(double %718, double %722, double %723)
  %725 = load double, ptr @B3, align 8
  %726 = call double @llvm.fmuladd.f64(double %717, double %724, double %725)
  %727 = load double, ptr @B2, align 8
  %728 = call double @llvm.fmuladd.f64(double %716, double %726, double %727)
  %729 = load double, ptr @B1, align 8
  %730 = call double @llvm.fmuladd.f64(double %715, double %728, double %729)
  %731 = load double, ptr @one, align 8
  %732 = call double @llvm.fmuladd.f64(double %714, double %730, double %731)
  %733 = call double @llvm.fmuladd.f64(double %713, double %732, double %712)
  store double %733, ptr %2, align 8
  br label %734

734:                                              ; preds = %683
  %735 = load i32, ptr %9, align 4
  %736 = add nsw i32 %735, 1
  store i32 %736, ptr %9, align 4
  %737 = load i32, ptr %9, align 4
  %738 = load i32, ptr %10, align 4
  %739 = sub nsw i32 %738, 1
  %740 = icmp sle i32 %737, %739
  br i1 %740, label %683, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %734
  br label %741

741:                                              ; preds = %._crit_edge23, %593
  %742 = call i32 @dtime(ptr noundef @TimeArray)
  %743 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %744 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %745 = load double, ptr @nulltime, align 8
  %746 = fneg double %745
  %747 = call double @llvm.fmuladd.f64(double %743, double %744, double %746)
  store double %747, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %748 = load double, ptr @piref, align 8
  %749 = load double, ptr @four, align 8
  %750 = fdiv double %748, %749
  store double %750, ptr %3, align 8
  %751 = load double, ptr %3, align 8
  %752 = load double, ptr %3, align 8
  %753 = fmul double %751, %752
  store double %753, ptr %5, align 8
  %754 = load double, ptr %3, align 8
  %755 = load double, ptr @A6, align 8
  %756 = load double, ptr %5, align 8
  %757 = load double, ptr @A5, align 8
  %758 = call double @llvm.fmuladd.f64(double %755, double %756, double %757)
  %759 = load double, ptr %5, align 8
  %760 = load double, ptr @A4, align 8
  %761 = call double @llvm.fmuladd.f64(double %758, double %759, double %760)
  %762 = load double, ptr %5, align 8
  %763 = load double, ptr @A3, align 8
  %764 = call double @llvm.fmuladd.f64(double %761, double %762, double %763)
  %765 = load double, ptr %5, align 8
  %766 = load double, ptr @A2, align 8
  %767 = call double @llvm.fmuladd.f64(double %764, double %765, double %766)
  %768 = load double, ptr %5, align 8
  %769 = load double, ptr @A1, align 8
  %770 = call double @llvm.fmuladd.f64(double %767, double %768, double %769)
  %771 = load double, ptr %5, align 8
  %772 = load double, ptr @one, align 8
  %773 = call double @llvm.fmuladd.f64(double %770, double %771, double %772)
  %774 = fmul double %754, %773
  store double %774, ptr @sa, align 8
  %775 = load double, ptr %5, align 8
  %776 = load double, ptr %5, align 8
  %777 = load double, ptr %5, align 8
  %778 = load double, ptr %5, align 8
  %779 = load double, ptr %5, align 8
  %780 = load double, ptr @B6, align 8
  %781 = load double, ptr %5, align 8
  %782 = load double, ptr @B5, align 8
  %783 = call double @llvm.fmuladd.f64(double %780, double %781, double %782)
  %784 = load double, ptr @B4, align 8
  %785 = call double @llvm.fmuladd.f64(double %779, double %783, double %784)
  %786 = load double, ptr @B3, align 8
  %787 = call double @llvm.fmuladd.f64(double %778, double %785, double %786)
  %788 = load double, ptr @B2, align 8
  %789 = call double @llvm.fmuladd.f64(double %777, double %787, double %788)
  %790 = load double, ptr @B1, align 8
  %791 = call double @llvm.fmuladd.f64(double %776, double %789, double %790)
  %792 = load double, ptr @one, align 8
  %793 = call double @llvm.fmuladd.f64(double %775, double %791, double %792)
  store double %793, ptr @sb, align 8
  %794 = load double, ptr @sa, align 8
  %795 = load double, ptr @sb, align 8
  %796 = fmul double %794, %795
  store double %796, ptr @sa, align 8
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %798 = fdiv double %797, 2.900000e+01
  store double %798, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %799 = load double, ptr %6, align 8
  %800 = load double, ptr @sa, align 8
  %801 = load double, ptr @two, align 8
  %802 = load double, ptr %2, align 8
  %803 = call double @llvm.fmuladd.f64(double %801, double %802, double %800)
  %804 = fmul double %799, %803
  %805 = load double, ptr @two, align 8
  %806 = fdiv double %804, %805
  store double %806, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %807 = load double, ptr @sa, align 8
  %808 = load double, ptr @sb, align 8
  %809 = fsub double %807, %808
  store double %809, ptr @sc, align 8
  %810 = load double, ptr @one, align 8
  %811 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %812 = fdiv double %810, %811
  store double %812, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %813 = load double, ptr @sc, align 8
  %814 = fmul double %813, 1.000000e-30
  %815 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %816 = fmul double %815, 1.000000e-30
  %817 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %818 = fmul double %817, 1.000000e-30
  %819 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %814, double noundef %816, double noundef %818)
  store double 0.000000e+00, ptr %2, align 8
  %820 = load double, ptr @one, align 8
  store double %820, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %821 = load double, ptr @sa, align 8
  %822 = load i32, ptr %10, align 4
  %823 = sitofp i32 %822 to double
  %824 = fdiv double %821, %823
  store double %824, ptr %4, align 8
  %825 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %826 = load i32, ptr %9, align 4
  %827 = load i32, ptr %10, align 4
  %828 = sub nsw i32 %827, 1
  %829 = icmp sle i32 %826, %828
  br i1 %829, label %.lr.ph25, label %865

.lr.ph25:                                         ; preds = %741
  br label %830

830:                                              ; preds = %.lr.ph25, %858
  %831 = load i32, ptr %9, align 4
  %832 = sitofp i32 %831 to double
  %833 = load double, ptr %4, align 8
  %834 = fmul double %832, %833
  store double %834, ptr %6, align 8
  %835 = load double, ptr %6, align 8
  %836 = load double, ptr %6, align 8
  %837 = fmul double %835, %836
  store double %837, ptr %3, align 8
  %838 = load double, ptr %2, align 8
  %839 = load double, ptr %5, align 8
  %840 = load double, ptr %6, align 8
  %841 = load double, ptr %5, align 8
  %842 = fadd double %840, %841
  %843 = fdiv double %839, %842
  %844 = fsub double %838, %843
  %845 = load double, ptr %6, align 8
  %846 = load double, ptr %3, align 8
  %847 = load double, ptr %5, align 8
  %848 = fadd double %846, %847
  %849 = fdiv double %845, %848
  %850 = fsub double %844, %849
  %851 = load double, ptr %3, align 8
  %852 = load double, ptr %6, align 8
  %853 = load double, ptr %3, align 8
  %854 = load double, ptr %5, align 8
  %855 = call double @llvm.fmuladd.f64(double %852, double %853, double %854)
  %856 = fdiv double %851, %855
  %857 = fsub double %850, %856
  store double %857, ptr %2, align 8
  br label %858

858:                                              ; preds = %830
  %859 = load i32, ptr %9, align 4
  %860 = add nsw i32 %859, 1
  store i32 %860, ptr %9, align 4
  %861 = load i32, ptr %9, align 4
  %862 = load i32, ptr %10, align 4
  %863 = sub nsw i32 %862, 1
  %864 = icmp sle i32 %861, %863
  br i1 %864, label %830, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %858
  br label %865

865:                                              ; preds = %._crit_edge26, %741
  %866 = call i32 @dtime(ptr noundef @TimeArray)
  %867 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %868 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %869 = load double, ptr @nulltime, align 8
  %870 = fneg double %869
  %871 = call double @llvm.fmuladd.f64(double %867, double %868, double %870)
  store double %871, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %872 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %873 = fdiv double %872, 1.200000e+01
  store double %873, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %874 = load double, ptr @sa, align 8
  store double %874, ptr %6, align 8
  %875 = load double, ptr %6, align 8
  %876 = load double, ptr %6, align 8
  %877 = fmul double %875, %876
  store double %877, ptr %3, align 8
  %878 = load double, ptr %5, align 8
  %879 = fneg double %878
  %880 = load double, ptr %5, align 8
  %881 = load double, ptr %6, align 8
  %882 = load double, ptr %5, align 8
  %883 = fadd double %881, %882
  %884 = fdiv double %880, %883
  %885 = fsub double %879, %884
  %886 = load double, ptr %6, align 8
  %887 = load double, ptr %3, align 8
  %888 = load double, ptr %5, align 8
  %889 = fadd double %887, %888
  %890 = fdiv double %886, %889
  %891 = fsub double %885, %890
  %892 = load double, ptr %3, align 8
  %893 = load double, ptr %6, align 8
  %894 = load double, ptr %3, align 8
  %895 = load double, ptr %5, align 8
  %896 = call double @llvm.fmuladd.f64(double %893, double %894, double %895)
  %897 = fdiv double %892, %896
  %898 = fsub double %891, %897
  store double %898, ptr @sa, align 8
  %899 = load double, ptr %4, align 8
  %900 = fmul double %899, 1.800000e+01
  %901 = load double, ptr @sa, align 8
  %902 = load double, ptr @two, align 8
  %903 = load double, ptr %2, align 8
  %904 = call double @llvm.fmuladd.f64(double %902, double %903, double %901)
  %905 = fmul double %900, %904
  store double %905, ptr @sa, align 8
  %906 = load double, ptr @sa, align 8
  %907 = fptosi double %906 to i32
  %908 = mul nsw i32 %907, -2000
  store i32 %908, ptr %10, align 4
  %909 = load i32, ptr %10, align 4
  %910 = sitofp i32 %909 to double
  %911 = load double, ptr @scale, align 8
  %912 = fdiv double %910, %911
  %913 = fptosi double %912 to i32
  store i32 %913, ptr %10, align 4
  %914 = load double, ptr @sa, align 8
  %915 = fadd double %914, 5.002000e+02
  store double %915, ptr @sc, align 8
  %916 = load double, ptr @one, align 8
  %917 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %918 = fdiv double %916, %917
  store double %918, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %919 = load double, ptr @sc, align 8
  %920 = fmul double %919, 1.000000e-30
  %921 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %922 = fmul double %921, 1.000000e-30
  %923 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %924 = fmul double %923, 1.000000e-30
  %925 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %920, double noundef %922, double noundef %924)
  %926 = load double, ptr @piref, align 8
  %927 = load double, ptr @three, align 8
  %928 = load i32, ptr %10, align 4
  %929 = sitofp i32 %928 to double
  %930 = fmul double %927, %929
  %931 = fdiv double %926, %930
  store double %931, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %932 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %933 = load i32, ptr %9, align 4
  %934 = load i32, ptr %10, align 4
  %935 = sub nsw i32 %934, 1
  %936 = icmp sle i32 %933, %935
  br i1 %936, label %.lr.ph28, label %997

.lr.ph28:                                         ; preds = %865
  br label %937

937:                                              ; preds = %.lr.ph28, %990
  %938 = load i32, ptr %9, align 4
  %939 = sitofp i32 %938 to double
  %940 = load double, ptr %6, align 8
  %941 = fmul double %939, %940
  store double %941, ptr %3, align 8
  %942 = load double, ptr %3, align 8
  %943 = load double, ptr %3, align 8
  %944 = fmul double %942, %943
  store double %944, ptr %5, align 8
  %945 = load double, ptr %5, align 8
  %946 = load double, ptr %5, align 8
  %947 = load double, ptr %5, align 8
  %948 = load double, ptr %5, align 8
  %949 = load double, ptr %5, align 8
  %950 = load double, ptr @B6, align 8
  %951 = load double, ptr %5, align 8
  %952 = load double, ptr @B5, align 8
  %953 = call double @llvm.fmuladd.f64(double %950, double %951, double %952)
  %954 = load double, ptr @B4, align 8
  %955 = call double @llvm.fmuladd.f64(double %949, double %953, double %954)
  %956 = load double, ptr @B3, align 8
  %957 = call double @llvm.fmuladd.f64(double %948, double %955, double %956)
  %958 = load double, ptr @B2, align 8
  %959 = call double @llvm.fmuladd.f64(double %947, double %957, double %958)
  %960 = load double, ptr @B1, align 8
  %961 = call double @llvm.fmuladd.f64(double %946, double %959, double %960)
  %962 = load double, ptr @one, align 8
  %963 = call double @llvm.fmuladd.f64(double %945, double %961, double %962)
  store double %963, ptr %4, align 8
  %964 = load double, ptr %2, align 8
  %965 = load double, ptr %4, align 8
  %966 = load double, ptr %4, align 8
  %967 = fmul double %965, %966
  %968 = load double, ptr %3, align 8
  %969 = fmul double %967, %968
  %970 = load double, ptr @A6, align 8
  %971 = load double, ptr %5, align 8
  %972 = load double, ptr @A5, align 8
  %973 = call double @llvm.fmuladd.f64(double %970, double %971, double %972)
  %974 = load double, ptr %5, align 8
  %975 = load double, ptr @A4, align 8
  %976 = call double @llvm.fmuladd.f64(double %973, double %974, double %975)
  %977 = load double, ptr %5, align 8
  %978 = load double, ptr @A3, align 8
  %979 = call double @llvm.fmuladd.f64(double %976, double %977, double %978)
  %980 = load double, ptr %5, align 8
  %981 = load double, ptr @A2, align 8
  %982 = call double @llvm.fmuladd.f64(double %979, double %980, double %981)
  %983 = load double, ptr %5, align 8
  %984 = load double, ptr @A1, align 8
  %985 = call double @llvm.fmuladd.f64(double %982, double %983, double %984)
  %986 = load double, ptr %5, align 8
  %987 = load double, ptr @one, align 8
  %988 = call double @llvm.fmuladd.f64(double %985, double %986, double %987)
  %989 = call double @llvm.fmuladd.f64(double %969, double %988, double %964)
  store double %989, ptr %2, align 8
  br label %990

990:                                              ; preds = %937
  %991 = load i32, ptr %9, align 4
  %992 = add nsw i32 %991, 1
  store i32 %992, ptr %9, align 4
  %993 = load i32, ptr %9, align 4
  %994 = load i32, ptr %10, align 4
  %995 = sub nsw i32 %994, 1
  %996 = icmp sle i32 %993, %995
  br i1 %996, label %937, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %990
  br label %997

997:                                              ; preds = %._crit_edge29, %865
  %998 = call i32 @dtime(ptr noundef @TimeArray)
  %999 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %1000 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %1001 = load double, ptr @nulltime, align 8
  %1002 = fneg double %1001
  %1003 = call double @llvm.fmuladd.f64(double %999, double %1000, double %1002)
  store double %1003, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1004 = load double, ptr @piref, align 8
  %1005 = load double, ptr @three, align 8
  %1006 = fdiv double %1004, %1005
  store double %1006, ptr %3, align 8
  %1007 = load double, ptr %3, align 8
  %1008 = load double, ptr %3, align 8
  %1009 = fmul double %1007, %1008
  store double %1009, ptr %5, align 8
  %1010 = load double, ptr %3, align 8
  %1011 = load double, ptr @A6, align 8
  %1012 = load double, ptr %5, align 8
  %1013 = load double, ptr @A5, align 8
  %1014 = call double @llvm.fmuladd.f64(double %1011, double %1012, double %1013)
  %1015 = load double, ptr %5, align 8
  %1016 = load double, ptr @A4, align 8
  %1017 = call double @llvm.fmuladd.f64(double %1014, double %1015, double %1016)
  %1018 = load double, ptr %5, align 8
  %1019 = load double, ptr @A3, align 8
  %1020 = call double @llvm.fmuladd.f64(double %1017, double %1018, double %1019)
  %1021 = load double, ptr %5, align 8
  %1022 = load double, ptr @A2, align 8
  %1023 = call double @llvm.fmuladd.f64(double %1020, double %1021, double %1022)
  %1024 = load double, ptr %5, align 8
  %1025 = load double, ptr @A1, align 8
  %1026 = call double @llvm.fmuladd.f64(double %1023, double %1024, double %1025)
  %1027 = load double, ptr %5, align 8
  %1028 = load double, ptr @one, align 8
  %1029 = call double @llvm.fmuladd.f64(double %1026, double %1027, double %1028)
  %1030 = fmul double %1010, %1029
  store double %1030, ptr @sa, align 8
  %1031 = load double, ptr %5, align 8
  %1032 = load double, ptr %5, align 8
  %1033 = load double, ptr %5, align 8
  %1034 = load double, ptr %5, align 8
  %1035 = load double, ptr %5, align 8
  %1036 = load double, ptr @B6, align 8
  %1037 = load double, ptr %5, align 8
  %1038 = load double, ptr @B5, align 8
  %1039 = call double @llvm.fmuladd.f64(double %1036, double %1037, double %1038)
  %1040 = load double, ptr @B4, align 8
  %1041 = call double @llvm.fmuladd.f64(double %1035, double %1039, double %1040)
  %1042 = load double, ptr @B3, align 8
  %1043 = call double @llvm.fmuladd.f64(double %1034, double %1041, double %1042)
  %1044 = load double, ptr @B2, align 8
  %1045 = call double @llvm.fmuladd.f64(double %1033, double %1043, double %1044)
  %1046 = load double, ptr @B1, align 8
  %1047 = call double @llvm.fmuladd.f64(double %1032, double %1045, double %1046)
  %1048 = load double, ptr @one, align 8
  %1049 = call double @llvm.fmuladd.f64(double %1031, double %1047, double %1048)
  store double %1049, ptr @sb, align 8
  %1050 = load double, ptr @sa, align 8
  %1051 = load double, ptr @sb, align 8
  %1052 = fmul double %1050, %1051
  %1053 = load double, ptr @sb, align 8
  %1054 = fmul double %1052, %1053
  store double %1054, ptr @sa, align 8
  %1055 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1056 = fdiv double %1055, 3.000000e+01
  store double %1056, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1057 = load double, ptr %6, align 8
  %1058 = load double, ptr @sa, align 8
  %1059 = load double, ptr @two, align 8
  %1060 = load double, ptr %2, align 8
  %1061 = call double @llvm.fmuladd.f64(double %1059, double %1060, double %1058)
  %1062 = fmul double %1057, %1061
  %1063 = load double, ptr @two, align 8
  %1064 = fdiv double %1062, %1063
  store double %1064, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1065 = load double, ptr @sa, align 8
  %1066 = load double, ptr @sb, align 8
  %1067 = fsub double %1065, %1066
  store double %1067, ptr @sc, align 8
  %1068 = load double, ptr @one, align 8
  %1069 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1070 = fdiv double %1068, %1069
  store double %1070, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1071 = load double, ptr @sc, align 8
  %1072 = fmul double %1071, 1.000000e-30
  %1073 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1074 = fmul double %1073, 1.000000e-30
  %1075 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1076 = fmul double %1075, 1.000000e-30
  %1077 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1072, double noundef %1074, double noundef %1076)
  %1078 = load double, ptr @five, align 8
  %1079 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1080 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1081 = fsub double %1079, %1080
  %1082 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1083 = call double @llvm.fmuladd.f64(double %1078, double %1081, double %1082)
  %1084 = fdiv double %1083, 5.200000e+01
  store double %1084, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1085 = load double, ptr @one, align 8
  %1086 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1087 = fdiv double %1085, %1086
  store double %1087, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1088 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1089 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1090 = fadd double %1088, %1089
  %1091 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1092 = fadd double %1090, %1091
  %1093 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1094 = fadd double %1092, %1093
  %1095 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1096 = fadd double %1094, %1095
  store double %1096, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1097 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1098 = load double, ptr @four, align 8
  %1099 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1100 = call double @llvm.fmuladd.f64(double %1098, double %1099, double %1097)
  %1101 = fdiv double %1100, 1.520000e+02
  store double %1101, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1102 = load double, ptr @one, align 8
  %1103 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1104 = fdiv double %1102, %1103
  store double %1104, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1105 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1107 = fadd double %1105, %1106
  %1108 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1109 = fadd double %1107, %1108
  %1110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1111 = fadd double %1109, %1110
  %1112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1113 = fadd double %1111, %1112
  store double %1113, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1115 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1116 = fadd double %1114, %1115
  %1117 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1118 = fadd double %1116, %1117
  %1119 = fdiv double %1118, 1.460000e+02
  store double %1119, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1120 = load double, ptr @one, align 8
  %1121 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1122 = fdiv double %1120, %1121
  store double %1122, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1123 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1124 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1125 = fadd double %1123, %1124
  %1126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1127 = fadd double %1125, %1126
  %1128 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1129 = fadd double %1127, %1128
  %1130 = fdiv double %1129, 9.100000e+01
  store double %1130, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1131 = load double, ptr @one, align 8
  %1132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1133 = fdiv double %1131, %1132
  store double %1133, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1134 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1135 = load i32, ptr %10, align 4
  %1136 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1135)
  %1137 = load double, ptr @nulltime, align 8
  %1138 = fmul double %1137, 1.000000e-30
  %1139 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1138)
  %1140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1141 = fmul double %1140, 1.000000e-30
  %1142 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1141)
  %1143 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1144 = fmul double %1143, 1.000000e-30
  %1145 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1144)
  %1146 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1147 = fmul double %1146, 1.000000e-30
  %1148 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1147)
  %1149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1150 = fmul double %1149, 1.000000e-30
  %1151 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1150)
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
