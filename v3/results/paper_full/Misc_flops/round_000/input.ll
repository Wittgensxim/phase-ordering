; ModuleID = 'E:/llvm-test-suite/SingleSource/Benchmarks/Misc/flops.c'
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

23:                                               ; preds = %78, %0
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
  br label %36

36:                                               ; preds = %68, %27
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %71

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
  br label %68

68:                                               ; preds = %41
  %69 = load i32, ptr %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %9, align 4
  br label %36, !llvm.loop !7

71:                                               ; preds = %36
  %72 = call i32 @dtime(ptr noundef @TimeArray)
  %73 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %73, ptr @sa, align 8
  %74 = load i32, ptr %11, align 4
  %75 = load i32, ptr %8, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %79

78:                                               ; preds = %71
  br label %23, !llvm.loop !9

79:                                               ; preds = %77, %23
  store double 1.589500e-02, ptr @scale, align 8
  %80 = load double, ptr @scale, align 8
  store double %80, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %81 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %82

82:                                               ; preds = %88, %79
  %83 = load i32, ptr %9, align 4
  %84 = load i32, ptr %11, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp sle i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %9, align 4
  br label %82, !llvm.loop !10

91:                                               ; preds = %82
  %92 = call i32 @dtime(ptr noundef @TimeArray)
  %93 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %94 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %95 = fmul double %93, %94
  store double %95, ptr @nulltime, align 8
  %96 = load double, ptr @nulltime, align 8
  %97 = fcmp olt double %96, 0.000000e+00
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %99

99:                                               ; preds = %98, %91
  %100 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %101 = load double, ptr @sa, align 8
  %102 = load double, ptr @nulltime, align 8
  %103 = fneg double %102
  %104 = call double @llvm.fmuladd.f64(double %100, double %101, double %103)
  store double %104, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %105 = load double, ptr @D1, align 8
  %106 = load double, ptr @D2, align 8
  %107 = fadd double %105, %106
  %108 = load double, ptr @D3, align 8
  %109 = fadd double %107, %108
  %110 = load double, ptr @one, align 8
  %111 = load double, ptr @D1, align 8
  %112 = fadd double %110, %111
  %113 = load double, ptr @E2, align 8
  %114 = fadd double %112, %113
  %115 = load double, ptr @E3, align 8
  %116 = fadd double %114, %115
  %117 = fdiv double %109, %116
  store double %117, ptr @sa, align 8
  %118 = load double, ptr @D1, align 8
  store double %118, ptr @sb, align 8
  %119 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %120 = fdiv double %119, 1.400000e+01
  store double %120, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %121 = load double, ptr %6, align 8
  %122 = load double, ptr @sa, align 8
  %123 = load double, ptr @sb, align 8
  %124 = fadd double %122, %123
  %125 = load double, ptr @two, align 8
  %126 = load double, ptr %2, align 8
  %127 = call double @llvm.fmuladd.f64(double %125, double %126, double %124)
  %128 = fmul double %121, %127
  %129 = load double, ptr @two, align 8
  %130 = fdiv double %128, %129
  store double %130, ptr @sa, align 8
  %131 = load double, ptr @one, align 8
  %132 = load double, ptr @sa, align 8
  %133 = fdiv double %131, %132
  store double %133, ptr @sb, align 8
  %134 = load double, ptr @sb, align 8
  %135 = fptosi double %134 to i32
  %136 = mul nsw i32 40000, %135
  %137 = sitofp i32 %136 to double
  %138 = load double, ptr @scale, align 8
  %139 = fdiv double %137, %138
  %140 = fptosi double %139 to i32
  store i32 %140, ptr %11, align 4
  %141 = load double, ptr @sb, align 8
  %142 = fsub double %141, 2.520000e+01
  store double %142, ptr @sc, align 8
  %143 = load double, ptr @one, align 8
  %144 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %145 = fdiv double %143, %144
  store double %145, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %146 = load double, ptr @sc, align 8
  %147 = fmul double %146, 1.000000e-30
  %148 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %149 = fmul double %148, 1.000000e-30
  %150 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %151 = fmul double %150, 1.000000e-30
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %147, double noundef %149, double noundef %151)
  %153 = load i32, ptr %11, align 4
  store i32 %153, ptr %10, align 4
  %154 = load double, ptr @five, align 8
  %155 = fneg double %154
  store double %155, ptr %2, align 8
  %156 = load double, ptr @one, align 8
  %157 = fneg double %156
  store double %157, ptr @sa, align 8
  %158 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %159

159:                                              ; preds = %169, %99
  %160 = load i32, ptr %9, align 4
  %161 = load i32, ptr %10, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load double, ptr %2, align 8
  %165 = fneg double %164
  store double %165, ptr %2, align 8
  %166 = load double, ptr @sa, align 8
  %167 = load double, ptr %2, align 8
  %168 = fadd double %166, %167
  store double %168, ptr @sa, align 8
  br label %169

169:                                              ; preds = %163
  %170 = load i32, ptr %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %9, align 4
  br label %159, !llvm.loop !11

172:                                              ; preds = %159
  %173 = call i32 @dtime(ptr noundef @TimeArray)
  %174 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %175 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %176 = fmul double %174, %175
  store double %176, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %177 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %178 = fcmp olt double %177, 0.000000e+00
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %180

180:                                              ; preds = %179, %172
  %181 = load i32, ptr %10, align 4
  %182 = sitofp i32 %181 to double
  store double %182, ptr @sc, align 8
  %183 = load double, ptr @sa, align 8
  store double %183, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %184 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %185

185:                                              ; preds = %213, %180
  %186 = load i32, ptr %9, align 4
  %187 = load i32, ptr %10, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %185
  %190 = load double, ptr %2, align 8
  %191 = fneg double %190
  store double %191, ptr %2, align 8
  %192 = load double, ptr @sa, align 8
  %193 = load double, ptr %2, align 8
  %194 = fadd double %192, %193
  store double %194, ptr @sa, align 8
  %195 = load double, ptr %3, align 8
  %196 = load double, ptr @two, align 8
  %197 = fadd double %195, %196
  store double %197, ptr %3, align 8
  %198 = load double, ptr %6, align 8
  %199 = load double, ptr %2, align 8
  %200 = load double, ptr %3, align 8
  %201 = fsub double %199, %200
  %202 = fadd double %198, %201
  store double %202, ptr %6, align 8
  %203 = load double, ptr %4, align 8
  %204 = load double, ptr %2, align 8
  %205 = load double, ptr %3, align 8
  %206 = fneg double %204
  %207 = call double @llvm.fmuladd.f64(double %206, double %205, double %203)
  store double %207, ptr %4, align 8
  %208 = load double, ptr %5, align 8
  %209 = load double, ptr %2, align 8
  %210 = load double, ptr %3, align 8
  %211 = fdiv double %209, %210
  %212 = fadd double %208, %211
  store double %212, ptr %5, align 8
  br label %213

