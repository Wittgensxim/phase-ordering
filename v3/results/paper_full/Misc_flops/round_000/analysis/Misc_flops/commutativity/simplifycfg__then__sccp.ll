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
  br i1 %26, label %27, label %76

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
  br i1 %75, label %76, label %23, !llvm.loop !9

76:                                               ; preds = %70, %23
  store double 1.589500e-02, ptr @scale, align 8
  %77 = load double, ptr @scale, align 8
  store double %77, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %78 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %79

79:                                               ; preds = %84, %76
  %80 = load i32, ptr %9, align 4
  %81 = load i32, ptr %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sle i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, ptr %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %9, align 4
  br label %79, !llvm.loop !10

87:                                               ; preds = %79
  %88 = call i32 @dtime(ptr noundef @TimeArray)
  %89 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %90 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %91 = fmul double %89, %90
  store double %91, ptr @nulltime, align 8
  %92 = load double, ptr @nulltime, align 8
  %93 = fcmp olt double %92, 0.000000e+00
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %95

95:                                               ; preds = %94, %87
  %96 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %97 = load double, ptr @sa, align 8
  %98 = load double, ptr @nulltime, align 8
  %99 = fneg double %98
  %100 = call double @llvm.fmuladd.f64(double %96, double %97, double %99)
  store double %100, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %101 = load double, ptr @D1, align 8
  %102 = load double, ptr @D2, align 8
  %103 = fadd double %101, %102
  %104 = load double, ptr @D3, align 8
  %105 = fadd double %103, %104
  %106 = load double, ptr @one, align 8
  %107 = load double, ptr @D1, align 8
  %108 = fadd double %106, %107
  %109 = load double, ptr @E2, align 8
  %110 = fadd double %108, %109
  %111 = load double, ptr @E3, align 8
  %112 = fadd double %110, %111
  %113 = fdiv double %105, %112
  store double %113, ptr @sa, align 8
  %114 = load double, ptr @D1, align 8
  store double %114, ptr @sb, align 8
  %115 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %116 = fdiv double %115, 1.400000e+01
  store double %116, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %117 = load double, ptr %6, align 8
  %118 = load double, ptr @sa, align 8
  %119 = load double, ptr @sb, align 8
  %120 = fadd double %118, %119
  %121 = load double, ptr @two, align 8
  %122 = load double, ptr %2, align 8
  %123 = call double @llvm.fmuladd.f64(double %121, double %122, double %120)
  %124 = fmul double %117, %123
  %125 = load double, ptr @two, align 8
  %126 = fdiv double %124, %125
  store double %126, ptr @sa, align 8
  %127 = load double, ptr @one, align 8
  %128 = load double, ptr @sa, align 8
  %129 = fdiv double %127, %128
  store double %129, ptr @sb, align 8
  %130 = load double, ptr @sb, align 8
  %131 = fptosi double %130 to i32
  %132 = mul nsw i32 40000, %131
  %133 = sitofp i32 %132 to double
  %134 = load double, ptr @scale, align 8
  %135 = fdiv double %133, %134
  %136 = fptosi double %135 to i32
  store i32 %136, ptr %11, align 4
  %137 = load double, ptr @sb, align 8
  %138 = fsub double %137, 2.520000e+01
  store double %138, ptr @sc, align 8
  %139 = load double, ptr @one, align 8
  %140 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %141 = fdiv double %139, %140
  store double %141, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %142 = load double, ptr @sc, align 8
  %143 = fmul double %142, 1.000000e-30
  %144 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %145 = fmul double %144, 1.000000e-30
  %146 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %147 = fmul double %146, 1.000000e-30
  %148 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %143, double noundef %145, double noundef %147)
  %149 = load i32, ptr %11, align 4
  store i32 %149, ptr %10, align 4
  %150 = load double, ptr @five, align 8
  %151 = fneg double %150
  store double %151, ptr %2, align 8
  %152 = load double, ptr @one, align 8
  %153 = fneg double %152
  store double %153, ptr @sa, align 8
  %154 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %155

155:                                              ; preds = %159, %95
  %156 = load i32, ptr %9, align 4
  %157 = load i32, ptr %10, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load double, ptr %2, align 8
  %161 = fneg double %160
  store double %161, ptr %2, align 8
  %162 = load double, ptr @sa, align 8
  %163 = load double, ptr %2, align 8
  %164 = fadd double %162, %163
  store double %164, ptr @sa, align 8
  %165 = load i32, ptr %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %9, align 4
  br label %155, !llvm.loop !11

167:                                              ; preds = %155
  %168 = call i32 @dtime(ptr noundef @TimeArray)
  %169 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %170 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %171 = fmul double %169, %170
  store double %171, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %172 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %173 = fcmp olt double %172, 0.000000e+00
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %175

175:                                              ; preds = %174, %167
  %176 = load i32, ptr %10, align 4
  %177 = sitofp i32 %176 to double
  store double %177, ptr @sc, align 8
  %178 = load double, ptr @sa, align 8
  store double %178, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %179 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %180

180:                                              ; preds = %184, %175
  %181 = load i32, ptr %9, align 4
  %182 = load i32, ptr %10, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %210

184:                                              ; preds = %180
  %185 = load double, ptr %2, align 8
  %186 = fneg double %185
  store double %186, ptr %2, align 8
  %187 = load double, ptr @sa, align 8
  %188 = load double, ptr %2, align 8
  %189 = fadd double %187, %188
  store double %189, ptr @sa, align 8
  %190 = load double, ptr %3, align 8
  %191 = load double, ptr @two, align 8
  %192 = fadd double %190, %191
  store double %192, ptr %3, align 8
  %193 = load double, ptr %6, align 8
  %194 = load double, ptr %2, align 8
  %195 = load double, ptr %3, align 8
  %196 = fsub double %194, %195
  %197 = fadd double %193, %196
  store double %197, ptr %6, align 8
  %198 = load double, ptr %4, align 8
  %199 = load double, ptr %2, align 8
  %200 = load double, ptr %3, align 8
  %201 = fneg double %199
  %202 = call double @llvm.fmuladd.f64(double %201, double %200, double %198)
  store double %202, ptr %4, align 8
  %203 = load double, ptr %5, align 8
  %204 = load double, ptr %2, align 8
  %205 = load double, ptr %3, align 8
  %206 = fdiv double %204, %205
  %207 = fadd double %203, %206
  store double %207, ptr %5, align 8
  %208 = load i32, ptr %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %9, align 4
  br label %180, !llvm.loop !12

