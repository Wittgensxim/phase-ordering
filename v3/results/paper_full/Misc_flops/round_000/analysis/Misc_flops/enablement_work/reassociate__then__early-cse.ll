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
  br label %20

20:                                               ; preds = %67, %0
  %21 = load double, ptr @sa, align 8
  %22 = load double, ptr @TLimit, align 8
  %23 = fcmp olt double %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %20
  %25 = load i32, ptr %11, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, ptr %11, align 4
  %27 = load double, ptr @one, align 8
  %28 = sitofp i32 %26 to double
  %29 = fdiv double %27, %28
  store double %29, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %30 = load double, ptr @one, align 8
  store double %30, ptr %5, align 8
  %31 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %32

32:                                               ; preds = %57, %24
  %33 = load i32, ptr %9, align 4
  %34 = load i32, ptr %11, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load double, ptr %4, align 8
  %39 = load double, ptr %5, align 8
  %40 = fadd double %38, %39
  store double %40, ptr %4, align 8
  %41 = load double, ptr %6, align 8
  %42 = fmul double %40, %41
  store double %42, ptr %3, align 8
  %43 = load double, ptr %2, align 8
  %44 = load double, ptr @D1, align 8
  %45 = load double, ptr @D2, align 8
  %46 = load double, ptr @D3, align 8
  %47 = call double @llvm.fmuladd.f64(double %42, double %46, double %45)
  %48 = call double @llvm.fmuladd.f64(double %42, double %47, double %44)
  %49 = load double, ptr %5, align 8
  %50 = load double, ptr @E2, align 8
  %51 = load double, ptr @E3, align 8
  %52 = call double @llvm.fmuladd.f64(double %42, double %51, double %50)
  %53 = call double @llvm.fmuladd.f64(double %42, double %52, double %44)
  %54 = call double @llvm.fmuladd.f64(double %42, double %53, double %49)
  %55 = fdiv double %48, %54
  %56 = fadd double %43, %55
  store double %56, ptr %2, align 8
  br label %57

57:                                               ; preds = %37
  %58 = load i32, ptr %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %9, align 4
  br label %32, !llvm.loop !7

60:                                               ; preds = %32
  %61 = call i32 @dtime(ptr noundef @TimeArray)
  %62 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  store double %62, ptr @sa, align 8
  %63 = load i32, ptr %11, align 4
  %64 = load i32, ptr %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %20, !llvm.loop !9

68:                                               ; preds = %66, %20
  store double 1.589500e-02, ptr @scale, align 8
  store double 1.589500e-02, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %69 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %70

70:                                               ; preds = %76, %68
  %71 = load i32, ptr %9, align 4
  %72 = load i32, ptr %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %71, 1
  store i32 %77, ptr %9, align 4
  br label %70, !llvm.loop !10

78:                                               ; preds = %70
  %79 = call i32 @dtime(ptr noundef @TimeArray)
  %80 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %81 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %82 = fmul double %80, %81
  store double %82, ptr @nulltime, align 8
  %83 = fcmp olt double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store double 0.000000e+00, ptr @nulltime, align 8
  br label %85

85:                                               ; preds = %84, %78
  %86 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %87 = load double, ptr @sa, align 8
  %88 = load double, ptr @nulltime, align 8
  %89 = fneg double %88
  %90 = call double @llvm.fmuladd.f64(double %86, double %87, double %89)
  store double %90, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %91 = load double, ptr @D1, align 8
  %92 = load double, ptr @D2, align 8
  %93 = fadd double %91, %92
  %94 = load double, ptr @D3, align 8
  %95 = fadd double %93, %94
  %96 = load double, ptr @one, align 8
  %97 = fadd double %96, %91
  %98 = load double, ptr @E2, align 8
  %99 = fadd double %97, %98
  %100 = load double, ptr @E3, align 8
  %101 = fadd double %99, %100
  %102 = fdiv double %95, %101
  store double %102, ptr @sa, align 8
  %103 = load double, ptr @D1, align 8
  store double %103, ptr @sb, align 8
  %104 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %105 = fdiv double %104, 1.400000e+01
  store double %105, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %106 = load double, ptr %6, align 8
  %107 = load double, ptr @sa, align 8
  %108 = load double, ptr @sb, align 8
  %109 = fadd double %107, %108
  %110 = load double, ptr @two, align 8
  %111 = load double, ptr %2, align 8
  %112 = call double @llvm.fmuladd.f64(double %110, double %111, double %109)
  %113 = fmul double %106, %112
  %114 = fdiv double %113, %110
  store double %114, ptr @sa, align 8
  %115 = load double, ptr @one, align 8
  %116 = fdiv double %115, %114
  store double %116, ptr @sb, align 8
  %117 = fptosi double %116 to i32
  %118 = mul nsw i32 %117, 40000
  %119 = sitofp i32 %118 to double
  %120 = load double, ptr @scale, align 8
  %121 = fdiv double %119, %120
  %122 = fptosi double %121 to i32
  store i32 %122, ptr %11, align 4
  %123 = load double, ptr @sb, align 8
  %124 = fsub double %123, 2.520000e+01
  store double %124, ptr @sc, align 8
  %125 = load double, ptr @one, align 8
  %126 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 24), align 8
  %127 = fdiv double %125, %126
  store double %127, ptr getelementptr inbounds nuw (i8, ptr @T, i64 32), align 16
  %128 = load double, ptr @sc, align 8
  %129 = fmul double %128, 1.000000e-30
  %130 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %131 = fmul double %130, 1.000000e-30
  %132 = fmul double %127, 1.000000e-30
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %129, double noundef %131, double noundef %132)
  %134 = load i32, ptr %11, align 4
  store i32 %134, ptr %10, align 4
  %135 = load double, ptr @five, align 8
  %136 = fneg double %135
  store double %136, ptr %2, align 8
  %137 = load double, ptr @one, align 8
  %138 = fneg double %137
  store double %138, ptr @sa, align 8
  %139 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %140

