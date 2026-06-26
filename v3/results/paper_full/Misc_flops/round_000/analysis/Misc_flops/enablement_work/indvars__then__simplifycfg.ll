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

23:                                               ; preds = %70, %0
  %24 = load double, ptr @sa, align 8
  %25 = load double, ptr @TLimit, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %.loopexit

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
  br label %36

36:                                               ; preds = %41, %27
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
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
  br label %36, !llvm.loop !7

70:                                               ; preds = %36
  %71 = call i32 @dtime(ptr noundef @TimeArray)
  %72 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %72, ptr @sa, align 8
  %73 = load i32, ptr %11, align 4
  %74 = load i32, ptr %8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %.loopexit, label %23, !llvm.loop !9

.loopexit:                                        ; preds = %23, %70
  store double 1.589500e-02, ptr @scale, align 8
  %76 = load double, ptr @scale, align 8
  store double %76, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %77 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %78

78:                                               ; preds = %83, %.loopexit
  %79 = load i32, ptr %9, align 4
  %80 = load i32, ptr %11, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, ptr %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %9, align 4
  br label %78, !llvm.loop !10

86:                                               ; preds = %78
  %87 = call i32 @dtime(ptr noundef @TimeArray)
  %88 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %90 = fmul double %88, %89
  store double %90, ptr @nulltime, align 8
  %91 = load double, ptr @nulltime, align 8
  %92 = fcmp olt double %91, 0.000000e+00
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %94

94:                                               ; preds = %93, %86
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
  %106 = load double, ptr @D1, align 8
  %107 = fadd double %105, %106
  %108 = load double, ptr @E2, align 8
  %109 = fadd double %107, %108
  %110 = load double, ptr @E3, align 8
  %111 = fadd double %109, %110
  %112 = fdiv double %104, %111
  store double %112, ptr @sa, align 8
  %113 = load double, ptr @D1, align 8
  store double %113, ptr @sb, align 8
  %114 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %115 = fdiv double %114, 1.400000e+01
  store double %115, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %116 = load double, ptr %6, align 8
  %117 = load double, ptr @sa, align 8
  %118 = load double, ptr @sb, align 8
  %119 = fadd double %117, %118
  %120 = load double, ptr @two, align 8
  %121 = load double, ptr %2, align 8
  %122 = call double @llvm.fmuladd.f64(double %120, double %121, double %119)
  %123 = fmul double %116, %122
  %124 = load double, ptr @two, align 8
  %125 = fdiv double %123, %124
  store double %125, ptr @sa, align 8
  %126 = load double, ptr @one, align 8
  %127 = load double, ptr @sa, align 8
  %128 = fdiv double %126, %127
  store double %128, ptr @sb, align 8
  %129 = load double, ptr @sb, align 8
  %130 = fptosi double %129 to i32
  %131 = mul nsw i32 40000, %130
  %132 = sitofp i32 %131 to double
  %133 = load double, ptr @scale, align 8
  %134 = fdiv double %132, %133
  %135 = fptosi double %134 to i32
  store i32 %135, ptr %11, align 4
  %136 = load double, ptr @sb, align 8
  %137 = fsub double %136, 2.520000e+01
  store double %137, ptr @sc, align 8
  %138 = load double, ptr @one, align 8
  %139 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %140 = fdiv double %138, %139
  store double %140, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %141 = load double, ptr @sc, align 8
  %142 = fmul double %141, 1.000000e-30
  %143 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %144 = fmul double %143, 1.000000e-30
  %145 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %146 = fmul double %145, 1.000000e-30
  %147 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %142, double noundef %144, double noundef %146)
  %148 = load i32, ptr %11, align 4
  store i32 %148, ptr %10, align 4
  %149 = load double, ptr @five, align 8
  %150 = fneg double %149
  store double %150, ptr %2, align 8
  %151 = load double, ptr @one, align 8
  %152 = fneg double %151
  store double %152, ptr @sa, align 8
  %153 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %154

154:                                              ; preds = %158, %94
  %155 = load i32, ptr %9, align 4
  %156 = load i32, ptr %10, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load double, ptr %2, align 8
  %160 = fneg double %159
  store double %160, ptr %2, align 8
  %161 = load double, ptr @sa, align 8
  %162 = load double, ptr %2, align 8
  %163 = fadd double %161, %162
  store double %163, ptr @sa, align 8
  %164 = load i32, ptr %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %9, align 4
  br label %154, !llvm.loop !11

166:                                              ; preds = %154
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
  br label %179

179:                                              ; preds = %183, %174
  %180 = load i32, ptr %9, align 4
  %181 = load i32, ptr %10, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %209

183:                                              ; preds = %179
  %184 = load double, ptr %2, align 8
  %185 = fneg double %184
  store double %185, ptr %2, align 8
  %186 = load double, ptr @sa, align 8
  %187 = load double, ptr %2, align 8
  %188 = fadd double %186, %187
  store double %188, ptr @sa, align 8
  %189 = load double, ptr %3, align 8
  %190 = load double, ptr @two, align 8
  %191 = fadd double %189, %190
  store double %191, ptr %3, align 8
  %192 = load double, ptr %6, align 8
  %193 = load double, ptr %2, align 8
  %194 = load double, ptr %3, align 8
  %195 = fsub double %193, %194
  %196 = fadd double %192, %195
  store double %196, ptr %6, align 8
  %197 = load double, ptr %4, align 8
  %198 = load double, ptr %2, align 8
  %199 = load double, ptr %3, align 8
  %200 = fneg double %198
  %201 = call double @llvm.fmuladd.f64(double %200, double %199, double %197)
  store double %201, ptr %4, align 8
  %202 = load double, ptr %5, align 8
  %203 = load double, ptr %2, align 8
  %204 = load double, ptr %3, align 8
  %205 = fdiv double %203, %204
  %206 = fadd double %202, %205
  store double %206, ptr %5, align 8
  %207 = load i32, ptr %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %9, align 4
  br label %179, !llvm.loop !12

