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

26:                                               ; preds = %._crit_edge
  %27 = load double, ptr @sa, align 8
  %28 = load double, ptr @TLimit, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %.lr.ph2, label %.loopexit, !llvm.loop !7

.lr.ph2:                                          ; preds = %0, %26
  %30 = load i32, ptr %11, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, ptr %11, align 4
  %32 = load double, ptr @one, align 8
  %33 = load i32, ptr %11, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %32, %34
  store double %35, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %36 = load double, ptr @one, align 8
  store double %36, ptr %5, align 8
  %37 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %38 = load i32, ptr %9, align 4
  %39 = load i32, ptr %11, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph2, %.lr.ph
  %42 = load double, ptr %4, align 8
  %43 = load double, ptr %5, align 8
  %44 = fadd double %42, %43
  store double %44, ptr %4, align 8
  %45 = load double, ptr %4, align 8
  %46 = load double, ptr %6, align 8
  %47 = fmul double %45, %46
  store double %47, ptr %3, align 8
  %48 = load double, ptr %2, align 8
  %49 = load double, ptr @D1, align 8
  %50 = load double, ptr %3, align 8
  %51 = load double, ptr @D2, align 8
  %52 = load double, ptr %3, align 8
  %53 = load double, ptr @D3, align 8
  %54 = call double @llvm.fmuladd.f64(double %52, double %53, double %51)
  %55 = call double @llvm.fmuladd.f64(double %50, double %54, double %49)
  %56 = load double, ptr %5, align 8
  %57 = load double, ptr %3, align 8
  %58 = load double, ptr @D1, align 8
  %59 = load double, ptr %3, align 8
  %60 = load double, ptr @E2, align 8
  %61 = load double, ptr %3, align 8
  %62 = load double, ptr @E3, align 8
  %63 = call double @llvm.fmuladd.f64(double %61, double %62, double %60)
  %64 = call double @llvm.fmuladd.f64(double %59, double %63, double %58)
  %65 = call double @llvm.fmuladd.f64(double %57, double %64, double %56)
  %66 = fdiv double %55, %65
  %67 = fadd double %48, %66
  store double %67, ptr %2, align 8
  %68 = load i32, ptr %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %9, align 4
  %70 = load i32, ptr %9, align 4
  %71 = load i32, ptr %11, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph2
  %74 = call i32 @dtime(ptr noundef @TimeArray)
  %75 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %75, ptr @sa, align 8
  %76 = load i32, ptr %11, align 4
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %.loopexit, label %26

.loopexit:                                        ; preds = %0, %26, %._crit_edge
  store double 1.589500e-02, ptr @scale, align 8
  %79 = load double, ptr @scale, align 8
  store double %79, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %80 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %81 = load i32, ptr %9, align 4
  %82 = load i32, ptr %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.loopexit, %.lr.ph4
  %85 = load i32, ptr %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %9, align 4
  %87 = load i32, ptr %9, align 4
  %88 = load i32, ptr %11, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %.lr.ph4, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %.lr.ph4, %.loopexit
  %91 = call i32 @dtime(ptr noundef @TimeArray)
  %92 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %93 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %94 = fmul double %92, %93
  store double %94, ptr @nulltime, align 8
  %95 = load double, ptr @nulltime, align 8
  %96 = fcmp olt double %95, 0.000000e+00
  br i1 %96, label %97, label %98

97:                                               ; preds = %._crit_edge5
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %98

98:                                               ; preds = %97, %._crit_edge5
  %99 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %100 = load double, ptr @sa, align 8
  %101 = load double, ptr @nulltime, align 8
  %102 = fneg double %101
  %103 = call double @llvm.fmuladd.f64(double %99, double %100, double %102)
  store double %103, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %104 = load double, ptr @D1, align 8
  %105 = load double, ptr @D2, align 8
  %106 = fadd double %104, %105
  %107 = load double, ptr @D3, align 8
  %108 = fadd double %106, %107
  %109 = load double, ptr @one, align 8
  %110 = load double, ptr @D1, align 8
  %111 = fadd double %109, %110
  %112 = load double, ptr @E2, align 8
  %113 = fadd double %111, %112
  %114 = load double, ptr @E3, align 8
  %115 = fadd double %113, %114
  %116 = fdiv double %108, %115
  store double %116, ptr @sa, align 8
  %117 = load double, ptr @D1, align 8
  store double %117, ptr @sb, align 8
  %118 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %119 = fdiv double %118, 1.400000e+01
  store double %119, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %120 = load double, ptr %6, align 8
  %121 = load double, ptr @sa, align 8
  %122 = load double, ptr @sb, align 8
  %123 = fadd double %121, %122
  %124 = load double, ptr @two, align 8
  %125 = load double, ptr %2, align 8
  %126 = call double @llvm.fmuladd.f64(double %124, double %125, double %123)
  %127 = fmul double %120, %126
  %128 = load double, ptr @two, align 8
  %129 = fdiv double %127, %128
  store double %129, ptr @sa, align 8
  %130 = load double, ptr @one, align 8
  %131 = load double, ptr @sa, align 8
  %132 = fdiv double %130, %131
  store double %132, ptr @sb, align 8
  %133 = load double, ptr @sb, align 8
  %134 = fptosi double %133 to i32
  %135 = mul nsw i32 40000, %134
  %136 = sitofp i32 %135 to double
  %137 = load double, ptr @scale, align 8
  %138 = fdiv double %136, %137
  %139 = fptosi double %138 to i32
  store i32 %139, ptr %11, align 4
  %140 = load double, ptr @sb, align 8
  %141 = fsub double %140, 2.520000e+01
  store double %141, ptr @sc, align 8
  %142 = load double, ptr @one, align 8
  %143 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %144 = fdiv double %142, %143
  store double %144, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %145 = load double, ptr @sc, align 8
  %146 = fmul double %145, 1.000000e-30
  %147 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %148 = fmul double %147, 1.000000e-30
  %149 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %150 = fmul double %149, 1.000000e-30
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %146, double noundef %148, double noundef %150)
  %152 = load i32, ptr %11, align 4
  store i32 %152, ptr %10, align 4
  %153 = load double, ptr @five, align 8
  %154 = fneg double %153
  store double %154, ptr %2, align 8
  %155 = load double, ptr @one, align 8
  %156 = fneg double %155
  store double %156, ptr @sa, align 8
  %157 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %158 = load i32, ptr %9, align 4
  %159 = load i32, ptr %10, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %98, %.lr.ph7
  %161 = load double, ptr %2, align 8
  %162 = fneg double %161
  store double %162, ptr %2, align 8
  %163 = load double, ptr @sa, align 8
  %164 = load double, ptr %2, align 8
  %165 = fadd double %163, %164
  store double %165, ptr @sa, align 8
  %166 = load i32, ptr %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %9, align 4
  %168 = load i32, ptr %9, align 4
  %169 = load i32, ptr %10, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %.lr.ph7, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %.lr.ph7, %98
  %171 = call i32 @dtime(ptr noundef @TimeArray)
  %172 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %173 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %174 = fmul double %172, %173
  store double %174, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %176 = fcmp olt double %175, 0.000000e+00
  br i1 %176, label %177, label %178

