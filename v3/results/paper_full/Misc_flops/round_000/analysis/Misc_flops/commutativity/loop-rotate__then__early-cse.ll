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
  %14 = load double, ptr @one, align 8
  store double %14, ptr @scale, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %17 = call i32 @dtime(ptr noundef @TimeArray)
  %18 = call i32 @dtime(ptr noundef @TimeArray)
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr %11, align 4
  store double 0.000000e+00, ptr @sa, align 8
  %20 = load double, ptr @TLimit, align 8
  %21 = fcmp olt double 0.000000e+00, %20
  br i1 %21, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  br label %25

22:                                               ; preds = %62
  %23 = load double, ptr @TLimit, align 8
  %24 = fcmp olt double %64, %23
  br i1 %24, label %25, label %..loopexit_crit_edge, !llvm.loop !7

25:                                               ; preds = %.lr.ph2, %22
  %26 = load i32, ptr %11, align 4
  %27 = mul nsw i32 2, %26
  store i32 %27, ptr %11, align 4
  %28 = load double, ptr @one, align 8
  %29 = sitofp i32 %27 to double
  %30 = fdiv double %28, %29
  store double %30, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %31 = load double, ptr @one, align 8
  store double %31, ptr %5, align 8
  %32 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %33 = load i32, ptr %11, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp sle i32 1, %34
  br i1 %35, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %25
  br label %36

36:                                               ; preds = %.lr.ph, %56
  %37 = load double, ptr %4, align 8
  %38 = load double, ptr %5, align 8
  %39 = fadd double %37, %38
  store double %39, ptr %4, align 8
  %40 = load double, ptr %6, align 8
  %41 = fmul double %39, %40
  store double %41, ptr %3, align 8
  %42 = load double, ptr %2, align 8
  %43 = load double, ptr @D1, align 8
  %44 = load double, ptr @D2, align 8
  %45 = load double, ptr @D3, align 8
  %46 = call double @llvm.fmuladd.f64(double %41, double %45, double %44)
  %47 = call double @llvm.fmuladd.f64(double %41, double %46, double %43)
  %48 = load double, ptr %5, align 8
  %49 = load double, ptr @E2, align 8
  %50 = load double, ptr @E3, align 8
  %51 = call double @llvm.fmuladd.f64(double %41, double %50, double %49)
  %52 = call double @llvm.fmuladd.f64(double %41, double %51, double %43)
  %53 = call double @llvm.fmuladd.f64(double %41, double %52, double %48)
  %54 = fdiv double %47, %53
  %55 = fadd double %42, %54
  store double %55, ptr %2, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, ptr %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %9, align 4
  %59 = load i32, ptr %11, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sle i32 %58, %60
  br i1 %61, label %36, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %56
  br label %62

62:                                               ; preds = %._crit_edge, %25
  %63 = call i32 @dtime(ptr noundef @TimeArray)
  %64 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %64, ptr @sa, align 8
  %65 = load i32, ptr %11, align 4
  %66 = load i32, ptr %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %22

68:                                               ; preds = %62
  br label %69

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %69

69:                                               ; preds = %.loopexit, %68
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %70 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %71 = load i32, ptr %11, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sle i32 1, %72
  br i1 %73, label %.lr.ph4, label %81

.lr.ph4:                                          ; preds = %69
  br label %74

74:                                               ; preds = %.lr.ph4, %75
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %9, align 4
  %78 = load i32, ptr %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %74, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %75
  br label %81

81:                                               ; preds = %._crit_edge5, %69
  %82 = call i32 @dtime(ptr noundef @TimeArray)
  %83 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %84 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %85 = fmul double %83, %84
  store double %85, ptr @nulltime, align 8
  %86 = fcmp olt double %85, 0.000000e+00
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %88

88:                                               ; preds = %87, %81
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %90 = load double, ptr @sa, align 8
  %91 = load double, ptr @nulltime, align 8
  %92 = fneg double %91
  %93 = call double @llvm.fmuladd.f64(double %89, double %90, double %92)
  store double %93, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %94 = load double, ptr @D1, align 8
  %95 = load double, ptr @D2, align 8
  %96 = fadd double %94, %95
  %97 = load double, ptr @D3, align 8
  %98 = fadd double %96, %97
  %99 = load double, ptr @one, align 8
  %100 = fadd double %99, %94
  %101 = load double, ptr @E2, align 8
  %102 = fadd double %100, %101
  %103 = load double, ptr @E3, align 8
  %104 = fadd double %102, %103
  %105 = fdiv double %98, %104
  store double %105, ptr @sa, align 8
  %106 = load double, ptr @D1, align 8
  store double %106, ptr @sb, align 8
  %107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %108 = fdiv double %107, 1.400000e+01
  store double %108, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %109 = load double, ptr %6, align 8
  %110 = load double, ptr @sa, align 8
  %111 = load double, ptr @sb, align 8
  %112 = fadd double %110, %111
  %113 = load double, ptr @two, align 8
  %114 = load double, ptr %2, align 8
  %115 = call double @llvm.fmuladd.f64(double %113, double %114, double %112)
  %116 = fmul double %109, %115
  %117 = fdiv double %116, %113
  store double %117, ptr @sa, align 8
  %118 = load double, ptr @one, align 8
  %119 = fdiv double %118, %117
  store double %119, ptr @sb, align 8
  %120 = fptosi double %119 to i32
  %121 = mul nsw i32 40000, %120
  %122 = sitofp i32 %121 to double
  %123 = load double, ptr @scale, align 8
  %124 = fdiv double %122, %123
  %125 = fptosi double %124 to i32
  store i32 %125, ptr %11, align 4
  %126 = load double, ptr @sb, align 8
  %127 = fsub double %126, 2.520000e+01
  store double %127, ptr @sc, align 8
  %128 = load double, ptr @one, align 8
  %129 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %130 = fdiv double %128, %129
  store double %130, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %131 = load double, ptr @sc, align 8
  %132 = fmul double %131, 1.000000e-30
  %133 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %134 = fmul double %133, 1.000000e-30
  %135 = fmul double %130, 1.000000e-30
  %136 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %132, double noundef %134, double noundef %135)
  %137 = load i32, ptr %11, align 4
  store i32 %137, ptr %10, align 4
  %138 = load double, ptr @five, align 8
  %139 = fneg double %138
  store double %139, ptr %2, align 8
  %140 = load double, ptr @one, align 8
  %141 = fneg double %140
  store double %141, ptr @sa, align 8
  %142 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %143 = load i32, ptr %10, align 4
  %144 = icmp sle i32 1, %143
  br i1 %144, label %.lr.ph7, label %155