140:                                              ; preds = %149, %85
  %141 = load i32, ptr %9, align 4
  %142 = load i32, ptr %10, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load double, ptr %2, align 8
  %146 = fneg double %145
  store double %146, ptr %2, align 8
  %147 = load double, ptr @sa, align 8
  %148 = fadd double %147, %146
  store double %148, ptr @sa, align 8
  br label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %9, align 4
  br label %140, !llvm.loop !11

152:                                              ; preds = %140
  %153 = call i32 @dtime(ptr noundef @TimeArray)
  %154 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %155 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %156 = fmul double %154, %155
  store double %156, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %157 = fcmp olt double %156, 0.000000e+00
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  br label %159

159:                                              ; preds = %158, %152
  %160 = load i32, ptr %10, align 4
  %161 = sitofp i32 %160 to double
  store double %161, ptr @sc, align 8
  %162 = load double, ptr @sa, align 8
  store double %162, ptr %3, align 8
  store double 0.000000e+00, ptr %4, align 8
  store double 0.000000e+00, ptr %5, align 8
  store double 0.000000e+00, ptr %6, align 8
  %163 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %164

164:                                              ; preds = %190, %159
  %165 = load i32, ptr %9, align 4
  %166 = load i32, ptr %10, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %164
  %169 = load double, ptr %2, align 8
  %170 = fneg double %169
  store double %170, ptr %2, align 8
  %171 = load double, ptr @sa, align 8
  %172 = fadd double %171, %170
  store double %172, ptr @sa, align 8
  %173 = load double, ptr %3, align 8
  %174 = load double, ptr @two, align 8
  %175 = fadd double %173, %174
  store double %175, ptr %3, align 8
  %176 = load double, ptr %6, align 8
  %177 = load double, ptr %2, align 8
  %178 = fsub double %177, %175
  %179 = fadd double %176, %178
  store double %179, ptr %6, align 8
  %180 = load double, ptr %4, align 8
  %181 = load double, ptr %2, align 8
  %182 = load double, ptr %3, align 8
  %183 = fneg double %181
  %184 = call double @llvm.fmuladd.f64(double %183, double %182, double %180)
  store double %184, ptr %4, align 8
  %185 = load double, ptr %5, align 8
  %186 = load double, ptr %2, align 8
  %187 = load double, ptr %3, align 8
  %188 = fdiv double %186, %187
  %189 = fadd double %185, %188
  store double %189, ptr %5, align 8
  br label %190

190:                                              ; preds = %168
  %191 = load i32, ptr %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr %9, align 4
  br label %164, !llvm.loop !12

193:                                              ; preds = %164
  %194 = call i32 @dtime(ptr noundef @TimeArray)
  %195 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %196 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %197 = fmul double %195, %196
  store double %197, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %198 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %199 = fsub double %197, %198
  %200 = fdiv double %199, 7.000000e+00
  store double %200, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %201 = load double, ptr @sa, align 8
  %202 = load double, ptr %6, align 8
  %203 = fmul double %201, %202
  %204 = load double, ptr @sc, align 8
  %205 = fdiv double %203, %204
  %206 = fptosi double %205 to i32
  store i32 %206, ptr %10, align 4
  %207 = load double, ptr @four, align 8
  %208 = load double, ptr %5, align 8
  %209 = fmul double %207, %208
  %210 = load double, ptr @five, align 8
  %211 = fdiv double %209, %210
  store double %211, ptr @sa, align 8
  %212 = load double, ptr @five, align 8
  %213 = load double, ptr %4, align 8
  %214 = fdiv double %212, %213
  %215 = fadd double %211, %214
  store double %215, ptr @sb, align 8
  store double 3.125000e+01, ptr @sc, align 8
  %216 = load double, ptr @sb, align 8
  %217 = load double, ptr %4, align 8
  %218 = fmul double %217, %217
  %219 = fmul double %218, %217
  %220 = fdiv double 3.125000e+01, %219
  %221 = fsub double %216, %220
  store double %221, ptr @piprg, align 8
  %222 = load double, ptr @piref, align 8
  %223 = fsub double %221, %222
  store double %223, ptr @pierr, align 8
  %224 = load double, ptr @one, align 8
  %225 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 56), align 8
  %226 = fdiv double %224, %225
  store double %226, ptr getelementptr inbounds nuw (i8, ptr @T, i64 64), align 16
  %227 = load double, ptr @pierr, align 8
  %228 = fmul double %227, 1.000000e-30
  %229 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %230 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %231 = fsub double %229, %230
  %232 = fmul double %231, 1.000000e-30
  %233 = fmul double %226, 1.000000e-30
  %234 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %228, double noundef %232, double noundef %233)
  %235 = load double, ptr @piref, align 8
  %236 = load double, ptr @three, align 8
  %237 = load i32, ptr %10, align 4
  %238 = sitofp i32 %237 to double
  %239 = fmul double %236, %238
  %240 = fdiv double %235, %239
  store double %240, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %241 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %242

242:                                              ; preds = %272, %193
  %243 = load i32, ptr %9, align 4
  %244 = load i32, ptr %10, align 4
  %245 = sub nsw i32 %244, 1
  %246 = icmp sle i32 %243, %245
  br i1 %246, label %247, label %275