213:                                              ; preds = %189
  %214 = load i32, ptr %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %9, align 4
  br label %185, !llvm.loop !12

216:                                              ; preds = %185
  %217 = call i32 @dtime(ptr noundef @TimeArray)
  %218 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %219 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %220 = fmul double %218, %219
  store double %220, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %221 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %222 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %223 = fsub double %221, %222
  %224 = fdiv double %223, 7.000000e+00
  store double %224, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %225 = load double, ptr @sa, align 8
  %226 = load double, ptr %6, align 8
  %227 = fmul double %225, %226
  %228 = load double, ptr @sc, align 8
  %229 = fdiv double %227, %228
  %230 = fptosi double %229 to i32
  store i32 %230, ptr %10, align 4
  %231 = load double, ptr @four, align 8
  %232 = load double, ptr %5, align 8
  %233 = fmul double %231, %232
  %234 = load double, ptr @five, align 8
  %235 = fdiv double %233, %234
  store double %235, ptr @sa, align 8
  %236 = load double, ptr @sa, align 8
  %237 = load double, ptr @five, align 8
  %238 = load double, ptr %4, align 8
  %239 = fdiv double %237, %238
  %240 = fadd double %236, %239
  store double %240, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %241 = load double, ptr @sb, align 8
  %242 = load double, ptr @sc, align 8
  %243 = load double, ptr %4, align 8
  %244 = load double, ptr %4, align 8
  %245 = fmul double %243, %244
  %246 = load double, ptr %4, align 8
  %247 = fmul double %245, %246
  %248 = fdiv double %242, %247
  %249 = fsub double %241, %248
  store double %249, ptr @piprg, align 8
  %250 = load double, ptr @piprg, align 8
  %251 = load double, ptr @piref, align 8
  %252 = fsub double %250, %251
  store double %252, ptr @pierr, align 8
  %253 = load double, ptr @one, align 8
  %254 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %255 = fdiv double %253, %254
  store double %255, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %256 = load double, ptr @pierr, align 8
  %257 = fmul double %256, 1.000000e-30
  %258 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %259 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %260 = fsub double %258, %259
  %261 = fmul double %260, 1.000000e-30
  %262 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %263 = fmul double %262, 1.000000e-30
  %264 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %257, double noundef %261, double noundef %263)
  %265 = load double, ptr @piref, align 8
  %266 = load double, ptr @three, align 8
  %267 = load i32, ptr %10, align 4
  %268 = sitofp i32 %267 to double
  %269 = fmul double %266, %268
  %270 = fdiv double %265, %269
  store double %270, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %271 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %272

272:                                              ; preds = %311, %216
  %273 = load i32, ptr %9, align 4
  %274 = load i32, ptr %10, align 4
  %275 = sub nsw i32 %274, 1
  %276 = icmp sle i32 %273, %275
  br i1 %276, label %277, label %314

277:                                              ; preds = %272
  %278 = load double, ptr %4, align 8
  %279 = load double, ptr @one, align 8
  %280 = fadd double %278, %279
  store double %280, ptr %4, align 8
  %281 = load double, ptr %4, align 8
  %282 = load double, ptr %6, align 8
  %283 = fmul double %281, %282
  store double %283, ptr %3, align 8
  %284 = load double, ptr %3, align 8
  %285 = load double, ptr %3, align 8
  %286 = fmul double %284, %285
  store double %286, ptr %5, align 8
  %287 = load double, ptr %2, align 8
  %288 = load double, ptr %3, align 8
  %289 = load double, ptr @A6, align 8
  %290 = load double, ptr %5, align 8
  %291 = load double, ptr @A5, align 8
  %292 = fneg double %291
  %293 = call double @llvm.fmuladd.f64(double %289, double %290, double %292)
  %294 = load double, ptr %5, align 8
  %295 = load double, ptr @A4, align 8
  %296 = call double @llvm.fmuladd.f64(double %293, double %294, double %295)
  %297 = load double, ptr %5, align 8
  %298 = load double, ptr @A3, align 8
  %299 = fneg double %298
  %300 = call double @llvm.fmuladd.f64(double %296, double %297, double %299)
  %301 = load double, ptr %5, align 8
  %302 = load double, ptr @A2, align 8
  %303 = call double @llvm.fmuladd.f64(double %300, double %301, double %302)
  %304 = load double, ptr %5, align 8
  %305 = load double, ptr @A1, align 8
  %306 = call double @llvm.fmuladd.f64(double %303, double %304, double %305)
  %307 = load double, ptr %5, align 8
  %308 = load double, ptr @one, align 8
  %309 = call double @llvm.fmuladd.f64(double %306, double %307, double %308)
  %310 = call double @llvm.fmuladd.f64(double %288, double %309, double %287)
  store double %310, ptr %2, align 8
  br label %311

311:                                              ; preds = %277
  %312 = load i32, ptr %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %9, align 4
  br label %272, !llvm.loop !13

