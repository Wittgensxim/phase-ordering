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
  %20 = load double, ptr @sa, align 8
  %21 = load double, ptr @TLimit, align 8
  %22 = fcmp olt double %20, %21
  br i1 %22, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %0
  br label %27

23:                                               ; preds = %66
  %24 = load double, ptr @sa, align 8
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %..loopexit_crit_edge, !llvm.loop !7

27:                                               ; preds = %.lr.ph2, %23
  %28 = load i32, ptr %11, align 4
  %29 = mul nsw i32 2, %28
  store i32 %29, ptr %11, align 4
  %30 = load double, ptr @one, align 8
  %31 = sitofp i32 %29 to double
  %32 = fdiv double %30, %31
  store double %32, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %33 = load double, ptr @one, align 8
  store double %33, ptr %5, align 8
  %34 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %35 = load i32, ptr %9, align 4
  %36 = load i32, ptr %11, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %.lr.ph, label %66

.lr.ph:                                           ; preds = %27
  br label %39

39:                                               ; preds = %.lr.ph, %59
  %40 = load double, ptr %4, align 8
  %41 = load double, ptr %5, align 8
  %42 = fadd double %40, %41
  store double %42, ptr %4, align 8
  %43 = load double, ptr %6, align 8
  %44 = fmul double %42, %43
  store double %44, ptr %3, align 8
  %45 = load double, ptr %2, align 8
  %46 = load double, ptr @D1, align 8
  %47 = load double, ptr @D2, align 8
  %48 = load double, ptr @D3, align 8
  %49 = call double @llvm.fmuladd.f64(double %44, double %48, double %47)
  %50 = call double @llvm.fmuladd.f64(double %44, double %49, double %46)
  %51 = load double, ptr %5, align 8
  %52 = load double, ptr @E2, align 8
  %53 = load double, ptr @E3, align 8
  %54 = call double @llvm.fmuladd.f64(double %44, double %53, double %52)
  %55 = call double @llvm.fmuladd.f64(double %44, double %54, double %46)
  %56 = call double @llvm.fmuladd.f64(double %44, double %55, double %51)
  %57 = fdiv double %50, %56
  %58 = fadd double %45, %57
  store double %58, ptr %2, align 8
  br label %59

59:                                               ; preds = %39
  %60 = load i32, ptr %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %9, align 4
  %62 = load i32, ptr %9, align 4
  %63 = load i32, ptr %11, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %39, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %59
  br label %66

66:                                               ; preds = %._crit_edge, %27
  %67 = call i32 @dtime(ptr noundef @TimeArray)
  %68 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %68, ptr @sa, align 8
  %69 = load i32, ptr %11, align 4
  %70 = load i32, ptr %8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %23

72:                                               ; preds = %66
  br label %73

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %0
  br label %73

73:                                               ; preds = %.loopexit, %72
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %74 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %75 = load i32, ptr %9, align 4
  %76 = load i32, ptr %11, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp sle i32 %75, %77
  br i1 %78, label %.lr.ph4, label %87

.lr.ph4:                                          ; preds = %73
  br label %79

79:                                               ; preds = %.lr.ph4, %81
  %80 = phi i32 [ %75, %.lr.ph4 ], [ %83, %81 ]
  br label %81

81:                                               ; preds = %79
  %82 = add nsw i32 %80, 1
  store i32 %82, ptr %9, align 4
  %83 = load i32, ptr %9, align 4
  %84 = load i32, ptr %11, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp sle i32 %83, %85
  br i1 %86, label %79, label %._crit_edge5, !llvm.loop !10

._crit_edge5:                                     ; preds = %81
  br label %87

87:                                               ; preds = %._crit_edge5, %73
  %88 = call i32 @dtime(ptr noundef @TimeArray)
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %90 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %91 = fmul double %89, %90
  store double %91, ptr @nulltime, align 8
  %92 = fcmp olt double %91, 0.000000e+00
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %94

94:                                               ; preds = %93, %87
  %95 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %96 = load double, ptr @sa, align 8
  %97 = load double, ptr @nulltime, align 8
  %98 = fneg double %97
  %99 = call double @llvm.fmuladd.f64(double %95, double %96, double %98)
  store double %99, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %100 = load double, ptr @D1, align 8
  %101 = load double, ptr @D2, align 8
  %102 = fadd double %100, %101
  %103 = load double, ptr @D3, align 8
  %104 = fadd double %102, %103
  %105 = load double, ptr @one, align 8
  %106 = fadd double %105, %100
  %107 = load double, ptr @E2, align 8
  %108 = fadd double %106, %107
  %109 = load double, ptr @E3, align 8
  %110 = fadd double %108, %109
  %111 = fdiv double %104, %110
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
  %123 = fdiv double %122, %119
  store double %123, ptr @sa, align 8
  %124 = load double, ptr @one, align 8
  %125 = fdiv double %124, %123
  store double %125, ptr @sb, align 8
  %126 = fptosi double %125 to i32
  %127 = mul nsw i32 40000, %126
  %128 = sitofp i32 %127 to double
  %129 = load double, ptr @scale, align 8
  %130 = fdiv double %128, %129
  %131 = fptosi double %130 to i32
  store i32 %131, ptr %11, align 4
  %132 = load double, ptr @sb, align 8
  %133 = fsub double %132, 2.520000e+01
  store double %133, ptr @sc, align 8
  %134 = load double, ptr @one, align 8
  %135 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %136 = fdiv double %134, %135
  store double %136, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %137 = load double, ptr @sc, align 8
  %138 = fmul double %137, 1.000000e-30
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %140 = fmul double %139, 1.000000e-30
  %141 = fmul double %136, 1.000000e-30
  %142 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %138, double noundef %140, double noundef %141)
  %143 = load i32, ptr %11, align 4
  store i32 %143, ptr %10, align 4
  %144 = load double, ptr @five, align 8
  %145 = fneg double %144
  store double %145, ptr %2, align 8
  %146 = load double, ptr @one, align 8
  %147 = fneg double %146
  store double %147, ptr @sa, align 8
  %148 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %149 = load i32, ptr %9, align 4
  %150 = load i32, ptr %10, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %.lr.ph7, label %163