247:                                              ; preds = %242
  %248 = load double, ptr %4, align 8
  %249 = load double, ptr @one, align 8
  %250 = fadd double %248, %249
  store double %250, ptr %4, align 8
  %251 = load double, ptr %6, align 8
  %252 = fmul double %250, %251
  store double %252, ptr %3, align 8
  %253 = fmul double %252, %252
  store double %253, ptr %5, align 8
  %254 = load double, ptr %2, align 8
  %255 = load double, ptr %3, align 8
  %256 = load double, ptr @A6, align 8
  %257 = load double, ptr @A5, align 8
  %258 = fneg double %257
  %259 = call double @llvm.fmuladd.f64(double %256, double %253, double %258)
  %260 = load double, ptr @A4, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %253, double %260)
  %262 = load double, ptr @A3, align 8
  %263 = fneg double %262
  %264 = call double @llvm.fmuladd.f64(double %261, double %253, double %263)
  %265 = load double, ptr @A2, align 8
  %266 = call double @llvm.fmuladd.f64(double %264, double %253, double %265)
  %267 = load double, ptr @A1, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %253, double %267)
  %269 = load double, ptr @one, align 8
  %270 = call double @llvm.fmuladd.f64(double %268, double %253, double %269)
  %271 = call double @llvm.fmuladd.f64(double %255, double %270, double %254)
  store double %271, ptr %2, align 8
  br label %272

272:                                              ; preds = %247
  %273 = load i32, ptr %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %9, align 4
  br label %242, !llvm.loop !13

275:                                              ; preds = %242
  %276 = call i32 @dtime(ptr noundef @TimeArray)
  %277 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %278 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %279 = load double, ptr @nulltime, align 8
  %280 = fneg double %279
  %281 = call double @llvm.fmuladd.f64(double %277, double %278, double %280)
  store double %281, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %282 = load double, ptr @piref, align 8
  %283 = load double, ptr @three, align 8
  %284 = fdiv double %282, %283
  store double %284, ptr %3, align 8
  %285 = fmul double %284, %284
  store double %285, ptr %5, align 8
  %286 = load double, ptr %3, align 8
  %287 = load double, ptr @A6, align 8
  %288 = load double, ptr @A5, align 8
  %289 = fneg double %288
  %290 = call double @llvm.fmuladd.f64(double %287, double %285, double %289)
  %291 = load double, ptr @A4, align 8
  %292 = call double @llvm.fmuladd.f64(double %290, double %285, double %291)
  %293 = load double, ptr @A3, align 8
  %294 = fneg double %293
  %295 = call double @llvm.fmuladd.f64(double %292, double %285, double %294)
  %296 = load double, ptr @A2, align 8
  %297 = call double @llvm.fmuladd.f64(double %295, double %285, double %296)
  %298 = load double, ptr @A1, align 8
  %299 = call double @llvm.fmuladd.f64(double %297, double %285, double %298)
  %300 = load double, ptr @one, align 8
  %301 = call double @llvm.fmuladd.f64(double %299, double %285, double %300)
  %302 = fmul double %286, %301
  store double %302, ptr @sa, align 8
  %303 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %304 = fdiv double %303, 1.700000e+01
  store double %304, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %305 = load double, ptr %6, align 8
  %306 = load double, ptr @sa, align 8
  %307 = load double, ptr @two, align 8
  %308 = load double, ptr %2, align 8
  %309 = call double @llvm.fmuladd.f64(double %307, double %308, double %306)
  %310 = fmul double %305, %309
  %311 = fdiv double %310, %307
  store double %311, ptr @sa, align 8
  store double 5.000000e-01, ptr @sb, align 8
  %312 = load double, ptr @sa, align 8
  %313 = fsub double %312, 5.000000e-01
  store double %313, ptr @sc, align 8
  %314 = load double, ptr @one, align 8
  %315 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16
  %316 = fdiv double %314, %315
  store double %316, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8
  %317 = load double, ptr @sc, align 8
  %318 = fmul double %317, 1.000000e-30
  %319 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %320 = fmul double %319, 1.000000e-30
  %321 = fmul double %316, 1.000000e-30
  %322 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, double noundef %318, double noundef %320, double noundef %321)
  %323 = load double, ptr @A3, align 8
  %324 = fneg double %323
  store double %324, ptr @A3, align 8
  %325 = load double, ptr @A5, align 8
  %326 = fneg double %325
  store double %326, ptr @A5, align 8
  %327 = load double, ptr @piref, align 8
  %328 = load double, ptr @three, align 8
  %329 = load i32, ptr %10, align 4
  %330 = sitofp i32 %329 to double
  %331 = fmul double %328, %330
  %332 = fdiv double %327, %331
  store double %332, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %333 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %334

334:                                              ; preds = %359, %275
  %335 = load i32, ptr %9, align 4
  %336 = load i32, ptr %10, align 4
  %337 = sub nsw i32 %336, 1
  %338 = icmp sle i32 %335, %337
  br i1 %338, label %339, label %362

339:                                              ; preds = %334
  %340 = sitofp i32 %335 to double
  %341 = load double, ptr %6, align 8
  %342 = fmul double %340, %341
  store double %342, ptr %3, align 8
  %343 = fmul double %342, %342
  store double %343, ptr %5, align 8
  %344 = load double, ptr %2, align 8
  %345 = load double, ptr @B6, align 8
  %346 = load double, ptr @B5, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %343, double %346)
  %348 = load double, ptr @B4, align 8
  %349 = call double @llvm.fmuladd.f64(double %343, double %347, double %348)
  %350 = load double, ptr @B3, align 8
  %351 = call double @llvm.fmuladd.f64(double %343, double %349, double %350)
  %352 = load double, ptr @B2, align 8
  %353 = call double @llvm.fmuladd.f64(double %343, double %351, double %352)
  %354 = load double, ptr @B1, align 8
  %355 = call double @llvm.fmuladd.f64(double %343, double %353, double %354)
  %356 = call double @llvm.fmuladd.f64(double %343, double %355, double %344)
  %357 = load double, ptr @one, align 8
  %358 = fadd double %357, %356
  store double %358, ptr %2, align 8
  br label %359

359:                                              ; preds = %339
  %360 = load i32, ptr %9, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, ptr %9, align 4
  br label %334, !llvm.loop !14