.lr.ph7:                                          ; preds = %88
  br label %145

145:                                              ; preds = %.lr.ph7, %150
  %146 = load double, ptr %2, align 8
  %147 = fneg double %146
  store double %147, ptr %2, align 8
  %148 = load double, ptr @sa, align 8
  %149 = fadd double %148, %147
  store double %149, ptr @sa, align 8
  br label %150

150:                                              ; preds = %145
  %151 = load i32, ptr %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %9, align 4
  %153 = load i32, ptr %10, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %145, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %150
  br label %155

155:                                              ; preds = %._crit_edge8, %88
  %156 = call i32 @dtime(ptr noundef @TimeArray)
  %157 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %158 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %159 = fmul double %157, %158
  store double %159, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %160 = fcmp olt double %159, 0.000000e+00
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %162

162:                                              ; preds = %161, %155
  %163 = load i32, ptr %10, align 4
  %164 = sitofp i32 %163 to double
  store double %164, ptr @sc, align 8
  %165 = load double, ptr @sa, align 8
  store double %165, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %166 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %167 = load i32, ptr %10, align 4
  %168 = icmp sle i32 1, %167
  br i1 %168, label %.lr.ph10, label %196

.lr.ph10:                                         ; preds = %162
  br label %169

169:                                              ; preds = %.lr.ph10, %191
  %170 = load double, ptr %2, align 8
  %171 = fneg double %170
  store double %171, ptr %2, align 8
  %172 = load double, ptr @sa, align 8
  %173 = fadd double %172, %171
  store double %173, ptr @sa, align 8
  %174 = load double, ptr %3, align 8
  %175 = load double, ptr @two, align 8
  %176 = fadd double %174, %175
  store double %176, ptr %3, align 8
  %177 = load double, ptr %6, align 8
  %178 = load double, ptr %2, align 8
  %179 = fsub double %178, %176
  %180 = fadd double %177, %179
  store double %180, ptr %6, align 8
  %181 = load double, ptr %4, align 8
  %182 = load double, ptr %2, align 8
  %183 = load double, ptr %3, align 8
  %184 = fneg double %182
  %185 = call double @llvm.fmuladd.f64(double %184, double %183, double %181)
  store double %185, ptr %4, align 8
  %186 = load double, ptr %5, align 8
  %187 = load double, ptr %2, align 8
  %188 = load double, ptr %3, align 8
  %189 = fdiv double %187, %188
  %190 = fadd double %186, %189
  store double %190, ptr %5, align 8
  br label %191

191:                                              ; preds = %169
  %192 = load i32, ptr %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %9, align 4
  %194 = load i32, ptr %10, align 4
  %195 = icmp sle i32 %193, %194
  br i1 %195, label %169, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %191
  br label %196

196:                                              ; preds = %._crit_edge11, %162
  %197 = call i32 @dtime(ptr noundef @TimeArray)
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %199 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %200 = fmul double %198, %199
  store double %200, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %201 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %202 = fsub double %200, %201
  %203 = fdiv double %202, 7.000000e+00
  store double %203, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %204 = load double, ptr @sa, align 8
  %205 = load double, ptr %6, align 8
  %206 = fmul double %204, %205
  %207 = load double, ptr @sc, align 8
  %208 = fdiv double %206, %207
  %209 = fptosi double %208 to i32
  store i32 %209, ptr %10, align 4
  %210 = load double, ptr @four, align 8
  %211 = load double, ptr %5, align 8
  %212 = fmul double %210, %211
  %213 = load double, ptr @five, align 8
  %214 = fdiv double %212, %213
  store double %214, ptr @sa, align 8
  %215 = load double, ptr @five, align 8
  %216 = load double, ptr %4, align 8
  %217 = fdiv double %215, %216
  %218 = fadd double %214, %217
  store double %218, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %219 = load double, ptr @sb, align 8
  %220 = load double, ptr %4, align 8
  %221 = fmul double %220, %220
  %222 = fmul double %221, %220
  %223 = fdiv double 3.125000e+01, %222
  %224 = fsub double %219, %223
  store double %224, ptr @piprg, align 8
  %225 = load double, ptr @piref, align 8
  %226 = fsub double %224, %225
  store double %226, ptr @pierr, align 8
  %227 = load double, ptr @one, align 8
  %228 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %229 = fdiv double %227, %228
  store double %229, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %230 = load double, ptr @pierr, align 8
  %231 = fmul double %230, 1.000000e-30
  %232 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %233 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %234 = fsub double %232, %233
  %235 = fmul double %234, 1.000000e-30
  %236 = fmul double %229, 1.000000e-30
  %237 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %231, double noundef %235, double noundef %236)
  %238 = load double, ptr @piref, align 8
  %239 = load double, ptr @three, align 8
  %240 = load i32, ptr %10, align 4
  %241 = sitofp i32 %240 to double
  %242 = fmul double %239, %241
  %243 = fdiv double %238, %242
  store double %243, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %244 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %245 = load i32, ptr %10, align 4
  %246 = sub nsw i32 %245, 1
  %247 = icmp sle i32 1, %246
  br i1 %247, label %.lr.ph13, label %279

.lr.ph13:                                         ; preds = %196
  br label %248