314:                                              ; preds = %272
  %315 = call i32 @dtime(ptr noundef @TimeArray)
  %316 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %317 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %318 = load double, ptr @nulltime, align 8
  %319 = fneg double %318
  %320 = call double @llvm.fmuladd.f64(double %316, double %317, double %319)
  store double %320, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %321 = load double, ptr @piref, align 8
  %322 = load double, ptr @three, align 8
  %323 = fdiv double %321, %322
  store double %323, ptr %3, align 8
  %324 = load double, ptr %3, align 8
  %325 = load double, ptr %3, align 8
  %326 = fmul double %324, %325
  store double %326, ptr %5, align 8
  %327 = load double, ptr %3, align 8
  %328 = load double, ptr @A6, align 8
  %329 = load double, ptr %5, align 8
  %330 = load double, ptr @A5, align 8
  %331 = fneg double %330
  %332 = call double @llvm.fmuladd.f64(double %328, double %329, double %331)
  %333 = load double, ptr %5, align 8
  %334 = load double, ptr @A4, align 8
  %335 = call double @llvm.fmuladd.f64(double %332, double %333, double %334)
  %336 = load double, ptr %5, align 8
  %337 = load double, ptr @A3, align 8
  %338 = fneg double %337
  %339 = call double @llvm.fmuladd.f64(double %335, double %336, double %338)
  %340 = load double, ptr %5, align 8
  %341 = load double, ptr @A2, align 8
  %342 = call double @llvm.fmuladd.f64(double %339, double %340, double %341)
  %343 = load double, ptr %5, align 8
  %344 = load double, ptr @A1, align 8
  %345 = call double @llvm.fmuladd.f64(double %342, double %343, double %344)
  %346 = load double, ptr %5, align 8
  %347 = load double, ptr @one, align 8
  %348 = call double @llvm.fmuladd.f64(double %345, double %346, double %347)
  %349 = fmul double %327, %348
  store double %349, ptr @sa, align 8
  %350 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %351 = fdiv double %350, 1.700000e+01
  store double %351, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %352 = load double, ptr %6, align 8
  %353 = load double, ptr @sa, align 8
  %354 = load double, ptr @two, align 8
  %355 = load double, ptr %2, align 8
  %356 = call double @llvm.fmuladd.f64(double %354, double %355, double %353)
  %357 = fmul double %352, %356
  %358 = load double, ptr @two, align 8
  %359 = fdiv double %357, %358
  store double %359, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %360 = load double, ptr @sa, align 8
  %361 = load double, ptr @sb, align 8
  %362 = fsub double %360, %361
  store double %362, ptr @sc, align 8
  %363 = load double, ptr @one, align 8
  %364 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %365 = fdiv double %363, %364
  store double %365, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %366 = load double, ptr @sc, align 8
  %367 = fmul double %366, 1.000000e-30
  %368 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %369 = fmul double %368, 1.000000e-30
  %370 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %371 = fmul double %370, 1.000000e-30
  %372 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %367, double noundef %369, double noundef %371)
  %373 = load double, ptr @A3, align 8
  %374 = fneg double %373
  store double %374, ptr @A3, align 8
  %375 = load double, ptr @A5, align 8
  %376 = fneg double %375
  store double %376, ptr @A5, align 8
  %377 = load double, ptr @piref, align 8
  %378 = load double, ptr @three, align 8
  %379 = load i32, ptr %10, align 4
  %380 = sitofp i32 %379 to double
  %381 = fmul double %378, %380
  %382 = fdiv double %377, %381
  store double %382, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %383 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %384

384:                                              ; preds = %418, %314
  %385 = load i32, ptr %9, align 4
  %386 = load i32, ptr %10, align 4
  %387 = sub nsw i32 %386, 1
  %388 = icmp sle i32 %385, %387
  br i1 %388, label %389, label %421

389:                                              ; preds = %384
  %390 = load i32, ptr %9, align 4
  %391 = sitofp i32 %390 to double
  %392 = load double, ptr %6, align 8
  %393 = fmul double %391, %392
  store double %393, ptr %3, align 8
  %394 = load double, ptr %3, align 8
  %395 = load double, ptr %3, align 8
  %396 = fmul double %394, %395
  store double %396, ptr %5, align 8
  %397 = load double, ptr %2, align 8
  %398 = load double, ptr %5, align 8
  %399 = load double, ptr %5, align 8
  %400 = load double, ptr %5, align 8
  %401 = load double, ptr %5, align 8
  %402 = load double, ptr %5, align 8
  %403 = load double, ptr @B6, align 8
  %404 = load double, ptr %5, align 8
  %405 = load double, ptr @B5, align 8
  %406 = call double @llvm.fmuladd.f64(double %403, double %404, double %405)
  %407 = load double, ptr @B4, align 8
  %408 = call double @llvm.fmuladd.f64(double %402, double %406, double %407)
  %409 = load double, ptr @B3, align 8
  %410 = call double @llvm.fmuladd.f64(double %401, double %408, double %409)
  %411 = load double, ptr @B2, align 8
  %412 = call double @llvm.fmuladd.f64(double %400, double %410, double %411)
  %413 = load double, ptr @B1, align 8
  %414 = call double @llvm.fmuladd.f64(double %399, double %412, double %413)
  %415 = call double @llvm.fmuladd.f64(double %398, double %414, double %397)
  %416 = load double, ptr @one, align 8
  %417 = fadd double %415, %416
  store double %417, ptr %2, align 8
  br label %418

418:                                              ; preds = %389
  %419 = load i32, ptr %9, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %9, align 4
  br label %384, !llvm.loop !14