210:                                              ; preds = %180
  %211 = call i32 @dtime(ptr noundef @TimeArray)
  %212 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %213 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %214 = fmul double %212, %213
  store double %214, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %215 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %216 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %217 = fsub double %215, %216
  %218 = fdiv double %217, 7.000000e+00
  store double %218, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %219 = load double, ptr @sa, align 8
  %220 = load double, ptr %6, align 8
  %221 = fmul double %219, %220
  %222 = load double, ptr @sc, align 8
  %223 = fdiv double %221, %222
  %224 = fptosi double %223 to i32
  store i32 %224, ptr %10, align 4
  %225 = load double, ptr @four, align 8
  %226 = load double, ptr %5, align 8
  %227 = fmul double %225, %226
  %228 = load double, ptr @five, align 8
  %229 = fdiv double %227, %228
  store double %229, ptr @sa, align 8
  %230 = load double, ptr @sa, align 8
  %231 = load double, ptr @five, align 8
  %232 = load double, ptr %4, align 8
  %233 = fdiv double %231, %232
  %234 = fadd double %230, %233
  store double %234, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %235 = load double, ptr @sb, align 8
  %236 = load double, ptr @sc, align 8
  %237 = load double, ptr %4, align 8
  %238 = load double, ptr %4, align 8
  %239 = fmul double %237, %238
  %240 = load double, ptr %4, align 8
  %241 = fmul double %239, %240
  %242 = fdiv double %236, %241
  %243 = fsub double %235, %242
  store double %243, ptr @piprg, align 8
  %244 = load double, ptr @piprg, align 8
  %245 = load double, ptr @piref, align 8
  %246 = fsub double %244, %245
  store double %246, ptr @pierr, align 8
  %247 = load double, ptr @one, align 8
  %248 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %249 = fdiv double %247, %248
  store double %249, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %250 = load double, ptr @pierr, align 8
  %251 = fmul double %250, 1.000000e-30
  %252 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %253 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %254 = fsub double %252, %253
  %255 = fmul double %254, 1.000000e-30
  %256 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %257 = fmul double %256, 1.000000e-30
  %258 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %251, double noundef %255, double noundef %257)
  %259 = load double, ptr @piref, align 8
  %260 = load double, ptr @three, align 8
  %261 = load i32, ptr %10, align 4
  %262 = sitofp i32 %261 to double
  %263 = fmul double %260, %262
  %264 = fdiv double %259, %263
  store double %264, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %265 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %266

266:                                              ; preds = %271, %210
  %267 = load i32, ptr %9, align 4
  %268 = load i32, ptr %10, align 4
  %269 = sub nsw i32 %268, 1
  %270 = icmp sle i32 %267, %269
  br i1 %270, label %271, label %307

271:                                              ; preds = %266
  %272 = load double, ptr %4, align 8
  %273 = load double, ptr @one, align 8
  %274 = fadd double %272, %273
  store double %274, ptr %4, align 8
  %275 = load double, ptr %4, align 8
  %276 = load double, ptr %6, align 8
  %277 = fmul double %275, %276
  store double %277, ptr %3, align 8
  %278 = load double, ptr %3, align 8
  %279 = load double, ptr %3, align 8
  %280 = fmul double %278, %279
  store double %280, ptr %5, align 8
  %281 = load double, ptr %2, align 8
  %282 = load double, ptr %3, align 8
  %283 = load double, ptr @A6, align 8
  %284 = load double, ptr %5, align 8
  %285 = load double, ptr @A5, align 8
  %286 = fneg double %285
  %287 = call double @llvm.fmuladd.f64(double %283, double %284, double %286)
  %288 = load double, ptr %5, align 8
  %289 = load double, ptr @A4, align 8
  %290 = call double @llvm.fmuladd.f64(double %287, double %288, double %289)
  %291 = load double, ptr %5, align 8
  %292 = load double, ptr @A3, align 8
  %293 = fneg double %292
  %294 = call double @llvm.fmuladd.f64(double %290, double %291, double %293)
  %295 = load double, ptr %5, align 8
  %296 = load double, ptr @A2, align 8
  %297 = call double @llvm.fmuladd.f64(double %294, double %295, double %296)
  %298 = load double, ptr %5, align 8
  %299 = load double, ptr @A1, align 8
  %300 = call double @llvm.fmuladd.f64(double %297, double %298, double %299)
  %301 = load double, ptr %5, align 8
  %302 = load double, ptr @one, align 8
  %303 = call double @llvm.fmuladd.f64(double %300, double %301, double %302)
  %304 = call double @llvm.fmuladd.f64(double %282, double %303, double %281)
  store double %304, ptr %2, align 8
  %305 = load i32, ptr %9, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr %9, align 4
  br label %266, !llvm.loop !13

307:                                              ; preds = %266
  %308 = call i32 @dtime(ptr noundef @TimeArray)
  %309 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %310 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %311 = load double, ptr @nulltime, align 8
  %312 = fneg double %311
  %313 = call double @llvm.fmuladd.f64(double %309, double %310, double %312)
  store double %313, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %314 = load double, ptr @piref, align 8
  %315 = load double, ptr @three, align 8
  %316 = fdiv double %314, %315
  store double %316, ptr %3, align 8
  %317 = load double, ptr %3, align 8
  %318 = load double, ptr %3, align 8
  %319 = fmul double %317, %318
  store double %319, ptr %5, align 8
  %320 = load double, ptr %3, align 8
  %321 = load double, ptr @A6, align 8
  %322 = load double, ptr %5, align 8
  %323 = load double, ptr @A5, align 8
  %324 = fneg double %323
  %325 = call double @llvm.fmuladd.f64(double %321, double %322, double %324)
  %326 = load double, ptr %5, align 8
  %327 = load double, ptr @A4, align 8
  %328 = call double @llvm.fmuladd.f64(double %325, double %326, double %327)
  %329 = load double, ptr %5, align 8
  %330 = load double, ptr @A3, align 8
  %331 = fneg double %330
  %332 = call double @llvm.fmuladd.f64(double %328, double %329, double %331)
  %333 = load double, ptr %5, align 8
  %334 = load double, ptr @A2, align 8
  %335 = call double @llvm.fmuladd.f64(double %332, double %333, double %334)
  %336 = load double, ptr %5, align 8
  %337 = load double, ptr @A1, align 8
  %338 = call double @llvm.fmuladd.f64(double %335, double %336, double %337)
  %339 = load double, ptr %5, align 8
  %340 = load double, ptr @one, align 8
  %341 = call double @llvm.fmuladd.f64(double %338, double %339, double %340)
  %342 = fmul double %320, %341
  store double %342, ptr @sa, align 8
  %343 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %344 = fdiv double %343, 1.700000e+01
  store double %344, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %345 = load double, ptr %6, align 8
  %346 = load double, ptr @sa, align 8
  %347 = load double, ptr @two, align 8
  %348 = load double, ptr %2, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %348, double %346)
  %350 = fmul double %345, %349
  %351 = load double, ptr @two, align 8
  %352 = fdiv double %350, %351
  store double %352, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %353 = load double, ptr @sa, align 8
  %354 = load double, ptr @sb, align 8
  %355 = fsub double %353, %354
  store double %355, ptr @sc, align 8
  %356 = load double, ptr @one, align 8
  %357 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %358 = fdiv double %356, %357
  store double %358, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %359 = load double, ptr @sc, align 8
  %360 = fmul double %359, 1.000000e-30
  %361 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %362 = fmul double %361, 1.000000e-30
  %363 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %364 = fmul double %363, 1.000000e-30
  %365 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %360, double noundef %362, double noundef %364)
  %366 = load double, ptr @A3, align 8
  %367 = fneg double %366
  store double %367, ptr @A3, align 8
  %368 = load double, ptr @A5, align 8
  %369 = fneg double %368
  store double %369, ptr @A5, align 8
  %370 = load double, ptr @piref, align 8
  %371 = load double, ptr @three, align 8
  %372 = load i32, ptr %10, align 4
  %373 = sitofp i32 %372 to double
  %374 = fmul double %371, %373
  %375 = fdiv double %370, %374
  store double %375, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %376 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %377

