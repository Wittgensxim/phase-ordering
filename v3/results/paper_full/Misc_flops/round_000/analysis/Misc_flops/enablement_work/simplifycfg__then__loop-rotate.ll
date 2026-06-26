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
  br label %23

23:                                               ; preds = %73, %0
  %24 = load double, ptr @sa, align 8
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4
  %29 = mul nsw i32 2, %28
  store i32 %29, ptr %11, align 4
  %30 = load double, ptr @one, align 8
  %31 = load i32, ptr %11, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %30, %32
  store double %33, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %34 = load double, ptr @one, align 8
  store double %34, ptr %5, align 8
  %35 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %36 = load i32, ptr %9, align 4
  %37 = load i32, ptr %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %.lr.ph, label %73

.lr.ph:                                           ; preds = %27
  br label %40

40:                                               ; preds = %.lr.ph, %40
  %41 = load double, ptr %4, align 8
  %42 = load double, ptr %5, align 8
  %43 = fadd double %41, %42
  store double %43, ptr %4, align 8
  %44 = load double, ptr %4, align 8
  %45 = load double, ptr %6, align 8
  %46 = fmul double %44, %45
  store double %46, ptr %3, align 8
  %47 = load double, ptr %2, align 8
  %48 = load double, ptr @D1, align 8
  %49 = load double, ptr %3, align 8
  %50 = load double, ptr @D2, align 8
  %51 = load double, ptr %3, align 8
  %52 = load double, ptr @D3, align 8
  %53 = call double @llvm.fmuladd.f64(double %51, double %52, double %50)
  %54 = call double @llvm.fmuladd.f64(double %49, double %53, double %48)
  %55 = load double, ptr %5, align 8
  %56 = load double, ptr %3, align 8
  %57 = load double, ptr @D1, align 8
  %58 = load double, ptr %3, align 8
  %59 = load double, ptr @E2, align 8
  %60 = load double, ptr %3, align 8
  %61 = load double, ptr @E3, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %61, double %59)
  %63 = call double @llvm.fmuladd.f64(double %58, double %62, double %57)
  %64 = call double @llvm.fmuladd.f64(double %56, double %63, double %55)
  %65 = fdiv double %54, %64
  %66 = fadd double %47, %65
  store double %66, ptr %2, align 8
  %67 = load i32, ptr %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %9, align 4
  %69 = load i32, ptr %9, align 4
  %70 = load i32, ptr %11, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp sle i32 %69, %71
  br i1 %72, label %40, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %40
  br label %73

73:                                               ; preds = %._crit_edge, %27
  %74 = call i32 @dtime(ptr noundef @TimeArray)
  %75 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %75, ptr @sa, align 8
  %76 = load i32, ptr %11, align 4
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %23, !llvm.loop !9

79:                                               ; preds = %73, %23
  store double 1.589500e-02, ptr @scale, align 8
  %80 = load double, ptr @scale, align 8
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %81 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %82 = load i32, ptr %9, align 4
  %83 = load i32, ptr %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %.lr.ph2, label %93

.lr.ph2:                                          ; preds = %79
  br label %86

86:                                               ; preds = %.lr.ph2, %86
  %87 = load i32, ptr %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %9, align 4
  %89 = load i32, ptr %9, align 4
  %90 = load i32, ptr %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp sle i32 %89, %91
  br i1 %92, label %86, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %86
  br label %93

93:                                               ; preds = %._crit_edge3, %79
  %94 = call i32 @dtime(ptr noundef @TimeArray)
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %96 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %97 = fmul double %95, %96
  store double %97, ptr @nulltime, align 8
  %98 = load double, ptr @nulltime, align 8
  %99 = fcmp olt double %98, 0.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %101

101:                                              ; preds = %100, %93
  %102 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %103 = load double, ptr @sa, align 8
  %104 = load double, ptr @nulltime, align 8
  %105 = fneg double %104
  %106 = call double @llvm.fmuladd.f64(double %102, double %103, double %105)
  store double %106, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %107 = load double, ptr @D1, align 8
  %108 = load double, ptr @D2, align 8
  %109 = fadd double %107, %108
  %110 = load double, ptr @D3, align 8
  %111 = fadd double %109, %110
  %112 = load double, ptr @one, align 8
  %113 = load double, ptr @D1, align 8
  %114 = fadd double %112, %113
  %115 = load double, ptr @E2, align 8
  %116 = fadd double %114, %115
  %117 = load double, ptr @E3, align 8
  %118 = fadd double %116, %117
  %119 = fdiv double %111, %118
  store double %119, ptr @sa, align 8
  %120 = load double, ptr @D1, align 8
  store double %120, ptr @sb, align 8
  %121 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %122 = fdiv double %121, 1.400000e+01
  store double %122, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %123 = load double, ptr %6, align 8
  %124 = load double, ptr @sa, align 8
  %125 = load double, ptr @sb, align 8
  %126 = fadd double %124, %125
  %127 = load double, ptr @two, align 8
  %128 = load double, ptr %2, align 8
  %129 = call double @llvm.fmuladd.f64(double %127, double %128, double %126)
  %130 = fmul double %123, %129
  %131 = load double, ptr @two, align 8
  %132 = fdiv double %130, %131
  store double %132, ptr @sa, align 8
  %133 = load double, ptr @one, align 8
  %134 = load double, ptr @sa, align 8
  %135 = fdiv double %133, %134
  store double %135, ptr @sb, align 8
  %136 = load double, ptr @sb, align 8
  %137 = fptosi double %136 to i32
  %138 = mul nsw i32 40000, %137
  %139 = sitofp i32 %138 to double
  %140 = load double, ptr @scale, align 8
  %141 = fdiv double %139, %140
  %142 = fptosi double %141 to i32
  store i32 %142, ptr %11, align 4
  %143 = load double, ptr @sb, align 8
  %144 = fsub double %143, 2.520000e+01
  store double %144, ptr @sc, align 8
  %145 = load double, ptr @one, align 8
  %146 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %147 = fdiv double %145, %146
  store double %147, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %148 = load double, ptr @sc, align 8
  %149 = fmul double %148, 1.000000e-30
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %151 = fmul double %150, 1.000000e-30
  %152 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %153 = fmul double %152, 1.000000e-30
  %154 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %149, double noundef %151, double noundef %153)
  %155 = load i32, ptr %11, align 4
  store i32 %155, ptr %10, align 4
  %156 = load double, ptr @five, align 8
  %157 = fneg double %156
  store double %157, ptr %2, align 8
  %158 = load double, ptr @one, align 8
  %159 = fneg double %158
  store double %159, ptr @sa, align 8
  %160 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %161 = load i32, ptr %9, align 4
  %162 = load i32, ptr %10, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %.lr.ph5, label %175

.lr.ph5:                                          ; preds = %101
  br label %164

164:                                              ; preds = %.lr.ph5, %164
  %165 = load double, ptr %2, align 8
  %166 = fneg double %165
  store double %166, ptr %2, align 8
  %167 = load double, ptr @sa, align 8
  %168 = load double, ptr %2, align 8
  %169 = fadd double %167, %168
  store double %169, ptr @sa, align 8
  %170 = load i32, ptr %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %9, align 4
  %172 = load i32, ptr %9, align 4
  %173 = load i32, ptr %10, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %164, label %._crit_edge6, !llvm.loop !11