177:                                              ; preds = %._crit_edge8
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %178

178:                                              ; preds = %177, %._crit_edge8
  %179 = load i32, ptr %10, align 4
  %180 = sitofp i32 %179 to double
  store double %180, ptr @sc, align 8
  %181 = load double, ptr @sa, align 8
  store double %181, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %182 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %183 = load i32, ptr %9, align 4
  %184 = load i32, ptr %10, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %178, %.lr.ph10
  %186 = load double, ptr %2, align 8
  %187 = fneg double %186
  store double %187, ptr %2, align 8
  %188 = load double, ptr @sa, align 8
  %189 = load double, ptr %2, align 8
  %190 = fadd double %188, %189
  store double %190, ptr @sa, align 8
  %191 = load double, ptr %3, align 8
  %192 = load double, ptr @two, align 8
  %193 = fadd double %191, %192
  store double %193, ptr %3, align 8
  %194 = load double, ptr %6, align 8
  %195 = load double, ptr %2, align 8
  %196 = load double, ptr %3, align 8
  %197 = fsub double %195, %196
  %198 = fadd double %194, %197
  store double %198, ptr %6, align 8
  %199 = load double, ptr %4, align 8
  %200 = load double, ptr %2, align 8
  %201 = load double, ptr %3, align 8
  %202 = fneg double %200
  %203 = call double @llvm.fmuladd.f64(double %202, double %201, double %199)
  store double %203, ptr %4, align 8
  %204 = load double, ptr %5, align 8
  %205 = load double, ptr %2, align 8
  %206 = load double, ptr %3, align 8
  %207 = fdiv double %205, %206
  %208 = fadd double %204, %207
  store double %208, ptr %5, align 8
  %209 = load i32, ptr %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %9, align 4
  %211 = load i32, ptr %9, align 4
  %212 = load i32, ptr %10, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %.lr.ph10, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %.lr.ph10, %178
  %214 = call i32 @dtime(ptr noundef @TimeArray)
  %215 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %216 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %217 = fmul double %215, %216
  store double %217, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %218 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %219 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %220 = fsub double %218, %219
  %221 = fdiv double %220, 7.000000e+00
  store double %221, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %222 = load double, ptr @sa, align 8
  %223 = load double, ptr %6, align 8
  %224 = fmul double %222, %223
  %225 = load double, ptr @sc, align 8
  %226 = fdiv double %224, %225
  %227 = fptosi double %226 to i32
  store i32 %227, ptr %10, align 4
  %228 = load double, ptr @four, align 8
  %229 = load double, ptr %5, align 8
  %230 = fmul double %228, %229
  %231 = load double, ptr @five, align 8
  %232 = fdiv double %230, %231
  store double %232, ptr @sa, align 8
  %233 = load double, ptr @sa, align 8
  %234 = load double, ptr @five, align 8
  %235 = load double, ptr %4, align 8
  %236 = fdiv double %234, %235
  %237 = fadd double %233, %236
  store double %237, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %238 = load double, ptr @sb, align 8
  %239 = load double, ptr @sc, align 8
  %240 = load double, ptr %4, align 8
  %241 = load double, ptr %4, align 8
  %242 = fmul double %240, %241
  %243 = load double, ptr %4, align 8
  %244 = fmul double %242, %243
  %245 = fdiv double %239, %244
  %246 = fsub double %238, %245
  store double %246, ptr @piprg, align 8
  %247 = load double, ptr @piprg, align 8
  %248 = load double, ptr @piref, align 8
  %249 = fsub double %247, %248
  store double %249, ptr @pierr, align 8
  %250 = load double, ptr @one, align 8
  %251 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %252 = fdiv double %250, %251
  store double %252, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %253 = load double, ptr @pierr, align 8
  %254 = fmul double %253, 1.000000e-30
  %255 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %256 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %257 = fsub double %255, %256
  %258 = fmul double %257, 1.000000e-30
  %259 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %260 = fmul double %259, 1.000000e-30
  %261 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %254, double noundef %258, double noundef %260)
  %262 = load double, ptr @piref, align 8
  %263 = load double, ptr @three, align 8
  %264 = load i32, ptr %10, align 4
  %265 = sitofp i32 %264 to double
  %266 = fmul double %263, %265
  %267 = fdiv double %262, %266
  store double %267, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %268 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %269 = load i32, ptr %9, align 4
  %270 = load i32, ptr %10, align 4
  %271 = sub nsw i32 %270, 1
  %272 = icmp sle i32 %269, %271
  br i1 %272, label %.lr.ph13, label %._crit_edge14