248:                                              ; preds = %.lr.ph13, %273
  %249 = load double, ptr %4, align 8
  %250 = load double, ptr @one, align 8
  %251 = fadd double %249, %250
  store double %251, ptr %4, align 8
  %252 = load double, ptr %6, align 8
  %253 = fmul double %251, %252
  store double %253, ptr %3, align 8
  %254 = fmul double %253, %253
  store double %254, ptr %5, align 8
  %255 = load double, ptr %2, align 8
  %256 = load double, ptr %3, align 8
  %257 = load double, ptr @A6, align 8
  %258 = load double, ptr @A5, align 8
  %259 = fneg double %258
  %260 = call double @llvm.fmuladd.f64(double %257, double %254, double %259)
  %261 = load double, ptr @A4, align 8
  %262 = call double @llvm.fmuladd.f64(double %260, double %254, double %261)
  %263 = load double, ptr @A3, align 8
  %264 = fneg double %263
  %265 = call double @llvm.fmuladd.f64(double %262, double %254, double %264)
  %266 = load double, ptr @A2, align 8
  %267 = call double @llvm.fmuladd.f64(double %265, double %254, double %266)
  %268 = load double, ptr @A1, align 8
  %269 = call double @llvm.fmuladd.f64(double %267, double %254, double %268)
  %270 = load double, ptr @one, align 8
  %271 = call double @llvm.fmuladd.f64(double %269, double %254, double %270)
  %272 = call double @llvm.fmuladd.f64(double %256, double %271, double %255)
  store double %272, ptr %2, align 8
  br label %273

273:                                              ; preds = %248
  %274 = load i32, ptr %9, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %9, align 4
  %276 = load i32, ptr %10, align 4
  %277 = sub nsw i32 %276, 1
  %278 = icmp sle i32 %275, %277
  br i1 %278, label %248, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %273
  br label %279

279:                                              ; preds = %._crit_edge14, %196
  %280 = call i32 @dtime(ptr noundef @TimeArray)
  %281 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %282 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %283 = load double, ptr @nulltime, align 8
  %284 = fneg double %283
  %285 = call double @llvm.fmuladd.f64(double %281, double %282, double %284)
  store double %285, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %286 = load double, ptr @piref, align 8
  %287 = load double, ptr @three, align 8
  %288 = fdiv double %286, %287
  store double %288, ptr %3, align 8
  %289 = fmul double %288, %288
  store double %289, ptr %5, align 8
  %290 = load double, ptr %3, align 8
  %291 = load double, ptr @A6, align 8
  %292 = load double, ptr @A5, align 8
  %293 = fneg double %292
  %294 = call double @llvm.fmuladd.f64(double %291, double %289, double %293)
  %295 = load double, ptr @A4, align 8
  %296 = call double @llvm.fmuladd.f64(double %294, double %289, double %295)
  %297 = load double, ptr @A3, align 8
  %298 = fneg double %297
  %299 = call double @llvm.fmuladd.f64(double %296, double %289, double %298)
  %300 = load double, ptr @A2, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %289, double %300)
  %302 = load double, ptr @A1, align 8
  %303 = call double @llvm.fmuladd.f64(double %301, double %289, double %302)
  %304 = load double, ptr @one, align 8
  %305 = call double @llvm.fmuladd.f64(double %303, double %289, double %304)
  %306 = fmul double %290, %305
  store double %306, ptr @sa, align 8
  %307 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %308 = fdiv double %307, 1.700000e+01
  store double %308, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %309 = load double, ptr %6, align 8
  %310 = load double, ptr @sa, align 8
  %311 = load double, ptr @two, align 8
  %312 = load double, ptr %2, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %312, double %310)
  %314 = fmul double %309, %313
  %315 = fdiv double %314, %311
  store double %315, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %316 = load double, ptr @sa, align 8
  %317 = fsub double %316, 5.000000e-01
  store double %317, ptr @sc, align 8
  %318 = load double, ptr @one, align 8
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %320 = fdiv double %318, %319
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %321 = load double, ptr @sc, align 8
  %322 = fmul double %321, 1.000000e-30
  %323 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %324 = fmul double %323, 1.000000e-30
  %325 = fmul double %320, 1.000000e-30
  %326 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %322, double noundef %324, double noundef %325)
  %327 = load double, ptr @A3, align 8
  %328 = fneg double %327
  store double %328, ptr @A3, align 8
  %329 = load double, ptr @A5, align 8
  %330 = fneg double %329
  store double %330, ptr @A5, align 8
  %331 = load double, ptr @piref, align 8
  %332 = load double, ptr @three, align 8
  %333 = load i32, ptr %10, align 4
  %334 = sitofp i32 %333 to double
  %335 = fmul double %332, %334
  %336 = fdiv double %331, %335
  store double %336, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %337 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %338 = load i32, ptr %10, align 4
  %339 = sub nsw i32 %338, 1
  %340 = icmp sle i32 1, %339
  br i1 %340, label %.lr.ph16, label %368

.lr.ph16:                                         ; preds = %279
  br label %341

341:                                              ; preds = %.lr.ph16, %362
  %342 = load i32, ptr %9, align 4
  %343 = sitofp i32 %342 to double
  %344 = load double, ptr %6, align 8
  %345 = fmul double %343, %344
  store double %345, ptr %3, align 8
  %346 = fmul double %345, %345
  store double %346, ptr %5, align 8
  %347 = load double, ptr %2, align 8
  %348 = load double, ptr @B6, align 8
  %349 = load double, ptr @B5, align 8
  %350 = call double @llvm.fmuladd.f64(double %348, double %346, double %349)
  %351 = load double, ptr @B4, align 8
  %352 = call double @llvm.fmuladd.f64(double %346, double %350, double %351)
  %353 = load double, ptr @B3, align 8
  %354 = call double @llvm.fmuladd.f64(double %346, double %352, double %353)
  %355 = load double, ptr @B2, align 8
  %356 = call double @llvm.fmuladd.f64(double %346, double %354, double %355)
  %357 = load double, ptr @B1, align 8
  %358 = call double @llvm.fmuladd.f64(double %346, double %356, double %357)
  %359 = call double @llvm.fmuladd.f64(double %346, double %358, double %347)
  %360 = load double, ptr @one, align 8
  %361 = fadd double %359, %360
  store double %361, ptr %2, align 8
  br label %362