209:                                              ; preds = %179
  %210 = call i32 @dtime(ptr noundef @TimeArray)
  %211 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %212 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %213 = fmul double %211, %212
  store double %213, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %214 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %215 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %216 = fsub double %214, %215
  %217 = fdiv double %216, 7.000000e+00
  store double %217, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %218 = load double, ptr @sa, align 8
  %219 = load double, ptr %6, align 8
  %220 = fmul double %218, %219
  %221 = load double, ptr @sc, align 8
  %222 = fdiv double %220, %221
  %223 = fptosi double %222 to i32
  store i32 %223, ptr %10, align 4
  %224 = load double, ptr @four, align 8
  %225 = load double, ptr %5, align 8
  %226 = fmul double %224, %225
  %227 = load double, ptr @five, align 8
  %228 = fdiv double %226, %227
  store double %228, ptr @sa, align 8
  %229 = load double, ptr @sa, align 8
  %230 = load double, ptr @five, align 8
  %231 = load double, ptr %4, align 8
  %232 = fdiv double %230, %231
  %233 = fadd double %229, %232
  store double %233, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %234 = load double, ptr @sb, align 8
  %235 = load double, ptr @sc, align 8
  %236 = load double, ptr %4, align 8
  %237 = load double, ptr %4, align 8
  %238 = fmul double %236, %237
  %239 = load double, ptr %4, align 8
  %240 = fmul double %238, %239
  %241 = fdiv double %235, %240
  %242 = fsub double %234, %241
  store double %242, ptr @piprg, align 8
  %243 = load double, ptr @piprg, align 8
  %244 = load double, ptr @piref, align 8
  %245 = fsub double %243, %244
  store double %245, ptr @pierr, align 8
  %246 = load double, ptr @one, align 8
  %247 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %248 = fdiv double %246, %247
  store double %248, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %249 = load double, ptr @pierr, align 8
  %250 = fmul double %249, 1.000000e-30
  %251 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %252 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %253 = fsub double %251, %252
  %254 = fmul double %253, 1.000000e-30
  %255 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %256 = fmul double %255, 1.000000e-30
  %257 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %250, double noundef %254, double noundef %256)
  %258 = load double, ptr @piref, align 8
  %259 = load double, ptr @three, align 8
  %260 = load i32, ptr %10, align 4
  %261 = sitofp i32 %260 to double
  %262 = fmul double %259, %261
  %263 = fdiv double %258, %262
  store double %263, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %264 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %265

265:                                              ; preds = %270, %209
  %266 = load i32, ptr %9, align 4
  %267 = load i32, ptr %10, align 4
  %268 = sub nsw i32 %267, 1
  %269 = icmp sle i32 %266, %268
  br i1 %269, label %270, label %306

270:                                              ; preds = %265
  %271 = load double, ptr %4, align 8
  %272 = load double, ptr @one, align 8
  %273 = fadd double %271, %272
  store double %273, ptr %4, align 8
  %274 = load double, ptr %4, align 8
  %275 = load double, ptr %6, align 8
  %276 = fmul double %274, %275
  store double %276, ptr %3, align 8
  %277 = load double, ptr %3, align 8
  %278 = load double, ptr %3, align 8
  %279 = fmul double %277, %278
  store double %279, ptr %5, align 8
  %280 = load double, ptr %2, align 8
  %281 = load double, ptr %3, align 8
  %282 = load double, ptr @A6, align 8
  %283 = load double, ptr %5, align 8
  %284 = load double, ptr @A5, align 8
  %285 = fneg double %284
  %286 = call double @llvm.fmuladd.f64(double %282, double %283, double %285)
  %287 = load double, ptr %5, align 8
  %288 = load double, ptr @A4, align 8
  %289 = call double @llvm.fmuladd.f64(double %286, double %287, double %288)
  %290 = load double, ptr %5, align 8
  %291 = load double, ptr @A3, align 8
  %292 = fneg double %291
  %293 = call double @llvm.fmuladd.f64(double %289, double %290, double %292)
  %294 = load double, ptr %5, align 8
  %295 = load double, ptr @A2, align 8
  %296 = call double @llvm.fmuladd.f64(double %293, double %294, double %295)
  %297 = load double, ptr %5, align 8
  %298 = load double, ptr @A1, align 8
  %299 = call double @llvm.fmuladd.f64(double %296, double %297, double %298)
  %300 = load double, ptr %5, align 8
  %301 = load double, ptr @one, align 8
  %302 = call double @llvm.fmuladd.f64(double %299, double %300, double %301)
  %303 = call double @llvm.fmuladd.f64(double %281, double %302, double %280)
  store double %303, ptr %2, align 8
  %304 = load i32, ptr %9, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %9, align 4
  br label %265, !llvm.loop !13

306:                                              ; preds = %265
  %307 = call i32 @dtime(ptr noundef @TimeArray)
  %308 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %309 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %310 = load double, ptr @nulltime, align 8
  %311 = fneg double %310
  %312 = call double @llvm.fmuladd.f64(double %308, double %309, double %311)
  store double %312, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %313 = load double, ptr @piref, align 8
  %314 = load double, ptr @three, align 8
  %315 = fdiv double %313, %314
  store double %315, ptr %3, align 8
  %316 = load double, ptr %3, align 8
  %317 = load double, ptr %3, align 8
  %318 = fmul double %316, %317
  store double %318, ptr %5, align 8
  %319 = load double, ptr %3, align 8
  %320 = load double, ptr @A6, align 8
  %321 = load double, ptr %5, align 8
  %322 = load double, ptr @A5, align 8
  %323 = fneg double %322
  %324 = call double @llvm.fmuladd.f64(double %320, double %321, double %323)
  %325 = load double, ptr %5, align 8
  %326 = load double, ptr @A4, align 8
  %327 = call double @llvm.fmuladd.f64(double %324, double %325, double %326)
  %328 = load double, ptr %5, align 8
  %329 = load double, ptr @A3, align 8
  %330 = fneg double %329
  %331 = call double @llvm.fmuladd.f64(double %327, double %328, double %330)
  %332 = load double, ptr %5, align 8
  %333 = load double, ptr @A2, align 8
  %334 = call double @llvm.fmuladd.f64(double %331, double %332, double %333)
  %335 = load double, ptr %5, align 8
  %336 = load double, ptr @A1, align 8
  %337 = call double @llvm.fmuladd.f64(double %334, double %335, double %336)
  %338 = load double, ptr %5, align 8
  %339 = load double, ptr @one, align 8
  %340 = call double @llvm.fmuladd.f64(double %337, double %338, double %339)
  %341 = fmul double %319, %340
  store double %341, ptr @sa, align 8
  %342 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %343 = fdiv double %342, 1.700000e+01
  store double %343, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %344 = load double, ptr %6, align 8
  %345 = load double, ptr @sa, align 8
  %346 = load double, ptr @two, align 8
  %347 = load double, ptr %2, align 8
  %348 = call double @llvm.fmuladd.f64(double %346, double %347, double %345)
  %349 = fmul double %344, %348
  %350 = load double, ptr @two, align 8
  %351 = fdiv double %349, %350
  store double %351, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %352 = load double, ptr @sa, align 8
  %353 = load double, ptr @sb, align 8
  %354 = fsub double %352, %353
  store double %354, ptr @sc, align 8
  %355 = load double, ptr @one, align 8
  %356 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %357 = fdiv double %355, %356
  store double %357, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %358 = load double, ptr @sc, align 8
  %359 = fmul double %358, 1.000000e-30
  %360 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %361 = fmul double %360, 1.000000e-30
  %362 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %363 = fmul double %362, 1.000000e-30
  %364 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %359, double noundef %361, double noundef %363)
  %365 = load double, ptr @A3, align 8
  %366 = fneg double %365
  store double %366, ptr @A3, align 8
  %367 = load double, ptr @A5, align 8
  %368 = fneg double %367
  store double %368, ptr @A5, align 8
  %369 = load double, ptr @piref, align 8
  %370 = load double, ptr @three, align 8
  %371 = load i32, ptr %10, align 4
  %372 = sitofp i32 %371 to double
  %373 = fmul double %370, %372
  %374 = fdiv double %369, %373
  store double %374, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %375 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %376