362:                                              ; preds = %334
  %363 = call i32 @dtime(ptr noundef @TimeArray)
  %364 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %365 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %366 = load double, ptr @nulltime, align 8
  %367 = fneg double %366
  %368 = call double @llvm.fmuladd.f64(double %364, double %365, double %367)
  store double %368, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %369 = load double, ptr @piref, align 8
  %370 = load double, ptr @three, align 8
  %371 = fdiv double %369, %370
  store double %371, ptr %3, align 8
  %372 = fmul double %371, %371
  store double %372, ptr %5, align 8
  %373 = load double, ptr @B6, align 8
  %374 = load double, ptr @B5, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %372, double %374)
  %376 = load double, ptr @B4, align 8
  %377 = call double @llvm.fmuladd.f64(double %372, double %375, double %376)
  %378 = load double, ptr @B3, align 8
  %379 = call double @llvm.fmuladd.f64(double %372, double %377, double %378)
  %380 = load double, ptr @B2, align 8
  %381 = call double @llvm.fmuladd.f64(double %372, double %379, double %380)
  %382 = load double, ptr @B1, align 8
  %383 = call double @llvm.fmuladd.f64(double %372, double %381, double %382)
  %384 = load double, ptr @one, align 8
  %385 = call double @llvm.fmuladd.f64(double %372, double %383, double %384)
  store double %385, ptr @sa, align 8
  %386 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %387 = fdiv double %386, 1.500000e+01
  store double %387, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %388 = load double, ptr %6, align 8
  %389 = load double, ptr @sa, align 8
  %390 = load double, ptr @one, align 8
  %391 = fadd double %389, %390
  %392 = load double, ptr @two, align 8
  %393 = load double, ptr %2, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %393, double %391)
  %395 = fmul double %388, %394
  %396 = fdiv double %395, %392
  store double %396, ptr @sa, align 8
  %397 = load double, ptr @piref, align 8
  %398 = load double, ptr @three, align 8
  %399 = fdiv double %397, %398
  store double %399, ptr %3, align 8
  %400 = fmul double %399, %399
  store double %400, ptr %5, align 8
  %401 = load double, ptr %3, align 8
  %402 = load double, ptr @A6, align 8
  %403 = load double, ptr @A5, align 8
  %404 = call double @llvm.fmuladd.f64(double %402, double %400, double %403)
  %405 = load double, ptr @A4, align 8
  %406 = call double @llvm.fmuladd.f64(double %404, double %400, double %405)
  %407 = load double, ptr @A3, align 8
  %408 = call double @llvm.fmuladd.f64(double %406, double %400, double %407)
  %409 = load double, ptr @A2, align 8
  %410 = call double @llvm.fmuladd.f64(double %408, double %400, double %409)
  %411 = load double, ptr @A1, align 8
  %412 = call double @llvm.fmuladd.f64(double %410, double %400, double %411)
  %413 = load double, ptr @A0, align 8
  %414 = call double @llvm.fmuladd.f64(double %412, double %400, double %413)
  %415 = fmul double %401, %414
  store double %415, ptr @sb, align 8
  %416 = load double, ptr @sa, align 8
  %417 = fsub double %416, %415
  store double %417, ptr @sc, align 8
  %418 = load double, ptr @one, align 8
  %419 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8
  %420 = fdiv double %418, %419
  store double %420, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16
  %421 = load double, ptr @sc, align 8
  %422 = fmul double %421, 1.000000e-30
  %423 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %424 = fmul double %423, 1.000000e-30
  %425 = fmul double %420, 1.000000e-30
  %426 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %422, double noundef %424, double noundef %425)
  %427 = load double, ptr @piref, align 8
  %428 = load double, ptr @three, align 8
  %429 = load i32, ptr %10, align 4
  %430 = sitofp i32 %429 to double
  %431 = fmul double %428, %430
  %432 = fdiv double %427, %431
  store double %432, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %433 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %434

434:                                              ; preds = %476, %362
  %435 = load i32, ptr %9, align 4
  %436 = load i32, ptr %10, align 4
  %437 = sub nsw i32 %436, 1
  %438 = icmp sle i32 %435, %437
  br i1 %438, label %439, label %479

439:                                              ; preds = %434
  %440 = sitofp i32 %435 to double
  %441 = load double, ptr %6, align 8
  %442 = fmul double %440, %441
  store double %442, ptr %3, align 8
  %443 = fmul double %442, %442
  store double %443, ptr %5, align 8
  %444 = load double, ptr %3, align 8
  %445 = load double, ptr @A6, align 8
  %446 = load double, ptr @A5, align 8
  %447 = call double @llvm.fmuladd.f64(double %445, double %443, double %446)
  %448 = load double, ptr @A4, align 8
  %449 = call double @llvm.fmuladd.f64(double %447, double %443, double %448)
  %450 = load double, ptr @A3, align 8
  %451 = call double @llvm.fmuladd.f64(double %449, double %443, double %450)
  %452 = load double, ptr @A2, align 8
  %453 = call double @llvm.fmuladd.f64(double %451, double %443, double %452)
  %454 = load double, ptr @A1, align 8
  %455 = call double @llvm.fmuladd.f64(double %453, double %443, double %454)
  %456 = load double, ptr @one, align 8
  %457 = call double @llvm.fmuladd.f64(double %455, double %443, double %456)
  %458 = fmul double %444, %457
  store double %458, ptr %4, align 8
  %459 = load double, ptr %2, align 8
  %460 = load double, ptr %5, align 8
  %461 = load double, ptr @B6, align 8
  %462 = load double, ptr @B5, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = load double, ptr @B4, align 8
  %465 = call double @llvm.fmuladd.f64(double %460, double %463, double %464)
  %466 = load double, ptr @B3, align 8
  %467 = call double @llvm.fmuladd.f64(double %460, double %465, double %466)
  %468 = load double, ptr @B2, align 8
  %469 = call double @llvm.fmuladd.f64(double %460, double %467, double %468)
  %470 = load double, ptr @B1, align 8
  %471 = call double @llvm.fmuladd.f64(double %460, double %469, double %470)
  %472 = load double, ptr @one, align 8
  %473 = call double @llvm.fmuladd.f64(double %460, double %471, double %472)
  %474 = fdiv double %458, %473
  %475 = fadd double %459, %474
  store double %475, ptr %2, align 8
  br label %476