._crit_edge6:                                     ; preds = %164
  br label %175

175:                                              ; preds = %._crit_edge6, %101
  %176 = call i32 @dtime(ptr noundef @TimeArray)
  %177 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %178 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %179 = fmul double %177, %178
  store double %179, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %180 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %181 = fcmp olt double %180, 0.000000e+00
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %183

183:                                              ; preds = %182, %175
  %184 = load i32, ptr %10, align 4
  %185 = sitofp i32 %184 to double
  store double %185, ptr @sc, align 8
  %186 = load double, ptr @sa, align 8
  store double %186, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %187 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %188 = load i32, ptr %9, align 4
  %189 = load i32, ptr %10, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %.lr.ph8, label %220

.lr.ph8:                                          ; preds = %183
  br label %191

191:                                              ; preds = %.lr.ph8, %191
  %192 = load double, ptr %2, align 8
  %193 = fneg double %192
  store double %193, ptr %2, align 8
  %194 = load double, ptr @sa, align 8
  %195 = load double, ptr %2, align 8
  %196 = fadd double %194, %195
  store double %196, ptr @sa, align 8
  %197 = load double, ptr %3, align 8
  %198 = load double, ptr @two, align 8
  %199 = fadd double %197, %198
  store double %199, ptr %3, align 8
  %200 = load double, ptr %6, align 8
  %201 = load double, ptr %2, align 8
  %202 = load double, ptr %3, align 8
  %203 = fsub double %201, %202
  %204 = fadd double %200, %203
  store double %204, ptr %6, align 8
  %205 = load double, ptr %4, align 8
  %206 = load double, ptr %2, align 8
  %207 = load double, ptr %3, align 8
  %208 = fneg double %206
  %209 = call double @llvm.fmuladd.f64(double %208, double %207, double %205)
  store double %209, ptr %4, align 8
  %210 = load double, ptr %5, align 8
  %211 = load double, ptr %2, align 8
  %212 = load double, ptr %3, align 8
  %213 = fdiv double %211, %212
  %214 = fadd double %210, %213
  store double %214, ptr %5, align 8
  %215 = load i32, ptr %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %9, align 4
  %217 = load i32, ptr %9, align 4
  %218 = load i32, ptr %10, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %191, label %._crit_edge9, !llvm.loop !12

._crit_edge9:                                     ; preds = %191
  br label %220

220:                                              ; preds = %._crit_edge9, %183
  %221 = call i32 @dtime(ptr noundef @TimeArray)
  %222 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %223 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %224 = fmul double %222, %223
  store double %224, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %225 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %226 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %227 = fsub double %225, %226
  %228 = fdiv double %227, 7.000000e+00
  store double %228, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %229 = load double, ptr @sa, align 8
  %230 = load double, ptr %6, align 8
  %231 = fmul double %229, %230
  %232 = load double, ptr @sc, align 8
  %233 = fdiv double %231, %232
  %234 = fptosi double %233 to i32
  store i32 %234, ptr %10, align 4
  %235 = load double, ptr @four, align 8
  %236 = load double, ptr %5, align 8
  %237 = fmul double %235, %236
  %238 = load double, ptr @five, align 8
  %239 = fdiv double %237, %238
  store double %239, ptr @sa, align 8
  %240 = load double, ptr @sa, align 8
  %241 = load double, ptr @five, align 8
  %242 = load double, ptr %4, align 8
  %243 = fdiv double %241, %242
  %244 = fadd double %240, %243
  store double %244, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %245 = load double, ptr @sb, align 8
  %246 = load double, ptr @sc, align 8
  %247 = load double, ptr %4, align 8
  %248 = load double, ptr %4, align 8
  %249 = fmul double %247, %248
  %250 = load double, ptr %4, align 8
  %251 = fmul double %249, %250
  %252 = fdiv double %246, %251
  %253 = fsub double %245, %252
  store double %253, ptr @piprg, align 8
  %254 = load double, ptr @piprg, align 8
  %255 = load double, ptr @piref, align 8
  %256 = fsub double %254, %255
  store double %256, ptr @pierr, align 8
  %257 = load double, ptr @one, align 8
  %258 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %259 = fdiv double %257, %258
  store double %259, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %260 = load double, ptr @pierr, align 8
  %261 = fmul double %260, 1.000000e-30
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %263 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %264 = fsub double %262, %263
  %265 = fmul double %264, 1.000000e-30
  %266 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %267 = fmul double %266, 1.000000e-30
  %268 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %261, double noundef %265, double noundef %267)
  %269 = load double, ptr @piref, align 8
  %270 = load double, ptr @three, align 8
  %271 = load i32, ptr %10, align 4
  %272 = sitofp i32 %271 to double
  %273 = fmul double %270, %272
  %274 = fdiv double %269, %273
  store double %274, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %275 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %276 = load i32, ptr %9, align 4
  %277 = load i32, ptr %10, align 4
  %278 = sub nsw i32 %277, 1
  %279 = icmp sle i32 %276, %278
  br i1 %279, label %.lr.ph11, label %320

.lr.ph11:                                         ; preds = %220
  br label %280

280:                                              ; preds = %.lr.ph11, %280
  %281 = load double, ptr %4, align 8
  %282 = load double, ptr @one, align 8
  %283 = fadd double %281, %282
  store double %283, ptr %4, align 8
  %284 = load double, ptr %4, align 8
  %285 = load double, ptr %6, align 8
  %286 = fmul double %284, %285
  store double %286, ptr %3, align 8
  %287 = load double, ptr %3, align 8
  %288 = load double, ptr %3, align 8
  %289 = fmul double %287, %288
  store double %289, ptr %5, align 8
  %290 = load double, ptr %2, align 8
  %291 = load double, ptr %3, align 8
  %292 = load double, ptr @A6, align 8
  %293 = load double, ptr %5, align 8
  %294 = load double, ptr @A5, align 8
  %295 = fneg double %294
  %296 = call double @llvm.fmuladd.f64(double %292, double %293, double %295)
  %297 = load double, ptr %5, align 8
  %298 = load double, ptr @A4, align 8
  %299 = call double @llvm.fmuladd.f64(double %296, double %297, double %298)
  %300 = load double, ptr %5, align 8
  %301 = load double, ptr @A3, align 8
  %302 = fneg double %301
  %303 = call double @llvm.fmuladd.f64(double %299, double %300, double %302)
  %304 = load double, ptr %5, align 8
  %305 = load double, ptr @A2, align 8
  %306 = call double @llvm.fmuladd.f64(double %303, double %304, double %305)
  %307 = load double, ptr %5, align 8
  %308 = load double, ptr @A1, align 8
  %309 = call double @llvm.fmuladd.f64(double %306, double %307, double %308)
  %310 = load double, ptr %5, align 8
  %311 = load double, ptr @one, align 8
  %312 = call double @llvm.fmuladd.f64(double %309, double %310, double %311)
  %313 = call double @llvm.fmuladd.f64(double %291, double %312, double %290)
  store double %313, ptr %2, align 8
  %314 = load i32, ptr %9, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %9, align 4
  %316 = load i32, ptr %9, align 4
  %317 = load i32, ptr %10, align 4
  %318 = sub nsw i32 %317, 1
  %319 = icmp sle i32 %316, %318
  br i1 %319, label %280, label %._crit_edge12, !llvm.loop !13