362:                                              ; preds = %341
  %363 = load i32, ptr %9, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %9, align 4
  %365 = load i32, ptr %10, align 4
  %366 = sub nsw i32 %365, 1
  %367 = icmp sle i32 %364, %366
  br i1 %367, label %341, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %362
  br label %368

368:                                              ; preds = %._crit_edge17, %279
  %369 = call i32 @dtime(ptr noundef @TimeArray)
  %370 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %371 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %372 = load double, ptr @nulltime, align 8
  %373 = fneg double %372
  %374 = call double @llvm.fmuladd.f64(double %370, double %371, double %373)
  store double %374, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %375 = load double, ptr @piref, align 8
  %376 = load double, ptr @three, align 8
  %377 = fdiv double %375, %376
  store double %377, ptr %3, align 8
  %378 = fmul double %377, %377
  store double %378, ptr %5, align 8
  %379 = load double, ptr @B6, align 8
  %380 = load double, ptr @B5, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %378, double %380)
  %382 = load double, ptr @B4, align 8
  %383 = call double @llvm.fmuladd.f64(double %378, double %381, double %382)
  %384 = load double, ptr @B3, align 8
  %385 = call double @llvm.fmuladd.f64(double %378, double %383, double %384)
  %386 = load double, ptr @B2, align 8
  %387 = call double @llvm.fmuladd.f64(double %378, double %385, double %386)
  %388 = load double, ptr @B1, align 8
  %389 = call double @llvm.fmuladd.f64(double %378, double %387, double %388)
  %390 = load double, ptr @one, align 8
  %391 = call double @llvm.fmuladd.f64(double %378, double %389, double %390)
  store double %391, ptr @sa, align 8
  %392 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %393 = fdiv double %392, 1.500000e+01
  store double %393, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %394 = load double, ptr %6, align 8
  %395 = load double, ptr @sa, align 8
  %396 = load double, ptr @one, align 8
  %397 = fadd double %395, %396
  %398 = load double, ptr @two, align 8
  %399 = load double, ptr %2, align 8
  %400 = call double @llvm.fmuladd.f64(double %398, double %399, double %397)
  %401 = fmul double %394, %400
  %402 = fdiv double %401, %398
  store double %402, ptr @sa, align 8
  %403 = load double, ptr @piref, align 8
  %404 = load double, ptr @three, align 8
  %405 = fdiv double %403, %404
  store double %405, ptr %3, align 8
  %406 = fmul double %405, %405
  store double %406, ptr %5, align 8
  %407 = load double, ptr %3, align 8
  %408 = load double, ptr @A6, align 8
  %409 = load double, ptr @A5, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %406, double %409)
  %411 = load double, ptr @A4, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %406, double %411)
  %413 = load double, ptr @A3, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %406, double %413)
  %415 = load double, ptr @A2, align 8
  %416 = call double @llvm.fmuladd.f64(double %414, double %406, double %415)
  %417 = load double, ptr @A1, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %406, double %417)
  %419 = load double, ptr @A0, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %406, double %419)
  %421 = fmul double %407, %420
  store double %421, ptr @sb, align 8
  %422 = load double, ptr @sa, align 8
  %423 = fsub double %422, %421
  store double %423, ptr @sc, align 8
  %424 = load double, ptr @one, align 8
  %425 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %426 = fdiv double %424, %425
  store double %426, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %427 = load double, ptr @sc, align 8
  %428 = fmul double %427, 1.000000e-30
  %429 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %430 = fmul double %429, 1.000000e-30
  %431 = fmul double %426, 1.000000e-30
  %432 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %428, double noundef %430, double noundef %431)
  %433 = load double, ptr @piref, align 8
  %434 = load double, ptr @three, align 8
  %435 = load i32, ptr %10, align 4
  %436 = sitofp i32 %435 to double
  %437 = fmul double %434, %436
  %438 = fdiv double %433, %437
  store double %438, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %439 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %440 = load i32, ptr %10, align 4
  %441 = sub nsw i32 %440, 1
  %442 = icmp sle i32 1, %441
  br i1 %442, label %.lr.ph19, label %487

.lr.ph19:                                         ; preds = %368
  br label %443

443:                                              ; preds = %.lr.ph19, %481
  %444 = load i32, ptr %9, align 4
  %445 = sitofp i32 %444 to double
  %446 = load double, ptr %6, align 8
  %447 = fmul double %445, %446
  store double %447, ptr %3, align 8
  %448 = fmul double %447, %447
  store double %448, ptr %5, align 8
  %449 = load double, ptr %3, align 8
  %450 = load double, ptr @A6, align 8
  %451 = load double, ptr @A5, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %448, double %451)
  %453 = load double, ptr @A4, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %448, double %453)
  %455 = load double, ptr @A3, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %448, double %455)
  %457 = load double, ptr @A2, align 8
  %458 = call double @llvm.fmuladd.f64(double %456, double %448, double %457)
  %459 = load double, ptr @A1, align 8
  %460 = call double @llvm.fmuladd.f64(double %458, double %448, double %459)
  %461 = load double, ptr @one, align 8
  %462 = call double @llvm.fmuladd.f64(double %460, double %448, double %461)
  %463 = fmul double %449, %462
  store double %463, ptr %4, align 8
  %464 = load double, ptr %2, align 8
  %465 = load double, ptr %5, align 8
  %466 = load double, ptr @B6, align 8
  %467 = load double, ptr @B5, align 8
  %468 = call double @llvm.fmuladd.f64(double %466, double %465, double %467)
  %469 = load double, ptr @B4, align 8
  %470 = call double @llvm.fmuladd.f64(double %465, double %468, double %469)
  %471 = load double, ptr @B3, align 8
  %472 = call double @llvm.fmuladd.f64(double %465, double %470, double %471)
  %473 = load double, ptr @B2, align 8
  %474 = call double @llvm.fmuladd.f64(double %465, double %472, double %473)
  %475 = load double, ptr @B1, align 8
  %476 = call double @llvm.fmuladd.f64(double %465, double %474, double %475)
  %477 = load double, ptr @one, align 8
  %478 = call double @llvm.fmuladd.f64(double %465, double %476, double %477)
  %479 = fdiv double %463, %478
  %480 = fadd double %464, %479
  store double %480, ptr %2, align 8
  br label %481