476:                                              ; preds = %439
  %477 = load i32, ptr %9, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr %9, align 4
  br label %434, !llvm.loop !15

479:                                              ; preds = %434
  %480 = call i32 @dtime(ptr noundef @TimeArray)
  %481 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %482 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %483 = load double, ptr @nulltime, align 8
  %484 = fneg double %483
  %485 = call double @llvm.fmuladd.f64(double %481, double %482, double %484)
  store double %485, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %486 = load double, ptr @piref, align 8
  %487 = load double, ptr @three, align 8
  %488 = fdiv double %486, %487
  store double %488, ptr %3, align 8
  %489 = fmul double %488, %488
  store double %489, ptr %5, align 8
  %490 = load double, ptr %3, align 8
  %491 = load double, ptr @A6, align 8
  %492 = load double, ptr @A5, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %489, double %492)
  %494 = load double, ptr @A4, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %489, double %494)
  %496 = load double, ptr @A3, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %489, double %496)
  %498 = load double, ptr @A2, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %489, double %498)
  %500 = load double, ptr @A1, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %489, double %500)
  %502 = load double, ptr @one, align 8
  %503 = call double @llvm.fmuladd.f64(double %501, double %489, double %502)
  %504 = fmul double %490, %503
  store double %504, ptr @sa, align 8
  %505 = load double, ptr %5, align 8
  %506 = load double, ptr @B6, align 8
  %507 = load double, ptr @B5, align 8
  %508 = call double @llvm.fmuladd.f64(double %506, double %505, double %507)
  %509 = load double, ptr @B4, align 8
  %510 = call double @llvm.fmuladd.f64(double %505, double %508, double %509)
  %511 = load double, ptr @B3, align 8
  %512 = call double @llvm.fmuladd.f64(double %505, double %510, double %511)
  %513 = load double, ptr @B2, align 8
  %514 = call double @llvm.fmuladd.f64(double %505, double %512, double %513)
  %515 = load double, ptr @B1, align 8
  %516 = call double @llvm.fmuladd.f64(double %505, double %514, double %515)
  %517 = load double, ptr @one, align 8
  %518 = call double @llvm.fmuladd.f64(double %505, double %516, double %517)
  store double %518, ptr @sb, align 8
  %519 = load double, ptr @sa, align 8
  %520 = fdiv double %519, %518
  store double %520, ptr @sa, align 8
  %521 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %522 = fdiv double %521, 2.900000e+01
  store double %522, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %523 = load double, ptr %6, align 8
  %524 = load double, ptr @sa, align 8
  %525 = load double, ptr @two, align 8
  %526 = load double, ptr %2, align 8
  %527 = call double @llvm.fmuladd.f64(double %525, double %526, double %524)
  %528 = fmul double %523, %527
  %529 = fdiv double %528, %525
  store double %529, ptr @sa, align 8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8
  %530 = load double, ptr @sa, align 8
  %531 = fsub double %530, f0x3FE62E42FEFA39EF
  store double %531, ptr @sc, align 8
  %532 = load double, ptr @one, align 8
  %533 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16
  %534 = fdiv double %532, %533
  store double %534, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8
  %535 = load double, ptr @sc, align 8
  %536 = fmul double %535, 1.000000e-30
  %537 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %538 = fmul double %537, 1.000000e-30
  %539 = fmul double %534, 1.000000e-30
  %540 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %536, double noundef %538, double noundef %539)
  %541 = load double, ptr @piref, align 8
  %542 = load double, ptr @four, align 8
  %543 = load i32, ptr %10, align 4
  %544 = sitofp i32 %543 to double
  %545 = fmul double %542, %544
  %546 = fdiv double %541, %545
  store double %546, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %547 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %548

548:                                              ; preds = %589, %479
  %549 = load i32, ptr %9, align 4
  %550 = load i32, ptr %10, align 4
  %551 = sub nsw i32 %550, 1
  %552 = icmp sle i32 %549, %551
  br i1 %552, label %553, label %592

553:                                              ; preds = %548
  %554 = sitofp i32 %549 to double
  %555 = load double, ptr %6, align 8
  %556 = fmul double %554, %555
  store double %556, ptr %3, align 8
  %557 = fmul double %556, %556
  store double %557, ptr %5, align 8
  %558 = load double, ptr %3, align 8
  %559 = load double, ptr @A6, align 8
  %560 = load double, ptr @A5, align 8
  %561 = call double @llvm.fmuladd.f64(double %559, double %557, double %560)
  %562 = load double, ptr @A4, align 8
  %563 = call double @llvm.fmuladd.f64(double %561, double %557, double %562)
  %564 = load double, ptr @A3, align 8
  %565 = call double @llvm.fmuladd.f64(double %563, double %557, double %564)
  %566 = load double, ptr @A2, align 8
  %567 = call double @llvm.fmuladd.f64(double %565, double %557, double %566)
  %568 = load double, ptr @A1, align 8
  %569 = call double @llvm.fmuladd.f64(double %567, double %557, double %568)
  %570 = load double, ptr @one, align 8
  %571 = call double @llvm.fmuladd.f64(double %569, double %557, double %570)
  %572 = fmul double %558, %571
  store double %572, ptr %4, align 8
  %573 = load double, ptr %2, align 8
  %574 = load double, ptr %5, align 8
  %575 = load double, ptr @B6, align 8
  %576 = load double, ptr @B5, align 8
  %577 = call double @llvm.fmuladd.f64(double %575, double %574, double %576)
  %578 = load double, ptr @B4, align 8
  %579 = call double @llvm.fmuladd.f64(double %574, double %577, double %578)
  %580 = load double, ptr @B3, align 8
  %581 = call double @llvm.fmuladd.f64(double %574, double %579, double %580)
  %582 = load double, ptr @B2, align 8
  %583 = call double @llvm.fmuladd.f64(double %574, double %581, double %582)
  %584 = load double, ptr @B1, align 8
  %585 = call double @llvm.fmuladd.f64(double %574, double %583, double %584)
  %586 = load double, ptr @one, align 8
  %587 = call double @llvm.fmuladd.f64(double %574, double %585, double %586)
  %588 = call double @llvm.fmuladd.f64(double %572, double %587, double %573)
  store double %588, ptr %2, align 8
  br label %589