._crit_edge12:                                    ; preds = %280
  br label %320

320:                                              ; preds = %._crit_edge12, %220
  %321 = call i32 @dtime(ptr noundef @TimeArray)
  %322 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %324 = load double, ptr @nulltime, align 8
  %325 = fneg double %324
  %326 = call double @llvm.fmuladd.f64(double %322, double %323, double %325)
  store double %326, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = fdiv double %327, %328
  store double %329, ptr %3, align 8
  %330 = load double, ptr %3, align 8
  %331 = load double, ptr %3, align 8
  %332 = fmul double %330, %331
  store double %332, ptr %5, align 8
  %333 = load double, ptr %3, align 8
  %334 = load double, ptr @A6, align 8
  %335 = load double, ptr %5, align 8
  %336 = load double, ptr @A5, align 8
  %337 = fneg double %336
  %338 = call double @llvm.fmuladd.f64(double %334, double %335, double %337)
  %339 = load double, ptr %5, align 8
  %340 = load double, ptr @A4, align 8
  %341 = call double @llvm.fmuladd.f64(double %338, double %339, double %340)
  %342 = load double, ptr %5, align 8
  %343 = load double, ptr @A3, align 8
  %344 = fneg double %343
  %345 = call double @llvm.fmuladd.f64(double %341, double %342, double %344)
  %346 = load double, ptr %5, align 8
  %347 = load double, ptr @A2, align 8
  %348 = call double @llvm.fmuladd.f64(double %345, double %346, double %347)
  %349 = load double, ptr %5, align 8
  %350 = load double, ptr @A1, align 8
  %351 = call double @llvm.fmuladd.f64(double %348, double %349, double %350)
  %352 = load double, ptr %5, align 8
  %353 = load double, ptr @one, align 8
  %354 = call double @llvm.fmuladd.f64(double %351, double %352, double %353)
  %355 = fmul double %333, %354
  store double %355, ptr @sa, align 8
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %357 = fdiv double %356, 1.700000e+01
  store double %357, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %358 = load double, ptr %6, align 8
  %359 = load double, ptr @sa, align 8
  %360 = load double, ptr @two, align 8
  %361 = load double, ptr %2, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %361, double %359)
  %363 = fmul double %358, %362
  %364 = load double, ptr @two, align 8
  %365 = fdiv double %363, %364
  store double %365, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %366 = load double, ptr @sa, align 8
  %367 = load double, ptr @sb, align 8
  %368 = fsub double %366, %367
  store double %368, ptr @sc, align 8
  %369 = load double, ptr @one, align 8
  %370 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %371 = fdiv double %369, %370
  store double %371, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %372 = load double, ptr @sc, align 8
  %373 = fmul double %372, 1.000000e-30
  %374 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %375 = fmul double %374, 1.000000e-30
  %376 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %377 = fmul double %376, 1.000000e-30
  %378 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %373, double noundef %375, double noundef %377)
  %379 = load double, ptr @A3, align 8
  %380 = fneg double %379
  store double %380, ptr @A3, align 8
  %381 = load double, ptr @A5, align 8
  %382 = fneg double %381
  store double %382, ptr @A5, align 8
  %383 = load double, ptr @piref, align 8
  %384 = load double, ptr @three, align 8
  %385 = load i32, ptr %10, align 4
  %386 = sitofp i32 %385 to double
  %387 = fmul double %384, %386
  %388 = fdiv double %383, %387
  store double %388, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %389 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %390 = load i32, ptr %9, align 4
  %391 = load i32, ptr %10, align 4
  %392 = sub nsw i32 %391, 1
  %393 = icmp sle i32 %390, %392
  br i1 %393, label %.lr.ph14, label %429

.lr.ph14:                                         ; preds = %320
  br label %394

394:                                              ; preds = %.lr.ph14, %394
  %395 = load i32, ptr %9, align 4
  %396 = sitofp i32 %395 to double
  %397 = load double, ptr %6, align 8
  %398 = fmul double %396, %397
  store double %398, ptr %3, align 8
  %399 = load double, ptr %3, align 8
  %400 = load double, ptr %3, align 8
  %401 = fmul double %399, %400
  store double %401, ptr %5, align 8
  %402 = load double, ptr %2, align 8
  %403 = load double, ptr %5, align 8
  %404 = load double, ptr %5, align 8
  %405 = load double, ptr %5, align 8
  %406 = load double, ptr %5, align 8
  %407 = load double, ptr %5, align 8
  %408 = load double, ptr @B6, align 8
  %409 = load double, ptr %5, align 8
  %410 = load double, ptr @B5, align 8
  %411 = call double @llvm.fmuladd.f64(double %408, double %409, double %410)
  %412 = load double, ptr @B4, align 8
  %413 = call double @llvm.fmuladd.f64(double %407, double %411, double %412)
  %414 = load double, ptr @B3, align 8
  %415 = call double @llvm.fmuladd.f64(double %406, double %413, double %414)
  %416 = load double, ptr @B2, align 8
  %417 = call double @llvm.fmuladd.f64(double %405, double %415, double %416)
  %418 = load double, ptr @B1, align 8
  %419 = call double @llvm.fmuladd.f64(double %404, double %417, double %418)
  %420 = call double @llvm.fmuladd.f64(double %403, double %419, double %402)
  %421 = load double, ptr @one, align 8
  %422 = fadd double %420, %421
  store double %422, ptr %2, align 8
  %423 = load i32, ptr %9, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, ptr %9, align 4
  %425 = load i32, ptr %9, align 4
  %426 = load i32, ptr %10, align 4
  %427 = sub nsw i32 %426, 1
  %428 = icmp sle i32 %425, %427
  br i1 %428, label %394, label %._crit_edge15, !llvm.loop !14

._crit_edge15:                                    ; preds = %394
  br label %429