.lr.ph13:                                         ; preds = %._crit_edge11, %.lr.ph13
  %273 = load double, ptr %4, align 8
  %274 = load double, ptr @one, align 8
  %275 = fadd double %273, %274
  store double %275, ptr %4, align 8
  %276 = load double, ptr %4, align 8
  %277 = load double, ptr %6, align 8
  %278 = fmul double %276, %277
  store double %278, ptr %3, align 8
  %279 = load double, ptr %3, align 8
  %280 = load double, ptr %3, align 8
  %281 = fmul double %279, %280
  store double %281, ptr %5, align 8
  %282 = load double, ptr %2, align 8
  %283 = load double, ptr %3, align 8
  %284 = load double, ptr @A6, align 8
  %285 = load double, ptr %5, align 8
  %286 = load double, ptr @A5, align 8
  %287 = fneg double %286
  %288 = call double @llvm.fmuladd.f64(double %284, double %285, double %287)
  %289 = load double, ptr %5, align 8
  %290 = load double, ptr @A4, align 8
  %291 = call double @llvm.fmuladd.f64(double %288, double %289, double %290)
  %292 = load double, ptr %5, align 8
  %293 = load double, ptr @A3, align 8
  %294 = fneg double %293
  %295 = call double @llvm.fmuladd.f64(double %291, double %292, double %294)
  %296 = load double, ptr %5, align 8
  %297 = load double, ptr @A2, align 8
  %298 = call double @llvm.fmuladd.f64(double %295, double %296, double %297)
  %299 = load double, ptr %5, align 8
  %300 = load double, ptr @A1, align 8
  %301 = call double @llvm.fmuladd.f64(double %298, double %299, double %300)
  %302 = load double, ptr %5, align 8
  %303 = load double, ptr @one, align 8
  %304 = call double @llvm.fmuladd.f64(double %301, double %302, double %303)
  %305 = call double @llvm.fmuladd.f64(double %283, double %304, double %282)
  store double %305, ptr %2, align 8
  %306 = load i32, ptr %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, ptr %9, align 4
  %308 = load i32, ptr %9, align 4
  %309 = load i32, ptr %10, align 4
  %310 = sub nsw i32 %309, 1
  %311 = icmp sle i32 %308, %310
  br i1 %311, label %.lr.ph13, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %.lr.ph13, %._crit_edge11
  %312 = call i32 @dtime(ptr noundef @TimeArray)
  %313 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %314 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %315 = load double, ptr @nulltime, align 8
  %316 = fneg double %315
  %317 = call double @llvm.fmuladd.f64(double %313, double %314, double %316)
  store double %317, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %318 = load double, ptr @piref, align 8
  %319 = load double, ptr @three, align 8
  %320 = fdiv double %318, %319
  store double %320, ptr %3, align 8
  %321 = load double, ptr %3, align 8
  %322 = load double, ptr %3, align 8
  %323 = fmul double %321, %322
  store double %323, ptr %5, align 8
  %324 = load double, ptr %3, align 8
  %325 = load double, ptr @A6, align 8
  %326 = load double, ptr %5, align 8
  %327 = load double, ptr @A5, align 8
  %328 = fneg double %327
  %329 = call double @llvm.fmuladd.f64(double %325, double %326, double %328)
  %330 = load double, ptr %5, align 8
  %331 = load double, ptr @A4, align 8
  %332 = call double @llvm.fmuladd.f64(double %329, double %330, double %331)
  %333 = load double, ptr %5, align 8
  %334 = load double, ptr @A3, align 8
  %335 = fneg double %334
  %336 = call double @llvm.fmuladd.f64(double %332, double %333, double %335)
  %337 = load double, ptr %5, align 8
  %338 = load double, ptr @A2, align 8
  %339 = call double @llvm.fmuladd.f64(double %336, double %337, double %338)
  %340 = load double, ptr %5, align 8
  %341 = load double, ptr @A1, align 8
  %342 = call double @llvm.fmuladd.f64(double %339, double %340, double %341)
  %343 = load double, ptr %5, align 8
  %344 = load double, ptr @one, align 8
  %345 = call double @llvm.fmuladd.f64(double %342, double %343, double %344)
  %346 = fmul double %324, %345
  store double %346, ptr @sa, align 8
  %347 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %348 = fdiv double %347, 1.700000e+01
  store double %348, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %349 = load double, ptr %6, align 8
  %350 = load double, ptr @sa, align 8
  %351 = load double, ptr @two, align 8
  %352 = load double, ptr %2, align 8
  %353 = call double @llvm.fmuladd.f64(double %351, double %352, double %350)
  %354 = fmul double %349, %353
  %355 = load double, ptr @two, align 8
  %356 = fdiv double %354, %355
  store double %356, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %357 = load double, ptr @sa, align 8
  %358 = load double, ptr @sb, align 8
  %359 = fsub double %357, %358
  store double %359, ptr @sc, align 8
  %360 = load double, ptr @one, align 8
  %361 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %362 = fdiv double %360, %361
  store double %362, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %363 = load double, ptr @sc, align 8
  %364 = fmul double %363, 1.000000e-30
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %366 = fmul double %365, 1.000000e-30
  %367 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %368 = fmul double %367, 1.000000e-30
  %369 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %364, double noundef %366, double noundef %368)
  %370 = load double, ptr @A3, align 8
  %371 = fneg double %370
  store double %371, ptr @A3, align 8
  %372 = load double, ptr @A5, align 8
  %373 = fneg double %372
  store double %373, ptr @A5, align 8
  %374 = load double, ptr @piref, align 8
  %375 = load double, ptr @three, align 8
  %376 = load i32, ptr %10, align 4
  %377 = sitofp i32 %376 to double
  %378 = fmul double %375, %377
  %379 = fdiv double %374, %378
  store double %379, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %380 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %381 = load i32, ptr %9, align 4
  %382 = load i32, ptr %10, align 4
  %383 = sub nsw i32 %382, 1
  %384 = icmp sle i32 %381, %383
  br i1 %384, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %._crit_edge14, %.lr.ph16
  %385 = load i32, ptr %9, align 4
  %386 = sitofp i32 %385 to double
  %387 = load double, ptr %6, align 8
  %388 = fmul double %386, %387
  store double %388, ptr %3, align 8
  %389 = load double, ptr %3, align 8
  %390 = load double, ptr %3, align 8
  %391 = fmul double %389, %390
  store double %391, ptr %5, align 8
  %392 = load double, ptr %2, align 8
  %393 = load double, ptr %5, align 8
  %394 = load double, ptr %5, align 8
  %395 = load double, ptr %5, align 8
  %396 = load double, ptr %5, align 8
  %397 = load double, ptr %5, align 8
  %398 = load double, ptr @B6, align 8
  %399 = load double, ptr %5, align 8
  %400 = load double, ptr @B5, align 8
  %401 = call double @llvm.fmuladd.f64(double %398, double %399, double %400)
  %402 = load double, ptr @B4, align 8
  %403 = call double @llvm.fmuladd.f64(double %397, double %401, double %402)
  %404 = load double, ptr @B3, align 8
  %405 = call double @llvm.fmuladd.f64(double %396, double %403, double %404)
  %406 = load double, ptr @B2, align 8
  %407 = call double @llvm.fmuladd.f64(double %395, double %405, double %406)
  %408 = load double, ptr @B1, align 8
  %409 = call double @llvm.fmuladd.f64(double %394, double %407, double %408)
  %410 = call double @llvm.fmuladd.f64(double %393, double %409, double %392)
  %411 = load double, ptr @one, align 8
  %412 = fadd double %410, %411
  store double %412, ptr %2, align 8
  %413 = load i32, ptr %9, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, ptr %9, align 4
  %415 = load i32, ptr %9, align 4
  %416 = load i32, ptr %10, align 4
  %417 = sub nsw i32 %416, 1
  %418 = icmp sle i32 %415, %417
  br i1 %418, label %.lr.ph16, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %.lr.ph16, %._crit_edge14
  %419 = call i32 @dtime(ptr noundef @TimeArray)
  %420 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %421 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %422 = load double, ptr @nulltime, align 8
  %423 = fneg double %422
  %424 = call double @llvm.fmuladd.f64(double %420, double %421, double %423)
  store double %424, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %425 = load double, ptr @piref, align 8
  %426 = load double, ptr @three, align 8
  %427 = fdiv double %425, %426
  store double %427, ptr %3, align 8
  %428 = load double, ptr %3, align 8
  %429 = load double, ptr %3, align 8
  %430 = fmul double %428, %429
  store double %430, ptr %5, align 8
  %431 = load double, ptr %5, align 8
  %432 = load double, ptr %5, align 8
  %433 = load double, ptr %5, align 8
  %434 = load double, ptr %5, align 8
  %435 = load double, ptr %5, align 8
  %436 = load double, ptr @B6, align 8
  %437 = load double, ptr %5, align 8
  %438 = load double, ptr @B5, align 8
  %439 = call double @llvm.fmuladd.f64(double %436, double %437, double %438)
  %440 = load double, ptr @B4, align 8
  %441 = call double @llvm.fmuladd.f64(double %435, double %439, double %440)
  %442 = load double, ptr @B3, align 8
  %443 = call double @llvm.fmuladd.f64(double %434, double %441, double %442)
  %444 = load double, ptr @B2, align 8
  %445 = call double @llvm.fmuladd.f64(double %433, double %443, double %444)
  %446 = load double, ptr @B1, align 8
  %447 = call double @llvm.fmuladd.f64(double %432, double %445, double %446)
  %448 = load double, ptr @one, align 8
  %449 = call double @llvm.fmuladd.f64(double %431, double %447, double %448)
  store double %449, ptr @sa, align 8
  %450 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %451 = fdiv double %450, 1.500000e+01
  store double %451, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %452 = load double, ptr %6, align 8
  %453 = load double, ptr @sa, align 8
  %454 = load double, ptr @one, align 8
  %455 = fadd double %453, %454
  %456 = load double, ptr @two, align 8
  %457 = load double, ptr %2, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %457, double %455)
  %459 = fmul double %452, %458
  %460 = load double, ptr @two, align 8
  %461 = fdiv double %459, %460
  store double %461, ptr @sa, align 8
  %462 = load double, ptr @piref, align 8
  %463 = load double, ptr @three, align 8
  %464 = fdiv double %462, %463
  store double %464, ptr %3, align 8
  %465 = load double, ptr %3, align 8
  %466 = load double, ptr %3, align 8
  %467 = fmul double %465, %466
  store double %467, ptr %5, align 8
  %468 = load double, ptr %3, align 8
  %469 = load double, ptr @A6, align 8
  %470 = load double, ptr %5, align 8
  %471 = load double, ptr @A5, align 8
  %472 = call double @llvm.fmuladd.f64(double %469, double %470, double %471)
  %473 = load double, ptr %5, align 8
  %474 = load double, ptr @A4, align 8
  %475 = call double @llvm.fmuladd.f64(double %472, double %473, double %474)
  %476 = load double, ptr %5, align 8
  %477 = load double, ptr @A3, align 8
  %478 = call double @llvm.fmuladd.f64(double %475, double %476, double %477)
  %479 = load double, ptr %5, align 8
  %480 = load double, ptr @A2, align 8
  %481 = call double @llvm.fmuladd.f64(double %478, double %479, double %480)
  %482 = load double, ptr %5, align 8
  %483 = load double, ptr @A1, align 8
  %484 = call double @llvm.fmuladd.f64(double %481, double %482, double %483)
  %485 = load double, ptr %5, align 8
  %486 = load double, ptr @A0, align 8
  %487 = call double @llvm.fmuladd.f64(double %484, double %485, double %486)
  %488 = fmul double %468, %487
  store double %488, ptr @sb, align 8
  %489 = load double, ptr @sa, align 8
  %490 = load double, ptr @sb, align 8
  %491 = fsub double %489, %490
  store double %491, ptr @sc, align 8
  %492 = load double, ptr @one, align 8
  %493 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %494 = fdiv double %492, %493
  store double %494, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %495 = load double, ptr @sc, align 8
  %496 = fmul double %495, 1.000000e-30
  %497 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %498 = fmul double %497, 1.000000e-30
  %499 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %500 = fmul double %499, 1.000000e-30
  %501 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %496, double noundef %498, double noundef %500)
  %502 = load double, ptr @piref, align 8
  %503 = load double, ptr @three, align 8
  %504 = load i32, ptr %10, align 4
  %505 = sitofp i32 %504 to double
  %506 = fmul double %503, %505
  %507 = fdiv double %502, %506
  store double %507, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %508 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %509 = load i32, ptr %9, align 4
  %510 = load i32, ptr %10, align 4
  %511 = sub nsw i32 %510, 1
  %512 = icmp sle i32 %509, %511
  br i1 %512, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge17, %.lr.ph19
  %513 = load i32, ptr %9, align 4
  %514 = sitofp i32 %513 to double
  %515 = load double, ptr %6, align 8
  %516 = fmul double %514, %515
  store double %516, ptr %3, align 8
  %517 = load double, ptr %3, align 8
  %518 = load double, ptr %3, align 8
  %519 = fmul double %517, %518
  store double %519, ptr %5, align 8
  %520 = load double, ptr %3, align 8
  %521 = load double, ptr @A6, align 8
  %522 = load double, ptr %5, align 8
  %523 = load double, ptr @A5, align 8
  %524 = call double @llvm.fmuladd.f64(double %521, double %522, double %523)
  %525 = load double, ptr %5, align 8
  %526 = load double, ptr @A4, align 8
  %527 = call double @llvm.fmuladd.f64(double %524, double %525, double %526)
  %528 = load double, ptr %5, align 8
  %529 = load double, ptr @A3, align 8
  %530 = call double @llvm.fmuladd.f64(double %527, double %528, double %529)
  %531 = load double, ptr %5, align 8
  %532 = load double, ptr @A2, align 8
  %533 = call double @llvm.fmuladd.f64(double %530, double %531, double %532)
  %534 = load double, ptr %5, align 8
  %535 = load double, ptr @A1, align 8
  %536 = call double @llvm.fmuladd.f64(double %533, double %534, double %535)
  %537 = load double, ptr %5, align 8
  %538 = load double, ptr @one, align 8
  %539 = call double @llvm.fmuladd.f64(double %536, double %537, double %538)
  %540 = fmul double %520, %539
  store double %540, ptr %4, align 8
  %541 = load double, ptr %2, align 8
  %542 = load double, ptr %4, align 8
  %543 = load double, ptr %5, align 8
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr %5, align 8
  %547 = load double, ptr %5, align 8
  %548 = load double, ptr @B6, align 8
  %549 = load double, ptr %5, align 8
  %550 = load double, ptr @B5, align 8
  %551 = call double @llvm.fmuladd.f64(double %548, double %549, double %550)
  %552 = load double, ptr @B4, align 8
  %553 = call double @llvm.fmuladd.f64(double %547, double %551, double %552)
  %554 = load double, ptr @B3, align 8
  %555 = call double @llvm.fmuladd.f64(double %546, double %553, double %554)
  %556 = load double, ptr @B2, align 8
  %557 = call double @llvm.fmuladd.f64(double %545, double %555, double %556)
  %558 = load double, ptr @B1, align 8
  %559 = call double @llvm.fmuladd.f64(double %544, double %557, double %558)
  %560 = load double, ptr @one, align 8
  %561 = call double @llvm.fmuladd.f64(double %543, double %559, double %560)
  %562 = fdiv double %542, %561
  %563 = fadd double %541, %562
  store double %563, ptr %2, align 8
  %564 = load i32, ptr %9, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, ptr %9, align 4
  %566 = load i32, ptr %9, align 4
  %567 = load i32, ptr %10, align 4
  %568 = sub nsw i32 %567, 1
  %569 = icmp sle i32 %566, %568
  br i1 %569, label %.lr.ph19, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %.lr.ph19, %._crit_edge17
  %570 = call i32 @dtime(ptr noundef @TimeArray)
  %571 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %572 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %573 = load double, ptr @nulltime, align 8
  %574 = fneg double %573
  %575 = call double @llvm.fmuladd.f64(double %571, double %572, double %574)
  store double %575, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %576 = load double, ptr @piref, align 8
  %577 = load double, ptr @three, align 8
  %578 = fdiv double %576, %577
  store double %578, ptr %3, align 8
  %579 = load double, ptr %3, align 8
  %580 = load double, ptr %3, align 8
  %581 = fmul double %579, %580
  store double %581, ptr %5, align 8
  %582 = load double, ptr %3, align 8
  %583 = load double, ptr @A6, align 8
  %584 = load double, ptr %5, align 8
  %585 = load double, ptr @A5, align 8
  %586 = call double @llvm.fmuladd.f64(double %583, double %584, double %585)
  %587 = load double, ptr %5, align 8
  %588 = load double, ptr @A4, align 8
  %589 = call double @llvm.fmuladd.f64(double %586, double %587, double %588)
  %590 = load double, ptr %5, align 8
  %591 = load double, ptr @A3, align 8
  %592 = call double @llvm.fmuladd.f64(double %589, double %590, double %591)
  %593 = load double, ptr %5, align 8
  %594 = load double, ptr @A2, align 8
  %595 = call double @llvm.fmuladd.f64(double %592, double %593, double %594)
  %596 = load double, ptr %5, align 8
  %597 = load double, ptr @A1, align 8
  %598 = call double @llvm.fmuladd.f64(double %595, double %596, double %597)
  %599 = load double, ptr %5, align 8
  %600 = load double, ptr @one, align 8
  %601 = call double @llvm.fmuladd.f64(double %598, double %599, double %600)
  %602 = fmul double %582, %601
  store double %602, ptr @sa, align 8
  %603 = load double, ptr %5, align 8
  %604 = load double, ptr %5, align 8
  %605 = load double, ptr %5, align 8
  %606 = load double, ptr %5, align 8
  %607 = load double, ptr %5, align 8
  %608 = load double, ptr @B6, align 8
  %609 = load double, ptr %5, align 8
  %610 = load double, ptr @B5, align 8
  %611 = call double @llvm.fmuladd.f64(double %608, double %609, double %610)
  %612 = load double, ptr @B4, align 8
  %613 = call double @llvm.fmuladd.f64(double %607, double %611, double %612)
  %614 = load double, ptr @B3, align 8
  %615 = call double @llvm.fmuladd.f64(double %606, double %613, double %614)
  %616 = load double, ptr @B2, align 8
  %617 = call double @llvm.fmuladd.f64(double %605, double %615, double %616)
  %618 = load double, ptr @B1, align 8
  %619 = call double @llvm.fmuladd.f64(double %604, double %617, double %618)
  %620 = load double, ptr @one, align 8
  %621 = call double @llvm.fmuladd.f64(double %603, double %619, double %620)
  store double %621, ptr @sb, align 8
  %622 = load double, ptr @sa, align 8
  %623 = load double, ptr @sb, align 8
  %624 = fdiv double %622, %623
  store double %624, ptr @sa, align 8
  %625 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %626 = fdiv double %625, 2.900000e+01
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %627 = load double, ptr %6, align 8
  %628 = load double, ptr @sa, align 8
  %629 = load double, ptr @two, align 8
  %630 = load double, ptr %2, align 8
  %631 = call double @llvm.fmuladd.f64(double %629, double %630, double %628)
  %632 = fmul double %627, %631
  %633 = load double, ptr @two, align 8
  %634 = fdiv double %632, %633
  store double %634, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %635 = load double, ptr @sa, align 8
  %636 = load double, ptr @sb, align 8
  %637 = fsub double %635, %636
  store double %637, ptr @sc, align 8
  %638 = load double, ptr @one, align 8
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %640 = fdiv double %638, %639
  store double %640, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %641 = load double, ptr @sc, align 8
  %642 = fmul double %641, 1.000000e-30
  %643 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %644 = fmul double %643, 1.000000e-30
  %645 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %646 = fmul double %645, 1.000000e-30
  %647 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %642, double noundef %644, double noundef %646)
  %648 = load double, ptr @piref, align 8
  %649 = load double, ptr @four, align 8
  %650 = load i32, ptr %10, align 4
  %651 = sitofp i32 %650 to double
  %652 = fmul double %649, %651
  %653 = fdiv double %648, %652
  store double %653, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %654 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %655 = load i32, ptr %9, align 4
  %656 = load i32, ptr %10, align 4
  %657 = sub nsw i32 %656, 1
  %658 = icmp sle i32 %655, %657
  br i1 %658, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge20, %.lr.ph22
  %659 = load i32, ptr %9, align 4
  %660 = sitofp i32 %659 to double
  %661 = load double, ptr %6, align 8
  %662 = fmul double %660, %661
  store double %662, ptr %3, align 8
  %663 = load double, ptr %3, align 8
  %664 = load double, ptr %3, align 8
  %665 = fmul double %663, %664
  store double %665, ptr %5, align 8
  %666 = load double, ptr %3, align 8
  %667 = load double, ptr @A6, align 8
  %668 = load double, ptr %5, align 8
  %669 = load double, ptr @A5, align 8
  %670 = call double @llvm.fmuladd.f64(double %667, double %668, double %669)
  %671 = load double, ptr %5, align 8
  %672 = load double, ptr @A4, align 8
  %673 = call double @llvm.fmuladd.f64(double %670, double %671, double %672)
  %674 = load double, ptr %5, align 8
  %675 = load double, ptr @A3, align 8
  %676 = call double @llvm.fmuladd.f64(double %673, double %674, double %675)
  %677 = load double, ptr %5, align 8
  %678 = load double, ptr @A2, align 8
  %679 = call double @llvm.fmuladd.f64(double %676, double %677, double %678)
  %680 = load double, ptr %5, align 8
  %681 = load double, ptr @A1, align 8
  %682 = call double @llvm.fmuladd.f64(double %679, double %680, double %681)
  %683 = load double, ptr %5, align 8
  %684 = load double, ptr @one, align 8
  %685 = call double @llvm.fmuladd.f64(double %682, double %683, double %684)
  %686 = fmul double %666, %685
  store double %686, ptr %4, align 8
  %687 = load double, ptr %2, align 8
  %688 = load double, ptr %4, align 8
  %689 = load double, ptr %5, align 8
  %690 = load double, ptr %5, align 8
  %691 = load double, ptr %5, align 8
  %692 = load double, ptr %5, align 8
  %693 = load double, ptr %5, align 8
  %694 = load double, ptr @B6, align 8
  %695 = load double, ptr %5, align 8
  %696 = load double, ptr @B5, align 8
  %697 = call double @llvm.fmuladd.f64(double %694, double %695, double %696)
  %698 = load double, ptr @B4, align 8
  %699 = call double @llvm.fmuladd.f64(double %693, double %697, double %698)
  %700 = load double, ptr @B3, align 8
  %701 = call double @llvm.fmuladd.f64(double %692, double %699, double %700)
  %702 = load double, ptr @B2, align 8
  %703 = call double @llvm.fmuladd.f64(double %691, double %701, double %702)
  %704 = load double, ptr @B1, align 8
  %705 = call double @llvm.fmuladd.f64(double %690, double %703, double %704)
  %706 = load double, ptr @one, align 8
  %707 = call double @llvm.fmuladd.f64(double %689, double %705, double %706)
  %708 = call double @llvm.fmuladd.f64(double %688, double %707, double %687)
  store double %708, ptr %2, align 8
  %709 = load i32, ptr %9, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, ptr %9, align 4
  %711 = load i32, ptr %9, align 4
  %712 = load i32, ptr %10, align 4
  %713 = sub nsw i32 %712, 1
  %714 = icmp sle i32 %711, %713
  br i1 %714, label %.lr.ph22, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %.lr.ph22, %._crit_edge20
  %715 = call i32 @dtime(ptr noundef @TimeArray)
  %716 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %717 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %718 = load double, ptr @nulltime, align 8
  %719 = fneg double %718
  %720 = call double @llvm.fmuladd.f64(double %716, double %717, double %719)
  store double %720, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %721 = load double, ptr @piref, align 8
  %722 = load double, ptr @four, align 8
  %723 = fdiv double %721, %722
  store double %723, ptr %3, align 8
  %724 = load double, ptr %3, align 8
  %725 = load double, ptr %3, align 8
  %726 = fmul double %724, %725
  store double %726, ptr %5, align 8
  %727 = load double, ptr %3, align 8
  %728 = load double, ptr @A6, align 8
  %729 = load double, ptr %5, align 8
  %730 = load double, ptr @A5, align 8
  %731 = call double @llvm.fmuladd.f64(double %728, double %729, double %730)
  %732 = load double, ptr %5, align 8
  %733 = load double, ptr @A4, align 8
  %734 = call double @llvm.fmuladd.f64(double %731, double %732, double %733)
  %735 = load double, ptr %5, align 8
  %736 = load double, ptr @A3, align 8
  %737 = call double @llvm.fmuladd.f64(double %734, double %735, double %736)
  %738 = load double, ptr %5, align 8
  %739 = load double, ptr @A2, align 8
  %740 = call double @llvm.fmuladd.f64(double %737, double %738, double %739)
  %741 = load double, ptr %5, align 8
  %742 = load double, ptr @A1, align 8
  %743 = call double @llvm.fmuladd.f64(double %740, double %741, double %742)
  %744 = load double, ptr %5, align 8
  %745 = load double, ptr @one, align 8
  %746 = call double @llvm.fmuladd.f64(double %743, double %744, double %745)
  %747 = fmul double %727, %746
  store double %747, ptr @sa, align 8
  %748 = load double, ptr %5, align 8
  %749 = load double, ptr %5, align 8
  %750 = load double, ptr %5, align 8
  %751 = load double, ptr %5, align 8
  %752 = load double, ptr %5, align 8
  %753 = load double, ptr @B6, align 8
  %754 = load double, ptr %5, align 8
  %755 = load double, ptr @B5, align 8
  %756 = call double @llvm.fmuladd.f64(double %753, double %754, double %755)
  %757 = load double, ptr @B4, align 8
  %758 = call double @llvm.fmuladd.f64(double %752, double %756, double %757)
  %759 = load double, ptr @B3, align 8
  %760 = call double @llvm.fmuladd.f64(double %751, double %758, double %759)
  %761 = load double, ptr @B2, align 8
  %762 = call double @llvm.fmuladd.f64(double %750, double %760, double %761)
  %763 = load double, ptr @B1, align 8
  %764 = call double @llvm.fmuladd.f64(double %749, double %762, double %763)
  %765 = load double, ptr @one, align 8
  %766 = call double @llvm.fmuladd.f64(double %748, double %764, double %765)
  store double %766, ptr @sb, align 8
  %767 = load double, ptr @sa, align 8
  %768 = load double, ptr @sb, align 8
  %769 = fmul double %767, %768
  store double %769, ptr @sa, align 8
  %770 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %771 = fdiv double %770, 2.900000e+01
  store double %771, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %772 = load double, ptr %6, align 8
  %773 = load double, ptr @sa, align 8
  %774 = load double, ptr @two, align 8
  %775 = load double, ptr %2, align 8
  %776 = call double @llvm.fmuladd.f64(double %774, double %775, double %773)
  %777 = fmul double %772, %776
  %778 = load double, ptr @two, align 8
  %779 = fdiv double %777, %778
  store double %779, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %780 = load double, ptr @sa, align 8
  %781 = load double, ptr @sb, align 8
  %782 = fsub double %780, %781
  store double %782, ptr @sc, align 8
  %783 = load double, ptr @one, align 8
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %785 = fdiv double %783, %784
  store double %785, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %786 = load double, ptr @sc, align 8
  %787 = fmul double %786, 1.000000e-30
  %788 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %789 = fmul double %788, 1.000000e-30
  %790 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %791 = fmul double %790, 1.000000e-30
  %792 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %787, double noundef %789, double noundef %791)
  store double 0.000000e+00, ptr %2, align 8
  %793 = load double, ptr @one, align 8
  store double %793, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %794 = load double, ptr @sa, align 8
  %795 = load i32, ptr %10, align 4
  %796 = sitofp i32 %795 to double
  %797 = fdiv double %794, %796
  store double %797, ptr %4, align 8
  %798 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %799 = load i32, ptr %9, align 4
  %800 = load i32, ptr %10, align 4
  %801 = sub nsw i32 %800, 1
  %802 = icmp sle i32 %799, %801
  br i1 %802, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %._crit_edge23, %.lr.ph25
  %803 = load i32, ptr %9, align 4
  %804 = sitofp i32 %803 to double
  %805 = load double, ptr %4, align 8
  %806 = fmul double %804, %805
  store double %806, ptr %6, align 8
  %807 = load double, ptr %6, align 8
  %808 = load double, ptr %6, align 8
  %809 = fmul double %807, %808
  store double %809, ptr %3, align 8
  %810 = load double, ptr %2, align 8
  %811 = load double, ptr %5, align 8
  %812 = load double, ptr %6, align 8
  %813 = load double, ptr %5, align 8
  %814 = fadd double %812, %813
  %815 = fdiv double %811, %814
  %816 = fsub double %810, %815
  %817 = load double, ptr %6, align 8
  %818 = load double, ptr %3, align 8
  %819 = load double, ptr %5, align 8
  %820 = fadd double %818, %819
  %821 = fdiv double %817, %820
  %822 = fsub double %816, %821
  %823 = load double, ptr %3, align 8
  %824 = load double, ptr %6, align 8
  %825 = load double, ptr %3, align 8
  %826 = load double, ptr %5, align 8
  %827 = call double @llvm.fmuladd.f64(double %824, double %825, double %826)
  %828 = fdiv double %823, %827
  %829 = fsub double %822, %828
  store double %829, ptr %2, align 8
  %830 = load i32, ptr %9, align 4
  %831 = add nsw i32 %830, 1
  store i32 %831, ptr %9, align 4
  %832 = load i32, ptr %9, align 4
  %833 = load i32, ptr %10, align 4
  %834 = sub nsw i32 %833, 1
  %835 = icmp sle i32 %832, %834
  br i1 %835, label %.lr.ph25, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %.lr.ph25, %._crit_edge23
  %836 = call i32 @dtime(ptr noundef @TimeArray)
  %837 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %839 = load double, ptr @nulltime, align 8
  %840 = fneg double %839
  %841 = call double @llvm.fmuladd.f64(double %837, double %838, double %840)
  store double %841, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %842 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %843 = fdiv double %842, 1.200000e+01
  store double %843, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %844 = load double, ptr @sa, align 8
  store double %844, ptr %6, align 8
  %845 = load double, ptr %6, align 8
  %846 = load double, ptr %6, align 8
  %847 = fmul double %845, %846
  store double %847, ptr %3, align 8
  %848 = load double, ptr %5, align 8
  %849 = fneg double %848
  %850 = load double, ptr %5, align 8
  %851 = load double, ptr %6, align 8
  %852 = load double, ptr %5, align 8
  %853 = fadd double %851, %852
  %854 = fdiv double %850, %853
  %855 = fsub double %849, %854
  %856 = load double, ptr %6, align 8
  %857 = load double, ptr %3, align 8
  %858 = load double, ptr %5, align 8
  %859 = fadd double %857, %858
  %860 = fdiv double %856, %859
  %861 = fsub double %855, %860
  %862 = load double, ptr %3, align 8
  %863 = load double, ptr %6, align 8
  %864 = load double, ptr %3, align 8
  %865 = load double, ptr %5, align 8
  %866 = call double @llvm.fmuladd.f64(double %863, double %864, double %865)
  %867 = fdiv double %862, %866
  %868 = fsub double %861, %867
  store double %868, ptr @sa, align 8
  %869 = load double, ptr %4, align 8
  %870 = fmul double 1.800000e+01, %869
  %871 = load double, ptr @sa, align 8
  %872 = load double, ptr @two, align 8
  %873 = load double, ptr %2, align 8
  %874 = call double @llvm.fmuladd.f64(double %872, double %873, double %871)
  %875 = fmul double %870, %874
  store double %875, ptr @sa, align 8
  %876 = load double, ptr @sa, align 8
  %877 = fptosi double %876 to i32
  %878 = mul nsw i32 -2000, %877
  store i32 %878, ptr %10, align 4
  %879 = load i32, ptr %10, align 4
  %880 = sitofp i32 %879 to double
  %881 = load double, ptr @scale, align 8
  %882 = fdiv double %880, %881
  %883 = fptosi double %882 to i32
  store i32 %883, ptr %10, align 4
  %884 = load double, ptr @sa, align 8
  %885 = fadd double %884, 5.002000e+02
  store double %885, ptr @sc, align 8
  %886 = load double, ptr @one, align 8
  %887 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %888 = fdiv double %886, %887
  store double %888, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %889 = load double, ptr @sc, align 8
  %890 = fmul double %889, 1.000000e-30
  %891 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %892 = fmul double %891, 1.000000e-30
  %893 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %894 = fmul double %893, 1.000000e-30
  %895 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %890, double noundef %892, double noundef %894)
  %896 = load double, ptr @piref, align 8
  %897 = load double, ptr @three, align 8
  %898 = load i32, ptr %10, align 4
  %899 = sitofp i32 %898 to double
  %900 = fmul double %897, %899
  %901 = fdiv double %896, %900
  store double %901, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %902 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %903 = load i32, ptr %9, align 4
  %904 = load i32, ptr %10, align 4
  %905 = sub nsw i32 %904, 1
  %906 = icmp sle i32 %903, %905
  br i1 %906, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %._crit_edge26, %.lr.ph28
  %907 = load i32, ptr %9, align 4
  %908 = sitofp i32 %907 to double
  %909 = load double, ptr %6, align 8
  %910 = fmul double %908, %909
  store double %910, ptr %3, align 8
  %911 = load double, ptr %3, align 8
  %912 = load double, ptr %3, align 8
  %913 = fmul double %911, %912
  store double %913, ptr %5, align 8
  %914 = load double, ptr %5, align 8
  %915 = load double, ptr %5, align 8
  %916 = load double, ptr %5, align 8
  %917 = load double, ptr %5, align 8
  %918 = load double, ptr %5, align 8
  %919 = load double, ptr @B6, align 8
  %920 = load double, ptr %5, align 8
  %921 = load double, ptr @B5, align 8
  %922 = call double @llvm.fmuladd.f64(double %919, double %920, double %921)
  %923 = load double, ptr @B4, align 8
  %924 = call double @llvm.fmuladd.f64(double %918, double %922, double %923)
  %925 = load double, ptr @B3, align 8
  %926 = call double @llvm.fmuladd.f64(double %917, double %924, double %925)
  %927 = load double, ptr @B2, align 8
  %928 = call double @llvm.fmuladd.f64(double %916, double %926, double %927)
  %929 = load double, ptr @B1, align 8
  %930 = call double @llvm.fmuladd.f64(double %915, double %928, double %929)
  %931 = load double, ptr @one, align 8
  %932 = call double @llvm.fmuladd.f64(double %914, double %930, double %931)
  store double %932, ptr %4, align 8
  %933 = load double, ptr %2, align 8
  %934 = load double, ptr %4, align 8
  %935 = load double, ptr %4, align 8
  %936 = fmul double %934, %935
  %937 = load double, ptr %3, align 8
  %938 = fmul double %936, %937
  %939 = load double, ptr @A6, align 8
  %940 = load double, ptr %5, align 8
  %941 = load double, ptr @A5, align 8
  %942 = call double @llvm.fmuladd.f64(double %939, double %940, double %941)
  %943 = load double, ptr %5, align 8
  %944 = load double, ptr @A4, align 8
  %945 = call double @llvm.fmuladd.f64(double %942, double %943, double %944)
  %946 = load double, ptr %5, align 8
  %947 = load double, ptr @A3, align 8
  %948 = call double @llvm.fmuladd.f64(double %945, double %946, double %947)
  %949 = load double, ptr %5, align 8
  %950 = load double, ptr @A2, align 8
  %951 = call double @llvm.fmuladd.f64(double %948, double %949, double %950)
  %952 = load double, ptr %5, align 8
  %953 = load double, ptr @A1, align 8
  %954 = call double @llvm.fmuladd.f64(double %951, double %952, double %953)
  %955 = load double, ptr %5, align 8
  %956 = load double, ptr @one, align 8
  %957 = call double @llvm.fmuladd.f64(double %954, double %955, double %956)
  %958 = call double @llvm.fmuladd.f64(double %938, double %957, double %933)
  store double %958, ptr %2, align 8
  %959 = load i32, ptr %9, align 4
  %960 = add nsw i32 %959, 1
  store i32 %960, ptr %9, align 4
  %961 = load i32, ptr %9, align 4
  %962 = load i32, ptr %10, align 4
  %963 = sub nsw i32 %962, 1
  %964 = icmp sle i32 %961, %963
  br i1 %964, label %.lr.ph28, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %.lr.ph28, %._crit_edge26
  %965 = call i32 @dtime(ptr noundef @TimeArray)
  %966 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %967 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %968 = load double, ptr @nulltime, align 8
  %969 = fneg double %968
  %970 = call double @llvm.fmuladd.f64(double %966, double %967, double %969)
  store double %970, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %971 = load double, ptr @piref, align 8
  %972 = load double, ptr @three, align 8
  %973 = fdiv double %971, %972
  store double %973, ptr %3, align 8
  %974 = load double, ptr %3, align 8
  %975 = load double, ptr %3, align 8
  %976 = fmul double %974, %975
  store double %976, ptr %5, align 8
  %977 = load double, ptr %3, align 8
  %978 = load double, ptr @A6, align 8
  %979 = load double, ptr %5, align 8
  %980 = load double, ptr @A5, align 8
  %981 = call double @llvm.fmuladd.f64(double %978, double %979, double %980)
  %982 = load double, ptr %5, align 8
  %983 = load double, ptr @A4, align 8
  %984 = call double @llvm.fmuladd.f64(double %981, double %982, double %983)
  %985 = load double, ptr %5, align 8
  %986 = load double, ptr @A3, align 8
  %987 = call double @llvm.fmuladd.f64(double %984, double %985, double %986)
  %988 = load double, ptr %5, align 8
  %989 = load double, ptr @A2, align 8
  %990 = call double @llvm.fmuladd.f64(double %987, double %988, double %989)
  %991 = load double, ptr %5, align 8
  %992 = load double, ptr @A1, align 8
  %993 = call double @llvm.fmuladd.f64(double %990, double %991, double %992)
  %994 = load double, ptr %5, align 8
  %995 = load double, ptr @one, align 8
  %996 = call double @llvm.fmuladd.f64(double %993, double %994, double %995)
  %997 = fmul double %977, %996
  store double %997, ptr @sa, align 8
  %998 = load double, ptr %5, align 8
  %999 = load double, ptr %5, align 8
  %1000 = load double, ptr %5, align 8
  %1001 = load double, ptr %5, align 8
  %1002 = load double, ptr %5, align 8
  %1003 = load double, ptr @B6, align 8
  %1004 = load double, ptr %5, align 8
  %1005 = load double, ptr @B5, align 8
  %1006 = call double @llvm.fmuladd.f64(double %1003, double %1004, double %1005)
  %1007 = load double, ptr @B4, align 8
  %1008 = call double @llvm.fmuladd.f64(double %1002, double %1006, double %1007)
  %1009 = load double, ptr @B3, align 8
  %1010 = call double @llvm.fmuladd.f64(double %1001, double %1008, double %1009)
  %1011 = load double, ptr @B2, align 8
  %1012 = call double @llvm.fmuladd.f64(double %1000, double %1010, double %1011)
  %1013 = load double, ptr @B1, align 8
  %1014 = call double @llvm.fmuladd.f64(double %999, double %1012, double %1013)
  %1015 = load double, ptr @one, align 8
  %1016 = call double @llvm.fmuladd.f64(double %998, double %1014, double %1015)
  store double %1016, ptr @sb, align 8
  %1017 = load double, ptr @sa, align 8
  %1018 = load double, ptr @sb, align 8
  %1019 = fmul double %1017, %1018
  %1020 = load double, ptr @sb, align 8
  %1021 = fmul double %1019, %1020
  store double %1021, ptr @sa, align 8
  %1022 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1023 = fdiv double %1022, 3.000000e+01
  store double %1023, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1024 = load double, ptr %6, align 8
  %1025 = load double, ptr @sa, align 8
  %1026 = load double, ptr @two, align 8
  %1027 = load double, ptr %2, align 8
  %1028 = call double @llvm.fmuladd.f64(double %1026, double %1027, double %1025)
  %1029 = fmul double %1024, %1028
  %1030 = load double, ptr @two, align 8
  %1031 = fdiv double %1029, %1030
  store double %1031, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1032 = load double, ptr @sa, align 8
  %1033 = load double, ptr @sb, align 8
  %1034 = fsub double %1032, %1033
  store double %1034, ptr @sc, align 8
  %1035 = load double, ptr @one, align 8
  %1036 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1037 = fdiv double %1035, %1036
  store double %1037, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1038 = load double, ptr @sc, align 8
  %1039 = fmul double %1038, 1.000000e-30
  %1040 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1041 = fmul double %1040, 1.000000e-30
  %1042 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1043 = fmul double %1042, 1.000000e-30
  %1044 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1039, double noundef %1041, double noundef %1043)
  %1045 = load double, ptr @five, align 8
  %1046 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1047 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1048 = fsub double %1046, %1047
  %1049 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1050 = call double @llvm.fmuladd.f64(double %1045, double %1048, double %1049)
  %1051 = fdiv double %1050, 5.200000e+01
  store double %1051, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1052 = load double, ptr @one, align 8
  %1053 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1054 = fdiv double %1052, %1053
  store double %1054, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1055 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1056 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1057 = fadd double %1055, %1056
  %1058 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1059 = fadd double %1057, %1058
  %1060 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1061 = fadd double %1059, %1060
  %1062 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1063 = fadd double %1061, %1062
  store double %1063, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1064 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1065 = load double, ptr @four, align 8
  %1066 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1067 = call double @llvm.fmuladd.f64(double %1065, double %1066, double %1064)
  %1068 = fdiv double %1067, 1.520000e+02
  store double %1068, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1069 = load double, ptr @one, align 8
  %1070 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1071 = fdiv double %1069, %1070
  store double %1071, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1072 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1073 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1074 = fadd double %1072, %1073
  %1075 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1076 = fadd double %1074, %1075
  %1077 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1078 = fadd double %1076, %1077
  %1079 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1080 = fadd double %1078, %1079
  store double %1080, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1081 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1082 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1083 = fadd double %1081, %1082
  %1084 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1085 = fadd double %1083, %1084
  %1086 = fdiv double %1085, 1.460000e+02
  store double %1086, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1087 = load double, ptr @one, align 8
  %1088 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1089 = fdiv double %1087, %1088
  store double %1089, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1090 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1091 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1092 = fadd double %1090, %1091
  %1093 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1094 = fadd double %1092, %1093
  %1095 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1096 = fadd double %1094, %1095
  %1097 = fdiv double %1096, 9.100000e+01
  store double %1097, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1098 = load double, ptr @one, align 8
  %1099 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1100 = fdiv double %1098, %1099
  store double %1100, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1101 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1102 = load i32, ptr %10, align 4
  %1103 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1102)
  %1104 = load double, ptr @nulltime, align 8
  %1105 = fmul double %1104, 1.000000e-30
  %1106 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1105)
  %1107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1108 = fmul double %1107, 1.000000e-30
  %1109 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1108)
  %1110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1111 = fmul double %1110, 1.000000e-30
  %1112 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1111)
  %1113 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1114 = fmul double %1113, 1.000000e-30
  %1115 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1114)
  %1116 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1117 = fmul double %1116, 1.000000e-30
  %1118 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1117)
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