589:                                              ; preds = %553
  %590 = load i32, ptr %9, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, ptr %9, align 4
  br label %548, !llvm.loop !16

592:                                              ; preds = %548
  %593 = call i32 @dtime(ptr noundef @TimeArray)
  %594 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %595 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %596 = load double, ptr @nulltime, align 8
  %597 = fneg double %596
  %598 = call double @llvm.fmuladd.f64(double %594, double %595, double %597)
  store double %598, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %599 = load double, ptr @piref, align 8
  %600 = load double, ptr @four, align 8
  %601 = fdiv double %599, %600
  store double %601, ptr %3, align 8
  %602 = fmul double %601, %601
  store double %602, ptr %5, align 8
  %603 = load double, ptr %3, align 8
  %604 = load double, ptr @A6, align 8
  %605 = load double, ptr @A5, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %602, double %605)
  %607 = load double, ptr @A4, align 8
  %608 = call double @llvm.fmuladd.f64(double %606, double %602, double %607)
  %609 = load double, ptr @A3, align 8
  %610 = call double @llvm.fmuladd.f64(double %608, double %602, double %609)
  %611 = load double, ptr @A2, align 8
  %612 = call double @llvm.fmuladd.f64(double %610, double %602, double %611)
  %613 = load double, ptr @A1, align 8
  %614 = call double @llvm.fmuladd.f64(double %612, double %602, double %613)
  %615 = load double, ptr @one, align 8
  %616 = call double @llvm.fmuladd.f64(double %614, double %602, double %615)
  %617 = fmul double %603, %616
  store double %617, ptr @sa, align 8
  %618 = load double, ptr %5, align 8
  %619 = load double, ptr @B6, align 8
  %620 = load double, ptr @B5, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %618, double %620)
  %622 = load double, ptr @B4, align 8
  %623 = call double @llvm.fmuladd.f64(double %618, double %621, double %622)
  %624 = load double, ptr @B3, align 8
  %625 = call double @llvm.fmuladd.f64(double %618, double %623, double %624)
  %626 = load double, ptr @B2, align 8
  %627 = call double @llvm.fmuladd.f64(double %618, double %625, double %626)
  %628 = load double, ptr @B1, align 8
  %629 = call double @llvm.fmuladd.f64(double %618, double %627, double %628)
  %630 = load double, ptr @one, align 8
  %631 = call double @llvm.fmuladd.f64(double %618, double %629, double %630)
  store double %631, ptr @sb, align 8
  %632 = load double, ptr @sa, align 8
  %633 = fmul double %632, %631
  store double %633, ptr @sa, align 8
  %634 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %635 = fdiv double %634, 2.900000e+01
  store double %635, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %636 = load double, ptr %6, align 8
  %637 = load double, ptr @sa, align 8
  %638 = load double, ptr @two, align 8
  %639 = load double, ptr %2, align 8
  %640 = call double @llvm.fmuladd.f64(double %638, double %639, double %637)
  %641 = fmul double %636, %640
  %642 = fdiv double %641, %638
  store double %642, ptr @sa, align 8
  store double 2.500000e-01, ptr @sb, align 8
  %643 = load double, ptr @sa, align 8
  %644 = fsub double %643, 2.500000e-01
  store double %644, ptr @sc, align 8
  %645 = load double, ptr @one, align 8
  %646 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8
  %647 = fdiv double %645, %646
  store double %647, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16
  %648 = load double, ptr @sc, align 8
  %649 = fmul double %648, 1.000000e-30
  %650 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %651 = fmul double %650, 1.000000e-30
  %652 = fmul double %647, 1.000000e-30
  %653 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %649, double noundef %651, double noundef %652)
  store double 0.000000e+00, ptr %2, align 8
  %654 = load double, ptr @one, align 8
  store double %654, ptr %5, align 8
  store double f0x40599541F7F192A4, ptr @sa, align 8
  %655 = load i32, ptr %10, align 4
  %656 = sitofp i32 %655 to double
  %657 = fdiv double f0x40599541F7F192A4, %656
  store double %657, ptr %4, align 8
  %658 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %659

659:                                              ; preds = %681, %592
  %660 = load i32, ptr %9, align 4
  %661 = load i32, ptr %10, align 4
  %662 = sub nsw i32 %661, 1
  %663 = icmp sle i32 %660, %662
  br i1 %663, label %664, label %684

664:                                              ; preds = %659
  %665 = sitofp i32 %660 to double
  %666 = load double, ptr %4, align 8
  %667 = fmul double %665, %666
  store double %667, ptr %6, align 8
  %668 = fmul double %667, %667
  store double %668, ptr %3, align 8
  %669 = load double, ptr %2, align 8
  %670 = load double, ptr %5, align 8
  %671 = load double, ptr %6, align 8
  %672 = fadd double %671, %670
  %673 = fdiv double %670, %672
  %674 = fsub double %669, %673
  %675 = fadd double %668, %670
  %676 = fdiv double %671, %675
  %677 = fsub double %674, %676
  %678 = call double @llvm.fmuladd.f64(double %671, double %668, double %670)
  %679 = fdiv double %668, %678
  %680 = fsub double %677, %679
  store double %680, ptr %2, align 8
  br label %681

681:                                              ; preds = %664
  %682 = load i32, ptr %9, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, ptr %9, align 4
  br label %659, !llvm.loop !17