429:                                              ; preds = %._crit_edge15, %320
  %430 = call i32 @dtime(ptr noundef @TimeArray)
  %431 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %432 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %433 = load double, ptr @nulltime, align 8
  %434 = fneg double %433
  %435 = call double @llvm.fmuladd.f64(double %431, double %432, double %434)
  store double %435, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %436 = load double, ptr @piref, align 8
  %437 = load double, ptr @three, align 8
  %438 = fdiv double %436, %437
  store double %438, ptr %3, align 8
  %439 = load double, ptr %3, align 8
  %440 = load double, ptr %3, align 8
  %441 = fmul double %439, %440
  store double %441, ptr %5, align 8
  %442 = load double, ptr %5, align 8
  %443 = load double, ptr %5, align 8
  %444 = load double, ptr %5, align 8
  %445 = load double, ptr %5, align 8
  %446 = load double, ptr %5, align 8
  %447 = load double, ptr @B6, align 8
  %448 = load double, ptr %5, align 8
  %449 = load double, ptr @B5, align 8
  %450 = call double @llvm.fmuladd.f64(double %447, double %448, double %449)
  %451 = load double, ptr @B4, align 8
  %452 = call double @llvm.fmuladd.f64(double %446, double %450, double %451)
  %453 = load double, ptr @B3, align 8
  %454 = call double @llvm.fmuladd.f64(double %445, double %452, double %453)
  %455 = load double, ptr @B2, align 8
  %456 = call double @llvm.fmuladd.f64(double %444, double %454, double %455)
  %457 = load double, ptr @B1, align 8
  %458 = call double @llvm.fmuladd.f64(double %443, double %456, double %457)
  %459 = load double, ptr @one, align 8
  %460 = call double @llvm.fmuladd.f64(double %442, double %458, double %459)
  store double %460, ptr @sa, align 8
  %461 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %462 = fdiv double %461, 1.500000e+01
  store double %462, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %463 = load double, ptr %6, align 8
  %464 = load double, ptr @sa, align 8
  %465 = load double, ptr @one, align 8
  %466 = fadd double %464, %465
  %467 = load double, ptr @two, align 8
  %468 = load double, ptr %2, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %468, double %466)
  %470 = fmul double %463, %469
  %471 = load double, ptr @two, align 8
  %472 = fdiv double %470, %471
  store double %472, ptr @sa, align 8
  %473 = load double, ptr @piref, align 8
  %474 = load double, ptr @three, align 8
  %475 = fdiv double %473, %474
  store double %475, ptr %3, align 8
  %476 = load double, ptr %3, align 8
  %477 = load double, ptr %3, align 8
  %478 = fmul double %476, %477
  store double %478, ptr %5, align 8
  %479 = load double, ptr %3, align 8
  %480 = load double, ptr @A6, align 8
  %481 = load double, ptr %5, align 8
  %482 = load double, ptr @A5, align 8
  %483 = call double @llvm.fmuladd.f64(double %480, double %481, double %482)
  %484 = load double, ptr %5, align 8
  %485 = load double, ptr @A4, align 8
  %486 = call double @llvm.fmuladd.f64(double %483, double %484, double %485)
  %487 = load double, ptr %5, align 8
  %488 = load double, ptr @A3, align 8
  %489 = call double @llvm.fmuladd.f64(double %486, double %487, double %488)
  %490 = load double, ptr %5, align 8
  %491 = load double, ptr @A2, align 8
  %492 = call double @llvm.fmuladd.f64(double %489, double %490, double %491)
  %493 = load double, ptr %5, align 8
  %494 = load double, ptr @A1, align 8
  %495 = call double @llvm.fmuladd.f64(double %492, double %493, double %494)
  %496 = load double, ptr %5, align 8
  %497 = load double, ptr @A0, align 8
  %498 = call double @llvm.fmuladd.f64(double %495, double %496, double %497)
  %499 = fmul double %479, %498
  store double %499, ptr @sb, align 8
  %500 = load double, ptr @sa, align 8
  %501 = load double, ptr @sb, align 8
  %502 = fsub double %500, %501
  store double %502, ptr @sc, align 8
  %503 = load double, ptr @one, align 8
  %504 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %505 = fdiv double %503, %504
  store double %505, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %506 = load double, ptr @sc, align 8
  %507 = fmul double %506, 1.000000e-30
  %508 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %509 = fmul double %508, 1.000000e-30
  %510 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %511 = fmul double %510, 1.000000e-30
  %512 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %507, double noundef %509, double noundef %511)
  %513 = load double, ptr @piref, align 8
  %514 = load double, ptr @three, align 8
  %515 = load i32, ptr %10, align 4
  %516 = sitofp i32 %515 to double
  %517 = fmul double %514, %516
  %518 = fdiv double %513, %517
  store double %518, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %519 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %520 = load i32, ptr %9, align 4
  %521 = load i32, ptr %10, align 4
  %522 = sub nsw i32 %521, 1
  %523 = icmp sle i32 %520, %522
  br i1 %523, label %.lr.ph17, label %582

.lr.ph17:                                         ; preds = %429
  br label %524

524:                                              ; preds = %.lr.ph17, %524
  %525 = load i32, ptr %9, align 4
  %526 = sitofp i32 %525 to double
  %527 = load double, ptr %6, align 8
  %528 = fmul double %526, %527
  store double %528, ptr %3, align 8
  %529 = load double, ptr %3, align 8
  %530 = load double, ptr %3, align 8
  %531 = fmul double %529, %530
  store double %531, ptr %5, align 8
  %532 = load double, ptr %3, align 8
  %533 = load double, ptr @A6, align 8
  %534 = load double, ptr %5, align 8
  %535 = load double, ptr @A5, align 8
  %536 = call double @llvm.fmuladd.f64(double %533, double %534, double %535)
  %537 = load double, ptr %5, align 8
  %538 = load double, ptr @A4, align 8
  %539 = call double @llvm.fmuladd.f64(double %536, double %537, double %538)
  %540 = load double, ptr %5, align 8
  %541 = load double, ptr @A3, align 8
  %542 = call double @llvm.fmuladd.f64(double %539, double %540, double %541)
  %543 = load double, ptr %5, align 8
  %544 = load double, ptr @A2, align 8
  %545 = call double @llvm.fmuladd.f64(double %542, double %543, double %544)
  %546 = load double, ptr %5, align 8
  %547 = load double, ptr @A1, align 8
  %548 = call double @llvm.fmuladd.f64(double %545, double %546, double %547)
  %549 = load double, ptr %5, align 8
  %550 = load double, ptr @one, align 8
  %551 = call double @llvm.fmuladd.f64(double %548, double %549, double %550)
  %552 = fmul double %532, %551
  store double %552, ptr %4, align 8
  %553 = load double, ptr %2, align 8
  %554 = load double, ptr %4, align 8
  %555 = load double, ptr %5, align 8
  %556 = load double, ptr %5, align 8
  %557 = load double, ptr %5, align 8
  %558 = load double, ptr %5, align 8
  %559 = load double, ptr %5, align 8
  %560 = load double, ptr @B6, align 8
  %561 = load double, ptr %5, align 8
  %562 = load double, ptr @B5, align 8
  %563 = call double @llvm.fmuladd.f64(double %560, double %561, double %562)
  %564 = load double, ptr @B4, align 8
  %565 = call double @llvm.fmuladd.f64(double %559, double %563, double %564)
  %566 = load double, ptr @B3, align 8
  %567 = call double @llvm.fmuladd.f64(double %558, double %565, double %566)
  %568 = load double, ptr @B2, align 8
  %569 = call double @llvm.fmuladd.f64(double %557, double %567, double %568)
  %570 = load double, ptr @B1, align 8
  %571 = call double @llvm.fmuladd.f64(double %556, double %569, double %570)
  %572 = load double, ptr @one, align 8
  %573 = call double @llvm.fmuladd.f64(double %555, double %571, double %572)
  %574 = fdiv double %554, %573
  %575 = fadd double %553, %574
  store double %575, ptr %2, align 8
  %576 = load i32, ptr %9, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, ptr %9, align 4
  %578 = load i32, ptr %9, align 4
  %579 = load i32, ptr %10, align 4
  %580 = sub nsw i32 %579, 1
  %581 = icmp sle i32 %578, %580
  br i1 %581, label %524, label %._crit_edge18, !llvm.loop !15

._crit_edge18:                                    ; preds = %524
  br label %582