377:                                              ; preds = %382, %307
  %378 = load i32, ptr %9, align 4
  %379 = load i32, ptr %10, align 4
  %380 = sub nsw i32 %379, 1
  %381 = icmp sle i32 %378, %380
  br i1 %381, label %382, label %413

382:                                              ; preds = %377
  %383 = load i32, ptr %9, align 4
  %384 = sitofp i32 %383 to double
  %385 = load double, ptr %6, align 8
  %386 = fmul double %384, %385
  store double %386, ptr %3, align 8
  %387 = load double, ptr %3, align 8
  %388 = load double, ptr %3, align 8
  %389 = fmul double %387, %388
  store double %389, ptr %5, align 8
  %390 = load double, ptr %2, align 8
  %391 = load double, ptr %5, align 8
  %392 = load double, ptr %5, align 8
  %393 = load double, ptr %5, align 8
  %394 = load double, ptr %5, align 8
  %395 = load double, ptr %5, align 8
  %396 = load double, ptr @B6, align 8
  %397 = load double, ptr %5, align 8
  %398 = load double, ptr @B5, align 8
  %399 = call double @llvm.fmuladd.f64(double %396, double %397, double %398)
  %400 = load double, ptr @B4, align 8
  %401 = call double @llvm.fmuladd.f64(double %395, double %399, double %400)
  %402 = load double, ptr @B3, align 8
  %403 = call double @llvm.fmuladd.f64(double %394, double %401, double %402)
  %404 = load double, ptr @B2, align 8
  %405 = call double @llvm.fmuladd.f64(double %393, double %403, double %404)
  %406 = load double, ptr @B1, align 8
  %407 = call double @llvm.fmuladd.f64(double %392, double %405, double %406)
  %408 = call double @llvm.fmuladd.f64(double %391, double %407, double %390)
  %409 = load double, ptr @one, align 8
  %410 = fadd double %408, %409
  store double %410, ptr %2, align 8
  %411 = load i32, ptr %9, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %9, align 4
  br label %377, !llvm.loop !14

413:                                              ; preds = %377
  %414 = call i32 @dtime(ptr noundef @TimeArray)
  %415 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %416 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %417 = load double, ptr @nulltime, align 8
  %418 = fneg double %417
  %419 = call double @llvm.fmuladd.f64(double %415, double %416, double %418)
  store double %419, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %420 = load double, ptr @piref, align 8
  %421 = load double, ptr @three, align 8
  %422 = fdiv double %420, %421
  store double %422, ptr %3, align 8
  %423 = load double, ptr %3, align 8
  %424 = load double, ptr %3, align 8
  %425 = fmul double %423, %424
  store double %425, ptr %5, align 8
  %426 = load double, ptr %5, align 8
  %427 = load double, ptr %5, align 8
  %428 = load double, ptr %5, align 8
  %429 = load double, ptr %5, align 8
  %430 = load double, ptr %5, align 8
  %431 = load double, ptr @B6, align 8
  %432 = load double, ptr %5, align 8
  %433 = load double, ptr @B5, align 8
  %434 = call double @llvm.fmuladd.f64(double %431, double %432, double %433)
  %435 = load double, ptr @B4, align 8
  %436 = call double @llvm.fmuladd.f64(double %430, double %434, double %435)
  %437 = load double, ptr @B3, align 8
  %438 = call double @llvm.fmuladd.f64(double %429, double %436, double %437)
  %439 = load double, ptr @B2, align 8
  %440 = call double @llvm.fmuladd.f64(double %428, double %438, double %439)
  %441 = load double, ptr @B1, align 8
  %442 = call double @llvm.fmuladd.f64(double %427, double %440, double %441)
  %443 = load double, ptr @one, align 8
  %444 = call double @llvm.fmuladd.f64(double %426, double %442, double %443)
  store double %444, ptr @sa, align 8
  %445 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %446 = fdiv double %445, 1.500000e+01
  store double %446, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %447 = load double, ptr %6, align 8
  %448 = load double, ptr @sa, align 8
  %449 = load double, ptr @one, align 8
  %450 = fadd double %448, %449
  %451 = load double, ptr @two, align 8
  %452 = load double, ptr %2, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %452, double %450)
  %454 = fmul double %447, %453
  %455 = load double, ptr @two, align 8
  %456 = fdiv double %454, %455
  store double %456, ptr @sa, align 8
  %457 = load double, ptr @piref, align 8
  %458 = load double, ptr @three, align 8
  %459 = fdiv double %457, %458
  store double %459, ptr %3, align 8
  %460 = load double, ptr %3, align 8
  %461 = load double, ptr %3, align 8
  %462 = fmul double %460, %461
  store double %462, ptr %5, align 8
  %463 = load double, ptr %3, align 8
  %464 = load double, ptr @A6, align 8
  %465 = load double, ptr %5, align 8
  %466 = load double, ptr @A5, align 8
  %467 = call double @llvm.fmuladd.f64(double %464, double %465, double %466)
  %468 = load double, ptr %5, align 8
  %469 = load double, ptr @A4, align 8
  %470 = call double @llvm.fmuladd.f64(double %467, double %468, double %469)
  %471 = load double, ptr %5, align 8
  %472 = load double, ptr @A3, align 8
  %473 = call double @llvm.fmuladd.f64(double %470, double %471, double %472)
  %474 = load double, ptr %5, align 8
  %475 = load double, ptr @A2, align 8
  %476 = call double @llvm.fmuladd.f64(double %473, double %474, double %475)
  %477 = load double, ptr %5, align 8
  %478 = load double, ptr @A1, align 8
  %479 = call double @llvm.fmuladd.f64(double %476, double %477, double %478)
  %480 = load double, ptr %5, align 8
  %481 = load double, ptr @A0, align 8
  %482 = call double @llvm.fmuladd.f64(double %479, double %480, double %481)
  %483 = fmul double %463, %482
  store double %483, ptr @sb, align 8
  %484 = load double, ptr @sa, align 8
  %485 = load double, ptr @sb, align 8
  %486 = fsub double %484, %485
  store double %486, ptr @sc, align 8
  %487 = load double, ptr @one, align 8
  %488 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %489 = fdiv double %487, %488
  store double %489, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %490 = load double, ptr @sc, align 8
  %491 = fmul double %490, 1.000000e-30
  %492 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %493 = fmul double %492, 1.000000e-30
  %494 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %495 = fmul double %494, 1.000000e-30
  %496 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %491, double noundef %493, double noundef %495)
  %497 = load double, ptr @piref, align 8
  %498 = load double, ptr @three, align 8
  %499 = load i32, ptr %10, align 4
  %500 = sitofp i32 %499 to double
  %501 = fmul double %498, %500
  %502 = fdiv double %497, %501
  store double %502, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %503 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %504