481:                                              ; preds = %443
  %482 = load i32, ptr %9, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, ptr %9, align 4
  %484 = load i32, ptr %10, align 4
  %485 = sub nsw i32 %484, 1
  %486 = icmp sle i32 %483, %485
  br i1 %486, label %443, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %481
  br label %487

487:                                              ; preds = %._crit_edge20, %368
  %488 = call i32 @dtime(ptr noundef @TimeArray)
  %489 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %490 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %491 = load double, ptr @nulltime, align 8
  %492 = fneg double %491
  %493 = call double @llvm.fmuladd.f64(double %489, double %490, double %492)
  store double %493, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %494 = load double, ptr @piref, align 8
  %495 = load double, ptr @three, align 8
  %496 = fdiv double %494, %495
  store double %496, ptr %3, align 8
  %497 = fmul double %496, %496
  store double %497, ptr %5, align 8
  %498 = load double, ptr %3, align 8
  %499 = load double, ptr @A6, align 8
  %500 = load double, ptr @A5, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %497, double %500)
  %502 = load double, ptr @A4, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %497, double %502)
  %504 = load double, ptr @A3, align 8
  %505 = call double @llvm.fmuladd.f64(double %503, double %497, double %504)
  %506 = load double, ptr @A2, align 8
  %507 = call double @llvm.fmuladd.f64(double %505, double %497, double %506)
  %508 = load double, ptr @A1, align 8
  %509 = call double @llvm.fmuladd.f64(double %507, double %497, double %508)
  %510 = load double, ptr @one, align 8
  %511 = call double @llvm.fmuladd.f64(double %509, double %497, double %510)
  %512 = fmul double %498, %511
  store double %512, ptr @sa, align 8
  %513 = load double, ptr %5, align 8
  %514 = load double, ptr @B6, align 8
  %515 = load double, ptr @B5, align 8
  %516 = call double @llvm.fmuladd.f64(double %514, double %513, double %515)
  %517 = load double, ptr @B4, align 8
  %518 = call double @llvm.fmuladd.f64(double %513, double %516, double %517)
  %519 = load double, ptr @B3, align 8
  %520 = call double @llvm.fmuladd.f64(double %513, double %518, double %519)
  %521 = load double, ptr @B2, align 8
  %522 = call double @llvm.fmuladd.f64(double %513, double %520, double %521)
  %523 = load double, ptr @B1, align 8
  %524 = call double @llvm.fmuladd.f64(double %513, double %522, double %523)
  %525 = load double, ptr @one, align 8
  %526 = call double @llvm.fmuladd.f64(double %513, double %524, double %525)
  store double %526, ptr @sb, align 8
  %527 = load double, ptr @sa, align 8
  %528 = fdiv double %527, %526
  store double %528, ptr @sa, align 8
  %529 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %530 = fdiv double %529, 2.900000e+01
  store double %530, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %531 = load double, ptr %6, align 8
  %532 = load double, ptr @sa, align 8
  %533 = load double, ptr @two, align 8
  %534 = load double, ptr %2, align 8
  %535 = call double @llvm.fmuladd.f64(double %533, double %534, double %532)
  %536 = fmul double %531, %535
  %537 = fdiv double %536, %533
  store double %537, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %538 = load double, ptr @sa, align 8
  %539 = fsub double %538, f0x3FE62E42FEFA39EF
  store double %539, ptr @sc, align 8
  %540 = load double, ptr @one, align 8
  %541 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %542 = fdiv double %540, %541
  store double %542, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %543 = load double, ptr @sc, align 8
  %544 = fmul double %543, 1.000000e-30
  %545 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %546 = fmul double %545, 1.000000e-30
  %547 = fmul double %542, 1.000000e-30
  %548 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %544, double noundef %546, double noundef %547)
  %549 = load double, ptr @piref, align 8
  %550 = load double, ptr @four, align 8
  %551 = load i32, ptr %10, align 4
  %552 = sitofp i32 %551 to double
  %553 = fmul double %550, %552
  %554 = fdiv double %549, %553
  store double %554, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %555 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %556 = load i32, ptr %10, align 4
  %557 = sub nsw i32 %556, 1
  %558 = icmp sle i32 1, %557
  br i1 %558, label %.lr.ph22, label %602

.lr.ph22:                                         ; preds = %487
  br label %559

559:                                              ; preds = %.lr.ph22, %596
  %560 = load i32, ptr %9, align 4
  %561 = sitofp i32 %560 to double
  %562 = load double, ptr %6, align 8
  %563 = fmul double %561, %562
  store double %563, ptr %3, align 8
  %564 = fmul double %563, %563
  store double %564, ptr %5, align 8
  %565 = load double, ptr %3, align 8
  %566 = load double, ptr @A6, align 8
  %567 = load double, ptr @A5, align 8
  %568 = call double @llvm.fmuladd.f64(double %566, double %564, double %567)
  %569 = load double, ptr @A4, align 8
  %570 = call double @llvm.fmuladd.f64(double %568, double %564, double %569)
  %571 = load double, ptr @A3, align 8
  %572 = call double @llvm.fmuladd.f64(double %570, double %564, double %571)
  %573 = load double, ptr @A2, align 8
  %574 = call double @llvm.fmuladd.f64(double %572, double %564, double %573)
  %575 = load double, ptr @A1, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %564, double %575)
  %577 = load double, ptr @one, align 8
  %578 = call double @llvm.fmuladd.f64(double %576, double %564, double %577)
  %579 = fmul double %565, %578
  store double %579, ptr %4, align 8
  %580 = load double, ptr %2, align 8
  %581 = load double, ptr %5, align 8
  %582 = load double, ptr @B6, align 8
  %583 = load double, ptr @B5, align 8
  %584 = call double @llvm.fmuladd.f64(double %582, double %581, double %583)
  %585 = load double, ptr @B4, align 8
  %586 = call double @llvm.fmuladd.f64(double %581, double %584, double %585)
  %587 = load double, ptr @B3, align 8
  %588 = call double @llvm.fmuladd.f64(double %581, double %586, double %587)
  %589 = load double, ptr @B2, align 8
  %590 = call double @llvm.fmuladd.f64(double %581, double %588, double %589)
  %591 = load double, ptr @B1, align 8
  %592 = call double @llvm.fmuladd.f64(double %581, double %590, double %591)
  %593 = load double, ptr @one, align 8
  %594 = call double @llvm.fmuladd.f64(double %581, double %592, double %593)
  %595 = call double @llvm.fmuladd.f64(double %579, double %594, double %580)
  store double %595, ptr %2, align 8
  br label %596