684:                                              ; preds = %659
  %685 = call i32 @dtime(ptr noundef @TimeArray)
  %686 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %687 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %688 = load double, ptr @nulltime, align 8
  %689 = fneg double %688
  %690 = call double @llvm.fmuladd.f64(double %686, double %687, double %689)
  store double %690, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %691 = fdiv double %690, 1.200000e+01
  store double %691, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %692 = load double, ptr @sa, align 8
  store double %692, ptr %6, align 8
  %693 = fmul double %692, %692
  store double %693, ptr %3, align 8
  %694 = load double, ptr %5, align 8
  %695 = fneg double %694
  %696 = load double, ptr %6, align 8
  %697 = fadd double %696, %694
  %698 = fdiv double %694, %697
  %699 = fsub double %695, %698
  %700 = fadd double %693, %694
  %701 = fdiv double %696, %700
  %702 = fsub double %699, %701
  %703 = call double @llvm.fmuladd.f64(double %696, double %693, double %694)
  %704 = fdiv double %693, %703
  %705 = fsub double %702, %704
  store double %705, ptr @sa, align 8
  %706 = load double, ptr %4, align 8
  %707 = fmul double %706, 1.800000e+01
  %708 = load double, ptr @two, align 8
  %709 = load double, ptr %2, align 8
  %710 = call double @llvm.fmuladd.f64(double %708, double %709, double %705)
  %711 = fmul double %707, %710
  store double %711, ptr @sa, align 8
  %712 = fptosi double %711 to i32
  %713 = mul nsw i32 %712, -2000
  store i32 %713, ptr %10, align 4
  %714 = sitofp i32 %713 to double
  %715 = load double, ptr @scale, align 8
  %716 = fdiv double %714, %715
  %717 = fptosi double %716 to i32
  store i32 %717, ptr %10, align 4
  %718 = load double, ptr @sa, align 8
  %719 = fadd double %718, 5.002000e+02
  store double %719, ptr @sc, align 8
  %720 = load double, ptr @one, align 8
  %721 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16
  %722 = fdiv double %720, %721
  store double %722, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8
  %723 = load double, ptr @sc, align 8
  %724 = fmul double %723, 1.000000e-30
  %725 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %726 = fmul double %725, 1.000000e-30
  %727 = fmul double %722, 1.000000e-30
  %728 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, double noundef %724, double noundef %726, double noundef %727)
  %729 = load double, ptr @piref, align 8
  %730 = load double, ptr @three, align 8
  %731 = load i32, ptr %10, align 4
  %732 = sitofp i32 %731 to double
  %733 = fmul double %730, %732
  %734 = fdiv double %729, %733
  store double %734, ptr %6, align 8
  store double 0.000000e+00, ptr %2, align 8
  store double 0.000000e+00, ptr %4, align 8
  %735 = call i32 @dtime(ptr noundef @TimeArray)
  store i32 1, ptr %9, align 4
  br label %736

736:                                              ; preds = %778, %684
  %737 = load i32, ptr %9, align 4
  %738 = load i32, ptr %10, align 4
  %739 = sub nsw i32 %738, 1
  %740 = icmp sle i32 %737, %739
  br i1 %740, label %741, label %781

741:                                              ; preds = %736
  %742 = sitofp i32 %737 to double
  %743 = load double, ptr %6, align 8
  %744 = fmul double %742, %743
  store double %744, ptr %3, align 8
  %745 = fmul double %744, %744
  store double %745, ptr %5, align 8
  %746 = load double, ptr @B6, align 8
  %747 = load double, ptr @B5, align 8
  %748 = call double @llvm.fmuladd.f64(double %746, double %745, double %747)
  %749 = load double, ptr @B4, align 8
  %750 = call double @llvm.fmuladd.f64(double %745, double %748, double %749)
  %751 = load double, ptr @B3, align 8
  %752 = call double @llvm.fmuladd.f64(double %745, double %750, double %751)
  %753 = load double, ptr @B2, align 8
  %754 = call double @llvm.fmuladd.f64(double %745, double %752, double %753)
  %755 = load double, ptr @B1, align 8
  %756 = call double @llvm.fmuladd.f64(double %745, double %754, double %755)
  %757 = load double, ptr @one, align 8
  %758 = call double @llvm.fmuladd.f64(double %745, double %756, double %757)
  store double %758, ptr %4, align 8
  %759 = load double, ptr %2, align 8
  %760 = fmul double %758, %758
  %761 = load double, ptr %3, align 8
  %762 = fmul double %760, %761
  %763 = load double, ptr @A6, align 8
  %764 = load double, ptr %5, align 8
  %765 = load double, ptr @A5, align 8
  %766 = call double @llvm.fmuladd.f64(double %763, double %764, double %765)
  %767 = load double, ptr @A4, align 8
  %768 = call double @llvm.fmuladd.f64(double %766, double %764, double %767)
  %769 = load double, ptr @A3, align 8
  %770 = call double @llvm.fmuladd.f64(double %768, double %764, double %769)
  %771 = load double, ptr @A2, align 8
  %772 = call double @llvm.fmuladd.f64(double %770, double %764, double %771)
  %773 = load double, ptr @A1, align 8
  %774 = call double @llvm.fmuladd.f64(double %772, double %764, double %773)
  %775 = load double, ptr @one, align 8
  %776 = call double @llvm.fmuladd.f64(double %774, double %764, double %775)
  %777 = call double @llvm.fmuladd.f64(double %762, double %776, double %759)
  store double %777, ptr %2, align 8
  br label %778

778:                                              ; preds = %741
  %779 = load i32, ptr %9, align 4
  %780 = add nsw i32 %779, 1
  store i32 %780, ptr %9, align 4
  br label %736, !llvm.loop !18