421:                                              ; preds = %384
  %422 = call i32 @dtime(ptr noundef @TimeArray)
  %423 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %424 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %425 = load double, ptr @nulltime, align 8
  %426 = fneg double %425
  %427 = call double @llvm.fmuladd.f64(double %423, double %424, double %426)
  store double %427, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %428 = load double, ptr @piref, align 8
  %429 = load double, ptr @three, align 8
  %430 = fdiv double %428, %429
  store double %430, ptr %3, align 8
  %431 = load double, ptr %3, align 8
  %432 = load double, ptr %3, align 8
  %433 = fmul double %431, %432
  store double %433, ptr %5, align 8
  %434 = load double, ptr %5, align 8
  %435 = load double, ptr %5, align 8
  %436 = load double, ptr %5, align 8
  %437 = load double, ptr %5, align 8
  %438 = load double, ptr %5, align 8
  %439 = load double, ptr @B6, align 8
  %440 = load double, ptr %5, align 8
  %441 = load double, ptr @B5, align 8
  %442 = call double @llvm.fmuladd.f64(double %439, double %440, double %441)
  %443 = load double, ptr @B4, align 8
  %444 = call double @llvm.fmuladd.f64(double %438, double %442, double %443)
  %445 = load double, ptr @B3, align 8
  %446 = call double @llvm.fmuladd.f64(double %437, double %444, double %445)
  %447 = load double, ptr @B2, align 8
  %448 = call double @llvm.fmuladd.f64(double %436, double %446, double %447)
  %449 = load double, ptr @B1, align 8
  %450 = call double @llvm.fmuladd.f64(double %435, double %448, double %449)
  %451 = load double, ptr @one, align 8
  %452 = call double @llvm.fmuladd.f64(double %434, double %450, double %451)
  store double %452, ptr @sa, align 8
  %453 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %454 = fdiv double %453, 1.500000e+01
  store double %454, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %455 = load double, ptr %6, align 8
  %456 = load double, ptr @sa, align 8
  %457 = load double, ptr @one, align 8
  %458 = fadd double %456, %457
  %459 = load double, ptr @two, align 8
  %460 = load double, ptr %2, align 8
  %461 = call double @llvm.fmuladd.f64(double %459, double %460, double %458)
  %462 = fmul double %455, %461
  %463 = load double, ptr @two, align 8
  %464 = fdiv double %462, %463
  store double %464, ptr @sa, align 8
  %465 = load double, ptr @piref, align 8
  %466 = load double, ptr @three, align 8
  %467 = fdiv double %465, %466
  store double %467, ptr %3, align 8
  %468 = load double, ptr %3, align 8
  %469 = load double, ptr %3, align 8
  %470 = fmul double %468, %469
  store double %470, ptr %5, align 8
  %471 = load double, ptr %3, align 8
  %472 = load double, ptr @A6, align 8
  %473 = load double, ptr %5, align 8
  %474 = load double, ptr @A5, align 8
  %475 = call double @llvm.fmuladd.f64(double %472, double %473, double %474)
  %476 = load double, ptr %5, align 8
  %477 = load double, ptr @A4, align 8
  %478 = call double @llvm.fmuladd.f64(double %475, double %476, double %477)
  %479 = load double, ptr %5, align 8
  %480 = load double, ptr @A3, align 8
  %481 = call double @llvm.fmuladd.f64(double %478, double %479, double %480)
  %482 = load double, ptr %5, align 8
  %483 = load double, ptr @A2, align 8
  %484 = call double @llvm.fmuladd.f64(double %481, double %482, double %483)
  %485 = load double, ptr %5, align 8
  %486 = load double, ptr @A1, align 8
  %487 = call double @llvm.fmuladd.f64(double %484, double %485, double %486)
  %488 = load double, ptr %5, align 8
  %489 = load double, ptr @A0, align 8
  %490 = call double @llvm.fmuladd.f64(double %487, double %488, double %489)
  %491 = fmul double %471, %490
  store double %491, ptr @sb, align 8
  %492 = load double, ptr @sa, align 8
  %493 = load double, ptr @sb, align 8
  %494 = fsub double %492, %493
  store double %494, ptr @sc, align 8
  %495 = load double, ptr @one, align 8
  %496 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %497 = fdiv double %495, %496
  store double %497, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %498 = load double, ptr @sc, align 8
  %499 = fmul double %498, 1.000000e-30
  %500 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %501 = fmul double %500, 1.000000e-30
  %502 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %503 = fmul double %502, 1.000000e-30
  %504 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %499, double noundef %501, double noundef %503)
  %505 = load double, ptr @piref, align 8
  %506 = load double, ptr @three, align 8
  %507 = load i32, ptr %10, align 4
  %508 = sitofp i32 %507 to double
  %509 = fmul double %506, %508
  %510 = fdiv double %505, %509
  store double %510, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %511 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %512

512:                                              ; preds = %569, %421
  %513 = load i32, ptr %9, align 4
  %514 = load i32, ptr %10, align 4
  %515 = sub nsw i32 %514, 1
  %516 = icmp sle i32 %513, %515
  br i1 %516, label %517, label %572

517:                                              ; preds = %512
  %518 = load i32, ptr %9, align 4
  %519 = sitofp i32 %518 to double
  %520 = load double, ptr %6, align 8
  %521 = fmul double %519, %520
  store double %521, ptr %3, align 8
  %522 = load double, ptr %3, align 8
  %523 = load double, ptr %3, align 8
  %524 = fmul double %522, %523
  store double %524, ptr %5, align 8
  %525 = load double, ptr %3, align 8
  %526 = load double, ptr @A6, align 8
  %527 = load double, ptr %5, align 8
  %528 = load double, ptr @A5, align 8
  %529 = call double @llvm.fmuladd.f64(double %526, double %527, double %528)
  %530 = load double, ptr %5, align 8
  %531 = load double, ptr @A4, align 8
  %532 = call double @llvm.fmuladd.f64(double %529, double %530, double %531)
  %533 = load double, ptr %5, align 8
  %534 = load double, ptr @A3, align 8
  %535 = call double @llvm.fmuladd.f64(double %532, double %533, double %534)
  %536 = load double, ptr %5, align 8
  %537 = load double, ptr @A2, align 8
  %538 = call double @llvm.fmuladd.f64(double %535, double %536, double %537)
  %539 = load double, ptr %5, align 8
  %540 = load double, ptr @A1, align 8
  %541 = call double @llvm.fmuladd.f64(double %538, double %539, double %540)
  %542 = load double, ptr %5, align 8
  %543 = load double, ptr @one, align 8
  %544 = call double @llvm.fmuladd.f64(double %541, double %542, double %543)
  %545 = fmul double %525, %544
  store double %545, ptr %4, align 8
  %546 = load double, ptr %2, align 8
  %547 = load double, ptr %4, align 8
  %548 = load double, ptr %5, align 8
  %549 = load double, ptr %5, align 8
  %550 = load double, ptr %5, align 8
  %551 = load double, ptr %5, align 8
  %552 = load double, ptr %5, align 8
  %553 = load double, ptr @B6, align 8
  %554 = load double, ptr %5, align 8
  %555 = load double, ptr @B5, align 8
  %556 = call double @llvm.fmuladd.f64(double %553, double %554, double %555)
  %557 = load double, ptr @B4, align 8
  %558 = call double @llvm.fmuladd.f64(double %552, double %556, double %557)
  %559 = load double, ptr @B3, align 8
  %560 = call double @llvm.fmuladd.f64(double %551, double %558, double %559)
  %561 = load double, ptr @B2, align 8
  %562 = call double @llvm.fmuladd.f64(double %550, double %560, double %561)
  %563 = load double, ptr @B1, align 8
  %564 = call double @llvm.fmuladd.f64(double %549, double %562, double %563)
  %565 = load double, ptr @one, align 8
  %566 = call double @llvm.fmuladd.f64(double %548, double %564, double %565)
  %567 = fdiv double %547, %566
  %568 = fadd double %546, %567
  store double %568, ptr %2, align 8
  br label %569

569:                                              ; preds = %517
  %570 = load i32, ptr %9, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, ptr %9, align 4
  br label %512, !llvm.loop !15