596:                                              ; preds = %559
  %597 = load i32, ptr %9, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, ptr %9, align 4
  %599 = load i32, ptr %10, align 4
  %600 = sub nsw i32 %599, 1
  %601 = icmp sle i32 %598, %600
  br i1 %601, label %559, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %596
  br label %602

602:                                              ; preds = %._crit_edge23, %487
  %603 = call i32 @dtime(ptr noundef @TimeArray)
  %604 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %605 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %606 = load double, ptr @nulltime, align 8
  %607 = fneg double %606
  %608 = call double @llvm.fmuladd.f64(double %604, double %605, double %607)
  store double %608, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %609 = load double, ptr @piref, align 8
  %610 = load double, ptr @four, align 8
  %611 = fdiv double %609, %610
  store double %611, ptr %3, align 8
  %612 = fmul double %611, %611
  store double %612, ptr %5, align 8
  %613 = load double, ptr %3, align 8
  %614 = load double, ptr @A6, align 8
  %615 = load double, ptr @A5, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %612, double %615)
  %617 = load double, ptr @A4, align 8
  %618 = call double @llvm.fmuladd.f64(double %616, double %612, double %617)
  %619 = load double, ptr @A3, align 8
  %620 = call double @llvm.fmuladd.f64(double %618, double %612, double %619)
  %621 = load double, ptr @A2, align 8
  %622 = call double @llvm.fmuladd.f64(double %620, double %612, double %621)
  %623 = load double, ptr @A1, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %612, double %623)
  %625 = load double, ptr @one, align 8
  %626 = call double @llvm.fmuladd.f64(double %624, double %612, double %625)
  %627 = fmul double %613, %626
  store double %627, ptr @sa, align 8
  %628 = load double, ptr %5, align 8
  %629 = load double, ptr @B6, align 8
  %630 = load double, ptr @B5, align 8
  %631 = call double @llvm.fmuladd.f64(double %629, double %628, double %630)
  %632 = load double, ptr @B4, align 8
  %633 = call double @llvm.fmuladd.f64(double %628, double %631, double %632)
  %634 = load double, ptr @B3, align 8
  %635 = call double @llvm.fmuladd.f64(double %628, double %633, double %634)
  %636 = load double, ptr @B2, align 8
  %637 = call double @llvm.fmuladd.f64(double %628, double %635, double %636)
  %638 = load double, ptr @B1, align 8
  %639 = call double @llvm.fmuladd.f64(double %628, double %637, double %638)
  %640 = load double, ptr @one, align 8
  %641 = call double @llvm.fmuladd.f64(double %628, double %639, double %640)
  store double %641, ptr @sb, align 8
  %642 = load double, ptr @sa, align 8
  %643 = fmul double %642, %641
  store double %643, ptr @sa, align 8
  %644 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %645 = fdiv double %644, 2.900000e+01
  store double %645, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %646 = load double, ptr %6, align 8
  %647 = load double, ptr @sa, align 8
  %648 = load double, ptr @two, align 8
  %649 = load double, ptr %2, align 8
  %650 = call double @llvm.fmuladd.f64(double %648, double %649, double %647)
  %651 = fmul double %646, %650
  %652 = fdiv double %651, %648
  store double %652, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %653 = load double, ptr @sa, align 8
  %654 = fsub double %653, 2.500000e-01
  store double %654, ptr @sc, align 8
  %655 = load double, ptr @one, align 8
  %656 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %657 = fdiv double %655, %656
  store double %657, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %658 = load double, ptr @sc, align 8
  %659 = fmul double %658, 1.000000e-30
  %660 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %661 = fmul double %660, 1.000000e-30
  %662 = fmul double %657, 1.000000e-30
  %663 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %659, double noundef %661, double noundef %662)
  store double 0.000000e+00, ptr %2, align 8
  %664 = load double, ptr @one, align 8
  store double %664, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %665 = load i32, ptr %10, align 4
  %666 = sitofp i32 %665 to double
  %667 = fdiv double f0x40599541F7F192A4, %666
  store double %667, ptr %4, align 8
  %668 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %669 = load i32, ptr %10, align 4
  %670 = sub nsw i32 %669, 1
  %671 = icmp sle i32 1, %670
  br i1 %671, label %.lr.ph25, label %696

.lr.ph25:                                         ; preds = %602
  br label %672

672:                                              ; preds = %.lr.ph25, %690
  %673 = load i32, ptr %9, align 4
  %674 = sitofp i32 %673 to double
  %675 = load double, ptr %4, align 8
  %676 = fmul double %674, %675
  store double %676, ptr %6, align 8
  %677 = fmul double %676, %676
  store double %677, ptr %3, align 8
  %678 = load double, ptr %2, align 8
  %679 = load double, ptr %5, align 8
  %680 = load double, ptr %6, align 8
  %681 = fadd double %680, %679
  %682 = fdiv double %679, %681
  %683 = fsub double %678, %682
  %684 = fadd double %677, %679
  %685 = fdiv double %680, %684
  %686 = fsub double %683, %685
  %687 = call double @llvm.fmuladd.f64(double %680, double %677, double %679)
  %688 = fdiv double %677, %687
  %689 = fsub double %686, %688
  store double %689, ptr %2, align 8
  br label %690