.lr.ph7:                                          ; preds = %94
  br label %152

152:                                              ; preds = %.lr.ph7, %157
  %153 = load double, ptr %2, align 8
  %154 = fneg double %153
  store double %154, ptr %2, align 8
  %155 = load double, ptr @sa, align 8
  %156 = fadd double %155, %154
  store double %156, ptr @sa, align 8
  br label %157

157:                                              ; preds = %152
  %158 = load i32, ptr %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %9, align 4
  %160 = load i32, ptr %9, align 4
  %161 = load i32, ptr %10, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %152, label %._crit_edge8, !llvm.loop !11

._crit_edge8:                                     ; preds = %157
  br label %163

163:                                              ; preds = %._crit_edge8, %94
  %164 = call i32 @dtime(ptr noundef @TimeArray)
  %165 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %166 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %167 = fmul double %165, %166
  store double %167, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %168 = fcmp olt double %167, 0.000000e+00
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %170

170:                                              ; preds = %169, %163
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
  %175 = load i32, ptr %9, align 4
  %176 = load i32, ptr %10, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %.lr.ph10, label %206

.lr.ph10:                                         ; preds = %170
  br label %178

178:                                              ; preds = %.lr.ph10, %200
  %179 = load double, ptr %2, align 8
  %180 = fneg double %179
  store double %180, ptr %2, align 8
  %181 = load double, ptr @sa, align 8
  %182 = fadd double %181, %180
  store double %182, ptr @sa, align 8
  %183 = load double, ptr %3, align 8
  %184 = load double, ptr @two, align 8
  %185 = fadd double %183, %184
  store double %185, ptr %3, align 8
  %186 = load double, ptr %6, align 8
  %187 = load double, ptr %2, align 8
  %188 = fsub double %187, %185
  %189 = fadd double %186, %188
  store double %189, ptr %6, align 8
  %190 = load double, ptr %4, align 8
  %191 = load double, ptr %2, align 8
  %192 = load double, ptr %3, align 8
  %193 = fneg double %191
  %194 = call double @llvm.fmuladd.f64(double %193, double %192, double %190)
  store double %194, ptr %4, align 8
  %195 = load double, ptr %5, align 8
  %196 = load double, ptr %2, align 8
  %197 = load double, ptr %3, align 8
  %198 = fdiv double %196, %197
  %199 = fadd double %195, %198
  store double %199, ptr %5, align 8
  br label %200

200:                                              ; preds = %178
  %201 = load i32, ptr %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %9, align 4
  %203 = load i32, ptr %9, align 4
  %204 = load i32, ptr %10, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %178, label %._crit_edge11, !llvm.loop !12

._crit_edge11:                                    ; preds = %200
  br label %206

206:                                              ; preds = %._crit_edge11, %170
  %207 = call i32 @dtime(ptr noundef @TimeArray)
  %208 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %209 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %210 = fmul double %208, %209
  store double %210, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %211 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %212 = fsub double %210, %211
  %213 = fdiv double %212, 7.000000e+00
  store double %213, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %214 = load double, ptr @sa, align 8
  %215 = load double, ptr %6, align 8
  %216 = fmul double %214, %215
  %217 = load double, ptr @sc, align 8
  %218 = fdiv double %216, %217
  %219 = fptosi double %218 to i32
  store i32 %219, ptr %10, align 4
  %220 = load double, ptr @four, align 8
  %221 = load double, ptr %5, align 8
  %222 = fmul double %220, %221
  %223 = load double, ptr @five, align 8
  %224 = fdiv double %222, %223
  store double %224, ptr @sa, align 8
  %225 = load double, ptr @five, align 8
  %226 = load double, ptr %4, align 8
  %227 = fdiv double %225, %226
  %228 = fadd double %224, %227
  store double %228, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %229 = load double, ptr @sb, align 8
  %230 = load double, ptr %4, align 8
  %231 = fmul double %230, %230
  %232 = fmul double %231, %230
  %233 = fdiv double 3.125000e+01, %232
  %234 = fsub double %229, %233
  store double %234, ptr @piprg, align 8
  %235 = load double, ptr @piref, align 8
  %236 = fsub double %234, %235
  store double %236, ptr @pierr, align 8
  %237 = load double, ptr @one, align 8
  %238 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %239 = fdiv double %237, %238
  store double %239, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %240 = load double, ptr @pierr, align 8
  %241 = fmul double %240, 1.000000e-30
  %242 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %243 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %244 = fsub double %242, %243
  %245 = fmul double %244, 1.000000e-30
  %246 = fmul double %239, 1.000000e-30
  %247 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %241, double noundef %245, double noundef %246)
  %248 = load double, ptr @piref, align 8
  %249 = load double, ptr @three, align 8
  %250 = load i32, ptr %10, align 4
  %251 = sitofp i32 %250 to double
  %252 = fmul double %249, %251
  %253 = fdiv double %248, %252
  store double %253, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %254 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %255 = load i32, ptr %9, align 4
  %256 = load i32, ptr %10, align 4
  %257 = sub nsw i32 %256, 1
  %258 = icmp sle i32 %255, %257
  br i1 %258, label %.lr.ph13, label %291

.lr.ph13:                                         ; preds = %206
  br label %259