582:                                              ; preds = %._crit_edge18, %429
  %583 = call i32 @dtime(ptr noundef @TimeArray)
  %584 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %585 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %586 = load double, ptr @nulltime, align 8
  %587 = fneg double %586
  %588 = call double @llvm.fmuladd.f64(double %584, double %585, double %587)
  store double %588, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %589 = load double, ptr @piref, align 8
  %590 = load double, ptr @three, align 8
  %591 = fdiv double %589, %590
  store double %591, ptr %3, align 8
  %592 = load double, ptr %3, align 8
  %593 = load double, ptr %3, align 8
  %594 = fmul double %592, %593
  store double %594, ptr %5, align 8
  %595 = load double, ptr %3, align 8
  %596 = load double, ptr @A6, align 8
  %597 = load double, ptr %5, align 8
  %598 = load double, ptr @A5, align 8
  %599 = call double @llvm.fmuladd.f64(double %596, double %597, double %598)
  %600 = load double, ptr %5, align 8
  %601 = load double, ptr @A4, align 8
  %602 = call double @llvm.fmuladd.f64(double %599, double %600, double %601)
  %603 = load double, ptr %5, align 8
  %604 = load double, ptr @A3, align 8
  %605 = call double @llvm.fmuladd.f64(double %602, double %603, double %604)
  %606 = load double, ptr %5, align 8
  %607 = load double, ptr @A2, align 8
  %608 = call double @llvm.fmuladd.f64(double %605, double %606, double %607)
  %609 = load double, ptr %5, align 8
  %610 = load double, ptr @A1, align 8
  %611 = call double @llvm.fmuladd.f64(double %608, double %609, double %610)
  %612 = load double, ptr %5, align 8
  %613 = load double, ptr @one, align 8
  %614 = call double @llvm.fmuladd.f64(double %611, double %612, double %613)
  %615 = fmul double %595, %614
  store double %615, ptr @sa, align 8
  %616 = load double, ptr %5, align 8
  %617 = load double, ptr %5, align 8
  %618 = load double, ptr %5, align 8
  %619 = load double, ptr %5, align 8
  %620 = load double, ptr %5, align 8
  %621 = load double, ptr @B6, align 8
  %622 = load double, ptr %5, align 8
  %623 = load double, ptr @B5, align 8
  %624 = call double @llvm.fmuladd.f64(double %621, double %622, double %623)
  %625 = load double, ptr @B4, align 8
  %626 = call double @llvm.fmuladd.f64(double %620, double %624, double %625)
  %627 = load double, ptr @B3, align 8
  %628 = call double @llvm.fmuladd.f64(double %619, double %626, double %627)
  %629 = load double, ptr @B2, align 8
  %630 = call double @llvm.fmuladd.f64(double %618, double %628, double %629)
  %631 = load double, ptr @B1, align 8
  %632 = call double @llvm.fmuladd.f64(double %617, double %630, double %631)
  %633 = load double, ptr @one, align 8
  %634 = call double @llvm.fmuladd.f64(double %616, double %632, double %633)
  store double %634, ptr @sb, align 8
  %635 = load double, ptr @sa, align 8
  %636 = load double, ptr @sb, align 8
  %637 = fdiv double %635, %636
  store double %637, ptr @sa, align 8
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %639 = fdiv double %638, 2.900000e+01
  store double %639, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %640 = load double, ptr %6, align 8
  %641 = load double, ptr @sa, align 8
  %642 = load double, ptr @two, align 8
  %643 = load double, ptr %2, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %643, double %641)
  %645 = fmul double %640, %644
  %646 = load double, ptr @two, align 8
  %647 = fdiv double %645, %646
  store double %647, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %648 = load double, ptr @sa, align 8
  %649 = load double, ptr @sb, align 8
  %650 = fsub double %648, %649
  store double %650, ptr @sc, align 8
  %651 = load double, ptr @one, align 8
  %652 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %653 = fdiv double %651, %652
  store double %653, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %654 = load double, ptr @sc, align 8
  %655 = fmul double %654, 1.000000e-30
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %657 = fmul double %656, 1.000000e-30
  %658 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %659 = fmul double %658, 1.000000e-30
  %660 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %655, double noundef %657, double noundef %659)
  %661 = load double, ptr @piref, align 8
  %662 = load double, ptr @four, align 8
  %663 = load i32, ptr %10, align 4
  %664 = sitofp i32 %663 to double
  %665 = fmul double %662, %664
  %666 = fdiv double %661, %665
  store double %666, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %667 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %668 = load i32, ptr %9, align 4
  %669 = load i32, ptr %10, align 4
  %670 = sub nsw i32 %669, 1
  %671 = icmp sle i32 %668, %670
  br i1 %671, label %.lr.ph20, label %729

.lr.ph20:                                         ; preds = %582
  br label %672

672:                                              ; preds = %.lr.ph20, %672
  %673 = load i32, ptr %9, align 4
  %674 = sitofp i32 %673 to double
  %675 = load double, ptr %6, align 8
  %676 = fmul double %674, %675
  store double %676, ptr %3, align 8
  %677 = load double, ptr %3, align 8
  %678 = load double, ptr %3, align 8
  %679 = fmul double %677, %678
  store double %679, ptr %5, align 8
  %680 = load double, ptr %3, align 8
  %681 = load double, ptr @A6, align 8
  %682 = load double, ptr %5, align 8
  %683 = load double, ptr @A5, align 8
  %684 = call double @llvm.fmuladd.f64(double %681, double %682, double %683)
  %685 = load double, ptr %5, align 8
  %686 = load double, ptr @A4, align 8
  %687 = call double @llvm.fmuladd.f64(double %684, double %685, double %686)
  %688 = load double, ptr %5, align 8
  %689 = load double, ptr @A3, align 8
  %690 = call double @llvm.fmuladd.f64(double %687, double %688, double %689)
  %691 = load double, ptr %5, align 8
  %692 = load double, ptr @A2, align 8
  %693 = call double @llvm.fmuladd.f64(double %690, double %691, double %692)
  %694 = load double, ptr %5, align 8
  %695 = load double, ptr @A1, align 8
  %696 = call double @llvm.fmuladd.f64(double %693, double %694, double %695)
  %697 = load double, ptr %5, align 8
  %698 = load double, ptr @one, align 8
  %699 = call double @llvm.fmuladd.f64(double %696, double %697, double %698)
  %700 = fmul double %680, %699
  store double %700, ptr %4, align 8
  %701 = load double, ptr %2, align 8
  %702 = load double, ptr %4, align 8
  %703 = load double, ptr %5, align 8
  %704 = load double, ptr %5, align 8
  %705 = load double, ptr %5, align 8
  %706 = load double, ptr %5, align 8
  %707 = load double, ptr %5, align 8
  %708 = load double, ptr @B6, align 8
  %709 = load double, ptr %5, align 8
  %710 = load double, ptr @B5, align 8
  %711 = call double @llvm.fmuladd.f64(double %708, double %709, double %710)
  %712 = load double, ptr @B4, align 8
  %713 = call double @llvm.fmuladd.f64(double %707, double %711, double %712)
  %714 = load double, ptr @B3, align 8
  %715 = call double @llvm.fmuladd.f64(double %706, double %713, double %714)
  %716 = load double, ptr @B2, align 8
  %717 = call double @llvm.fmuladd.f64(double %705, double %715, double %716)
  %718 = load double, ptr @B1, align 8
  %719 = call double @llvm.fmuladd.f64(double %704, double %717, double %718)
  %720 = load double, ptr @one, align 8
  %721 = call double @llvm.fmuladd.f64(double %703, double %719, double %720)
  %722 = call double @llvm.fmuladd.f64(double %702, double %721, double %701)
  store double %722, ptr %2, align 8
  %723 = load i32, ptr %9, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, ptr %9, align 4
  %725 = load i32, ptr %9, align 4
  %726 = load i32, ptr %10, align 4
  %727 = sub nsw i32 %726, 1
  %728 = icmp sle i32 %725, %727
  br i1 %728, label %672, label %._crit_edge21, !llvm.loop !16