690:                                              ; preds = %672
  %691 = load i32, ptr %9, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, ptr %9, align 4
  %693 = load i32, ptr %10, align 4
  %694 = sub nsw i32 %693, 1
  %695 = icmp sle i32 %692, %694
  br i1 %695, label %672, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %690
  br label %696

696:                                              ; preds = %._crit_edge26, %602
  %697 = call i32 @dtime(ptr noundef @TimeArray)
  %698 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %699 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %700 = load double, ptr @nulltime, align 8
  %701 = fneg double %700
  %702 = call double @llvm.fmuladd.f64(double %698, double %699, double %701)
  store double %702, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %703 = fdiv double %702, 1.200000e+01
  store double %703, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %704 = load double, ptr @sa, align 8
  store double %704, ptr %6, align 8
  %705 = fmul double %704, %704
  store double %705, ptr %3, align 8
  %706 = load double, ptr %5, align 8
  %707 = fneg double %706
  %708 = load double, ptr %6, align 8
  %709 = fadd double %708, %706
  %710 = fdiv double %706, %709
  %711 = fsub double %707, %710
  %712 = fadd double %705, %706
  %713 = fdiv double %708, %712
  %714 = fsub double %711, %713
  %715 = call double @llvm.fmuladd.f64(double %708, double %705, double %706)
  %716 = fdiv double %705, %715
  %717 = fsub double %714, %716
  store double %717, ptr @sa, align 8
  %718 = load double, ptr %4, align 8
  %719 = fmul double 1.800000e+01, %718
  %720 = load double, ptr @two, align 8
  %721 = load double, ptr %2, align 8
  %722 = call double @llvm.fmuladd.f64(double %720, double %721, double %717)
  %723 = fmul double %719, %722
  store double %723, ptr @sa, align 8
  %724 = fptosi double %723 to i32
  %725 = mul nsw i32 -2000, %724
  store i32 %725, ptr %10, align 4
  %726 = sitofp i32 %725 to double
  %727 = load double, ptr @scale, align 8
  %728 = fdiv double %726, %727
  %729 = fptosi double %728 to i32
  store i32 %729, ptr %10, align 4
  %730 = load double, ptr @sa, align 8
  %731 = fadd double %730, 5.002000e+02
  store double %731, ptr @sc, align 8
  %732 = load double, ptr @one, align 8
  %733 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %734 = fdiv double %732, %733
  store double %734, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %735 = load double, ptr @sc, align 8
  %736 = fmul double %735, 1.000000e-30
  %737 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %738 = fmul double %737, 1.000000e-30
  %739 = fmul double %734, 1.000000e-30
  %740 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %736, double noundef %738, double noundef %739)
  %741 = load double, ptr @piref, align 8
  %742 = load double, ptr @three, align 8
  %743 = load i32, ptr %10, align 4
  %744 = sitofp i32 %743 to double
  %745 = fmul double %742, %744
  %746 = fdiv double %741, %745
  store double %746, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %747 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %748 = load i32, ptr %10, align 4
  %749 = sub nsw i32 %748, 1
  %750 = icmp sle i32 1, %749
  br i1 %750, label %.lr.ph28, label %795

.lr.ph28:                                         ; preds = %696
  br label %751

751:                                              ; preds = %.lr.ph28, %789
  %752 = load i32, ptr %9, align 4
  %753 = sitofp i32 %752 to double
  %754 = load double, ptr %6, align 8
  %755 = fmul double %753, %754
  store double %755, ptr %3, align 8
  %756 = fmul double %755, %755
  store double %756, ptr %5, align 8
  %757 = load double, ptr @B6, align 8
  %758 = load double, ptr @B5, align 8
  %759 = call double @llvm.fmuladd.f64(double %757, double %756, double %758)
  %760 = load double, ptr @B4, align 8
  %761 = call double @llvm.fmuladd.f64(double %756, double %759, double %760)
  %762 = load double, ptr @B3, align 8
  %763 = call double @llvm.fmuladd.f64(double %756, double %761, double %762)
  %764 = load double, ptr @B2, align 8
  %765 = call double @llvm.fmuladd.f64(double %756, double %763, double %764)
  %766 = load double, ptr @B1, align 8
  %767 = call double @llvm.fmuladd.f64(double %756, double %765, double %766)
  %768 = load double, ptr @one, align 8
  %769 = call double @llvm.fmuladd.f64(double %756, double %767, double %768)
  store double %769, ptr %4, align 8
  %770 = load double, ptr %2, align 8
  %771 = fmul double %769, %769
  %772 = load double, ptr %3, align 8
  %773 = fmul double %771, %772
  %774 = load double, ptr @A6, align 8
  %775 = load double, ptr %5, align 8
  %776 = load double, ptr @A5, align 8
  %777 = call double @llvm.fmuladd.f64(double %774, double %775, double %776)
  %778 = load double, ptr @A4, align 8
  %779 = call double @llvm.fmuladd.f64(double %777, double %775, double %778)
  %780 = load double, ptr @A3, align 8
  %781 = call double @llvm.fmuladd.f64(double %779, double %775, double %780)
  %782 = load double, ptr @A2, align 8
  %783 = call double @llvm.fmuladd.f64(double %781, double %775, double %782)
  %784 = load double, ptr @A1, align 8
  %785 = call double @llvm.fmuladd.f64(double %783, double %775, double %784)
  %786 = load double, ptr @one, align 8
  %787 = call double @llvm.fmuladd.f64(double %785, double %775, double %786)
  %788 = call double @llvm.fmuladd.f64(double %773, double %787, double %770)
  store double %788, ptr %2, align 8
  br label %789

789:                                              ; preds = %751
  %790 = load i32, ptr %9, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, ptr %9, align 4
  %792 = load i32, ptr %10, align 4
  %793 = sub nsw i32 %792, 1
  %794 = icmp sle i32 %791, %793
  br i1 %794, label %751, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %789
  br label %795