259:                                              ; preds = %.lr.ph13, %284
  %260 = load double, ptr %4, align 8
  %261 = load double, ptr @one, align 8
  %262 = fadd double %260, %261
  store double %262, ptr %4, align 8
  %263 = load double, ptr %6, align 8
  %264 = fmul double %262, %263
  store double %264, ptr %3, align 8
  %265 = fmul double %264, %264
  store double %265, ptr %5, align 8
  %266 = load double, ptr %2, align 8
  %267 = load double, ptr %3, align 8
  %268 = load double, ptr @A6, align 8
  %269 = load double, ptr @A5, align 8
  %270 = fneg double %269
  %271 = call double @llvm.fmuladd.f64(double %268, double %265, double %270)
  %272 = load double, ptr @A4, align 8
  %273 = call double @llvm.fmuladd.f64(double %271, double %265, double %272)
  %274 = load double, ptr @A3, align 8
  %275 = fneg double %274
  %276 = call double @llvm.fmuladd.f64(double %273, double %265, double %275)
  %277 = load double, ptr @A2, align 8
  %278 = call double @llvm.fmuladd.f64(double %276, double %265, double %277)
  %279 = load double, ptr @A1, align 8
  %280 = call double @llvm.fmuladd.f64(double %278, double %265, double %279)
  %281 = load double, ptr @one, align 8
  %282 = call double @llvm.fmuladd.f64(double %280, double %265, double %281)
  %283 = call double @llvm.fmuladd.f64(double %267, double %282, double %266)
  store double %283, ptr %2, align 8
  br label %284

284:                                              ; preds = %259
  %285 = load i32, ptr %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %9, align 4
  %287 = load i32, ptr %9, align 4
  %288 = load i32, ptr %10, align 4
  %289 = sub nsw i32 %288, 1
  %290 = icmp sle i32 %287, %289
  br i1 %290, label %259, label %._crit_edge14, !llvm.loop !13

._crit_edge14:                                    ; preds = %284
  br label %291

291:                                              ; preds = %._crit_edge14, %206
  %292 = call i32 @dtime(ptr noundef @TimeArray)
  %293 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %294 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %295 = load double, ptr @nulltime, align 8
  %296 = fneg double %295
  %297 = call double @llvm.fmuladd.f64(double %293, double %294, double %296)
  store double %297, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %298 = load double, ptr @piref, align 8
  %299 = load double, ptr @three, align 8
  %300 = fdiv double %298, %299
  store double %300, ptr %3, align 8
  %301 = fmul double %300, %300
  store double %301, ptr %5, align 8
  %302 = load double, ptr %3, align 8
  %303 = load double, ptr @A6, align 8
  %304 = load double, ptr @A5, align 8
  %305 = fneg double %304
  %306 = call double @llvm.fmuladd.f64(double %303, double %301, double %305)
  %307 = load double, ptr @A4, align 8
  %308 = call double @llvm.fmuladd.f64(double %306, double %301, double %307)
  %309 = load double, ptr @A3, align 8
  %310 = fneg double %309
  %311 = call double @llvm.fmuladd.f64(double %308, double %301, double %310)
  %312 = load double, ptr @A2, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %301, double %312)
  %314 = load double, ptr @A1, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %301, double %314)
  %316 = load double, ptr @one, align 8
  %317 = call double @llvm.fmuladd.f64(double %315, double %301, double %316)
  %318 = fmul double %302, %317
  store double %318, ptr @sa, align 8
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %320 = fdiv double %319, 1.700000e+01
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %321 = load double, ptr %6, align 8
  %322 = load double, ptr @sa, align 8
  %323 = load double, ptr @two, align 8
  %324 = load double, ptr %2, align 8
  %325 = call double @llvm.fmuladd.f64(double %323, double %324, double %322)
  %326 = fmul double %321, %325
  %327 = fdiv double %326, %323
  store double %327, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %328 = load double, ptr @sa, align 8
  %329 = fsub double %328, 5.000000e-01
  store double %329, ptr @sc, align 8
  %330 = load double, ptr @one, align 8
  %331 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %332 = fdiv double %330, %331
  store double %332, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %333 = load double, ptr @sc, align 8
  %334 = fmul double %333, 1.000000e-30
  %335 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %336 = fmul double %335, 1.000000e-30
  %337 = fmul double %332, 1.000000e-30
  %338 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %334, double noundef %336, double noundef %337)
  %339 = load double, ptr @A3, align 8
  %340 = fneg double %339
  store double %340, ptr @A3, align 8
  %341 = load double, ptr @A5, align 8
  %342 = fneg double %341
  store double %342, ptr @A5, align 8
  %343 = load double, ptr @piref, align 8
  %344 = load double, ptr @three, align 8
  %345 = load i32, ptr %10, align 4
  %346 = sitofp i32 %345 to double
  %347 = fmul double %344, %346
  %348 = fdiv double %343, %347
  store double %348, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %349 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %350 = load i32, ptr %9, align 4
  %351 = load i32, ptr %10, align 4
  %352 = sub nsw i32 %351, 1
  %353 = icmp sle i32 %350, %352
  br i1 %353, label %.lr.ph16, label %382

.lr.ph16:                                         ; preds = %291
  br label %354

354:                                              ; preds = %.lr.ph16, %375
  %355 = phi i32 [ %350, %.lr.ph16 ], [ %378, %375 ]
  %356 = sitofp i32 %355 to double
  %357 = load double, ptr %6, align 8
  %358 = fmul double %356, %357
  store double %358, ptr %3, align 8
  %359 = fmul double %358, %358
  store double %359, ptr %5, align 8
  %360 = load double, ptr %2, align 8
  %361 = load double, ptr @B6, align 8
  %362 = load double, ptr @B5, align 8
  %363 = call double @llvm.fmuladd.f64(double %361, double %359, double %362)
  %364 = load double, ptr @B4, align 8
  %365 = call double @llvm.fmuladd.f64(double %359, double %363, double %364)
  %366 = load double, ptr @B3, align 8
  %367 = call double @llvm.fmuladd.f64(double %359, double %365, double %366)
  %368 = load double, ptr @B2, align 8
  %369 = call double @llvm.fmuladd.f64(double %359, double %367, double %368)
  %370 = load double, ptr @B1, align 8
  %371 = call double @llvm.fmuladd.f64(double %359, double %369, double %370)
  %372 = call double @llvm.fmuladd.f64(double %359, double %371, double %360)
  %373 = load double, ptr @one, align 8
  %374 = fadd double %372, %373
  store double %374, ptr %2, align 8
  br label %375

375:                                              ; preds = %354
  %376 = load i32, ptr %9, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, ptr %9, align 4
  %378 = load i32, ptr %9, align 4
  %379 = load i32, ptr %10, align 4
  %380 = sub nsw i32 %379, 1
  %381 = icmp sle i32 %378, %380
  br i1 %381, label %354, label %._crit_edge17, !llvm.loop !14