504:                                              ; preds = %509, %413
  %505 = load i32, ptr %9, align 4
  %506 = load i32, ptr %10, align 4
  %507 = sub nsw i32 %506, 1
  %508 = icmp sle i32 %505, %507
  br i1 %508, label %509, label %563

509:                                              ; preds = %504
  %510 = load i32, ptr %9, align 4
  %511 = sitofp i32 %510 to double
  %512 = load double, ptr %6, align 8
  %513 = fmul double %511, %512
  store double %513, ptr %3, align 8
  %514 = load double, ptr %3, align 8
  %515 = load double, ptr %3, align 8
  %516 = fmul double %514, %515
  store double %516, ptr %5, align 8
  %517 = load double, ptr %3, align 8
  %518 = load double, ptr @A6, align 8
  %519 = load double, ptr %5, align 8
  %520 = load double, ptr @A5, align 8
  %521 = call double @llvm.fmuladd.f64(double %518, double %519, double %520)
  %522 = load double, ptr %5, align 8
  %523 = load double, ptr @A4, align 8
  %524 = call double @llvm.fmuladd.f64(double %521, double %522, double %523)
  %525 = load double, ptr %5, align 8
  %526 = load double, ptr @A3, align 8
  %527 = call double @llvm.fmuladd.f64(double %524, double %525, double %526)
  %528 = load double, ptr %5, align 8
  %529 = load double, ptr @A2, align 8
  %530 = call double @llvm.fmuladd.f64(double %527, double %528, double %529)
  %531 = load double, ptr %5, align 8
  %532 = load double, ptr @A1, align 8
  %533 = call double @llvm.fmuladd.f64(double %530, double %531, double %532)
  %534 = load double, ptr %5, align 8
  %535 = load double, ptr @one, align 8
  %536 = call double @llvm.fmuladd.f64(double %533, double %534, double %535)
  %537 = fmul double %517, %536
  store double %537, ptr %4, align 8
  %538 = load double, ptr %2, align 8
  %539 = load double, ptr %4, align 8
  %540 = load double, ptr %5, align 8
  %541 = load double, ptr %5, align 8
  %542 = load double, ptr %5, align 8
  %543 = load double, ptr %5, align 8
  %544 = load double, ptr %5, align 8
  %545 = load double, ptr @B6, align 8
  %546 = load double, ptr %5, align 8
  %547 = load double, ptr @B5, align 8
  %548 = call double @llvm.fmuladd.f64(double %545, double %546, double %547)
  %549 = load double, ptr @B4, align 8
  %550 = call double @llvm.fmuladd.f64(double %544, double %548, double %549)
  %551 = load double, ptr @B3, align 8
  %552 = call double @llvm.fmuladd.f64(double %543, double %550, double %551)
  %553 = load double, ptr @B2, align 8
  %554 = call double @llvm.fmuladd.f64(double %542, double %552, double %553)
  %555 = load double, ptr @B1, align 8
  %556 = call double @llvm.fmuladd.f64(double %541, double %554, double %555)
  %557 = load double, ptr @one, align 8
  %558 = call double @llvm.fmuladd.f64(double %540, double %556, double %557)
  %559 = fdiv double %539, %558
  %560 = fadd double %538, %559
  store double %560, ptr %2, align 8
  %561 = load i32, ptr %9, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, ptr %9, align 4
  br label %504, !llvm.loop !15