781:                                              ; preds = %736
  %782 = call i32 @dtime(ptr noundef @TimeArray)
  %783 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %784 = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8
  %785 = load double, ptr @nulltime, align 8
  %786 = fneg double %785
  %787 = call double @llvm.fmuladd.f64(double %783, double %784, double %786)
  store double %787, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %788 = load double, ptr @piref, align 8
  %789 = load double, ptr @three, align 8
  %790 = fdiv double %788, %789
  store double %790, ptr %3, align 8
  %791 = fmul double %790, %790
  store double %791, ptr %5, align 8
  %792 = load double, ptr %3, align 8
  %793 = load double, ptr @A6, align 8
  %794 = load double, ptr @A5, align 8
  %795 = call double @llvm.fmuladd.f64(double %793, double %791, double %794)
  %796 = load double, ptr @A4, align 8
  %797 = call double @llvm.fmuladd.f64(double %795, double %791, double %796)
  %798 = load double, ptr @A3, align 8
  %799 = call double @llvm.fmuladd.f64(double %797, double %791, double %798)
  %800 = load double, ptr @A2, align 8
  %801 = call double @llvm.fmuladd.f64(double %799, double %791, double %800)
  %802 = load double, ptr @A1, align 8
  %803 = call double @llvm.fmuladd.f64(double %801, double %791, double %802)
  %804 = load double, ptr @one, align 8
  %805 = call double @llvm.fmuladd.f64(double %803, double %791, double %804)
  %806 = fmul double %792, %805
  store double %806, ptr @sa, align 8
  %807 = load double, ptr %5, align 8
  %808 = load double, ptr @B6, align 8
  %809 = load double, ptr @B5, align 8
  %810 = call double @llvm.fmuladd.f64(double %808, double %807, double %809)
  %811 = load double, ptr @B4, align 8
  %812 = call double @llvm.fmuladd.f64(double %807, double %810, double %811)
  %813 = load double, ptr @B3, align 8
  %814 = call double @llvm.fmuladd.f64(double %807, double %812, double %813)
  %815 = load double, ptr @B2, align 8
  %816 = call double @llvm.fmuladd.f64(double %807, double %814, double %815)
  %817 = load double, ptr @B1, align 8
  %818 = call double @llvm.fmuladd.f64(double %807, double %816, double %817)
  %819 = load double, ptr @one, align 8
  %820 = call double @llvm.fmuladd.f64(double %807, double %818, double %819)
  store double %820, ptr @sb, align 8
  %821 = load double, ptr @sa, align 8
  %822 = fmul double %821, %820
  %823 = fmul double %822, %820
  store double %823, ptr @sa, align 8
  %824 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %825 = fdiv double %824, 3.000000e+01
  store double %825, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %826 = load double, ptr %6, align 8
  %827 = load double, ptr @sa, align 8
  %828 = load double, ptr @two, align 8
  %829 = load double, ptr %2, align 8
  %830 = call double @llvm.fmuladd.f64(double %828, double %829, double %827)
  %831 = fmul double %826, %830
  %832 = fdiv double %831, %828
  store double %832, ptr @sa, align 8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8
  %833 = load double, ptr @sa, align 8
  %834 = fsub double %833, f0x3FD2AAAAAAAAAAAB
  store double %834, ptr @sc, align 8
  %835 = load double, ptr @one, align 8
  %836 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8
  %837 = fdiv double %835, %836
  store double %837, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16
  %838 = load double, ptr @sc, align 8
  %839 = fmul double %838, 1.000000e-30
  %840 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %841 = fmul double %840, 1.000000e-30
  %842 = fmul double %837, 1.000000e-30
  %843 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %839, double noundef %841, double noundef %842)
  %844 = load double, ptr @five, align 8
  %845 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16
  %846 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8
  %847 = fsub double %845, %846
  %848 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %849 = call double @llvm.fmuladd.f64(double %844, double %847, double %848)
  %850 = fdiv double %849, 5.200000e+01
  store double %850, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8
  %851 = load double, ptr @one, align 8
  %852 = fdiv double %851, %850
  store double %852, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %853 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %854 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %855 = fadd double %853, %854
  %856 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %857 = fadd double %855, %856
  %858 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %859 = fadd double %857, %858
  %860 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %861 = fadd double %859, %860
  store double %861, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %862 = load double, ptr @four, align 8
  %863 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %864 = call double @llvm.fmuladd.f64(double %862, double %863, double %861)
  %865 = fdiv double %864, 1.520000e+02
  store double %865, ptr getelementptr inbounds nuw (i8, ptr @T, i64 232), align 8
  %866 = load double, ptr @one, align 8
  %867 = fdiv double %866, %865
  store double %867, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %868 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16
  %869 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %870 = fadd double %868, %869
  %871 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %872 = fadd double %870, %871
  %873 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8
  %874 = fadd double %872, %873
  %875 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %876 = fadd double %874, %875
  store double %876, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %877 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8
  %878 = fadd double %876, %877
  %879 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %880 = fadd double %878, %879
  %881 = fdiv double %880, 1.460000e+02
  store double %881, ptr getelementptr inbounds nuw (i8, ptr @T, i64 248), align 8
  %882 = load double, ptr @one, align 8
  %883 = fdiv double %882, %881
  store double %883, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %884 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8
  %885 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16
  %886 = fadd double %884, %885
  %887 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16
  %888 = fadd double %886, %887
  %889 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %890 = fadd double %888, %889
  %891 = fdiv double %890, 9.100000e+01
  store double %891, ptr getelementptr inbounds nuw (i8, ptr @T, i64 264), align 8
  %892 = load double, ptr @one, align 8
  %893 = fdiv double %892, %891
  store double %893, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %894 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %895 = load i32, ptr %10, align 4
  %896 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %895)
  %897 = load double, ptr @nulltime, align 8
  %898 = fmul double %897, 1.000000e-30
  %899 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, double noundef %898)
  %900 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16
  %901 = fmul double %900, 1.000000e-30
  %902 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, double noundef %901)
  %903 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16
  %904 = fmul double %903, 1.000000e-30
  %905 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, double noundef %904)
  %906 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16
  %907 = fmul double %906, 1.000000e-30
  %908 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, double noundef %907)
  %909 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16
  %910 = fmul double %909, 1.000000e-30
  %911 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, double noundef %910)
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