._crit_edge17:                                    ; preds = %375
  br label %382

382:                                              ; preds = %._crit_edge17, %291
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
  %392 = fmul double %391, %391
  store double %392, ptr %5, align 8
  %393 = load double, ptr @B6, align 8
  %394 = load double, ptr @B5, align 8
  %395 = call double @llvm.fmuladd.f64(double %393, double %392, double %394)
  %396 = load double, ptr @B4, align 8
  %397 = call double @llvm.fmuladd.f64(double %392, double %395, double %396)
  %398 = load double, ptr @B3, align 8
  %399 = call double @llvm.fmuladd.f64(double %392, double %397, double %398)
  %400 = load double, ptr @B2, align 8
  %401 = call double @llvm.fmuladd.f64(double %392, double %399, double %400)
  %402 = load double, ptr @B1, align 8
  %403 = call double @llvm.fmuladd.f64(double %392, double %401, double %402)
  %404 = load double, ptr @one, align 8
  %405 = call double @llvm.fmuladd.f64(double %392, double %403, double %404)
  store double %405, ptr @sa, align 8
  %406 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %407 = fdiv double %406, 1.500000e+01
  store double %407, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %408 = load double, ptr %6, align 8
  %409 = load double, ptr @sa, align 8
  %410 = load double, ptr @one, align 8
  %411 = fadd double %409, %410
  %412 = load double, ptr @two, align 8
  %413 = load double, ptr %2, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %413, double %411)
  %415 = fmul double %408, %414
  %416 = fdiv double %415, %412
  store double %416, ptr @sa, align 8
  %417 = load double, ptr @piref, align 8
  %418 = load double, ptr @three, align 8
  %419 = fdiv double %417, %418
  store double %419, ptr %3, align 8
  %420 = fmul double %419, %419
  store double %420, ptr %5, align 8
  %421 = load double, ptr %3, align 8
  %422 = load double, ptr @A6, align 8
  %423 = load double, ptr @A5, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %420, double %423)
  %425 = load double, ptr @A4, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %420, double %425)
  %427 = load double, ptr @A3, align 8
  %428 = call double @llvm.fmuladd.f64(double %426, double %420, double %427)
  %429 = load double, ptr @A2, align 8
  %430 = call double @llvm.fmuladd.f64(double %428, double %420, double %429)
  %431 = load double, ptr @A1, align 8
  %432 = call double @llvm.fmuladd.f64(double %430, double %420, double %431)
  %433 = load double, ptr @A0, align 8
  %434 = call double @llvm.fmuladd.f64(double %432, double %420, double %433)
  %435 = fmul double %421, %434
  store double %435, ptr @sb, align 8
  %436 = load double, ptr @sa, align 8
  %437 = fsub double %436, %435
  store double %437, ptr @sc, align 8
  %438 = load double, ptr @one, align 8
  %439 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %440 = fdiv double %438, %439
  store double %440, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %441 = load double, ptr @sc, align 8
  %442 = fmul double %441, 1.000000e-30
  %443 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %444 = fmul double %443, 1.000000e-30
  %445 = fmul double %440, 1.000000e-30
  %446 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %442, double noundef %444, double noundef %445)
  %447 = load double, ptr @piref, align 8
  %448 = load double, ptr @three, align 8
  %449 = load i32, ptr %10, align 4
  %450 = sitofp i32 %449 to double
  %451 = fmul double %448, %450
  %452 = fdiv double %447, %451
  store double %452, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %453 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %454 = load i32, ptr %9, align 4
  %455 = load i32, ptr %10, align 4
  %456 = sub nsw i32 %455, 1
  %457 = icmp sle i32 %454, %456
  br i1 %457, label %.lr.ph19, label %503

.lr.ph19:                                         ; preds = %382
  br label %458

458:                                              ; preds = %.lr.ph19, %496
  %459 = phi i32 [ %454, %.lr.ph19 ], [ %499, %496 ]
  %460 = sitofp i32 %459 to double
  %461 = load double, ptr %6, align 8
  %462 = fmul double %460, %461
  store double %462, ptr %3, align 8
  %463 = fmul double %462, %462
  store double %463, ptr %5, align 8
  %464 = load double, ptr %3, align 8
  %465 = load double, ptr @A6, align 8
  %466 = load double, ptr @A5, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %463, double %466)
  %468 = load double, ptr @A4, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %463, double %468)
  %470 = load double, ptr @A3, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %463, double %470)
  %472 = load double, ptr @A2, align 8
  %473 = call double @llvm.fmuladd.f64(double %471, double %463, double %472)
  %474 = load double, ptr @A1, align 8
  %475 = call double @llvm.fmuladd.f64(double %473, double %463, double %474)
  %476 = load double, ptr @one, align 8
  %477 = call double @llvm.fmuladd.f64(double %475, double %463, double %476)
  %478 = fmul double %464, %477
  store double %478, ptr %4, align 8
  %479 = load double, ptr %2, align 8
  %480 = load double, ptr %5, align 8
  %481 = load double, ptr @B6, align 8
  %482 = load double, ptr @B5, align 8
  %483 = call double @llvm.fmuladd.f64(double %481, double %480, double %482)
  %484 = load double, ptr @B4, align 8
  %485 = call double @llvm.fmuladd.f64(double %480, double %483, double %484)
  %486 = load double, ptr @B3, align 8
  %487 = call double @llvm.fmuladd.f64(double %480, double %485, double %486)
  %488 = load double, ptr @B2, align 8
  %489 = call double @llvm.fmuladd.f64(double %480, double %487, double %488)
  %490 = load double, ptr @B1, align 8
  %491 = call double @llvm.fmuladd.f64(double %480, double %489, double %490)
  %492 = load double, ptr @one, align 8
  %493 = call double @llvm.fmuladd.f64(double %480, double %491, double %492)
  %494 = fdiv double %478, %493
  %495 = fadd double %479, %494
  store double %495, ptr %2, align 8
  br label %496