572:                                              ; preds = %512
  %573 = call i32 @dtime(ptr noundef @TimeArray)
  %574 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %575 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %576 = load double, ptr @nulltime, align 8
  %577 = fneg double %576
  %578 = call double @llvm.fmuladd.f64(double %574, double %575, double %577)
  store double %578, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %579 = load double, ptr @piref, align 8
  %580 = load double, ptr @three, align 8
  %581 = fdiv double %579, %580
  store double %581, ptr %3, align 8
  %582 = load double, ptr %3, align 8
  %583 = load double, ptr %3, align 8
  %584 = fmul double %582, %583
  store double %584, ptr %5, align 8
  %585 = load double, ptr %3, align 8
  %586 = load double, ptr @A6, align 8
  %587 = load double, ptr %5, align 8
  %588 = load double, ptr @A5, align 8
  %589 = call double @llvm.fmuladd.f64(double %586, double %587, double %588)
  %590 = load double, ptr %5, align 8
  %591 = load double, ptr @A4, align 8
  %592 = call double @llvm.fmuladd.f64(double %589, double %590, double %591)
  %593 = load double, ptr %5, align 8
  %594 = load double, ptr @A3, align 8
  %595 = call double @llvm.fmuladd.f64(double %592, double %593, double %594)
  %596 = load double, ptr %5, align 8
  %597 = load double, ptr @A2, align 8
  %598 = call double @llvm.fmuladd.f64(double %595, double %596, double %597)
  %599 = load double, ptr %5, align 8
  %600 = load double, ptr @A1, align 8
  %601 = call double @llvm.fmuladd.f64(double %598, double %599, double %600)
  %602 = load double, ptr %5, align 8
  %603 = load double, ptr @one, align 8
  %604 = call double @llvm.fmuladd.f64(double %601, double %602, double %603)
  %605 = fmul double %585, %604
  store double %605, ptr @sa, align 8
  %606 = load double, ptr %5, align 8
  %607 = load double, ptr %5, align 8
  %608 = load double, ptr %5, align 8
  %609 = load double, ptr %5, align 8
  %610 = load double, ptr %5, align 8
  %611 = load double, ptr @B6, align 8
  %612 = load double, ptr %5, align 8
  %613 = load double, ptr @B5, align 8
  %614 = call double @llvm.fmuladd.f64(double %611, double %612, double %613)
  %615 = load double, ptr @B4, align 8
  %616 = call double @llvm.fmuladd.f64(double %610, double %614, double %615)
  %617 = load double, ptr @B3, align 8
  %618 = call double @llvm.fmuladd.f64(double %609, double %616, double %617)
  %619 = load double, ptr @B2, align 8
  %620 = call double @llvm.fmuladd.f64(double %608, double %618, double %619)
  %621 = load double, ptr @B1, align 8
  %622 = call double @llvm.fmuladd.f64(double %607, double %620, double %621)
  %623 = load double, ptr @one, align 8
  %624 = call double @llvm.fmuladd.f64(double %606, double %622, double %623)
  store double %624, ptr @sb, align 8
  %625 = load double, ptr @sa, align 8
  %626 = load double, ptr @sb, align 8
  %627 = fdiv double %625, %626
  store double %627, ptr @sa, align 8
  %628 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %629 = fdiv double %628, 2.900000e+01
  store double %629, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %630 = load double, ptr %6, align 8
  %631 = load double, ptr @sa, align 8
  %632 = load double, ptr @two, align 8
  %633 = load double, ptr %2, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %633, double %631)
  %635 = fmul double %630, %634
  %636 = load double, ptr @two, align 8
  %637 = fdiv double %635, %636
  store double %637, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %638 = load double, ptr @sa, align 8
  %639 = load double, ptr @sb, align 8
  %640 = fsub double %638, %639
  store double %640, ptr @sc, align 8
  %641 = load double, ptr @one, align 8
  %642 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %643 = fdiv double %641, %642
  store double %643, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %644 = load double, ptr @sc, align 8
  %645 = fmul double %644, 1.000000e-30
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %647 = fmul double %646, 1.000000e-30
  %648 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %649 = fmul double %648, 1.000000e-30
  %650 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %645, double noundef %647, double noundef %649)
  %651 = load double, ptr @piref, align 8
  %652 = load double, ptr @four, align 8
  %653 = load i32, ptr %10, align 4
  %654 = sitofp i32 %653 to double
  %655 = fmul double %652, %654
  %656 = fdiv double %651, %655
  store double %656, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %657 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %658

658:                                              ; preds = %714, %572
  %659 = load i32, ptr %9, align 4
  %660 = load i32, ptr %10, align 4
  %661 = sub nsw i32 %660, 1
  %662 = icmp sle i32 %659, %661
  br i1 %662, label %663, label %717

663:                                              ; preds = %658
  %664 = load i32, ptr %9, align 4
  %665 = sitofp i32 %664 to double
  %666 = load double, ptr %6, align 8
  %667 = fmul double %665, %666
  store double %667, ptr %3, align 8
  %668 = load double, ptr %3, align 8
  %669 = load double, ptr %3, align 8
  %670 = fmul double %668, %669
  store double %670, ptr %5, align 8
  %671 = load double, ptr %3, align 8
  %672 = load double, ptr @A6, align 8
  %673 = load double, ptr %5, align 8
  %674 = load double, ptr @A5, align 8
  %675 = call double @llvm.fmuladd.f64(double %672, double %673, double %674)
  %676 = load double, ptr %5, align 8
  %677 = load double, ptr @A4, align 8
  %678 = call double @llvm.fmuladd.f64(double %675, double %676, double %677)
  %679 = load double, ptr %5, align 8
  %680 = load double, ptr @A3, align 8
  %681 = call double @llvm.fmuladd.f64(double %678, double %679, double %680)
  %682 = load double, ptr %5, align 8
  %683 = load double, ptr @A2, align 8
  %684 = call double @llvm.fmuladd.f64(double %681, double %682, double %683)
  %685 = load double, ptr %5, align 8
  %686 = load double, ptr @A1, align 8
  %687 = call double @llvm.fmuladd.f64(double %684, double %685, double %686)
  %688 = load double, ptr %5, align 8
  %689 = load double, ptr @one, align 8
  %690 = call double @llvm.fmuladd.f64(double %687, double %688, double %689)
  %691 = fmul double %671, %690
  store double %691, ptr %4, align 8
  %692 = load double, ptr %2, align 8
  %693 = load double, ptr %4, align 8
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
  %713 = call double @llvm.fmuladd.f64(double %693, double %712, double %692)
  store double %713, ptr %2, align 8
  br label %714

714:                                              ; preds = %663
  %715 = load i32, ptr %9, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, ptr %9, align 4
  br label %658, !llvm.loop !16