563:                                              ; preds = %504
  %564 = call i32 @dtime(ptr noundef @TimeArray)
  %565 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %566 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %567 = load double, ptr @nulltime, align 8
  %568 = fneg double %567
  %569 = call double @llvm.fmuladd.f64(double %565, double %566, double %568)
  store double %569, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %570 = load double, ptr @piref, align 8
  %571 = load double, ptr @three, align 8
  %572 = fdiv double %570, %571
  store double %572, ptr %3, align 8
  %573 = load double, ptr %3, align 8
  %574 = load double, ptr %3, align 8
  %575 = fmul double %573, %574
  store double %575, ptr %5, align 8
  %576 = load double, ptr %3, align 8
  %577 = load double, ptr @A6, align 8
  %578 = load double, ptr %5, align 8
  %579 = load double, ptr @A5, align 8
  %580 = call double @llvm.fmuladd.f64(double %577, double %578, double %579)
  %581 = load double, ptr %5, align 8
  %582 = load double, ptr @A4, align 8
  %583 = call double @llvm.fmuladd.f64(double %580, double %581, double %582)
  %584 = load double, ptr %5, align 8
  %585 = load double, ptr @A3, align 8
  %586 = call double @llvm.fmuladd.f64(double %583, double %584, double %585)
  %587 = load double, ptr %5, align 8
  %588 = load double, ptr @A2, align 8
  %589 = call double @llvm.fmuladd.f64(double %586, double %587, double %588)
  %590 = load double, ptr %5, align 8
  %591 = load double, ptr @A1, align 8
  %592 = call double @llvm.fmuladd.f64(double %589, double %590, double %591)
  %593 = load double, ptr %5, align 8
  %594 = load double, ptr @one, align 8
  %595 = call double @llvm.fmuladd.f64(double %592, double %593, double %594)
  %596 = fmul double %576, %595
  store double %596, ptr @sa, align 8
  %597 = load double, ptr %5, align 8
  %598 = load double, ptr %5, align 8
  %599 = load double, ptr %5, align 8
  %600 = load double, ptr %5, align 8
  %601 = load double, ptr %5, align 8
  %602 = load double, ptr @B6, align 8
  %603 = load double, ptr %5, align 8
  %604 = load double, ptr @B5, align 8
  %605 = call double @llvm.fmuladd.f64(double %602, double %603, double %604)
  %606 = load double, ptr @B4, align 8
  %607 = call double @llvm.fmuladd.f64(double %601, double %605, double %606)
  %608 = load double, ptr @B3, align 8
  %609 = call double @llvm.fmuladd.f64(double %600, double %607, double %608)
  %610 = load double, ptr @B2, align 8
  %611 = call double @llvm.fmuladd.f64(double %599, double %609, double %610)
  %612 = load double, ptr @B1, align 8
  %613 = call double @llvm.fmuladd.f64(double %598, double %611, double %612)
  %614 = load double, ptr @one, align 8
  %615 = call double @llvm.fmuladd.f64(double %597, double %613, double %614)
  store double %615, ptr @sb, align 8
  %616 = load double, ptr @sa, align 8
  %617 = load double, ptr @sb, align 8
  %618 = fdiv double %616, %617
  store double %618, ptr @sa, align 8
  %619 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %620 = fdiv double %619, 2.900000e+01
  store double %620, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %621 = load double, ptr %6, align 8
  %622 = load double, ptr @sa, align 8
  %623 = load double, ptr @two, align 8
  %624 = load double, ptr %2, align 8
  %625 = call double @llvm.fmuladd.f64(double %623, double %624, double %622)
  %626 = fmul double %621, %625
  %627 = load double, ptr @two, align 8
  %628 = fdiv double %626, %627
  store double %628, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %629 = load double, ptr @sa, align 8
  %630 = load double, ptr @sb, align 8
  %631 = fsub double %629, %630
  store double %631, ptr @sc, align 8
  %632 = load double, ptr @one, align 8
  %633 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %634 = fdiv double %632, %633
  store double %634, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %635 = load double, ptr @sc, align 8
  %636 = fmul double %635, 1.000000e-30
  %637 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %638 = fmul double %637, 1.000000e-30
  %639 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %640 = fmul double %639, 1.000000e-30
  %641 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %636, double noundef %638, double noundef %640)
  %642 = load double, ptr @piref, align 8
  %643 = load double, ptr @four, align 8
  %644 = load i32, ptr %10, align 4
  %645 = sitofp i32 %644 to double
  %646 = fmul double %643, %645
  %647 = fdiv double %642, %646
  store double %647, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %648 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %649

649:                                              ; preds = %654, %563
  %650 = load i32, ptr %9, align 4
  %651 = load i32, ptr %10, align 4
  %652 = sub nsw i32 %651, 1
  %653 = icmp sle i32 %650, %652
  br i1 %653, label %654, label %707

654:                                              ; preds = %649
  %655 = load i32, ptr %9, align 4
  %656 = sitofp i32 %655 to double
  %657 = load double, ptr %6, align 8
  %658 = fmul double %656, %657
  store double %658, ptr %3, align 8
  %659 = load double, ptr %3, align 8
  %660 = load double, ptr %3, align 8
  %661 = fmul double %659, %660
  store double %661, ptr %5, align 8
  %662 = load double, ptr %3, align 8
  %663 = load double, ptr @A6, align 8
  %664 = load double, ptr %5, align 8
  %665 = load double, ptr @A5, align 8
  %666 = call double @llvm.fmuladd.f64(double %663, double %664, double %665)
  %667 = load double, ptr %5, align 8
  %668 = load double, ptr @A4, align 8
  %669 = call double @llvm.fmuladd.f64(double %666, double %667, double %668)
  %670 = load double, ptr %5, align 8
  %671 = load double, ptr @A3, align 8
  %672 = call double @llvm.fmuladd.f64(double %669, double %670, double %671)
  %673 = load double, ptr %5, align 8
  %674 = load double, ptr @A2, align 8
  %675 = call double @llvm.fmuladd.f64(double %672, double %673, double %674)
  %676 = load double, ptr %5, align 8
  %677 = load double, ptr @A1, align 8
  %678 = call double @llvm.fmuladd.f64(double %675, double %676, double %677)
  %679 = load double, ptr %5, align 8
  %680 = load double, ptr @one, align 8
  %681 = call double @llvm.fmuladd.f64(double %678, double %679, double %680)
  %682 = fmul double %662, %681
  store double %682, ptr %4, align 8
  %683 = load double, ptr %2, align 8
  %684 = load double, ptr %4, align 8
  %685 = load double, ptr %5, align 8
  %686 = load double, ptr %5, align 8
  %687 = load double, ptr %5, align 8
  %688 = load double, ptr %5, align 8
  %689 = load double, ptr %5, align 8
  %690 = load double, ptr @B6, align 8
  %691 = load double, ptr %5, align 8
  %692 = load double, ptr @B5, align 8
  %693 = call double @llvm.fmuladd.f64(double %690, double %691, double %692)
  %694 = load double, ptr @B4, align 8
  %695 = call double @llvm.fmuladd.f64(double %689, double %693, double %694)
  %696 = load double, ptr @B3, align 8
  %697 = call double @llvm.fmuladd.f64(double %688, double %695, double %696)
  %698 = load double, ptr @B2, align 8
  %699 = call double @llvm.fmuladd.f64(double %687, double %697, double %698)
  %700 = load double, ptr @B1, align 8
  %701 = call double @llvm.fmuladd.f64(double %686, double %699, double %700)
  %702 = load double, ptr @one, align 8
  %703 = call double @llvm.fmuladd.f64(double %685, double %701, double %702)
  %704 = call double @llvm.fmuladd.f64(double %684, double %703, double %683)
  store double %704, ptr %2, align 8
  %705 = load i32, ptr %9, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, ptr %9, align 4
  br label %649, !llvm.loop !16