496:                                              ; preds = %458
  %497 = load i32, ptr %9, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, ptr %9, align 4
  %499 = load i32, ptr %9, align 4
  %500 = load i32, ptr %10, align 4
  %501 = sub nsw i32 %500, 1
  %502 = icmp sle i32 %499, %501
  br i1 %502, label %458, label %._crit_edge20, !llvm.loop !15

._crit_edge20:                                    ; preds = %496
  br label %503

503:                                              ; preds = %._crit_edge20, %382
  %504 = call i32 @dtime(ptr noundef @TimeArray)
  %505 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %506 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %507 = load double, ptr @nulltime, align 8
  %508 = fneg double %507
  %509 = call double @llvm.fmuladd.f64(double %505, double %506, double %508)
  store double %509, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %510 = load double, ptr @piref, align 8
  %511 = load double, ptr @three, align 8
  %512 = fdiv double %510, %511
  store double %512, ptr %3, align 8
  %513 = fmul double %512, %512
  store double %513, ptr %5, align 8
  %514 = load double, ptr %3, align 8
  %515 = load double, ptr @A6, align 8
  %516 = load double, ptr @A5, align 8
  %517 = call double @llvm.fmuladd.f64(double %515, double %513, double %516)
  %518 = load double, ptr @A4, align 8
  %519 = call double @llvm.fmuladd.f64(double %517, double %513, double %518)
  %520 = load double, ptr @A3, align 8
  %521 = call double @llvm.fmuladd.f64(double %519, double %513, double %520)
  %522 = load double, ptr @A2, align 8
  %523 = call double @llvm.fmuladd.f64(double %521, double %513, double %522)
  %524 = load double, ptr @A1, align 8
  %525 = call double @llvm.fmuladd.f64(double %523, double %513, double %524)
  %526 = load double, ptr @one, align 8
  %527 = call double @llvm.fmuladd.f64(double %525, double %513, double %526)
  %528 = fmul double %514, %527
  store double %528, ptr @sa, align 8
  %529 = load double, ptr %5, align 8
  %530 = load double, ptr @B6, align 8
  %531 = load double, ptr @B5, align 8
  %532 = call double @llvm.fmuladd.f64(double %530, double %529, double %531)
  %533 = load double, ptr @B4, align 8
  %534 = call double @llvm.fmuladd.f64(double %529, double %532, double %533)
  %535 = load double, ptr @B3, align 8
  %536 = call double @llvm.fmuladd.f64(double %529, double %534, double %535)
  %537 = load double, ptr @B2, align 8
  %538 = call double @llvm.fmuladd.f64(double %529, double %536, double %537)
  %539 = load double, ptr @B1, align 8
  %540 = call double @llvm.fmuladd.f64(double %529, double %538, double %539)
  %541 = load double, ptr @one, align 8
  %542 = call double @llvm.fmuladd.f64(double %529, double %540, double %541)
  store double %542, ptr @sb, align 8
  %543 = load double, ptr @sa, align 8
  %544 = fdiv double %543, %542
  store double %544, ptr @sa, align 8
  %545 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %546 = fdiv double %545, 2.900000e+01
  store double %546, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %547 = load double, ptr %6, align 8
  %548 = load double, ptr @sa, align 8
  %549 = load double, ptr @two, align 8
  %550 = load double, ptr %2, align 8
  %551 = call double @llvm.fmuladd.f64(double %549, double %550, double %548)
  %552 = fmul double %547, %551
  %553 = fdiv double %552, %549
  store double %553, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %554 = load double, ptr @sa, align 8
  %555 = fsub double %554, f0x3FE62E42FEFA39EF
  store double %555, ptr @sc, align 8
  %556 = load double, ptr @one, align 8
  %557 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %558 = fdiv double %556, %557
  store double %558, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %559 = load double, ptr @sc, align 8
  %560 = fmul double %559, 1.000000e-30
  %561 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %562 = fmul double %561, 1.000000e-30
  %563 = fmul double %558, 1.000000e-30
  %564 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %560, double noundef %562, double noundef %563)
  %565 = load double, ptr @piref, align 8
  %566 = load double, ptr @four, align 8
  %567 = load i32, ptr %10, align 4
  %568 = sitofp i32 %567 to double
  %569 = fmul double %566, %568
  %570 = fdiv double %565, %569
  store double %570, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %571 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %572 = load i32, ptr %9, align 4
  %573 = load i32, ptr %10, align 4
  %574 = sub nsw i32 %573, 1
  %575 = icmp sle i32 %572, %574
  br i1 %575, label %.lr.ph22, label %620

.lr.ph22:                                         ; preds = %503
  br label %576

576:                                              ; preds = %.lr.ph22, %613
  %577 = phi i32 [ %572, %.lr.ph22 ], [ %616, %613 ]
  %578 = sitofp i32 %577 to double
  %579 = load double, ptr %6, align 8
  %580 = fmul double %578, %579
  store double %580, ptr %3, align 8
  %581 = fmul double %580, %580
  store double %581, ptr %5, align 8
  %582 = load double, ptr %3, align 8
  %583 = load double, ptr @A6, align 8
  %584 = load double, ptr @A5, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %581, double %584)
  %586 = load double, ptr @A4, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %581, double %586)
  %588 = load double, ptr @A3, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %581, double %588)
  %590 = load double, ptr @A2, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %581, double %590)
  %592 = load double, ptr @A1, align 8
  %593 = call double @llvm.fmuladd.f64(double %591, double %581, double %592)
  %594 = load double, ptr @one, align 8
  %595 = call double @llvm.fmuladd.f64(double %593, double %581, double %594)
  %596 = fmul double %582, %595
  store double %596, ptr %4, align 8
  %597 = load double, ptr %2, align 8
  %598 = load double, ptr %5, align 8
  %599 = load double, ptr @B6, align 8
  %600 = load double, ptr @B5, align 8
  %601 = call double @llvm.fmuladd.f64(double %599, double %598, double %600)
  %602 = load double, ptr @B4, align 8
  %603 = call double @llvm.fmuladd.f64(double %598, double %601, double %602)
  %604 = load double, ptr @B3, align 8
  %605 = call double @llvm.fmuladd.f64(double %598, double %603, double %604)
  %606 = load double, ptr @B2, align 8
  %607 = call double @llvm.fmuladd.f64(double %598, double %605, double %606)
  %608 = load double, ptr @B1, align 8
  %609 = call double @llvm.fmuladd.f64(double %598, double %607, double %608)
  %610 = load double, ptr @one, align 8
  %611 = call double @llvm.fmuladd.f64(double %598, double %609, double %610)
  %612 = call double @llvm.fmuladd.f64(double %596, double %611, double %597)
  store double %612, ptr %2, align 8
  br label %613