717:                                              ; preds = %658
  %718 = call i32 @dtime(ptr noundef @TimeArray)
  %719 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %720 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %721 = load double, ptr @nulltime, align 8
  %722 = fneg double %721
  %723 = call double @llvm.fmuladd.f64(double %719, double %720, double %722)
  store double %723, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %724 = load double, ptr @piref, align 8
  %725 = load double, ptr @four, align 8
  %726 = fdiv double %724, %725
  store double %726, ptr %3, align 8
  %727 = load double, ptr %3, align 8
  %728 = load double, ptr %3, align 8
  %729 = fmul double %727, %728
  store double %729, ptr %5, align 8
  %730 = load double, ptr %3, align 8
  %731 = load double, ptr @A6, align 8
  %732 = load double, ptr %5, align 8
  %733 = load double, ptr @A5, align 8
  %734 = call double @llvm.fmuladd.f64(double %731, double %732, double %733)
  %735 = load double, ptr %5, align 8
  %736 = load double, ptr @A4, align 8
  %737 = call double @llvm.fmuladd.f64(double %734, double %735, double %736)
  %738 = load double, ptr %5, align 8
  %739 = load double, ptr @A3, align 8
  %740 = call double @llvm.fmuladd.f64(double %737, double %738, double %739)
  %741 = load double, ptr %5, align 8
  %742 = load double, ptr @A2, align 8
  %743 = call double @llvm.fmuladd.f64(double %740, double %741, double %742)
  %744 = load double, ptr %5, align 8
  %745 = load double, ptr @A1, align 8
  %746 = call double @llvm.fmuladd.f64(double %743, double %744, double %745)
  %747 = load double, ptr %5, align 8
  %748 = load double, ptr @one, align 8
  %749 = call double @llvm.fmuladd.f64(double %746, double %747, double %748)
  %750 = fmul double %730, %749
  store double %750, ptr @sa, align 8
  %751 = load double, ptr %5, align 8
  %752 = load double, ptr %5, align 8
  %753 = load double, ptr %5, align 8
  %754 = load double, ptr %5, align 8
  %755 = load double, ptr %5, align 8
  %756 = load double, ptr @B6, align 8
  %757 = load double, ptr %5, align 8
  %758 = load double, ptr @B5, align 8
  %759 = call double @llvm.fmuladd.f64(double %756, double %757, double %758)
  %760 = load double, ptr @B4, align 8
  %761 = call double @llvm.fmuladd.f64(double %755, double %759, double %760)
  %762 = load double, ptr @B3, align 8
  %763 = call double @llvm.fmuladd.f64(double %754, double %761, double %762)
  %764 = load double, ptr @B2, align 8
  %765 = call double @llvm.fmuladd.f64(double %753, double %763, double %764)
  %766 = load double, ptr @B1, align 8
  %767 = call double @llvm.fmuladd.f64(double %752, double %765, double %766)
  %768 = load double, ptr @one, align 8
  %769 = call double @llvm.fmuladd.f64(double %751, double %767, double %768)
  store double %769, ptr @sb, align 8
  %770 = load double, ptr @sa, align 8
  %771 = load double, ptr @sb, align 8
  %772 = fmul double %770, %771
  store double %772, ptr @sa, align 8
  %773 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %774 = fdiv double %773, 2.900000e+01
  store double %774, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %775 = load double, ptr %6, align 8
  %776 = load double, ptr @sa, align 8
  %777 = load double, ptr @two, align 8
  %778 = load double, ptr %2, align 8
  %779 = call double @llvm.fmuladd.f64(double %777, double %778, double %776)
  %780 = fmul double %775, %779
  %781 = load double, ptr @two, align 8
  %782 = fdiv double %780, %781
  store double %782, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %783 = load double, ptr @sa, align 8
  %784 = load double, ptr @sb, align 8
  %785 = fsub double %783, %784
  store double %785, ptr @sc, align 8
  %786 = load double, ptr @one, align 8
  %787 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %788 = fdiv double %786, %787
  store double %788, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %789 = load double, ptr @sc, align 8
  %790 = fmul double %789, 1.000000e-30
  %791 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %792 = fmul double %791, 1.000000e-30
  %793 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %794 = fmul double %793, 1.000000e-30
  %795 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %790, double noundef %792, double noundef %794)
  store double 0.000000e+00, ptr %2, align 8
  %796 = load double, ptr @one, align 8
  store double %796, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %797 = load double, ptr @sa, align 8
  %798 = load i32, ptr %10, align 4
  %799 = sitofp i32 %798 to double
  %800 = fdiv double %797, %799
  store double %800, ptr %4, align 8
  %801 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %802

802:                                              ; preds = %835, %717
  %803 = load i32, ptr %9, align 4
  %804 = load i32, ptr %10, align 4
  %805 = sub nsw i32 %804, 1
  %806 = icmp sle i32 %803, %805
  br i1 %806, label %807, label %838

807:                                              ; preds = %802
  %808 = load i32, ptr %9, align 4
  %809 = sitofp i32 %808 to double
  %810 = load double, ptr %4, align 8
  %811 = fmul double %809, %810
  store double %811, ptr %6, align 8
  %812 = load double, ptr %6, align 8
  %813 = load double, ptr %6, align 8
  %814 = fmul double %812, %813
  store double %814, ptr %3, align 8
  %815 = load double, ptr %2, align 8
  %816 = load double, ptr %5, align 8
  %817 = load double, ptr %6, align 8
  %818 = load double, ptr %5, align 8
  %819 = fadd double %817, %818
  %820 = fdiv double %816, %819
  %821 = fsub double %815, %820
  %822 = load double, ptr %6, align 8
  %823 = load double, ptr %3, align 8
  %824 = load double, ptr %5, align 8
  %825 = fadd double %823, %824
  %826 = fdiv double %822, %825
  %827 = fsub double %821, %826
  %828 = load double, ptr %3, align 8
  %829 = load double, ptr %6, align 8
  %830 = load double, ptr %3, align 8
  %831 = load double, ptr %5, align 8
  %832 = call double @llvm.fmuladd.f64(double %829, double %830, double %831)
  %833 = fdiv double %828, %832
  %834 = fsub double %827, %833
  store double %834, ptr %2, align 8
  br label %835

835:                                              ; preds = %807
  %836 = load i32, ptr %9, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, ptr %9, align 4
  br label %802, !llvm.loop !17