._crit_edge21:                                    ; preds = %672
  br label %729

729:                                              ; preds = %._crit_edge21, %582
  %730 = call i32 @dtime(ptr noundef @TimeArray)
  %731 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %732 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %733 = load double, ptr @nulltime, align 8
  %734 = fneg double %733
  %735 = call double @llvm.fmuladd.f64(double %731, double %732, double %734)
  store double %735, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %736 = load double, ptr @piref, align 8
  %737 = load double, ptr @four, align 8
  %738 = fdiv double %736, %737
  store double %738, ptr %3, align 8
  %739 = load double, ptr %3, align 8
  %740 = load double, ptr %3, align 8
  %741 = fmul double %739, %740
  store double %741, ptr %5, align 8
  %742 = load double, ptr %3, align 8
  %743 = load double, ptr @A6, align 8
  %744 = load double, ptr %5, align 8
  %745 = load double, ptr @A5, align 8
  %746 = call double @llvm.fmuladd.f64(double %743, double %744, double %745)
  %747 = load double, ptr %5, align 8
  %748 = load double, ptr @A4, align 8
  %749 = call double @llvm.fmuladd.f64(double %746, double %747, double %748)
  %750 = load double, ptr %5, align 8
  %751 = load double, ptr @A3, align 8
  %752 = call double @llvm.fmuladd.f64(double %749, double %750, double %751)
  %753 = load double, ptr %5, align 8
  %754 = load double, ptr @A2, align 8
  %755 = call double @llvm.fmuladd.f64(double %752, double %753, double %754)
  %756 = load double, ptr %5, align 8
  %757 = load double, ptr @A1, align 8
  %758 = call double @llvm.fmuladd.f64(double %755, double %756, double %757)
  %759 = load double, ptr %5, align 8
  %760 = load double, ptr @one, align 8
  %761 = call double @llvm.fmuladd.f64(double %758, double %759, double %760)
  %762 = fmul double %742, %761
  store double %762, ptr @sa, align 8
  %763 = load double, ptr %5, align 8
  %764 = load double, ptr %5, align 8
  %765 = load double, ptr %5, align 8
  %766 = load double, ptr %5, align 8
  %767 = load double, ptr %5, align 8
  %768 = load double, ptr @B6, align 8
  %769 = load double, ptr %5, align 8
  %770 = load double, ptr @B5, align 8
  %771 = call double @llvm.fmuladd.f64(double %768, double %769, double %770)
  %772 = load double, ptr @B4, align 8
  %773 = call double @llvm.fmuladd.f64(double %767, double %771, double %772)
  %774 = load double, ptr @B3, align 8
  %775 = call double @llvm.fmuladd.f64(double %766, double %773, double %774)
  %776 = load double, ptr @B2, align 8
  %777 = call double @llvm.fmuladd.f64(double %765, double %775, double %776)
  %778 = load double, ptr @B1, align 8
  %779 = call double @llvm.fmuladd.f64(double %764, double %777, double %778)
  %780 = load double, ptr @one, align 8
  %781 = call double @llvm.fmuladd.f64(double %763, double %779, double %780)
  store double %781, ptr @sb, align 8
  %782 = load double, ptr @sa, align 8
  %783 = load double, ptr @sb, align 8
  %784 = fmul double %782, %783
  store double %784, ptr @sa, align 8
  %785 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %786 = fdiv double %785, 2.900000e+01
  store double %786, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %787 = load double, ptr %6, align 8
  %788 = load double, ptr @sa, align 8
  %789 = load double, ptr @two, align 8
  %790 = load double, ptr %2, align 8
  %791 = call double @llvm.fmuladd.f64(double %789, double %790, double %788)
  %792 = fmul double %787, %791
  %793 = load double, ptr @two, align 8
  %794 = fdiv double %792, %793
  store double %794, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %795 = load double, ptr @sa, align 8
  %796 = load double, ptr @sb, align 8
  %797 = fsub double %795, %796
  store double %797, ptr @sc, align 8
  %798 = load double, ptr @one, align 8
  %799 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %800 = fdiv double %798, %799
  store double %800, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %801 = load double, ptr @sc, align 8
  %802 = fmul double %801, 1.000000e-30
  %803 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %804 = fmul double %803, 1.000000e-30
  %805 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %806 = fmul double %805, 1.000000e-30
  %807 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %802, double noundef %804, double noundef %806)
  store double 0.000000e+00, ptr %2, align 8
  %808 = load double, ptr @one, align 8
  store double %808, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %809 = load double, ptr @sa, align 8
  %810 = load i32, ptr %10, align 4
  %811 = sitofp i32 %810 to double
  %812 = fdiv double %809, %811
  store double %812, ptr %4, align 8
  %813 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %814 = load i32, ptr %9, align 4
  %815 = load i32, ptr %10, align 4
  %816 = sub nsw i32 %815, 1
  %817 = icmp sle i32 %814, %816
  br i1 %817, label %.lr.ph23, label %852

.lr.ph23:                                         ; preds = %729
  br label %818

818:                                              ; preds = %.lr.ph23, %818
  %819 = load i32, ptr %9, align 4
  %820 = sitofp i32 %819 to double
  %821 = load double, ptr %4, align 8
  %822 = fmul double %820, %821
  store double %822, ptr %6, align 8
  %823 = load double, ptr %6, align 8
  %824 = load double, ptr %6, align 8
  %825 = fmul double %823, %824
  store double %825, ptr %3, align 8
  %826 = load double, ptr %2, align 8
  %827 = load double, ptr %5, align 8
  %828 = load double, ptr %6, align 8
  %829 = load double, ptr %5, align 8
  %830 = fadd double %828, %829
  %831 = fdiv double %827, %830
  %832 = fsub double %826, %831
  %833 = load double, ptr %6, align 8
  %834 = load double, ptr %3, align 8
  %835 = load double, ptr %5, align 8
  %836 = fadd double %834, %835
  %837 = fdiv double %833, %836
  %838 = fsub double %832, %837
  %839 = load double, ptr %3, align 8
  %840 = load double, ptr %6, align 8
  %841 = load double, ptr %3, align 8
  %842 = load double, ptr %5, align 8
  %843 = call double @llvm.fmuladd.f64(double %840, double %841, double %842)
  %844 = fdiv double %839, %843
  %845 = fsub double %838, %844
  store double %845, ptr %2, align 8
  %846 = load i32, ptr %9, align 4
  %847 = add nsw i32 %846, 1
  store i32 %847, ptr %9, align 4
  %848 = load i32, ptr %9, align 4
  %849 = load i32, ptr %10, align 4
  %850 = sub nsw i32 %849, 1
  %851 = icmp sle i32 %848, %850
  br i1 %851, label %818, label %._crit_edge24, !llvm.loop !17