613:                                              ; preds = %576
  %614 = load i32, ptr %9, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, ptr %9, align 4
  %616 = load i32, ptr %9, align 4
  %617 = load i32, ptr %10, align 4
  %618 = sub nsw i32 %617, 1
  %619 = icmp sle i32 %616, %618
  br i1 %619, label %576, label %._crit_edge23, !llvm.loop !16

._crit_edge23:                                    ; preds = %613
  br label %620

620:                                              ; preds = %._crit_edge23, %503
  %621 = call i32 @dtime(ptr noundef @TimeArray)
  %622 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %623 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %624 = load double, ptr @nulltime, align 8
  %625 = fneg double %624
  %626 = call double @llvm.fmuladd.f64(double %622, double %623, double %625)
  store double %626, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %627 = load double, ptr @piref, align 8
  %628 = load double, ptr @four, align 8
  %629 = fdiv double %627, %628
  store double %629, ptr %3, align 8
  %630 = fmul double %629, %629
  store double %630, ptr %5, align 8
  %631 = load double, ptr %3, align 8
  %632 = load double, ptr @A6, align 8
  %633 = load double, ptr @A5, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %630, double %633)
  %635 = load double, ptr @A4, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %630, double %635)
  %637 = load double, ptr @A3, align 8
  %638 = call double @llvm.fmuladd.f64(double %636, double %630, double %637)
  %639 = load double, ptr @A2, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %630, double %639)
  %641 = load double, ptr @A1, align 8
  %642 = call double @llvm.fmuladd.f64(double %640, double %630, double %641)
  %643 = load double, ptr @one, align 8
  %644 = call double @llvm.fmuladd.f64(double %642, double %630, double %643)
  %645 = fmul double %631, %644
  store double %645, ptr @sa, align 8
  %646 = load double, ptr %5, align 8
  %647 = load double, ptr @B6, align 8
  %648 = load double, ptr @B5, align 8
  %649 = call double @llvm.fmuladd.f64(double %647, double %646, double %648)
  %650 = load double, ptr @B4, align 8
  %651 = call double @llvm.fmuladd.f64(double %646, double %649, double %650)
  %652 = load double, ptr @B3, align 8
  %653 = call double @llvm.fmuladd.f64(double %646, double %651, double %652)
  %654 = load double, ptr @B2, align 8
  %655 = call double @llvm.fmuladd.f64(double %646, double %653, double %654)
  %656 = load double, ptr @B1, align 8
  %657 = call double @llvm.fmuladd.f64(double %646, double %655, double %656)
  %658 = load double, ptr @one, align 8
  %659 = call double @llvm.fmuladd.f64(double %646, double %657, double %658)
  store double %659, ptr @sb, align 8
  %660 = load double, ptr @sa, align 8
  %661 = fmul double %660, %659
  store double %661, ptr @sa, align 8
  %662 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %663 = fdiv double %662, 2.900000e+01
  store double %663, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %664 = load double, ptr %6, align 8
  %665 = load double, ptr @sa, align 8
  %666 = load double, ptr @two, align 8
  %667 = load double, ptr %2, align 8
  %668 = call double @llvm.fmuladd.f64(double %666, double %667, double %665)
  %669 = fmul double %664, %668
  %670 = fdiv double %669, %666
  store double %670, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %671 = load double, ptr @sa, align 8
  %672 = fsub double %671, 2.500000e-01
  store double %672, ptr @sc, align 8
  %673 = load double, ptr @one, align 8
  %674 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %675 = fdiv double %673, %674
  store double %675, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %676 = load double, ptr @sc, align 8
  %677 = fmul double %676, 1.000000e-30
  %678 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %679 = fmul double %678, 1.000000e-30
  %680 = fmul double %675, 1.000000e-30
  %681 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %677, double noundef %679, double noundef %680)
  store double 0.000000e+00, ptr %2, align 8
  %682 = load double, ptr @one, align 8
  store double %682, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %683 = load i32, ptr %10, align 4
  %684 = sitofp i32 %683 to double
  %685 = fdiv double f0x40599541F7F192A4, %684
  store double %685, ptr %4, align 8
  %686 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %687 = load i32, ptr %9, align 4
  %688 = load i32, ptr %10, align 4
  %689 = sub nsw i32 %688, 1
  %690 = icmp sle i32 %687, %689
  br i1 %690, label %.lr.ph25, label %716

.lr.ph25:                                         ; preds = %620
  br label %691

691:                                              ; preds = %.lr.ph25, %709
  %692 = phi i32 [ %687, %.lr.ph25 ], [ %712, %709 ]
  %693 = sitofp i32 %692 to double
  %694 = load double, ptr %4, align 8
  %695 = fmul double %693, %694
  store double %695, ptr %6, align 8
  %696 = fmul double %695, %695
  store double %696, ptr %3, align 8
  %697 = load double, ptr %2, align 8
  %698 = load double, ptr %5, align 8
  %699 = load double, ptr %6, align 8
  %700 = fadd double %699, %698
  %701 = fdiv double %698, %700
  %702 = fsub double %697, %701
  %703 = fadd double %696, %698
  %704 = fdiv double %699, %703
  %705 = fsub double %702, %704
  %706 = call double @llvm.fmuladd.f64(double %699, double %696, double %698)
  %707 = fdiv double %696, %706
  %708 = fsub double %705, %707
  store double %708, ptr %2, align 8
  br label %709