376:                                              ; preds = %381, %306
  %377 = load i32, ptr %9, align 4
  %378 = load i32, ptr %10, align 4
  %379 = sub nsw i32 %378, 1
  %380 = icmp sle i32 %377, %379
  br i1 %380, label %381, label %412

381:                                              ; preds = %376
  %382 = load i32, ptr %9, align 4
  %383 = sitofp i32 %382 to double
  %384 = load double, ptr %6, align 8
  %385 = fmul double %383, %384
  store double %385, ptr %3, align 8
  %386 = load double, ptr %3, align 8
  %387 = load double, ptr %3, align 8
  %388 = fmul double %386, %387
  store double %388, ptr %5, align 8
  %389 = load double, ptr %2, align 8
  %390 = load double, ptr %5, align 8
  %391 = load double, ptr %5, align 8
  %392 = load double, ptr %5, align 8
  %393 = load double, ptr %5, align 8
  %394 = load double, ptr %5, align 8
  %395 = load double, ptr @B6, align 8
  %396 = load double, ptr %5, align 8
  %397 = load double, ptr @B5, align 8
  %398 = call double @llvm.fmuladd.f64(double %395, double %396, double %397)
  %399 = load double, ptr @B4, align 8
  %400 = call double @llvm.fmuladd.f64(double %394, double %398, double %399)
  %401 = load double, ptr @B3, align 8
  %402 = call double @llvm.fmuladd.f64(double %393, double %400, double %401)
  %403 = load double, ptr @B2, align 8
  %404 = call double @llvm.fmuladd.f64(double %392, double %402, double %403)
  %405 = load double, ptr @B1, align 8
  %406 = call double @llvm.fmuladd.f64(double %391, double %404, double %405)
  %407 = call double @llvm.fmuladd.f64(double %390, double %406, double %389)
  %408 = load double, ptr @one, align 8
  %409 = fadd double %407, %408
  store double %409, ptr %2, align 8
  %410 = load i32, ptr %9, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, ptr %9, align 4
  br label %376, !llvm.loop !14

412:                                              ; preds = %376
  %413 = call i32 @dtime(ptr noundef @TimeArray)
  %414 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %415 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %416 = load double, ptr @nulltime, align 8
  %417 = fneg double %416
  %418 = call double @llvm.fmuladd.f64(double %414, double %415, double %417)
  store double %418, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %419 = load double, ptr @piref, align 8
  %420 = load double, ptr @three, align 8
  %421 = fdiv double %419, %420
  store double %421, ptr %3, align 8
  %422 = load double, ptr %3, align 8
  %423 = load double, ptr %3, align 8
  %424 = fmul double %422, %423
  store double %424, ptr %5, align 8
  %425 = load double, ptr %5, align 8
  %426 = load double, ptr %5, align 8
  %427 = load double, ptr %5, align 8
  %428 = load double, ptr %5, align 8
  %429 = load double, ptr %5, align 8
  %430 = load double, ptr @B6, align 8
  %431 = load double, ptr %5, align 8
  %432 = load double, ptr @B5, align 8
  %433 = call double @llvm.fmuladd.f64(double %430, double %431, double %432)
  %434 = load double, ptr @B4, align 8
  %435 = call double @llvm.fmuladd.f64(double %429, double %433, double %434)
  %436 = load double, ptr @B3, align 8
  %437 = call double @llvm.fmuladd.f64(double %428, double %435, double %436)
  %438 = load double, ptr @B2, align 8
  %439 = call double @llvm.fmuladd.f64(double %427, double %437, double %438)
  %440 = load double, ptr @B1, align 8
  %441 = call double @llvm.fmuladd.f64(double %426, double %439, double %440)
  %442 = load double, ptr @one, align 8
  %443 = call double @llvm.fmuladd.f64(double %425, double %441, double %442)
  store double %443, ptr @sa, align 8
  %444 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %445 = fdiv double %444, 1.500000e+01
  store double %445, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %446 = load double, ptr %6, align 8
  %447 = load double, ptr @sa, align 8
  %448 = load double, ptr @one, align 8
  %449 = fadd double %447, %448
  %450 = load double, ptr @two, align 8
  %451 = load double, ptr %2, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %451, double %449)
  %453 = fmul double %446, %452
  %454 = load double, ptr @two, align 8
  %455 = fdiv double %453, %454
  store double %455, ptr @sa, align 8
  %456 = load double, ptr @piref, align 8
  %457 = load double, ptr @three, align 8
  %458 = fdiv double %456, %457
  store double %458, ptr %3, align 8
  %459 = load double, ptr %3, align 8
  %460 = load double, ptr %3, align 8
  %461 = fmul double %459, %460
  store double %461, ptr %5, align 8
  %462 = load double, ptr %3, align 8
  %463 = load double, ptr @A6, align 8
  %464 = load double, ptr %5, align 8
  %465 = load double, ptr @A5, align 8
  %466 = call double @llvm.fmuladd.f64(double %463, double %464, double %465)
  %467 = load double, ptr %5, align 8
  %468 = load double, ptr @A4, align 8
  %469 = call double @llvm.fmuladd.f64(double %466, double %467, double %468)
  %470 = load double, ptr %5, align 8
  %471 = load double, ptr @A3, align 8
  %472 = call double @llvm.fmuladd.f64(double %469, double %470, double %471)
  %473 = load double, ptr %5, align 8
  %474 = load double, ptr @A2, align 8
  %475 = call double @llvm.fmuladd.f64(double %472, double %473, double %474)
  %476 = load double, ptr %5, align 8
  %477 = load double, ptr @A1, align 8
  %478 = call double @llvm.fmuladd.f64(double %475, double %476, double %477)
  %479 = load double, ptr %5, align 8
  %480 = load double, ptr @A0, align 8
  %481 = call double @llvm.fmuladd.f64(double %478, double %479, double %480)
  %482 = fmul double %462, %481
  store double %482, ptr @sb, align 8
  %483 = load double, ptr @sa, align 8
  %484 = load double, ptr @sb, align 8
  %485 = fsub double %483, %484
  store double %485, ptr @sc, align 8
  %486 = load double, ptr @one, align 8
  %487 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %488 = fdiv double %486, %487
  store double %488, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %489 = load double, ptr @sc, align 8
  %490 = fmul double %489, 1.000000e-30
  %491 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %492 = fmul double %491, 1.000000e-30
  %493 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %494 = fmul double %493, 1.000000e-30
  %495 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %490, double noundef %492, double noundef %494)
  %496 = load double, ptr @piref, align 8
  %497 = load double, ptr @three, align 8
  %498 = load i32, ptr %10, align 4
  %499 = sitofp i32 %498 to double
  %500 = fmul double %497, %499
  %501 = fdiv double %496, %500
  store double %501, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %502 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %503