795:                                              ; preds = %._crit_edge29, %696
  %796 = call i32 @dtime(ptr noundef @TimeArray)
  %797 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %798 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %799 = load double, ptr @nulltime, align 8
  %800 = fneg double %799
  %801 = call double @llvm.fmuladd.f64(double %797, double %798, double %800)
  store double %801, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %802 = load double, ptr @piref, align 8
  %803 = load double, ptr @three, align 8
  %804 = fdiv double %802, %803
  store double %804, ptr %3, align 8
  %805 = fmul double %804, %804
  store double %805, ptr %5, align 8
  %806 = load double, ptr %3, align 8
  %807 = load double, ptr @A6, align 8
  %808 = load double, ptr @A5, align 8
  %809 = call double @llvm.fmuladd.f64(double %807, double %805, double %808)
  %810 = load double, ptr @A4, align 8
  %811 = call double @llvm.fmuladd.f64(double %809, double %805, double %810)
  %812 = load double, ptr @A3, align 8
  %813 = call double @llvm.fmuladd.f64(double %811, double %805, double %812)
  %814 = load double, ptr @A2, align 8
  %815 = call double @llvm.fmuladd.f64(double %813, double %805, double %814)
  %816 = load double, ptr @A1, align 8
  %817 = call double @llvm.fmuladd.f64(double %815, double %805, double %816)
  %818 = load double, ptr @one, align 8
  %819 = call double @llvm.fmuladd.f64(double %817, double %805, double %818)
  %820 = fmul double %806, %819
  store double %820, ptr @sa, align 8
  %821 = load double, ptr %5, align 8
  %822 = load double, ptr @B6, align 8
  %823 = load double, ptr @B5, align 8
  %824 = call double @llvm.fmuladd.f64(double %822, double %821, double %823)
  %825 = load double, ptr @B4, align 8
  %826 = call double @llvm.fmuladd.f64(double %821, double %824, double %825)
  %827 = load double, ptr @B3, align 8
  %828 = call double @llvm.fmuladd.f64(double %821, double %826, double %827)
  %829 = load double, ptr @B2, align 8
  %830 = call double @llvm.fmuladd.f64(double %821, double %828, double %829)
  %831 = load double, ptr @B1, align 8
  %832 = call double @llvm.fmuladd.f64(double %821, double %830, double %831)
  %833 = load double, ptr @one, align 8
  %834 = call double @llvm.fmuladd.f64(double %821, double %832, double %833)
  store double %834, ptr @sb, align 8
  %835 = load double, ptr @sa, align 8
  %836 = fmul double %835, %834
  %837 = fmul double %836, %834
  store double %837, ptr @sa, align 8
  %838 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %839 = fdiv double %838, 3.000000e+01
  store double %839, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %840 = load double, ptr %6, align 8
  %841 = load double, ptr @sa, align 8
  %842 = load double, ptr @two, align 8
  %843 = load double, ptr %2, align 8
  %844 = call double @llvm.fmuladd.f64(double %842, double %843, double %841)
  %845 = fmul double %840, %844
  %846 = fdiv double %845, %842
  store double %846, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %847 = load double, ptr @sa, align 8
  %848 = fsub double %847, f0x3FD2AAAAAAAAAAAB
  store double %848, ptr @sc, align 8
  %849 = load double, ptr @one, align 8
  %850 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %851 = fdiv double %849, %850
  store double %851, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %852 = load double, ptr @sc, align 8
  %853 = fmul double %852, 1.000000e-30
  %854 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %855 = fmul double %854, 1.000000e-30
  %856 = fmul double %851, 1.000000e-30
  %857 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %853, double noundef %855, double noundef %856)
  %858 = load double, ptr @five, align 8
  %859 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %861 = fsub double %859, %860
  %862 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %863 = call double @llvm.fmuladd.f64(double %858, double %861, double %862)
  %864 = fdiv double %863, 5.200000e+01
  store double %864, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %865 = load double, ptr @one, align 8
  %866 = fdiv double %865, %864
  store double %866, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %867 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %868 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %869 = fadd double %867, %868
  %870 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %871 = fadd double %869, %870
  %872 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %873 = fadd double %871, %872
  %874 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %875 = fadd double %873, %874
  store double %875, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %876 = load double, ptr @four, align 8
  %877 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %878 = call double @llvm.fmuladd.f64(double %876, double %877, double %875)
  %879 = fdiv double %878, 1.520000e+02
  store double %879, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %880 = load double, ptr @one, align 8
  %881 = fdiv double %880, %879
  store double %881, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %882 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %883 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %884 = fadd double %882, %883
  %885 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %886 = fadd double %884, %885
  %887 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %888 = fadd double %886, %887
  %889 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %890 = fadd double %888, %889
  store double %890, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %891 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %892 = fadd double %890, %891
  %893 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %894 = fadd double %892, %893
  %895 = fdiv double %894, 1.460000e+02
  store double %895, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %896 = load double, ptr @one, align 8
  %897 = fdiv double %896, %895
  store double %897, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %898 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %899 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %900 = fadd double %898, %899
  %901 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %902 = fadd double %900, %901
  %903 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %904 = fadd double %902, %903
  %905 = fdiv double %904, 9.100000e+01
  store double %905, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %906 = load double, ptr @one, align 8
  %907 = fdiv double %906, %905
  store double %907, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %908 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %909 = load i32, ptr %10, align 4
  %910 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %909)
  %911 = load double, ptr @nulltime, align 8
  %912 = fmul double %911, 1.000000e-30
  %913 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %912)
  %914 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %915 = fmul double %914, 1.000000e-30
  %916 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %915)
  %917 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %918 = fmul double %917, 1.000000e-30
  %919 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %918)
  %920 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %921 = fmul double %920, 1.000000e-30
  %922 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %921)
  %923 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %924 = fmul double %923, 1.000000e-30
  %925 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %924)
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
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds double, ptr %9, i64 2
  store double %8, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds double, ptr %11, i64 2
  %13 = load double, ptr %12, align 8
  %14 = load double, ptr %3, align 8
  %15 = fsub double %13, %14
  %16 = getelementptr inbounds double, ptr %11, i64 1
  store double %15, ptr %16, align 8
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