709:                                              ; preds = %691
  %710 = load i32, ptr %9, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, ptr %9, align 4
  %712 = load i32, ptr %9, align 4
  %713 = load i32, ptr %10, align 4
  %714 = sub nsw i32 %713, 1
  %715 = icmp sle i32 %712, %714
  br i1 %715, label %691, label %._crit_edge26, !llvm.loop !17

._crit_edge26:                                    ; preds = %709
  br label %716

716:                                              ; preds = %._crit_edge26, %620
  %717 = call i32 @dtime(ptr noundef @TimeArray)
  %718 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %720 = load double, ptr @nulltime, align 8
  %721 = fneg double %720
  %722 = call double @llvm.fmuladd.f64(double %718, double %719, double %721)
  store double %722, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %723 = fdiv double %722, 1.200000e+01
  store double %723, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %724 = load double, ptr @sa, align 8
  store double %724, ptr %6, align 8
  %725 = fmul double %724, %724
  store double %725, ptr %3, align 8
  %726 = load double, ptr %5, align 8
  %727 = fneg double %726
  %728 = load double, ptr %6, align 8
  %729 = fadd double %728, %726
  %730 = fdiv double %726, %729
  %731 = fsub double %727, %730
  %732 = fadd double %725, %726
  %733 = fdiv double %728, %732
  %734 = fsub double %731, %733
  %735 = call double @llvm.fmuladd.f64(double %728, double %725, double %726)
  %736 = fdiv double %725, %735
  %737 = fsub double %734, %736
  store double %737, ptr @sa, align 8
  %738 = load double, ptr %4, align 8
  %739 = fmul double 1.800000e+01, %738
  %740 = load double, ptr @two, align 8
  %741 = load double, ptr %2, align 8
  %742 = call double @llvm.fmuladd.f64(double %740, double %741, double %737)
  %743 = fmul double %739, %742
  store double %743, ptr @sa, align 8
  %744 = fptosi double %743 to i32
  %745 = mul nsw i32 -2000, %744
  store i32 %745, ptr %10, align 4
  %746 = sitofp i32 %745 to double
  %747 = load double, ptr @scale, align 8
  %748 = fdiv double %746, %747
  %749 = fptosi double %748 to i32
  store i32 %749, ptr %10, align 4
  %750 = load double, ptr @sa, align 8
  %751 = fadd double %750, 5.002000e+02
  store double %751, ptr @sc, align 8
  %752 = load double, ptr @one, align 8
  %753 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %754 = fdiv double %752, %753
  store double %754, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %755 = load double, ptr @sc, align 8
  %756 = fmul double %755, 1.000000e-30
  %757 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %758 = fmul double %757, 1.000000e-30
  %759 = fmul double %754, 1.000000e-30
  %760 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %756, double noundef %758, double noundef %759)
  %761 = load double, ptr @piref, align 8
  %762 = load double, ptr @three, align 8
  %763 = load i32, ptr %10, align 4
  %764 = sitofp i32 %763 to double
  %765 = fmul double %762, %764
  %766 = fdiv double %761, %765
  store double %766, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %767 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  %768 = load i32, ptr %9, align 4
  %769 = load i32, ptr %10, align 4
  %770 = sub nsw i32 %769, 1
  %771 = icmp sle i32 %768, %770
  br i1 %771, label %.lr.ph28, label %817

.lr.ph28:                                         ; preds = %716
  br label %772

772:                                              ; preds = %.lr.ph28, %810
  %773 = phi i32 [ %768, %.lr.ph28 ], [ %813, %810 ]
  %774 = sitofp i32 %773 to double
  %775 = load double, ptr %6, align 8
  %776 = fmul double %774, %775
  store double %776, ptr %3, align 8
  %777 = fmul double %776, %776
  store double %777, ptr %5, align 8
  %778 = load double, ptr @B6, align 8
  %779 = load double, ptr @B5, align 8
  %780 = call double @llvm.fmuladd.f64(double %778, double %777, double %779)
  %781 = load double, ptr @B4, align 8
  %782 = call double @llvm.fmuladd.f64(double %777, double %780, double %781)
  %783 = load double, ptr @B3, align 8
  %784 = call double @llvm.fmuladd.f64(double %777, double %782, double %783)
  %785 = load double, ptr @B2, align 8
  %786 = call double @llvm.fmuladd.f64(double %777, double %784, double %785)
  %787 = load double, ptr @B1, align 8
  %788 = call double @llvm.fmuladd.f64(double %777, double %786, double %787)
  %789 = load double, ptr @one, align 8
  %790 = call double @llvm.fmuladd.f64(double %777, double %788, double %789)
  store double %790, ptr %4, align 8
  %791 = load double, ptr %2, align 8
  %792 = fmul double %790, %790
  %793 = load double, ptr %3, align 8
  %794 = fmul double %792, %793
  %795 = load double, ptr @A6, align 8
  %796 = load double, ptr %5, align 8
  %797 = load double, ptr @A5, align 8
  %798 = call double @llvm.fmuladd.f64(double %795, double %796, double %797)
  %799 = load double, ptr @A4, align 8
  %800 = call double @llvm.fmuladd.f64(double %798, double %796, double %799)
  %801 = load double, ptr @A3, align 8
  %802 = call double @llvm.fmuladd.f64(double %800, double %796, double %801)
  %803 = load double, ptr @A2, align 8
  %804 = call double @llvm.fmuladd.f64(double %802, double %796, double %803)
  %805 = load double, ptr @A1, align 8
  %806 = call double @llvm.fmuladd.f64(double %804, double %796, double %805)
  %807 = load double, ptr @one, align 8
  %808 = call double @llvm.fmuladd.f64(double %806, double %796, double %807)
  %809 = call double @llvm.fmuladd.f64(double %794, double %808, double %791)
  store double %809, ptr %2, align 8
  br label %810

810:                                              ; preds = %772
  %811 = load i32, ptr %9, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, ptr %9, align 4
  %813 = load i32, ptr %9, align 4
  %814 = load i32, ptr %10, align 4
  %815 = sub nsw i32 %814, 1
  %816 = icmp sle i32 %813, %815
  br i1 %816, label %772, label %._crit_edge29, !llvm.loop !18