503:                                              ; preds = %508, %412
  %504 = load i32, ptr %9, align 4
  %505 = load i32, ptr %10, align 4
  %506 = sub nsw i32 %505, 1
  %507 = icmp sle i32 %504, %506
  br i1 %507, label %508, label %562

508:                                              ; preds = %503
  %509 = load i32, ptr %9, align 4
  %510 = sitofp i32 %509 to double
  %511 = load double, ptr %6, align 8
  %512 = fmul double %510, %511
  store double %512, ptr %3, align 8
  %513 = load double, ptr %3, align 8
  %514 = load double, ptr %3, align 8
  %515 = fmul double %513, %514
  store double %515, ptr %5, align 8
  %516 = load double, ptr %3, align 8
  %517 = load double, ptr @A6, align 8
  %518 = load double, ptr %5, align 8
  %519 = load double, ptr @A5, align 8
  %520 = call double @llvm.fmuladd.f64(double %517, double %518, double %519)
  %521 = load double, ptr %5, align 8
  %522 = load double, ptr @A4, align 8
  %523 = call double @llvm.fmuladd.f64(double %520, double %521, double %522)
  %524 = load double, ptr %5, align 8
  %525 = load double, ptr @A3, align 8
  %526 = call double @llvm.fmuladd.f64(double %523, double %524, double %525)
  %527 = load double, ptr %5, align 8
  %528 = load double, ptr @A2, align 8
  %529 = call double @llvm.fmuladd.f64(double %526, double %527, double %528)
  %530 = load double, ptr %5, align 8
  %531 = load double, ptr @A1, align 8
  %532 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %533 = load double, ptr %5, align 8
  %534 = load double, ptr @one, align 8
  %535 = call double @llvm.fmuladd.f64(double %532, double %533, double %534)
  %536 = fmul double %516, %535
  store double %536, ptr %4, align 8
  %537 = load double, ptr %2, align 8
  %538 = load double, ptr %4, align 8
  %539 = load double, ptr %5, align 8
  %540 = load double, ptr %5, align 8
  %541 = load double, ptr %5, align 8
  %542 = load double, ptr %5, align 8
  %543 = load double, ptr %5, align 8
  %544 = load double, ptr @B6, align 8
  %545 = load double, ptr %5, align 8
  %546 = load double, ptr @B5, align 8
  %547 = call double @llvm.fmuladd.f64(double %544, double %545, double %546)
  %548 = load double, ptr @B4, align 8
  %549 = call double @llvm.fmuladd.f64(double %543, double %547, double %548)
  %550 = load double, ptr @B3, align 8
  %551 = call double @llvm.fmuladd.f64(double %542, double %549, double %550)
  %552 = load double, ptr @B2, align 8
  %553 = call double @llvm.fmuladd.f64(double %541, double %551, double %552)
  %554 = load double, ptr @B1, align 8
  %555 = call double @llvm.fmuladd.f64(double %540, double %553, double %554)
  %556 = load double, ptr @one, align 8
  %557 = call double @llvm.fmuladd.f64(double %539, double %555, double %556)
  %558 = fdiv double %538, %557
  %559 = fadd double %537, %558
  store double %559, ptr %2, align 8
  %560 = load i32, ptr %9, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, ptr %9, align 4
  br label %503, !llvm.loop !15