707:                                              ; preds = %649
  %708 = call i32 @dtime(ptr noundef @TimeArray)
  %709 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %710 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %711 = load double, ptr @nulltime, align 8
  %712 = fneg double %711
  %713 = call double @llvm.fmuladd.f64(double %709, double %710, double %712)
  store double %713, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %714 = load double, ptr @piref, align 8
  %715 = load double, ptr @four, align 8
  %716 = fdiv double %714, %715
  store double %716, ptr %3, align 8
  %717 = load double, ptr %3, align 8
  %718 = load double, ptr %3, align 8
  %719 = fmul double %717, %718
  store double %719, ptr %5, align 8
  %720 = load double, ptr %3, align 8
  %721 = load double, ptr @A6, align 8
  %722 = load double, ptr %5, align 8
  %723 = load double, ptr @A5, align 8
  %724 = call double @llvm.fmuladd.f64(double %721, double %722, double %723)
  %725 = load double, ptr %5, align 8
  %726 = load double, ptr @A4, align 8
  %727 = call double @llvm.fmuladd.f64(double %724, double %725, double %726)
  %728 = load double, ptr %5, align 8
  %729 = load double, ptr @A3, align 8
  %730 = call double @llvm.fmuladd.f64(double %727, double %728, double %729)
  %731 = load double, ptr %5, align 8
  %732 = load double, ptr @A2, align 8
  %733 = call double @llvm.fmuladd.f64(double %730, double %731, double %732)
  %734 = load double, ptr %5, align 8
  %735 = load double, ptr @A1, align 8
  %736 = call double @llvm.fmuladd.f64(double %733, double %734, double %735)
  %737 = load double, ptr %5, align 8
  %738 = load double, ptr @one, align 8
  %739 = call double @llvm.fmuladd.f64(double %736, double %737, double %738)
  %740 = fmul double %720, %739
  store double %740, ptr @sa, align 8
  %741 = load double, ptr %5, align 8
  %742 = load double, ptr %5, align 8
  %743 = load double, ptr %5, align 8
  %744 = load double, ptr %5, align 8
  %745 = load double, ptr %5, align 8
  %746 = load double, ptr @B6, align 8
  %747 = load double, ptr %5, align 8
  %748 = load double, ptr @B5, align 8
  %749 = call double @llvm.fmuladd.f64(double %746, double %747, double %748)
  %750 = load double, ptr @B4, align 8
  %751 = call double @llvm.fmuladd.f64(double %745, double %749, double %750)
  %752 = load double, ptr @B3, align 8
  %753 = call double @llvm.fmuladd.f64(double %744, double %751, double %752)
  %754 = load double, ptr @B2, align 8
  %755 = call double @llvm.fmuladd.f64(double %743, double %753, double %754)
  %756 = load double, ptr @B1, align 8
  %757 = call double @llvm.fmuladd.f64(double %742, double %755, double %756)
  %758 = load double, ptr @one, align 8
  %759 = call double @llvm.fmuladd.f64(double %741, double %757, double %758)
  store double %759, ptr @sb, align 8
  %760 = load double, ptr @sa, align 8
  %761 = load double, ptr @sb, align 8
  %762 = fmul double %760, %761
  store double %762, ptr @sa, align 8
  %763 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %764 = fdiv double %763, 2.900000e+01
  store double %764, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %765 = load double, ptr %6, align 8
  %766 = load double, ptr @sa, align 8
  %767 = load double, ptr @two, align 8
  %768 = load double, ptr %2, align 8
  %769 = call double @llvm.fmuladd.f64(double %767, double %768, double %766)
  %770 = fmul double %765, %769
  %771 = load double, ptr @two, align 8
  %772 = fdiv double %770, %771
  store double %772, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %773 = load double, ptr @sa, align 8
  %774 = load double, ptr @sb, align 8
  %775 = fsub double %773, %774
  store double %775, ptr @sc, align 8
  %776 = load double, ptr @one, align 8
  %777 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %778 = fdiv double %776, %777
  store double %778, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %779 = load double, ptr @sc, align 8
  %780 = fmul double %779, 1.000000e-30
  %781 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %782 = fmul double %781, 1.000000e-30
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %784 = fmul double %783, 1.000000e-30
  %785 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %780, double noundef %782, double noundef %784)
  store double 0.000000e+00, ptr %2, align 8
  %786 = load double, ptr @one, align 8
  store double %786, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %787 = load double, ptr @sa, align 8
  %788 = load i32, ptr %10, align 4
  %789 = sitofp i32 %788 to double
  %790 = fdiv double %787, %789
  store double %790, ptr %4, align 8
  %791 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %792

792:                                              ; preds = %797, %707
  %793 = load i32, ptr %9, align 4
  %794 = load i32, ptr %10, align 4
  %795 = sub nsw i32 %794, 1
  %796 = icmp sle i32 %793, %795
  br i1 %796, label %797, label %827

797:                                              ; preds = %792
  %798 = load i32, ptr %9, align 4
  %799 = sitofp i32 %798 to double
  %800 = load double, ptr %4, align 8
  %801 = fmul double %799, %800
  store double %801, ptr %6, align 8
  %802 = load double, ptr %6, align 8
  %803 = load double, ptr %6, align 8
  %804 = fmul double %802, %803
  store double %804, ptr %3, align 8
  %805 = load double, ptr %2, align 8
  %806 = load double, ptr %5, align 8
  %807 = load double, ptr %6, align 8
  %808 = load double, ptr %5, align 8
  %809 = fadd double %807, %808
  %810 = fdiv double %806, %809
  %811 = fsub double %805, %810
  %812 = load double, ptr %6, align 8
  %813 = load double, ptr %3, align 8
  %814 = load double, ptr %5, align 8
  %815 = fadd double %813, %814
  %816 = fdiv double %812, %815
  %817 = fsub double %811, %816
  %818 = load double, ptr %3, align 8
  %819 = load double, ptr %6, align 8
  %820 = load double, ptr %3, align 8
  %821 = load double, ptr %5, align 8
  %822 = call double @llvm.fmuladd.f64(double %819, double %820, double %821)
  %823 = fdiv double %818, %822
  %824 = fsub double %817, %823
  store double %824, ptr %2, align 8
  %825 = load i32, ptr %9, align 4
  %826 = add nsw i32 %825, 1
  store i32 %826, ptr %9, align 4
  br label %792, !llvm.loop !17