._crit_edge29:                                    ; preds = %810
  br label %817

817:                                              ; preds = %._crit_edge29, %716
  %818 = call i32 @dtime(ptr noundef @TimeArray)
  %819 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %820 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %821 = load double, ptr @nulltime, align 8
  %822 = fneg double %821
  %823 = call double @llvm.fmuladd.f64(double %819, double %820, double %822)
  store double %823, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %824 = load double, ptr @piref, align 8
  %825 = load double, ptr @three, align 8
  %826 = fdiv double %824, %825
  store double %826, ptr %3, align 8
  %827 = fmul double %826, %826
  store double %827, ptr %5, align 8
  %828 = load double, ptr %3, align 8
  %829 = load double, ptr @A6, align 8
  %830 = load double, ptr @A5, align 8
  %831 = call double @llvm.fmuladd.f64(double %829, double %827, double %830)
  %832 = load double, ptr @A4, align 8
  %833 = call double @llvm.fmuladd.f64(double %831, double %827, double %832)
  %834 = load double, ptr @A3, align 8
  %835 = call double @llvm.fmuladd.f64(double %833, double %827, double %834)
  %836 = load double, ptr @A2, align 8
  %837 = call double @llvm.fmuladd.f64(double %835, double %827, double %836)
  %838 = load double, ptr @A1, align 8
  %839 = call double @llvm.fmuladd.f64(double %837, double %827, double %838)
  %840 = load double, ptr @one, align 8
  %841 = call double @llvm.fmuladd.f64(double %839, double %827, double %840)
  %842 = fmul double %828, %841
  store double %842, ptr @sa, align 8
  %843 = load double, ptr %5, align 8
  %844 = load double, ptr @B6, align 8
  %845 = load double, ptr @B5, align 8
  %846 = call double @llvm.fmuladd.f64(double %844, double %843, double %845)
  %847 = load double, ptr @B4, align 8
  %848 = call double @llvm.fmuladd.f64(double %843, double %846, double %847)
  %849 = load double, ptr @B3, align 8
  %850 = call double @llvm.fmuladd.f64(double %843, double %848, double %849)
  %851 = load double, ptr @B2, align 8
  %852 = call double @llvm.fmuladd.f64(double %843, double %850, double %851)
  %853 = load double, ptr @B1, align 8
  %854 = call double @llvm.fmuladd.f64(double %843, double %852, double %853)
  %855 = load double, ptr @one, align 8
  %856 = call double @llvm.fmuladd.f64(double %843, double %854, double %855)
  store double %856, ptr @sb, align 8
  %857 = load double, ptr @sa, align 8
  %858 = fmul double %857, %856
  %859 = fmul double %858, %856
  store double %859, ptr @sa, align 8
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %861 = fdiv double %860, 3.000000e+01
  store double %861, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %862 = load double, ptr %6, align 8
  %863 = load double, ptr @sa, align 8
  %864 = load double, ptr @two, align 8
  %865 = load double, ptr %2, align 8
  %866 = call double @llvm.fmuladd.f64(double %864, double %865, double %863)
  %867 = fmul double %862, %866
  %868 = fdiv double %867, %864
  store double %868, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %869 = load double, ptr @sa, align 8
  %870 = fsub double %869, f0x3FD2AAAAAAAAAAAB
  store double %870, ptr @sc, align 8
  %871 = load double, ptr @one, align 8
  %872 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %873 = fdiv double %871, %872
  store double %873, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %874 = load double, ptr @sc, align 8
  %875 = fmul double %874, 1.000000e-30
  %876 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %877 = fmul double %876, 1.000000e-30
  %878 = fmul double %873, 1.000000e-30
  %879 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %875, double noundef %877, double noundef %878)
  %880 = load double, ptr @five, align 8
  %881 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %882 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %883 = fsub double %881, %882
  %884 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %885 = call double @llvm.fmuladd.f64(double %880, double %883, double %884)
  %886 = fdiv double %885, 5.200000e+01
  store double %886, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %887 = load double, ptr @one, align 8
  %888 = fdiv double %887, %886
  store double %888, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %889 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %890 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %891 = fadd double %889, %890
  %892 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %893 = fadd double %891, %892
  %894 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %895 = fadd double %893, %894
  %896 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %897 = fadd double %895, %896
  store double %897, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %898 = load double, ptr @four, align 8
  %899 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %900 = call double @llvm.fmuladd.f64(double %898, double %899, double %897)
  %901 = fdiv double %900, 1.520000e+02
  store double %901, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %902 = load double, ptr @one, align 8
  %903 = fdiv double %902, %901
  store double %903, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %904 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %905 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %906 = fadd double %904, %905
  %907 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %908 = fadd double %906, %907
  %909 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %910 = fadd double %908, %909
  %911 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %912 = fadd double %910, %911
  store double %912, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %913 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %914 = fadd double %912, %913
  %915 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %916 = fadd double %914, %915
  %917 = fdiv double %916, 1.460000e+02
  store double %917, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %918 = load double, ptr @one, align 8
  %919 = fdiv double %918, %917
  store double %919, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %920 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %921 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %922 = fadd double %920, %921
  %923 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %924 = fadd double %922, %923
  %925 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %926 = fadd double %924, %925
  %927 = fdiv double %926, 9.100000e+01
  store double %927, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %928 = load double, ptr @one, align 8
  %929 = fdiv double %928, %927
  store double %929, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %930 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %931 = load i32, ptr %10, align 4
  %932 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %931)
  %933 = load double, ptr @nulltime, align 8
  %934 = fmul double %933, 1.000000e-30
  %935 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %934)
  %936 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %937 = fmul double %936, 1.000000e-30
  %938 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %937)
  %939 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %940 = fmul double %939, 1.000000e-30
  %941 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %940)
  %942 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %943 = fmul double %942, 1.000000e-30
  %944 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %943)
  %945 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %946 = fmul double %945, 1.000000e-30
  %947 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %946)
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