562:                                              ; preds = %503
  %563 = call i32 @dtime(ptr noundef @TimeArray)
  %564 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %565 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %566 = load double, ptr @nulltime, align 8
  %567 = fneg double %566
  %568 = call double @llvm.fmuladd.f64(double %564, double %565, double %567)
  store double %568, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %569 = load double, ptr @piref, align 8
  %570 = load double, ptr @three, align 8
  %571 = fdiv double %569, %570
  store double %571, ptr %3, align 8
  %572 = load double, ptr %3, align 8
  %573 = load double, ptr %3, align 8
  %574 = fmul double %572, %573
  store double %574, ptr %5, align 8
  %575 = load double, ptr %3, align 8
  %576 = load double, ptr @A6, align 8
  %577 = load double, ptr %5, align 8
  %578 = load double, ptr @A5, align 8
  %579 = call double @llvm.fmuladd.f64(double %576, double %577, double %578)
  %580 = load double, ptr %5, align 8
  %581 = load double, ptr @A4, align 8
  %582 = call double @llvm.fmuladd.f64(double %579, double %580, double %581)
  %583 = load double, ptr %5, align 8
  %584 = load double, ptr @A3, align 8
  %585 = call double @llvm.fmuladd.f64(double %582, double %583, double %584)
  %586 = load double, ptr %5, align 8
  %587 = load double, ptr @A2, align 8
  %588 = call double @llvm.fmuladd.f64(double %585, double %586, double %587)
  %589 = load double, ptr %5, align 8
  %590 = load double, ptr @A1, align 8
  %591 = call double @llvm.fmuladd.f64(double %588, double %589, double %590)
  %592 = load double, ptr %5, align 8
  %593 = load double, ptr @one, align 8
  %594 = call double @llvm.fmuladd.f64(double %591, double %592, double %593)
  %595 = fmul double %575, %594
  store double %595, ptr @sa, align 8
  %596 = load double, ptr %5, align 8
  %597 = load double, ptr %5, align 8
  %598 = load double, ptr %5, align 8
  %599 = load double, ptr %5, align 8
  %600 = load double, ptr %5, align 8
  %601 = load double, ptr @B6, align 8
  %602 = load double, ptr %5, align 8
  %603 = load double, ptr @B5, align 8
  %604 = call double @llvm.fmuladd.f64(double %601, double %602, double %603)
  %605 = load double, ptr @B4, align 8
  %606 = call double @llvm.fmuladd.f64(double %600, double %604, double %605)
  %607 = load double, ptr @B3, align 8
  %608 = call double @llvm.fmuladd.f64(double %599, double %606, double %607)
  %609 = load double, ptr @B2, align 8
  %610 = call double @llvm.fmuladd.f64(double %598, double %608, double %609)
  %611 = load double, ptr @B1, align 8
  %612 = call double @llvm.fmuladd.f64(double %597, double %610, double %611)
  %613 = load double, ptr @one, align 8
  %614 = call double @llvm.fmuladd.f64(double %596, double %612, double %613)
  store double %614, ptr @sb, align 8
  %615 = load double, ptr @sa, align 8
  %616 = load double, ptr @sb, align 8
  %617 = fdiv double %615, %616
  store double %617, ptr @sa, align 8
  %618 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %619 = fdiv double %618, 2.900000e+01
  store double %619, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %620 = load double, ptr %6, align 8
  %621 = load double, ptr @sa, align 8
  %622 = load double, ptr @two, align 8
  %623 = load double, ptr %2, align 8
  %624 = call double @llvm.fmuladd.f64(double %622, double %623, double %621)
  %625 = fmul double %620, %624
  %626 = load double, ptr @two, align 8
  %627 = fdiv double %625, %626
  store double %627, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %628 = load double, ptr @sa, align 8
  %629 = load double, ptr @sb, align 8
  %630 = fsub double %628, %629
  store double %630, ptr @sc, align 8
  %631 = load double, ptr @one, align 8
  %632 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %633 = fdiv double %631, %632
  store double %633, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %634 = load double, ptr @sc, align 8
  %635 = fmul double %634, 1.000000e-30
  %636 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %637 = fmul double %636, 1.000000e-30
  %638 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %639 = fmul double %638, 1.000000e-30
  %640 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %635, double noundef %637, double noundef %639)
  %641 = load double, ptr @piref, align 8
  %642 = load double, ptr @four, align 8
  %643 = load i32, ptr %10, align 4
  %644 = sitofp i32 %643 to double
  %645 = fmul double %642, %644
  %646 = fdiv double %641, %645
  store double %646, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %647 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %648

648:                                              ; preds = %653, %562
  %649 = load i32, ptr %9, align 4
  %650 = load i32, ptr %10, align 4
  %651 = sub nsw i32 %650, 1
  %652 = icmp sle i32 %649, %651
  br i1 %652, label %653, label %706

653:                                              ; preds = %648
  %654 = load i32, ptr %9, align 4
  %655 = sitofp i32 %654 to double
  %656 = load double, ptr %6, align 8
  %657 = fmul double %655, %656
  store double %657, ptr %3, align 8
  %658 = load double, ptr %3, align 8
  %659 = load double, ptr %3, align 8
  %660 = fmul double %658, %659
  store double %660, ptr %5, align 8
  %661 = load double, ptr %3, align 8
  %662 = load double, ptr @A6, align 8
  %663 = load double, ptr %5, align 8
  %664 = load double, ptr @A5, align 8
  %665 = call double @llvm.fmuladd.f64(double %662, double %663, double %664)
  %666 = load double, ptr %5, align 8
  %667 = load double, ptr @A4, align 8
  %668 = call double @llvm.fmuladd.f64(double %665, double %666, double %667)
  %669 = load double, ptr %5, align 8
  %670 = load double, ptr @A3, align 8
  %671 = call double @llvm.fmuladd.f64(double %668, double %669, double %670)
  %672 = load double, ptr %5, align 8
  %673 = load double, ptr @A2, align 8
  %674 = call double @llvm.fmuladd.f64(double %671, double %672, double %673)
  %675 = load double, ptr %5, align 8
  %676 = load double, ptr @A1, align 8
  %677 = call double @llvm.fmuladd.f64(double %674, double %675, double %676)
  %678 = load double, ptr %5, align 8
  %679 = load double, ptr @one, align 8
  %680 = call double @llvm.fmuladd.f64(double %677, double %678, double %679)
  %681 = fmul double %661, %680
  store double %681, ptr %4, align 8
  %682 = load double, ptr %2, align 8
  %683 = load double, ptr %4, align 8
  %684 = load double, ptr %5, align 8
  %685 = load double, ptr %5, align 8
  %686 = load double, ptr %5, align 8
  %687 = load double, ptr %5, align 8
  %688 = load double, ptr %5, align 8
  %689 = load double, ptr @B6, align 8
  %690 = load double, ptr %5, align 8
  %691 = load double, ptr @B5, align 8
  %692 = call double @llvm.fmuladd.f64(double %689, double %690, double %691)
  %693 = load double, ptr @B4, align 8
  %694 = call double @llvm.fmuladd.f64(double %688, double %692, double %693)
  %695 = load double, ptr @B3, align 8
  %696 = call double @llvm.fmuladd.f64(double %687, double %694, double %695)
  %697 = load double, ptr @B2, align 8
  %698 = call double @llvm.fmuladd.f64(double %686, double %696, double %697)
  %699 = load double, ptr @B1, align 8
  %700 = call double @llvm.fmuladd.f64(double %685, double %698, double %699)
  %701 = load double, ptr @one, align 8
  %702 = call double @llvm.fmuladd.f64(double %684, double %700, double %701)
  %703 = call double @llvm.fmuladd.f64(double %683, double %702, double %682)
  store double %703, ptr %2, align 8
  %704 = load i32, ptr %9, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, ptr %9, align 4
  br label %648, !llvm.loop !16