._crit_edge24:                                    ; preds = %818
  br label %852

852:                                              ; preds = %._crit_edge24, %729
  %853 = call i32 @dtime(ptr noundef @TimeArray)
  %854 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %855 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %856 = load double, ptr @nulltime, align 8
  %857 = fneg double %856
  %858 = call double @llvm.fmuladd.f64(double %854, double %855, double %857)
  store double %858, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %860 = fdiv double %859, 1.200000e+01
  store double %860, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %861 = load double, ptr @sa, align 8
  store double %861, ptr %6, align 8
  %862 = load double, ptr %6, align 8
  %863 = load double, ptr %6, align 8
  %864 = fmul double %862, %863
  store double %864, ptr %3, align 8
  %865 = load double, ptr %5, align 8
  %866 = fneg double %865
  %867 = load double, ptr %5, align 8
  %868 = load double, ptr %6, align 8
  %869 = load double, ptr %5, align 8
  %870 = fadd double %868, %869
  %871 = fdiv double %867, %870
  %872 = fsub double %866, %871
  %873 = load double, ptr %6, align 8
  %874 = load double, ptr %3, align 8
  %875 = load double, ptr %5, align 8
  %876 = fadd double %874, %875
  %877 = fdiv double %873, %876
  %878 = fsub double %872, %877
  %879 = load double, ptr %3, align 8
  %880 = load double, ptr %6, align 8
  %881 = load double, ptr %3, align 8
  %882 = load double, ptr %5, align 8
  %883 = call double @llvm.fmuladd.f64(double %880, double %881, double %882)
  %884 = fdiv double %879, %883
  %885 = fsub double %878, %884
  store double %885, ptr @sa, align 8
  %886 = load double, ptr %4, align 8
  %887 = fmul double 1.800000e+01, %886
  %888 = load double, ptr @sa, align 8
  %889 = load double, ptr @two, align 8
  %890 = load double, ptr %2, align 8
  %891 = call double @llvm.fmuladd.f64(double %889, double %890, double %888)
  %892 = fmul double %887, %891
  store double %892, ptr @sa, align 8
  %893 = load double, ptr @sa, align 8
  %894 = fptosi double %893 to i32
  %895 = mul nsw i32 -2000, %894
  store i32 %895, ptr %10, align 4
  %896 = load i32, ptr %10, align 4
  %897 = sitofp i32 %896 to double
  %898 = load double, ptr @scale, align 8
  %899 = fdiv double %897, %898
  %900 = fptosi double %899 to i32
  store i32 %900, ptr %10, align 4
  %901 = load double, ptr @sa, align 8
  %902 = fadd double %901, 5.002000e+02
  store double %902, ptr @sc, align 8
  %903 = load double, ptr @one, align 8
  %904 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %905 = fdiv double %903, %904
  store double %905, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %906 = load double, ptr @sc, align 8
  %907 = fmul double %906, 1.000000e-30
  %908 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %909 = fmul double %908, 1.000000e-30
  %910 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %911 = fmul double %910, 1.000000e-30
  %912 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %907, double noundef %909, double noundef %911)
  %913 = load double, ptr @piref, align 8
  %914 = load double, ptr @three, align 8
  %915 = load i32, ptr %10, align 4
  %916 = sitofp i32 %915 to double
  %917 = fmul double %914, %916
  %918 = fdiv double %913, %917
  store double %918, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %919 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %920 = load i32, ptr %9, align 4
  %921 = load i32, ptr %10, align 4
  %922 = sub nsw i32 %921, 1
  %923 = icmp sle i32 %920, %922
  br i1 %923, label %.lr.ph26, label %983

.lr.ph26:                                         ; preds = %852
  br label %924

924:                                              ; preds = %.lr.ph26, %924
  %925 = load i32, ptr %9, align 4
  %926 = sitofp i32 %925 to double
  %927 = load double, ptr %6, align 8
  %928 = fmul double %926, %927
  store double %928, ptr %3, align 8
  %929 = load double, ptr %3, align 8
  %930 = load double, ptr %3, align 8
  %931 = fmul double %929, %930
  store double %931, ptr %5, align 8
  %932 = load double, ptr %5, align 8
  %933 = load double, ptr %5, align 8
  %934 = load double, ptr %5, align 8
  %935 = load double, ptr %5, align 8
  %936 = load double, ptr %5, align 8
  %937 = load double, ptr @B6, align 8
  %938 = load double, ptr %5, align 8
  %939 = load double, ptr @B5, align 8
  %940 = call double @llvm.fmuladd.f64(double %937, double %938, double %939)
  %941 = load double, ptr @B4, align 8
  %942 = call double @llvm.fmuladd.f64(double %936, double %940, double %941)
  %943 = load double, ptr @B3, align 8
  %944 = call double @llvm.fmuladd.f64(double %935, double %942, double %943)
  %945 = load double, ptr @B2, align 8
  %946 = call double @llvm.fmuladd.f64(double %934, double %944, double %945)
  %947 = load double, ptr @B1, align 8
  %948 = call double @llvm.fmuladd.f64(double %933, double %946, double %947)
  %949 = load double, ptr @one, align 8
  %950 = call double @llvm.fmuladd.f64(double %932, double %948, double %949)
  store double %950, ptr %4, align 8
  %951 = load double, ptr %2, align 8
  %952 = load double, ptr %4, align 8
  %953 = load double, ptr %4, align 8
  %954 = fmul double %952, %953
  %955 = load double, ptr %3, align 8
  %956 = fmul double %954, %955
  %957 = load double, ptr @A6, align 8
  %958 = load double, ptr %5, align 8
  %959 = load double, ptr @A5, align 8
  %960 = call double @llvm.fmuladd.f64(double %957, double %958, double %959)
  %961 = load double, ptr %5, align 8
  %962 = load double, ptr @A4, align 8
  %963 = call double @llvm.fmuladd.f64(double %960, double %961, double %962)
  %964 = load double, ptr %5, align 8
  %965 = load double, ptr @A3, align 8
  %966 = call double @llvm.fmuladd.f64(double %963, double %964, double %965)
  %967 = load double, ptr %5, align 8
  %968 = load double, ptr @A2, align 8
  %969 = call double @llvm.fmuladd.f64(double %966, double %967, double %968)
  %970 = load double, ptr %5, align 8
  %971 = load double, ptr @A1, align 8
  %972 = call double @llvm.fmuladd.f64(double %969, double %970, double %971)
  %973 = load double, ptr %5, align 8
  %974 = load double, ptr @one, align 8
  %975 = call double @llvm.fmuladd.f64(double %972, double %973, double %974)
  %976 = call double @llvm.fmuladd.f64(double %956, double %975, double %951)
  store double %976, ptr %2, align 8
  %977 = load i32, ptr %9, align 4
  %978 = add nsw i32 %977, 1
  store i32 %978, ptr %9, align 4
  %979 = load i32, ptr %9, align 4
  %980 = load i32, ptr %10, align 4
  %981 = sub nsw i32 %980, 1
  %982 = icmp sle i32 %979, %981
  br i1 %982, label %924, label %._crit_edge27, !llvm.loop !18