838:                                              ; preds = %802
  %839 = call i32 @dtime(ptr noundef @TimeArray)
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %841 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %842 = load double, ptr @nulltime, align 8
  %843 = fneg double %842
  %844 = call double @llvm.fmuladd.f64(double %840, double %841, double %843)
  store double %844, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %846 = fdiv double %845, 1.200000e+01
  store double %846, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %847 = load double, ptr @sa, align 8
  store double %847, ptr %6, align 8
  %848 = load double, ptr %6, align 8
  %849 = load double, ptr %6, align 8
  %850 = fmul double %848, %849
  store double %850, ptr %3, align 8
  %851 = load double, ptr %5, align 8
  %852 = fneg double %851
  %853 = load double, ptr %5, align 8
  %854 = load double, ptr %6, align 8
  %855 = load double, ptr %5, align 8
  %856 = fadd double %854, %855
  %857 = fdiv double %853, %856
  %858 = fsub double %852, %857
  %859 = load double, ptr %6, align 8
  %860 = load double, ptr %3, align 8
  %861 = load double, ptr %5, align 8
  %862 = fadd double %860, %861
  %863 = fdiv double %859, %862
  %864 = fsub double %858, %863
  %865 = load double, ptr %3, align 8
  %866 = load double, ptr %6, align 8
  %867 = load double, ptr %3, align 8
  %868 = load double, ptr %5, align 8
  %869 = call double @llvm.fmuladd.f64(double %866, double %867, double %868)
  %870 = fdiv double %865, %869
  %871 = fsub double %864, %870
  store double %871, ptr @sa, align 8
  %872 = load double, ptr %4, align 8
  %873 = fmul double 1.800000e+01, %872
  %874 = load double, ptr @sa, align 8
  %875 = load double, ptr @two, align 8
  %876 = load double, ptr %2, align 8
  %877 = call double @llvm.fmuladd.f64(double %875, double %876, double %874)
  %878 = fmul double %873, %877
  store double %878, ptr @sa, align 8
  %879 = load double, ptr @sa, align 8
  %880 = fptosi double %879 to i32
  %881 = mul nsw i32 -2000, %880
  store i32 %881, ptr %10, align 4
  %882 = load i32, ptr %10, align 4
  %883 = sitofp i32 %882 to double
  %884 = load double, ptr @scale, align 8
  %885 = fdiv double %883, %884
  %886 = fptosi double %885 to i32
  store i32 %886, ptr %10, align 4
  %887 = load double, ptr @sa, align 8
  %888 = fadd double %887, 5.002000e+02
  store double %888, ptr @sc, align 8
  %889 = load double, ptr @one, align 8
  %890 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %891 = fdiv double %889, %890
  store double %891, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %892 = load double, ptr @sc, align 8
  %893 = fmul double %892, 1.000000e-30
  %894 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %895 = fmul double %894, 1.000000e-30
  %896 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %897 = fmul double %896, 1.000000e-30
  %898 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %893, double noundef %895, double noundef %897)
  %899 = load double, ptr @piref, align 8
  %900 = load double, ptr @three, align 8
  %901 = load i32, ptr %10, align 4
  %902 = sitofp i32 %901 to double
  %903 = fmul double %900, %902
  %904 = fdiv double %899, %903
  store double %904, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %905 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %906

906:                                              ; preds = %964, %838
  %907 = load i32, ptr %9, align 4
  %908 = load i32, ptr %10, align 4
  %909 = sub nsw i32 %908, 1
  %910 = icmp sle i32 %907, %909
  br i1 %910, label %911, label %967

911:                                              ; preds = %906
  %912 = load i32, ptr %9, align 4
  %913 = sitofp i32 %912 to double
  %914 = load double, ptr %6, align 8
  %915 = fmul double %913, %914
  store double %915, ptr %3, align 8
  %916 = load double, ptr %3, align 8
  %917 = load double, ptr %3, align 8
  %918 = fmul double %916, %917
  store double %918, ptr %5, align 8
  %919 = load double, ptr %5, align 8
  %920 = load double, ptr %5, align 8
  %921 = load double, ptr %5, align 8
  %922 = load double, ptr %5, align 8
  %923 = load double, ptr %5, align 8
  %924 = load double, ptr @B6, align 8
  %925 = load double, ptr %5, align 8
  %926 = load double, ptr @B5, align 8
  %927 = call double @llvm.fmuladd.f64(double %924, double %925, double %926)
  %928 = load double, ptr @B4, align 8
  %929 = call double @llvm.fmuladd.f64(double %923, double %927, double %928)
  %930 = load double, ptr @B3, align 8
  %931 = call double @llvm.fmuladd.f64(double %922, double %929, double %930)
  %932 = load double, ptr @B2, align 8
  %933 = call double @llvm.fmuladd.f64(double %921, double %931, double %932)
  %934 = load double, ptr @B1, align 8
  %935 = call double @llvm.fmuladd.f64(double %920, double %933, double %934)
  %936 = load double, ptr @one, align 8
  %937 = call double @llvm.fmuladd.f64(double %919, double %935, double %936)
  store double %937, ptr %4, align 8
  %938 = load double, ptr %2, align 8
  %939 = load double, ptr %4, align 8
  %940 = load double, ptr %4, align 8
  %941 = fmul double %939, %940
  %942 = load double, ptr %3, align 8
  %943 = fmul double %941, %942
  %944 = load double, ptr @A6, align 8
  %945 = load double, ptr %5, align 8
  %946 = load double, ptr @A5, align 8
  %947 = call double @llvm.fmuladd.f64(double %944, double %945, double %946)
  %948 = load double, ptr %5, align 8
  %949 = load double, ptr @A4, align 8
  %950 = call double @llvm.fmuladd.f64(double %947, double %948, double %949)
  %951 = load double, ptr %5, align 8
  %952 = load double, ptr @A3, align 8
  %953 = call double @llvm.fmuladd.f64(double %950, double %951, double %952)
  %954 = load double, ptr %5, align 8
  %955 = load double, ptr @A2, align 8
  %956 = call double @llvm.fmuladd.f64(double %953, double %954, double %955)
  %957 = load double, ptr %5, align 8
  %958 = load double, ptr @A1, align 8
  %959 = call double @llvm.fmuladd.f64(double %956, double %957, double %958)
  %960 = load double, ptr %5, align 8
  %961 = load double, ptr @one, align 8
  %962 = call double @llvm.fmuladd.f64(double %959, double %960, double %961)
  %963 = call double @llvm.fmuladd.f64(double %943, double %962, double %938)
  store double %963, ptr %2, align 8
  br label %964

964:                                              ; preds = %911
  %965 = load i32, ptr %9, align 4
  %966 = add nsw i32 %965, 1
  store i32 %966, ptr %9, align 4
  br label %906, !llvm.loop !18