706:                                              ; preds = %648
  %707 = call i32 @dtime(ptr noundef @TimeArray)
  %708 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %710 = load double, ptr @nulltime, align 8
  %711 = fneg double %710
  %712 = call double @llvm.fmuladd.f64(double %708, double %709, double %711)
  store double %712, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %713 = load double, ptr @piref, align 8
  %714 = load double, ptr @four, align 8
  %715 = fdiv double %713, %714
  store double %715, ptr %3, align 8
  %716 = load double, ptr %3, align 8
  %717 = load double, ptr %3, align 8
  %718 = fmul double %716, %717
  store double %718, ptr %5, align 8
  %719 = load double, ptr %3, align 8
  %720 = load double, ptr @A6, align 8
  %721 = load double, ptr %5, align 8
  %722 = load double, ptr @A5, align 8
  %723 = call double @llvm.fmuladd.f64(double %720, double %721, double %722)
  %724 = load double, ptr %5, align 8
  %725 = load double, ptr @A4, align 8
  %726 = call double @llvm.fmuladd.f64(double %723, double %724, double %725)
  %727 = load double, ptr %5, align 8
  %728 = load double, ptr @A3, align 8
  %729 = call double @llvm.fmuladd.f64(double %726, double %727, double %728)
  %730 = load double, ptr %5, align 8
  %731 = load double, ptr @A2, align 8
  %732 = call double @llvm.fmuladd.f64(double %729, double %730, double %731)
  %733 = load double, ptr %5, align 8
  %734 = load double, ptr @A1, align 8
  %735 = call double @llvm.fmuladd.f64(double %732, double %733, double %734)
  %736 = load double, ptr %5, align 8
  %737 = load double, ptr @one, align 8
  %738 = call double @llvm.fmuladd.f64(double %735, double %736, double %737)
  %739 = fmul double %719, %738
  store double %739, ptr @sa, align 8
  %740 = load double, ptr %5, align 8
  %741 = load double, ptr %5, align 8
  %742 = load double, ptr %5, align 8
  %743 = load double, ptr %5, align 8
  %744 = load double, ptr %5, align 8
  %745 = load double, ptr @B6, align 8
  %746 = load double, ptr %5, align 8
  %747 = load double, ptr @B5, align 8
  %748 = call double @llvm.fmuladd.f64(double %745, double %746, double %747)
  %749 = load double, ptr @B4, align 8
  %750 = call double @llvm.fmuladd.f64(double %744, double %748, double %749)
  %751 = load double, ptr @B3, align 8
  %752 = call double @llvm.fmuladd.f64(double %743, double %750, double %751)
  %753 = load double, ptr @B2, align 8
  %754 = call double @llvm.fmuladd.f64(double %742, double %752, double %753)
  %755 = load double, ptr @B1, align 8
  %756 = call double @llvm.fmuladd.f64(double %741, double %754, double %755)
  %757 = load double, ptr @one, align 8
  %758 = call double @llvm.fmuladd.f64(double %740, double %756, double %757)
  store double %758, ptr @sb, align 8
  %759 = load double, ptr @sa, align 8
  %760 = load double, ptr @sb, align 8
  %761 = fmul double %759, %760
  store double %761, ptr @sa, align 8
  %762 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %763 = fdiv double %762, 2.900000e+01
  store double %763, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %764 = load double, ptr %6, align 8
  %765 = load double, ptr @sa, align 8
  %766 = load double, ptr @two, align 8
  %767 = load double, ptr %2, align 8
  %768 = call double @llvm.fmuladd.f64(double %766, double %767, double %765)
  %769 = fmul double %764, %768
  %770 = load double, ptr @two, align 8
  %771 = fdiv double %769, %770
  store double %771, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %772 = load double, ptr @sa, align 8
  %773 = load double, ptr @sb, align 8
  %774 = fsub double %772, %773
  store double %774, ptr @sc, align 8
  %775 = load double, ptr @one, align 8
  %776 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %777 = fdiv double %775, %776
  store double %777, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %778 = load double, ptr @sc, align 8
  %779 = fmul double %778, 1.000000e-30
  %780 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %781 = fmul double %780, 1.000000e-30
  %782 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %783 = fmul double %782, 1.000000e-30
  %784 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %779, double noundef %781, double noundef %783)
  store double 0.000000e+00, ptr %2, align 8
  %785 = load double, ptr @one, align 8
  store double %785, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %786 = load double, ptr @sa, align 8
  %787 = load i32, ptr %10, align 4
  %788 = sitofp i32 %787 to double
  %789 = fdiv double %786, %788
  store double %789, ptr %4, align 8
  %790 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %791

791:                                              ; preds = %796, %706
  %792 = load i32, ptr %9, align 4
  %793 = load i32, ptr %10, align 4
  %794 = sub nsw i32 %793, 1
  %795 = icmp sle i32 %792, %794
  br i1 %795, label %796, label %826

796:                                              ; preds = %791
  %797 = load i32, ptr %9, align 4
  %798 = sitofp i32 %797 to double
  %799 = load double, ptr %4, align 8
  %800 = fmul double %798, %799
  store double %800, ptr %6, align 8
  %801 = load double, ptr %6, align 8
  %802 = load double, ptr %6, align 8
  %803 = fmul double %801, %802
  store double %803, ptr %3, align 8
  %804 = load double, ptr %2, align 8
  %805 = load double, ptr %5, align 8
  %806 = load double, ptr %6, align 8
  %807 = load double, ptr %5, align 8
  %808 = fadd double %806, %807
  %809 = fdiv double %805, %808
  %810 = fsub double %804, %809
  %811 = load double, ptr %6, align 8
  %812 = load double, ptr %3, align 8
  %813 = load double, ptr %5, align 8
  %814 = fadd double %812, %813
  %815 = fdiv double %811, %814
  %816 = fsub double %810, %815
  %817 = load double, ptr %3, align 8
  %818 = load double, ptr %6, align 8
  %819 = load double, ptr %3, align 8
  %820 = load double, ptr %5, align 8
  %821 = call double @llvm.fmuladd.f64(double %818, double %819, double %820)
  %822 = fdiv double %817, %821
  %823 = fsub double %816, %822
  store double %823, ptr %2, align 8
  %824 = load i32, ptr %9, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, ptr %9, align 4
  br label %791, !llvm.loop !17