._crit_edge27:                                    ; preds = %924
  br label %983

983:                                              ; preds = %._crit_edge27, %852
  %984 = call i32 @dtime(ptr noundef @TimeArray)
  %985 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %986 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %987 = load double, ptr @nulltime, align 8
  %988 = fneg double %987
  %989 = call double @llvm.fmuladd.f64(double %985, double %986, double %988)
  store double %989, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %990 = load double, ptr @piref, align 8
  %991 = load double, ptr @three, align 8
  %992 = fdiv double %990, %991
  store double %992, ptr %3, align 8
  %993 = load double, ptr %3, align 8
  %994 = load double, ptr %3, align 8
  %995 = fmul double %993, %994
  store double %995, ptr %5, align 8
  %996 = load double, ptr %3, align 8
  %997 = load double, ptr @A6, align 8
  %998 = load double, ptr %5, align 8
  %999 = load double, ptr @A5, align 8
  %1000 = call double @llvm.fmuladd.f64(double %997, double %998, double %999)
  %1001 = load double, ptr %5, align 8
  %1002 = load double, ptr @A4, align 8
  %1003 = call double @llvm.fmuladd.f64(double %1000, double %1001, double %1002)
  %1004 = load double, ptr %5, align 8
  %1005 = load double, ptr @A3, align 8
  %1006 = call double @llvm.fmuladd.f64(double %1003, double %1004, double %1005)
  %1007 = load double, ptr %5, align 8
  %1008 = load double, ptr @A2, align 8
  %1009 = call double @llvm.fmuladd.f64(double %1006, double %1007, double %1008)
  %1010 = load double, ptr %5, align 8
  %1011 = load double, ptr @A1, align 8
  %1012 = call double @llvm.fmuladd.f64(double %1009, double %1010, double %1011)
  %1013 = load double, ptr %5, align 8
  %1014 = load double, ptr @one, align 8
  %1015 = call double @llvm.fmuladd.f64(double %1012, double %1013, double %1014)
  %1016 = fmul double %996, %1015
  store double %1016, ptr @sa, align 8
  %1017 = load double, ptr %5, align 8
  %1018 = load double, ptr %5, align 8
  %1019 = load double, ptr %5, align 8
  %1020 = load double, ptr %5, align 8
  %1021 = load double, ptr %5, align 8
  %1022 = load double, ptr @B6, align 8
  %1023 = load double, ptr %5, align 8
  %1024 = load double, ptr @B5, align 8
  %1025 = call double @llvm.fmuladd.f64(double %1022, double %1023, double %1024)
  %1026 = load double, ptr @B4, align 8
  %1027 = call double @llvm.fmuladd.f64(double %1021, double %1025, double %1026)
  %1028 = load double, ptr @B3, align 8
  %1029 = call double @llvm.fmuladd.f64(double %1020, double %1027, double %1028)
  %1030 = load double, ptr @B2, align 8
  %1031 = call double @llvm.fmuladd.f64(double %1019, double %1029, double %1030)
  %1032 = load double, ptr @B1, align 8
  %1033 = call double @llvm.fmuladd.f64(double %1018, double %1031, double %1032)
  %1034 = load double, ptr @one, align 8
  %1035 = call double @llvm.fmuladd.f64(double %1017, double %1033, double %1034)
  store double %1035, ptr @sb, align 8
  %1036 = load double, ptr @sa, align 8
  %1037 = load double, ptr @sb, align 8
  %1038 = fmul double %1036, %1037
  %1039 = load double, ptr @sb, align 8
  %1040 = fmul double %1038, %1039
  store double %1040, ptr @sa, align 8
  %1041 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1042 = fdiv double %1041, 3.000000e+01
  store double %1042, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1043 = load double, ptr %6, align 8
  %1044 = load double, ptr @sa, align 8
  %1045 = load double, ptr @two, align 8
  %1046 = load double, ptr %2, align 8
  %1047 = call double @llvm.fmuladd.f64(double %1045, double %1046, double %1044)
  %1048 = fmul double %1043, %1047
  %1049 = load double, ptr @two, align 8
  %1050 = fdiv double %1048, %1049
  store double %1050, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1051 = load double, ptr @sa, align 8
  %1052 = load double, ptr @sb, align 8
  %1053 = fsub double %1051, %1052
  store double %1053, ptr @sc, align 8
  %1054 = load double, ptr @one, align 8
  %1055 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1056 = fdiv double %1054, %1055
  store double %1056, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1057 = load double, ptr @sc, align 8
  %1058 = fmul double %1057, 1.000000e-30
  %1059 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1060 = fmul double %1059, 1.000000e-30
  %1061 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1062 = fmul double %1061, 1.000000e-30
  %1063 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1058, double noundef %1060, double noundef %1062)
  %1064 = load double, ptr @five, align 8
  %1065 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1066 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1067 = fsub double %1065, %1066
  %1068 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1069 = call double @llvm.fmuladd.f64(double %1064, double %1067, double %1068)
  %1070 = fdiv double %1069, 5.200000e+01
  store double %1070, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1071 = load double, ptr @one, align 8
  %1072 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1073 = fdiv double %1071, %1072
  store double %1073, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1074 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1075 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1076 = fadd double %1074, %1075
  %1077 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1078 = fadd double %1076, %1077
  %1079 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1080 = fadd double %1078, %1079
  %1081 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1082 = fadd double %1080, %1081
  store double %1082, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1083 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1084 = load double, ptr @four, align 8
  %1085 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1086 = call double @llvm.fmuladd.f64(double %1084, double %1085, double %1083)
  %1087 = fdiv double %1086, 1.520000e+02
  store double %1087, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1088 = load double, ptr @one, align 8
  %1089 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1090 = fdiv double %1088, %1089
  store double %1090, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1091 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1092 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1093 = fadd double %1091, %1092
  %1094 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1095 = fadd double %1093, %1094
  %1096 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1097 = fadd double %1095, %1096
  %1098 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1099 = fadd double %1097, %1098
  store double %1099, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1100 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1102 = fadd double %1100, %1101
  %1103 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1104 = fadd double %1102, %1103
  %1105 = fdiv double %1104, 1.460000e+02
  store double %1105, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1106 = load double, ptr @one, align 8
  %1107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1108 = fdiv double %1106, %1107
  store double %1108, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1109 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1111 = fadd double %1109, %1110
  %1112 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1113 = fadd double %1111, %1112
  %1114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1115 = fadd double %1113, %1114
  %1116 = fdiv double %1115, 9.100000e+01
  store double %1116, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1117 = load double, ptr @one, align 8
  %1118 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1119 = fdiv double %1117, %1118
  store double %1119, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1120 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1121 = load i32, ptr %10, align 4
  %1122 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1121)
  %1123 = load double, ptr @nulltime, align 8
  %1124 = fmul double %1123, 1.000000e-30
  %1125 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1124)
  %1126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1127 = fmul double %1126, 1.000000e-30
  %1128 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1127)
  %1129 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1130 = fmul double %1129, 1.000000e-30
  %1131 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1130)
  %1132 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1133 = fmul double %1132, 1.000000e-30
  %1134 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1133)
  %1135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1136 = fmul double %1135, 1.000000e-30
  %1137 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1136)
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