827:                                              ; preds = %792
  %828 = call i32 @dtime(ptr noundef @TimeArray)
  %829 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %830 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %831 = load double, ptr @nulltime, align 8
  %832 = fneg double %831
  %833 = call double @llvm.fmuladd.f64(double %829, double %830, double %832)
  store double %833, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %834 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %835 = fdiv double %834, 1.200000e+01
  store double %835, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %836 = load double, ptr @sa, align 8
  store double %836, ptr %6, align 8
  %837 = load double, ptr %6, align 8
  %838 = load double, ptr %6, align 8
  %839 = fmul double %837, %838
  store double %839, ptr %3, align 8
  %840 = load double, ptr %5, align 8
  %841 = fneg double %840
  %842 = load double, ptr %5, align 8
  %843 = load double, ptr %6, align 8
  %844 = load double, ptr %5, align 8
  %845 = fadd double %843, %844
  %846 = fdiv double %842, %845
  %847 = fsub double %841, %846
  %848 = load double, ptr %6, align 8
  %849 = load double, ptr %3, align 8
  %850 = load double, ptr %5, align 8
  %851 = fadd double %849, %850
  %852 = fdiv double %848, %851
  %853 = fsub double %847, %852
  %854 = load double, ptr %3, align 8
  %855 = load double, ptr %6, align 8
  %856 = load double, ptr %3, align 8
  %857 = load double, ptr %5, align 8
  %858 = call double @llvm.fmuladd.f64(double %855, double %856, double %857)
  %859 = fdiv double %854, %858
  %860 = fsub double %853, %859
  store double %860, ptr @sa, align 8
  %861 = load double, ptr %4, align 8
  %862 = fmul double 1.800000e+01, %861
  %863 = load double, ptr @sa, align 8
  %864 = load double, ptr @two, align 8
  %865 = load double, ptr %2, align 8
  %866 = call double @llvm.fmuladd.f64(double %864, double %865, double %863)
  %867 = fmul double %862, %866
  store double %867, ptr @sa, align 8
  %868 = load double, ptr @sa, align 8
  %869 = fptosi double %868 to i32
  %870 = mul nsw i32 -2000, %869
  store i32 %870, ptr %10, align 4
  %871 = load i32, ptr %10, align 4
  %872 = sitofp i32 %871 to double
  %873 = load double, ptr @scale, align 8
  %874 = fdiv double %872, %873
  %875 = fptosi double %874 to i32
  store i32 %875, ptr %10, align 4
  %876 = load double, ptr @sa, align 8
  %877 = fadd double %876, 5.002000e+02
  store double %877, ptr @sc, align 8
  %878 = load double, ptr @one, align 8
  %879 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %880 = fdiv double %878, %879
  store double %880, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %881 = load double, ptr @sc, align 8
  %882 = fmul double %881, 1.000000e-30
  %883 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %884 = fmul double %883, 1.000000e-30
  %885 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %886 = fmul double %885, 1.000000e-30
  %887 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %882, double noundef %884, double noundef %886)
  %888 = load double, ptr @piref, align 8
  %889 = load double, ptr @three, align 8
  %890 = load i32, ptr %10, align 4
  %891 = sitofp i32 %890 to double
  %892 = fmul double %889, %891
  %893 = fdiv double %888, %892
  store double %893, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %894 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %895

895:                                              ; preds = %900, %827
  %896 = load i32, ptr %9, align 4
  %897 = load i32, ptr %10, align 4
  %898 = sub nsw i32 %897, 1
  %899 = icmp sle i32 %896, %898
  br i1 %899, label %900, label %955

900:                                              ; preds = %895
  %901 = load i32, ptr %9, align 4
  %902 = sitofp i32 %901 to double
  %903 = load double, ptr %6, align 8
  %904 = fmul double %902, %903
  store double %904, ptr %3, align 8
  %905 = load double, ptr %3, align 8
  %906 = load double, ptr %3, align 8
  %907 = fmul double %905, %906
  store double %907, ptr %5, align 8
  %908 = load double, ptr %5, align 8
  %909 = load double, ptr %5, align 8
  %910 = load double, ptr %5, align 8
  %911 = load double, ptr %5, align 8
  %912 = load double, ptr %5, align 8
  %913 = load double, ptr @B6, align 8
  %914 = load double, ptr %5, align 8
  %915 = load double, ptr @B5, align 8
  %916 = call double @llvm.fmuladd.f64(double %913, double %914, double %915)
  %917 = load double, ptr @B4, align 8
  %918 = call double @llvm.fmuladd.f64(double %912, double %916, double %917)
  %919 = load double, ptr @B3, align 8
  %920 = call double @llvm.fmuladd.f64(double %911, double %918, double %919)
  %921 = load double, ptr @B2, align 8
  %922 = call double @llvm.fmuladd.f64(double %910, double %920, double %921)
  %923 = load double, ptr @B1, align 8
  %924 = call double @llvm.fmuladd.f64(double %909, double %922, double %923)
  %925 = load double, ptr @one, align 8
  %926 = call double @llvm.fmuladd.f64(double %908, double %924, double %925)
  store double %926, ptr %4, align 8
  %927 = load double, ptr %2, align 8
  %928 = load double, ptr %4, align 8
  %929 = load double, ptr %4, align 8
  %930 = fmul double %928, %929
  %931 = load double, ptr %3, align 8
  %932 = fmul double %930, %931
  %933 = load double, ptr @A6, align 8
  %934 = load double, ptr %5, align 8
  %935 = load double, ptr @A5, align 8
  %936 = call double @llvm.fmuladd.f64(double %933, double %934, double %935)
  %937 = load double, ptr %5, align 8
  %938 = load double, ptr @A4, align 8
  %939 = call double @llvm.fmuladd.f64(double %936, double %937, double %938)
  %940 = load double, ptr %5, align 8
  %941 = load double, ptr @A3, align 8
  %942 = call double @llvm.fmuladd.f64(double %939, double %940, double %941)
  %943 = load double, ptr %5, align 8
  %944 = load double, ptr @A2, align 8
  %945 = call double @llvm.fmuladd.f64(double %942, double %943, double %944)
  %946 = load double, ptr %5, align 8
  %947 = load double, ptr @A1, align 8
  %948 = call double @llvm.fmuladd.f64(double %945, double %946, double %947)
  %949 = load double, ptr %5, align 8
  %950 = load double, ptr @one, align 8
  %951 = call double @llvm.fmuladd.f64(double %948, double %949, double %950)
  %952 = call double @llvm.fmuladd.f64(double %932, double %951, double %927)
  store double %952, ptr %2, align 8
  %953 = load i32, ptr %9, align 4
  %954 = add nsw i32 %953, 1
  store i32 %954, ptr %9, align 4
  br label %895, !llvm.loop !18