826:                                              ; preds = %791
  %827 = call i32 @dtime(ptr noundef @TimeArray)
  %828 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %830 = load double, ptr @nulltime, align 8
  %831 = fneg double %830
  %832 = call double @llvm.fmuladd.f64(double %828, double %829, double %831)
  store double %832, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %833 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %834 = fdiv double %833, 1.200000e+01
  store double %834, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %835 = load double, ptr @sa, align 8
  store double %835, ptr %6, align 8
  %836 = load double, ptr %6, align 8
  %837 = load double, ptr %6, align 8
  %838 = fmul double %836, %837
  store double %838, ptr %3, align 8
  %839 = load double, ptr %5, align 8
  %840 = fneg double %839
  %841 = load double, ptr %5, align 8
  %842 = load double, ptr %6, align 8
  %843 = load double, ptr %5, align 8
  %844 = fadd double %842, %843
  %845 = fdiv double %841, %844
  %846 = fsub double %840, %845
  %847 = load double, ptr %6, align 8
  %848 = load double, ptr %3, align 8
  %849 = load double, ptr %5, align 8
  %850 = fadd double %848, %849
  %851 = fdiv double %847, %850
  %852 = fsub double %846, %851
  %853 = load double, ptr %3, align 8
  %854 = load double, ptr %6, align 8
  %855 = load double, ptr %3, align 8
  %856 = load double, ptr %5, align 8
  %857 = call double @llvm.fmuladd.f64(double %854, double %855, double %856)
  %858 = fdiv double %853, %857
  %859 = fsub double %852, %858
  store double %859, ptr @sa, align 8
  %860 = load double, ptr %4, align 8
  %861 = fmul double 1.800000e+01, %860
  %862 = load double, ptr @sa, align 8
  %863 = load double, ptr @two, align 8
  %864 = load double, ptr %2, align 8
  %865 = call double @llvm.fmuladd.f64(double %863, double %864, double %862)
  %866 = fmul double %861, %865
  store double %866, ptr @sa, align 8
  %867 = load double, ptr @sa, align 8
  %868 = fptosi double %867 to i32
  %869 = mul nsw i32 -2000, %868
  store i32 %869, ptr %10, align 4
  %870 = load i32, ptr %10, align 4
  %871 = sitofp i32 %870 to double
  %872 = load double, ptr @scale, align 8
  %873 = fdiv double %871, %872
  %874 = fptosi double %873 to i32
  store i32 %874, ptr %10, align 4
  %875 = load double, ptr @sa, align 8
  %876 = fadd double %875, 5.002000e+02
  store double %876, ptr @sc, align 8
  %877 = load double, ptr @one, align 8
  %878 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %879 = fdiv double %877, %878
  store double %879, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %880 = load double, ptr @sc, align 8
  %881 = fmul double %880, 1.000000e-30
  %882 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %883 = fmul double %882, 1.000000e-30
  %884 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %885 = fmul double %884, 1.000000e-30
  %886 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %881, double noundef %883, double noundef %885)
  %887 = load double, ptr @piref, align 8
  %888 = load double, ptr @three, align 8
  %889 = load i32, ptr %10, align 4
  %890 = sitofp i32 %889 to double
  %891 = fmul double %888, %890
  %892 = fdiv double %887, %891
  store double %892, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %893 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %894

894:                                              ; preds = %899, %826
  %895 = load i32, ptr %9, align 4
  %896 = load i32, ptr %10, align 4
  %897 = sub nsw i32 %896, 1
  %898 = icmp sle i32 %895, %897
  br i1 %898, label %899, label %954

899:                                              ; preds = %894
  %900 = load i32, ptr %9, align 4
  %901 = sitofp i32 %900 to double
  %902 = load double, ptr %6, align 8
  %903 = fmul double %901, %902
  store double %903, ptr %3, align 8
  %904 = load double, ptr %3, align 8
  %905 = load double, ptr %3, align 8
  %906 = fmul double %904, %905
  store double %906, ptr %5, align 8
  %907 = load double, ptr %5, align 8
  %908 = load double, ptr %5, align 8
  %909 = load double, ptr %5, align 8
  %910 = load double, ptr %5, align 8
  %911 = load double, ptr %5, align 8
  %912 = load double, ptr @B6, align 8
  %913 = load double, ptr %5, align 8
  %914 = load double, ptr @B5, align 8
  %915 = call double @llvm.fmuladd.f64(double %912, double %913, double %914)
  %916 = load double, ptr @B4, align 8
  %917 = call double @llvm.fmuladd.f64(double %911, double %915, double %916)
  %918 = load double, ptr @B3, align 8
  %919 = call double @llvm.fmuladd.f64(double %910, double %917, double %918)
  %920 = load double, ptr @B2, align 8
  %921 = call double @llvm.fmuladd.f64(double %909, double %919, double %920)
  %922 = load double, ptr @B1, align 8
  %923 = call double @llvm.fmuladd.f64(double %908, double %921, double %922)
  %924 = load double, ptr @one, align 8
  %925 = call double @llvm.fmuladd.f64(double %907, double %923, double %924)
  store double %925, ptr %4, align 8
  %926 = load double, ptr %2, align 8
  %927 = load double, ptr %4, align 8
  %928 = load double, ptr %4, align 8
  %929 = fmul double %927, %928
  %930 = load double, ptr %3, align 8
  %931 = fmul double %929, %930
  %932 = load double, ptr @A6, align 8
  %933 = load double, ptr %5, align 8
  %934 = load double, ptr @A5, align 8
  %935 = call double @llvm.fmuladd.f64(double %932, double %933, double %934)
  %936 = load double, ptr %5, align 8
  %937 = load double, ptr @A4, align 8
  %938 = call double @llvm.fmuladd.f64(double %935, double %936, double %937)
  %939 = load double, ptr %5, align 8
  %940 = load double, ptr @A3, align 8
  %941 = call double @llvm.fmuladd.f64(double %938, double %939, double %940)
  %942 = load double, ptr %5, align 8
  %943 = load double, ptr @A2, align 8
  %944 = call double @llvm.fmuladd.f64(double %941, double %942, double %943)
  %945 = load double, ptr %5, align 8
  %946 = load double, ptr @A1, align 8
  %947 = call double @llvm.fmuladd.f64(double %944, double %945, double %946)
  %948 = load double, ptr %5, align 8
  %949 = load double, ptr @one, align 8
  %950 = call double @llvm.fmuladd.f64(double %947, double %948, double %949)
  %951 = call double @llvm.fmuladd.f64(double %931, double %950, double %926)
  store double %951, ptr %2, align 8
  %952 = load i32, ptr %9, align 4
  %953 = add nsw i32 %952, 1
  store i32 %953, ptr %9, align 4
  br label %894, !llvm.loop !18