967:                                              ; preds = %906
  %968 = call i32 @dtime(ptr noundef @TimeArray)
  %969 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %970 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %971 = load double, ptr @nulltime, align 8
  %972 = fneg double %971
  %973 = call double @llvm.fmuladd.f64(double %969, double %970, double %972)
  store double %973, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %974 = load double, ptr @piref, align 8
  %975 = load double, ptr @three, align 8
  %976 = fdiv double %974, %975
  store double %976, ptr %3, align 8
  %977 = load double, ptr %3, align 8
  %978 = load double, ptr %3, align 8
  %979 = fmul double %977, %978
  store double %979, ptr %5, align 8
  %980 = load double, ptr %3, align 8
  %981 = load double, ptr @A6, align 8
  %982 = load double, ptr %5, align 8
  %983 = load double, ptr @A5, align 8
  %984 = call double @llvm.fmuladd.f64(double %981, double %982, double %983)
  %985 = load double, ptr %5, align 8
  %986 = load double, ptr @A4, align 8
  %987 = call double @llvm.fmuladd.f64(double %984, double %985, double %986)
  %988 = load double, ptr %5, align 8
  %989 = load double, ptr @A3, align 8
  %990 = call double @llvm.fmuladd.f64(double %987, double %988, double %989)
  %991 = load double, ptr %5, align 8
  %992 = load double, ptr @A2, align 8
  %993 = call double @llvm.fmuladd.f64(double %990, double %991, double %992)
  %994 = load double, ptr %5, align 8
  %995 = load double, ptr @A1, align 8
  %996 = call double @llvm.fmuladd.f64(double %993, double %994, double %995)
  %997 = load double, ptr %5, align 8
  %998 = load double, ptr @one, align 8
  %999 = call double @llvm.fmuladd.f64(double %996, double %997, double %998)
  %1000 = fmul double %980, %999
  store double %1000, ptr @sa, align 8
  %1001 = load double, ptr %5, align 8
  %1002 = load double, ptr %5, align 8
  %1003 = load double, ptr %5, align 8
  %1004 = load double, ptr %5, align 8
  %1005 = load double, ptr %5, align 8
  %1006 = load double, ptr @B6, align 8
  %1007 = load double, ptr %5, align 8
  %1008 = load double, ptr @B5, align 8
  %1009 = call double @llvm.fmuladd.f64(double %1006, double %1007, double %1008)
  %1010 = load double, ptr @B4, align 8
  %1011 = call double @llvm.fmuladd.f64(double %1005, double %1009, double %1010)
  %1012 = load double, ptr @B3, align 8
  %1013 = call double @llvm.fmuladd.f64(double %1004, double %1011, double %1012)
  %1014 = load double, ptr @B2, align 8
  %1015 = call double @llvm.fmuladd.f64(double %1003, double %1013, double %1014)
  %1016 = load double, ptr @B1, align 8
  %1017 = call double @llvm.fmuladd.f64(double %1002, double %1015, double %1016)
  %1018 = load double, ptr @one, align 8
  %1019 = call double @llvm.fmuladd.f64(double %1001, double %1017, double %1018)
  store double %1019, ptr @sb, align 8
  %1020 = load double, ptr @sa, align 8
  %1021 = load double, ptr @sb, align 8
  %1022 = fmul double %1020, %1021
  %1023 = load double, ptr @sb, align 8
  %1024 = fmul double %1022, %1023
  store double %1024, ptr @sa, align 8
  %1025 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1026 = fdiv double %1025, 3.000000e+01
  store double %1026, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1027 = load double, ptr %6, align 8
  %1028 = load double, ptr @sa, align 8
  %1029 = load double, ptr @two, align 8
  %1030 = load double, ptr %2, align 8
  %1031 = call double @llvm.fmuladd.f64(double %1029, double %1030, double %1028)
  %1032 = fmul double %1027, %1031
  %1033 = load double, ptr @two, align 8
  %1034 = fdiv double %1032, %1033
  store double %1034, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %1035 = load double, ptr @sa, align 8
  %1036 = load double, ptr @sb, align 8
  %1037 = fsub double %1035, %1036
  store double %1037, ptr @sc, align 8
  %1038 = load double, ptr @one, align 8
  %1039 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %1040 = fdiv double %1038, %1039
  store double %1040, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1041 = load double, ptr @sc, align 8
  %1042 = fmul double %1041, 1.000000e-30
  %1043 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1044 = fmul double %1043, 1.000000e-30
  %1045 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %1046 = fmul double %1045, 1.000000e-30
  %1047 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %1042, double noundef %1044, double noundef %1046)
  %1048 = load double, ptr @five, align 8
  %1049 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %1050 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %1051 = fsub double %1049, %1050
  %1052 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1053 = call double @llvm.fmuladd.f64(double %1048, double %1051, double %1052)
  %1054 = fdiv double %1053, 5.200000e+01
  store double %1054, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1055 = load double, ptr @one, align 8
  %1056 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %1057 = fdiv double %1055, %1056
  store double %1057, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1058 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1059 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1060 = fadd double %1058, %1059
  %1061 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1062 = fadd double %1060, %1061
  %1063 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1064 = fadd double %1062, %1063
  %1065 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1066 = fadd double %1064, %1065
  store double %1066, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1067 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1068 = load double, ptr @four, align 8
  %1069 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1070 = call double @llvm.fmuladd.f64(double %1068, double %1069, double %1067)
  %1071 = fdiv double %1070, 1.520000e+02
  store double %1071, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1072 = load double, ptr @one, align 8
  %1073 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %1074 = fdiv double %1072, %1073
  store double %1074, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1075 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %1076 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1077 = fadd double %1075, %1076
  %1078 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1079 = fadd double %1077, %1078
  %1080 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %1081 = fadd double %1079, %1080
  %1082 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1083 = fadd double %1081, %1082
  store double %1083, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1084 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1085 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %1086 = fadd double %1084, %1085
  %1087 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1088 = fadd double %1086, %1087
  %1089 = fdiv double %1088, 1.460000e+02
  store double %1089, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1090 = load double, ptr @one, align 8
  %1091 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %1092 = fdiv double %1090, %1091
  store double %1092, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1093 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %1094 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %1095 = fadd double %1093, %1094
  %1096 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %1097 = fadd double %1095, %1096
  %1098 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %1099 = fadd double %1097, %1098
  %1100 = fdiv double %1099, 9.100000e+01
  store double %1100, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1101 = load double, ptr @one, align 8
  %1102 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %1103 = fdiv double %1101, %1102
  store double %1103, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1104 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1105 = load i32, ptr %10, align 4
  %1106 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %1105)
  %1107 = load double, ptr @nulltime, align 8
  %1108 = fmul double %1107, 1.000000e-30
  %1109 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %1108)
  %1110 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %1111 = fmul double %1110, 1.000000e-30
  %1112 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %1111)
  %1113 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %1114 = fmul double %1113, 1.000000e-30
  %1115 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %1114)
  %1116 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %1117 = fmul double %1116, 1.000000e-30
  %1118 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %1117)
  %1119 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %1120 = fmul double %1119, 1.000000e-30
  %1121 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %1120)
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