955:                                              ; preds = %895
  %956 = call i32 @dtime(ptr noundef @TimeArray)
  %957 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %958 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %959 = load double, ptr @nulltime, align 8
  %960 = fneg double %959
  %961 = call double @llvm.fmuladd.f64(double %957, double %958, double %960)
  store double %961, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %962 = load double, ptr @piref, align 8
  %963 = load double, ptr @three, align 8
  %964 = fdiv double %962, %963
  store double %964, ptr %3, align 8
  %965 = load double, ptr %3, align 8
  %966 = load double, ptr %3, align 8
  %967 = fmul double %965, %966
  store double %967, ptr %5, align 8
  %968 = load double, ptr %3, align 8
  %969 = load double, ptr @A6, align 8
  %970 = load double, ptr %5, align 8
  %971 = load double, ptr @A5, align 8
  %972 = call double @llvm.fmuladd.f64(double %969, double %970, double %971)
  %973 = load double, ptr %5, align 8
  %974 = load double, ptr @A4, align 8
  %975 = call double @llvm.fmuladd.f64(double %972, double %973, double %974)
  %976 = load double, ptr %5, align 8
  %977 = load double, ptr @A3, align 8
  %978 = call double @llvm.fmuladd.f64(double %975, double %976, double %977)
  %979 = load double, ptr %5, align 8
  %980 = load double, ptr @A2, align 8
  %981 = call double @llvm.fmuladd.f64(double %978, double %979, double %980)
  %982 = load double, ptr %5, align 8
  %983 = load double, ptr @A1, align 8
  %984 = call double @llvm.fmuladd.f64(double %981, double %982, double %983)
  %985 = load double, ptr %5, align 8
  %986 = load double, ptr @one, align 8
  %987 = call double @llvm.fmuladd.f64(double %984, double %985, double %986)
  %988 = fmul double %968, %987
  store double %988, ptr @sa, align 8
  %989 = load double, ptr %5, align 8
  %990 = load double, ptr %5, align 8
  %991 = load double, ptr %5, align 8
  %992 = load double, ptr %5, align 8
  %993 = load double, ptr %5, align 8
  %994 = load double, ptr @B6, align 8
  %995 = load double, ptr %5, align 8
  %996 = load double, ptr @B5, align 8
  %997 = call double @llvm.fmuladd.f64(double %994, double %995, double %996)
  %998 = load double, ptr @B4, align 8
  %999 = call double @llvm.fmuladd.f64(double %993, double %997, double %998)
  %1000 = load double, ptr @B3, align 8
  %1001 = call double @llvm.fmuladd.f64(double %992, double %999, double %1000)
  %1002 = load double, ptr @B2, align 8
  %1003 = call double @llvm.fmuladd.f64(double %991, double %1001, double %1002)
  %1004 = load double, ptr @B1, align 8
  %1005 = call double @llvm.fmuladd.f64(double %990, double %1003, double %1004)
  %1006 = load double, ptr @one, align 8
  %1007 = call double @llvm.fmuladd.f64(double %989, double %1005, double %1006)
  store double %1007, ptr @sb, align 8
  %1008 = load double, ptr @sa, align 8
  %1009 = load double, ptr @sb, align 8
  %1010 = fmul double %1008, %1009
  %1011 = load double, ptr @sb, align 8
  %1012 = fmul double %1010, %1011
  store double %1012, ptr @sa, align 8
  %1013 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1014 = fdiv double %1013, 3.000000e+01
  store double %1014, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1015 = load double, ptr %6, align 8
  %1016 = load double, ptr @sa, align 8
  %1017 = load double, ptr @two, align 8
  %1018 = load double, ptr %2, align 8
  %1019 = call double @llvm.fmuladd.f64(double %1017, double %1018, double %1016)
  %1020 = fmul double %1015, %1019
  %1021 = load double, ptr @two, align 8
  %1022 = fdiv double %1020, %1021
  store double %1022, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1023 = load double, ptr @sa, align 8
  %1024 = load double, ptr @sb, align 8
  %1025 = fsub double %1023, %1024
  store double %1025, ptr @sc, align 8
  %1026 = load double, ptr @one, align 8
  %1027 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1028 = fdiv double %1026, %1027
  store double %1028, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1029 = load double, ptr @sc, align 8
  %1030 = fmul double %1029, 1.000000e-30
  %1031 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1032 = fmul double %1031, 1.000000e-30
  %1033 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1034 = fmul double %1033, 1.000000e-30
  %1035 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1030, double noundef %1032, double noundef %1034)
  %1036 = load double, ptr @five, align 8
  %1037 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1038 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1039 = fsub double %1037, %1038
  %1040 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1041 = call double @llvm.fmuladd.f64(double %1036, double %1039, double %1040)
  %1042 = fdiv double %1041, 5.200000e+01
  store double %1042, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1043 = load double, ptr @one, align 8
  %1044 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1045 = fdiv double %1043, %1044
  store double %1045, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1046 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1047 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1048 = fadd double %1046, %1047
  %1049 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1050 = fadd double %1048, %1049
  %1051 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1052 = fadd double %1050, %1051
  %1053 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1054 = fadd double %1052, %1053
  store double %1054, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1055 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1056 = load double, ptr @four, align 8
  %1057 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1058 = call double @llvm.fmuladd.f64(double %1056, double %1057, double %1055)
  %1059 = fdiv double %1058, 1.520000e+02
  store double %1059, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1060 = load double, ptr @one, align 8
  %1061 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1062 = fdiv double %1060, %1061
  store double %1062, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1063 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1064 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1065 = fadd double %1063, %1064
  %1066 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1067 = fadd double %1065, %1066
  %1068 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1069 = fadd double %1067, %1068
  %1070 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1071 = fadd double %1069, %1070
  store double %1071, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1072 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1073 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1074 = fadd double %1072, %1073
  %1075 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1076 = fadd double %1074, %1075
  %1077 = fdiv double %1076, 1.460000e+02
  store double %1077, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1078 = load double, ptr @one, align 8
  %1079 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1080 = fdiv double %1078, %1079
  store double %1080, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1081 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1082 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1083 = fadd double %1081, %1082
  %1084 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1085 = fadd double %1083, %1084
  %1086 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1087 = fadd double %1085, %1086
  %1088 = fdiv double %1087, 9.100000e+01
  store double %1088, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1089 = load double, ptr @one, align 8
  %1090 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1091 = fdiv double %1089, %1090
  store double %1091, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1092 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1093 = load i32, ptr %10, align 4
  %1094 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1093)
  %1095 = load double, ptr @nulltime, align 8
  %1096 = fmul double %1095, 1.000000e-30
  %1097 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1096)
  %1098 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1099 = fmul double %1098, 1.000000e-30
  %1100 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1099)
  %1101 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1102 = fmul double %1101, 1.000000e-30
  %1103 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1102)
  %1104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1105 = fmul double %1104, 1.000000e-30
  %1106 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1105)
  %1107 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1108 = fmul double %1107, 1.000000e-30
  %1109 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1108)
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
  %5 = getelementptr inbounds nuw double, ptr %4, i64 2
  %6 = load double, ptr %5, align 8
  store double %6, ptr %3, align 8
  %7 = call i32 @GetTickCount()
  %8 = uitofp i32 %7 to double
  %9 = fmul double %8, 1.000000e-03
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw double, ptr %10, i64 2
  store double %9, ptr %11, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw double, ptr %12, i64 2
  %14 = load double, ptr %13, align 8
  %15 = load double, ptr %3, align 8
  %16 = fsub double %14, %15
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw double, ptr %17, i64 1
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