954:                                              ; preds = %894
  %955 = call i32 @dtime(ptr noundef @TimeArray)
  %956 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %957 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %958 = load double, ptr @nulltime, align 8
  %959 = fneg double %958
  %960 = call double @llvm.fmuladd.f64(double %956, double %957, double %959)
  store double %960, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %961 = load double, ptr @piref, align 8
  %962 = load double, ptr @three, align 8
  %963 = fdiv double %961, %962
  store double %963, ptr %3, align 8
  %964 = load double, ptr %3, align 8
  %965 = load double, ptr %3, align 8
  %966 = fmul double %964, %965
  store double %966, ptr %5, align 8
  %967 = load double, ptr %3, align 8
  %968 = load double, ptr @A6, align 8
  %969 = load double, ptr %5, align 8
  %970 = load double, ptr @A5, align 8
  %971 = call double @llvm.fmuladd.f64(double %968, double %969, double %970)
  %972 = load double, ptr %5, align 8
  %973 = load double, ptr @A4, align 8
  %974 = call double @llvm.fmuladd.f64(double %971, double %972, double %973)
  %975 = load double, ptr %5, align 8
  %976 = load double, ptr @A3, align 8
  %977 = call double @llvm.fmuladd.f64(double %974, double %975, double %976)
  %978 = load double, ptr %5, align 8
  %979 = load double, ptr @A2, align 8
  %980 = call double @llvm.fmuladd.f64(double %977, double %978, double %979)
  %981 = load double, ptr %5, align 8
  %982 = load double, ptr @A1, align 8
  %983 = call double @llvm.fmuladd.f64(double %980, double %981, double %982)
  %984 = load double, ptr %5, align 8
  %985 = load double, ptr @one, align 8
  %986 = call double @llvm.fmuladd.f64(double %983, double %984, double %985)
  %987 = fmul double %967, %986
  store double %987, ptr @sa, align 8
  %988 = load double, ptr %5, align 8
  %989 = load double, ptr %5, align 8
  %990 = load double, ptr %5, align 8
  %991 = load double, ptr %5, align 8
  %992 = load double, ptr %5, align 8
  %993 = load double, ptr @B6, align 8
  %994 = load double, ptr %5, align 8
  %995 = load double, ptr @B5, align 8
  %996 = call double @llvm.fmuladd.f64(double %993, double %994, double %995)
  %997 = load double, ptr @B4, align 8
  %998 = call double @llvm.fmuladd.f64(double %992, double %996, double %997)
  %999 = load double, ptr @B3, align 8
  %1000 = call double @llvm.fmuladd.f64(double %991, double %998, double %999)
  %1001 = load double, ptr @B2, align 8
  %1002 = call double @llvm.fmuladd.f64(double %990, double %1000, double %1001)
  %1003 = load double, ptr @B1, align 8
  %1004 = call double @llvm.fmuladd.f64(double %989, double %1002, double %1003)
  %1005 = load double, ptr @one, align 8
  %1006 = call double @llvm.fmuladd.f64(double %988, double %1004, double %1005)
  store double %1006, ptr @sb, align 8
  %1007 = load double, ptr @sa, align 8
  %1008 = load double, ptr @sb, align 8
  %1009 = fmul double %1007, %1008
  %1010 = load double, ptr @sb, align 8
  %1011 = fmul double %1009, %1010
  store double %1011, ptr @sa, align 8
  %1012 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1013 = fdiv double %1012, 3.000000e+01
  store double %1013, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1014 = load double, ptr %6, align 8
  %1015 = load double, ptr @sa, align 8
  %1016 = load double, ptr @two, align 8
  %1017 = load double, ptr %2, align 8
  %1018 = call double @llvm.fmuladd.f64(double %1016, double %1017, double %1015)
  %1019 = fmul double %1014, %1018
  %1020 = load double, ptr @two, align 8
  %1021 = fdiv double %1019, %1020
  store double %1021, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1022 = load double, ptr @sa, align 8
  %1023 = load double, ptr @sb, align 8
  %1024 = fsub double %1022, %1023
  store double %1024, ptr @sc, align 8
  %1025 = load double, ptr @one, align 8
  %1026 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1027 = fdiv double %1025, %1026
  store double %1027, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1028 = load double, ptr @sc, align 8
  %1029 = fmul double %1028, 1.000000e-30
  %1030 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1031 = fmul double %1030, 1.000000e-30
  %1032 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1033 = fmul double %1032, 1.000000e-30
  %1034 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1029, double noundef %1031, double noundef %1033)
  %1035 = load double, ptr @five, align 8
  %1036 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1037 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1038 = fsub double %1036, %1037
  %1039 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1040 = call double @llvm.fmuladd.f64(double %1035, double %1038, double %1039)
  %1041 = fdiv double %1040, 5.200000e+01
  store double %1041, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1042 = load double, ptr @one, align 8
  %1043 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1044 = fdiv double %1042, %1043
  store double %1044, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1045 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1046 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1047 = fadd double %1045, %1046
  %1048 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1049 = fadd double %1047, %1048
  %1050 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1051 = fadd double %1049, %1050
  %1052 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1053 = fadd double %1051, %1052
  store double %1053, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1054 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1055 = load double, ptr @four, align 8
  %1056 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1057 = call double @llvm.fmuladd.f64(double %1055, double %1056, double %1054)
  %1058 = fdiv double %1057, 1.520000e+02
  store double %1058, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1059 = load double, ptr @one, align 8
  %1060 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1061 = fdiv double %1059, %1060
  store double %1061, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1062 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1063 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1064 = fadd double %1062, %1063
  %1065 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1066 = fadd double %1064, %1065
  %1067 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1068 = fadd double %1066, %1067
  %1069 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1070 = fadd double %1068, %1069
  store double %1070, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1071 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1072 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1073 = fadd double %1071, %1072
  %1074 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1075 = fadd double %1073, %1074
  %1076 = fdiv double %1075, 1.460000e+02
  store double %1076, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1077 = load double, ptr @one, align 8
  %1078 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1079 = fdiv double %1077, %1078
  store double %1079, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1080 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1081 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1082 = fadd double %1080, %1081
  %1083 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1084 = fadd double %1082, %1083
  %1085 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1086 = fadd double %1084, %1085
  %1087 = fdiv double %1086, 9.100000e+01
  store double %1087, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1088 = load double, ptr @one, align 8
  %1089 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1090 = fdiv double %1088, %1089
  store double %1090, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1091 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1092 = load i32, ptr %10, align 4
  %1093 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1092)
  %1094 = load double, ptr @nulltime, align 8
  %1095 = fmul double %1094, 1.000000e-30
  %1096 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1095)
  %1097 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1098 = fmul double %1097, 1.000000e-30
  %1099 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1098)
  %1100 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1101 = fmul double %1100, 1.000000e-30
  %1102 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1101)
  %1103 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1104 = fmul double %1103, 1.000000e-30
  %1105 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1104)
  %1106 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1107 = fmul double %1106, 1.000000e-30
  %1108 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1107)
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
